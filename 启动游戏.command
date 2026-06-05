#!/bin/bash
cd "$(dirname "$0")"
echo "正在启动游戏服务器..."
python3 -m http.server 8765 &
sleep 1
open http://localhost:8765
echo "游戏已打开！关闭这个窗口可以停止服务。"
read -p "按回车键停止服务..."
kill %1 2>/dev/null