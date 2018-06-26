@setlocal enableextensions enabledelayedexpansion
@echo off
for /f "tokens=*" %%a in ('findstr "gradlew.bat" files.txt') do (
	echo %%a 
)