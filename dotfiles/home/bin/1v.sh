#!/bin/sh
# ./2v.sh
xrandr --setmonitor TwoAsOneV 1920/530x2160/300+0+0 HDMI1,HDMI3
i3-msg restart
