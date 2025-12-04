@echo off
setlocal ENABLEEXTENSIONS
pushd "%~dp0"
set PORT=8000

where python >nul 2>&1
if errorlevel 1 (
  echo Python is required to launch the local server. Please install Python 3 and try again.
  pause
  exit /b 1
)

:: Start python -m http.server in background
start "SchedulerLocalServer" /B python -m http.server %PORT% >nul 2>&1
:: Give the server a moment to start
ping 127.0.0.1 -n 2 >nul

start "" http://localhost:%PORT%/v1.14.html

echo Press any key to stop the local server...
pause >nul
:: Stop the background python server
for /f "tokens=2" %%p in ('tasklist /fi "imagename eq python.exe" /fi "services eq n/a" /fo csv ^| findstr "http.server"') do taskkill /PID %%~p /F >nul 2>&1
popd
endlocal
