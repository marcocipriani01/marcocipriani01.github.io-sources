---
title: Projects
image: "/cover.jpg"
feature_text: '## <span style="color:white">Marco Cipriani''s projects</span>'
feature_image: "/projects/cover.jpg"
image_sliders: projects_slider
aside: true
---

{% include slider.html selector="projects_slider" %}

### [Caprile Observatory](/projects/CaprileObservatory)

After my final high school exam, a friend of mine asked me if I was available for what turned out to be my greatest project: building an astronomical observatory in the Florence's countryside. Check this project out!

### [ThunderFocus](/projects/ThunderFocus)

ThunderFocus is an all-in-one focuser and power box (dew heater controller) designed to be fully customizable and feature-rich. It has its own control software written in Java and is both [INDI](https://indilib.org/) and [ASCOM](https://ascom-standards.org/) compatible.

The firmware can run on both Arduino and Teensy, with the only difference being the RTC support and the speed of the MCU. Thanks to the firmware configuration file, you can select only the features you need and remove the unnecessary: the control software will detect the available features and display only the options supported by the board, so you won't need to modify other files.

The user interface is platform-independent and works seamless across computers and boards like Raspberry Pi, with the only requirement being Java 14 (bundled in the Windows installer): in this way, you get the same experience no matter what OS you run. Moreover, it uses [INDIForJava](http://indiforjava.sourceforge.net/stage/index.html) for INDI/KStars compatibility and a special ASCOM driver for Windows compatibility. As a bonus, it can also be controlled using the [IPARCOS Android app](/projects/IPARCOS) when the INDI server is enabled!

### [IPARCOS](/projects/IPARCOS)

IPARCOS (Indi Protocol Android Remote COntrol Software) is an INDI client for Android.
It features an INDI control panel, a mount and focuser controller and a database of objects to point the telescope.

### [JustAPendulum](/projects/JustAPendulum)

JustAPendulum is an open-source digital pendulum able to measure its oscillation period to calculate the [gravitational acceleration](https://en.wikipedia.org/wiki/Gravitational_acceleration) of the Earth (~9,81 m/s²). It contains a DIY [Arduino](https://www.arduino.cc/), which can also connect to a computer to visualize graphs and analyse the data using its companion software. JustAPendulum is accurate and easy-to-use, which makes it perfect to explain physics in classes and engage the students. All you have to do is push a button, let the mass fall and the board will calculate everything!

### [MathsTests](/projects/MathsTests)

MathsTests is a simple app that can factorize polynomials using Ruffini’s rule.

### [RoverBluetooth](/projects/RoverBluetooth)

This was my first project, which I made it for my school exams at the age of thirteen. Exhibited at  [Maker Faire Rome](http://www.makerfairerome.eu/)! This car is based on an [Arduino UNO](https://www.arduino.cc/en/Main/ArduinoBoardUno) and is made only from low-cost components, easy to find everywhere: nothing needs to be made with professional equipment! An old [Meccano®](http://www.meccano.com/) pack is all you need for the body of this car, while a driver, a motor, a battery pack and an ultrasonic distance sensor are required for the circuit.
