Communications
==============

How to add WiFi to PSLab
------------------------

WiFi connectivity allows PSLab to communicate with other devices over a wireless network. This enables remote data logging, experiment monitoring, and device control without physical connections. For instructions on enabling WiFi, refer to the PSLab WiFi setup guide in the documentation.

How to add Bluetooth to PSLab
-----------------------------

Bluetooth provides wireless communication between PSLab and external devices such as smartphones, laptops, or tablets. This makes experiments more flexible and portable by eliminating the need for cables.

**Bluetooth support depends on the PSLab hardware revision:**

- **PSLab v5:** Supports external Bluetooth modules (such as HC-05 or HC-06) connected via UART pins.
- **PSLab v6:** Bluetooth support is not available by default. The board does not include an onboard Bluetooth module, but UART pins are still exposed. External Bluetooth modules can be connected via UART, subject to pin availability and voltage-level compatibility.

**Connecting an external Bluetooth module:**

1. Connect the module’s **TX** and **RX** pins to PSLab’s UART interface.
2. Power the module using the appropriate voltage pins (typically 3.3V or 5V).
3. Configure the module’s baud rate to match the UART settings used by PSLab.

> **Note:** Ensure that the TX pin of PSLab is connected to the RX pin of the Bluetooth module, and the RX pin of PSLab is connected to the TX pin of the module. Also verify voltage-level compatibility (3.3V vs 5V) to avoid damaging the hardware.

Once connected, Bluetooth enables PSLab to:

- Send sensor data wirelessly to a host device
- Receive commands remotely
- Control and monitor experiments without physical connections

Universal Asynchronous Receiver-Transmitter (UART)
--------------------------------------------------

UART is a serial communication protocol that allows PSLab to send and receive data from external devices. It is widely used in embedded systems for straightforward, reliable communication without requiring a shared clock signal.

**UART Basics:**

- **TX (Transmit):** Sends data from PSLab
- **RX (Receive):** Receives data from an external device
- Simple, reliable, and widely supported across sensors and modules

**Experiments with UART:**

Using UART, PSLab can communicate with:

- GPS modules for location and timing data
- Bluetooth modules for wireless communication
- Other microcontrollers and UART-based sensors

Collected UART data can be read, visualized, and processed using PSLab-compatible software tools.

Inertial Measurement Unit (IMU)
-------------------------------

An Inertial Measurement Unit (IMU) is a sensor that measures motion, orientation, and angular velocity. It combines multiple sensing technologies to provide detailed motion tracking.

**IMU Components:**

- **Accelerometer:** Measures linear acceleration
- **Gyroscope:** Measures rotational velocity
- **Magnetometer (optional):** Measures orientation relative to the Earth’s magnetic field

**Experiments with IMU:**

With PSLab, IMU sensors can be used to:

- Track acceleration and rotation in real time
- Monitor device orientation and movement
- Perform physics, robotics, and motion-analysis experiments

IMU data can be analyzed, visualized, and exported using PSLab tools for further experimentation and study.
