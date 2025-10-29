@echo off
REM ==============================================================================
REM Script: Reiniciar Servicos do WAMP
REM ==============================================================================

echo.
echo ================================================================================
echo    REINICIAR SERVICOS DO WAMP
echo ================================================================================
echo.

echo Parando servicos do Apache...
net stop wampapache64

timeout /t 2 /nobreak >nul

echo.
echo Iniciando servicos do Apache...
net start wampapache64

echo.
echo Limpando cache DNS do Windows...
ipconfig /flushdns

echo.
echo ================================================================================
echo [OK] Servicos reiniciados com sucesso!
echo ================================================================================
echo.
echo Agora voce pode testar:
echo.
echo    http://minecraft.test
echo.
echo Se ainda nao funcionar:
echo 1. Verifique se executou o script 'add_hosts_entry.ps1' como Administrador
echo 2. Tente limpar o cache do navegador (Ctrl+Shift+Delete)
echo 3. Use o modo anonimo do navegador
echo.

pause
