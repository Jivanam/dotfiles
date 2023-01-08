#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do : ; done

# Launch polybar
polybar mainbar-i3 -c $(dirname $0)/config.ini &

if [[ $(xrandr -q | grep 'DP-1 connected') ]]; then
	polybar external-i3 -c $(dirname $0)/config.ini &
fi