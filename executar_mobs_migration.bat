@echo off
echo ==========================================
echo Executando Migration de Mobs
echo ==========================================
echo.

REM Ajuste o caminho do MySQL se necessário
set MYSQL_PATH=C:\wamp64\bin\mysql\mysql8.0.31\bin\mysql.exe

REM Ajuste as credenciais se necessário
set DB_USER=gvrGRTge
set DB_PASS=da5433DFW#@$fv
set DB_NAME=minecraft_site

echo Executando SQL migration...
"%MYSQL_PATH%" -u %DB_USER% -p%DB_PASS% %DB_NAME% < sql\mobs_migration.sql

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ==========================================
    echo Migration executada com sucesso!
    echo ==========================================
) else (
    echo.
    echo ==========================================
    echo ERRO ao executar migration!
    echo ==========================================
)

echo.
pause
