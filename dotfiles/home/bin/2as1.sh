#!/bin/sh
xrandr HDMI3 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal 
xrandr --setmonitor VOne 1920/530x2160/300+0+0 HDMI1,HDMI3
