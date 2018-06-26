@echo off
setlocal enabledelayedexpansion
::set S=/name1/name2/name3
set "S=D:\DK-HP-PA-2000AR\Projects\Apk_Decompiler\Whose Phone Number In Contacts 1.3_4.apk"
set I=0
set L=-1
:l
if "!S:~%I%,1!"=="" goto ld
::if "!S:~%I%,1!"=="/" set L=%I%
if "!S:~%I%,1!"=="\" set L=%I%
set /a I+=1
goto l
:ld
echo Last Index of \ : %L%
SET /A L+=1
::SET SUBSTRING=%S:~0,12%
CALL SET SUBSTRING=%%S:~%L%%%
ECHO %SUBSTRING%