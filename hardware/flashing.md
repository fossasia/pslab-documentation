# Flashing Firmware
The firmware for the PSLab can be downloaded from [https://github.com/fossasia/pslab-firmware/releases](https://github.com/fossasia/pslab-firmware/releases)

Each version of the PSLab requires a custom firmware for the respective board. The version of the board is contained in the filename.

Please refer to the chapter which matches your use-case.

## PSLab v6
For the PSLab v6 two flavors of the firmware are available:

- the regular firmware
- with WiFi support

Both firmwares support different use-cases, but are flashed the same way.

### Regular Firmware
This version of the firmware supports all features of the board, except WiFi access.

### Firmware with WiFi Support
WiFi support requires an additional ESP01 chip. To utilize that chip some signal lines need to be repurposed. This is the reason why sensor support is missing in this version of the firmware.

For more details regarding the firmware for the ESP01 see [https://github.com/fossasia/pslab-esp01-firmware/](https://github.com/fossasia/pslab-esp01-firmware/)

### Flashing the Firmware

##### Prerequisites
The following requirements need to be met to flash the firmware to the PSLab v6:

- Firmware (the .hex file from the .zip file ([https://github.com/fossasia/pslab-firmware/releases](https://github.com/fossasia/pslab-firmware/releases))
- PSLab v6 board
- USB cable
- Python
- [mcbootflash](https://github.com/fossasia/pslab-python), install with `pip install mcbootflash` (already available if the [PSLab Python Library](https://github.com/fossasia/pslab-python) was installed previously)
- Windows only: The CP210x Windows Drivers from [https://www.silabs.com/software-and-tools/usb-to-uart-bridge-vcp-drivers](https://www.silabs.com/software-and-tools/usb-to-uart-bridge-vcp-drivers)

To install the firmware:

1. Connect the PSLab v6 board to the computer
2. Enter boot mode:
	1. press and hold the 'BOOT' button
	2. press and release the 'RESET' button
	3. release the 'BOOT' button when the RGB-LED changes to purple
3. Run `mcbootflash --port <portname> -b 460800 pslab-firmware.hex`
4. Reset or power cycle the board

The port name is usually similar to `COM3` on Windows systems. You should be able to find it in the Windows Device Manager. The device is called 'Silicon Labs CP210x USB to UART Bridge'.

On Linux systems the port name is similar to `/dev/serial/by-id/usb-Silicon_Labs_CP2102N_USB_to_UART_Bridge_Controller_5ecc207eeba8eb11828e98374232452f-if00-port0`. The UUID part of the name is different for every individual board.

## PSLab v5

The easiest way to flash the PSLab v5 board requires:

- Firmware (the .hex file from the .zip file ([https://github.com/fossasia/pslab-firmware/releases](https://github.com/fossasia/pslab-firmware/releases))
- `flash.mdbscript` from [https://github.com/fossasia/pslab-firmware/blob/main/flash.mdbscript](https://github.com/fossasia/pslab-firmware/blob/main/flash.mdbscript)
- PSLab v5 board
- USB cable
- PICkit3 programmer
- Microchip MPLAB X IDE ([https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide))

To install the firmware:

1. Edit `flash.mdbscript` to point to the correct path to the firmware file
1. Disconnect the device from any power source
2. Connect the programmer to the device's ICSP header
3. Power on the device via USB
4. Run `mdb.sh flash.mdbscript` or `mdb.bat flash.mdbscript` (depending on your operating system)
5. Disconnect the programmer and power cycle the board

On Linux systems `mdb.sh` can be found in `/opt/microchip/mplabx/v6.25/mplab_platform/bin` (the version number in the path may vary).

On Windows systems `mdb.bat` can be found in `C:\Program Files\Microchip\MPLABX\v6.25\mplab_platform\bin` (the version number in the path may vary).