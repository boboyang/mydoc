set virtualdir=J:

set srcproj="D:\Synergy_source\inc14br1\ME_Music_VC-e0714550"
set projname=ME_Music_VC
set buildlog=sbs.log.txt
call :CopyBuild

set srcproj="D:\Synergy_source\inc14br1\NMSCamesePlugin-e003sa33e07145502"
set projname=NMSCamesePlugin
call :CopyBuild

:CopyBuild
xcopy /y /R /I /E %srcproj%\%projname% %virtualdir%\%projname%
%virtualdir%
cd %virtualdir%\%projname%\group
call sbs -b bld.inf -k -c armv5_urel REALLYCLEAN >> %buildlog%
call sbs -b bld.inf -k -c armv5_urel >> %buildlog%