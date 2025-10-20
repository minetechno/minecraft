-- ============================================================================
-- ADICIONAR RECEITAS FALTANTES PART 2 - Vidros, Tapetes, Blocos
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- VIDROS COLORIDOS (8 vidros + 1 corante = 8 vidros coloridos) --------------
-- Nota: No Minecraft essa receita produz 8 unidades, mas nosso schema não suporta quantity
-- Vamos fazer 1:1 por simplicidade

-- Vidro Laranja
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'orange_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'orange_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'orange_dye'), 1);

-- Vidro Azul
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'blue_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'blue_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'blue_dye'), 1);

-- Vidro Vermelho
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'red_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'red_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'red_dye'), 1);

-- TAPETES (2 lãs = 3 tapetes, simplificado para 2 lãs = 1 tapete) -----------

-- Tapete Branco (usando lã base)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'white_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 2);

-- Tapete Laranja
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'orange_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'orange_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'orange_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'orange_wool'), 2);

-- Tapete Azul
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'blue_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'blue_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'blue_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'blue_wool'), 2);

-- Tapete Vermelho
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'red_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'red_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'red_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'red_wool'), 2);

-- BLOCOS DE QUARTZO ---------------------------------------------------------

-- Bloco de Quartzo (4 quartzo = 1 bloco)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'quartz_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'quartz'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'quartz'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'quartz'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'quartz'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'quartz'), 4);

-- Escada de Quartzo (6 blocos de quartzo)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'quartz_stairs';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'quartz_block'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'quartz_block'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'quartz_block'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'quartz_block'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'quartz_block'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'quartz_block'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'quartz_block'), 6);

-- Laje de Quartzo (3 blocos de quartzo = 6 lajes, simplificado)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'quartz_slab';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'quartz_block'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'quartz_block'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'quartz_block'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'quartz_block'), 3);

-- TÁBUAS DE MADEIRA (1 tronco = 4 tábuas) -----------------------------------

-- Tábuas de Carvalho
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'oak_planks';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'oak_log'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_log'), 1);

-- Tábuas de Abeto
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'spruce_planks';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'spruce_log'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'spruce_log'), 1);

-- Tábuas de Bétula
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'birch_planks';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'birch_log'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'birch_log'), 1);

-- BLOCOS DE MATERIAL (9 itens = 1 bloco) ------------------------------------

-- Bloco de Esmeralda
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'emerald_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'emerald'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'emerald'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'emerald'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'emerald'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'emerald'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'emerald'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'emerald'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'emerald'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'emerald'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'emerald'), 9);

-- Bloco de Lápis-Lazúli
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'lapis_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'lapis_lazuli'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'lapis_lazuli'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'lapis_lazuli'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'lapis_lazuli'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'lapis_lazuli'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'lapis_lazuli'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'lapis_lazuli'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'lapis_lazuli'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'lapis_lazuli'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'lapis_lazuli'), 9);

-- Bloco de Redstone
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'redstone_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'redstone'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone'), 9);

SELECT '✓ Receitas de vidros, tapetes, quartzo, madeiras e blocos adicionadas!' as Status;
