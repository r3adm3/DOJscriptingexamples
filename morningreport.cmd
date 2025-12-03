@echo off
REM morning_check.bat - Quick system health check

echo Starting morning system check...
echo ================================
echo.

echo.
echo Checking memory:
systeminfo | findstr /C:"Total Physical Memory" /C:"Available Physical Memory"

echo.
echo System uptime:
systeminfo | findstr /C:"System Boot Time"

echo.
echo Top 5 memory-consuming processes:
tasklist /NH | sort /R /+63

echo.
echo Check complete!
pause