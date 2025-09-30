#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers"
DARK_DIR="$WALLPAPER_DIR/dark"

MODE=$(gsettings get org.gnome.desktop.interface color-scheme)

if [[ "$MODE" == "'prefer-dark'" ]] && [[ -d $DARK_DIR ]]; then
        DIR=$DARK_DIR
else
        DIR=$WALLPAPER_DIR
fi

while true; do
        RANDOM_WALLPAPER=$(find $DIR -type f \( -iname "*.jpg" -o -iname "*.png" \)|shuf -n1)

        if [[ -n "$RANDOM_WALLPAPER" ]]; then
                swww img $RANDOM_WALLPAPER
        fi
        sleep 600
done
