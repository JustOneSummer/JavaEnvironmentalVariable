@echo off
::请把java.bat和path.bat放入你Java的JDK的根目录下面
set JDK_PATH=%~dp0
echo "JDK路径-->"%JDK_PATH%
::设置"JAVA_HOME"值
setx /M JAVA_HOME "%JDK_PATH%"
::设置"CLASS_PATH"值
setx /M CLASS_PATH "%JDK_PATH%lib\dt.jar;%JDK_PATH%lib\tools.jar"
::获取系统的"PATH"变量值
set path =%PATH%
::备份PATH变量，保存在C:\Users\用户名\Documents下(文档里面)
echo %PATH% > C:\Users\%username%\Documents\cpath.txt
::拼接
set cpath="%path%;%JDK_PATH%bin;%JDK_PATH%jre\binC:Windows\system32"
::设置"Path"值
setx /M Path %cpath%
pause>nul