# OGOS
Optimised Gaming Operating System

This Debian Sid based operating system does have an optimized  latest  non debug 1000Hz timer  kernel, Oibaf ppa, the Linux Steam client and wine-staging  installed. You can install more software and update your system with the Synaptic program. You can download the iso file:
https://drive.google.com/open?id=1Y5ys44heCTCrBvGcEb4ZJgemudMraE2h

Select the desktop option in the installer and accept the Steam license. The installer is for UEFI only and no manual partition. Delete the /usr/share/X11/xorg.conf.d/10-freesync.conf file when not using the amdgpu driver. Use mininum 4GB of RAM. There is no swap partition but you can use a swap file. The kernel out of memory killer is disabled and applications fails to start if you not have enough free memory.  

Use the following command if wine is not installed: sudo apt-get install winehq-staging

Add the following to the Epic launcher command line after installing:RADV_PERFTEST=aco ... Launcher.lnk -SkipBuildPatchPrereq -OpenGL

Check your audio devices with the command aplay -l and set the default audio output device number, example:
leafpad  ~/.asoundrc

defaults.ctl.card 2

defaults.pcm.card 2

Install D9VK from https://github.com/Joshua-Ashton/d9vk/releases (click Assets).
You can download and install: wine SteamSetup.exe 
