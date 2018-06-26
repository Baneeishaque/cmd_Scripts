@ECHO OFF
for /f "tokens=* delims=" %%x in (project-files.list) do (
	::echo %%x
	findstr compileSdkVersion %%x
	findstr buildToolsVersion %%x
)