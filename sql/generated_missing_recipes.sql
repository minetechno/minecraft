-- ============================================================================
-- RECEITAS FALTANTES - Gerado automaticamente de dados oficiais do Minecraft
-- Data: 2025-10-20 20:43:53
-- Total: 46 receitas
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- Corante Preto (black_dye)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'black_dye';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'ink_sac'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'ink_sac'), 1);

-- Blaze Powder (blaze_powder)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'blaze_powder';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'blaze_rod'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'blaze_rod'), 1);

-- Corante Azul (blue_dye)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'blue_dye';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'lapis_lazuli'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'lapis_lazuli'), 1);

-- Tigela (bowl)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'bowl';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 3);

-- Pão (bread)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'bread';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'wheat'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'wheat'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'wheat'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wheat'), 3);

-- Tijolo (bricks)
-- SKIPPED: Ingredientes não existem no banco

-- Corante Marrom (brown_dye)
-- SKIPPED: Ingredientes não existem no banco

-- Bolo (cake)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'cake';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'milk_bucket'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'milk_bucket'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'milk_bucket'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'sugar'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'egg'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'sugar'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'wheat'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'wheat'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'wheat'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'milk_bucket'), 3),
(@recipe_id, (SELECT id FROM items WHERE slug = 'sugar'), 2),
(@recipe_id, (SELECT id FROM items WHERE slug = 'egg'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'wheat'), 3);

-- Carvão (coal)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'coal';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'coal_block'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'coal_block'), 1);

-- Bloco de Carvão (coal_block)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'coal_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'coal'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'coal'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'coal'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'coal'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'coal'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'coal'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'coal'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'coal'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'coal'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'coal'), 9);

-- Biscoito (cookie)
-- SKIPPED: Ingredientes não existem no banco

-- Corante Ciano (cyan_dye)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'cyan_dye';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'blue_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'green_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'blue_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'green_dye'), 1);

-- Diamante (diamond)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'diamond';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'diamond_block'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'diamond_block'), 1);

-- Bloco de Diamante (diamond_block)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'diamond_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'diamond'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'diamond'), 9);

-- Esmeralda (emerald)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'emerald';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'emerald_block'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'emerald_block'), 1);

-- Pederneira e Aço (flint_and_steel)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'flint_and_steel';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'flint'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'flint'), 1);

-- Painel de Vidro (glass_pane)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'glass_pane';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 6);

-- Pedra Luminosa (glowstone)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'glowstone';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glowstone_dust'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glowstone_dust'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glowstone_dust'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'glowstone_dust'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glowstone_dust'), 4);

-- Bloco de Ouro (gold_block)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'gold_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gold_ingot'), 9);

-- Barra de Ouro (gold_ingot)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'gold_ingot';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'gold_block'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gold_block'), 1);

-- Corante Cinza (gray_dye)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'gray_dye';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'black_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'white_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'white_dye'), 1);

-- Bloco de Ferro (iron_block)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'iron_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 9);

-- Barra de Ferro (iron_ingot)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'iron_ingot';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'iron_block'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_block'), 1);

-- Lápis-Lazúli (lapis_lazuli)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'lapis_lazuli';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'lapis_block'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'lapis_block'), 1);

-- Couro (leather)
-- SKIPPED: Ingredientes não existem no banco

-- Armadura de Couro para Cavalo (leather_horse_armor)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'leather_horse_armor';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'leather'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'leather'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'leather'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'leather'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'leather'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'leather'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'leather'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'leather'), 7);

-- Corante Azul Claro (light_blue_dye)
-- SKIPPED: Ingredientes não existem no banco

-- Corante Cinza Claro (light_gray_dye)
-- SKIPPED: Ingredientes não existem no banco

-- Corante Verde Limão (lime_dye)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'lime_dye';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'green_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'white_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'green_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'white_dye'), 1);

-- Corante Magenta (magenta_dye)
-- SKIPPED: Ingredientes não existem no banco

-- Melancia (melon)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'melon';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'melon_slice'), 9);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'melon_slice'), 9);

-- Ensopado de Cogumelos (mushroom_stew)
-- SKIPPED: Ingredientes não existem no banco

-- Corante Laranja (orange_dye)
-- SKIPPED: Ingredientes não existem no banco

-- Papel (paper)
-- SKIPPED: Ingredientes não existem no banco

-- Corante Rosa (pink_dye)
-- SKIPPED: Ingredientes não existem no banco

-- Corante Roxo (purple_dye)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'purple_dye';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'blue_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'red_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'blue_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'red_dye'), 1);

-- Corante Vermelho (red_dye)
-- SKIPPED: Ingredientes não existem no banco

-- Redstone (redstone)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'redstone';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'redstone_block'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone_block'), 1);

-- Slime (slime_ball)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'slime_ball';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'slime_block'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'slime_block'), 1);

-- Bloco de Slime (slime_block)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'slime_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'slime_ball'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'slime_ball'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'slime_ball'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'slime_ball'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'slime_ball'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'slime_ball'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'slime_ball'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'slime_ball'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'slime_ball'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'slime_ball'), 9);

-- Graveto (stick)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'stick';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 2);

-- Pistão Grudento (sticky_piston)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'sticky_piston';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'slime_ball'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'piston'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'slime_ball'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'piston'), 1);

-- Açúcar (sugar)
-- SKIPPED: Ingredientes não existem no banco

-- Trigo (wheat)
-- SKIPPED: Ingredientes não existem no banco

-- Corante Branco (white_dye)
-- SKIPPED: Ingredientes não existem no banco

-- Corante Amarelo (yellow_dye)
-- SKIPPED: Ingredientes não existem no banco

SELECT '✓ 30 receitas adicionadas!' as Status;
