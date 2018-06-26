@echo off
setlocal EnableDelayedExpansion
set /A failed=0
set /A completed=0
set /A total=0

for /F "tokens=1" %%a in (test.txt) do (
 if !counter! EQU 3 (set /A failed=%%a)
 if !counter! EQU 9 (set /A completed=%%a)
 if !counter! EQU 6 (set /A total=%%a)

 set /A counter+=1
)

echo Failed: %failed%
echo Completed: %completed%
echo Total: %total%

set /A counter=0

set /A failedday=failedday+failed

if total NEQ 0 (set /A success=completed*100/total)
echo Success: %success%