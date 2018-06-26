@ECHO OFF
SET choice=H
SET /P choice=External Network(press N) or Device Hotspot(default - just press Enter) : 
adb tcpip 5555
IF "%choice%"=="N" (
	SET /P IP=Enter Device IP : 
	adb connect %IP%:5555
) ELSE adb connect 192.168.43.1:5555
REM adb -s 192.168.43.1:5555 usb