@echo off
for /f "delims=" %%i in ('dir /b /ad .jdk') do set JDKDIR=.jdk\%%i



start "secureauthapp" "%JAVA_HOME%\bin\java.exe" -jar target\secureauthapp-0.0.1-SNAPSHOT.jarset PATH=%JAVA_HOME%\bin;%PATH%nset JAVA_HOME=%CD%\%JDKDIR%