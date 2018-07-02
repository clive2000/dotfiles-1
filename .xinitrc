#!/bin/sh
sh ~/Scripts/wal.sh
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# If laptop, scale display
if [ "$HOSTNAME" = archmac ]; then
    xrandr --output eDP1 --mode 1440x900
fi

exec i3
