@echo off

echo not found>notfound.txt
for /f %%i in (test.unziping.log) do (
    rem echo %%i
    find  "%%i" sdk_mcl_201116_hw79u_07.txt
    if errorlevel 1 echo %%i>>notfound.txt
)
