#!/bin/bash

# 启动 kitty 终端运行 cmatrix
fcitx5-remote -c
kitty --start-as fullscreen --title cmatrix -e bash -c "sleep 0.5; $(shuf -n 1 -e "cmatrix -C $(shuf -n 1 -e red green yellow blue magenta cyan white black) -b -u 4" nyancat)"&

# cmatrix 运行完或者锁屏解锁后再恢复
# fcitx5-remote -o

pid=$!  # 保存 kitty 进程 PID

# 等待 kitty 窗口出现
# while true; do
#     win_id=$(xdotool search --name "cmatrix" | tail -1)
#     [ -n "$win_id" ] && break
#     sleep 0.1
# done

# 使用 i3-msg 将窗口切换为全屏
# i3-msg "[id=$win_id] fullscreen enable"

# 启动锁屏程序
i3lock -n -c 00000000

# 解锁后关闭 kitty 窗口
kill "$pid"

