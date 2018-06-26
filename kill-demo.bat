@ECHO OFF
taskkill /im calc.exe >NUL 2>NUL && (
  ECHO calc.exe was killed
) || (
  ECHO no process was killed
)