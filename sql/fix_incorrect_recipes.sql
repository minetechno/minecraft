-- ============================================================================
-- CORREÇÃO DE RECEITAS INCORRETAS
-- Remove receitas que não existem no Minecraft oficial
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- Smooth Sandstone e Smooth Stone são feitos no FORNO, não na crafting table
-- Vamos remover essas receitas incorretas

-- Remover receita de Smooth Sandstone
DELETE rg FROM recipe_grid rg
INNER JOIN recipes r ON rg.recipe_id = r.id
INNER JOIN items i ON r.item_id = i.id
WHERE i.slug = 'smooth_sandstone';

DELETE inf FROM ingredients_flat inf
INNER JOIN recipes r ON inf.recipe_id = r.id
INNER JOIN items i ON r.item_id = i.id
WHERE i.slug = 'smooth_sandstone';

DELETE r FROM recipes r
INNER JOIN items i ON r.item_id = i.id
WHERE i.slug = 'smooth_sandstone';

-- Remover receita de Smooth Stone
DELETE rg FROM recipe_grid rg
INNER JOIN recipes r ON rg.recipe_id = r.id
INNER JOIN items i ON r.item_id = i.id
WHERE i.slug = 'smooth_stone';

DELETE inf FROM ingredients_flat inf
INNER JOIN recipes r ON inf.recipe_id = r.id
INNER JOIN items i ON r.item_id = i.id
WHERE i.slug = 'smooth_stone';

DELETE r FROM recipes r
INNER JOIN items i ON r.item_id = i.id
WHERE i.slug = 'smooth_stone';

SELECT '✓ Receitas incorretas removidas (smooth_sandstone, smooth_stone)!' as Status;
