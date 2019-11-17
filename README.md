# OGOS
Optimised Gaming Operating System

This Debian Sid based operating system does have an optimized  latest  non debug 1000Hz timer  kernel,  Oibaf ppa Mesa master, Steam and wine-staging  installed. Note to select the desktop option and agree the Steam license in the installer. You can install more software and update your system with the Synaptic program. Check from the  ppa web site that it has amd64 and i386 Mesa packages available before installation. You can download the iso file: https://drive.google.com/open?id=1X-2YZZ8qCbXaIF3-lZiCyARrYxHqfKKU

The installer is for UEFI only and no manual partition. Delete the /usr/share/X11/xorg.conf.d/10-freesync.conf file when not using the amdgpu driver.

Use the following command if wine is not installed: sudo apt-get install winehq-staging

Use the following command if you can not create a desktop laucher from the Applications/Wine menu: 

sudo chown username /home/username/Desktop

Add the following to the launcher command line:
env RADV_PERFTEST=aco ... Launcher.lnk -SkipBuildPatchPrereq -OpenGL

Check your audio devices with the command aplay -l and set the default audio output device number, example:
leafpad  ~/.asoundrc

defaults.ctl.card 2

defaults.pcm.card 2

Install D9VK from https://github.com/Joshua-Ashton/d9vk/releases (click Assets).
