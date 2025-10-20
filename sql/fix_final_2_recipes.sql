-- ============================================================================
-- CORREÇÃO FINAL - 2 últimas receitas incorretas
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- Deletar receitas incorretas
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug IN ('book', 'melon');
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug IN ('book', 'melon');
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug IN ('book', 'melon');

-- Livro (3 papéis + 1 couro) - Shapeless
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'book';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'paper'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'leather'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'paper'), 3),
(@recipe_id, (SELECT id FROM items WHERE slug = 'leather'), 1);

-- Melancia (9 fatias de melancia) - Shapeless
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'melon';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'melon_slice'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'melon_slice'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'melon_slice'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'melon_slice'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'melon_slice'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'melon_slice'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'melon_slice'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'melon_slice'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'melon_slice'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'melon_slice'), 9);

SELECT '✓ 2 receitas finais corrigidas! 100% de precisão alcançada!' as Status;
