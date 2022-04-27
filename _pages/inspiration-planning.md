---
title: "Inspiration and Planning"
permalink: /inspiration-planning/

gallery:
  - url: "/assets/images/dave_vest_smooth_rainbow_50mb.gif"
    image_path: "/assets/images/dave_vest_smooth_rainbow_400w.gif"
    alt: "A black vest with animated rainbow LEDs sewn into it."
    title: "<em>Dave's Rainbow Vest</em> by Janet Hansen"
  - url: "/assets/images/mustang-animated-signals.gif"
    image_path: "/assets/images/mustang-animated-signals_400w.gif"
    alt: "Animated turn signals on the rear of a grey Ford Mustang."
    title: "Animated turns signals by <em>Diode Dynamics</em>" 
---
{% include gallery caption="What if __Dave's Rainbow Vest__ by Janet Hansen (as [**Englighted Designs**](https://www.englighted.com))...    ...were also these animated turn signals by [**Diode Dynamics**](https://www.diodedynamics.com)?" %}

## Inspiration

In 2018, I attended the MoMA exhibition **Items: Is Fashion Modern?** I was not then, nor am I now, a fashionista. I was a motorcycle rider doing good-partner duty to the designer I was dating. I expected to be thoroughly bored, and luckily I was proven wrong. The entire exhibition was fascinating, but for me the star was Asher Levine and [Smooth Technology](https://smooth.technology)'s prototype biker jacket.

{% include video id="ho59e-FH03s" provider="youtube" %}

I was struck by the strange lines and the swirling colors, and intrigued by the blend of electronic technology and utilitarian clothing.  I was also dismayed at how impractical and delicate the jacket appeared to be, and by the fact that it didn't actually do the thing it was intended to do!

I promptly forgot about the jacket until a friend and I were joking about having a way to tell other drivers __exactly__ what we thought of them.  This led to speculating about wearable LED grids and voice-to-text software.  I had recently written grid-to-serial display software for the WS2811 RGB LED addressing protocol and idly Googled "wearable LED DIY."

This led me to [Enlighted Design](https://www.englighted.com), WS2811 "flat" package RGB pixels, and the [FastLED library](https://fastled.io).  It was clear that all the pieces were there to make the vest. I decided to use this Projects class as an opportunity to make a functional, practical version of the MoMA prototype.  Something much humbler, but that would actually turn my riding gear in to my signalling gear.

## Planning

Since I was working from inspirations that didn't come with schematics or plans, I would be building the controls for the vest from scratch.  For the purposes of the class, I wrote a thorough proposal for the project.  Here are the slides from the presentation I prepared to share my planning with the class:

<embed src="{{ site.baseurl}}/assets/docs/blinker-vest_proposal-presentation_final.pdf" width="600" height="400" type="application/pdf">

I also wrote a more thorough, full-text version of the proposal, though it contains less detail about the software and an deprecated version of the system block diagram:

[**Traffic Signal Vest Project Proposal** (PDF)]({{ site.baseurl }}/assets/docs/buckley_project-proposal-final_elt-2720.pdf)

More about the circuit design can be found on the [Circuit]({{ site.baseurl }}/circuit/) page.

The build of the control board and enclosure is documented at [Board and Enclosure]({{ site.baseurl }}/board-enclosure/).

To read about programming the controller, see [Software]({{ site.url }}/software).
