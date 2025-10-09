#!/bin/sh

brightnessctl set $1 && dunstify -r 9997 -u low -i sun-solid -h int:value:$(expr $(brightnessctl get) \\* 100 / $(brightnessctl max)) Monitor Brightness
