-- ============================================
-- Minecraft Crafts - Receitas Adicionais
-- ============================================

USE minecraft_site;

-- ============================================
-- NOVOS ITENS (materiais e craftáveis)
-- ============================================

-- Ferramentas de Madeira
INSERT INTO items (name, slug, description, icon, category) VALUES
('Machado de Madeira', 'wooden_axe', 'Machado básico de madeira para cortar árvores.', 'wooden_axe.svg', 'tool'),
('Pá de Madeira', 'wooden_shovel', 'Pá de madeira para cavar terra e areia.', 'wooden_shovel.svg', 'tool'),
('Enxada de Madeira', 'wooden_hoe', 'Enxada de madeira para preparar terra de cultivo.', 'wooden_hoe.svg', 'tool'),
('Espada de Madeira', 'wooden_sword', 'Espada básica de madeira para iniciantes.', 'wooden_sword.svg', 'weapon');

-- Ferramentas de Pedra
INSERT INTO items (name, slug, description, icon, category) VALUES
('Picareta de Pedra', 'stone_pickaxe', 'Picareta de pedra, mais durável que madeira.', 'stone_pickaxe.svg', 'tool'),
('Pá de Pedra', 'stone_shovel', 'Pá de pedra para escavação eficiente.', 'stone_shovel.svg', 'tool'),
('Enxada de Pedra', 'stone_hoe', 'Enxada de pedra para agricultura.', 'stone_hoe.svg', 'tool');

-- Ferramentas de Ferro
INSERT INTO items (name, slug, description, icon, category) VALUES
('Picareta de Ferro', 'iron_pickaxe', 'Picareta de ferro, pode minerar diamantes.', 'iron_pickaxe.svg', 'tool'),
('Machado de Ferro', 'iron_axe', 'Machado de ferro para corte rápido de madeira.', 'iron_axe.svg', 'tool'),
('Pá de Ferro', 'iron_shovel', 'Pá de ferro muito eficiente.', 'iron_shovel.svg', 'tool'),
('Enxada de Ferro', 'iron_hoe', 'Enxada de ferro durável.', 'iron_hoe.svg', 'tool');

-- Ferramentas de Ouro
INSERT INTO items (name, slug, description, icon, category) VALUES
('Picareta de Ouro', 'golden_pickaxe', 'Picareta de ouro, muito rápida mas frágil.', 'golden_pickaxe.svg', 'tool'),
('Machado de Ouro', 'golden_axe', 'Machado de ouro extremamente rápido.', 'golden_axe.svg', 'tool'),
('Enxada de Ouro', 'golden_hoe', 'Enxada de ouro reluzente.', 'golden_hoe.svg', 'tool'),
('Espada de Ouro', 'golden_sword', 'Espada de ouro com baixa durabilidade.', 'golden_sword.svg', 'weapon');

-- Ferramentas de Diamante
INSERT INTO items (name, slug, description, icon, category) VALUES
('Picareta de Diamante', 'diamond_pickaxe', 'A melhor picareta, muito durável e rápida.', 'diamond_pickaxe.svg', 'tool'),
('Pá de Diamante', 'diamond_shovel', 'Pá de diamante, a mais eficiente.', 'diamond_shovel.svg', 'tool'),
('Enxada de Diamante', 'diamond_hoe', 'Enxada de diamante de alta qualidade.', 'diamond_hoe.svg', 'tool'),
('Espada de Diamante', 'diamond_sword', 'A espada mais poderosa do jogo.', 'diamond_sword.svg', 'weapon');

-- Blocos e Itens Especiais
INSERT INTO items (name, slug, description, icon, category) VALUES
('Mesa de Trabalho', 'crafting_table', 'Permite craftar itens complexos com grade 3x3.', 'crafting_table.svg', 'block'),
('Fornalha', 'furnace', 'Usada para fundir minérios e cozinhar comida.', 'furnace.svg', 'block'),
('Baú', 'chest', 'Armazena até 27 stacks de itens.', 'chest.svg', 'block'),
('Bastões', 'sticks', 'Pacote de 4 gravetos de uma vez.', 'sticks.svg', 'material'),
('Tocha', 'torch', 'Fonte de luz que evita spawn de mobs.', 'torch.svg', 'tool'),
('Carvão', 'coal', 'Combustível obtido ao minerar carvão mineral.', 'coal.svg', 'material'),
('Balde', 'bucket', 'Usado para transportar água, lava ou leite.', 'bucket.svg', 'tool'),
('Tesoura', 'shears', 'Corta lã de ovelhas e folhas de árvores.', 'shears.svg', 'tool'),
('Escada', 'ladder', 'Permite subir e descer verticalmente.', 'ladder.svg', 'block'),
('Cerca', 'fence', 'Cerca de madeira para delimitar áreas.', 'fence.svg', 'block'),
('Porta de Madeira', 'wooden_door', 'Porta que pode ser aberta e fechada.', 'wooden_door.svg', 'block');

-- ============================================
-- NOVAS RECEITAS
-- ============================================

-- ID atual dos itens (assumindo que os 6 primeiros crafts já existem, IDs 8-13)
-- Novos itens começam do ID 14

-- Receita 7: Machado de Madeira (ID 14)
INSERT INTO recipes (item_id) VALUES (14);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 3, 1), -- Tábua
(@recipe_id, 0, 1, 3, 1), -- Tábua
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, 3, 1), -- Tábua
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 3, 3), (@recipe_id, 1, 2);

-- Receita 8: Pá de Madeira (ID 15)
INSERT INTO recipes (item_id) VALUES (15);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, 3, 1), -- Tábua
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 3, 1), (@recipe_id, 1, 2);

-- Receita 9: Enxada de Madeira (ID 16)
INSERT INTO recipes (item_id) VALUES (16);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 3, 1), -- Tábua
(@recipe_id, 0, 1, 3, 1), -- Tábua
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 3, 2), (@recipe_id, 1, 2);

-- Receita 10: Espada de Madeira (ID 17)
INSERT INTO recipes (item_id) VALUES (17);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, 3, 1), -- Tábua
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 3, 1), -- Tábua
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 3, 2), (@recipe_id, 1, 1);

-- Receita 11: Picareta de Pedra (ID 18)
INSERT INTO recipes (item_id) VALUES (18);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 4, 1), -- Pedra
(@recipe_id, 0, 1, 4, 1), -- Pedra
(@recipe_id, 0, 2, 4, 1), -- Pedra
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 4, 3), (@recipe_id, 1, 2);

-- Receita 12: Pá de Pedra (ID 19)
INSERT INTO recipes (item_id) VALUES (19);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, 4, 1), -- Pedra
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 4, 1), (@recipe_id, 1, 2);

-- Receita 13: Enxada de Pedra (ID 20)
INSERT INTO recipes (item_id) VALUES (20);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 4, 1), -- Pedra
(@recipe_id, 0, 1, 4, 1), -- Pedra
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 4, 2), (@recipe_id, 1, 2);

-- Receita 14: Picareta de Ferro (ID 21)
INSERT INTO recipes (item_id) VALUES (21);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 5, 1), -- Ferro
(@recipe_id, 0, 1, 5, 1), -- Ferro
(@recipe_id, 0, 2, 5, 1), -- Ferro
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 5, 3), (@recipe_id, 1, 2);

-- Receita 15: Machado de Ferro (ID 22)
INSERT INTO recipes (item_id) VALUES (22);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 5, 1), -- Ferro
(@recipe_id, 0, 1, 5, 1), -- Ferro
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, 5, 1), -- Ferro
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 5, 3), (@recipe_id, 1, 2);

-- Receita 16: Pá de Ferro (ID 23)
INSERT INTO recipes (item_id) VALUES (23);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, 5, 1), -- Ferro
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 5, 1), (@recipe_id, 1, 2);

-- Receita 17: Enxada de Ferro (ID 24)
INSERT INTO recipes (item_id) VALUES (24);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 5, 1), -- Ferro
(@recipe_id, 0, 1, 5, 1), -- Ferro
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 5, 2), (@recipe_id, 1, 2);

-- Receita 18: Picareta de Ouro (ID 25)
INSERT INTO recipes (item_id) VALUES (25);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 6, 1), -- Ouro
(@recipe_id, 0, 1, 6, 1), -- Ouro
(@recipe_id, 0, 2, 6, 1), -- Ouro
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 6, 3), (@recipe_id, 1, 2);

-- Receita 19: Machado de Ouro (ID 26)
INSERT INTO recipes (item_id) VALUES (26);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 6, 1), -- Ouro
(@recipe_id, 0, 1, 6, 1), -- Ouro
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, 6, 1), -- Ouro
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 6, 3), (@recipe_id, 1, 2);

-- Receita 20: Enxada de Ouro (ID 27)
INSERT INTO recipes (item_id) VALUES (27);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 6, 1), -- Ouro
(@recipe_id, 0, 1, 6, 1), -- Ouro
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 6, 2), (@recipe_id, 1, 2);

-- Receita 21: Espada de Ouro (ID 28)
INSERT INTO recipes (item_id) VALUES (28);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, 6, 1), -- Ouro
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 6, 1), -- Ouro
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 6, 2), (@recipe_id, 1, 1);

-- Receita 22: Picareta de Diamante (ID 29)
INSERT INTO recipes (item_id) VALUES (29);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 7, 1), -- Diamante
(@recipe_id, 0, 1, 7, 1), -- Diamante
(@recipe_id, 0, 2, 7, 1), -- Diamante
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 7, 3), (@recipe_id, 1, 2);

-- Receita 23: Pá de Diamante (ID 30)
INSERT INTO recipes (item_id) VALUES (30);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, 7, 1), -- Diamante
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 7, 1), (@recipe_id, 1, 2);

-- Receita 24: Enxada de Diamante (ID 31)
INSERT INTO recipes (item_id) VALUES (31);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 7, 1), -- Diamante
(@recipe_id, 0, 1, 7, 1), -- Diamante
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 7, 2), (@recipe_id, 1, 2);

-- Receita 25: Espada de Diamante (ID 32)
INSERT INTO recipes (item_id) VALUES (32);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, 7, 1), -- Diamante
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 7, 1), -- Diamante
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, 1, 1), -- Graveto
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 7, 2), (@recipe_id, 1, 1);

-- Receita 26: Mesa de Trabalho (ID 33)
INSERT INTO recipes (item_id) VALUES (33);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 3, 1), -- Tábua
(@recipe_id, 0, 1, 3, 1), -- Tábua
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, 3, 1), -- Tábua
(@recipe_id, 1, 1, 3, 1), -- Tábua
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 3, 4);

-- Receita 27: Fornalha (ID 34)
INSERT INTO recipes (item_id) VALUES (34);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 4, 1), -- Pedra
(@recipe_id, 0, 1, 4, 1), -- Pedra
(@recipe_id, 0, 2, 4, 1), -- Pedra
(@recipe_id, 1, 0, 4, 1), -- Pedra
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, 4, 1), -- Pedra
(@recipe_id, 2, 0, 4, 1), -- Pedra
(@recipe_id, 2, 1, 4, 1), -- Pedra
(@recipe_id, 2, 2, 4, 1); -- Pedra
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 4, 8);

-- Receita 28: Baú (ID 35)
INSERT INTO recipes (item_id) VALUES (35);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 3, 1), -- Tábua
(@recipe_id, 0, 1, 3, 1), -- Tábua
(@recipe_id, 0, 2, 3, 1), -- Tábua
(@recipe_id, 1, 0, 3, 1), -- Tábua
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, 3, 1), -- Tábua
(@recipe_id, 2, 0, 3, 1), -- Tábua
(@recipe_id, 2, 1, 3, 1), -- Tábua
(@recipe_id, 2, 2, 3, 1); -- Tábua
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 3, 8);

-- Receita 29: Bastões (4 gravetos) (ID 36)
INSERT INTO recipes (item_id) VALUES (36);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, 3, 1), -- Tábua
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 3, 1), -- Tábua
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 3, 2);

-- Receita 30: Tocha (4 tochas) (ID 37) - precisa adicionar carvão como item primeiro
-- Será feita após criar o item carvão

-- Receita 31: Balde (ID 39)
INSERT INTO recipes (item_id) VALUES (39);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 5, 1), -- Ferro
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, 5, 1), -- Ferro
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 5, 1), -- Ferro
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 5, 3);

-- Receita 32: Tesoura (ID 40)
INSERT INTO recipes (item_id) VALUES (40);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, 5, 1), -- Ferro
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, 5, 1), -- Ferro
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 5, 2);

-- Receita 33: Escada (3 escadas) (ID 41)
INSERT INTO recipes (item_id) VALUES (41);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 1, 1), -- Graveto
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, 1, 1), -- Graveto
(@recipe_id, 1, 0, 1, 1), -- Graveto
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, 1, 1), -- Graveto
(@recipe_id, 2, 0, 1, 1), -- Graveto
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, 1, 1); -- Graveto
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 7);

-- Receita 34: Cerca (3 cercas) (ID 42)
INSERT INTO recipes (item_id) VALUES (42);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 3, 1), -- Tábua
(@recipe_id, 0, 1, 1, 1), -- Graveto
(@recipe_id, 0, 2, 3, 1), -- Tábua
(@recipe_id, 1, 0, 3, 1), -- Tábua
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, 3, 1), -- Tábua
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 3, 4), (@recipe_id, 1, 2);

-- Receita 35: Porta de Madeira (ID 43)
INSERT INTO recipes (item_id) VALUES (43);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, 3, 1), -- Tábua
(@recipe_id, 0, 1, 3, 1), -- Tábua
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, 3, 1), -- Tábua
(@recipe_id, 1, 1, 3, 1), -- Tábua
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, 3, 1), -- Tábua
(@recipe_id, 2, 1, 3, 1), -- Tábua
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 3, 6);

-- Adicionar Tocha agora (precisa carvão - ID 38)
-- Receita 30: Tocha (4 tochas) (ID 37)
INSERT INTO recipes (item_id) VALUES (37);
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, 38, 1), -- Carvão (ID 38)
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, 1, 1), -- Graveto
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, 38, 1), (@recipe_id, 1, 1);
