# Flashing Firmware

The firmware for the PSLab hardware determines its capabilities and controls its instruments. Each version of the PSLab requires a custom firmware specific to that board (the board version is contained in the firmware filename).

---

## PSLab v6

For the PSLab v6, there are two ways to flash the firmware: through the PSLab app (recommended) or manually via the command line.

Two flavors of the firmware are available for v6:
- **Regular Firmware:** Supports all features of the board, except Wi-Fi access.
- **Firmware with Wi-Fi Support:** Wi-Fi support requires an additional ESP-01 chip. To utilize that chip, some signal lines are repurposed, meaning sensor support is disabled in this firmware version. (See [pslab-esp01-firmware](https://github.com/fossasia/pslab-esp01-firmware/) for more details).

### Method 1: Flashing via the PSLab App (Recommended)

The simplest way to flash or update the firmware is directly through the **PSLab application** itself. The application seamlessly flashes the device without needing any command-line tools.

**How to flash via the app:**

1. Connect your PSLab device to your computer or phone.
2. Open the PSLab application.
3. Open the **Navigation Drawer** (side menu) and select **Firmware Update**.
4. You now have two options to select a firmware:
    - **Fetch from GitHub:** The app dynamically fetches the latest firmware releases directly from the GitHub API. Simply select the version you want from the list.
    - **Local File:** Choose a local `.hex` firmware file you downloaded manually.
5. Follow the on-screen instructions to put the device into **Bootloader Mode**.
6. The app will automatically safely flash the selected firmware to your device!

### Method 2: Manual Command-Line Flashing

If you prefer to flash manually or are using an environment where the app is not available, you can use the command line.

#### Prerequisites
The following requirements need to be met to flash the firmware manually:

- [Firmware](https://github.com/fossasia/pslab-firmware/releases) (the `.hex` file)
- PSLab v6 board & USB cable
- Python installed
- [mcbootflash](https://github.com/fossasia/pslab-python) installed via `pip install mcbootflash`
- **Windows only:** The CP210x Drivers from [Silicon Labs](https://www.silabs.com/software-and-tools/usb-to-uart-bridge-vcp-drivers)

#### Flashing Steps

1. Connect the PSLab v6 board to the computer.
2. Enter boot mode:
    - Press and hold the **BOOT** button.
    - Press and release the **RESET** button.
    - Release the **BOOT** button when the RGB-LED changes to purple.
3. Run the following command:
   ```bash
   mcbootflash --port <portname> -b 460800 pslab-firmware.hex
   ```
4. Reset or power cycle the board.

!!! info "Finding the Port Name"
    - **Windows:** Usually `COM3` or similar. Check the Device Manager under *Silicon Labs CP210x USB to UART Bridge*.
    - **Linux:** Usually `/dev/serial/by-id/usb-Silicon_Labs_CP2102N...`. The UUID part is unique for every board.

---

## PSLab v5

Flashing the PSLab v5 board is more involved and requires a dedicated hardware programmer.

### Prerequisites
- [Firmware](https://github.com/fossasia/pslab-firmware/releases) (the `.hex` file)
- [flash.mdbscript](https://github.com/fossasia/pslab-firmware/blob/main/flash.mdbscript)
- PSLab v5 board & USB cable
- **PICkit3 programmer**
- Microchip [MPLAB X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide)

### Flashing Steps

1. Edit `flash.mdbscript` to point to the correct path of the firmware file.
2. Disconnect the device from any power source.
3. Connect the PICkit3 programmer to the device's ICSP header.
4. Power on the device via USB.
5. Run the flash script (depending on your OS):
   - **Linux/macOS:** `mdb.sh flash.mdbscript`
   - **Windows:** `mdb.bat flash.mdbscript`
6. Disconnect the programmer and power cycle the board.

!!! note "Finding MDB Executables"
    - **Linux:** `/opt/microchip/mplabx/v6.25/mplab_platform/bin/mdb.sh`
    - **Windows:** `C:\Program Files\Microchip\MPLABX\v6.25\mplab_platform\bin\mdb.bat`
    *(Note: version numbers in the path may vary).*
