#!/bin/bash

#scrot /tmp/screen_locked.png
#convert /tmp/screen_locked.png -scale 10% -scale 1000% /tmp/screen_locked2.png
#i3lock -i /tmp/screen_locked2.png

icon="$HOME/Pictures/Icons/lock_icon.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }


scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" $icon -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"
