@echo off
call REGIMPORT.bat
pause
call WSEARCH.bat
pause
call TELEMDISABLE.bat
echo Activating %TEMP% Cleaner

del /s /f /q c:\windows\temp\*.*

rd /s /q c:\windows\temp

md c:\windows\temp

del /s /f /q C:\WINDOWS\Prefetch

del /s /f /q %temp%\*.*

rd /s /q %temp%

md %temp%
echo Done!
pause