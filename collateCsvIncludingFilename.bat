@echo off
echo Compiling files...

break > merged.csv

for /F "tokens=1,* delims=:" %%f in ('findstr /R "." *.csv') do echo %%f,%%g >> merged.csv

rem for %%f in (*.csv) do for /F "tokens=*" %%g in ('type "%%f"') do echo %%g,%%f >> merged.csv
rem for /f "delims=" %%F in ('dir /b *.csv') do for /f "delims=" %%l in (%%~nxF) do echo %%~nxF,%%l >> all.csv
rem for /f "delims=" %%F in ('dir /b *.csv') do @echo "%%~nxF"
pause
