@echo off
set virtualdir=M:
set Do_Music=1
set pkgVer=14.2.5
set weekNo=14.1133.31

set Do_Camese=1
set CamesepkgVer=14.2.3
set CameseweekNo=14.11343.31

set prevdir=%CD:~0,2%

if %Do_Music%==1 call :DoMusic
if %Do_Camese%==1 call :DoCamese
goto end

:DoMusic
set destdir=%virtualdir%\\ME_Music_VC\\group
python auto.release.py %destdir% %pkgVer% %weekNo%
%virtualdir%
cd %destdir%\
call sbs -b bld.inf -k -c armv5_urel REALLYCLEAN
call sbs -b bld.inf -k -c armv5_urel
cd ..\sis
call MakeUDASIS.bat
call MakeIADSIS.bat

xcopy /y /R cwmschemehandler.sisx ..\conf\content\apps\
xcopy /y /R nmschemehandler.sisx ..\conf\content\apps\
xcopy /y /R OviMusic.sisx ..\conf\content\apps\
goto end


:DoCamese
set Camesedestdir=%virtualdir%\\NMSCamesePlugin\\group
python auto.release.py %Camesedestdir% %CamesepkgVer% %CameseweekNo%
goto end

:end
%prevdir%

rem commit synergy