-- ============================================================================
-- CORREÇÃO FINAL - Categorias e Última Receita
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- ADICIONAR RECEITA FINAL ---------------------------------------------------

-- Lã Branca (4 linhas = 1 lã)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'white_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'string'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'string'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'string'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'string'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'string'), 4);

-- CORRIGIR CATEGORIAS DE ITENS NÃO-CRAFTÁVEIS ------------------------------

-- Armaduras de cavalo NÃO são craftáveis (apenas encontradas em baús)
UPDATE items SET category = 'material' WHERE slug IN (
    'leather_horse_armor',
    'iron_horse_armor',
    'golden_horse_armor',
    'diamond_horse_armor'
);

-- Batata assada é SMELTED, não crafted
UPDATE items SET category = 'material' WHERE slug = 'baked_potato';

-- Tijolos de pedra rachados são SMELTED, não crafted
UPDATE items SET category = 'material' WHERE slug = 'cracked_stone_bricks';

SELECT '✓ Categorias corrigidas e receita final adicionada!' as Status;
