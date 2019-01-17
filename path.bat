@echo off
::恢复原PATH变量值
set /P OEM=<C:\Users\%username%\Documents\cpath.txt
setx /M Path %OEM%
pause>nul