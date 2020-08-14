Getting Started
==============
To get started, you will need to load the software, connect the PSLab, and configure the circuit.

Loading Software
------------
The PSLab application runs on Android phones or Windows, Mac, or Linux PCs. 

Installation:

- [Android](android/Readme.html)
- [PC](desktop/Readme.html)

Connecting the PSLab
------------
Connecting to a PC requires a USB cable, or an OTG "On the Go" cable for an Android mobile device. The PSLab has a "micro-USB" connector, and the other end will be typically a USB-A, USB-C, or micro-USB connector, depending on the client device.

Alternatively, bluetooth operation allows connection to devices without a physical cable. In addition to more flexability, this also provides isolation between the PSLab and the client device.


Configuring the first circuit
------------
| **WARNING**: Do not use PSLab with high voltage circuits, in hazardous environments, or without appropriate supervision!  |
| --- |

Before you start, keep the following in mind:
- Short circuits can damage the PSLab, connected equipment, and potentially cause a fire.
- PSLab when used connected to a computer or some power supplies has an earth ground. This may create a potentially dangerous voltage differential and affect some modes of operation. This needs to be taken into consideration when working with electronic circuits. The safest mode of operation is on battery, connected via bluetooth.

To get started, we will use a very simple circuit where the output of one PSLab instrument is connected to the input of another instrument on the same device. This simple "Hello World" circuit allows us to verify that the software and hardware are working properly.

1. Using a short dupont wire, connect Voltage 1 (PV1) directly to Channel 1 (CH1)
> For most circuits you would also connect a ground wire. There is no need to connect ground in this case, as it is connected internally on the PSLab.
2. Connect the appropriate USB cable from the PSLab to your device
3. Open the PSLab application
4. Select Power Source
5. Change PV1 to 3.3V
6. Click the back arrow in the top left corner of the screen
7. Select Multimeter
8. In the Voltage section, click CH1
9. Observe the voltage output. It should read 3.3V
10. Click the back arrow, and repeat steps 4 through 9 using a different voltage

**Congratulations**, you just verified the software and hardware are working!

If something went wrong, verify the cables are correctly connected, unplug and replug in the PSLab, and restart the application before trying again.

