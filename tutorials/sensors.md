Sensors
=======
### What are Sensors?


Sensors are devices that detect changes in the physical environment and convert them into electrical signals. They act as the "senses" of electronic systems, allowing devices to interact with the world around them. In the context of the Pocket Science Lab (PSLab), sensors enable users to measure and analyze various physical phenomena, turning the PSLab into a versatile scientific instrument.


### Analog vs Digital Sensors


Sensors can be broadly categorized into two types: analog and digital.


#### Analog Sensors


Analog sensors produce a continuous output signal that is proportional to the measured quantity.


Key characteristics:
- Output is a continuous range of values
- Can detect small changes in the input
- Often require analog-to-digital conversion for use with digital systems
- Examples: thermistors, photoresistors, potentiometers


#### Digital Sensors


Digital sensors produce discrete digital output signals, typically in binary form (0s and 1s).


Key characteristics:
- Output is discrete values, often binary
- More resistant to noise compared to analog sensors
- Can be easily interfaced with digital systems
- Examples: digital temperature sensors, infrared motion sensors, digital accelerometers


## Experimenting with Sensors on PSLab
### Analog Sensor Experiments with the Generic Sensor Instrument


The PSLab provides a way to interface with analog sensors. This can be through a Generic Sensor instrument or specific analog input pins.


#### Experiment: Motion Sensor to Control Audio


This experiment demonstrates how an analog motion sensor can potentially be used to trigger audio output.


Materials :
- PSLab device
- Analog motion sensor (e.g., PIR sensor)
- Audio output device compatible with PSLab
- Necessary connecting wires


Procedure :
1. Connect the motion sensor to an analog input on the PSLab.
2. Set up the audio output device with the PSLab.
3. Use the PSLab software to read the analog input from the motion sensor.
4. Create a script that activates the audio output when the sensor reading exceeds a certain threshold.
5. Test the setup by moving in front of the sensor.


This experiment demonstrates how analog sensors can be used to trigger actions based on environmental changes.


### Digital Sensor Experiments with the Generic Sensor Instrument


Many modern sensors use digital communication protocols. The PSLab supports interfacing with digital sensors, through specific digital input/output pins or communication interfaces like I2C.


#### Experiment: Temperature and Humidity Measurement


This experiment outlines how a digital temperature and humidity sensor might be used with the PSLab.


Materials :
- PSLab device
- Digital temperature and humidity sensor (e.g., DHT11 or DHT22)
- Necessary connecting wires


Procedure :
1. Connect the digital sensor to the appropriate pins on the PSLab (likely power, ground, and a digital data pin).
2. Use the PSLab software to initialize communication with the sensor.
3. Create a script to read temperature and humidity data at regular intervals.
4. Display the data on the PSLab interface or log it for later analysis.
5. Observe how temperature and humidity change under different conditions (e.g., breathing on the sensor, moving it to different locations).


This experiment showcases how digital sensors can provide multiple data points and how they interface differently with the PSLab compared to analog sensors.





