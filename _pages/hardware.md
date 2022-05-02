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

board_gallery:
  - url: /assets/images/pcb-schematic_final.png
    image_path: /assets/images/pcb-schematic_final-th.png
    alt: "Scaled-down image of the PCB schematic for the control circuit."
    title: "Schematic"
  - url: /assets/images/board-assembled_bottom.jpg
    image_path: /assets/images/board-assembled_bottom-th.jpg
    alt: "The bottom side of the assembled PCB, traces cut into a copper sheet. To the right, the words 'Ben Buckley/ELT-2720' are etched into the copper."
    title: "PCB assembled, bottom side, traces and connections"
  - url: /assets/images/board-assembled_top.jpg
    image_path: /assets/images/board-assembled_top-th.jpg
    alt: "The top side of the assembled PCB, with the components."
    title: "PCB assembled, top side, components"

vest_sketch:
  - url: /assets/images/vest-construction-draft.jpg
    image_path: /assets/images/vest-construction-draft_th.jpg
    alt: "A page of notebook paper with sketches and measurements of the yoke of a denim vest."
    title: "Early sketches and measurements towards laying out the pixel grid on the vest."

vest_build:
  - url: /assets/images/vest-build_verticals.jpg
    image_path: /assets/images/vest-build_verticals_th.jpg
    alt: "A black denim vest on an ironing board with regularly spaced vertical lines on the yoke."
    title: "Laying out the columns"
  - url: /assets/images/vest-build_hashes.jpg
    image_path: /assets/images/vest-build_hashes_th.jpg
    alt: "Black denim vest, on an ironing board, with hashes marking the vertical position of future grommets."
    title: "Laying out the rows"
  - url: /assets/images/vest_build_grommets.jpg
    image_path: /assets/images/vest_build_grommets_th.jpg
    alt: "Black denim vest with grommets set where the grid was marked."
    title: "Grommeting the grid"

vest_build_2:
  - url: /assets/images/vest-build_pixels-insde.jpg
    image_path: /assets/images/vest-build_pixels-inside_th.jpg
    alt: "The inside of the vest with the pixels set in the grommets"
    title: "Pixel grid assembled, inside the vest"
  - url: /assets/images/vest-build_led-pixels_outside.jpg
    image_path: /assets/images/vest-build_led-pixels_outside_th.jpg
    alt: "The outside of the vest with the pixel grid complete"
    Title: "Pixel grid assembled, from the outside"
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

{% include gallery id="board_gallery" caption="The schematic and pictures of the board, fully assembled except for the board leads" %}

### Design Considerations

The layout of the PCB was determined by following factors:

  * __USB Port Availability__: As long as the project is in active development, I'll need access to the Nano's USB port.  Since the USB port sits high on the microcontroller, some low-lying components can be between it and the edge of the board, but it largely defines one corner of the board.  The digital pins have to be accessible to the signal conditioning elements, so that edge of the Nano goes to the middle of the board.
  * __In one side, out the other__: The attachment points for the board leads define either "end" of the board and the minimum width of its narrow dimension.  The bike-side leads are laid out to correspond to the physicsal order of the digital pins. Since D2 and D3 are the two pins that can provide external interrupts, the turn signal have to have the outer position.  The brake is next because its trace can come down the inside the shortest distance without crossing the others.  Ground comes next because it only has to connect to the ground pour. Power passes under the microcontroller all the way to the LED end of the board, so it's last.

  * __Fuse order follows pin order__: Power goes on right, closest to the 150mm power trace and the V<sub>in</sub> pin of the Nano.  The signal fuses go down the left side of the board.  Beside the Nano, they're the physically largest components, so they're stack height determines the length of the long dimension of the board.

  * __Strain relief holes__: As part of a garment, the board and especially the board leads will be subject to a lot moving and bending.  To minimize the chances of a broken joint at the board, the strain relief holes are the end-most elements of the board.

  * __Corner mount holes__: With the other dimensions and spacings defined, the 4mm corner mounting holes are the last extensions of the board's footprint.

{% include figure image_path="/assets/images/board-complete_controls.jpg" caption="The completed control board with board leads attached.  Also shown is the 'motorcycle' I use to control it." %}

## Vest
### First Sketches

{% include gallery id="vest_sketch" caption="Initial notes on the vest" layout=" " %}

### Vest Build

{% include gallery id="vest_build" caption="Laying out and grommeting the grid" %}

The measurements I took and the assumptions I made about the geometry of the vest's yoke weren't perfect, so you may notice that the middle columns get shorter and tighter as the grid passes under the back of the collar.

{% include gallery id="vest_build_2" caption="Finished vest" %}

"Finished" vest.  There's a lot of polish left in tacking down the wires, securing the pixels (epoxy?), running leads to the board, etc...

Below is a video of the whole show up and running.  A lot of work had to happen on the [software side] of the project to get it this point:

{% include video id="-jxQSHBrT6U" provider="youtube" %}

## Enclosure

<!-- ENCLOSURE GALLERY -->

Stay tuned!  This is the last thing I still have to build.

## Bike Side

<!-- HARNESS GALLERY -->

...except for the harness on the bike side.  For now, a breadboard, three push-button switches, and a 12V DC supply are standing in for the motorcycle. (See above!)

