-- ============================================
-- Minecraft Crafts - Receitas Parte 2
-- Blocos, Redstone, Alimentos e Utilidades
-- ============================================

USE minecraft_site;

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- Obter IDs dos materiais
SET @stick_id = (SELECT id FROM items WHERE slug = 'stick');
SET @plank_id = (SELECT id FROM items WHERE slug = 'planks');
SET @stone_id = (SELECT id FROM items WHERE slug = 'cobblestone');
SET @iron_id = (SELECT id FROM items WHERE slug = 'iron_ingot');
SET @gold_id = (SELECT id FROM items WHERE slug = 'gold_ingot');
SET @diamond_id = (SELECT id FROM items WHERE slug = 'diamond');
SET @wool_id = (SELECT id FROM items WHERE slug = 'wool');
SET @redstone_id = (SELECT id FROM items WHERE slug = 'redstone');
SET @paper_id = (SELECT id FROM items WHERE slug = 'paper');
SET @leather_id = (SELECT id FROM items WHERE slug = 'leather');

-- ============================================
-- BLOCOS E CONSTRUÇÃO
-- ============================================

-- Laje de Madeira (produz 6)
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'wooden_slab';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, @plank_id, 1),
(@recipe_id, 2, 1, @plank_id, 1),
(@recipe_id, 2, 2, @plank_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @plank_id, 3);

-- Laje de Pedra (produz 6)
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'stone_slab';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, @stone_id, 1),
(@recipe_id, 2, 1, @stone_id, 1),
(@recipe_id, 2, 2, @stone_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @stone_id, 3);

-- Escada de Pedra (produz 4)
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'stone_stairs';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @stone_id, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, @stone_id, 1),
(@recipe_id, 1, 1, @stone_id, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, @stone_id, 1),
(@recipe_id, 2, 1, @stone_id, 1),
(@recipe_id, 2, 2, @stone_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @stone_id, 6);

-- Portão de Cerca
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'fence_gate';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, @stick_id, 1),
(@recipe_id, 1, 1, @plank_id, 1),
(@recipe_id, 1, 2, @stick_id, 1),
(@recipe_id, 2, 0, @stick_id, 1),
(@recipe_id, 2, 1, @plank_id, 1),
(@recipe_id, 2, 2, @stick_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @stick_id, 4),
(@recipe_id, @plank_id, 2);

-- Alçapão
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'trapdoor';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, @plank_id, 1),
(@recipe_id, 1, 1, @plank_id, 1),
(@recipe_id, 1, 2, @plank_id, 1),
(@recipe_id, 2, 0, @plank_id, 1),
(@recipe_id, 2, 1, @plank_id, 1),
(@recipe_id, 2, 2, @plank_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @plank_id, 6);

-- Placa (produz 3)
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'sign';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @plank_id, 1),
(@recipe_id, 0, 1, @plank_id, 1),
(@recipe_id, 0, 2, @plank_id, 1),
(@recipe_id, 1, 0, @plank_id, 1),
(@recipe_id, 1, 1, @plank_id, 1),
(@recipe_id, 1, 2, @plank_id, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, @stick_id, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @plank_id, 6),
(@recipe_id, @stick_id, 1);

-- Estante de Livros
SET @book_id = (SELECT id FROM items WHERE slug = 'book');
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'bookshelf';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @plank_id, 1),
(@recipe_id, 0, 1, @plank_id, 1),
(@recipe_id, 0, 2, @plank_id, 1),
(@recipe_id, 1, 0, @book_id, 1),
(@recipe_id, 1, 1, @book_id, 1),
(@recipe_id, 1, 2, @book_id, 1),
(@recipe_id, 2, 0, @plank_id, 1),
(@recipe_id, 2, 1, @plank_id, 1),
(@recipe_id, 2, 2, @plank_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @plank_id, 6),
(@recipe_id, @book_id, 3);

-- ============================================
-- UTILIDADES
-- ============================================

-- Cama
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'bed';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, @wool_id, 1),
(@recipe_id, 1, 1, @wool_id, 1),
(@recipe_id, 1, 2, @wool_id, 1),
(@recipe_id, 2, 0, @plank_id, 1),
(@recipe_id, 2, 1, @plank_id, 1),
(@recipe_id, 2, 2, @plank_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @wool_id, 3),
(@recipe_id, @plank_id, 3);

-- Livro
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'book';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, @paper_id, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, @paper_id, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, @paper_id, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @paper_id, 3);

-- Quadro
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'painting';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @stick_id, 1),
(@recipe_id, 0, 1, @stick_id, 1),
(@recipe_id, 0, 2, @stick_id, 1),
(@recipe_id, 1, 0, @stick_id, 1),
(@recipe_id, 1, 1, @wool_id, 1),
(@recipe_id, 1, 2, @stick_id, 1),
(@recipe_id, 2, 0, @stick_id, 1),
(@recipe_id, 2, 1, @stick_id, 1),
(@recipe_id, 2, 2, @stick_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @stick_id, 8),
(@recipe_id, @wool_id, 1);

-- Bússola
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'compass';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, @iron_id, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, @iron_id, 1),
(@recipe_id, 1, 1, @redstone_id, 1),
(@recipe_id, 1, 2, @iron_id, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, @iron_id, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @iron_id, 4),
(@recipe_id, @redstone_id, 1);

-- Relógio
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'clock';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, @gold_id, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, @gold_id, 1),
(@recipe_id, 1, 1, @redstone_id, 1),
(@recipe_id, 1, 2, @gold_id, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, @gold_id, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @gold_id, 4),
(@recipe_id, @redstone_id, 1);

-- Vara de Pesca
SET @string_id = (SELECT id FROM items WHERE slug = 'string');
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'fishing_rod';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, @stick_id, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, @stick_id, 1),
(@recipe_id, 1, 2, @string_id, 1),
(@recipe_id, 2, 0, @stick_id, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, @string_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @stick_id, 3),
(@recipe_id, @string_id, 2);

-- ============================================
-- REDSTONE E MECANISMOS
-- ============================================

-- Botão de Madeira
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'wooden_button';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, @plank_id, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @plank_id, 1);

-- Botão de Pedra
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'stone_button';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, @stone_id, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @stone_id, 1);

-- Placa de Pressão de Madeira
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'wooden_pressure_plate';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, @plank_id, 1),
(@recipe_id, 2, 1, @plank_id, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @plank_id, 2);

-- Placa de Pressão de Pedra
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'stone_pressure_plate';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, @stone_id, 1),
(@recipe_id, 2, 1, @stone_id, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @stone_id, 2);

-- Alavanca
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'lever';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, @stick_id, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, @stone_id, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @stick_id, 1),
(@recipe_id, @stone_id, 1);

-- Tocha de Redstone
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'redstone_torch';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, @redstone_id, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, @stick_id, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @redstone_id, 1),
(@recipe_id, @stick_id, 1);

-- Repetidor de Redstone
SET @redstone_torch_id = (SELECT id FROM items WHERE slug = 'redstone_torch');
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'repeater';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, @redstone_torch_id, 1),
(@recipe_id, 1, 1, @redstone_id, 1),
(@recipe_id, 1, 2, @redstone_torch_id, 1),
(@recipe_id, 2, 0, @stone_id, 1),
(@recipe_id, 2, 1, @stone_id, 1),
(@recipe_id, 2, 2, @stone_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @redstone_torch_id, 2),
(@recipe_id, @redstone_id, 1),
(@recipe_id, @stone_id, 3);

-- Pistão
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'piston';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @plank_id, 1),
(@recipe_id, 0, 1, @plank_id, 1),
(@recipe_id, 0, 2, @plank_id, 1),
(@recipe_id, 1, 0, @stone_id, 1),
(@recipe_id, 1, 1, @iron_id, 1),
(@recipe_id, 1, 2, @stone_id, 1),
(@recipe_id, 2, 0, @stone_id, 1),
(@recipe_id, 2, 1, @redstone_id, 1),
(@recipe_id, 2, 2, @stone_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @plank_id, 3),
(@recipe_id, @stone_id, 4),
(@recipe_id, @iron_id, 1),
(@recipe_id, @redstone_id, 1);

-- ============================================
-- TRANSPORTE
-- ============================================

-- Barco
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'boat';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, @plank_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @plank_id, 1),
(@recipe_id, 2, 0, @plank_id, 1),
(@recipe_id, 2, 1, @plank_id, 1),
(@recipe_id, 2, 2, @plank_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @plank_id, 5);

-- Carrinho de Mina
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'minecart';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, @iron_id, 1),
(@recipe_id, 1, 1, NULL, 1),
(@recipe_id, 1, 2, @iron_id, 1),
(@recipe_id, 2, 0, @iron_id, 1),
(@recipe_id, 2, 1, @iron_id, 1),
(@recipe_id, 2, 2, @iron_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @iron_id, 5);

-- Trilho (produz 16)
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'rail';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @iron_id, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, @iron_id, 1),
(@recipe_id, 1, 0, @iron_id, 1),
(@recipe_id, 1, 1, @stick_id, 1),
(@recipe_id, 1, 2, @iron_id, 1),
(@recipe_id, 2, 0, @iron_id, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, @iron_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @iron_id, 6),
(@recipe_id, @stick_id, 1);

-- Trilho Motorizado (produz 6)
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'powered_rail';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, @gold_id, 1),
(@recipe_id, 0, 1, NULL, 1),
(@recipe_id, 0, 2, @gold_id, 1),
(@recipe_id, 1, 0, @gold_id, 1),
(@recipe_id, 1, 1, @stick_id, 1),
(@recipe_id, 1, 2, @gold_id, 1),
(@recipe_id, 2, 0, @gold_id, 1),
(@recipe_id, 2, 1, @redstone_id, 1),
(@recipe_id, 2, 2, @gold_id, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @gold_id, 6),
(@recipe_id, @stick_id, 1),
(@recipe_id, @redstone_id, 1);

-- Carrinho com Baú
SET @minecart_id = (SELECT id FROM items WHERE slug = 'minecart');
SET @chest_id = (SELECT id FROM items WHERE slug = 'chest');
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'chest_minecart';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, @chest_id, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, @minecart_id, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @chest_id, 1),
(@recipe_id, @minecart_id, 1);

-- Carrinho com Fornalha
SET @furnace_id = (SELECT id FROM items WHERE slug = 'furnace');
INSERT INTO recipes (item_id)
SELECT id FROM items WHERE slug = 'furnace_minecart';
SET @recipe_id = LAST_INSERT_ID();
INSERT INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, NULL, 1),
(@recipe_id, 0, 1, @furnace_id, 1),
(@recipe_id, 0, 2, NULL, 1),
(@recipe_id, 1, 0, NULL, 1),
(@recipe_id, 1, 1, @minecart_id, 1),
(@recipe_id, 1, 2, NULL, 1),
(@recipe_id, 2, 0, NULL, 1),
(@recipe_id, 2, 1, NULL, 1),
(@recipe_id, 2, 2, NULL, 1);
INSERT INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, @furnace_id, 1),
(@recipe_id, @minecart_id, 1);

SELECT 'Receitas de blocos, redstone e transporte criadas!' AS status;
