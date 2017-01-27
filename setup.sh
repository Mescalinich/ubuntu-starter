#!/bin/bash
echo "Ubuntu updated started"

# Update repository sources and packages
sudo apt-get update && sudo apt-get upgrade -y
