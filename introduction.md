Introduction
============

[![Build Status](https://www.travis-ci.org/fossasia/pslab-documentation.svg?branch=master)](https://www.travis-ci.org/fossasia/pslab-documentation)
[![PSLab Gitter](https://badges.gitter.im/fossasia/pslab.svg)](https://gitter.im/fossasia/pslab?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![PSLab Mailing List](https://img.shields.io/badge/Mailing%20List-FOSSASIA-blue.svg)](https://groups.google.com/forum/#!forum/pslab-fossasia)
[![PSLab Twitter](https://img.shields.io/twitter/follow/pslabio.svg?style=social&label=Follow&maxAge=2592000?style=flat-square)](https://twitter.com/pslabio)
[![GitHub forks](https://img.shields.io/github/forks/fossasia/pslab-hardware.svg?style=social&label=Fork&maxAge=2592000)](https://GitHub.com/fossasia/pslab-hardware/network/)

These instructions will help you get started with the Pocket Science Lab
(PSLab) hardware and its associated applications.

| **WARNING**: Do not use PSLab with high voltage circuits, in hazardous environments, or without appropriate supervision!  |
| --- |

## What is PSLab?

Pocket Science Lab (PSLab) is a device that allows you to explore the world
using sensors to record, analyze, and generate signals and data.

At the core is a custom circuit board containing a [PIC24
microcontroller](http://www.microchip.com/wwwproducts/en/PIC24EP256GP204) which
interfaces between the physical world of electronics and sensors, and the
digital world of computers (running operating systems such as Windows, macOS, or
Linux) and even Android phones.

## What can I do with PSLab?

"Out of the box", PSLab can be used as an electronics workbench with a number of
built-in features, including:

- Desktop low-voltage power supply with three programmable voltage sources (±3.3 V, ±5 V, 0–3 V).
- 3-channel [^1] oscilloscope with software selectable amplification stages.
- Multimeter functions, including voltmeter and capacitance measurement.
- Digital and analog function generators.
- 4-channel logic analyzer.

[^1]: Restrictions on the third channel:
    1. Limited CH3 range: -3.3V to +3.3V; CH1 and CH2 range from -16.5V to 16.5V.
    2. Lack of (software selectable) gain.

In addition, PSLab has several interfaces through which it can work with
programmable sensors:

- I2C, SPI, UART data buses.
- Digital and analog I/O.
- Advanced Plugins/Add-on Modules.
- Support for acceleration/gyroscopes/humidity/temperature modules, etc.

See the [product specifications page](https://pslab.io/specifications/) and
[datasheet](https://pslab.io/wp-content/uploads/PSLab-Data-Sheet.pdf) for more
information on features.

## Entire stack

The full stack for use on desktop computers is described in this diagram:

![PSLab desktop stack](./images/pslab-stack.png)
