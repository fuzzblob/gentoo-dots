#!/bin/sh

echo locking screen now...
swaylock --ignore-empty-password --show-failed-attempts \
    --color 1e1e1e --inside-color cccccc --ring-color ffffff \
    --inside-clear-color 11a8cd --ring-clear-color 29b8db \
    --inside-ver-color 2472c8 --ring-ver-color 3b8eea \
    --inside-wrong-color cd3131 --ring-wrong-color f14c4c
