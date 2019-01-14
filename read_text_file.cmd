@echo off
for /F "usebackq tokens=*" %%A in ("read text file sample.txt") do echo %%A