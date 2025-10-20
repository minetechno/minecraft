-- ============================================================================
-- ADICIONAR RECEITAS FALTANTES PART 4 - Tapetes, Vidros, Blocos Restantes
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- TAPETES COLORIDOS RESTANTES (2 lãs = 1 tapete) ---------------------------

-- Tapete Preto
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'black_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'black_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 2);

-- Tapete Marrom
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'brown_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'brown_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'brown_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'brown_wool'), 2);

-- Tapete Ciano
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'cyan_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'cyan_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'cyan_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'cyan_wool'), 2);

-- Tapete Cinza
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'gray_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'gray_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'gray_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gray_wool'), 2);

-- Tapete Verde
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'green_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'green_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'green_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'green_wool'), 2);

-- Tapete Azul Claro
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'light_blue_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'light_blue_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'light_blue_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'light_blue_wool'), 2);

-- Tapete Cinza Claro
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'light_gray_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'light_gray_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'light_gray_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'light_gray_wool'), 2);

-- Tapete Verde Limão
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'lime_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'lime_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'lime_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'lime_wool'), 2);

-- Tapete Magenta
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'magenta_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'magenta_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'magenta_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'magenta_wool'), 2);

-- Tapete Rosa
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'pink_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'pink_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'pink_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'pink_wool'), 2);

-- Tapete Roxo
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'purple_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'purple_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'purple_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'purple_wool'), 2);

-- Tapete Amarelo
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'yellow_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'yellow_wool'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'yellow_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'yellow_wool'), 2);

-- VIDROS COLORIDOS RESTANTES (8 vidros + 1 corante) ------------------------

-- Vidro Preto
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'black_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_dye'), 1);

-- Vidro Marrom
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'brown_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'brown_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'brown_dye'), 1);

-- Vidro Ciano
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'cyan_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'cyan_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'cyan_dye'), 1);

-- Vidro Cinza
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'gray_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'gray_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'gray_dye'), 1);

-- Vidro Verde
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'green_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'green_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'green_dye'), 1);

-- Vidro Azul Claro
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'light_blue_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'light_blue_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'light_blue_dye'), 1);

-- Vidro Cinza Claro
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'light_gray_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'light_gray_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'light_gray_dye'), 1);

-- Vidro Verde Limão
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'lime_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'lime_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'lime_dye'), 1);

-- Vidro Magenta
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'magenta_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'magenta_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'magenta_dye'), 1);

-- Vidro Rosa
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'pink_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'pink_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'pink_dye'), 1);

-- Vidro Roxo
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'purple_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'purple_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'purple_dye'), 1);

-- Vidro Branco
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'white_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'white_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'white_dye'), 1);

-- Vidro Amarelo
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'yellow_stained_glass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'yellow_dye'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'glass'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'yellow_dye'), 1);

SELECT '✓ Tapetes e vidros coloridos restantes adicionados!' as Status;
