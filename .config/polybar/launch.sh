#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# wait until the process have shutdown
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


# Launch bar1 
echo "---" | tee -a /tmp/polybar1.log 
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bar launched..."
