<?php
/**
 * Script para validar EXATIDÃO das receitas - compara ingrediente por ingrediente
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
echo "  VALIDAÇÃO DE EXATIDÃO DE RECEITAS - Ingrediente por Ingrediente\n";
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

echo "✓ Dados carregados: " . count($minecraftItems) . " itens, " . count($minecraftRecipes) . " receitas\n\n";

// Buscar TODAS as receitas do banco com seus grids
$stmt = $pdo->query("
    SELECT
        i.id as item_id,
        i.name as item_name,
        i.slug as item_slug,
        r.id as recipe_id
    FROM items i
    INNER JOIN recipes r ON i.id = r.item_id
    ORDER BY i.slug
");
$dbRecipes = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo "📊 Receitas no banco a validar: " . count($dbRecipes) . "\n\n";
echo "═══════════════════════════════════════════════════════════════\n\n";

$incorrectRecipes = [];
$correctRecipes = 0;
$skippedRecipes = 0;

foreach ($dbRecipes as $dbRecipe) {
    $slug = $dbRecipe['item_slug'];
    $recipeId = $dbRecipe['recipe_id'];

    // Item existe no Minecraft?
    $mcItem = $mcItemByName[$slug] ?? null;
    if (!$mcItem) {
        $skippedRecipes++;
        continue;
    }

    // Tem receita no Minecraft?
    $mcRecipes = $minecraftRecipes[$mcItem['id']] ?? [];
    if (empty($mcRecipes)) {
        $incorrectRecipes[] = [
            'item' => $dbRecipe,
            'reason' => 'Item não tem receita no Minecraft oficial',
            'type' => 'should_not_exist'
        ];
        continue;
    }

    // Buscar grid da receita no banco
    $stmt = $pdo->prepare("
        SELECT
            rg.row,
            rg.col,
            rg.quantity,
            i.slug as ingredient_slug,
            i.name as ingredient_name
        FROM recipe_grid rg
        INNER JOIN items i ON rg.ingredient_item_id = i.id
        WHERE rg.recipe_id = ?
        ORDER BY rg.row, rg.col
    ");
    $stmt->execute([$recipeId]);
    $dbGrid = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Converter grid do banco em matriz 3x3
    $dbMatrix = array_fill(0, 3, array_fill(0, 3, null));
    foreach ($dbGrid as $cell) {
        $row = $cell['row'];
        $col = $cell['col'];
        $dbMatrix[$row][$col] = $cell['ingredient_slug'];
    }

    // Tentar match com qualquer variação da receita oficial
    $matchFound = false;
    $mcRecipeMatched = null;

    foreach ($mcRecipes as $mcRecipe) {
        // Converter receita do Minecraft em matriz
        $mcMatrix = array_fill(0, 3, array_fill(0, 3, null));

        if (isset($mcRecipe['inShape'])) {
            // Shaped recipe
            $inShape = $mcRecipe['inShape'];
            foreach ($inShape as $row => $cols) {
                foreach ($cols as $col => $ingredientId) {
                    if ($ingredientId !== null && $ingredientId !== 0) {
                        $ingredientMcItem = $mcItemById[$ingredientId] ?? null;
                        if ($ingredientMcItem) {
                            $mcMatrix[$row][$col] = $ingredientMcItem['name'];
                        }
                    }
                }
            }
        } else if (isset($mcRecipe['ingredients'])) {
            // Shapeless recipe - difícil de validar exatamente
            // Por ora, apenas verifica se tem os mesmos ingredientes
            $mcIngredients = [];
            foreach ($mcRecipe['ingredients'] as $ingredientId) {
                $ingredientMcItem = $mcItemById[$ingredientId] ?? null;
                if ($ingredientMcItem) {
                    $mcIngredients[] = $ingredientMcItem['name'];
                }
            }

            $dbIngredients = [];
            foreach ($dbGrid as $cell) {
                $dbIngredients[] = $cell['ingredient_slug'];
            }

            sort($mcIngredients);
            sort($dbIngredients);

            if ($mcIngredients == $dbIngredients) {
                $matchFound = true;
                $mcRecipeMatched = $mcRecipe;
                break;
            }
            continue;
        }

        // Comparar matrizes
        if ($dbMatrix == $mcMatrix) {
            $matchFound = true;
            $mcRecipeMatched = $mcRecipe;
            break;
        }
    }

    if (!$matchFound) {
        // Encontrar a primeira receita oficial para comparação
        $firstMcRecipe = $mcRecipes[0];

        $incorrectRecipes[] = [
            'item' => $dbRecipe,
            'reason' => 'Ingredientes ou posições incorretas',
            'type' => 'incorrect_ingredients',
            'db_grid' => $dbGrid,
            'mc_recipe' => $firstMcRecipe
        ];
    } else {
        $correctRecipes++;
    }
}

echo "✅ Receitas CORRETAS: " . $correctRecipes . "\n";
echo "❌ Receitas INCORRETAS: " . count($incorrectRecipes) . "\n";
echo "⏭️  Receitas ignoradas (item não existe no MC): " . $skippedRecipes . "\n\n";

if (count($incorrectRecipes) > 0) {
    echo "═══════════════════════════════════════════════════════════════\n";
    echo "  RECEITAS INCORRETAS DETALHADAS\n";
    echo "═══════════════════════════════════════════════════════════════\n\n";

    foreach ($incorrectRecipes as $incorrect) {
        echo "❌ " . $incorrect['item']['item_name'] . " ({$incorrect['item']['item_slug']})\n";
        echo "   Razão: {$incorrect['reason']}\n";

        if ($incorrect['type'] === 'incorrect_ingredients') {
            echo "   \n";
            echo "   Grid no BANCO:\n";
            $matrix = array_fill(0, 3, array_fill(0, 3, '   '));
            foreach ($incorrect['db_grid'] as $cell) {
                $short = substr($cell['ingredient_slug'], 0, 3);
                $matrix[$cell['row']][$cell['col']] = str_pad($short, 3);
            }
            foreach ($matrix as $row) {
                echo "   [" . implode("|", $row) . "]\n";
            }

            echo "   \n";
            echo "   Grid OFICIAL do Minecraft:\n";
            $mcRecipe = $incorrect['mc_recipe'];
            if (isset($mcRecipe['inShape'])) {
                $matrix = array_fill(0, 3, array_fill(0, 3, '   '));
                foreach ($mcRecipe['inShape'] as $row => $cols) {
                    foreach ($cols as $col => $ingredientId) {
                        if ($ingredientId !== null) {
                            $item = $mcItemById[$ingredientId] ?? null;
                            if ($item) {
                                $short = substr($item['name'], 0, 3);
                                $matrix[$row][$col] = str_pad($short, 3);
                            }
                        }
                    }
                }
                foreach ($matrix as $row) {
                    echo "   [" . implode("|", $row) . "]\n";
                }
            } else {
                echo "   Shapeless recipe\n";
                echo "   Ingredientes: ";
                $ings = [];
                foreach ($mcRecipe['ingredients'] as $ingredientId) {
                    $item = $mcItemById[$ingredientId] ?? null;
                    if ($item) {
                        $ings[] = $item['name'];
                    }
                }
                echo implode(", ", $ings) . "\n";
            }
        }
        echo "\n";
    }

    // Gerar lista de slugs incorretos
    $incorrectSlugs = [];
    foreach ($incorrectRecipes as $incorrect) {
        $incorrectSlugs[] = $incorrect['item']['item_slug'];
    }

    echo "═══════════════════════════════════════════════════════════════\n";
    echo "  LISTA DE SLUGS INCORRETOS\n";
    echo "═══════════════════════════════════════════════════════════════\n\n";
    echo implode(", ", $incorrectSlugs) . "\n\n";
}

$accuracyPercent = count($dbRecipes) > 0
    ? round(($correctRecipes / (count($dbRecipes) - $skippedRecipes)) * 100, 1)
    : 0;

echo "═══════════════════════════════════════════════════════════════\n";
echo "  RESUMO\n";
echo "═══════════════════════════════════════════════════════════════\n\n";
echo "📈 Taxa de precisão: {$accuracyPercent}%\n";
echo "   ({$correctRecipes} corretas de " . (count($dbRecipes) - $skippedRecipes) . " validadas)\n\n";

if (count($incorrectRecipes) > 0) {
    echo "🔧 Ação necessária: Corrigir " . count($incorrectRecipes) . " receitas incorretas\n\n";
}

echo "═══════════════════════════════════════════════════════════════\n";
