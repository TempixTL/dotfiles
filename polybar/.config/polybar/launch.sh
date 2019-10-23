#!/bin/bash

# Terminate polybar if running
killall -q polybar

# Wait until process has been terminated
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar using default config at ~/.config/polybar/config
polybar mybar &

