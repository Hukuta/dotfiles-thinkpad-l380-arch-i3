#!/bin/bash

cd Downloads/Movies
FILENAME=$(find . -type f -size +400M | rofi -dmenu -theme Arc-Dark -p Movie)
if [ -e "$FILENAME" ]; then
  vlc --fullscreen "$FILENAME" &
fi
