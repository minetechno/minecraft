<?php
/**
 * API Endpoint: Lista de itens craftáveis
 * GET /minecraft/api/items.php
 * GET /minecraft/api/items.php?q=espada (filtro por nome)
 */

require_once __DIR__ . '/db.php';

// Apenas GET é permitido
if ($_SERVER['REQUEST_METHOD'] !== 'GET') {
    jsonError('Método não permitido', 405);
}

try {
    $pdo = db();

    // Parâmetro de busca opcional
    $search = isset($_GET['q']) ? trim($_GET['q']) : '';

    // Query base - apenas itens que possuem receitas (craftáveis)
    $sql = "
        SELECT DISTINCT
            i.id,
            i.name,
            i.slug,
            i.icon,
            i.category
        FROM items i
        INNER JOIN recipes r ON i.id = r.item_id
    ";

    $params = [];

    // Adiciona filtro de busca se fornecido
    if (!empty($search)) {
        $sql .= " WHERE i.name LIKE :search";
        $params[':search'] = '%' . $search . '%';
    }

    $sql .= " ORDER BY i.category, i.name";

    $stmt = $pdo->prepare($sql);
    $stmt->execute($params);
    $items = $stmt->fetchAll();

    jsonResponse([
        'success' => true,
        'count' => count($items),
        'items' => $items
    ]);

} catch (PDOException $e) {
    jsonError('Erro ao buscar itens: ' . $e->getMessage(), 500);
}
