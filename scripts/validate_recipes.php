<?php
/**
 * Script para validar receitas do projeto contra dados reais do Minecraft
 * Usa minecraft-data do PrismarineJS como fonte de verdade
 */

// Configurações
define('DB_HOST', 'localhost');
define('DB_NAME', 'minecraft_site');
define('DB_USER', 'root');
define('DB_PASS', '');

// Conectar ao banco
try {
    $pdo = new PDO(
        "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=utf8mb4",
        DB_USER,
        DB_PASS,
        [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
    );
} catch (PDOException $e) {
    die("Erro de conexão: " . $e->getMessage() . "\n");
}

echo "═══════════════════════════════════════════════════════════════\n";
echo "  VALIDAÇÃO DE RECEITAS - Minecraft Data vs Banco de Dados\n";
echo "═══════════════════════════════════════════════════════════════\n\n";

// Carregar dados do Minecraft
$minecraftItems = json_decode(file_get_contents(__DIR__ . '/../data/minecraft_items.json'), true);
$minecraftRecipes = json_decode(file_get_contents(__DIR__ . '/../data/minecraft_recipes.json'), true);

echo "✓ Dados do Minecraft carregados:\n";
echo "  - " . count($minecraftItems) . " itens\n";
echo "  - " . count($minecraftRecipes) . " receitas distintas\n\n";

// Criar mapeamento de ID -> Nome
$mcItemById = [];
$mcItemByName = [];
foreach ($minecraftItems as $item) {
    $mcItemById[$item['id']] = $item;
    $mcItemByName[$item['name']] = $item;
}

// Buscar itens do banco de dados
$stmt = $pdo->query("SELECT id, name, slug FROM items ORDER BY slug");
$dbItems = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo "✓ Itens do banco de dados: " . count($dbItems) . "\n\n";

// Criar mapeamento slug -> item do banco
$dbItemBySlug = [];
foreach ($dbItems as $item) {
    $dbItemBySlug[$item['slug']] = $item;
}

// Buscar receitas do banco
$stmt = $pdo->query("
    SELECT
        r.id as recipe_id,
        i.id as item_id,
        i.name as item_name,
        i.slug as item_slug,
        COUNT(rg.id) as grid_count
    FROM recipes r
    INNER JOIN items i ON r.item_id = i.id
    LEFT JOIN recipe_grid rg ON r.id = rg.recipe_id
    GROUP BY r.id, i.id, i.name, i.slug
    ORDER BY i.slug
");
$dbRecipes = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo "✓ Receitas do banco de dados: " . count($dbRecipes) . "\n\n";

echo "═══════════════════════════════════════════════════════════════\n";
echo "  ANÁLISE DE COBERTURA\n";
echo "═══════════════════════════════════════════════════════════════\n\n";

// Análise 1: Itens que existem no Minecraft mas não no banco
$missingItems = [];
foreach ($minecraftItems as $mcItem) {
    $slug = $mcItem['name'];
    if (!isset($dbItemBySlug[$slug])) {
        $missingItems[] = $mcItem;
    }
}

echo "📊 Itens faltando no banco de dados: " . count($missingItems) . "\n";
if (count($missingItems) > 0 && count($missingItems) <= 20) {
    foreach ($missingItems as $item) {
        echo "  - {$item['displayName']} ({$item['name']})\n";
    }
}
echo "\n";

// Análise 2: Receitas que existem no Minecraft mas não no banco
$missingRecipes = [];
$totalMinecraftRecipes = 0;

foreach ($minecraftRecipes as $itemId => $recipes) {
    $totalMinecraftRecipes += count($recipes);
    $mcItem = $mcItemById[$itemId] ?? null;
    if (!$mcItem) continue;

    $slug = $mcItem['name'];
    $dbItem = $dbItemBySlug[$slug] ?? null;

    if ($dbItem) {
        // Item existe no banco, verificar se tem receita
        $hasRecipe = false;
        foreach ($dbRecipes as $dbRecipe) {
            if ($dbRecipe['item_slug'] === $slug) {
                $hasRecipe = true;
                break;
            }
        }

        if (!$hasRecipe) {
            $missingRecipes[] = [
                'item' => $mcItem,
                'recipes_count' => count($recipes),
                'first_recipe' => $recipes[0]
            ];
        }
    }
}

echo "📊 Total de receitas no Minecraft: " . $totalMinecraftRecipes . "\n";
echo "📊 Receitas no banco de dados: " . count($dbRecipes) . "\n";
echo "📊 Itens com receita no Minecraft mas sem receita no banco: " . count($missingRecipes) . "\n\n";

if (count($missingRecipes) > 0) {
    echo "Exemplos de receitas faltando (primeiras 30):\n";
    $count = 0;
    foreach ($missingRecipes as $missing) {
        if ($count++ >= 30) break;
        echo "  - {$missing['item']['displayName']} ({$missing['item']['name']}) - {$missing['recipes_count']} variação(ões)\n";
    }
    echo "\n";
}

echo "═══════════════════════════════════════════════════════════════\n";
echo "  VALIDAÇÃO DE RECEITAS EXISTENTES\n";
echo "═══════════════════════════════════════════════════════════════\n\n";

// Análise 3: Verificar se as receitas do banco estão corretas
$incorrectRecipes = [];
$validatedRecipes = 0;

foreach ($dbRecipes as $dbRecipe) {
    $slug = $dbRecipe['item_slug'];
    $mcItem = $mcItemByName[$slug] ?? null;

    if (!$mcItem) {
        // Item não existe no Minecraft oficial
        continue;
    }

    $mcRecipes = $minecraftRecipes[$mcItem['id']] ?? [];
    if (empty($mcRecipes)) {
        // Receita no banco mas não no Minecraft
        $incorrectRecipes[] = [
            'type' => 'shouldnt_exist',
            'item' => $dbRecipe,
            'reason' => 'Item não tem receita no Minecraft oficial'
        ];
    } else {
        $validatedRecipes++;
    }
}

echo "✓ Receitas validadas: " . $validatedRecipes . "\n";
echo "⚠ Receitas incorretas/suspeitas: " . count($incorrectRecipes) . "\n\n";

if (count($incorrectRecipes) > 0) {
    echo "Receitas que não deveriam existir:\n";
    foreach ($incorrectRecipes as $incorrect) {
        echo "  - {$incorrect['item']['item_name']} ({$incorrect['item']['item_slug']})\n";
        echo "    Razão: {$incorrect['reason']}\n";
    }
    echo "\n";
}

echo "═══════════════════════════════════════════════════════════════\n";
echo "  RESUMO FINAL\n";
echo "═══════════════════════════════════════════════════════════════\n\n";

$coveragePercent = count($dbRecipes) > 0
    ? round((count($dbRecipes) / $totalMinecraftRecipes) * 100, 1)
    : 0;

echo "📈 Cobertura de receitas: {$coveragePercent}%\n";
echo "   ({$dbRecipes} de {$totalMinecraftRecipes} receitas implementadas)\n\n";

echo "🎯 Recomendações:\n";
if (count($missingRecipes) > 0) {
    echo "  1. Adicionar " . count($missingRecipes) . " receitas faltantes\n";
}
if (count($incorrectRecipes) > 0) {
    echo "  2. Revisar " . count($incorrectRecipes) . " receitas incorretas\n";
}
if (count($missingItems) > 0) {
    echo "  3. Adicionar " . count($missingItems) . " itens faltantes ao banco\n";
}

echo "\n═══════════════════════════════════════════════════════════════\n";
echo "  FIM DA VALIDAÇÃO\n";
echo "═══════════════════════════════════════════════════════════════\n";
