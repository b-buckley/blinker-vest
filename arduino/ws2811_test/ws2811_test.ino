// A simple sketch to proof the use of FastLED and my power supply circuit
//  to drive a single WS2811 led pixel
//
// The base for this sketch is signalDetect.ino.

#include "FastLED.h"

#define PIN_LED 13
#define PIN_LEFT_SIG 4
#define PIN_BRAKE_SIG 3
#define PIN_RIGHT_SIG 2
#define PIN_DATA 12

#define NUM_PIXELS 3
#define LEFT_OUT 2
#define BRAKE_OUT 1
#define RIGHT_OUT 0

#define DELAY 1000


int sigLeft,
    sigBrake,
    sigRight,
    signal = 0,
    previousTime = 0,
    currentTime,
    sigLeftMark = 0,
    sigLeftCurrTime,
    sigLeftSeconds,
    sigRightMark = 0,
    sigRightCurrTime,
    sigRightSeconds,
    i;

CRGB leds[NUM_PIXELS];

void setup() {
    signal = 0;
    pinMode(PIN_LED,OUTPUT);
    pinMode(PIN_LEFT_SIG,INPUT);
    pinMode(PIN_BRAKE_SIG,INPUT);
    pinMode(PIN_RIGHT_SIG,INPUT);
    digitalWrite(PIN_LED,LOW);

    FastLED.addLeds<WS2811, PIN_DATA>(leds, NUM_PIXELS);
}

void loop() {

    previousTime = currentTime;
    currentTime = millis();

    //One var for each signal... replace with ext. interrupts?
    sigLeft = digitalRead(PIN_LEFT_SIG);
    sigBrake = digitalRead(PIN_BRAKE_SIG);
    sigRight = digitalRead(PIN_RIGHT_SIG);

    //Quick-n-dirty brake signal handling
    if (sigBrake) {
        leds[BRAKE_OUT] = CRGB(255,0,0);
    }
    else {
        leds[BRAKE_OUT] = CRGB(100,0,0);
    }

    //Quick and dirty handle of the left turn signal
    if (sigLeft) {
        
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

    //Right turn handling
    if (sigRight) {
        
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
    digitalWrite(PIN_LED,signal);
    FastLED.show();
}
