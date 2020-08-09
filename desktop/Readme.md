PSLab Desktop Application
=========================

_Currently there is no official distribution for latest development build of the
PSLab desktop application. To run the application, you need to build it._
    
## Building from source

### Prerequisites

Make sure that you have [Node.js](https://nodejs.org/) and `npm` installed.

### Download and build

1. Go to the [official repository](https://github.com/fossasia/pslab-desktop)
2. Download as a zip file or clone the repository
    - ZIP file: Click on the "Code" button, then "Download ZIP", and extract the
      file to a directory of your preference
    - Git clone: Open a terminal and run
      ```
      git clone https://github.com/fossasia/pslab-desktop.git
      ```
3. Open a terminal emulator, or on Windows, either **Command Prompt** or
   **Powershell**, and change to the project root directory.
4. Run the following commands:
    
```
npm install
npm run react-build
npm run pack
```

PSLab desktop should now be built. 😇

### Build artifacts

Depending on your operating system, the executable will be in a directory under
`dist/`. To run it:

- Linux: `./dist/linux-unpacked/pslab`
- macOS: `open dist/mac/PSLab.app`
- Windows: `dist/win-unpacked/pslab.exe` -- TODO: check this

## Using the app

Note: In order to use an actual PSLab device, you will need to have the [Python
library](../python-library) installed.

First *connect the PSLab board and your PC with a USB cable*. Then open the app.

You will be presented with a home screen like this:

![PSLab Desk Home screen](../images/desk_home_screen.jpg)

Click on the instrument you would like to use.
