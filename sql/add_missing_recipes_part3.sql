-- ============================================================================
-- ADICIONAR RECEITAS FALTANTES PART 3 - Itens Especiais e Funcionais
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- ALIMENTOS ESPECIAIS -------------------------------------------------------

-- Maçã Dourada (8 barras de ouro + 1 maçã)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'golden_apple';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'apple'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gold_ingot'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'apple'), 1);

-- Cenoura Dourada (8 pepitas de ouro + 1 cenoura)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'golden_carrot';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'carrot'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gold_ingot'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'carrot'), 1);

-- BLOCOS FUNCIONAIS ---------------------------------------------------------

-- Bigorna (3 blocos de ferro + 4 barras de ferro)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'anvil';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'iron_block'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'iron_block'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'iron_block'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_block'), 3),
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 4);

-- Mesa de Encantamento (4 obsidianas + 2 diamantes + 1 livro)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'enchanting_table';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'book'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'obsidian'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'obsidian'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'obsidian'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'obsidian'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'book'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'diamond'), 2),
(@recipe_id, (SELECT id FROM items WHERE slug = 'obsidian'), 4);

-- Suporte para Poções (1 blaze rod + 3 pedras)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'brewing_stand';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'blaze_rod'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'cobblestone'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'blaze_rod'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 3);

-- Caldeirão (7 barras de ferro)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'cauldron';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 7);

-- REDSTONE AVANÇADO ---------------------------------------------------------

-- Comparador (3 tochas de redstone + 3 pedras + 1 quartzo)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'comparator';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'redstone_torch'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'redstone_torch'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'quartz'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'redstone_torch'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'cobblestone'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone_torch'), 3),
(@recipe_id, (SELECT id FROM items WHERE slug = 'quartz'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 3);

-- Funil (5 ferros + 1 baú)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'hopper';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'chest'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 5),
(@recipe_id, (SELECT id FROM items WHERE slug = 'chest'), 1);

-- Ejetor (7 pedras + 1 arco + 1 redstone)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'dispenser';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'bow'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'cobblestone'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 7),
(@recipe_id, (SELECT id FROM items WHERE slug = 'bow'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone'), 1);

-- OUTROS ITENS ESPECIAIS ----------------------------------------------------

-- Olho do Ender (1 pérola ender + 1 pó de blaze)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'ender_eye';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'ender_pearl'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'blaze_powder'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'ender_pearl'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'blaze_powder'), 1);

-- Cabresto (4 linhas + 1 slimeball - simplificado com string)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'lead';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'string'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'string'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'string'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'string'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'string'), 4);

SELECT '✓ Receitas especiais, funcionais e de redstone adicionadas!' as Status;
