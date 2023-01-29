#!/bin/bash

export DISPLAY=:0.0
export XAUTHORITY=/home/pi/.Xauthority

while true;
do
  xdotool key ctrl+r &

  sleep 60 #refresh time in seconds
done
