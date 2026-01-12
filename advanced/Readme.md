Communications
==============

How to add WiFi to PSLab
------------------------

WiFi connectivity allows PSLab to communicate with other devices over a wireless network. This enables remote data logging, experiment monitoring, and device control without physical connections. For instructions on enabling WiFi, refer to the PSLab WiFi setup guide in the documentation.

How to add Bluetooth to PSLab
-----------------------------

Bluetooth provides wireless communication between PSLab and external devices such as smartphones, laptops, or tablets. This makes experiments more flexible and portable by eliminating the need for cables.

**Bluetooth support depends on the PSLab hardware revision:**

- **PSLab v5:** Supports external Bluetooth modules (like HC-05 or HC-06) connected via UART pins.
- **PSLab v6:** Bluetooth support is not available by default; external wireless modules are required.

**Connecting an external Bluetooth module:**

1. Connect the module's **TX** and **RX** pins to PSLab's UART pins.
2. Power the module using the correct voltage pins (usually 3.3V or 5V).
3. Configure the baud rate of the module to match PSLab's UART settings.

Once connected, Bluetooth enables PSLab to:

- Send sensor data wirelessly to a device
- Receive commands remotely
- Control experiments without physical connections

Universal Asynchronous Receiver-Transmitter (UART)
--------------------------------------------------

UART is a serial communication protocol that allows PSLab to send and receive data from external devices. It is widely used in embedded systems for simple, direct communication without requiring a clock signal.

**UART Basics:**

- **TX (Transmit):** Sends data from PSLab
- **RX (Receive):** Receives data from external devices
- Simple, reliable, and widely supported

**Experiments with UART:**

Using UART, PSLab can communicate with:

- GPS modules for location data
- Bluetooth modules for wireless communication
- Other microcontrollers and sensors

Collected UART data can be read, visualized, and processed using PSLab-compatible software.

Inertial Measurement Unit (IMU)
-------------------------------

An IMU is a sensor that measures motion, orientation, and angular velocity. It combines multiple sensing technologies to provide precise movement tracking.

**IMU Components:**

- **Accelerometer:** Measures linear acceleration
- **Gyroscope:** Measures rotational speed
- **Magnetometer (optional):** Measures orientation relative to Earth's magnetic field

**Experiments with IMU:**

With PSLab, IMU sensors can be used to:

- Track acceleration and rotation in real-time
- Monitor device orientation
- Conduct physics and robotics experiments

Data from the IMU can be analyzed, visualized, and exported using PSLab tools for further study.

