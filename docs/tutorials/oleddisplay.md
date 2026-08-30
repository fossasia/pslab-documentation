# OLED Display

## What is an OLED Display?

An OLED (Organic Light-Emitting Diode) display is a digital screen technology used to output visual information. In the context of PSLab, small I2C-based OLED screens can be connected to visualize sensor data, text, or shapes without needing a full smartphone or computer screen.

---

## Interfacing with an OLED Display

### Learning Objectives
To successfully connect an external I2C OLED display to the PSLab and render basic text or shapes on it.

### Materials Required
- Your Phone or Computer
- The **PSLab App** installed
- An I2C OLED Display (e.g., SSD1306 0.96")
- Connecting jumper wires

### Procedure

1. **Connect the Pins:** Connect the `VCC` and `GND` pins of the OLED to the respective power pins on the PSLab. Connect the `SDA` (Data) and `SCL` (Clock) pins of the OLED directly to the I2C pins on the PSLab board.
2. Open the **PSLab app**.
3. Navigate to the **Instruments** section and open the **OLED Display** control interface.
4. The app will automatically initialize communication over the I2C bus.
5. Use the text input field in the app to type a message and press "Send to Display".
6. The text should render instantly on your external OLED screen.


<div style="clear: both;"></div>
