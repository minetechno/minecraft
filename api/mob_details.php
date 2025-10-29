<?php
/**
 * API Endpoint: Detalhes completos de um mob
 * GET /api/mob_details.php?id={mob_id}
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

$mobId = (int) $_GET['id'];

try {
    $pdo = db();

    // Busca informações completas do mob
    $stmt = $pdo->prepare("
        SELECT
            id,
            name,
            slug,
            description,
            icon,
            type,
            health,
            attack_damage,
            is_dangerous,
            drops_json,
            spawn_location,
            created_at
        FROM mobs
        WHERE id = :id
    ");
    $stmt->execute([':id' => $mobId]);
    $mob = $stmt->fetch();

    if (!$mob) {
        jsonError('Mob não encontrado', 404);
    }

    // Decodifica o JSON de drops (se existir)
    $drops = [];
    if (!empty($mob['drops_json'])) {
        $dropsDecoded = json_decode($mob['drops_json'], true);
        $drops = is_array($dropsDecoded) ? $dropsDecoded : [];
    }

    // Mapeia tipos para nomes em português
    $typeNames = [
        'passive' => 'Passivo',
        'neutral' => 'Neutro',
        'hostile' => 'Hostil',
        'boss' => 'Boss'
    ];

    // Resposta completa com todos os detalhes
    jsonResponse([
        'success' => true,
        'mob' => [
            'id' => (int) $mob['id'],
            'name' => $mob['name'],
            'slug' => $mob['slug'],
            'description' => $mob['description'],
            'icon' => $mob['icon'],
            'type' => $mob['type'],
            'type_name' => $typeNames[$mob['type']] ?? $mob['type'],
            'health' => (int) $mob['health'],
            'attack_damage' => $mob['attack_damage'] !== null ? (int) $mob['attack_damage'] : null,
            'is_dangerous' => (bool) $mob['is_dangerous'],
            'drops' => $drops,
            'spawn_location' => $mob['spawn_location'],
            'created_at' => $mob['created_at']
        ]
    ]);

} catch (PDOException $e) {
    jsonError('Erro ao buscar detalhes do mob: ' . $e->getMessage(), 500);
}
