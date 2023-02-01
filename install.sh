#!/bin/bash

read -p "Welcome to the Pop OS setup script for Mehmet Can. Press enter to continue and enter your sudo password."

sudo apt update && sudo apt upgrade

sudo apt install keepassxc

sudo apt install gnome-tweaks

sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

sudo apt install virt-manager qemu

sudo usermod -G libvirt -a mehmetcan

flatpak install flathub com.getpostman.Postman

flatpak install flathub com.github.tchx84.Flatseal

flatpak install flathub com.github.Eloston.UngoogledChromium

flatpak install flathub com.obsproject.Studio

flatpak install flathub org.inkscape.Inkscape

flatpak install flathub md.obsidian.Obsidian

flatpak install flathub org.blender.Blender

flatpak install flathub org.gimp.GIMP

touch ~/.var/app/com.github.Eloston.UngoogledChromium/config/chromium-flags.conf

echo -e "--force-dark-mode\n--enable-features=WebUIDarkMode" >> ~/.var/app/com.github.Eloston.UngoogledChromium/config/chromium-flags.conf

cd Downloads

wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.27.2.13801.tar.gz

wget https://mullvad.net/media/app/MullvadVPN-2022.5_amd64.deb

wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64

wget https://updates.safing.io/latest/linux_amd64/packages/portmaster-installer.deb

sudo apt install code_1.74.3-1673284829_amd64.deb

sudo apt install MullvadVPN-2022.5_amd64.deb

sudo apt install portmaster-installler.deb

wget https://go.dev/dl/go1.19.5.linux-amd64.tar.gz

tar -xf go1.19.5.linux-amd64.tar.gz

mv go /usr/local

cd /opt

sudo tar -xvzf ~/Downloads/jetbrains-toolbox-1.27.2.13801.tar.gz

sudo mv jetbrains-toolbox-1.27.2.13801

cd

read -p "Click enter to reboot and finish the setup."

reboot