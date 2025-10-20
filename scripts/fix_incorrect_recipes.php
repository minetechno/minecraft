<?php
/**
 * Script para corrigir automaticamente receitas incorretas
 * Deleta receitas erradas e recria com dados oficiais
 */

// Configurações
define('DB_HOST', 'localhost');
define('DB_NAME', 'minecraft_site');
define('DB_USER', 'root');
define('DB_PASS', '');

$incorrectSlugs = [
    'arrow', 'beacon', 'black_carpet', 'black_wool', 'blue_carpet', 'blue_wool', 'book', 'bookshelf',
    'brewing_stand', 'brown_carpet', 'brown_wool', 'chest', 'chiseled_quartz_block', 'chiseled_sandstone',
    'comparator', 'crafting_table', 'cyan_carpet', 'cyan_wool', 'diamond_boots', 'diamond_shovel', 'diamond_sword',
    'golden_boots', 'golden_carrot', 'golden_shovel', 'golden_sword', 'gray_carpet', 'gray_wool',
    'green_carpet', 'green_wool', 'iron_boots', 'iron_shovel', 'iron_sword', 'jukebox', 'lead',
    'leather_boots', 'lever', 'light_blue_carpet', 'light_blue_wool', 'light_gray_carpet', 'light_gray_wool',
    'lime_carpet', 'lime_wool', 'loom', 'magenta_carpet', 'magenta_wool', 'melon', 'minecart',
    'mossy_cobblestone', 'mossy_stone_bricks', 'note_block', 'orange_carpet', 'orange_wool', 'painting',
    'pink_carpet', 'pink_wool', 'piston', 'purple_carpet', 'purple_wool', 'quartz_pillar', 'quartz_slab',
    'red_carpet', 'red_wool', 'redstone_torch', 'repeater', 'shield', 'stone_bricks', 'stone_button',
    'stone_pressure_plate', 'stone_shovel', 'stone_slab', 'stone_stairs', 'stone_sword', 'torch',
    'white_carpet', 'wooden_axe', 'wooden_hoe', 'wooden_pickaxe', 'wooden_shovel', 'wooden_sword',
    'yellow_carpet', 'yellow_wool'
];

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
echo "  CORREÇÃO AUTOMÁTICA DE RECEITAS INCORRETAS\n";
echo "═══════════════════════════════════════════════════════════════\n\n";

// Carregar dados do Minecraft
$minecraftItems = json_decode(file_get_contents(__DIR__ . '/../data/minecraft_items.json'), true);
$minecraftRecipes = json_decode(file_get_contents(__DIR__ . '/../data/minecraft_recipes.json'), true);

// Criar mapeamentos
$mcItemById = [];
$mcItemByName = [];
foreach ($minecraftItems as $item) {
    $mcItemById[$item['id']] = $item;
    $mcItemByName[$item['name']] = $item;
}

// Buscar itens do banco
$stmt = $pdo->query("SELECT id, name, slug FROM items");
$dbItems = $stmt->fetchAll(PDO::FETCH_ASSOC);

$dbItemBySlug = [];
foreach ($dbItems as $item) {
    $dbItemBySlug[$item['slug']] = $item;
}

echo "✓ Receitas a corrigir: " . count($incorrectSlugs) . "\n\n";

// Gerar SQL de correção
$sqlOutput = "-- ============================================================================\n";
$sqlOutput .= "-- CORREÇÃO AUTOMÁTICA DE RECEITAS INCORRETAS\n";
$sqlOutput .= "-- Total: " . count($incorrectSlugs) . " receitas\n";
$sqlOutput .= "-- Data: " . date('Y-m-d H:i:s') . "\n";
$sqlOutput .= "-- ============================================================================\n\n";
$sqlOutput .= "SET NAMES utf8mb4;\n";
$sqlOutput .= "SET CHARACTER SET utf8mb4;\n\n";

$sqlOutput .= "-- DELETAR RECEITAS INCORRETAS\n";
foreach ($incorrectSlugs as $slug) {
    $sqlOutput .= "DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = '{$slug}';\n";
    $sqlOutput .= "DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = '{$slug}';\n";
    $sqlOutput .= "DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = '{$slug}';\n";
}

$sqlOutput .= "\nSELECT '✓ Receitas incorretas deletadas!' as Status;\n\n";

$sqlOutput .= "-- RECRIAR RECEITAS CORRETAS COM DADOS OFICIAIS\n\n";

$generated = 0;
$skipped = 0;

foreach ($incorrectSlugs as $slug) {
    $dbItem = $dbItemBySlug[$slug] ?? null;
    if (!$dbItem) {
        $skipped++;
        continue;
    }

    $mcItem = $mcItemByName[$slug] ?? null;
    if (!$mcItem) {
        $skipped++;
        continue;
    }

    $mcRecipes = $minecraftRecipes[$mcItem['id']] ?? [];
    if (empty($mcRecipes)) {
        $skipped++;
        continue;
    }

    $recipe = $mcRecipes[0]; // Usar primeira variação

    $sqlOutput .= "-- {$dbItem['name']} ({$slug})\n";

    $isShapeless = isset($recipe['ingredients']);

    if ($isShapeless) {
        // Receita shapeless
        $ingredients = $recipe['ingredients'];
        $allExist = true;
        $ingredientCounts = [];

        foreach ($ingredients as $ingredientId) {
            $ingredientMcItem = $mcItemById[$ingredientId] ?? null;
            if (!$ingredientMcItem) {
                $allExist = false;
                break;
            }
            $ingredientSlug = $ingredientMcItem['name'];
            if (!isset($dbItemBySlug[$ingredientSlug])) {
                $allExist = false;
                break;
            }
            $ingredientCounts[$ingredientSlug] = ($ingredientCounts[$ingredientSlug] ?? 0) + 1;
        }

        if (!$allExist) {
            $sqlOutput .= "-- SKIPPED: Ingredientes não existem no banco\n\n";
            $skipped++;
            continue;
        }

        $sqlOutput .= "INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = '{$slug}';\n";
        $sqlOutput .= "SET @recipe_id = LAST_INSERT_ID();\n";

        // Grid simples em linha
        $col = 0;
        foreach ($ingredientCounts as $ingredientSlug => $count) {
            for ($i = 0; $i < $count; $i++) {
                $sqlOutput .= "INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES\n";
                $sqlOutput .= "(@recipe_id, 1, {$col}, (SELECT id FROM items WHERE slug = '{$ingredientSlug}'), 1);\n";
                $col++;
            }
        }

        // ingredients_flat
        foreach ($ingredientCounts as $ingredientSlug => $count) {
            $sqlOutput .= "INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES\n";
            $sqlOutput .= "(@recipe_id, (SELECT id FROM items WHERE slug = '{$ingredientSlug}'), {$count});\n";
        }

        $generated++;

    } else {
        // Receita shaped
        $inShape = $recipe['inShape'];
        $allExist = true;
        $ingredientCounts = [];

        foreach ($inShape as $row => $cols) {
            foreach ($cols as $col => $ingredientId) {
                if ($ingredientId === null || $ingredientId === 0) continue;

                $ingredientMcItem = $mcItemById[$ingredientId] ?? null;
                if (!$ingredientMcItem) {
                    $allExist = false;
                    break 2;
                }
                $ingredientSlug = $ingredientMcItem['name'];
                if (!isset($dbItemBySlug[$ingredientSlug])) {
                    $allExist = false;
                    break 2;
                }
                $ingredientCounts[$ingredientSlug] = ($ingredientCounts[$ingredientSlug] ?? 0) + 1;
            }
        }

        if (!$allExist) {
            $sqlOutput .= "-- SKIPPED: Ingredientes não existem no banco\n\n";
            $skipped++;
            continue;
        }

        $sqlOutput .= "INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = '{$slug}';\n";
        $sqlOutput .= "SET @recipe_id = LAST_INSERT_ID();\n";

        // Grid
        $gridInserts = [];
        foreach ($inShape as $row => $cols) {
            foreach ($cols as $col => $ingredientId) {
                if ($ingredientId === null || $ingredientId === 0) continue;

                $ingredientMcItem = $mcItemById[$ingredientId];
                $ingredientSlug = $ingredientMcItem['name'];

                $gridInserts[] = "(@recipe_id, {$row}, {$col}, (SELECT id FROM items WHERE slug = '{$ingredientSlug}'), 1)";
            }
        }

        if (!empty($gridInserts)) {
            $sqlOutput .= "INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES\n";
            $sqlOutput .= implode(",\n", $gridInserts) . ";\n";
        }

        // ingredients_flat
        $flatInserts = [];
        foreach ($ingredientCounts as $ingredientSlug => $count) {
            $flatInserts[] = "(@recipe_id, (SELECT id FROM items WHERE slug = '{$ingredientSlug}'), {$count})";
        }

        if (!empty($flatInserts)) {
            $sqlOutput .= "INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES\n";
            $sqlOutput .= implode(",\n", $flatInserts) . ";\n";
        }

        $generated++;
    }

    $sqlOutput .= "\n";
}

$sqlOutput .= "SELECT '✓ {$generated} receitas corrigidas!' as Status;\n";

// Salvar SQL
$outputFile = __DIR__ . '/../sql/fix_all_incorrect_recipes.sql';
file_put_contents($outputFile, $sqlOutput);

echo "✅ SQL de correção gerado!\n";
echo "   - Receitas a corrigir: {$generated}\n";
echo "   - Receitas ignoradas: {$skipped}\n\n";
echo "📁 Arquivo: {$outputFile}\n\n";
echo "Para aplicar as correções:\n";
echo "mysql -u root minecraft_site < sql/fix_all_incorrect_recipes.sql\n\n";
echo "═══════════════════════════════════════════════════════════════\n";
