-- ============================================================================
-- ADICIONAR RECEITAS FALTANTES PART 5 - Madeiras, Blocos de Pedra, Redstone
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- TÁBUAS DE MADEIRA (1 tronco = 4 tábuas) -----------------------------------

-- Tábuas de Selva
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'jungle_planks';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'jungle_log'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'jungle_log'), 1);

-- Tábuas de Acácia
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'acacia_planks';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'acacia_log'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'acacia_log'), 1);

-- Tábuas de Carvalho Escuro
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'dark_oak_planks';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'dark_oak_log'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'dark_oak_log'), 1);

-- BLOCOS DE QUARTZO --------------------------------------------------------

-- Pilar de Quartzo (2 blocos de quartzo)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'quartz_pillar';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'quartz_block'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'quartz_block'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'quartz_block'), 2);

-- Quartzo Entalhado (2 lajes de quartzo)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'chiseled_quartz_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'quartz_slab'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'quartz_slab'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'quartz_slab'), 2);

-- BLOCOS DE ARENITO --------------------------------------------------------

-- Arenito (4 areias)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'sandstone';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'sand'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'sand'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'sand'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'sand'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'sand'), 4);

-- Arenito Liso (4 arenitos normais) - ou pode ser feito no forno
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'smooth_sandstone';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'sandstone'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'sandstone'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'sandstone'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'sandstone'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'sandstone'), 4);

-- Arenito Entalhado (2 lajes de arenito) - requer arenito normal primeiro
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'chiseled_sandstone';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'stone_slab'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'stone_slab'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'stone_slab'), 2);

-- BLOCOS DE PEDRA ----------------------------------------------------------

-- Pedra Lisa (pedra normal no forno, mas vamos simplificar)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'smooth_stone';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'cobblestone'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 1);

-- Tijolos de Pedra (4 pedras)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'stone_bricks';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'cobblestone'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 4);

-- Pedra Musgosa (pedra + trepadeira/musgo)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'mossy_cobblestone';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wheat_seeds'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'wheat_seeds'), 1);

-- Tijolos de Pedra Musgosos (tijolos + trepadeira)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'mossy_stone_bricks';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'stone_bricks'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wheat_seeds'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'stone_bricks'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'wheat_seeds'), 1);

-- REDSTONE AVANÇADO --------------------------------------------------------

-- Observador (6 pedras + 2 redstone + 1 quartzo)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'observer';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'quartz'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'cobblestone'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 6),
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone'), 2),
(@recipe_id, (SELECT id FROM items WHERE slug = 'quartz'), 1);

-- Liberador (7 pedras + 1 redstone)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'dropper';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'cobblestone'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 7),
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone'), 1);

-- Lâmpada de Redstone (4 redstone + 1 pedra luminosa)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'redstone_lamp';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'glowstone'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'redstone'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone'), 4),
(@recipe_id, (SELECT id FROM items WHERE slug = 'glowstone'), 1);

SELECT '✓ Madeiras, blocos de pedra e redstone adicionados!' as Status;
