# OGOS
Optimised Gaming Operating System

This Debian Sid Xfce based operating system does have an optimized https://cgit.freedesktop.org/~agd5f/linux/ drm-next kernel, Oibaf ppa Mesa, the Linux Steam client and wine-staging installed. You can install more software and update your system with the Synaptic program. You can download the iso file:
https://drive.google.com/open?id=1Y5ys44heCTCrBvGcEb4ZJgemudMraE2h

Select the desktop option in the installer and accept the Steam license. The installer is for UEFI only and uses the whole disk. Delete the /usr/share/X11/xorg.conf.d/10-freesync.conf file when not using the amdgpu driver. Use mininum 4GB of RAM. There is no swap partition but you can use a swap file. The kernel out of memory killer is disabled and applications fails to start if you not have enough free memory.  

Use the following command if wine is not installed: sudo apt-get install winehq-staging

Add the following to the Epic launcher command line after installing:env RADV_PERFTEST=aco ... Launcher.lnk -SkipBuildPatchPrereq -OpenGL

Check your audio devices with the command aplay -l and set the default audio output device number, example:
leafpad  ~/.asoundrc

defaults.ctl.card 2

defaults.pcm.card 2

Install DXVK from https://github.com/doitsujin/dxvk/releases.
You can download and install: wine SteamSetup.exe 

Nvidia users, download the gpu driver from:https://www.nvidia.com/en-us/drivers/unix/.
Reboot to the linux recovery mode to install the .run file.

Optimizations: non debug 1000HZ timer kernel, no cpu governor (BIOS controls your CPU automatically), migitations are disabled, limited set of device drivers, latest gpu drivers, Xfce desktop and the installer media is 591 MBytes. 

![Ogos Screenshot](https://github.com/debiangamer/OGOS/blob/master/screenshot.png)
