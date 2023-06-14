@echo off

Del C:\CESDE\Show.txt

If exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Enviar a OneNote.lnk" (Goto one) Else (Goto 01)

:one
Del "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Enviar a OneNote.lnk" /S /Q /F
Goto 01

:01
cd %userprofile%\AppData\Roaming
dir /ah /b> C:\CESDE\Roamingh.txt

for /f %%i in ("C:\CESDE\Roamingh.txt") do set size=%%~zi
if %size% gtr 0 (goto open) else (goto no)

:open
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
Start %userprofile%\AppData\Roaming
Del C:\CESDE\Roamingh.txt
Rem RunDll32.exe shell32.dll,Options_RunDLL 7
Goto Uasesor

:no
Del C:\CESDE\Roamingh.txt
Goto Uasesor

:Uasesor
choice /c a /d a /t 1 /n
cd C:\Users\Asesor\AppData\Roaming
dir /ah /b> C:\CESDE\Roamingh.txt

for /f %%i in ("C:\CESDE\Roamingh.txt") do set size=%%~zi
if %size% gtr 0 (goto open1) else (goto no1)

:open1
if exist C:\CESDE\Show.txt (Goto st1) Else (Goto st2)

:st1
Start C:\Users\Asesor\AppData\Roaming
Del C:\CESDE\Roamingh.txt
Goto Share

:st2
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
Start C:\Users\Asesor\AppData\Roaming
Del C:\CESDE\Roamingh.txt
Goto Share

:no1
Del C:\CESDE\Roamingh.txt
Goto Share

:Share
If exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\*.lnk" (Goto open2) Else (Goto Iniciousuario)

:open2
if exist C:\CESDE\Show.txt (Goto st3) Else (Goto st4)

:st3
Call "C:\CESDE\Ubicaciones\Inicioshare.lnk"
Goto Iniciousuario

:st4
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
Call "C:\CESDE\Ubicaciones\Inicioshare.lnk"
Goto Iniciousuario


:Iniciousuario
If exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*.lnk" (Goto open3) Else (Goto Inicioasesor)

:open3
if exist C:\CESDE\Show.txt (Goto st5) Else (Goto st6)

:st5
Call "C:\CESDE\Ubicaciones\Iniciousuario.lnk"
Goto Inicioasesor

:st6
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
Call "C:\CESDE\Ubicaciones\Iniciousuario.lnk"
Goto Inicioasesor

:Inicioasesor
If exist "C:\Users\Asesor\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*.lnk" (Goto open4) Else (Goto Program)

:open4
if exist C:\CESDE\Show.txt (Goto st7) Else (Goto st8)

:st7
Call "C:\CESDE\Ubicaciones\Inicioasesor.lnk"
Goto Program

:st8
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
Call "C:\CESDE\Ubicaciones\Inicioasesor.lnk"
Goto Program

:Program
If exist C:\ProgramData\*.exe (Goto open5) Else (Goto vbs1)

:open5
if exist C:\CESDE\Show.txt (Goto st9) Else (Goto st10)

:st9
Start C:\ProgramData
Goto vbs1

:st10
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
Start C:\ProgramData
Goto vbs1

:vbs1
If exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\*.vbs" (Goto open6) Else (Goto vbs2)

:open6
if exist C:\CESDE\Show.txt (Goto st11) Else (Goto st12)

:st11
Call "C:\CESDE\Ubicaciones\Inicioshare.lnk"
Goto vbs2

:st12
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
Call "C:\CESDE\Ubicaciones\Inicioshare.lnk"
Goto vbs2

:vbs2
If exist "C:\Users\Asesor\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*.vbs" (Goto open7) Else (Goto vbs3)

:open7
if exist C:\CESDE\Show.txt (Goto st13) Else (Goto st14)

:st13
Call "C:\CESDE\Ubicaciones\Inicioasesor.lnk"
Goto vbs3

:st14
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
Call "C:\CESDE\Ubicaciones\Inicioasesor.lnk"
Goto vbs3

:vbs3
If exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*.vbs" (Goto open8) Else (Goto wsf)

:open8
if exist C:\CESDE\Show.txt (Goto st15) Else (Goto st16)

:st15
Call "C:\CESDE\Ubicaciones\Iniciousuario.lnk"
Goto wsf

:st16
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
Call "C:\CESDE\Ubicaciones\Iniciousuario.lnk"
Goto wsf

:wsf
If exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\*.wsf" (Goto open9) Else (Goto open10)

:open9
if exist C:\CESDE\Show.txt (Goto st17) Else (Goto st18)

:st17
Call "C:\CESDE\Ubicaciones\Inicioshare.lnk"
Goto open10

:st18
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
Call "C:\CESDE\Ubicaciones\Inicioshare.lnk"
Goto open10

:open10
If exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*.wsf" (Goto open11) Else (Goto open12)

:open11
if exist C:\CESDE\Show.txt (Goto st19) Else (Goto st20)

:st19
Call "C:\CESDE\Ubicaciones\Iniciousuario.lnk"
Goto open12

:st20
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
Call "C:\CESDE\Ubicaciones\Iniciousuario.lnk"
Goto open12

:open12
If exist "C:\Users\Asesor\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*.wsf" (Goto open13) Else (Goto Ground1)

:open13
if exist C:\CESDE\Show.txt (Goto st21) Else (Goto st22)

:st21
Call "C:\CESDE\Ubicaciones\Inicioasesor.lnk"
Goto Ground1

:st22
Start C:\CESDE\Ubicaciones\Show.vbs
Call "C:\CESDE\Ubicaciones\Inicioasesor.lnk"
Goto Ground1

:Ground1
if exist "%userprofile%\AppData\Roaming\*.exe" (Goto open15) Else (Goto open16)

:open15
if exist C:\CESDE\Show.txt (Goto st23) Else (Goto st24)

:st23
start %userprofile%\AppData\Roaming
Goto open16

:st24
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
start %userprofile%\AppData\Roaming
Goto open16

:open16
if exist "C:\Users\Asesor\AppData\Roaming\*.exe" (Goto open17) Else (Goto open18)

:open17
if exist C:\CESDE\Show.txt (Goto st25) Else (Goto st26)

:st25
start C:\Users\Asesor\AppData\Roaming
Goto open18

:st26
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
start C:\Users\Asesor\AppData\Roaming
Goto open18

:open18
if exist "%userprofile%\AppData\Roaming\Microsoft Office" (Goto open19) Else (Goto open20)

:open19
if exist C:\CESDE\Show.txt (Goto st27) Else (Goto st28)

:st27
start %userprofile%\AppData\Roaming
Goto open20

:st28
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
start %userprofile%\AppData\Roaming
Goto open20


:open20
if exist "C:\Users\Asesor\AppData\Roaming\Microsoft Office" (Goto open21) Else (Goto open22)

:open21
if exist C:\CESDE\Show.txt (Goto st29) Else (Goto st30)

:st29
start C:\Users\Asesor\AppData\Roaming
Goto open22

:st30
echo >> C:\CESDE\Show.txt
Start C:\CESDE\Ubicaciones\Show.vbs
start C:\Users\Asesor\AppData\Roaming
Goto open22

:open22
if exist C:\CESDE\Show.txt (Goto Fin1) Else (Goto Fin2)

:Fin1
Del C:\CESDE\Show.txt
Pause
Start C:\CESDE\Ubicaciones\Show.vbs
Exit

:Fin2
Exit
