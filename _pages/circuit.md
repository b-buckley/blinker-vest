---
title: Control Circuit
permalink: /circuit/
---
## Design

When I first sat down to design the control circuit for the vest, I tried to think of everything.  Every possible power source, signal conditioning, voltage limiting, relays to ensure the controller was up before allowing signals, etc.  An early sketch shows some of this expansive thinking:

{% include figure image_path="/assets/images/circuit-second-sketch.jpg" alt="A piece of college-ruled notebook paper, sideways, covered in a rude pencil sketch of a block diagram for a control circuit, with notes scribbled all around the margins." caption="I still do my best brainstorming with pencil and paper." %}

Luckily for me, I have good teachers.  Between the advise of my friend [Joshua A. Newman](https://www.patreon.com/PunkPedagogy/posts) and Professor Al-Bahri, I was convinced to simplify my circuit as much as possible... right down to a series of voltage dividers and fuses and not much else.

The ultimate source is the motorcycles' nominally 12V DC power system.  Since automotive power has a reputation for voltage swings, I aimed to voltage dividers that would give me acceptable levels anywhere from 10 to 15 volts on the input side.

### Nano Power Requirements

The Nano has an on-board 5V regulator that can be supplied at the V<sub>in</sub> pin. According to [the official documentation](https://docs.arduino.cc/hardware/nano), this should be supplied with 7 - 12V (nominal) power.:w
