#!/bin/sh
updates=$(grep "upgraded" /var/log/pacman.log | wc -l)

if [ "$updates" -gt 10 ]; then
    printf '{"text": "􁓹"}'
else
    printf '{"text": ""}'
fi
