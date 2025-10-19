<?php
/**
 * Configurações gerais da aplicação
 */

// Base path da aplicação
define('BASE_PATH', '/minecraft');

// Configurações do banco de dados
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', ''); // Padrão WAMP
define('DB_NAME', 'minecraft_site');
define('DB_CHARSET', 'utf8mb4');

// Headers padrão para API JSON
header('Content-Type: application/json; charset=utf-8');

// CORS para localhost (opcional, apenas se necessário)
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
    header('Access-Control-Allow-Headers: Content-Type');
    http_response_code(200);
    exit;
}
