@echo off
REM ==============================================================================
REM Script: Executar add_hosts_entry.ps1 como Administrador
REM ==============================================================================

echo.
echo ================================================================================
echo    CONFIGURAR VIRTUAL HOST - minecraft.test
echo ================================================================================
echo.
echo Este script vai adicionar a entrada "minecraft.test" no arquivo hosts.
echo.
echo IMPORTANTE: Vai abrir uma janela solicitando permissoes de administrador.
echo             Clique em "Sim" quando aparecer.
echo.
pause

REM Executar PowerShell como administrador
powershell -Command "Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%~dp0validate_icons.ps1\"' -Verb RunAs"

echo.
echo Se a janela do PowerShell fechou rapidamente, a operacao foi concluida.
echo.
pause
