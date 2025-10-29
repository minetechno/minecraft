# ==============================================================================
# Script PowerShell: Validar e Otimizar Ícones SVG
# ==============================================================================
#
# COMO EXECUTAR:
# 1. Abra PowerShell
# 2. Navegue até a pasta dos ícones: cd c:\wamp64\www\minecraft\assets\icons
# 3. Execute: .\validate_icons.ps1
# ==============================================================================

Write-Host "================================================================================" -ForegroundColor Cyan
Write-Host "  VALIDAÇÃO E OTIMIZAÇÃO DE ÍCONES SVG" -ForegroundColor Cyan
Write-Host "================================================================================" -ForegroundColor Cyan
Write-Host ""

$iconPath = "c:\wamp64\www\minecraft\assets\icons"
$icons = Get-ChildItem -Path $iconPath -Filter "*.svg"

$totalIcons = $icons.Count
$validIcons = 0
$invalidIcons = 0
$missingAriaLabel = 0
$tooLarge = 0

Write-Host "Total de ícones encontrados: $totalIcons" -ForegroundColor White
Write-Host ""

Write-Host "Analisando ícones..." -ForegroundColor Yellow
Write-Host ""

foreach ($icon in $icons) {
    $content = Get-Content $icon.FullName -Raw
    $isValid = $true
    $warnings = @()

    # Verificar se é um SVG válido
    if ($content -notmatch '<svg') {
        $invalidIcons++
        $isValid = $false
        Write-Host "[ERRO] $($icon.Name) - Não é um arquivo SVG válido" -ForegroundColor Red
    }

    # Verificar viewBox
    if ($content -notmatch 'viewBox="0 0 16 16"') {
        $warnings += "ViewBox não é 16x16"
    }

    # Verificar aria-label
    if ($content -notmatch 'aria-label') {
        $missingAriaLabel++
        $warnings += "Falta aria-label (acessibilidade)"
    }

    # Verificar tamanho do arquivo
    $size = $icon.Length
    if ($size -gt 2048) {
        $tooLarge++
        $warnings += "Arquivo grande (${size} bytes)"
    }

    # Verificar xmlns
    if ($content -notmatch 'xmlns="http://www.w3.org/2000/svg"') {
        $warnings += "Falta xmlns"
    }

    # Exibir warnings
    if ($warnings.Count -gt 0 -and $isValid) {
        Write-Host "[AVISO] $($icon.Name)" -ForegroundColor Yellow
        foreach ($warning in $warnings) {
            Write-Host "  - $warning" -ForegroundColor Yellow
        }
    }

    if ($isValid) {
        $validIcons++
    }
}

Write-Host ""
Write-Host "================================================================================" -ForegroundColor Cyan
Write-Host "  RESULTADO DA VALIDAÇÃO" -ForegroundColor Cyan
Write-Host "================================================================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "✓ Ícones válidos: $validIcons / $totalIcons" -ForegroundColor Green
if ($invalidIcons -gt 0) {
    Write-Host "✗ Ícones inválidos: $invalidIcons" -ForegroundColor Red
}
if ($missingAriaLabel -gt 0) {
    Write-Host "⚠ Sem aria-label: $missingAriaLabel" -ForegroundColor Yellow
}
if ($tooLarge -gt 0) {
    Write-Host "⚠ Arquivos grandes: $tooLarge" -ForegroundColor Yellow
}

Write-Host ""

# Calcular tamanho total
$totalSize = ($icons | Measure-Object -Property Length -Sum).Sum
$avgSize = [math]::Round($totalSize / $totalIcons, 2)

Write-Host "Tamanho total: $([math]::Round($totalSize / 1024, 2)) KB" -ForegroundColor White
Write-Host "Tamanho médio: $avgSize bytes" -ForegroundColor White
Write-Host ""

# Sugerir otimizações
Write-Host "================================================================================" -ForegroundColor Cyan
Write-Host "  SUGESTÕES DE OTIMIZAÇÃO" -ForegroundColor Cyan
Write-Host "================================================================================" -ForegroundColor Cyan
Write-Host ""

if ($missingAriaLabel -gt 0) {
    Write-Host "1. Adicionar aria-label em $missingAriaLabel ícones" -ForegroundColor Yellow
    Write-Host "   Exemplo: <svg ... role='img' aria-label='Nome do Item'>" -ForegroundColor Gray
    Write-Host ""
}

if ($tooLarge -gt 0) {
    Write-Host "2. Otimizar $tooLarge ícones grandes" -ForegroundColor Yellow
    Write-Host "   - Remover espaços em branco desnecessários" -ForegroundColor Gray
    Write-Host "   - Simplificar formas quando possível" -ForegroundColor Gray
    Write-Host ""
}

Write-Host "3. Manter padrão consistente:" -ForegroundColor Green
Write-Host "   - viewBox='0 0 16 16'" -ForegroundColor Gray
Write-Host "   - Pixel art com <rect> elements" -ForegroundColor Gray
Write-Host "   - Comentários descritivos" -ForegroundColor Gray
Write-Host ""

Write-Host "================================================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Pressione qualquer tecla para sair..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
