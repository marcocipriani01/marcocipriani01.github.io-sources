---
title: Who I am
image: "/assets/cover.jpg"
feature_text: |-
  ## <span style="color:white">Marco Cipriani's website</span>
    <span style="color:white">Discover me!</span>
feature_image: assets/cover.jpg
excerpt: I’m a young astronomy enthusiast, attending the high school somewhere in
  Italy. In my free time, I take photos of the universe with my telescope and I often
  write some programs, utilities or Android applications to simplify its use. In my
  website I describe my projects and publish my photos of the universe.
---

I'm a young astronomy enthusiast, attending the high school somewhere in Italy. In my free time, I take photos of the universe with my telescope and I often write some programs, utilities or Android applications to simplify its use. I set up a Raspberry Pi to control the telescope remotely, motorized the focuser (designing and printing a 3D model for the brackets, programming an Arduino and a Java software for the computer) and the equatorial mount using two stepper motors and I wrote a bunch of code to move them using my smartphone. Together astronomy, I also made some projects for school: an app to factorize polynomials, a digitaal pendulum, which is able to calculate the gravitational acceleration of the Earth and the measurement errors and a Bluetooth car (with an Android app), that I also exposed to Maker Faire Rome when I was only thirteen.

## Astrophotography
{% include figure.html image="/assets/my-equipment.jpg" caption="My telescope" width="250" position="left" %}
Check out my blog for my photos!
My equipment mainly consists of a 200mm Sky-Watcher Newton telescope, an equatorial mount (EQ5, GoTo, motorized by my own), a Nikon D3300 and a QHY 5L-II mono (guiding CCD/camera) on a 60mm guide scope. I added a homemade MoonLite-compatible focuser to the optical tube assembly and a Raspberry Pi 3 B+ (a tiny ARM computer) to remotely control my telescope from the backyard to my house during the coldest nights. It's not such an expensive gear because several items are homemade and what isn't is exploited as much as I can and, with it, I achieved great results: the focal length of 1000mm allows me to photograph wide as well as small objects like galaxies or nebulae and, with auto guiding, I can take 6 minutes long photos. I live in a very light polluted area, so I use an UHC filter. For processing the photos I use Astro Pixel Processor and all the equipment is controlled via INDI and KStars running on the Raspberry Pi and on my Ubuntu computer.

## Projects for my telescope
Hope you'll enjoy them all!

### [Telescope-Pi](projects/Telescope-Pi)
Telescope-Pi is the name I gave to the Raspberry Pi 3 B+ I use to remotely control my telescope. This project contains an installer that will guide the user while downloading and configuring all the INDI drivers and software needed to control CCDs, DSLRs and telescope mounts. Moreover, a Bluetooth service is installed: if you are away from known Wi-Fi network, you can use its Android app to connect the board to another access point or even start the hotspot mode, ideal if you are, for instance, in a trip far from light pollution. The service will also start the Indi Web Manager (and the OpenFocuser server if installed) at startup, while the system service manager (systemd) will check if something suddenly crashed: if the server crashes, it is automatically restarted. No programming competencies are required to install the software because the installation scripts are completely automated and will even fix common Raspberry issues (e.g. Bluez and Rfcomm). When configured, just turn on the board (no mouse, keyboard or screen required), use the app to connect to a Wi-Fi AP and then remotely manage the telescope!

### [OpenFocuser](projects/OpenFocuser)
OpenFocuser is a MoonLite-compatible motorized focuser controller with absolute and relative positioning and half and full step switching. It is Unix/Linux (INDI) and Windows (MoonLite and ASCOM) compatible. Two editions are available: standard and Plus, which has a non-MoonLite extra function to control all the Arduino's digital and PWM pins, allowing the final user to turn on and off (or regulate in current) other devices like dew heaters, mirror coolers, or even a Raspberry Pi, directly from your computer, or remotely with Telescope-Pi. OpenFocuser also comes with a firmware update utility (via avrdude), a command line server for remote control (using INDI) and a control panel to manage the pins (name and value at startup). 3D mounting brackets and circuit/PCB projects are also provided.

## Some projects from my past

### [JustAPendulum](projects/JustAPendulum)
JustAPendulum is an Arduino-based open-source pendulum that measures and calculates the oscillation period to find the [gravitational acceleration](https://en.wikipedia.org/wiki/Gravitational_acceleration) of the Earth (~9,81 m/s²). It contains a homemade [Arduino UNO](https://www.arduino.cc/en/Main/ArduinoBoardUno) that uses an USB-to-serial adapter to communicate with your computer. JustAPendulum is highly accurate and has a companion (written in Visual Basic .NET) that, in real-time, will show you the position of the mass and a table and a graph with all the precedent measures. Completely laser cut and homemade, it's very easy-to-use: just push a button and let the mass fall and the board will calculate everything. Ideal for tests in physics classes!

### [MathsTests](projects/MathsTests)
Don't you think that maths is hard? You're right, but I love it. That's why I made this app: MathsTests can help you factorizing polynomials and particular trinomials using Ruffini's rule! Fast, lightweight and open-source, it's a great app for everyone who needs help with polynomials. I'm not in charge if you take a bad mark after using it during a test!

### [RoverBluetooth](projects/RoverBluetooth)
This was my first project and I made it for my school exams at the age of thirteen. Exhibited at  [Maker Faire Rome](http://www.makerfairerome.eu/)! This car is based on an [Arduino UNO](https://www.arduino.cc/en/Main/ArduinoBoardUno), world's #1 open-source board and is made only from low-cost components, easy to find everywhere: nothing has to be made with a professional machine! An old [Meccano®](http://www.meccano.com/) pack is all you need for the body of this car, while an H-bridge,  a motor, a battery pack, and an ultrasonic distance sensor are required for the circuit.