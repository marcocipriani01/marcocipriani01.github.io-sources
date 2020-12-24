---
title: Home
image: "/assets/cover.jpg"
feature_text: |-
  ## <span style="color:white">Marco Cipriani's website</span>
feature_image: assets/cover.jpg
excerpt: I'm a young astronomy enthusiast, maker and aerospace engineering student based in Rome, Italy.
  I spend my free time creating projects, mainly motorized focusers and software for telescopes and astronomical observatories.
  Whether I need to program, create an electric circuit or do CAD design, I'm all in ready to learn and complete the project.
featuredposts:
- My experience at the European Space Camp 2019
- Star Party of Campo Catino, 2018
aside: true
layout: page
---

I'm a young astronomy enthusiast, maker and aerospace engineering student based in Rome, Italy. I spend my free time creating projects, mainly motorized focusers and software for telescopes and astronomical observatories. Whether I need to program, create an electric circuit or do CAD design, I'm all in ready to learn and complete the project.

## Astrophotography
{% include figure.html image="/assets/my-equipment-small.jpg" caption="My telescope" position="left" href="/assets/my-equipment.jpg" %}

I own a newtonian telescope and an EQ5 mount. Most of it, from the focuser to the power controller and the motors, has been made by me over the years. Now, the whole setup can be remotely controlled right from my desk thanks to a Raspberry Pi and all the custom electronics. Unfortunately, I live in a heavily light-polluted area, but I'm planning on developing a battery unit and go on the mountains some nights... Despite of this fact, I managed to take great shots of both galaxies and nebulae, go check them out [in the blog](blog/)!

## [Projects](/projects)

### [Caprile Observatory](/projects/CaprileObservatory)

After my final high school exam, a friend of mine asked me if I was available for what turned out to be my greatest project: building an astronomical observatory in the Florence's countryside. Check this project out!

### [ThunderFocus](/projects/ThunderFocus)

ThunderFocus is an all-in-one focuser and power box (dew heater controller) designed to be fully customizable and feature-rich. It has its own control software written in Java and is both [INDI](https://indilib.org/) and [ASCOM](https://ascom-standards.org/) compatible.

The user interface is platform-independent and works seamless across computers and boards like Raspberry Pi, with the only requirement being Java 14 (bundled in the Windows installer): in this way, you get the same experience no matter what OS you run. Moreover, it uses [INDIForJava](http://indiforjava.sourceforge.net/stage/index.html) for INDI/KStars compatibility and a special ASCOM driver for Windows compatibility. As a bonus, it can also be controlled using the [IPARCOS Android app](https://marcocipriani01.github.io/projects/IPARCOS) when the INDI server is enabled!

### [IPARCOS](/projects/IPARCOS)

IPARCOS (INDI Protocol Android Remote COntrol Software) is an INDI client for Android.
It features a generic control panel, a mount joystick-like screen, a focuser controller and a database of objects to point the telescope.

#### And more...