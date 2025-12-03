@echo off

set BACKUP_FOLDER=C:\Users\Daed\BACKUP

if exist %BACKUP_FOLDER% (
   echo msg - folder exists, do nothing
) else (
   echo msg - folder doesn't exist, creating...
   mkdir %BACKUP_FOLDER%
)
