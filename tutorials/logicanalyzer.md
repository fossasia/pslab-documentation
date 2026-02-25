# Logic Analyzer

## Overview
A logic analyzer is an electronic instrument that captures and displays multiple signals from a digital system or digital circuit. While an oscilloscope measures continuous analog voltage, a logic analyzer reads discrete digital logic levels (0s and 1s) over time.

## Working Principle
It works by sampling the digital inputs at a very high rate relative to the system being measured. It compares the sampled voltages against a user-defined threshold to determine if the signal is logic HIGH or LOW. These digital states are stored in memory and then displayed as a timing diagram.

## Applications
* Debugging digital circuits and communication protocols (like I2C, SPI, UART).
* Verifying timing relationships between multiple digital signals.
* Analyzing state machine transitions in microcontrollers or FPGAs.

## Specifications
* Channels: Typically supports 4 or more channels for simultaneous measurement.
* Protocol Support: Often includes built-in decoders for standard serial buses.
* Input Voltage Range: Defined by the logic levels of the device under test (e.g., 3.3V, 5V).

## References
* [PSLab Open Source Hardware](https://pslab.io/)
