#!/bin/sh
vol=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')
printf '{"text": "%s"}' "$vol"