set "url=http://mirror.internode.on.net/pub/test/10meg.test" 
set "output=%systemdrive%\10meg.test"
powershell Invoke-WebRequest -Uri "'%URL%'" -OutFile "'%OUTPUT%'"