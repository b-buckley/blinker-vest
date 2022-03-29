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
#define PIN_LED 13
#define PIN_LEFT_SIG 2
#define PIN_BRAKE_SIG 6 //Pin 6 on prototype, Pin 11 on final board
#define PIN_RIGHT_SIG 3
#define PIN_DATA 12

//LED PIXEL Macros
#define NUM_PIXELS 3
#define LEFT_OUT 2
#define BRAKE_OUT 1
#define RIGHT_OUT 0

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
    sigLeftMark = 0,
    sigLeftCurrTime,
    sigLeftSeconds,
    sigRightMark = 0,
    sigRightCurrTime,
    sigRightSeconds,
    i;

CRGB leds[NUM_PIXELS];

void setupInterrupt_Timer(){

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

void leftFrameHandler() {

    #define DUTY_CYCLE (TIMER_FREQUENCY/2)
        
    if (sigLeftState) {
        if (leftFrameCount == TIMER_FREQUENCY) leftFrameCount = 0;
        if (leftFrameCount == 0) leds[LEFT_OUT] = CHSV(40,255,255);
        if (leftFrameCount > DUTY_CYCLE) leds[LEFT_OUT] = CHSV(0,0,0);
        leftFrameCount++;
    }
    else leds[LEFT_OUT] = CHSV(40,255,100);
}

ISR(TIMER1_COMPA_vect){
    //Quick-n-dirty brake signal handling
    if (sigBrake) {
        leds[BRAKE_OUT] = CHSV(0,255,255);
    }
    else {
        leds[BRAKE_OUT] = CHSV(0,255,100);
    }

    //Handle left signal
    leftFrameHandler();
/*
    if (sigLeftState) {
 
           
        if(sigLeftMark == 0) sigLeftMark = millis();
        sigLeftCurrTime = millis();
        sigLeftSeconds = (sigLeftCurrTime - sigLeftMark) / 1000;
        if (sigLeftSeconds % 2) {
            leds[LEFT_OUT] = CRGB::Yellow;
        }
        else {
            leds[LEFT_OUT] = CRGB::Black;
        }
    }
    else {
        leds[LEFT_OUT] = CRGB::Black;
    }
*/
    //Right turn handling
    if (sigRightState) {
        
        if(sigRightMark == 0) sigRightMark = millis();
        sigRightCurrTime = millis();
        sigRightSeconds = (sigRightCurrTime - sigRightMark) / 1000;
        if (sigRightSeconds % 2) {
            leds[RIGHT_OUT] = CRGB::Yellow;
        }
        else {
            leds[RIGHT_OUT] = CRGB::Black;
        }
    }
    else {
        leds[RIGHT_OUT] = CRGB::Black;
    }

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
    }
    else {
        // Do all the WAS_ON stuff
        sigRightState = OFF;
    }
}

void setup() {
    signal = 0;
    pinMode(PIN_LED,OUTPUT);
    pinMode(PIN_LEFT_SIG,INPUT);
    pinMode(PIN_BRAKE_SIG,INPUT);
    pinMode(PIN_RIGHT_SIG,INPUT);
    digitalWrite(PIN_LED,LOW);

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
