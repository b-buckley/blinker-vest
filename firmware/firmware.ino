// Firmware for the TrafficVest LED array controller 
//
// This software has evolved from ws2811test.ino 

//External includes
#include "FastLED.h"

//Brake Timer Interrupt Macros
#define CLOCKSPEED 16000000
#define TIMER_FREQUENCY 24
#define CMR_RESOLUTION 1024

//Pin Definition Macros
#define PIN_LEFT_SIG 2
#define PIN_BRAKE_SIG 4
#define PIN_RIGHT_SIG 3
#define PIN_DATA 12

//LED PIXEL Macros
#define LED_COLS 17
#define LED_ROWS 4 
#define LEFT_OUT 0
#define BRAKE_OUT 1

//State Macros
#define OFF 0
#define ON 1

//Timing Macros
#define DELAY 750

volatile int sigLeftState,
    sigLeftStatePrev,
    sigBrake,
    sigRightState,
    sigRightStatePrev,
    signal = 0,
    previousTime = 0,
    currentTime,
    leftFrameCount = 0,
    rightFrameCount = 0,
    sigLeftMark = 0,
    sigLeftCurrTime,
    sigLeftSeconds,
    sigRightMark = 0,
    sigRightCurrTime,
    sigRightSeconds;

int NUM_PIXELS;   

CRGB leds[LED_ROWS * LED_COLS];

void setupInterrupt_Timer(){

    NUM_PIXELS = LED_ROWS * LED_COLS;

    //This timer interrupt setup code borrowed from
    // https://www.instructables.com/Arduino-Timer-Interrupts/

    //set timer1 interrupt at 15Hz
    TCCR1A = 0;// set entire TCCR1A register to 0
    TCCR1B = 0;// same for TCCR1B
    TCNT1  = 0;//initialize counter value to 0
    // set compare match register for 15hz increments
    //OCR1A = 1041;// = (16*10^6) / (15*1024) - 1 (must be <65536)
    OCR1A = (CLOCKSPEED / (TIMER_FREQUENCY * CMR_RESOLUTION)) - 1;
    // turn on CTC mode
    TCCR1B |= (1 << WGM12);
    // Set CS10 and CS12 bits for 1024 prescaler
    TCCR1B |= (1 << CS12) | (1 << CS10);  
    // enable timer compare interrupt
    TIMSK1 |= (1 << OCIE1A);
}

void frameFill(int offset, int width, int hue, int sat, int bright) {

    int startCell,
        endCell;

    for (int row = 0; row < LED_ROWS; row++) {
        if (!(row % 2)) startCell = (row * LED_COLS) + offset; 
        else startCell = (((row + 1) * LED_COLS) - 1) - (offset + (width -1));
                
        endCell = startCell + width; 

        for (int cell = startCell; cell < endCell; cell++) {
            leds[cell] = CHSV(hue,sat,bright);
        }
    }
}

void leftFrameHandler() {

    #define LEFT_OFFSET 0
    #define LEFT_WIDTH 6
    #define DUTY_CYCLE (TIMER_FREQUENCY/2)
        
    if (sigLeftState) {
        if (leftFrameCount == TIMER_FREQUENCY) leftFrameCount = 0;
        if (leftFrameCount == 0) frameFill(LEFT_OFFSET,LEFT_WIDTH,0,0,0); 
        if (leftFrameCount > DUTY_CYCLE) frameFill(LEFT_OFFSET,LEFT_WIDTH,40,255,255); 
        leftFrameCount++;
    }
    else frameFill(LEFT_OFFSET,LEFT_WIDTH,40,255,100); 
}

void rightFrameHandler() {

    #define RIGHT_OFFSET 11
    #define RIGHT_WIDTH 6
    #define DUTY_CYCLE (TIMER_FREQUENCY/2)
        
    if (sigRightState) {
        if (rightFrameCount == TIMER_FREQUENCY) rightFrameCount = 0;
        if (rightFrameCount == 0) frameFill(RIGHT_OFFSET,RIGHT_WIDTH,0,0,0); 
        if (rightFrameCount > DUTY_CYCLE) frameFill(RIGHT_OFFSET,RIGHT_WIDTH,40,255,255);
        rightFrameCount++;
    }
    else frameFill(RIGHT_OFFSET,RIGHT_WIDTH,40,255,100);
}

ISR(TIMER1_COMPA_vect){

    #define BRAKE_OFFSET 6
    #define BRAKE_WIDTH 5

    //Quick-n-dirty brake signal handling
    if (sigBrake) {
       frameFill(BRAKE_OFFSET,BRAKE_WIDTH,0,255,255); 
    }
    else {
       frameFill(BRAKE_OFFSET, BRAKE_WIDTH,0,255,100);
    }

    //Handle left signal
    leftFrameHandler();
    //Right turn handling
    rightFrameHandler();
    //Send the resulting frame to LED data out
    FastLED.show();
}    

void leftSignalHandler(){

    int sigLeft;

    sigLeft = digitalRead(PIN_LEFT_SIG);
    sigLeftStatePrev = sigLeftState;
    if (sigLeft) { //If left turn signal is on now, it was off previously
        // Do all the WAS-OFF stuff
        sigLeftState = ON;
        leftFrameCount = 0;
    }
    else {
        // Do all the WAS_ON stuff
        sigLeftState = OFF;
    }
}

void rightSignalHandler(){

    int sigRight;

    sigRight = digitalRead(PIN_RIGHT_SIG);
    sigRightStatePrev = sigRightState;
    if (sigRight) { //If right turn signal is on now, it was off previously
        // Do all the WAS-OFF stuff
        sigRightState = ON;
        rightFrameCount = 0;
    }
    else {
        // Do all the WAS_ON stuff
        sigRightState = OFF;
    }
}

void setup() {
    signal = 0;
    //pinMode(PIN_LED,OUTPUT);
    pinMode(PIN_LEFT_SIG,INPUT);
    pinMode(PIN_BRAKE_SIG,INPUT);
    pinMode(PIN_RIGHT_SIG,INPUT);
    //digitalWrite(PIN_LED,LOW);

    cli();  //Disable all interrupts while setting up interrupts
    setupInterrupt_Timer();
    //Enable hardware interrupt on D2 for left turn signal
    attachInterrupt(digitalPinToInterrupt(PIN_LEFT_SIG),leftSignalHandler,CHANGE);
    //Enable hardware interrupt on D3 for right turn signal
    attachInterrupt(digitalPinToInterrupt(PIN_RIGHT_SIG),rightSignalHandler,CHANGE);
    sei();  //Re-enable interrupts

    FastLED.addLeds<WS2811, PIN_DATA>(leds, NUM_PIXELS);
}

void loop() {

    previousTime = currentTime;
    currentTime = millis();

    //One var for each signal... replace with ext. interrupts?
    sigBrake = digitalRead(PIN_BRAKE_SIG);

}
