#!/usr/bin/env bash

# 读取当前颜色模式
mode=$(gsettings get org.gnome.desktop.interface color-scheme)

# 去掉引号
mode=${mode//\'/}

# 判断并设置配色
if [[ "$mode" == "prefer-dark" ]]; then
    # 深色模式
    fuzzel --background-color 222222cc --text-color ffffffff --selection-color 555555aa
else
    # 亮色模式
    fuzzel --background-color ffffffcc --text-color 000000ff --selection-color ccccccaa
fi
