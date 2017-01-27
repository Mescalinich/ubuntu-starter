#!/bin/bash
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
