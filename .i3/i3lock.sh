#!/bin/bash

# path to icon to be displayed
icon="$HOME/Pictures/icons/black_creeper.png"
# storage path for screenshot
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

# take a screenshot
scrot "$tmpbg"
# pixelate
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
# overlay icon
convert "$tmpbg" $icon -gravity center -composite -matte "$tmpbg"
# lock command 
i3lock -u -i "$tmpbg"
# sleep after inactivity and turn off the screen
#sleep 60; pgrep i3lock && xset dpms force off
