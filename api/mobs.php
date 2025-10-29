<?php
/**
 * API Endpoint: Lista de mobs do Minecraft
 * GET /api/mobs.php
 * GET /api/mobs.php?q=creeper (filtro por nome)
 * GET /api/mobs.php?type=hostile (filtro por tipo)
 * GET /api/mobs.php?type=hostile&q=zombie (combinado)
 */

require_once __DIR__ . '/db.php';

// Apenas GET é permitido
if ($_SERVER['REQUEST_METHOD'] !== 'GET') {
    jsonError('Método não permitido', 405);
}

try {
    $pdo = db();

    // Parâmetros opcionais
    $search = isset($_GET['q']) ? trim($_GET['q']) : '';
    $type = isset($_GET['type']) ? trim($_GET['type']) : '';

    // Query base - todos os mobs
    $sql = "
        SELECT
            id,
            name,
            slug,
            icon,
            type,
            health,
            attack_damage,
            is_dangerous
        FROM mobs
        WHERE 1=1
    ";

    $params = [];

    // Adiciona filtro de busca por nome se fornecido
    if (!empty($search)) {
        $sql .= " AND name LIKE :search";
        $params[':search'] = '%' . $search . '%';
    }

    // Adiciona filtro por tipo se fornecido
    if (!empty($type)) {
        $sql .= " AND type = :type";
        $params[':type'] = $type;
    }

    // Ordenação: bosses primeiro, depois por tipo e nome
    $sql .= " ORDER BY
        CASE type
            WHEN 'boss' THEN 1
            WHEN 'hostile' THEN 2
            WHEN 'neutral' THEN 3
            WHEN 'passive' THEN 4
            ELSE 5
        END,
        name ASC
    ";

    $stmt = $pdo->prepare($sql);
    $stmt->execute($params);
    $mobs = $stmt->fetchAll();

    jsonResponse([
        'success' => true,
        'count' => count($mobs),
        'mobs' => $mobs
    ]);

} catch (PDOException $e) {
    jsonError('Erro ao buscar mobs: ' . $e->getMessage(), 500);
}
