---
title: RoverBluetooth
image: /projects/RoverBluetooth/1.jpg
feature_text: |-
  ## <span style="color:white">BT-controlled Arduino car</span>
  <span style="color:white">Made with a Meccano pack, some coding skills and passion</span>
feature_image: /projects/RoverBluetooth/1.jpg
excerpt: description
aside: true
downloads: true
image_sliders:
- roverbluetooth_app
- roverbluetooth_chassis
---

{% include video.html id="yFWLqmFn99o" title="RoverBluetooth - Arduino-based Bluetooth car" %}

<img align="left" width="100" src="/projects/RoverBluetooth/logo.png" style="position: relative; top: 8px; margin-bottom: 8px;"> RoverBluetooth is the name I gave to the Arduino-based **Bluetooth** car I made for my school exam when I was only thirteen. I also showed it at **[Maker Faire Rome](http://www.makerfairerome.eu/)** with a FabLab (and I was one of the youngest there)! It's very easy to make (only a few low-cost electronic components and a Meccano pack) and to control, thanks to the **Android** app I programmed. It features full speed control, reverse gear, an ultrasonic sensor with parking sound and emergency brake, low-latency remote drive and a frontal light.

### The app

{% include slider.html selector="roverbluetooth_app" %}

I originally programmed the app with [MIT App Inventor](http://ai2.appinventor.mit.edu/), but then I decided to write it from scratch using Android Studio. If you're an Android beginner, I would recommend you using the original app ([released in the App Inventor gallery](http://ai2.appinventor.mit.edu/?galleryId=6532138936041472)), since it's easier to program and to edit. Otherwise, the newer app can be found [on GitHub](https://github.com/marcocipriani01/RoverBluetooth).

### The chassis

{% include slider.html selector="roverbluetooth_chassis" %}

If you want to replicate mine, buy some [Meccano](http://meccano.com) packs, take a look at the pictures and start screwing! Pay attention to the steering wheel, that must have a connection to the servo motor, rotate without friction and without unscrewing! The main body shouldn't flex too much and should be lightweight, while the Meccano motor must have enough reduction gears to be strong.

### The circuit

{% include figure.html image="/projects/RoverBluetooth/SCH.png" %}

Parts needed:
- Bluetooth receiver (I used the [BlueSMiRF Silver](https://www.sparkfun.com/products/12577) modem from Sparkfun, but you can also try the classic HC-06, that is cheaper)
- An [Arduino UNO](https://www.arduino.cc/en/Main/ArduinoBoardUno) or similar
- H-bridge (I used a [L6203](http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000089.pdf))
- Ultrasonic sensor
- Servo motor (strong, with metal gears if possible)
- Buzzer
- LED for frontal light
- 9V battery pack
- Double-sided matrix board

Note that the servo motor I used needs 6V, so I added an LM317 to the circuit. Feel free to remove it if your servo requires 5V. Be patient, pick a solderer and make your own Arduino shield!

{% include figure.html image="/projects/RoverBluetooth/6.jpg" %}

### The Arduino sketch

The small sketch receives the data, turns on and off the motor and checks the distance from a wall. RoverBluetooth receives data from the Bluetooth modem and associates numbers to commands. For example, "21" is interpreted as "turn off the motor". Here's the list:
- 0-20 → servo motor position
- 21 → motor off
- 22 → light on
- 23 → light off
- 1000-1255 → motor on, speed
- 1500-1755 → motor on, reverse gear, speed

### Downloads

{% include download.html src="/projects/RoverBluetooth/downloads/Eagle.sch" text="Autodesk Eagle 9.3.0 schematic" %}
{% include download.html src="/projects/RoverBluetooth/downloads/AI2.zip" text="MIT App Inventor project and APK" %}
{% include download.html src="/projects/RoverBluetooth/downloads/RoverBluetooth.ino" text="Arduino sketch" %}
{% include download.html src="/projects/RoverBluetooth/downloads/Eagle.sch" text="Autodesk Eagle 9.3.0 schematic" %}

{% include cc.html type="by-sa" %}