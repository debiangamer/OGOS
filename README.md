# OOSG
Optimised Operating System for Gaming

This Debian Sid based operating system does have an optimized  latest  non debug 1000Hz timer  kernel (see 1),  Oibaf ppa Mesa master, Steam and wine-staging  installed. Note to select the desktop option and agree the Steam license in the installer. You can install more software and update your system with the Synaptic program. Check from the  ppa web site that it has amd64 and i386 Mesa packages available before installation. Release notes are in YouTube comments: https://www.youtube.com/watch?v=fKJ-IatUfis&list=UUcd5SYylkt9n48ZEH8KrI0A&index=48&t=0s

Install DXVK (see 2) for running windows games. Run winecfg to create the ~/.wine folder first. You can download and install Steam (wine SteamSetup.exe),  Epic (msiexec /i EpicInstaller-10.3.1.msi) and  Uplay (wine UplayInstaller.exe) windows clients. Installing the Origin client, see: https://www.youtube.com/watch?v=-LkyzBGTnYo&list=UUcd5SYylkt9n48ZEH8KrI0A

ClamTk is a virus scanner and scan your .mozilla folder regularly. OpenWrt routers with a firewall, WiFi  and a 4G mobile USB stick support are cheap in aliexpress.com. Krita is a painting program, qasmixer is a tray mixer, libreoffice for the office use and rosegarden for music creation. zynaddsubfx-dssi and fluidsynth-dssi are great software synths that integrates fine to Rosegarden. Debian is the only distribution that has dssi versions of those synths. Google for Compifont, it does have good sounding samples for the fluidsynth. The zynadd synth has over 1000 presets of cool analog and digital sounds.

You can make an installation media in Linux: sudo cp debian-10-amd64-CD-1.iso /dev/sdX. Use the command dmesg to see the letter for X and USB memory stick.
Download:
https://drive.google.com/file/d/1K6r3tood8FugOhANmOMng_ijxRICfmBC/view

Enable IOMMU in Bios to make front panel usb3 connectors to work. For 1st gen Ryzen CPUs you need to enable Typical Idle Current in AMD CBS to prevent the Linux kernel  to freeze when idle.

Manual partition does not work,  this installer uses whole disk and creates  EFI boot and ext4 partitions . You can make a live OS by installing to a fast USB stick memory.  To run this OS with other graphics cards than from AMD, remove the file: /usr/share/X11/xorg.conf.d/10-freesync.conf

You might need to install more firmware packages, amdgpu and realtek firmware are installed. Some Linux kernel drivers might not be present, leave a message if a driver is not included. Only amdgpu and radeon kernel drivers are for GPU accelerated graphics currently. Do have minimum 4GB RAM, no the swap partition but you can make a swap file if you need it. The distribution has latest Debian kernel too, it has all  drivers. 

Cpu frequency scaling is removed from the kernel, use your Bios to control power saving features. This OS boots very fast and shutdown immediately, so power off  your system totally when not used in a long time. Your electric devices will last longer when the main power is disconnected. See information about bad capacitors what can happen if the power unit of a device  is always connected. Suspend works.

If you have problems with hdpi settings, logout with save session.

Check your audio devices with the command aplay -l and set the default audio output device number, example:
sudo mousepad  ~ /.asoundrc

defaults.ctl.card 2

defaults.pcm.card 2


1. https://www.kernel.org/
2. https://github.com/doitsujin/dxvk/blob/master/README.md
Games like Assasin's Creed Black Flag need to have the dxvk.conf the in the game executable folder. https://github.com/doitsujin/dxvk/wiki/Configuration
 
 
Debian is a registered trademark owned by Software in the Public Interest, Inc. For software source code, enable source code repositories with Synaptic. 

AMD is a registered trademark owned by Advanced Micro Devices, Inc

Nvidia is a registered trademark owned by NVIDIA Corporation


Nvidia drivers: Download the nvidia run file package from the nvidia site. Install dkms and build-essential packages. Fix missing dkms links:
su 
cd /lib/modules/$(uname-r)
ln -s /usr/src/linux-headers-$(uname -r) build
ln -s /usr/src/linux-headers-$(uname -r) source

Reboot to the Linux rescue mode from Grub. Run the nvidia installer. Choose to use DKMS and install 32-bit libraries and libglvnd in the installer.
