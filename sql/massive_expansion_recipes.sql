-- ============================================
-- Minecraft Crafts - Receitas da Expansão Massiva
-- ============================================

USE minecraft_site;

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- Obter IDs dos materiais base
SET @leather_id = (SELECT id FROM items WHERE slug = 'leather');
SET @iron_id = (SELECT id FROM items WHERE slug = 'iron_ingot');
SET @gold_id = (SELECT id FROM items WHERE slug = 'gold_ingot');
SET @diamond_id = (SELECT id FROM items WHERE slug = 'diamond');
SET @stick_id = (SELECT id FROM items WHERE slug = 'stick');
SET @plank_id = (SELECT id FROM items WHERE slug = 'planks');
SET @stone_id = (SELECT id FROM items WHERE slug = 'cobblestone');
SET @wool_id = (SELECT id FROM items WHERE slug = 'wool');
SET @string_id = (SELECT id FROM items WHERE slug = 'string');
SET @feather_id = (SELECT id FROM items WHERE slug = 'feather');
SET @flint_id = (SELECT id FROM items WHERE slug = 'flint');
SET @redstone_id = (SELECT id FROM items WHERE slug = 'redstone');
SET @paper_id = (SELECT id FROM items WHERE slug = 'paper');

-- ============================================
-- ARMADURAS - CAPACETES
-- ============================================

-- Capacete de Couro (ID variável)
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'leather_helmet';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @leather_id, 1),
(@recipe_id, 0, 1, @leather_id, 1),
(@recipe_id, 0, 2, @leather_id, 1),
(@recipe_id, 1, 0, @leather_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @leather_id, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @leather_id, 5);

-- Capacete de Ferro
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'iron_helmet';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @iron_id, 1),
(@recipe_id, 0, 1, @iron_id, 1),
(@recipe_id, 0, 2, @iron_id, 1),
(@recipe_id, 1, 0, @iron_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @iron_id, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @iron_id, 5);

-- Capacete de Ouro
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'golden_helmet';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @gold_id, 1),
(@recipe_id, 0, 1, @gold_id, 1),
(@recipe_id, 0, 2, @gold_id, 1),
(@recipe_id, 1, 0, @gold_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @gold_id, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @gold_id, 5);

-- Capacete de Diamante
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'diamond_helmet';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @diamond_id, 1),
(@recipe_id, 0, 1, @diamond_id, 1),
(@recipe_id, 0, 2, @diamond_id, 1),
(@recipe_id, 1, 0, @diamond_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @diamond_id, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @diamond_id, 5);

-- ============================================
-- ARMADURAS - PEITORAIS
-- ============================================

-- Peitoral de Couro
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'leather_chestplate';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @leather_id, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, @leather_id, 1),
(@recipe_id, 1, 0, @leather_id, 1),
(@recipe_id, 1, 1, @leather_id, 1),
(@recipe_id, 1, 2, @leather_id, 1),
(@recipe_id, 2, 0, @leather_id, 1),
(@recipe_id, 2, 1, @leather_id, 1),
(@recipe_id, 2, 2, @leather_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @leather_id, 8);

-- Peitoral de Ferro
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'iron_chestplate';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @iron_id, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, @iron_id, 1),
(@recipe_id, 1, 0, @iron_id, 1),
(@recipe_id, 1, 1, @iron_id, 1),
(@recipe_id, 1, 2, @iron_id, 1),
(@recipe_id, 2, 0, @iron_id, 1),
(@recipe_id, 2, 1, @iron_id, 1),
(@recipe_id, 2, 2, @iron_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @iron_id, 8);

-- Peitoral de Ouro
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'golden_chestplate';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @gold_id, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, @gold_id, 1),
(@recipe_id, 1, 0, @gold_id, 1),
(@recipe_id, 1, 1, @gold_id, 1),
(@recipe_id, 1, 2, @gold_id, 1),
(@recipe_id, 2, 0, @gold_id, 1),
(@recipe_id, 2, 1, @gold_id, 1),
(@recipe_id, 2, 2, @gold_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @gold_id, 8);

-- Peitoral de Diamante
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'diamond_chestplate';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @diamond_id, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, @diamond_id, 1),
(@recipe_id, 1, 0, @diamond_id, 1),
(@recipe_id, 1, 1, @diamond_id, 1),
(@recipe_id, 1, 2, @diamond_id, 1),
(@recipe_id, 2, 0, @diamond_id, 1),
(@recipe_id, 2, 1, @diamond_id, 1),
(@recipe_id, 2, 2, @diamond_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @diamond_id, 8);

-- ============================================
-- ARMADURAS - CALÇAS
-- ============================================

-- Calças de Couro
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'leather_leggings';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @leather_id, 1),
(@recipe_id, 0, 1, @leather_id, 1),
(@recipe_id, 0, 2, @leather_id, 1),
(@recipe_id, 1, 0, @leather_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @leather_id, 1),
(@recipe_id, 2, 0, @leather_id, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, @leather_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @leather_id, 7);

-- Calças de Ferro
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'iron_leggings';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @iron_id, 1),
(@recipe_id, 0, 1, @iron_id, 1),
(@recipe_id, 0, 2, @iron_id, 1),
(@recipe_id, 1, 0, @iron_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @iron_id, 1),
(@recipe_id, 2, 0, @iron_id, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, @iron_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @iron_id, 7);

-- Calças de Ouro
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'golden_leggings';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @gold_id, 1),
(@recipe_id, 0, 1, @gold_id, 1),
(@recipe_id, 0, 2, @gold_id, 1),
(@recipe_id, 1, 0, @gold_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @gold_id, 1),
(@recipe_id, 2, 0, @gold_id, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, @gold_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @gold_id, 7);

-- Calças de Diamante
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'diamond_leggings';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @diamond_id, 1),
(@recipe_id, 0, 1, @diamond_id, 1),
(@recipe_id, 0, 2, @diamond_id, 1),
(@recipe_id, 1, 0, @diamond_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @diamond_id, 1),
(@recipe_id, 2, 0, @diamond_id, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, @diamond_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @diamond_id, 7);

-- ============================================
-- ARMADURAS - BOTAS
-- ============================================

-- Botas de Couro
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'leather_boots';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, @leather_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @leather_id, 1),
(@recipe_id, 2, 0, @leather_id, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, @leather_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @leather_id, 4);

-- Botas de Ferro
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'iron_boots';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, @iron_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @iron_id, 1),
(@recipe_id, 2, 0, @iron_id, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, @iron_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @iron_id, 4);

-- Botas de Ouro
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'golden_boots';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, @gold_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @gold_id, 1),
(@recipe_id, 2, 0, @gold_id, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, @gold_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @gold_id, 4);

-- Botas de Diamante
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'diamond_boots';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, @diamond_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @diamond_id, 1),
(@recipe_id, 2, 0, @diamond_id, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, @diamond_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @diamond_id, 4);

-- ============================================
-- ARMAS E COMBATE
-- ============================================

-- Arco
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'bow';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, @stick_id, 1),
(@recipe_id, 0, 2, @string_id, 1),
(@recipe_id, 1, 0, @stick_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @string_id, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, @stick_id, 1),
(@recipe_id, 2, 2, @string_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @stick_id, 3),
(@recipe_id, @string_id, 3);

-- Flecha (produz 4)
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'arrow';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, @flint_id, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, @stick_id, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, @feather_id, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @flint_id, 1),
(@recipe_id, @stick_id, 1),
(@recipe_id, @feather_id, 1);

-- Escudo
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'shield';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @plank_id, 1),
(@recipe_id, 0, 1, @iron_id, 1),
(@recipe_id, 0, 2, @plank_id, 1),
(@recipe_id, 1, 0, @plank_id, 1),
(@recipe_id, 1, 1, @plank_id, 1),
(@recipe_id, 1, 2, @plank_id, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, @plank_id, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @plank_id, 6),
(@recipe_id, @iron_id, 1);

-- Continua com blocos, redstone, etc...
-- (Por limitação de espaço, vou criar mais receitas nos próximos arquivos)

SELECT 'Receitas de armaduras e armas criadas!' AS status;
