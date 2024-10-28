#!/bin/sh
bat=$(upower -i $(upower -e | grep BAT) | grep -E 'percentage' | awk '{print $2}')
printf '{"text": "%s"}' "$bat"