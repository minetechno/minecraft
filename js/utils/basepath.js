/**
 * Configurações de Base Path e URLs
 */

// Base path da aplicação
export const BASE_PATH = '/minecraft';

/**
 * Constrói uma URL completa a partir de um caminho relativo
 * @param {string} path - Caminho relativo (ex: '/home/', '/craft/')
 * @returns {string} URL completa
 */
export function buildUrl(path) {
  // Remove barra inicial duplicada se existir
  const cleanPath = path.startsWith('/') ? path : `/${path}`;
  return `${BASE_PATH}${cleanPath}`;
}

/**
 * Constrói uma URL da API
 * @param {string} endpoint - Endpoint da API (ex: 'items.php', 'recipe.php')
 * @returns {string} URL completa da API
 */
export function apiUrl(endpoint) {
  const cleanEndpoint = endpoint.startsWith('/') ? endpoint.slice(1) : endpoint;
  return `${BASE_PATH}/api/${cleanEndpoint}`;
}

/**
 * Constrói uma URL de asset (ícone, fonte, etc)
 * @param {string} assetPath - Caminho do asset (ex: 'icons/stick.svg')
 * @returns {string} URL completa do asset
 */
export function assetUrl(assetPath) {
  const cleanPath = assetPath.startsWith('/') ? assetPath.slice(1) : assetPath;
  return `${BASE_PATH}/assets/${cleanPath}`;
}
