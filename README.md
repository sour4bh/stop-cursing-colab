#### stop-cursing-colab

# A simple AHK script to keep Google Colab runtimes alive :

This script uses AutoHotKey, an automation scripting language and tool, to emulate human interface device interactions on Google Colab notebook to avoid runtime inactivity timeouts.


## Usage

##### Executable Binary (No dependencies) : 
> - Download the .exe from the [releases](https://github.com/sour4bh/stop-cursing-colab/releases) section. 
> - Just double-click the executable `colab_keep_alive.exe`
> - Enter the file name of the colab `<filename.ipynb>` 
> - Set the interval for HID interactions (in mins)
> - Done. 

##### CIY using Authotkey :
> - Install [AutoHotKey](https://www.autohotkey.com/download/ahk-install.exe)
> - Double-click `colab_keep_alive.ahk` to run. [ To compile, right click > compile ]
> - Enter the file name of the colab `<filename.ipynb>` 
> - Set the interval for HID interactions (in mins)
> - Done. 

## Troubleshoot
- The title of the window should be `<filename.ipynb> - Colaboratory - Google Chrome`
- If there are multiple tabs in the Chrome Window, make sure colab notebook is the active one. 
- Make sure power sleep/hibernate timeout is greater than script's interval 🙃
