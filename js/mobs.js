/**
 * Lógica da página de Mobs
 */

import { apiUrl, assetUrl, buildUrl } from './utils/basepath.js';

// Estado da aplicação
let allMobs = [];
let currentSearchTerm = '';
let currentFilter = '';

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

  // Inicializa a busca e filtros após carregar o header
  initSearch();
  initFilters();
}

/**
 * Busca os mobs da API
 */
async function fetchMobs() {
  const loadingEl = document.getElementById('loadingMessage');
  const errorEl = document.getElementById('errorMessage');

  try {
    loadingEl.style.display = 'block';
    errorEl.style.display = 'none';

    const response = await fetch(apiUrl('mobs.php'));
    if (!response.ok) throw new Error('Erro ao buscar mobs');

    const data = await response.json();

    if (!data.success || !data.mobs) {
      throw new Error('Resposta inválida da API');
    }

    allMobs = data.mobs;
    renderMobs(allMobs);
    loadingEl.style.display = 'none';

  } catch (error) {
    console.error('Erro ao buscar mobs:', error);
    loadingEl.style.display = 'none';
    errorEl.textContent = 'Erro ao carregar os mobs. Por favor, tente novamente.';
    errorEl.style.display = 'block';
  }
}

/**
 * Renderiza os cards de mobs
 * @param {Array} mobs - Array de mobs
 */
function renderMobs(mobs) {
  const gridEl = document.getElementById('mobsGrid');
  const noResultsEl = document.getElementById('noResultsMessage');

  if (!mobs || mobs.length === 0) {
    gridEl.innerHTML = '';
    noResultsEl.style.display = 'block';
    return;
  }

  noResultsEl.style.display = 'none';

  gridEl.innerHTML = mobs.map(mob => {
    const typeNames = {
      'passive': 'Passivo',
      'neutral': 'Neutro',
      'hostile': 'Hostil',
      'boss': 'Boss'
    };

    return `
      <article class="item-card mob-card" data-type="${mob.type}" role="listitem">
        <img
          src="${assetUrl(`icons/${mob.icon}`)}"
          alt="${escapeHtml(mob.name)}"
          class="item-icon"
          loading="lazy"
        />
        <h3 class="item-card-name">${escapeHtml(mob.name)}</h3>

        <span class="mob-type mob-type-${mob.type}">
          ${typeNames[mob.type] || mob.type}
        </span>

        <div class="mob-stats">
          <span class="mob-stat" title="Vida">❤ ${mob.health}</span>
          ${mob.attack_damage ? `<span class="mob-stat" title="Ataque">⚔ ${mob.attack_damage}</span>` : ''}
        </div>

        ${mob.is_dangerous ? '<span class="mob-danger-badge">⚠ PERIGOSO</span>' : ''}

        <div class="item-card-actions">
          <button
            class="btn btn-sm btn-primary"
            onclick="window.showMobDetails(${mob.id})"
            aria-label="Ver detalhes de ${escapeHtml(mob.name)}"
          >
            Ver Detalhes
          </button>
        </div>
      </article>
    `;
  }).join('');
}

/**
 * Inicializa os botões de filtro por tipo
 */
function initFilters() {
  const filterBtns = document.querySelectorAll('.filter-btn');

  filterBtns.forEach(btn => {
    btn.addEventListener('click', (e) => {
      // Remove active de todos os botões
      filterBtns.forEach(b => {
        b.classList.remove('active');
        b.setAttribute('aria-pressed', 'false');
      });

      // Adiciona active ao botão clicado
      e.target.classList.add('active');
      e.target.setAttribute('aria-pressed', 'true');

      // Atualiza o filtro atual
      currentFilter = e.target.dataset.type;
      filterMobs();
    });
  });
}

/**
 * Filtra os mobs baseado no tipo e busca
 */
function filterMobs() {
  let filtered = allMobs;

  // Filtra por tipo se houver filtro ativo
  if (currentFilter) {
    filtered = filtered.filter(mob => mob.type === currentFilter);
  }

  // Filtra por busca se houver termo de busca
  if (currentSearchTerm) {
    filtered = filtered.filter(mob =>
      mob.name.toLowerCase().includes(currentSearchTerm)
    );
  }

  renderMobs(filtered);
}

/**
 * Inicializa o campo de busca
 */
function initSearch() {
  const searchInput = document.getElementById('searchBox');
  if (!searchInput) return;

  searchInput.addEventListener('input', (e) => {
    currentSearchTerm = e.target.value.toLowerCase().trim();
    filterMobs();
  });
}

/**
 * Mostra modal com detalhes do mob
 * @param {number} mobId - ID do mob
 */
async function showMobDetails(mobId) {
  const modal = document.getElementById('mobModal');
  const modalContent = document.getElementById('mobModalContent');

  try {
    // Mostra modal com loading
    modal.style.display = 'flex';
    modalContent.innerHTML = '<div class="loading-message">Carregando detalhes...</div>';

    // Busca detalhes do mob
    const response = await fetch(apiUrl(`mob_details.php?id=${mobId}`));
    if (!response.ok) throw new Error('Erro ao buscar detalhes');

    const data = await response.json();

    if (!data.success || !data.mob) {
      throw new Error('Mob não encontrado');
    }

    const mob = data.mob;

    // Renderiza o conteúdo do modal
    modalContent.innerHTML = `
      <div class="mob-modal-header">
        <img
          src="${assetUrl(`icons/${mob.icon}`)}"
          alt="${escapeHtml(mob.name)}"
          class="mob-modal-icon"
        />
        <div class="mob-modal-title-group">
          <h2 id="mobModalTitle" class="mob-modal-title">${escapeHtml(mob.name)}</h2>
          <span class="mob-type mob-type-${mob.type}">${mob.type_name}</span>
        </div>
      </div>

      <div class="mob-modal-body">
        <!-- Descrição -->
        <div class="mob-modal-section">
          <h3>Descrição</h3>
          <p>${escapeHtml(mob.description)}</p>
        </div>

        <!-- Estatísticas -->
        <div class="mob-modal-section">
          <h3>Estatísticas</h3>
          <div class="mob-stats-grid">
            <div class="stat-item">
              <span class="stat-label">❤ Vida</span>
              <span class="stat-value">${mob.health}</span>
            </div>
            ${mob.attack_damage ? `
              <div class="stat-item">
                <span class="stat-label">⚔ Ataque</span>
                <span class="stat-value">${mob.attack_damage}</span>
              </div>
            ` : '<div class="stat-item"><span class="stat-label">⚔ Ataque</span><span class="stat-value">Não ataca</span></div>'}
            <div class="stat-item">
              <span class="stat-label">⚠ Perigo</span>
              <span class="stat-value ${mob.is_dangerous ? 'text-danger' : 'text-success'}">
                ${mob.is_dangerous ? 'Perigoso' : 'Seguro'}
              </span>
            </div>
          </div>
        </div>

        <!-- Drops -->
        ${mob.drops && mob.drops.length > 0 ? `
          <div class="mob-modal-section">
            <h3>Drops (Itens que dropa ao morrer)</h3>
            <ul class="mob-drops-list">
              ${mob.drops.map(drop => `<li>${escapeHtml(drop)}</li>`).join('')}
            </ul>
          </div>
        ` : ''}

        <!-- Localização -->
        ${mob.spawn_location ? `
          <div class="mob-modal-section">
            <h3>Onde encontrar</h3>
            <p>${escapeHtml(mob.spawn_location)}</p>
          </div>
        ` : ''}
      </div>
    `;

  } catch (error) {
    console.error('Erro ao buscar detalhes do mob:', error);
    modalContent.innerHTML = '<div class="error-message">Erro ao carregar detalhes do mob.</div>';
  }
}

/**
 * Fecha o modal
 */
function closeMobModal() {
  const modal = document.getElementById('mobModal');
  modal.style.display = 'none';
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
  await fetchMobs();

  // Event listeners do modal
  const closeBtn = document.getElementById('closeMobModal');
  const overlay = document.getElementById('mobModalOverlay');

  if (closeBtn) {
    closeBtn.addEventListener('click', closeMobModal);
  }

  if (overlay) {
    overlay.addEventListener('click', closeMobModal);
  }

  // Fecha modal com ESC
  document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') {
      closeMobModal();
    }
  });
}

// Exporta função para uso global (onclick nos botões)
window.showMobDetails = showMobDetails;

// Inicia quando o DOM estiver pronto
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', init);
} else {
  init();
}
