#!/bin/sh
updates=$(pacman -Qu | wc -l)

if [ "$updates" -gt 10 ]; then
    printf '{"text": "􁓹"}'
else
    printf '{"text": ""}'
fi
