#!/bin/bash

# Open Alacritty in floating mode with custom title
alacritty --title="update" --class="update" -e bash -c "
clear
echo -e '\033[1;35m==============================================================\033[0m'
echo -e '\033[1;36m==                  Arch Linux Update Script                ==\033[0m'
echo -e '\033[1;35m==============================================================\033[0m\n'

echo -e '\033[1;33m>> Checking for system updates...\033[0m\n'
sleep 1

# Perform Arch official updates
echo -e '\033[1;33m>> Performing Arch official updates...\033[0m\n'
echo -e '\033[1;35m==============================================================\033[0m\n'
sudo pacman -Syu --noconfirm
echo -e '\033[1;35m==============================================================\033[0m\n'
echo -e '\033[1;32m>> System packages updated!\033[0m\n'
sleep 1

# Perform AUR updates, excluding nekoray
echo -e '\033[1;33m>> Performing AUR updates...\033[0m\n'
echo -e '\033[1;35m==============================================================\033[0m\n'
yay -Syu --noconfirm --ignore nekoray
echo -e '\033[1;35m==============================================================\033[0m\n'
echo -e '\033[1;32m>> AUR packages updated (excluding nekoray)!\033[0m\n'
sleep 1

# Restarting Polybar to refresh update count
echo -e '\033[1;33m>> Refreshing update list...\033[0m\n'
polybar-msg cmd restart > /dev/null 2>&1
sleep 13

echo -e '\033[1;32m>> Update process complete! Enjoy your day!\033[0m\n'
echo -e '\033[1;35m==============================================================\033[0m'
sleep 3
exit
"
