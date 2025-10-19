/**
 * Lógica da página Craft (detalhes da receita)
 */

import { apiUrl, assetUrl, buildUrl } from './utils/basepath.js';

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
}

/**
 * Obtém o ID do item da URL (query string ou hash)
 * @returns {number|null} ID do item ou null se não encontrado
 */
function getItemIdFromUrl() {
  // Tenta ler de query string (?id=123)
  const urlParams = new URLSearchParams(window.location.search);
  let id = urlParams.get('id');

  // Se não encontrou, tenta ler do hash (#id=123)
  if (!id && window.location.hash) {
    const hashParams = new URLSearchParams(window.location.hash.slice(1));
    id = hashParams.get('id');
  }

  return id && !isNaN(id) ? parseInt(id, 10) : null;
}

/**
 * Busca a receita da API
 * @param {number} itemId - ID do item
 */
async function fetchRecipe(itemId) {
  const loadingEl = document.getElementById('loadingMessage');
  const errorEl = document.getElementById('errorMessage');
  const contentEl = document.getElementById('recipeContent');

  try {
    loadingEl.style.display = 'block';
    errorEl.style.display = 'none';
    contentEl.style.display = 'none';

    const response = await fetch(apiUrl(`recipe.php?id=${itemId}`));

    if (!response.ok) {
      if (response.status === 404) {
        throw new Error('Receita não encontrada');
      }
      throw new Error('Erro ao buscar receita');
    }

    const data = await response.json();

    if (!data.success || !data.item) {
      throw new Error('Resposta inválida da API');
    }

    renderRecipe(data);
    loadingEl.style.display = 'none';
    contentEl.style.display = 'block';

  } catch (error) {
    console.error('Erro ao buscar receita:', error);
    loadingEl.style.display = 'none';
    errorEl.textContent = error.message || 'Erro ao carregar a receita. Por favor, tente novamente.';
    errorEl.style.display = 'block';
  }
}

/**
 * Renderiza a receita na página
 * @param {Object} data - Dados da receita
 */
function renderRecipe(data) {
  const { item, grid, ingredients } = data;

  // Atualiza o título da página
  document.title = `${item.name} - Minecraft Crafts`;

  // Informações do item
  document.getElementById('itemIcon').src = assetUrl(`icons/${item.icon}`);
  document.getElementById('itemIcon').alt = item.name;
  document.getElementById('itemName').textContent = item.name;
  document.getElementById('itemCategory').textContent = item.category;
  document.getElementById('itemDescription').textContent = item.description;

  // Grade 3x3
  const gridEl = document.getElementById('craftGrid');
  gridEl.innerHTML = grid.map(cell => {
    const isEmpty = !cell.ingredient;
    const icon = isEmpty
      ? assetUrl('icons/empty_cell.svg')
      : assetUrl(`icons/${cell.ingredient.icon}`);
    const name = isEmpty ? 'Vazio' : cell.ingredient.name;
    const quantity = cell.quantity > 1 ? cell.quantity : '';

    return `
      <div class="craft-cell ${isEmpty ? 'empty' : ''}" role="gridcell">
        <img src="${icon}" alt="${escapeHtml(name)}" />
        ${quantity ? `<span class="craft-quantity">${quantity}</span>` : ''}
      </div>
    `;
  }).join('');

  // Lista de ingredientes
  const ingredientsEl = document.getElementById('ingredientsList');
  ingredientsEl.innerHTML = ingredients.map(ing => `
    <li class="ingredient-item">
      <img src="${assetUrl(`icons/${ing.icon}`)}" alt="${escapeHtml(ing.name)}" />
      <span class="ingredient-name">${escapeHtml(ing.name)}</span>
      <span class="ingredient-quantity">${ing.quantity}x</span>
    </li>
  `).join('');
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
  // Carrega partials
  await loadPartials();

  // Obtém ID da URL
  const itemId = getItemIdFromUrl();

  if (!itemId) {
    const errorEl = document.getElementById('errorMessage');
    errorEl.textContent = 'ID do item não foi fornecido. Por favor, acesse a partir da página Home.';
    errorEl.style.display = 'block';
    document.getElementById('loadingMessage').style.display = 'none';
    return;
  }

  // Busca e renderiza a receita
  await fetchRecipe(itemId);
}

// Inicia quando o DOM estiver pronto
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', init);
} else {
  init();
}
