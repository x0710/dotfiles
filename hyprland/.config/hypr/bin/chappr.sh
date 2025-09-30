#!/usr/bin/env bash

# 切换桌面深色/亮色模式

CURRENT_MODE=$(gsettings get org.gnome.desktop.interface color-scheme)

if [[ $CURRENT_MODE == "'prefer-light'" ]]; then
        gsettings set org.gnome.desktop.interface color-scheme prefer-dark
elif [[ $CURRENT_MODE == "'prefer-dark'" ]]; then
        gsettings set org.gnome.desktop.interface color-scheme prefer-light
else
        gsettings set org.gnome.desktop.interface color-scheme prefer-light
fi
