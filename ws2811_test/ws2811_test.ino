// A simple sketch to proof the use of FastLED and my power supply circuit
//  to drive a single WS2811 led pixel
//
// The base for this sketch is signalDetect.ino.

#include "FastLED.h"

#define PIN_LED 13
#define PIN_SIGNAL 5
#define PIN_DATA 12

#define NUM_PIXELS 1

int signal_high;

CRGB leds[NUM_PIXELS];

void setup() {
    signal_high = 0;
    pinMode(PIN_LED,OUTPUT);
    pinMode(PIN_SIGNAL,INPUT);
    digitalWrite(PIN_LED,LOW);

    FastLED.addLeds<WS2811, PIN_DATA>(leds, NUM_PIXELS);
}

void loop() {
    signal = digitalRead(PIN_SIGNAL);

    if (signal) {
      leds[0] = CRGB::Blue;
    }
    else {
      leds[0] = CRGB::Red;
    }
    digitalWrite(PIN_LED,signal);
    FastLED.show();
}
