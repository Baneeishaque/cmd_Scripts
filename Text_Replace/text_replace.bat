@echo off
setlocal disableDelayedExpansion

:Variables
set InputFile=config_same.txt
set OutputFile=config-new_same.txt
set "_strFind=#        forward-socks5   /               127.0.0.1:9050 ."
set "_strInsert=        forward-socks5   /               127.0.0.1:9050 ."

:Replace
>"%OutputFile%" (
  for /f "usebackq delims=" %%A in ("%InputFile%") do (
    if "%%A" equ "%_strFind%" (echo %_strInsert%) else (echo %%A)
  )
)

del config_same.txt
rename config-new_same.txt config_same.txt
