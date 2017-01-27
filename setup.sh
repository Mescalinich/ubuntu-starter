#!/bin/bash
# This script purposed to install some recently used packages
# I have wrote it to speed up initial ubuntu tuning after clean installation

echo "Ubuntu updated started"

# ================================================================
# Add repositories
# ================================================================
echo "Adding repositories"

# SimpleScreenRecorder to make screencasts
sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder 
# flatpak - new linux package format
sudo add-apt-repository -y ppa:alexlarsson/flatpak 
# Java
sudo add-apt-repository -y ppa:webupd8team/java 
# indicator-sound-switcher applet
sudo apt-add-repository -y ppa:yktooo/ppa

# ================================================================
# Update repository sources and packages
# ================================================================
echo "Updating repository sources and packages"

sudo apt-get update && sudo apt-get upgrade -y

# ================================================================
# Installing packages
# ================================================================
echo "Installing packages"

# SimpleScreenRecorder
sudo apt-get install -y simplescreenrecorder
# Flatpak
sudo apt-get install -y flatpak
# Java8
sudo apt-get install -y oracle-java8-installer

# NetworkManager applet (indicator) extensions to manage openvpn connections
sudo apt-get install -y network-manager-openvpn network-manager-openvpn-gnome network-manager-pptp network-manager-vpnc 
# SoundSource switcher applet
sudo apt-get install indicator-sound-switcher

# Tweaks
sudo apt-get install -y unity-tweak-tool

# Installing basic tools
sudo apt-get install -y ssh vim uuid tmux openvpn xclip filezilla

# Clouds
sudo apt-get install -y owncloud-client

# Security and privacy
sudo apt-get install -y keepass2
sudo apt-get install -y tor tor-geoipdb privoxy

# Browsers
sudo apt-get install -y chromium-browser lynx

# Media editors
sudo apt-get install -y inkscape gimp vlc blender

# Developer tools
sudo apt-get install -y python3 poedit git
sudo apt-get install -y virtualbox virtualbox-ext-pack
# Monodevelop
flatpak install --user --from https://download.mono-project.com/repo/monodevelop.flatpakref
