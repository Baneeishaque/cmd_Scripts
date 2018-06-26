@echo off
echo %0
echo %~dp0
echo %~f0
echo %~d0
echo %~p0
for %%a in (.) do set currentfolder=%%~na
echo %currentfolder%