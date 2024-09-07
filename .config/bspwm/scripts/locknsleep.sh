#!/bin/bash

# Turn off default DPMS and Screen Saver
xset -dpms
xset s off

# Lock screen after 5 minutes of inactivity
xidlehook \
  --not-when-audio \
  --not-when-fullscreen \
  --timer 600 \
    'betterlockscreen -l dim & sleep 2 && xset dpms force off' \
    '' \
  --timer 1800 \
    'systemctl suspend' \
    ''

