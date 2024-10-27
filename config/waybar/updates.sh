#!/bin/sh
updates=$(pacman -Qu | wc -l)

if [ "$updates" -gt 3 ]; then
    printf '{"text": "%s "}' "$updates"
else
    printf '{"text": "0 "}'
fi