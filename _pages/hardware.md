---
title: Hardware
permalink: /hardware/
v_dividers:
  - url: /assets/images/signal-voltage-divider-11-vin.jpg
    image_path: /assets/images/signal-voltage-divider-11-vin.jpg
    alt: "A power supply reading 10.9V, feeding a voltage divider, and a DIMM reading 3.32V"
    title: "Testing the signal HIGH voltage with a low input voltage."
  - url: /assets/images/signal-voltage-divider-15-vin.jpg
    image_path: /assets/images/signal-voltage-divider-15-vin.jpg
    alt: "A power supply reading 15.0V, feeding a voltage divider, with a DIMM reading 4.57V."
    title: "Testing the signal HIGH voltage with a hight input voltage."
  - url: /assets/images/signal-detection-test_with-nano.jpg
    image_path: /assets/images/signal-detection-test_with-nano.jpg
    alt: "A circuit breadboard with 12V in from a power supply, an Arduino Nano and a switch between power and a digital input pin."
    title: "Testing the 1:3 voltage divider's ability to provide enough juice to the Nano and the Nano's ability to read a signal through the 1:2 voltage divider."

led_test:
  - url: /assets/images/test-circuit-red.jpg
    image_path: /assets/images/test-circuit-red.jpg
    alt: "A breadboard with an Arduino Nano, reading from a switch and displaying red on an LED pixel."
    title: "Red for signal LOW"
  - url: /assets/images/test-circuit-blue.jpg
    image_path: /assets/images/test-circuit-blue.jpg
    alt: "A breadboard with an Arduino Nano, reading from a switch and displaying blue on an LED pixel."
    title: "Blue for signal HIGH"

prototype_final:
  - url: /assets/images/prototype_final.jpg
    image_path: /assets/images/prototype_final.jpg
    alt: "A breadboard with three momentary switches providing input signals to an Arduino Nano.  It drives a string of three LED pixels, simulating the turn and brake signals on a card."
    title: "All the pieces are in place and working!"
---
## Prototypes
### The Basics
With the [control circuitry]({{ site.baseurl }}/circuit/) designed, the first order of hardware business was testing the voltage dividers to make sure they provide the voltages and currents I wanted.

{% include gallery id="v_dividers" caption="Prototypes testing the viability of the designed voltage dividers for signal level and microprocessor power." %}

My very first builds used 10 and 30 kohm resistor for the Nano power supply voltage divider, which starved the board and kept it from powering up.  Through experimentation, I landed on 100 and 300 as the largest viable combination.

Because of the potential for wide voltage swings on the bike's side of the circuitry, I had to make sure the 1:2 voltage divider would provide a logical HIGH  at both ends of the expected voltage range.  The Nano reads high between 3.0 and 5.0 volts, so the 10:20 kohm divider is spot on.

I wrote a [very simple sketch](https://github.com/b-buckley/blinker-vest/blob/5e4715639e722127900f56ea329b77493be101de/arduino/signalDetect/signalDetect.ino) for the Nano to light the extra on-board LED if a signal was detected at the digital pin.  This is how I discovered that the by default the Nano's pins are floating and need to be tied low to ground to detect a positive HIGH signal.  In the image above, you can see that the ground half of the signal voltage divider is on the Nano side of the switch so that it also serves as a pull-down for the pin.

### Driving the LEDs

{% include gallery id="led_test" caption="Switch controls the 12V signal, Nano reads the 4V signal, Nano writes color code to the WS2811 pixel: red for LOW, blue for HIGH." %}
The voltage divider in the lower right-hand corner provided a 5V rail.  I was in the process of sourcing more LED pixels and 5V is more common than 12V.

I wrote a more elaborated version of the first sketch, for this, but it was lost when I botched a git merge.

### The Final Prototype

{% include gallery id="prototype_final" caption="The final prototype of the control circuit. Three momentary switches provide the input signals and three LED pixels stand in for the array" %}

{% include video id="AJSHlOI3ic4" provider="youtube" %}

This [arduino sketch](https://github.com/b-buckley/blinker-vest/blob/f05b980c568d5157cf4c2e24acc53ab7f0d04133/arduino/ws2811_test/ws2811_test.ino) is shown in the video.  More about the software lives on the [software page]({{ site.baseurl }}/software/).

## PCB Design and Build
### Schematic and Build Gallery Goes Here

  * In one side, out the other
  * Fuse order follows pin order
  * Corner mount holes
  * Strain relief holes
  * USB port availability

## Vest

<!-- VEST GALLERY -->

Vest write-up

## Enclosure

<!-- ENCLOSURE GALLERY -->

Enclosure write-up

## Bike Side

<!-- HARNESS GALLERY -->

Bike harness write-up
