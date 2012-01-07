rem 1: build
rem 2: analyze 1 file
rem 3: analyze 4 files
rem @echo off

set virtualdir=M:
set destdir=%virtualdir%\ME_Music_VC_ctc\group

%virtualdir%
cd %destdir%\

IF %1==1 (
    sbs reallyclean
    ctcwrap -i d sbs -c armv5_urel
    cd ..\sis
    MakeIADSIS.bat
) 
IF %1==2 (
    ctc2dat -i %virtualdir%\ctcdata.txt
    ctcpost -p profile.txt
    ctc2html -i profile.txt
) 
IF %1==3 (
    ctc2dat -o 1.dat -i %virtualdir%\ctcdata1.txt
    ctc2dat -o 2.dat -i %virtualdir%\ctcdata2.txt
    ctc2dat -o 3.dat -i %virtualdir%\ctcdata3.txt
    ctc2dat -o 4.dat -i %virtualdir%\ctcdata4.txt
    ctcpost 1.dat 2.dat 3.dat 4.dat -a MON.dat
    ctcpost -p profile.txt 
    ctc2html -i profile.txt -nsb	
)
