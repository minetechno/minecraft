<?php
/**
 * Script para gerar SQL de receitas faltantes baseado em dados reais do Minecraft
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
echo "  GERADOR DE RECEITAS FALTANTES - Minecraft Official Data\n";
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

// Buscar itens e receitas do banco
$stmt = $pdo->query("SELECT id, name, slug FROM items ORDER BY slug");
$dbItems = $stmt->fetchAll(PDO::FETCH_ASSOC);

$dbItemBySlug = [];
foreach ($dbItems as $item) {
    $dbItemBySlug[$item['slug']] = $item;
}

$stmt = $pdo->query("
    SELECT i.slug
    FROM recipes r
    INNER JOIN items i ON r.item_id = i.id
");
$dbRecipeSlugs = $stmt->fetchAll(PDO::FETCH_COLUMN);
$hasRecipe = array_flip($dbRecipeSlugs);

echo "✓ Carregados: " . count($dbItems) . " itens do banco\n";
echo "✓ Receitas existentes: " . count($dbRecipeSlugs) . "\n\n";

// Encontrar receitas faltantes
$missingRecipes = [];
foreach ($dbItems as $dbItem) {
    $slug = $dbItem['slug'];

    // Já tem receita?
    if (isset($hasRecipe[$slug])) {
        continue;
    }

    // Existe no Minecraft?
    $mcItem = $mcItemByName[$slug] ?? null;
    if (!$mcItem) {
        continue;
    }

    // Tem receita no Minecraft?
    $mcRecipes = $minecraftRecipes[$mcItem['id']] ?? [];
    if (empty($mcRecipes)) {
        continue;
    }

    $missingRecipes[] = [
        'db_item' => $dbItem,
        'mc_item' => $mcItem,
        'recipes' => $mcRecipes
    ];
}

echo "📊 Receitas faltantes encontradas: " . count($missingRecipes) . "\n\n";

if (count($missingRecipes) === 0) {
    echo "✅ Nenhuma receita faltante! Todas as receitas estão corretas.\n";
    exit(0);
}

// Gerar SQL
$sqlOutput = "-- ============================================================================\n";
$sqlOutput .= "-- RECEITAS FALTANTES - Gerado automaticamente de dados oficiais do Minecraft\n";
$sqlOutput .= "-- Data: " . date('Y-m-d H:i:s') . "\n";
$sqlOutput .= "-- Total: " . count($missingRecipes) . " receitas\n";
$sqlOutput .= "-- ============================================================================\n\n";
$sqlOutput .= "SET NAMES utf8mb4;\n";
$sqlOutput .= "SET CHARACTER SET utf8mb4;\n\n";

$generated = 0;
$skipped = 0;

foreach ($missingRecipes as $missing) {
    $dbItem = $missing['db_item'];
    $mcItem = $missing['mc_item'];
    $recipes = $missing['recipes'];

    // Usar a primeira receita (geralmente é a principal)
    $recipe = $recipes[0];

    $sqlOutput .= "-- {$dbItem['name']} ({$mcItem['name']})\n";

    // Verificar se é shapeless ou shaped
    $isShapeless = isset($recipe['ingredients']);

    if ($isShapeless) {
        // Receita sem forma (shapeless)
        $ingredients = $recipe['ingredients'];

        // Validar se todos os ingredientes existem no banco
        $allExist = true;
        $ingredientList = [];
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
            $ingredientList[] = $ingredientSlug;
        }

        if (!$allExist) {
            $sqlOutput .= "-- SKIPPED: Ingredientes não existem no banco\n\n";
            $skipped++;
            continue;
        }

        $sqlOutput .= "INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = '{$dbItem['slug']}';\n";
        $sqlOutput .= "SET @recipe_id = LAST_INSERT_ID();\n";

        // Adicionar ingredientes em grid simples (1 linha)
        $col = 0;
        $ingredientCounts = array_count_values($ingredientList);
        foreach ($ingredientCounts as $ingredientSlug => $count) {
            $sqlOutput .= "INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES\n";
            $sqlOutput .= "(@recipe_id, 1, {$col}, (SELECT id FROM items WHERE slug = '{$ingredientSlug}'), {$count});\n";
            $col++;
        }

        // Adicionar a ingredients_flat
        foreach ($ingredientCounts as $ingredientSlug => $count) {
            $sqlOutput .= "INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES\n";
            $sqlOutput .= "(@recipe_id, (SELECT id FROM items WHERE slug = '{$ingredientSlug}'), {$count});\n";
        }

        $generated++;

    } else {
        // Receita com forma (shaped)
        $inShape = $recipe['inShape'];

        // Validar se todos os ingredientes existem no banco
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

        $sqlOutput .= "INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = '{$dbItem['slug']}';\n";
        $sqlOutput .= "SET @recipe_id = LAST_INSERT_ID();\n";

        // Adicionar grid
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

        // Adicionar ingredients_flat
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

$sqlOutput .= "SELECT '✓ {$generated} receitas adicionadas!' as Status;\n";

echo "✅ SQL gerado com sucesso!\n";
echo "   - Receitas geradas: {$generated}\n";
echo "   - Receitas ignoradas (ingredientes faltando): {$skipped}\n\n";

// Salvar SQL
$outputFile = __DIR__ . '/../sql/generated_missing_recipes.sql';
file_put_contents($outputFile, $sqlOutput);
echo "📁 Arquivo salvo: {$outputFile}\n\n";

echo "Para aplicar as receitas, execute:\n";
echo "mysql -u root minecraft_site < sql/generated_missing_recipes.sql\n\n";

echo "═══════════════════════════════════════════════════════════════\n";
