---
title: Control Circuit
permalink: /circuit/
notes:
  - url: /assets/images/circuit-second-sketch.jpg
    image_path: /assets/images/circuit-second-sketch.jpg
    alt: "A piece of college-rule notebook paper, sideways, covered in a rude pencil sketch of a block diagram for the control circuit."
    title: "Sketching towards a design..."

schematic:
  - url: /assets/images/blinker-vest_schematic_final.png
    image_path: /assets/images/blinker-vest_schematic_final_th.png
    alt: "Schematic of the control circuit for the traffic signal vest"
    title: "Final schematic of the traffic signal vest control circuit"
---
## Design

{% include gallery id="notes" caption="I still do my best brainstorming with a pencil and paper." %}

When I first sat down to design the control circuit for the vest, I tried to think of everything.  Every possible power source, signal conditioning, voltage limiting, relays to ensure the controller was up before allowing signals, etc.  An early sketch shows some of this expansive thinking:


Luckily for me, I have good teachers.  Between the advise of my friend [Joshua A. Newman](https://www.patreon.com/PunkPedagogy/posts) and Professor Al-Bahri, I was convinced to simplify my circuit as much as possible... right down to a series of voltage dividers and fuses and not much else.

The ultimate source is the motorcycles' nominally 12V DC power system.  Since automotive power has a reputation for voltage swings, I aimed to voltage dividers that would give me acceptable levels anywhere from 10 to 15 volts on the input side.

{% include gallery id="schematic" caption="The finished schematic of the traffic signal vest control circuit." %}

### Nano Power Requirements

The Nano has an on-board 5V regulator that can be supplied at the V<sub>in</sub> pin. According to [the official documentation](https://docs.arduino.cc/hardware/nano), this should be supplied with 7 - 12V (nominal) power.

Settling on 9 volts as a target V<sub>in</sub>, I settled on a 1:3 voltage divider.  By experimenting on a breadboard, I settled on 100 and 300 ohms; higher resistances starved the Nano and kept it from operating fully.

### Signal Requirements

The Nano's digital pins read HIGH on 3.0 to 5.0 volts, so I set my sights right down the middle for 4V with a 2:1 voltage divider.  The Nano's voltage-sensing digital pins allow a maximum current of 40 mA. I used resistors in the 10 kohm range to present the pins with less than a milliamp of current.

The 20 kohm resistors that ground the voltage divider also serve as pull-down resistors for the digital pins, keeping them triggering on stray voltages.

### LED Power and Data

The LED array runs at 12V, so I provided a pass-through power branch from the bike's power, as well as a terminal for ground and one for the data stream.

### Pin Selection

Pin selection was primarily governed by the design of the [software side]({{ site.baseurl }}/software/) of the controller.  The turn signals are handled with hardware interrupts, so they need to be tied to pins D2 and D3.

The other pins were chosen for physical convenience during the [physical construction of the controller]({{ site.baseurl }}/hardware/).

### Current Limitation

Again, K.I.S.S. ruled the day here and I went with nothing more than ATM automotive fuses.

The vast majority of the current through this controller goes to the LED array.  According to [the manufacturer's datasheet](https://cdn-shop.adafruit.com/datasheets/WS2811.pdf), each pixel draws 60 mA, 20 mA for each of the red, green, and blue LEDs.  I settled on a 4 x 17 grid, giving me a potential draw of 4.08 A for the lights alone.  Keeping the idea of expanding to a larger or denser grid, I doubled that and came up with 8 amps, then settled for a 7.5 A fuse to keep the board from setting my vest on fire.

For the signal lines, I expect neglible current, so I sourced the smallest fuses I could find in the same package, 2A.
