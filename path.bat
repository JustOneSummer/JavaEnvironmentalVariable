@echo off
::恢复原PATH变量值
set C_PATH=%~dp0
set /P OEM=<%C_PATH%cpath.txt
setx /M Path %OEM%
pause>nul
