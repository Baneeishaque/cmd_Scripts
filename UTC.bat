@echo off
for /F "skip=1 tokens=3,4,7" %%A in ('%SystemRoot%\System32\wbem\wmic.exe path win32_utctime get') do (
    set "Hour=0%%A"
    set "Minute=0%%B"
    set "Second=0%%C"
    goto BuildTime
)

:BuildTime
set "TimeUTC=%Hour:~-2%:%Minute:~-2%:%Second:~-2%"
echo UTC time is: %TimeUTC%