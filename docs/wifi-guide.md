# Wi-Fi Setup Guide

The PSLab v6 supports wireless connectivity via an **ESP-01** Wi-Fi module. This allows you to connect to the PSLab hardware without any USB cables. Wi-Fi connectivity is supported across all platforms, including **Android, iOS, Desktop, and Web**.

Follow these instructions to connect your PSLab over Wi-Fi.

## Prerequisites

1. **Attach the ESP-01:** Ensure that the ESP-01 chip is securely attached to the dedicated ESP-01 socket on your PSLab board.
2. **Flash the Firmware:** The ESP-01 module must be flashed with the correct PSLab Wi-Fi firmware. *(See the [flashing guide](hardware/flashing.md) for detailed firmware flashing instructions if your chip is not already pre-flashed).*

## Connection Steps

Once your hardware is ready, follow these steps to establish a connection:

1. **Power the PSLab:** Provide power to the PSLab board. The ESP-01 module will begin broadcasting its own Wi-Fi network (SSID).
2. **Connect to the Network:** Open your device's main Wi-Fi settings (on your phone or computer) and connect to the Wi-Fi network broadcasted by the PSLab's ESP-01 chip.
3. **Open the PSLab App:** Launch the PSLab application on your preferred platform.
4. **Navigate to Connect Device:** Go to the **Connect Device** screen within the app and select the **Wi-Fi** option.
5. **Connect:** Click the **Connect** button on the Wi-Fi screen. 

The application will now communicate wirelessly with your PSLab hardware!
