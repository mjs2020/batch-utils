@echo off

rem This command lists the hard drives present on the system and writes them to 
wmic logicaldisk where drivetype=3 get deviceid, volumename > drives.txt


echo Select drive to index
echo ---------------
for /f "tokens=5*" %%l in ('2^>nul vol e:^|find /v /i "Volume Serial Number is"^|find /v /i "has no label"') do set elabel=%%m
echo 1) E: %elabel%
for /f "tokens=5*" %%l in ('2^>nul vol f:^|find /v /i "Volume Serial Number is"^|find /v /i "has no label"') do set flabel=%%m
echo 2) F: %flabel%
for /f "tokens=5*" %%l in ('2^>nul vol g:^|find /v /i "Volume Serial Number is"^|find /v /i "has no label"') do set glabel=%%m
echo 3) G: %glabel%
for /f "tokens=5*" %%l in ('2^>nul vol h:^|find /v /i "Volume Serial Number is"^|find /v /i "has no label"') do set hlabel=%%m
echo 4) H: %hlabel%
for /f "tokens=5*" %%l in ('2^>nul vol j:^|find /v /i "Volume Serial Number is"^|find /v /i "has no label"') do set jlabel=%%m
echo 5) J: %jlabel%
echo ---------------
echo.
set /p input=Which drive would you like to index? 
echo.
If "%input%"=="1" set filename=%elabel%.csv && dir E:\ /s/b > temp.txt && set vol=%elabel%
If "%input%"=="2" set filename=%flabel%.csv && dir F:\ /s/b > temp.txt && set vol=%flabel%
If "%input%"=="3" set filename=%glabel%.csv && dir G:\ /s/b > temp.txt && set vol=%glabel%
If "%input%"=="4" set filename=%hlabel%.csv && dir H:\ /s/b > temp.txt && set vol=%hlabel%
If "%input%"=="5" set filename=%jlabel%.csv && dir J:\ /s/b > temp.txt && set vol=%jlabel%

echo Name,Size,Folder,Drive > %filename%

echo Indexing %drive% %vol%...
FOR /f "tokens=*" %%I in (temp.txt) DO if NOT %%~zI==0 echo %%~nxI,%%~zI,%%~dpI,%vol% >> %filename%
del temp.txt
pause
