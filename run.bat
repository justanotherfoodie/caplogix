@echo off
title Caplogix LRP
echo.
echo  Starting Caplogix LRP Portfolio Manager...
echo.

set PYTHON=C:\Users\gongy\AppData\Local\Programs\Python\Python313\python.exe

"%PYTHON%" -m pip install flask --quiet --disable-pip-version-check

echo  Opening browser at http://127.0.0.1:5000
echo  Press Ctrl+C to stop the server.
echo.

"%PYTHON%" "%~dp0app.py"
pause
