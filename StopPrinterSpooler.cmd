@echo off
:: Script di pulizia della coda di stampa 

:: Verifica dei privilegi di amministratore
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if %errorlevel% neq 0 (
    echo Richiesta di elevazione dei privilegi in corso...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Arresto del servizio Spooler
net stop spooler
if %errorlevel% neq 0 (
    echo Impossibile arrestare il servizio Spooler.
    pause
    exit /b 1
)

:: Rimozione dei file della coda di stampa
del /Q /F /S "%systemroot%\System32\Spool\Printers\*.*"

:: Riavvio del servizio Spooler
net start spooler
if %errorlevel% neq 0 (
    echo Errore durante il riavvio del servizio Spooler.
    pause
    exit /b 1
)

:: Richiesta di premere un tasto per chiudere
echo Operazione completata. Premi un tasto per uscire.
pause >nul