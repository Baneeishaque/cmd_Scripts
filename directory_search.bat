@ECHO OFF
for /d /r "E:\DK-HP-PA-2000AR\Laboratory\Android_Studio\Lottery" %%a in (build\) do if exist "%%a" echo Full Path : "%%a"