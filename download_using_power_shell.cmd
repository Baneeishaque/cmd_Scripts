@ECHO OFF
set "url=https://avatars0.githubusercontent.com/u/6133009" 
set "output=%systemdrive%\10meg.test"
powershell Invoke-WebRequest -Uri "'%URL%'" -OutFile "'%OUTPUT%'"