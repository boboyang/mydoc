rem you can press Ctrl+Pause to pause the whole process, if PC run slowly
@echo off
@echo Modified 2011.05.04
if exist \averell goto error

set parentpath=\\WS001808.AP.TIETO.COM\common_data\sdk
set sdkpath=%parentpath%\s60_rd_sdks\mcl\mcl_201116_hw79u_07
set srcpath=%parentpath%\sources\S60_mcl\mcl_201116_hw79u_07

call :unzipfunction %sdkpath%
call :unzipfunction %srcpath%
goto end

:unzipfunction
set log=unziping.log
setlocal enabledelayedexpansion
set /a step=0
set /a total=0
for %%i in (%~1\*.zip) do set /a total+=1

for %%i in (%~1\*.zip) do (
	set /a step+=1
	echo Action !step!/%total%: >>%log%
	echo Unzipping %%i... >>%log%
	%parentpath%\s60_rd_sdks\Autoscripts\7za.exe x -y "%%i"
)

if %step%==%total% echo completed: %~1 >>completed.log
endlocal
goto end

:error
echo Something went wrong - are you trying to run this script on drive r:?
:end

