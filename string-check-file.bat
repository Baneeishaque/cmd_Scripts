@ECHO OFF
>nul find "compileSdkVersion" "D:\DK-HP-PA-2000AR\Laboratory\Android_Studio\AboutLibraries\build.gradle" && (
  echo "Hello World" was found.
) || (
  echo "Hello World" was NOT found.
)

>nul findstr /c:"Hello World" log.txt && (
  echo "Hello World" was found.
) || (
  echo "Hello World" was NOT found.
)