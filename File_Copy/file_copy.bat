@echo off
copy nul output.txt
for /f "tokens=1* delims=:" %%a in ('findstr /n "^" file.txt') do call :do_line "%%b"
del file.txt
rename output.txt file.txt
goto :eof

:do_line
set line=%1
if {%line:String =%}=={%line%} (
  echo.%~1 >> output.txt
  goto :eof
)
echo string >> output.txt
