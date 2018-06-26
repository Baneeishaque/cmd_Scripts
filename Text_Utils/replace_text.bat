@echo off
set string=This is my string to work with.
set string=%string:work=play%
echo %string%

setlocal enabledelayedexpansion
set string=This is my string to work with.
set find=my string
set replace=your replacement
call set string=%%string:!find!=!replace!%%
echo %string%