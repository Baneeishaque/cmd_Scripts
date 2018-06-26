set path_string=%~dp0
ECHO %path_string%
set find_string=%~dp0
set replace_string=""
call set path_string=%%path_string:!find_string!=!replace_string!%%