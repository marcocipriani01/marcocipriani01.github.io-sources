---
title: OpenFocuser
image: cover.jpg
feature_text: |-
  ## <span style="color:white">Open-Source MoonLite-compatible focuser</span>
  <span style="color:white">Based on Arduino, supports every OS, autofocus compatible.</span>
feature_image: cover.jpg
excerpt: OpenFocuser is an open-source Arduino-based MoonLite-compatible telescope
  focuser. It's compatible with every operating system and supports autofocusing.
aside: true
image_sliders:
- openfocuser_slider
---

<img align="left" width="100" src="/projects/OpenFocuser/logo.png" style="position: relative; top: 8px; margin-bottom: 8px;" alt="OpenFocuser logo"> OpenFocuser is a MoonLite-compatible motorized focuser controller with absolute and relative positioning and half and full step switching. It is Unix/Linux (INDI) and Windows (MoonLite and ASCOM) compatible. Two editions are available: standard and Plus, which has a non-MoonLite extra function to control all the Arduino's digital and PWM pins, allowing the final user to turn on and off (or regulate in current) other devices like dew heaters, mirror coolers, or even a Raspberry Pi, directly from your computer, or remotely with Telescope-Pi. OpenFocuser also comes with a firmware update utility (via avrdude), a command line server for remote control (using INDI) and a control panel to manage the pins (name and value at startup). 3D mounting brackets and circuit/PCB projects are also provided.

### **Read more: [full documentation in the GitHub repository](https://github.com/marcocipriani01/OpenFocuser/blob/master/README.md)!**
You can also **download a PDF guide [here](https://github.com/marcocipriani01/OpenFocuser/blob/master/Docs/User-guide.pdf)**

{% include slider.html selector="openfocuser_slider" %}
