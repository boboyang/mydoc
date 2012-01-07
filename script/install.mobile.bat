
rem set sdk root dir
set sdkdir=M:

copy d:\test.cov "My Computer WW019986\N8-00\Mass memory"
rem install logger
D:\MustiEmu\TraceManager_MCL.sisx

D:\Stifui.sisx

cd %sdkdir%\mcl_UT\ME_Music_VC\ovimusicdev\sis
MakeUpgradeSIS.bat
ovimusicupgradedebug.sisx

cd %sdkdir%\OviMusicDownloadEngineTestModule\group
MakeUpgradeSIS.bat
OviMusicDownloadEngineTestModule.sisx

