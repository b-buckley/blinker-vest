// The classic Demo Blinker
#define PIN_LED 13
#define PIN_SIGNAL 5

int signal_high;

void setup() {
    signal_high = 0;
    pinMode(PIN_LED,OUTPUT);
    pinMode(PIN_SIGNAL,INPUT);
    digitalWrite(PIN_LED,LOW);
}

void loop() {
    signal_high = digitalRead(PIN_SIGNAL);

    if (signal_high) {
      digitalWrite(PIN_LED,HIGH);
    }
    else {
      digitalWrite(PIN_LED,LOW);
    }    
}
