-- ============================================
-- Minecraft Crafts - Dados Iniciais
-- ============================================

USE minecraft_site;

-- Limpar dados anteriores (se existirem)
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE ingredients_flat;
TRUNCATE TABLE recipe_grid;
TRUNCATE TABLE recipes;
TRUNCATE TABLE items;
SET FOREIGN_KEY_CHECKS = 1;

-- ============================================
-- ITENS BASE (Materiais)
-- ============================================

INSERT INTO items (id, name, slug, description, icon, category) VALUES
(1, 'Graveto', 'stick', 'Um graveto simples de madeira, usado como cabo para ferramentas.', 'stick.svg', 'material'),
(2, 'Tronco de Madeira', 'wood_log', 'Tronco de madeira obtido ao cortar árvores.', 'wood_log.svg', 'material'),
(3, 'Tábuas de Madeira', 'planks', 'Tábuas processadas a partir de troncos de madeira.', 'planks.svg', 'material'),
(4, 'Pedra', 'cobblestone', 'Pedra comum encontrada ao minerar blocos de pedra.', 'cobblestone.svg', 'material'),
(5, 'Barra de Ferro', 'iron_ingot', 'Barra de ferro fundida a partir de minério.', 'iron_ingot.svg', 'material'),
(6, 'Barra de Ouro', 'gold_ingot', 'Barra de ouro fundida a partir de minério.', 'gold_ingot.svg', 'material'),
(7, 'Diamante', 'diamond', 'Gema rara encontrada nas profundezas.', 'diamond.svg', 'material');

-- ============================================
-- ITENS CRAFTÁVEIS (Ferramentas/Armas)
-- ============================================

INSERT INTO items (id, name, slug, description, icon, category) VALUES
(8, 'Picareta de Madeira', 'wooden_pickaxe', 'Uma picareta básica feita de madeira. Ideal para começar a minerar.', 'wooden_pickaxe.svg', 'tool'),
(9, 'Espada de Pedra', 'stone_sword', 'Espada feita de pedra. Boa para combate inicial.', 'stone_sword.svg', 'weapon'),
(10, 'Machado de Pedra', 'stone_axe', 'Machado de pedra para cortar madeira rapidamente.', 'stone_axe.svg', 'tool'),
(11, 'Pá de Ouro', 'golden_shovel', 'Pá feita de ouro. Muito rápida, mas pouco durável.', 'golden_shovel.svg', 'tool'),
(12, 'Espada de Ferro', 'iron_sword', 'Espada confiável de ferro, excelente para combate.', 'iron_sword.svg', 'weapon'),
(13, 'Machado de Diamante', 'diamond_axe', 'O machado mais durável e eficiente do jogo.', 'diamond_axe.svg', 'tool');

-- ============================================
-- RECEITAS (6 crafts)
-- ============================================

-- Receita 1: Picareta de Madeira (ID 8)
-- Grade 3x3:
-- [Tábua] [Tábua] [Tábua]
-- [  -  ] [Graveto] [  -  ]
-- [  -  ] [Graveto] [  -  ]
INSERT INTO recipes (id, item_id) VALUES (1, 8);

INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(1, 0, 0, 3, 1), -- Tábua
(1, 0, 1, 3, 1), -- Tábua
(1, 0, 2, 3, 1), -- Tábua
(1, 1, 0, NULL, 1), -- Vazio
(1, 1, 1, 1, 1), -- Graveto
(1, 1, 2, NULL, 1), -- Vazio
(1, 2, 0, NULL, 1), -- Vazio
(1, 2, 1, 1, 1), -- Graveto
(1, 2, 2, NULL, 1); -- Vazio

INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(1, 3, 3), -- 3 Tábuas
(1, 1, 2); -- 2 Gravetos

-- Receita 2: Espada de Pedra (ID 9)
-- [  -  ] [Pedra] [  -  ]
-- [  -  ] [Pedra] [  -  ]
-- [  -  ] [Graveto] [  -  ]
INSERT INTO recipes (id, item_id) VALUES (2, 9);

INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(2, 0, 0, NULL, 1),
(2, 0, 1, 4, 1), -- Pedra
(2, 0, 2, NULL, 1),
(2, 1, 0, NULL, 1),
(2, 1, 1, 4, 1), -- Pedra
(2, 1, 2, NULL, 1),
(2, 2, 0, NULL, 1),
(2, 2, 1, 1, 1), -- Graveto
(2, 2, 2, NULL, 1);

INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(2, 4, 2), -- 2 Pedras
(2, 1, 1); -- 1 Graveto

-- Receita 3: Machado de Pedra (ID 10)
-- [Pedra] [Pedra] [  -  ]
-- [Pedra] [Graveto] [  -  ]
-- [  -  ] [Graveto] [  -  ]
INSERT INTO recipes (id, item_id) VALUES (3, 10);

INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(3, 0, 0, 4, 1), -- Pedra
(3, 0, 1, 4, 1), -- Pedra
(3, 0, 2, NULL, 1),
(3, 1, 0, 4, 1), -- Pedra
(3, 1, 1, 1, 1), -- Graveto
(3, 1, 2, NULL, 1),
(3, 2, 0, NULL, 1),
(3, 2, 1, 1, 1), -- Graveto
(3, 2, 2, NULL, 1);

INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(3, 4, 3), -- 3 Pedras
(3, 1, 2); -- 2 Gravetos

-- Receita 4: Pá de Ouro (ID 11)
-- [  -  ] [Ouro] [  -  ]
-- [  -  ] [Graveto] [  -  ]
-- [  -  ] [Graveto] [  -  ]
INSERT INTO recipes (id, item_id) VALUES (4, 11);

INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(4, 0, 0, NULL, 1),
(4, 0, 1, 6, 1), -- Ouro
(4, 0, 2, NULL, 1),
(4, 1, 0, NULL, 1),
(4, 1, 1, 1, 1), -- Graveto
(4, 1, 2, NULL, 1),
(4, 2, 0, NULL, 1),
(4, 2, 1, 1, 1), -- Graveto
(4, 2, 2, NULL, 1);

INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(4, 6, 1), -- 1 Ouro
(4, 1, 2); -- 2 Gravetos

-- Receita 5: Espada de Ferro (ID 12)
-- [  -  ] [Ferro] [  -  ]
-- [  -  ] [Ferro] [  -  ]
-- [  -  ] [Graveto] [  -  ]
INSERT INTO recipes (id, item_id) VALUES (5, 12);

INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(5, 0, 0, NULL, 1),
(5, 0, 1, 5, 1), -- Ferro
(5, 0, 2, NULL, 1),
(5, 1, 0, NULL, 1),
(5, 1, 1, 5, 1), -- Ferro
(5, 1, 2, NULL, 1),
(5, 2, 0, NULL, 1),
(5, 2, 1, 1, 1), -- Graveto
(5, 2, 2, NULL, 1);

INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(5, 5, 2), -- 2 Ferros
(5, 1, 1); -- 1 Graveto

-- Receita 6: Machado de Diamante (ID 13)
-- [Diamante] [Diamante] [  -  ]
-- [Diamante] [Graveto] [  -  ]
-- [  -  ] [Graveto] [  -  ]
INSERT INTO recipes (id, item_id) VALUES (6, 13);

INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(6, 0, 0, 7, 1), -- Diamante
(6, 0, 1, 7, 1), -- Diamante
(6, 0, 2, NULL, 1),
(6, 1, 0, 7, 1), -- Diamante
(6, 1, 1, 1, 1), -- Graveto
(6, 1, 2, NULL, 1),
(6, 2, 0, NULL, 1),
(6, 2, 1, 1, 1), -- Graveto
(6, 2, 2, NULL, 1);

INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(6, 7, 3), -- 3 Diamantes
(6, 1, 2); -- 2 Gravetos
