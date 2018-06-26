@echo off
for /f "tokens=*" %%G in ('dir /s /b /A:D /O:-N "%CD%"') do (
    echo %%G
)