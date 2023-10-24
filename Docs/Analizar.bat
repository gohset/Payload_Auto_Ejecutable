[Autorun]
@ECHO OFF
:MENU
cd ../../../../..
TITLE SETA77 USB-PC
CLS
ECHO  IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIlllll
ECHO                                    SETA 77
ECHO  Este progama permite realizar una manteminiento previo a una memiria
ECHO  USB, con este progama se puede realizar lo siguiente: 
ECHO IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIlll
ECHO.
ECHO ----------------------------- PC --------------------------------
ECHO 1. VERSION DEL SISTEMA ...
ECHO 2. VER FECHA ACTUAL ... 
ECHO 3. PROPIEDADES DEL EQUIPO ... 
ECHO 4. TAREAS EN EJECUCION ... 
ECHO.
ECHO ------------------------ USB ---------------------------------
ECHO 5. ANALIZAR USB ...
ECHO 6. FROMATEAR USB ...
ECHO 7. SALIR ... 
ECHO.

SET /p nu= Ingrese una opcion: 
IF %nu%==1 GOTO VER
IF %nu%==2 GOTO DATE
IF %nu%==3 GOTO SYSTEM
IF %nu%==4 GOTO TASK
IF %nu%==5 GOTO USBANA
IF %nu%==6 GOTO  FORMAT
IF %nu% >6 ELSE GOTO ERROR

:VER
CLS
TITLE  VERSION DE SISTEMA ...
VER
ECHO Precione una tecla para conticuar ...>NUL
PAUSE 
GOTO :MENU


:DATE
TITLE MOSTRAR FECHA ACTUAL ...
CLS
DATE
ECHO Precione una tecla para conticuar ...>NUL
PAUSE
GOTO :MENU

:SYSTEM
CLS
TITLE PROPIEDADES DE EQUIPO ...
SYSTEMINFO
ECHO Precione una tecla para conticuar ...>NUL
PAUSE
GOTO :MENU

:TASK
CLS
TITLE TAREAS EN EJECUCION
TASKLIST
ECHO Precione una tecla para conticuar ...>NUL
PAUSE
GOTO :MENU

:USBANA
TITLE ANALIZAR USB

ECHO 1. ATTRIB -R -H -S /D /S
ECHO 2. ATTRIB -R -H -S /D /S *.*
ECHO 3. CHKDSK
ECHO.
SET /p nu2= Elija su opcion :
IF %nu2%==1 GOTO AT1
IF %nu2%==2 GOTO AT2
IF %nu2%==3 GOTO CHK

:AT1
CLS
TITLE LIMPIANDO Y RECUPERANDO INFORMACION DE USB
SET /p UNI= Ingrese la letra de la unidad ejp. f,g,h:
C:
cd users
ECHO %UNI%:
%UNI%:
ATTRIB -R -H -S /D /S
mkdir FOTOS77
C:
cd Users
cd Usuario
COPY Pictures %UNI%:\FOTOS77

ECHO Precione una tecla para conticuar ...>NUL
PAUSE
GOTO :MENU





