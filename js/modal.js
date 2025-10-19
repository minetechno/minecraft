/**
 * Controle do Modal
 */

/**
 * Abre o modal
 * @param {string} modalId - ID do elemento modal
 */
export function openModal(modalId = 'craftModal') {
  const modal = document.getElementById(modalId);
  if (modal) {
    modal.classList.add('is-open');
    modal.setAttribute('aria-hidden', 'false');
    document.body.style.overflow = 'hidden'; // Previne scroll do body
  }
}

/**
 * Fecha o modal
 * @param {string} modalId - ID do elemento modal
 */
export function closeModal(modalId = 'craftModal') {
  const modal = document.getElementById(modalId);
  if (modal) {
    modal.classList.remove('is-open');
    modal.setAttribute('aria-hidden', 'true');
    document.body.style.overflow = ''; // Restaura scroll do body
  }
}

/**
 * Inicializa os event listeners do modal
 * @param {string} modalId - ID do elemento modal
 */
export function initModal(modalId = 'craftModal') {
  const modal = document.getElementById(modalId);
  if (!modal) return;

  // Botão fechar (X)
  const closeButton = modal.querySelector('.modal-close');
  if (closeButton) {
    closeButton.addEventListener('click', () => closeModal(modalId));
  }

  // Clique no overlay
  const overlay = modal.querySelector('.modal-overlay');
  if (overlay) {
    overlay.addEventListener('click', () => closeModal(modalId));
  }

  // Tecla ESC
  document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape' && modal.classList.contains('is-open')) {
      closeModal(modalId);
    }
  });

  // Previne fechar ao clicar dentro do container
  const container = modal.querySelector('.modal-container');
  if (container) {
    container.addEventListener('click', (e) => {
      e.stopPropagation();
    });
  }
}
