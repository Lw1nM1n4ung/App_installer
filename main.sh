#!/bin/bash 
read -p "Enter Appimage file path   : " image
read -p "Enter icon path            : " icon
read -p "Enter App name             : " name
sudo mkdir -pv /.icon /.app
sudo mv -v $image /.app/$name.Appimage
sudo mv -v $icon /.icon/$name.png
sudo touch /usr/share/applications/$name.desktop
sudo echo -e "[Desktop Entry] \nType=Application\nName=$name\n \nExec=/.app/$name.Appimage \nIcon=/.icon/$name.png" > /usr/share/applications/$name.desktop
sudo chmod +x  /.app/$name.Appimage 