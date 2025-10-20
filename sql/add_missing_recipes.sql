-- ============================================================================
-- ADICIONAR RECEITAS FALTANTES - Versão 1.4.1
-- Receitas para itens que existem no Minecraft mas não foram cadastradas
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- LÃS COLORIDAS (lã branca + corante = lã colorida) ------------------------

-- Lã Branca (já existe a lã base 'wool', vamos criar receita para lã branca específica)
-- Nota: No Minecraft, lã branca é obtida de ovelhas, mas pode ser tingida

-- Lã Laranja (lã + corante laranja)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'orange_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'orange_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'orange_dye'), 1);

-- Lã Magenta
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'magenta_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'magenta_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'magenta_dye'), 1);

-- Lã Azul Claro
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'light_blue_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'light_blue_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'light_blue_dye'), 1);

-- Lã Amarela
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'yellow_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'yellow_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'yellow_dye'), 1);

-- Lã Verde Limão
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'lime_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'lime_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'lime_dye'), 1);

-- Lã Rosa
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'pink_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'pink_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'pink_dye'), 1);

-- Lã Cinza
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'gray_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'gray_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'gray_dye'), 1);

-- Lã Cinza Claro
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'light_gray_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'light_gray_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'light_gray_dye'), 1);

-- Lã Ciano
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'cyan_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'cyan_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'cyan_dye'), 1);

-- Lã Roxa
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'purple_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'purple_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'purple_dye'), 1);

-- Lã Azul
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'blue_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'blue_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'blue_dye'), 1);

-- Lã Marrom
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'brown_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'brown_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'brown_dye'), 1);

-- Lã Verde
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'green_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'green_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'green_dye'), 1);

-- Lã Vermelha
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'red_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'red_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'red_dye'), 1);

-- Lã Preta
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'black_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'black_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wool'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_dye'), 1);

SELECT '✓ 15 receitas de lãs coloridas adicionadas!' as Status;
