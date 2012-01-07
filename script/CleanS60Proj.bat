set S60_SDK_path=C:\S60\devices\S60_5th_Edition_SDK_v1.0\epoc32
del %S60_SDK_path%\data\z\resource\apps\%1.rsc
del %S60_SDK_path%\data\z\private\10003a3f\apps\%1_reg.rsc
del %S60_SDK_path%\release\winscw\udeb\%1.exe
del %S60_SDK_path%\release\winscw\udeb\z\resource\apps\%1.mif
del %S60_SDK_path%\release\winscw\udeb\z\resource\apps\%1.rsc
del %S60_SDK_path%\release\winscw\udeb\z\private\10003a3f\apps\%1_reg.rsc
set S60_SDK_path=
