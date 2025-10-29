@echo off
REM ==============================================================================
REM Script: Testar Configuracao do Apache
REM ==============================================================================

echo.
echo ================================================================================
echo    TESTE DE CONFIGURACAO DO APACHE
echo ================================================================================
echo.

cd /d "c:\wamp64\bin\apache\apache2.4.62.1\bin"

echo Testando sintaxe do Apache...
echo.

httpd.exe -t

echo.
echo ================================================================================

if %ERRORLEVEL% EQU 0 (
    echo.
    echo [OK] Configuracao do Apache esta CORRETA!
    echo.
    echo Proximo passo:
    echo Execute o script 'restart_wamp.bat' para reiniciar os servicos.
    echo.
) else (
    echo.
    echo [ERRO] Ha erros na configuracao do Apache!
    echo.
    echo Verifique os erros acima e corrija os arquivos de configuracao.
    echo.
)

pause
