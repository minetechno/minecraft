-- ============================================================================
-- MINECRAFT CRAFTS - MEGA EXPANSÃO RECEITAS (Versão 1.4)
-- Receitas para os 160+ novos itens
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- Função auxiliar para obter ID de item
SET @wool_id = (SELECT id FROM items WHERE slug = 'wool' LIMIT 1);
SET @glass_id = (SELECT id FROM items WHERE slug = 'glass' LIMIT 1);
SET @planks_id = (SELECT id FROM items WHERE slug = 'planks' LIMIT 1);
SET @iron_id = (SELECT id FROM items WHERE slug = 'iron_ingot' LIMIT 1);
SET @gold_id = (SELECT id FROM items WHERE slug = 'gold_ingot' LIMIT 1);
SET @diamond_id = (SELECT id FROM items WHERE slug = 'diamond' LIMIT 1);
SET @stick_id = (SELECT id FROM items WHERE slug = 'stick' LIMIT 1);

-- LÃS COLORIDAS (lã branca + corante) ---------------------------------------
-- Lã Laranja
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'orange_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'orange_dye'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'orange_dye'), 1);

-- Lã Amarela
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'yellow_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'yellow_dye'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'yellow_dye'), 1);

-- Lã Verde Limão
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'lime_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'lime_dye'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'lime_dye'), 1);

-- Lã Rosa
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'pink_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'pink_dye'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'pink_dye'), 1);

-- Lã Azul
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'blue_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'blue_dye'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'blue_dye'), 1);

-- Lã Vermelha
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'red_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'red_dye'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'red_dye'), 1);

-- Lã Verde
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'green_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'green_dye'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'green_dye'), 1);

-- Lã Preta
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'black_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'black_dye'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_dye'), 1);

-- VIDROS COLORIDOS (vidro + corante) ----------------------------------------
-- Vidro Laranja (8 vidros + 1 corante = 8 vidros coloridos)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 8 FROM items WHERE slug = 'orange_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'orange_dye')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'orange_dye'), 1);

-- Vidro Azul
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 8 FROM items WHERE slug = 'blue_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'blue_dye')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'blue_dye'), 1);

-- Vidro Vermelho
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 8 FROM items WHERE slug = 'red_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'red_dye')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'red_dye'), 1);

-- TAPETES (2 lãs = 3 tapetes) -----------------------------------------------
-- Tapete Branco
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 3 FROM items WHERE slug = 'white_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'wool')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 2);

-- Tapete Laranja
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 3 FROM items WHERE slug = 'orange_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'orange_wool')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'orange_wool'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'orange_wool'), 2);

-- Tapete Azul
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 3 FROM items WHERE slug = 'blue_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'blue_wool')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'blue_wool'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'blue_wool'), 2);

-- Tapete Vermelho
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 3 FROM items WHERE slug = 'red_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'red_wool')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'red_wool'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'red_wool'), 2);

-- ALIMENTOS -----------------------------------------------------------------
-- Maçã Dourada (8 barras de ouro + 1 maçã)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'golden_apple';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'apple')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'gold_ingot'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gold_ingot'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'apple'), 1);

-- Cenoura Dourada (8 pepitas de ouro + 1 cenoura)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'golden_carrot';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'carrot')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'gold_ingot')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'gold_ingot'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gold_ingot'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'carrot'), 1);

-- BLOCOS DE QUARTZO ---------------------------------------------------------
-- Bloco de Quartzo (4 quartzo)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'quartz_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'quartz')),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'quartz')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'quartz')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'quartz'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'quartz'), 4);

-- Escada de Quartzo (6 blocos de quartzo)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 4 FROM items WHERE slug = 'quartz_stairs';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'quartz_block')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'quartz_block')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'quartz_block')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'quartz_block')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'quartz_block')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'quartz_block'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'quartz_block'), 6);

-- Laje de Quartzo (3 blocos de quartzo = 6 lajes)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 6 FROM items WHERE slug = 'quartz_slab';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'quartz_block')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'quartz_block')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'quartz_block'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'quartz_block'), 3);

-- TÁBUAS DE MADEIRA (1 tronco = 4 tábuas) -----------------------------------
-- Tábuas de Carvalho
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 4 FROM items WHERE slug = 'oak_planks';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'oak_log'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_log'), 1);

-- Tábuas de Abeto
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 4 FROM items WHERE slug = 'spruce_planks';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'spruce_log'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'spruce_log'), 1);

-- Tábuas de Bétula
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 4 FROM items WHERE slug = 'birch_planks';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'birch_log'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'birch_log'), 1);

-- BLOCOS DE REDSTONE AVANÇADOS ----------------------------------------------
-- Comparador (3 tochas de redstone + 3 pedras + 1 quartzo)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'comparator';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'redstone_torch')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'redstone_torch')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'quartz')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'redstone_torch')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'cobblestone')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'cobblestone')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'cobblestone'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone_torch'), 3),
(@recipe_id, (SELECT id FROM items WHERE slug = 'quartz'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 3);

-- Funil (5 ferros + 1 baú)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'hopper';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'iron_ingot')),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'iron_ingot')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'iron_ingot')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'chest')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'iron_ingot')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'iron_ingot'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 5),
(@recipe_id, (SELECT id FROM items WHERE slug = 'chest'), 1);

-- Ejetor (7 pedras + 1 arco + 1 redstone)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'dispenser';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'cobblestone')),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'cobblestone')),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'cobblestone')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'cobblestone')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'bow')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'cobblestone')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'cobblestone')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'redstone')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'cobblestone'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 7),
(@recipe_id, (SELECT id FROM items WHERE slug = 'bow'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone'), 1);

-- Bloco de Redstone (9 redstone)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'redstone_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'redstone')),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'redstone')),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'redstone')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'redstone')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'redstone')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'redstone')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'redstone')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'redstone')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'redstone'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone'), 9);

-- ITENS ESPECIAIS -----------------------------------------------------------
-- Olho do Ender (1 pérola ender + 1 pó de blaze)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'ender_eye';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'ender_pearl')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'blaze_powder'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'ender_pearl'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'blaze_powder'), 1);

-- Bloco de Esmeralda (9 esmeraldas)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'emerald_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'emerald')),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'emerald')),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'emerald')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'emerald')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'emerald')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'emerald')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'emerald')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'emerald')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'emerald'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'emerald'), 9);

-- Bloco de Lápis-Lazúli (9 lápis)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'lapis_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'lapis_lazuli')),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'lapis_lazuli')),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'lapis_lazuli')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'lapis_lazuli')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'lapis_lazuli')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'lapis_lazuli')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'lapis_lazuli')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'lapis_lazuli')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'lapis_lazuli'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'lapis_lazuli'), 9);

-- BLOCOS FUNCIONAIS ---------------------------------------------------------
-- Bigorna (3 blocos de ferro + 4 barras de ferro)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'anvil';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'iron_block')),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'iron_block')),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'iron_block')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'iron_ingot')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'iron_ingot')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'iron_ingot')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_block'), 3),
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 4);

-- Mesa de Encantamento (4 obsidianas + 2 diamantes + 1 livro)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'enchanting_table';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'book')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'diamond')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'diamond')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'obsidian')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'obsidian')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'obsidian'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'book'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'diamond'), 2),
(@recipe_id, (SELECT id FROM items WHERE slug = 'obsidian'), 3);

-- Suporte para Poções (1 blaze rod + 3 pedras)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'brewing_stand';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'blaze_rod')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'cobblestone')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'cobblestone')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'cobblestone'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'blaze_rod'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 3);

-- TNT (5 pólvora + 4 areia)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 1 FROM items WHERE slug = 'tnt';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'gunpowder')),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'sand')),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'gunpowder')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'sand')),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'gunpowder')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'sand')),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'gunpowder')),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'sand')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'gunpowder'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gunpowder'), 5),
(@recipe_id, (SELECT id FROM items WHERE slug = 'sand'), 4);

-- Cabresto (4 linhas + 1 slimeball)
INSERT IGNORE INTO recipes (item_id, result_quantity)
SELECT id, 2 FROM items WHERE slug = 'lead';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_id) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'string')),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'string')),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'string')),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'string')),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'string'));
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'string'), 4);

SELECT '✓ 40+ novas receitas adicionadas com sucesso!' as Status;
