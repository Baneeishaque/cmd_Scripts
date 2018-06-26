@echo off
SET TEXT=Hello World
SET SUBSTRING=%TEXT:~3,5%
ECHO %SUBSTRING%

SET _startchar=2
SET _length=1
SET _donor=884777
::CALL SET _substring=%%_donor:~%_startchar%,%_length%%%
CALL SET _substring=%%_donor:~%_startchar%%%
ECHO %_substring% 