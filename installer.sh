#!/bin/bash

# Set the download directory
old_directory="/home/pi/zbitx-toolbox"

# Set the working directory
working_directory="/home/pi/zbitx-toolbox"

# Start install
if [ -d "$old_directory" ]; then
    mv "$old_directory" "$working_directory"
fi

# Check for python3-tk and install if not present
if ! dpkg -l | grep -qw python3-tk; then
    echo "Installing python3-tk..."
    sudo apt-get update
    sudo apt-get install -y python3-tk
fi

# Change directory
cd "$working_directory"

# Give execute permissions
chmod +x ./*.sh ./zb_launcher ./apps/*

# Change directory
cd "$working_directory"

# Create a desktop menu shortcut
echo -e "[Desktop Entry]\nName=zBitx Toolbox\nExec=sh -c 'cd $working_directory && ./zb_launcher'\nType=Application\nIcon=/home/pi/zbitx-toolbox/icons/toolbox_icon.png\n" | sudo tee /usr/share/applications/zb_launcher.desktop > /dev/null
echo -e "[Desktop Entry]\nName=zBitx Toolbox\nExec=sh -c 'cd $working_directory && ./zb_launcher'\nType=Application\nIcon=/home/pi/zbitx-toolbox/icons/toolbox_icon.png\n" | sudo tee /home/pi/Desktop/zb_launcher.desktop > /dev/null

# Update the menu
sudo update-desktop-database

echo "zBitx Toolbox setup completed successfully! The applications have been added to the Pi Menu"
