@setLocal EnableDelayedExpansion
@echo off
set variable1=this is variable1
set variable2=is
set variable3=test

if not "x!variable1:%variable2%=!"=="x%variable1%" (
    echo YES
) else (
    echo NO
)

if not "x!variable1:%variable3%=!"=="x%variable1%" (
    echo YES
) else (
    echo NO
)

endlocal