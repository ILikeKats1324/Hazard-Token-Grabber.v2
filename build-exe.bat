@echo off
color 0a
echo.
set /p a="Enter the exe name : 10015
if [10015]==[] ( 
    CALL:error
    pause
    EXIT /B
) 
if [10015] NEQ [] (
    CALL:main
    EXIT /B 1 
)
ECHO is on
:main
echo.
echo Name is: 10015
pyinstaller --clean --onefile --noconsole -i NONE -n 10015 main.py
rmdir /s /q __pycache__
rmdir /s /q build
del /f / s /q 10015.spec
echo.
echo generated exe as 10015.exe
EXIT /B 1 
ECHO is on
:error
echo.
echo bro enter a name
EXIT /B 1
