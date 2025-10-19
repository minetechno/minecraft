/**
 * Lógica da página Home
 */

import { apiUrl, assetUrl, buildUrl } from './utils/basepath.js';

// Estado da aplicação
let allItems = [];
let currentSearchTerm = '';

/**
 * Carrega um partial HTML e insere em um container
 * @param {string} partialPath - Caminho do partial
 * @param {string} containerId - ID do container
 */
async function loadPartial(partialPath, containerId) {
  try {
    const response = await fetch(partialPath);
    if (!response.ok) throw new Error(`Erro ao carregar ${partialPath}`);
    const html = await response.text();
    const container = document.getElementById(containerId);
    if (container) {
      container.innerHTML = html;
    }
  } catch (error) {
    console.error('Erro ao carregar partial:', error);
  }
}

/**
 * Carrega todos os partials (header, footer)
 */
async function loadPartials() {
  await Promise.all([
    loadPartial(buildUrl('/partials/header.html'), 'headerContainer'),
    loadPartial(buildUrl('/partials/footer.html'), 'footerContainer'),
  ]);

  // Inicializa a busca após carregar o header
  initSearch();
}

/**
 * Busca os itens craftáveis da API
 */
async function fetchItems() {
  const loadingEl = document.getElementById('loadingMessage');
  const errorEl = document.getElementById('errorMessage');
  const gridEl = document.getElementById('itemsGrid');

  try {
    loadingEl.style.display = 'block';
    errorEl.style.display = 'none';

    const response = await fetch(apiUrl('items.php'));
    if (!response.ok) throw new Error('Erro ao buscar itens');

    const data = await response.json();

    if (!data.success || !data.items) {
      throw new Error('Resposta inválida da API');
    }

    allItems = data.items;
    renderItems(allItems);
    loadingEl.style.display = 'none';

  } catch (error) {
    console.error('Erro ao buscar itens:', error);
    loadingEl.style.display = 'none';
    errorEl.textContent = 'Erro ao carregar os itens. Por favor, tente novamente.';
    errorEl.style.display = 'block';
  }
}

/**
 * Renderiza os cards de itens
 * @param {Array} items - Array de itens
 */
function renderItems(items) {
  const gridEl = document.getElementById('itemsGrid');
  const noResultsEl = document.getElementById('noResultsMessage');

  if (!items || items.length === 0) {
    gridEl.innerHTML = '';
    noResultsEl.style.display = 'block';
    return;
  }

  noResultsEl.style.display = 'none';

  gridEl.innerHTML = items.map(item => `
    <article class="item-card" role="listitem">
      <img
        src="${assetUrl(`icons/${item.icon}`)}"
        alt="${escapeHtml(item.name)}"
        class="item-icon"
        loading="lazy"
      />
      <h3 class="item-card-name">${escapeHtml(item.name)}</h3>
      <div class="item-card-actions">
        <a
          href="${buildUrl(`/craft/?id=${item.id}`)}"
          class="btn btn-sm btn-primary"
          aria-label="Ver detalhes de ${escapeHtml(item.name)}"
        >
          Ver Detalhes
        </a>
      </div>
    </article>
  `).join('');
}

/**
 * Inicializa o campo de busca
 */
function initSearch() {
  const searchInput = document.getElementById('searchBox');
  if (!searchInput) return;

  searchInput.addEventListener('input', (e) => {
    currentSearchTerm = e.target.value.toLowerCase().trim();
    filterItems();
  });
}

/**
 * Filtra os itens baseado no termo de busca
 */
function filterItems() {
  if (!currentSearchTerm) {
    renderItems(allItems);
    return;
  }

  const filtered = allItems.filter(item =>
    item.name.toLowerCase().includes(currentSearchTerm)
  );

  renderItems(filtered);
}

/**
 * Escapa HTML para prevenir XSS
 * @param {string} text - Texto a ser escapado
 * @returns {string} Texto escapado
 */
function escapeHtml(text) {
  const div = document.createElement('div');
  div.textContent = text;
  return div.innerHTML;
}

/**
 * Inicialização da página
 */
async function init() {
  await loadPartials();
  await fetchItems();
}

// Inicia quando o DOM estiver pronto
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', init);
} else {
  init();
}
