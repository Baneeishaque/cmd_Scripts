@ECHO OFF
SETLOCAL
set file=C:\Users\l72rugschiri\Desktop\fs.cfg
FOR %%i IN ("%file%") DO (
	ECHO filedrive=%%~di
	ECHO filepath=%%~pi
	ECHO filename=%%~ni
	ECHO fileextension=%%~xi
)