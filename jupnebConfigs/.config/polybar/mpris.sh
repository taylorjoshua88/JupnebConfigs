#!/bin/sh

player_status=$(playerctl status 2> /dev/null)
if [[ $? -eq 0 ]]; then
    metadata="$(playerctl metadata artist) - $(playerctl metadata title)"
fi

if [[ $player_status = "Playing" ]]; then
    echo "%{F#DFDFDF} $metadata"
elif [[ $player_status = "Paused" ]]; then
    echo "%{F#777} $metadata"
else
    echo ""
fi
