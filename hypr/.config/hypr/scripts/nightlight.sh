#!/usr/bin/env sh

# Kill current hyprsunset session
killall -q hyprsunset

# Get the current hour (in 24-hour format)
current_hour=$(date +%H)

# If it’s 18 to 7, hyprsunset -t 3500
# Else hyprsunset -t 6500
if [ $current_hour -ge 18 ] || [ $current_hour -le 7 ]; then
  echo “Changing to nighttime hyprsunset”
  hyprsunset -t 3500
else
  echo “Changing to default hyprsunset”
  hyprsunset -t 6000
fi
