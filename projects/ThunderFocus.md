---
title: ThunderFocus
image: cover.jpg
feature_text: |-
  # <span style="color:white">ThunderFocus</span>
  #### <span style="color:white">All-in-one focuser</span><br>
  <img width="100" src="/projects/ThunderFocus/logo.png" alt="ThunderFocus logo">
feature_image: cover.jpg
excerpt: ThunderFocus
image_sliders: thunderfocus_slider
aside: true
---

ThunderFocus is an open-source telescope focuser developed by Marco Cipriani. The source code is available on [GitHub](https://github.com/marcocipriani01/ThunderFocus) and is issued under the [GNU General Public License version 3](https://www.gnu.org/licenses/gpl-3.0.html). By using this software, you accept all the terms of its license.

### Description of the project

ThunderFocus is an all-in-one focuser and power box (dew heater controller) designed to be fully customizable and feature-rich. It has its own control software written in Java and is both [INDI](https://indilib.org/) and [ASCOM](https://ascom-standards.org/) compatible.

The firmware can run on both Arduino and Teensy, with the only difference being the RTC support and the speed of the MCU. Thanks to the firmware configuration file, you can select only the features you need and remove the unnecessary: the control software will detect the available features and display only the options supported by the board, so you won't need to modify other files.

The user interface is platform-independent and works seamless across computers and boards like Raspberry Pi, with the only requirement being Java 14 (bundled in the Windows installer): in this way, you get the same experience no matter what OS you run. Moreover, it uses [INDIForJava](http://indiforjava.sourceforge.net/stage/index.html) for INDI/KStars compatibility and a special ASCOM driver for Windows compatibility. As a bonus, it can also be controlled using the [IPARCOS Android app](https://marcocipriani01.github.io/projects/IPARCOS) when the INDI server is enabled!

### Features

- INDI/ASCOM compatibility, cross platform interface
- Full telescope focuser control
  - Can control either one main telescope focuser or one guidescope/off-axis guider focuser
  - Backlash compensation
  - Precise micro-stepping control for pin-point stars
  - Displays the focuser position in millimeters, ticks or any unit of your liking
  - Remembers the last position
- Advanced dew heaters control, which can also turn on and off the telescope mount or other accessories.
  - Various automatic modes: temperature, dew point, humidity, sunset/sunrise
  - Manual control/override of outputs
  - Completely autonomous after configuration: can work without a PC
  - Restores the last state after power up
  - High efficiency, does not require heatsinks or cooling
- Ambient monitoring
  - Temperature, humidity, dew point
  - Graphs of the whole observing night

### Showcase

{% include slider.html selector="thunderfocus_slider" %}

{% if jekyll.environment == 'production' %}
  {% include post-comments.html %}
{% endif %}