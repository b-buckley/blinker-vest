---
title: Software
permalink: /software/

scratch-notes:
  - url: /assets/images/software-scratch-notes.jpg
    image_path: /assets/images/software-scratch-notes-th.jpg
    alt: "A sheet of notebook paper with hand-scratched notes all over it, in several orientations."
  - url: /assets/images/software-scratch-notes-2.jpg
    image_path: /assets/images/software-scratch-notes-2-th.jpg
    alt: "A sheet of notebook paper with hand-scratched notes all over it, in several orientations."

state-machine-initial:
  - url: /assets/images/firmware_state-machine-diagram_initial.png
    image_path: /assets/images/firmware_state-machine-diagram_initial-th.jpg
    alt: "A diagram showing the state transitions planned for the board's firmware"
    title: "Initial state machine diagram from the planning phase of the project."

state-machine-final:
  - url: /assets/images/firmware_state-machine-diagram_final.png
    image_path: /assets/images/firmware_state-machine-diagram_final-th.png
    alt: "A diagram showing the state transitions and global variables of firmware.ino"
    title: "State-machine diagram demonstrating the operations of firmware.ino"
---
## Repository

[All the software I've written for this project](https://github.com/b-buckley/blinker-vest/tree/main/arduino) lives in the 'main' branch of the same git repository that hosts this site.

The [root of the repository](https://github.com/b-buckley/blinker-vest/tree/main) also contains all the design files and documentation I developed along the way.

### Signal Test

[signalDetect.ino](https://github.com/b-buckley/blinker-vest/blob/main/arduino/signalDetect/signalDetect.ino) is an Arduino sketch that lights the extra on-board LED when a signal is received.  I wrote to test that the fundamental design of the control circuit worked with the Nano, as I write about on the [hardware]({{ site.baseurl }}/hardware/#the-basics) page.

### WS2811 Test

[ws2811_test.ino](https://github.com/b-buckley/blinker-vest/blob/main/arduino/ws2811_test/ws2811_test.ino) is the sketch I wrote to make sure I could effectively use the [FastLED](https://fastled.io) library.  Like I wrote about in the section about my [prototypes]({{ site.baseurl }}/hardware/#driving-the-leds), the earliest version of this sketch just switched the color of a single pixel based on the input signal.  When I merged the two git repositories I'd been using to manage this project, the history of the file was lost.

In its current version, ws2811_test.ino responds to three signals and emulates the turn and brake signals.  It uses pretty crude polling and timing mechanisms, but it finished the proof-of-concept, so it's good enough.

## Firmware

The current operating firmware for the traffic signal vest lives at [firmware.ino](https://github.com/b-buckley/blinker-vest/blob/main/arduino/firmware/firmware.ino) in the project's repository.  Below I track it's development from scratch notes on graph paper to the currently deployed software.

### Initial Sofware Notes

{% include gallery id="scratch-notes" %}

### Planning State Diagram

{% include gallery id="state-machine-initial" caption="The operating states of the board's firmware as imagined during the planning process." %}

### Design Considerations

* __Timing__: Using timer interrupt to set "framerate".  Currently at 24 fps.
* __Order of Operations__: When building the frame, the brake always goes last since it's the highest priority.
* __External Hardware Interrupts__: Turn signal state handlers are only called when the signals change.  The idea is to minimize CPU usage and simplify my  life working with execution times.
* __Grid-to-Snake Translation__:  This is the "hardest" part, converting the X-Y grid of one frame and translating into the serpentine queue of the WS2811 string.  The trick, in a nutshell, is to use the parity of each row to determine which direction is needs to be copied into the framebuffer.
* __Abstraction__: Where ever possible, I've used calculated values and #DEFINE macros to make it easier to read and modify the code.
* __Independent frame assembly routines__: Each signal handler manipulates the grid separately in its own function.  This allows me to customize the animation response to each signal by chaning just a single block of code.  This calls for a smart set of global variables to hold enough state information, which is still a work in progress.  As it stands, I've only implemented simple ON-OFF solid, rectangular blocks of color specifically to K.I.S.S.

### Current State Diagram

{% include gallery id="state-machine-final" caption="The states, transitions, and variables of [firmware.ino](https://github.com/b-buckley/blinker-vest/blob/main/arduino/firmware/firmware.ino)" %}
