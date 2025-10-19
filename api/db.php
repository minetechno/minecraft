<?php
/**
 * Gerenciamento de conexão com banco de dados
 */

require_once __DIR__ . '/config.php';

/**
 * Retorna uma conexão PDO com o banco de dados
 * @return PDO
 */
function db() {
    static $pdo = null;

    if ($pdo === null) {
        try {
            $dsn = sprintf(
                'mysql:host=%s;dbname=%s;charset=%s',
                DB_HOST,
                DB_NAME,
                DB_CHARSET
            );

            $options = [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                PDO::ATTR_EMULATE_PREPARES => false,
            ];

            $pdo = new PDO($dsn, DB_USER, DB_PASS, $options);
        } catch (PDOException $e) {
            http_response_code(500);
            echo json_encode([
                'error' => 'Erro ao conectar ao banco de dados',
                'message' => $e->getMessage()
            ]);
            exit;
        }
    }

    return $pdo;
}

/**
 * Envia resposta JSON e encerra a execução
 * @param mixed $data Dados a serem enviados
 * @param int $code Código HTTP de resposta
 */
function jsonResponse($data, $code = 200) {
    http_response_code($code);
    echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
    exit;
}

/**
 * Envia resposta de erro JSON
 * @param string $message Mensagem de erro
 * @param int $code Código HTTP de erro
 */
function jsonError($message, $code = 400) {
    jsonResponse(['error' => $message], $code);
}
