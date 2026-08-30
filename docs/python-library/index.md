# PSLab Python Library

The **PSLab Python Library** provides direct, programmatic access to PSLab hardware from your desktop computer. This allows you to write custom scripts to automate scientific experiments, log data over time, and precisely control all built-in instruments and sensors using Python.

---

## 📦 Installation

The easiest way to install the PSLab Python library is via `pip`. Open your terminal or command prompt and run:

```bash
pip install pslab
```

---

## 💻 Source Code & API Reference

The library is fully open-source and actively maintained by the community. You can view the source code, report issues, and read the comprehensive API documentation on our GitHub repository:

- 🐙 **[pslab-python on GitHub](https://github.com/fossasia/pslab-python)**

---

## 🔌 Desktop Driver Requirements

The PSLab device utilizes a **CP2102N USB serial adapter** to communicate with your PC. 

!!! note "USB Driver Installation"
    If your operating system (especially older versions of Windows) does not automatically recognize the connected device, you may need to manually install the USB-to-UART drivers.
    
    You can download the official drivers directly from the [Silicon Labs website](https://www.silabs.com/software-and-tools/usb-to-uart-bridge-vcp-drivers).
