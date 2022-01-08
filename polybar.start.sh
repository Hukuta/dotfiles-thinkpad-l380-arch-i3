#!/usr/bin/env bash
# start polybar for 1 or 2 monitors

killall polybar

if [ $(polybar -m | wc -l) == 1 ]; then
    polybar -q example &
else
    FIRST_MONITOR=$(polybar -m | grep "primary" | awk -F: '{print $1}')
    MONITOR=$FIRST_MONITOR polybar -q example &
    SECOND_MONITOR=$(polybar -m | grep -v "primary" | awk -F: '{print $1}')
    MONITOR=$SECOND_MONITOR polybar -q example &
fi
