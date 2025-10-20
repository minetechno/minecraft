-- ============================================================================
-- ADICIONAR RECEITAS NOVAS DO MINECRAFT 1.21.6+
-- Inclui: Sela (Saddle) e outras receitas adicionadas recentemente
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- Sela (Saddle) - Nova receita adicionada no Minecraft 1.21.6
-- 3 leathers + 1 iron ingot
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'saddle';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'leather'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'leather'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'leather'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'leather'), 3),
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1);

SELECT '✓ Receita da sela adicionada (Minecraft 1.21.6+)!' as Status;
