@setlocal enableextensions enabledelayedexpansion
@echo off
set /P str1=Enter the string to check for substring abc : 
if not x%str1:abc=%==x%str1% echo It contains abc
endlocal