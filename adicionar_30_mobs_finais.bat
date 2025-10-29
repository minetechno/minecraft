@echo off
chcp 65001 >nul
echo ==========================================
echo Adicionando 30 Mobs Finais
echo Expansão Completa do Banco de Mobs
echo ==========================================
echo.

REM Ajuste o caminho do MySQL se necessário
set MYSQL_PATH=C:\wamp64\bin\mysql\mysql8.0.31\bin\mysql.exe

REM Ajuste as credenciais se necessário
set DB_USER=gvrGRTge
set DB_PASS=da5433DFW#@$fv
set DB_NAME=minecraft_site

echo Executando SQL para adicionar 30 novos mobs...
echo.
"%MYSQL_PATH%" -u %DB_USER% -p%DB_PASS% %DB_NAME% < sql\add_30_more_mobs.sql

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ==========================================
    echo SUCESSO! 30 novos mobs adicionados!
    echo ==========================================
    echo.
    echo Total de mobs agora: 72 MOBS!
    echo.
    echo ==========================================
    echo NOVOS MOBS ADICIONADOS:
    echo ==========================================
    echo.
    echo PASSIVOS (9):
    echo - Coelho
    echo - Mula
    echo - Axolote
    echo - Lula Brilhante
    echo - Bacalhau
    echo - Salmão
    echo - Peixe Baiacu
    echo - Morcego
    echo - Strider
    echo.
    echo NEUTROS (3):
    echo - Aranha de Caverna
    echo - Cabra
    echo - Lhama
    echo.
    echo HOSTIS (18):
    echo - Husk (Zumbi do deserto)
    echo - Stray (Esqueleto gelado)
    echo - Traça (Silverfish)
    echo - Endermite
    echo - Shulker
    echo - Vex
    echo - Invocador (Evoker)
    echo - Cubo de Magma
    echo - Hoglin
    echo - Zoglin
    echo - Piglin Bruto
    echo - Esqueleto Wither
    echo - Coelho Assassino
    echo - Zumbi Bebê
    echo - Golem de Neve
    echo - Aldeão Zumbi
    echo - Aranha Jockey
    echo.
    echo ==========================================
    echo ESTATÍSTICAS FINAIS DO BANCO:
    echo ==========================================
    echo Total: 72 mobs
    echo Passivos: 22 mobs
    echo Neutros: 15 mobs
    echo Hostis: 31 mobs
    echo Bosses: 4 mobs
    echo.
    echo ==========================================
    echo COBERTURA COMPLETA DO MINECRAFT!
    echo ==========================================
) else (
    echo.
    echo ==========================================
    echo ERRO ao executar SQL!
    echo ==========================================
    echo.
    echo Verifique se:
    echo 1. O MySQL está rodando (WAMP online)
    echo 2. As credenciais estão corretas
    echo 3. O banco 'minecraft_site' existe
    echo 4. Os mobs anteriores já foram adicionados
)

echo.
pause
