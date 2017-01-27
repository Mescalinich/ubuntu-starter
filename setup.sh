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
