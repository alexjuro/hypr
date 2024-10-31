#!/bin/sh
updates=$(pacman -Qu | wc -l)

if [ "$updates" -gt 3 ]; then
    printf '{"text": "􁓹"}'
else
    printf '{"text": ""}'
fi
