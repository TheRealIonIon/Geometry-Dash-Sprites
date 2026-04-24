@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"

:: Pas 1: Redenumim fișierele -uhd.png în .png
for %%f in (*-uhd.png) do (
    set "nume=%%~nf"
    set "nume_nou=!nume:-uhd=!"
    ren "%%f" "!nume_nou!.png"
)

:: Pas 2: Redenumim fișierele -hd.png în .png
for %%f in (*-hd.png) do (
    set "nume=%%~nf"
    set "nume_nou=!nume:-hd=!"
    ren "%%f" "!nume_nou!.png"
)

echo Gata. Redenumirea a fost finalizată.
pause