@echo off

cd /d "%~dp0"

echo ===============================
echo Queue Visualization Program
echo ===============================

echo Compiling...

g++ src\all_queue.cpp -o queue.exe -Igraphics -Lgraphics -lbgi -lgdi32 -lcomdlg32 -luuid -loleaut32 -lole32

if %errorlevel% neq 0 (
echo Compilation failed!
pause
exit /b
)

echo Running program...

queue.exe

pause