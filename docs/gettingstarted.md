# Getting Started

To get started, you will need to connect the PSLab device, run the software, and configure your first circuit.

---

## 1. Loading the Software

There are PSLab applications available for Android and iOS, as well as desktop versions for Windows, macOS, and Linux.

- **[Download the Application](application/Readme.md)**

---

## 2. Connecting the PSLab

### USB Connection
Connecting to a PC requires a standard USB cable, or an OTG ("On the Go") cable if connecting to an Android mobile device. Depending on your PSLab hardware version, the device features a **micro-USB** or a **USB-C** connector. Ensure the other end of the cable matches your client device.

### Wi-Fi Connection (PSLab v6)
If you are using **PSLab v6**, the device can also be connected wirelessly via Wi-Fi using an **ESP-01** chip. 

!!! tip "Wireless Setup"
    To set up and connect your device over Wi-Fi, [click here](wifi-guide.md) to view the complete Wi-Fi configuration guide.

---

## 3. Configuring Your First Circuit

!!! warning "Important Safety Warning"
    Do not use PSLab with high voltage circuits, in hazardous environments, or without appropriate supervision!

**Before you start, please keep the following in mind:**

- **Short circuits** can damage the PSLab, connected equipment, and potentially cause a fire.
- When connected to a computer or certain power supplies, the PSLab has an earth ground. This may create a potentially dangerous voltage differential and affect some modes of operation. This must be considered when working with electronic circuits.

### The "Hello World" Circuit

To get started, we will wire a very simple circuit where the output of one PSLab instrument is connected to the input of another on the same device. This verifies that the software and hardware are communicating properly.

Follow these steps:

1. **Connect the wire:** Using a short DuPont wire, connect the Programmable Voltage 1 (**PV1**) pin directly to Channel 1 (**CH1**).
   
    > **Hint:** For most circuits, you would also connect a ground wire. There is no need to connect ground in this specific case, as it is already connected internally on the PSLab board.

2. **Connect the device:** Plug the appropriate USB cable from the PSLab into your device (or connect via Wi-Fi).
3. **Open the app:** Launch the PSLab application.
4. **Set the Power Source:** 
    - Navigate to the **Power Source** instrument.
    - Set PV1 to a voltage of your choice (e.g., `3.3 V`).
5. **Check the Multimeter:**
    - Click the back arrow in the top left corner.
    - Open the **Multimeter** instrument.
    - In the Voltage section, select **CH1**.
6. **Verify the reading:** Observe the voltage output. It should exactly match the voltage you set (e.g., `3.3 V`).
7. **Experiment:** Go back and repeat steps 4 through 6 with a different voltage to see it change in real-time.

---

🎉 **Congratulations!** You have successfully verified that both your software and hardware are working correctly.

If something went wrong, verify that the cables are securely connected, unplug and replug the PSLab, and restart the application before trying again. For any further help, feel free to reach out via our [Gitter Chat](https://gitter.im/fossasia/pslab).
