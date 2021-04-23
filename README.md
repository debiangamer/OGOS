# OGOS
Optimised Gaming Operating System

This Debian Sid Xfce based operating system does have an optimized and latest Linux kernel, Oibaf ppa Mesa, the Linux Steam client and the winehq-staging package installed (if all 32-bit libraries are available). You can install more software and update your system with the Synaptic program. You can download the iso file:
https://drive.google.com/file/d/14MHikPvpaFG-_6L5g4DbHFdyQheiL6Xh/view?usp=sharing

Select the desktop option in the installer and accept the Steam license. The installer is for UEFI or MBR Bios and uses the whole disk. Use mininum 4GB of RAM. There is no swap partition but you can use a swap file. The kernel out of memory killer is disabled and applications fails to start if you not have enough free memory. Updated kernel packages you can download from the debs folder.

Use the following command if wine is not installed: sudo apt-get install winehq-staging

Add the following to the Epic launcher command line after installing:... Launcher.lnk -SkipBuildPatchPrereq -OpenGL

PipeWire is a server and API for handling multimedia on Linux. Run these commands as your regular user (not as root):
// Check for new service files with:
systemctl --user daemon-reload
// Enable and start the new pipewire-pulse service with:
systemctl --user --now enable pipewire pipewire-pulse
// Restarting PipeWire services: 
systemctl --user restart pipewire pipewire-pulse

Install DXVK from https://github.com/doitsujin/dxvk/releases.
You can download and install: wine SteamSetup.exe 

Nvidia users, download the gpu driver from:https://www.nvidia.com/en-us/drivers/unix/.
Reboot to the linux recovery mode to install the .run file.

Optimizations: non debug 1000HZ timer kernel, schedutil cpu governor, mitigations are disabled, limited set of device drivers, latest gpu drivers, Xfce desktop and the installer media is 662 MBytes. 

![Ogos Screenshot](https://github.com/debiangamer/OGOS/blob/master/screenshot2k.png)
