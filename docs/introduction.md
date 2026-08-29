# Introduction

These instructions will help you get started with the Pocket Science Lab (PSLab) hardware and its associated applications.

!!! warning "WARNING"
    Do not use PSLab with high voltage circuits, in hazardous environments, or without appropriate supervision!

## What is PSLab?

Pocket Science Lab (PSLab) is a device that allows you to explore the world
using sensors to record, analyze, and generate signals and data.

At the core is a custom circuit board containing a [PIC24
microcontroller](https://www.microchip.com/wwwproducts/en/PIC24EP256GP204) which
interfaces between the physical world of electronics and sensors, and the
digital world of computers (running operating systems such as Windows, macOS, or
Linux) and even Android phones.

## What can I do with PSLab?

"Out of the box", PSLab can be used as an electronics workbench with a number of
built-in features, including:

- Desktop low-voltage power supply with three programmable voltage sources (±3.3 V, ±5 V, 0–3 V).
- 3-channel[^1] oscilloscope with software selectable amplification stages.
- Multimeter functions, including voltmeter and capacitance measurement.
- Digital and analog function generators.
- 4-channel logic analyzer.

[^1]: Restrictions on the third channel:
    1. Limited CH3 range: -3.3 V to +3.3 V; CH1 and CH2 range from -16.5 V to +16.5 V.
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

## Architecture & Cross-Platform Support

PSLab features a modern, cross-platform architecture that ensures a seamless experience across all your devices:

- **Frontend (Flutter):** A single codebase provides a native UI experience on Android, iOS, Windows, macOS, Linux, and the Web.
- **Backend (Rust):** High-performance serial communication is handled by a robust Rust backend, ensuring reliable data streams and near bare-metal performance.
