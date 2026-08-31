#!/bin/bash

# Remove the toolbox directory
sudo rm -rf /home/pi/zbitx-toolbox

# Remove shortcut
sudo rm /usr/share/applications/zb_launcher.*

# Update the menu cache
sudo update-desktop-database

echo "zBitx-toolbox applications and menu shortcuts have been successfully uninstalled."
