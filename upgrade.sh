#!/bin/bash

# Set the working directory
working_directory="/home/pi/zbitx-toolbox"

# Change directory
cd "$working_directory"

# Update from Git
git reset --hard && git pull origin main 

# Set execute permissions
chmod +x ./*.sh ./zb_launcher ./apps/*

# Update the menu
sudo update-desktop-database

echo "zBITX-Launcher upgrade completed successfully! The applications have been added to the Pi Menu"

# reboot
#sudo reboot
