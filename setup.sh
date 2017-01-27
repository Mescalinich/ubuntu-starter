#!/bin/bash
# This script purposed to install some recently used packages
# I have wrote it to speed up initial ubuntu tuning after clean installation

echo "Ubuntu updated started"

# ================================================================
# Add repositories
# ================================================================
echo "Adding repositories"
# Add repositories
# SimpleScreenRecorder to make screencasts
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder -y
# flatpak - new linux package format
sudo add-apt-repository ppa:alexlarsson/flatpak -y
# Java
sudo add-apt-repository ppa:webupd8team/java -y

# ================================================================
# Update repository sources and packages
# ================================================================
echo "Updating repository sources and packages"
sudo apt-get update && sudo apt-get upgrade -y

# ================================================================
# Installing packages
# ================================================================

# NetworkManager applet (indicator) extensions to manage openvpn connections
sudo apt-get install network-manager-openvpn network-manager-openvpn-gnome network-manager-pptp network-manager-vpnc -y
