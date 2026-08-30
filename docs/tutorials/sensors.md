# Sensors

## What are Sensors?

Sensors are devices that detect changes in the physical environment and convert them into electrical signals. They act as the "senses" of electronic systems, allowing devices to interact with the world around them. 

In the context of the Pocket Science Lab (PSLab), sensors enable users to measure and analyze various physical phenomena, turning the PSLab into a highly versatile scientific instrument.

---

## Analog vs Digital Sensors

Sensors can be broadly categorized into two types: analog and digital.

### Analog Sensors

Analog sensors produce a continuous output signal that is directly proportional to the measured quantity.

**Key characteristics:**

- Output is a continuous range of values.
- Highly sensitive, able to detect very small changes in the input.
- Often require Analog-to-Digital Conversion (ADC) for use with digital systems.
- **Examples:** Thermistors, photoresistors, potentiometers, analog motion sensors (PIR).

### Digital Sensors

Digital sensors produce discrete digital output signals, typically in binary form (0s and 1s) over standard communication protocols like I2C, SPI, or UART.

**Key characteristics:**

- Output consists of discrete values.
- Highly resistant to electrical noise compared to analog sensors.
- Extremely easy to interface with digital systems and microcontrollers.
- **Examples:** Digital temperature/humidity sensors (DHT11, BME280), infrared motion sensors, digital accelerometers (MPU6050).

---

## Experimenting with Sensors on PSLab

PSLab supports interfacing with both analog and digital sensors using the **Sensor Instruments** provided in the PSLab app.

### 1. Analog Sensor Experiment: Motion Control

This experiment demonstrates how an analog motion sensor can be used to trigger a response.

**Materials:**

- PSLab device
- Analog motion sensor (e.g., PIR sensor)
- The PSLab app
- Necessary connecting jumper wires

**Procedure:**

1. Connect the power (`VCC`) and ground (`GND`) of the motion sensor to the PSLab power pins.
2. Connect the analog signal output of the motion sensor to an analog input pin (`CH1` or `CH2`) on the PSLab.
3. Open the **PSLab app** and navigate to the **Oscilloscope** or **Multimeter** instrument.
4. Monitor the analog input pin you connected the sensor to.
5. Test the setup by waving your hand in front of the sensor; you will observe a distinct spike or change in the voltage reading.

!!! tip "Automation"
    You can use the PSLab Python library on your desktop to write a script that activates a sound or logs an event whenever the analog sensor reading exceeds a specific threshold!

### 2. Digital Sensor Experiment: Temperature and Humidity

Many modern sensors use digital communication protocols (like I2C). The PSLab natively supports interfacing with I2C digital sensors.

**Materials:**

- PSLab device
- I2C digital temperature and humidity sensor (e.g., BME280)
- The PSLab app
- Necessary connecting jumper wires

**Procedure:**

1. Connect the digital sensor to the dedicated I2C pins on the PSLab: `VCC`, `GND`, `SDA` (Data), and `SCL` (Clock).
2. Open the **PSLab app** and navigate to the **Sensor** instruments section.
3. The app will automatically initialize communication with the sensor over the I2C bus.
4. Open the specific instrument (e.g., Thermometer or Barometer) to read the temperature and humidity data.
5. Observe how the readings change under different conditions (e.g., breathing lightly on the sensor, moving it to different environments).

!!! info "Data Logging"
    Digital sensors often provide multiple data points simultaneously. You can use the built-in data logging features in the PSLab app to record these metrics over a long period for later CSV export and analysis.
