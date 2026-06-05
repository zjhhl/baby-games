@echo off
cd /d %~dp0
echo 正在启动游戏服务器...
start /b python -m http.server 8765
timeout /t 2 /nobreak >nul
start http://localhost:8765
echo 游戏已打开！关闭这个窗口可以停止服务。
pause
taskkill /f /im python.exe /fi "windowtitle eq *http.server*" 2>nul