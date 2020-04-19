@Echo Off 

Set choice=H
Set /P choice=External Network(press N) or Device Hotspot(default - just press Enter) : 

Set adb_kill=N
Set /P adb_kill=Kill adb (Y/N - default is No) : 
if "%adb_kill%"=="Y" (

    adb kill-server
    
 )

adb tcpip 5555

If "%choice%"=="N" (

    Set /P ip=Enter Device IP : 

 ) Else (
 
    adb connect 192.168.43.1:5555
    REM adb -s 192.168.43.1:5555 usb
    
 )

If "%choice%"=="N" (
 
    :: Echo %ip%
    adb connect %ip%:5555
    REM adb -s %ip%:5555 usb
    
 )
 
:: Pause 