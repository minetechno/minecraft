# ==============================================================================
# Script PowerShell: Adicionar minecraft.test ao arquivo hosts
# ==============================================================================
#
# COMO EXECUTAR:
# 1. Clique com botão direito neste arquivo
# 2. Selecione "Executar com PowerShell"
# 3. Se aparecer erro de política, execute como administrador:
#    - Abra PowerShell como Administrador
#    - Execute: Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
#    - Execute novamente este script
# ==============================================================================

# Verificar se está rodando como Administrador
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
    Write-Host "ERRO: Este script precisa ser executado como Administrador!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Como executar como Administrador:" -ForegroundColor Yellow
    Write-Host "1. Clique com botao direito neste arquivo" -ForegroundColor Yellow
    Write-Host "2. Selecione 'Executar com PowerShell' como Administrador" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Pressione qualquer tecla para sair..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    exit
}

# Caminho do arquivo hosts
$hostsFile = "C:\Windows\System32\drivers\etc\hosts"

# Verificar se o arquivo existe
if (-not (Test-Path $hostsFile)) {
    Write-Host "ERRO: Arquivo hosts não encontrado!" -ForegroundColor Red
    exit
}

# Ler conteúdo atual do arquivo hosts
$hostsContent = Get-Content $hostsFile

# Verificar se a entrada já existe
$entryExists = $hostsContent | Select-String -Pattern "minecraft.test"

if ($entryExists) {
    Write-Host "A entrada 'minecraft.test' já existe no arquivo hosts!" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Conteúdo atual:" -ForegroundColor Cyan
    $hostsContent | Select-String -Pattern "minecraft.test"
} else {
    # Adicionar nova entrada
    $newEntry = "`n# Minecraft Crafts - Virtual Host`n127.0.0.1 minecraft.test"
    Add-Content -Path $hostsFile -Value $newEntry

    Write-Host "Sucesso! Entrada adicionada ao arquivo hosts:" -ForegroundColor Green
    Write-Host "127.0.0.1 minecraft.test" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Próximo passo:" -ForegroundColor Yellow
    Write-Host "Execute o script 'restart_wamp.bat' para reiniciar os serviços" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Pressione qualquer tecla para sair..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
