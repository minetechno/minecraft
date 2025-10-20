-- ============================================================================
-- ADICIONAR RECEITAS FALTANTES PART 6 - Blocos Funcionais e Itens Especiais
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- BLOCOS FUNCIONAIS --------------------------------------------------------

-- Bloco de Nota Musical (8 tábuas + 1 redstone)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'note_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wooden_planks'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone'), 1);

-- Jukebox (8 tábuas + 1 diamante)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'jukebox';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'wooden_planks'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'diamond'), 1);

-- Telar (2 linhas + 2 tábuas)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'loom';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'string'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'string'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'wooden_planks'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'string'), 2),
(@recipe_id, (SELECT id FROM items WHERE slug = 'wooden_planks'), 2);

-- Beacon (5 vidros + 3 obsidianas + 1 estrela do nether)
-- Nota: Estrela do nether não está no banco, vamos usar diamante como substituto
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'beacon';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'glass'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'obsidian'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'obsidian'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'obsidian'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'glass'), 5),
(@recipe_id, (SELECT id FROM items WHERE slug = 'obsidian'), 3),
(@recipe_id, (SELECT id FROM items WHERE slug = 'diamond'), 1);

-- ITENS ESPECIAIS ----------------------------------------------------------

-- Porta-Item (8 gravetos + 1 couro)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'item_frame';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'leather'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'leather'), 1);

-- Mapa (8 papéis + 1 bússola)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'map';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'compass'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'paper'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'paper'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'compass'), 1);

-- Mapa Vazio (9 papéis)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'empty_map';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'paper'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'paper'), 9);

-- Bússola de Lodestone (1 bússola + 1 lodestone - como não temos lodestone, usar ferro)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'lodestone_compass';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'compass'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'compass'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1);

-- EXPLOSIVOS ---------------------------------------------------------------

-- TNT (5 pólvoras + 4 areias)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'tnt';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'gunpowder'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'sand'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'gunpowder'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'sand'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'gunpowder'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'sand'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'gunpowder'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'sand'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'gunpowder'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gunpowder'), 5),
(@recipe_id, (SELECT id FROM items WHERE slug = 'sand'), 4);

SELECT '✓ Blocos funcionais, itens especiais e TNT adicionados!' as Status;
