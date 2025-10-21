<?php
/**
 * API Endpoint: Detalhes da receita de um item
 * GET /api/recipe.php?id={item_id}
 */

require_once __DIR__ . '/db.php';

// Apenas GET é permitido
if ($_SERVER['REQUEST_METHOD'] !== 'GET') {
    jsonError('Método não permitido', 405);
}

// Valida parâmetro ID
if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    jsonError('Parâmetro "id" é obrigatório e deve ser um número', 400);
}

$itemId = (int) $_GET['id'];

try {
    $pdo = db();

    // Busca informações do item
    $stmtItem = $pdo->prepare("
        SELECT id, name, slug, description, icon, category
        FROM items
        WHERE id = :id
    ");
    $stmtItem->execute([':id' => $itemId]);
    $item = $stmtItem->fetch();

    if (!$item) {
        jsonError('Item não encontrado', 404);
    }

    // Busca a receita do item
    $stmtRecipe = $pdo->prepare("
        SELECT id
        FROM recipes
        WHERE item_id = :item_id
        LIMIT 1
    ");
    $stmtRecipe->execute([':item_id' => $itemId]);
    $recipe = $stmtRecipe->fetch();

    // Se não tem receita, retorna apenas as informações do item
    if (!$recipe) {
        jsonResponse([
            'success' => true,
            'has_recipe' => false,
            'item' => [
                'id' => (int) $item['id'],
                'name' => $item['name'],
                'slug' => $item['slug'],
                'description' => $item['description'],
                'icon' => $item['icon'],
                'category' => $item['category']
            ],
            'grid' => [],
            'ingredients' => [],
            'message' => 'Este item não possui receita de crafting. É obtido de outras formas no jogo.'
        ]);
        return;
    }

    $recipeId = $recipe['id'];

    // Busca a grade 3x3 da receita
    $stmtGrid = $pdo->prepare("
        SELECT
            rg.row,
            rg.col,
            rg.quantity,
            ing.id AS ingredient_id,
            ing.name AS ingredient_name,
            ing.icon AS ingredient_icon
        FROM recipe_grid rg
        LEFT JOIN items ing ON rg.ingredient_item_id = ing.id
        WHERE rg.recipe_id = :recipe_id
        ORDER BY rg.row, rg.col
    ");
    $stmtGrid->execute([':recipe_id' => $recipeId]);
    $gridData = $stmtGrid->fetchAll();

    // Formata a grade para retorno
    $grid = [];
    foreach ($gridData as $cell) {
        $grid[] = [
            'row' => (int) $cell['row'],
            'col' => (int) $cell['col'],
            'ingredient' => $cell['ingredient_id'] ? [
                'id' => (int) $cell['ingredient_id'],
                'name' => $cell['ingredient_name'],
                'icon' => $cell['ingredient_icon']
            ] : null,
            'quantity' => (int) $cell['quantity']
        ];
    }

    // Busca a lista agregada de ingredientes
    $stmtIngredients = $pdo->prepare("
        SELECT
            i.id,
            i.name,
            i.icon,
            inf.quantity
        FROM ingredients_flat inf
        INNER JOIN items i ON inf.ingredient_item_id = i.id
        WHERE inf.recipe_id = :recipe_id
        ORDER BY i.name
    ");
    $stmtIngredients->execute([':recipe_id' => $recipeId]);
    $ingredientsData = $stmtIngredients->fetchAll();

    // Formata ingredientes
    $ingredients = [];
    foreach ($ingredientsData as $ing) {
        $ingredients[] = [
            'id' => (int) $ing['id'],
            'name' => $ing['name'],
            'icon' => $ing['icon'],
            'quantity' => (int) $ing['quantity']
        ];
    }

    // Resposta completa
    jsonResponse([
        'success' => true,
        'has_recipe' => true,
        'item' => [
            'id' => (int) $item['id'],
            'name' => $item['name'],
            'slug' => $item['slug'],
            'description' => $item['description'],
            'icon' => $item['icon'],
            'category' => $item['category']
        ],
        'grid' => $grid,
        'ingredients' => $ingredients
    ]);

} catch (PDOException $e) {
    jsonError('Erro ao buscar receita: ' . $e->getMessage(), 500);
}
