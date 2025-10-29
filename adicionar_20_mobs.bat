@echo off
echo ==========================================
echo Adicionando 20 Novos Mobs
echo ==========================================
echo.

REM Ajuste o caminho do MySQL se necessário
set MYSQL_PATH=C:\wamp64\bin\mysql\mysql8.0.31\bin\mysql.exe

REM Ajuste as credenciais se necessário
set DB_USER=gvrGRTge
set DB_PASS=da5433DFW#@$fv
set DB_NAME=minecraft_site

echo Executando SQL para adicionar 20 novos mobs...
"%MYSQL_PATH%" -u %DB_USER% -p%DB_PASS% %DB_NAME% < sql\add_more_mobs.sql

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ==========================================
    echo SUCESSO! 20 novos mobs adicionados!
    echo ==========================================
    echo.
    echo Total de mobs agora: 42
    echo.
    echo Novos mobs adicionados:
    echo.
    echo PASSIVOS (6):
    echo - Burro
    echo - Gato
    echo - Papagaio
    echo - Lula
    echo - Tartaruga
    echo - Peixe Tropical
    echo.
    echo NEUTROS (4):
    echo - Urso Polar
    echo - Panda
    echo - Raposa
    echo - Golfinho
    echo.
    echo HOSTIS (8):
    echo - Afogado
    echo - Guardiao
    echo - Blaze
    echo - Vindicador
    echo - Pillager
    echo - Ravager
    echo - Fantasma
    echo - Piglin
    echo.
    echo BOSSES (2):
    echo - Guardiao Anciao
    echo - Warden
    echo.
    echo ==========================================
) else (
    echo.
    echo ==========================================
    echo ERRO ao executar SQL!
    echo ==========================================
    echo.
    echo Verifique se:
    echo 1. O MySQL esta rodando (WAMP online)
    echo 2. As credenciais estao corretas
    echo 3. O banco 'minecraft_site' existe
)

echo.
pause
