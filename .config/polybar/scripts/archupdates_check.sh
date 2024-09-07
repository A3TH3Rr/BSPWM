#!/bin/bash

# Check for Arch official package updates
arch_updates=$(checkupdates 2>/dev/null | wc -l)

# Check for AUR updates with yay, excluding nekoray
aur_updates=$(yay -Qua 2>/dev/null | grep -v "^nekoray " | wc -l)

# Combine both for the total update count
total_updates=$((arch_updates + aur_updates))

# Set icon size and color based on the number of updates
if [ "$total_updates" -eq 0 ]; then
    # Cyan color if no updates
    echo "%{T2}%{F#00B19F} 0%{F-}%{T-}"
elif [ "$total_updates" -gt 0 ] && [ "$total_updates" -le 15 ]; then
    # Orange color if there are updates
    echo "%{T2}%{F#E57C46} $total_updates%{F-}%{T-}"
else
    # Purple color if more than 15 updates
    echo "%{T2}%{F#BA68C8} $total_updates%{F-}%{T-}"
fi

