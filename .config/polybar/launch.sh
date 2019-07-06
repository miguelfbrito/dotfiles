#!/usr/bin/env bash

killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -r example &

echo "Bars launched..."
