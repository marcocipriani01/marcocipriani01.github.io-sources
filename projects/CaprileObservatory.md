---
title: Caprile Observatory
image: cover.jpg
feature_text: |-
  ## <span style="color:white; background:#242e2b">Caprile Observatory</span>
  <span style="color:white; background:#242e2b">Osservatorio Caprile, Florence, Italy</span>
feature_image: cover.jpg
excerpt: Caprile Observatory
image_sliders:
- caprile1_slider
- caprile2_slider
- caprile3_slider
- caprile4_slider
aside: true
---

[//]: # (TODO: add DigitSpace tracking link)

After my final high school exam, a friend of mine asked me if I was available for what turned out to be my greatest project: building an astronomical observatory in the Florence's countryside. Ambitious, hard, but here I am telling you about it! First of all, I am sorry if I will not provide exact instructions on how to build it: as you can imagine, there are so many parts in this observatory that it would take me a year just to describe everything. However, if you want to make your own, I invite you to thinker and come up with your unique solutions to the problems you will certainly face: by doing so, you will certainly learn a lot and enjoy more the journey!

### Sponsor

{% include figure.html image="/projects/CaprileObservatory/digitspace.png" href="https://www.digitspace.com/" %}

Thanks to **[DigitSpace](https://www.digitspace.com/?6a71104bb95238e7)** for sponsoring this project! They contributed to the making of the electronics by providing sensors, cameras and other components! More about them in the section about the electronics.

### Photos

{% include slider.html selector="caprile1_slider" %}

### The aim of the project

My friend wanted a fully remote observatory for his astrophotography setup, possibly on a budget and as reliable as possible.
Unfortunately, pre-made sliding structures are really expensive, usually made of metal (so hard to dismantle and recycle) and lack the kind of remote control he wanted.
There are also remote control systems, but they are usually professional and complex. That said, the aim of this project was to find a custom solution to all these problems
while being a great opportunity of learning and making experience.

### The plan

Every big project must have one: in this case, there were a lot a constrains and requirements that needed to be fulfilled.

- The roof must slide completely and the structure must not hide parts of the sky
- No cement foundations, since the observatory would be located in a front yard and not in building plot
- Must withstand the snow and heavy rain typical of that place
- Must not require special machines to build or extraordinary transports for the material
- Stay within a budget of €3000, labor and astronomical equipment excluded
- Must be fully remote, have a web interface to open/close the roof and monitor everything
- Must be able to turn on and off the equipment, the telescope's PC and the AC plugs
- Security cameras and PIR alarm, with notifications and recording
- Weather station, all-sky camera and anemometer

Moreover, add to this list the countless dimension limits and the sleepless nights spent defining every single detail before start the actual design!
Bear in mind that this is a simplified list of the fundamental requirements: the accurate planning of the observatory took an entire month of full-time work for both me and my friend.
We had to research and study a lot about how to build wood structure, think about the sliding roof, look for the best suited electronic components and so on. 

### Designing the structure

This was no easy task: I had to draw every single part of the observatory using [Fusion 360](https://www.autodesk.com/products/fusion-360/personal) for a number of reasons:
I needed to check each dimension, get a sense of how the structure would be, simulate the movements of the telescope (i.e. use motion studies to point the telescope and see if the walls block the view)
and finally create a sort of instruction manual for my friend to buy, cut and assemble the wood. Indeed, due the 2020 pandemic and the fact that I live in Rome, away from the place where it would have
been built, my friend built the structure on his own following my design, while I worked on the electronics at home.

I will not be providing the exact instructions and dimensions, since they are labelled in Italian and would be above all pointless without an exact explanation of each part.
Here are, however, some of renderings I've done:

{% include slider.html selector="caprile2_slider" %}

### Building step 1: power and ethernet

Bringing power and ethernet from the house to the place was no easy task: 100m of thick 4mm² power cable were necessary, plus a shielded CAT6 ethernet cable.
The wires had to go though a wall, under a pathway, above some threes up to the field. Since it was an old countryside house, we even had to upgrade the
electrical cabinet and ask an ISP for wireless internet (with a receiver dish on top of the house)! If it weren't enough, the ethernet cable turned out to be
unable to transfer data over such a distance, so we had to add a PoE (power-over-ethernet) rang extender in the middle of the cable.

{% include slider.html selector="caprile3_slider" %}

Other important factors that needed consideration were the grounding of the new electrical system and the ethernet surge protection,
just in case a lightning or other disruptive event occurs.

### Let's start the structure

I'll let the pictures speak for themselves :wink:

{% include slider.html selector="caprile4_slider" %}

<br>

# More to come...

<hr>

{% if jekyll.environment == 'production' %}
  {% include post-comments.html %}
{% endif %}
