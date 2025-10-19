-- ============================================
-- Minecraft Crafts - Expansão Massiva
-- Adiciona 60+ novas receitas
-- ============================================

USE minecraft_site;

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- ============================================
-- NOVOS MATERIAIS BASE
-- ============================================

INSERT INTO items (name, slug, description, icon, category) VALUES
('Couro', 'leather', 'Obtido de vacas, usado para fazer armaduras.', 'leather.svg', 'material'),
('Lã', 'wool', 'Obtida de ovelhas, usada para decoração.', 'wool.svg', 'material'),
('Corda', 'string', 'Obtida de aranhas, usada para arcos e lã.', 'string.svg', 'material'),
('Pena', 'feather', 'Obtida de galinhas, usada para fazer flechas.', 'feather.svg', 'material'),
('Pederneira', 'flint', 'Obtida ao cavar cascalho, usada para flechas.', 'flint.svg', 'material'),
('Redstone', 'redstone', 'Pó de redstone para circuitos elétricos.', 'redstone.svg', 'material'),
('Tinta', 'ink_sac', 'Obtida de lulas, usada para tingir.', 'ink_sac.svg', 'material'),
('Papel', 'paper', 'Feito de cana de açúcar, usado para livros.', 'paper.svg', 'material');

-- ============================================
-- ARMADURAS - CAPACETES (5)
-- ============================================

INSERT INTO items (name, slug, description, icon, category) VALUES
('Capacete de Couro', 'leather_helmet', 'Proteção básica para a cabeça.', 'leather_helmet.svg', 'armor'),
('Capacete de Ferro', 'iron_helmet', 'Boa proteção de ferro para a cabeça.', 'iron_helmet.svg', 'armor'),
('Capacete de Ouro', 'golden_helmet', 'Capacete de ouro reluzente.', 'golden_helmet.svg', 'armor'),
('Capacete de Diamante', 'diamond_helmet', 'Máxima proteção para a cabeça.', 'diamond_helmet.svg', 'armor');

-- ============================================
-- ARMADURAS - PEITORAIS (4)
-- ============================================

INSERT INTO items (name, slug, description, icon, category) VALUES
('Peitoral de Couro', 'leather_chestplate', 'Proteção básica para o tronco.', 'leather_chestplate.svg', 'armor'),
('Peitoral de Ferro', 'iron_chestplate', 'Boa proteção de ferro para o tronco.', 'iron_chestplate.svg', 'armor'),
('Peitoral de Ouro', 'golden_chestplate', 'Peitoral de ouro reluzente.', 'golden_chestplate.svg', 'armor'),
('Peitoral de Diamante', 'diamond_chestplate', 'Máxima proteção para o tronco.', 'diamond_chestplate.svg', 'armor');

-- ============================================
-- ARMADURAS - CALÇAS (4)
-- ============================================

INSERT INTO items (name, slug, description, icon, category) VALUES
('Calças de Couro', 'leather_leggings', 'Proteção básica para as pernas.', 'leather_leggings.svg', 'armor'),
('Calças de Ferro', 'iron_leggings', 'Boa proteção de ferro para as pernas.', 'iron_leggings.svg', 'armor'),
('Calças de Ouro', 'golden_leggings', 'Calças de ouro reluzentes.', 'golden_leggings.svg', 'armor'),
('Calças de Diamante', 'diamond_leggings', 'Máxima proteção para as pernas.', 'diamond_leggings.svg', 'armor');

-- ============================================
-- ARMADURAS - BOTAS (4)
-- ============================================

INSERT INTO items (name, slug, description, icon, category) VALUES
('Botas de Couro', 'leather_boots', 'Proteção básica para os pés.', 'leather_boots.svg', 'armor'),
('Botas de Ferro', 'iron_boots', 'Boa proteção de ferro para os pés.', 'iron_boots.svg', 'armor'),
('Botas de Ouro', 'golden_boots', 'Botas de ouro reluzentes.', 'golden_boots.svg', 'armor'),
('Botas de Diamante', 'diamond_boots', 'Máxima proteção para os pés.', 'diamond_boots.svg', 'armor');

-- ============================================
-- ARMAS E COMBATE
-- ============================================

INSERT INTO items (name, slug, description, icon, category) VALUES
('Arco', 'bow', 'Arma de longo alcance que dispara flechas.', 'bow.svg', 'weapon'),
('Flecha', 'arrow', 'Munição para arcos. Produz 4 flechas.', 'arrow.svg', 'weapon'),
('Escudo', 'shield', 'Bloqueia ataques inimigos.', 'shield.svg', 'weapon');

-- ============================================
-- BLOCOS E DECORAÇÃO
-- ============================================

INSERT INTO items (name, slug, description, icon, category) VALUES
('Laje de Madeira', 'wooden_slab', 'Meio bloco de madeira. Produz 6 lajes.', 'wooden_slab.svg', 'block'),
('Laje de Pedra', 'stone_slab', 'Meio bloco de pedra. Produz 6 lajes.', 'stone_slab.svg', 'block'),
('Escada de Pedra', 'stone_stairs', 'Escada decorativa de pedra. Produz 4.', 'stone_stairs.svg', 'block'),
('Portão de Cerca', 'fence_gate', 'Portão que abre e fecha.', 'fence_gate.svg', 'block'),
('Alçapão', 'trapdoor', 'Porta horizontal que abre e fecha.', 'trapdoor.svg', 'block'),
('Placa', 'sign', 'Permite escrever mensagens. Produz 3.', 'sign.svg', 'block'),
('Vidro', 'glass', 'Bloco transparente decorativo.', 'glass.svg', 'block'),
('Painel de Vidro', 'glass_pane', 'Painel fino de vidro. Produz 16.', 'glass_pane.svg', 'block'),
('Tijolo', 'bricks', 'Bloco decorativo de tijolos.', 'bricks.svg', 'block'),
('Estante de Livros', 'bookshelf', 'Estante decorativa que armazena livros.', 'bookshelf.svg', 'block');

-- ============================================
-- UTILIDADES E FERRAMENTAS
-- ============================================

INSERT INTO items (name, slug, description, icon, category) VALUES
('Cama', 'bed', 'Permite dormir e pular a noite.', 'bed.svg', 'tool'),
('Livro', 'book', 'Usado para encantar e escrever.', 'book.svg', 'tool'),
('Quadro', 'painting', 'Decoração de parede com pinturas.', 'painting.svg', 'tool'),
('Bússola', 'compass', 'Aponta para o ponto de spawn.', 'compass.svg', 'tool'),
('Relógio', 'clock', 'Mostra a hora do dia.', 'clock.svg', 'tool'),
('Vara de Pesca', 'fishing_rod', 'Usada para pescar.', 'fishing_rod.svg', 'tool'),
('Pederneira e Aço', 'flint_and_steel', 'Acende fogo e ativa portais.', 'flint_and_steel.svg', 'tool');

-- ============================================
-- REDSTONE E MECANISMOS
-- ============================================

INSERT INTO items (name, slug, description, icon, category) VALUES
('Botão de Madeira', 'wooden_button', 'Botão temporário de madeira.', 'wooden_button.svg', 'redstone'),
('Botão de Pedra', 'stone_button', 'Botão temporário de pedra.', 'stone_button.svg', 'redstone'),
('Placa de Pressão de Madeira', 'wooden_pressure_plate', 'Ativa ao pisar. Feita de madeira.', 'wooden_pressure_plate.svg', 'redstone'),
('Placa de Pressão de Pedra', 'stone_pressure_plate', 'Ativa ao pisar. Feita de pedra.', 'stone_pressure_plate.svg', 'redstone'),
('Alavanca', 'lever', 'Interruptor permanente de redstone.', 'lever.svg', 'redstone'),
('Tocha de Redstone', 'redstone_torch', 'Fonte permanente de sinal de redstone.', 'redstone_torch.svg', 'redstone'),
('Repetidor de Redstone', 'repeater', 'Atrasa e amplifica sinal de redstone.', 'repeater.svg', 'redstone'),
('Pistão', 'piston', 'Empurra blocos quando ativado.', 'piston.svg', 'redstone'),
('Pistão Grudento', 'sticky_piston', 'Empurra e puxa blocos.', 'sticky_piston.svg', 'redstone');

-- ============================================
-- TRANSPORTE
-- ============================================

INSERT INTO items (name, slug, description, icon, category) VALUES
('Barco', 'boat', 'Permite navegar na água.', 'boat.svg', 'transport'),
('Carrinho de Mina', 'minecart', 'Carrinho que anda em trilhos.', 'minecart.svg', 'transport'),
('Trilho', 'rail', 'Trilho para carrinhos. Produz 16.', 'rail.svg', 'transport'),
('Trilho Motorizado', 'powered_rail', 'Trilho que acelera carrinhos. Produz 6.', 'powered_rail.svg', 'transport'),
('Carrinho com Baú', 'chest_minecart', 'Carrinho que transporta itens.', 'chest_minecart.svg', 'transport'),
('Carrinho com Fornalha', 'furnace_minecart', 'Carrinho autopropelido.', 'furnace_minecart.svg', 'transport');

-- ============================================
-- ALIMENTOS
-- ============================================

INSERT INTO items (name, slug, description, icon, category) VALUES
('Pão', 'bread', 'Alimento básico feito de trigo.', 'bread.svg', 'food'),
('Bolo', 'cake', 'Sobremesa deliciosa com 7 fatias.', 'cake.svg', 'food'),
('Biscoito', 'cookie', 'Biscoito doce. Produz 8.', 'cookie.svg', 'food'),
('Tigela', 'bowl', 'Usada para ensopados.', 'bowl.svg', 'food'),
('Ensopado de Cogumelos', 'mushroom_stew', 'Ensopado nutritivo de cogumelos.', 'mushroom_stew.svg', 'food'),
('Melancia', 'melon', 'Bloco de melancia doce.', 'melon_block.svg', 'food');

-- ============================================
-- MATERIAIS CRAFTADOS
-- ============================================

INSERT INTO items (name, slug, description, icon, category) VALUES
('Bloco de Ferro', 'iron_block', 'Bloco compacto de ferro. Armazena 9 barras.', 'iron_block.svg', 'block'),
('Bloco de Ouro', 'gold_block', 'Bloco compacto de ouro. Armazena 9 barras.', 'gold_block.svg', 'block'),
('Bloco de Diamante', 'diamond_block', 'Bloco compacto de diamante. Armazena 9 gemas.', 'diamond_block.svg', 'block'),
('Bloco de Carvão', 'coal_block', 'Bloco compacto de carvão. Armazena 9 carvões.', 'coal_block.svg', 'block'),
('Slime', 'slime_ball', 'Bola de slime pegajosa.', 'slime_ball.svg', 'material'),
('Bloco de Slime', 'slime_block', 'Bloco que faz você quicar.', 'slime_block.svg', 'block'),
('Trigo', 'wheat', 'Cereal usado para fazer pão.', 'wheat.svg', 'material'),
('Cacau', 'cocoa', 'Usado para fazer biscoitos.', 'cocoa.svg', 'material'),
('Açúcar', 'sugar', 'Feito de cana de açúcar.', 'sugar.svg', 'material'),
('Ovo', 'egg', 'Obtido de galinhas.', 'egg.svg', 'material'),
('Leite', 'milk_bucket', 'Balde com leite de vaca.', 'milk_bucket.svg', 'material');

-- Continua na próxima parte...
