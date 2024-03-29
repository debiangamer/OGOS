# OGOS
Optimised Gaming Operating System

This Debian Sid Xfce based operating system does have an optimized and latest Linux kernel, Oibaf ppa Mesa, Linux Steam and Heroic Epic games launchers, the secure Brave web browser and the winehq-devel package installed (if all 32-bit libraries are available). You can install more software and update your system with the Synaptic program. You can download the iso file from the Releases section in this page. In Debian type:

sudo cp xxx.iso /dev/sdX

Where xxx is the iso file name and X is your memory device. Use the dmesg command to see it. In windows you can use balenaEtcher to raw-write the iso file to the  memory device.

Select the desktop option in the installer and accept the Steam license. The installer is for UEFI or MBR Bios and uses the whole disk. Use mininum 4GB of RAM. There is no swap partition but you can use a swap file. The kernel out of memory killer is disabled and applications fails to start if you not have enough free memory. Updated kernel packages you can download from the debs folder.

Use the following command if wine is not installed: sudo apt-get install winehq-devel

Install DXVK from https://github.com/doitsujin/dxvk/releases.
You can download and install: wine UbisoftConnectInstaller.exe (install winbind, p11-kit-modules:i386 and p11-kit:i386 packages to make it work)

Nvidia users, download the gpu driver from:https://www.nvidia.com/en-us/drivers/unix/.
Reboot to the linux recovery mode to install the .run file.

Optimizations: non debug 1000HZ timer kernel, schedutil cpu governor, mitigations are disabled, limited set of device drivers, latest gpu drivers, Xfce desktop and the installer media is 815 MBytes. 

![Ogos Screenshot](https://github.com/debiangamer/OGOS/blob/master/screenshot2k.png)
