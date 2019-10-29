#!/bin/bash

cd ~/Downloads
winecfg
sudo apt-get install -y wget
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo apt-get install -y cabextract
./winetricks corefonts
./winetricks dotnet48

wget https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi
wine msiexec /i EpicGamesLauncherInstaller.msi
echo "add -OpenGL to the desktop launcher" 

