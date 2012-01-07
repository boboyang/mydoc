@echo off
rem this script aims to make as schedule task to unzip sdk task 
rem from R:, avoiding cpu resource when you're using computer
rem it also can schedule to remove old sdk, by calling rdsdk.bat
rem author:wzg
rem modify below parameters
set RunUser=AP\wanggzhi
set RunPassword=Whille08
set virtualdir=J:
set binname=sdk_111_201132_hw79u_07.cmd
set sdkname=111wk32
set Scheduletime=19:00:00
set RemoveoldSdkTime=23:59:00

set destdir=d:\%sdkname%
md %destdir%

set parentpath=\\WS001808.AP.TIETO.COM\common_data\sdk
set sdkbin=%parentpath%\s60_rd_sdks\bin

copy %sdkbin%\%binname% %destdir%\

subst /D %virtualdir% 
subst %virtualdir% %destdir%

@echo schtasks unzip sdk
schtasks /create /RU %RunUser% /RP %RunPassword% /SC ONCE /TN %sdkname% /TR %destdir%\%binname% /ST %Scheduletime%

@echo schtasks remove old sdk
schtasks /create /RU %RunUser% /RP %RunPassword% /SC ONCE /TN rdsdk /TR rdsdk.bat /ST %RemoveoldSdkTime%

