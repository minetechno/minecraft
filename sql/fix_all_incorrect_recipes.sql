-- ============================================================================
-- CORREÇÃO AUTOMÁTICA DE RECEITAS INCORRETAS
-- Total: 81 receitas
-- Data: 2025-10-20 20:55:11
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- DELETAR RECEITAS INCORRETAS
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'arrow';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'arrow';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'arrow';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'beacon';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'beacon';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'beacon';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'black_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'black_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'black_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'black_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'black_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'black_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'blue_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'blue_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'blue_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'blue_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'blue_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'blue_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'book';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'book';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'book';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'bookshelf';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'bookshelf';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'bookshelf';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'brewing_stand';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'brewing_stand';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'brewing_stand';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'brown_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'brown_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'brown_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'brown_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'brown_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'brown_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'chest';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'chest';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'chest';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'chiseled_quartz_block';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'chiseled_quartz_block';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'chiseled_quartz_block';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'chiseled_sandstone';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'chiseled_sandstone';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'chiseled_sandstone';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'comparator';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'comparator';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'comparator';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'crafting_table';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'crafting_table';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'crafting_table';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'cyan_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'cyan_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'cyan_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'cyan_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'cyan_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'cyan_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'diamond_boots';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'diamond_boots';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'diamond_boots';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'diamond_shovel';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'diamond_shovel';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'diamond_shovel';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'diamond_sword';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'diamond_sword';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'diamond_sword';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'golden_boots';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'golden_boots';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'golden_boots';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'golden_carrot';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'golden_carrot';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'golden_carrot';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'golden_shovel';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'golden_shovel';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'golden_shovel';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'golden_sword';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'golden_sword';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'golden_sword';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'gray_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'gray_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'gray_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'gray_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'gray_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'gray_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'green_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'green_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'green_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'green_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'green_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'green_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'iron_boots';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'iron_boots';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'iron_boots';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'iron_shovel';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'iron_shovel';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'iron_shovel';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'iron_sword';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'iron_sword';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'iron_sword';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'jukebox';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'jukebox';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'jukebox';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'lead';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'lead';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'lead';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'leather_boots';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'leather_boots';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'leather_boots';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'lever';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'lever';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'lever';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'light_blue_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'light_blue_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'light_blue_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'light_blue_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'light_blue_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'light_blue_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'light_gray_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'light_gray_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'light_gray_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'light_gray_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'light_gray_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'light_gray_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'lime_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'lime_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'lime_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'lime_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'lime_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'lime_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'loom';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'loom';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'loom';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'magenta_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'magenta_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'magenta_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'magenta_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'magenta_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'magenta_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'melon';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'melon';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'melon';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'minecart';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'minecart';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'minecart';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'mossy_cobblestone';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'mossy_cobblestone';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'mossy_cobblestone';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'mossy_stone_bricks';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'mossy_stone_bricks';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'mossy_stone_bricks';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'note_block';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'note_block';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'note_block';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'orange_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'orange_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'orange_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'orange_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'orange_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'orange_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'painting';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'painting';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'painting';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'pink_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'pink_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'pink_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'pink_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'pink_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'pink_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'piston';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'piston';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'piston';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'purple_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'purple_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'purple_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'purple_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'purple_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'purple_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'quartz_pillar';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'quartz_pillar';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'quartz_pillar';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'quartz_slab';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'quartz_slab';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'quartz_slab';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'red_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'red_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'red_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'red_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'red_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'red_wool';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'redstone_torch';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'redstone_torch';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'redstone_torch';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'repeater';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'repeater';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'repeater';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'shield';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'shield';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'shield';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_bricks';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_bricks';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_bricks';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_button';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_button';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_button';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_pressure_plate';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_pressure_plate';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_pressure_plate';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_shovel';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_shovel';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_shovel';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_slab';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_slab';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_slab';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_stairs';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_stairs';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_stairs';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_sword';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_sword';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'stone_sword';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'torch';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'torch';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'torch';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'white_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'white_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'white_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_axe';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_axe';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_axe';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_hoe';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_hoe';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_hoe';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_pickaxe';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_pickaxe';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_pickaxe';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_shovel';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_shovel';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_shovel';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_sword';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_sword';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'wooden_sword';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'yellow_carpet';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'yellow_carpet';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'yellow_carpet';
DELETE rg FROM recipe_grid rg INNER JOIN recipes r ON rg.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'yellow_wool';
DELETE inf FROM ingredients_flat inf INNER JOIN recipes r ON inf.recipe_id = r.id INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'yellow_wool';
DELETE r FROM recipes r INNER JOIN items i ON r.item_id = i.id WHERE i.slug = 'yellow_wool';

SELECT '✓ Receitas incorretas deletadas!' as Status;

-- RECRIAR RECEITAS CORRETAS COM DADOS OFICIAIS

-- Flecha (arrow)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'arrow';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'flint'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'feather'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'flint'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'feather'), 1);

-- Beacon (beacon)
-- SKIPPED: Ingredientes não existem no banco

-- Tapete Preto (black_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'black_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'black_wool'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 2);

-- Lã Preta (black_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'black_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'black_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'blue_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'blue_wool'), 1);

-- Tapete Azul (blue_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'blue_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'blue_wool'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'blue_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'blue_wool'), 2);

-- Lã Azul (blue_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'blue_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'blue_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'blue_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

-- Livro (book)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'book';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'paper'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'paper'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'paper'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 3, (SELECT id FROM items WHERE slug = 'leather'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'paper'), 3);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'leather'), 1);

-- Estante de Livros (bookshelf)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'bookshelf';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'book'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'book'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'book'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 6),
(@recipe_id, (SELECT id FROM items WHERE slug = 'book'), 3);

-- Suporte para Poções (brewing_stand)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'brewing_stand';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'blaze_rod'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'cobblestone'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'blaze_rod'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 3);

-- Tapete Marrom (brown_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'brown_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'brown_wool'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'brown_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'brown_wool'), 2);

-- Lã Marrom (brown_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'brown_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'brown_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'brown_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

-- Baú (chest)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'chest';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 8);

-- Quartzo Entalhado (chiseled_quartz_block)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'chiseled_quartz_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'quartz_slab'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'quartz_slab'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'quartz_slab'), 2);

-- Arenito Entalhado (chiseled_sandstone)
-- SKIPPED: Ingredientes não existem no banco

-- Comparador (comparator)
-- SKIPPED: Ingredientes não existem no banco

-- Mesa de Trabalho (crafting_table)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'crafting_table';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 4);

-- Tapete Ciano (cyan_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'cyan_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'cyan_wool'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'cyan_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'cyan_wool'), 2);

-- Lã Ciano (cyan_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'cyan_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'cyan_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'cyan_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

-- Botas de Diamante (diamond_boots)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'diamond_boots';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'diamond'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'diamond'), 4);

-- Pá de Diamante (diamond_shovel)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'diamond_shovel';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 2);

-- Espada de Diamante (diamond_sword)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'diamond_sword';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'diamond'), 2),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 1);

-- Botas de Ouro (golden_boots)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'golden_boots';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gold_ingot'), 4);

-- Cenoura Dourada (golden_carrot)
-- SKIPPED: Ingredientes não existem no banco

-- Pá de Ouro (golden_shovel)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'golden_shovel';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 2);

-- Espada de Ouro (golden_sword)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'golden_sword';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'gold_ingot'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gold_ingot'), 2),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 1);

-- Tapete Cinza (gray_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'gray_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'gray_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gray_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);

-- Lã Cinza (gray_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'gray_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'gray_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'gray_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

-- Tapete Verde (green_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'green_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'green_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'green_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);

-- Lã Verde (green_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'green_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'green_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'green_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

-- Botas de Ferro (iron_boots)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'iron_boots';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 4);

-- Pá de Ferro (iron_shovel)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'iron_shovel';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 2);

-- Espada de Ferro (iron_sword)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'iron_sword';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 2),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 1);

-- Jukebox (jukebox)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'jukebox';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'diamond'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'diamond'), 1);

-- Cabresto (lead)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'lead';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'string'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'string'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'string'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'slime_ball'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'string'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'string'), 4),
(@recipe_id, (SELECT id FROM items WHERE slug = 'slime_ball'), 1);

-- Botas de Couro (leather_boots)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'leather_boots';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'leather'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'leather'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'leather'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'leather'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'leather'), 4);

-- Alavanca (lever)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'lever';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 1);

-- Tapete Azul Claro (light_blue_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'light_blue_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'light_blue_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'light_blue_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);

-- Lã Azul Claro (light_blue_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'light_blue_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'light_blue_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'light_blue_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

-- Tapete Cinza Claro (light_gray_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'light_gray_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'light_gray_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'light_gray_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);

-- Lã Cinza Claro (light_gray_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'light_gray_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'light_gray_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'light_gray_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

-- Tapete Verde Limão (lime_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'lime_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'lime_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'lime_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);

-- Lã Verde Limão (lime_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'lime_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'lime_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'lime_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

-- Telar (loom)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'loom';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'string'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'string'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'string'), 2),
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 2);

-- Tapete Magenta (magenta_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'magenta_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'magenta_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'magenta_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);

-- Lã Magenta (magenta_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'magenta_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'magenta_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'magenta_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

-- Melancia (melon)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'melon';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'melon_slice'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'melon_slice'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'melon_slice'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 3, (SELECT id FROM items WHERE slug = 'melon_slice'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 4, (SELECT id FROM items WHERE slug = 'melon_slice'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 5, (SELECT id FROM items WHERE slug = 'melon_slice'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 6, (SELECT id FROM items WHERE slug = 'melon_slice'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 7, (SELECT id FROM items WHERE slug = 'melon_slice'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 8, (SELECT id FROM items WHERE slug = 'melon_slice'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'melon_slice'), 9);

-- Carrinho de Mina (minecart)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'minecart';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 5);

-- Pedra Musgosa (mossy_cobblestone)
-- SKIPPED: Ingredientes não existem no banco

-- Tijolos de Pedra Musgosos (mossy_stone_bricks)
-- SKIPPED: Ingredientes não existem no banco

-- Bloco de Nota Musical (note_block)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'note_block';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone'), 1);

-- Tapete Laranja (orange_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'orange_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'orange_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'orange_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);

-- Lã Laranja (orange_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'orange_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'orange_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'orange_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

-- Quadro (painting)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'painting';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'white_wool'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 8),
(@recipe_id, (SELECT id FROM items WHERE slug = 'white_wool'), 1);

-- Tapete Rosa (pink_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'pink_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'pink_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'pink_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);

-- Lã Rosa (pink_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'pink_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'pink_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'pink_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

-- Pistão (piston)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'piston';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 2, 2, (SELECT id FROM items WHERE slug = 'cobblestone'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 3),
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 4),
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone'), 1);

-- Tapete Roxo (purple_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'purple_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'purple_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'purple_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);

-- Lã Roxa (purple_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'purple_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'purple_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'purple_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

-- Pilar de Quartzo (quartz_pillar)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'quartz_pillar';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'quartz_block'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'quartz_block'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'quartz_block'), 2);

-- Laje de Quartzo (quartz_slab)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'quartz_slab';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'chiseled_quartz_block'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'chiseled_quartz_block'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'chiseled_quartz_block'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'chiseled_quartz_block'), 3);

-- Tapete Vermelho (red_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'red_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'red_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'red_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);

-- Lã Vermelha (red_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'red_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'red_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'red_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

-- Tocha de Redstone (redstone_torch)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'redstone_torch';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'redstone'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 1);

-- Repetidor de Redstone (repeater)
-- SKIPPED: Ingredientes não existem no banco

-- Escudo (shield)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'shield';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 6),
(@recipe_id, (SELECT id FROM items WHERE slug = 'iron_ingot'), 1);

-- Tijolos de Pedra (stone_bricks)
-- SKIPPED: Ingredientes não existem no banco

-- Botão de Pedra (stone_button)
-- SKIPPED: Ingredientes não existem no banco

-- Placa de Pressão de Pedra (stone_pressure_plate)
-- SKIPPED: Ingredientes não existem no banco

-- Pá de Pedra (stone_shovel)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'stone_shovel';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 2);

-- Laje de Pedra (stone_slab)
-- SKIPPED: Ingredientes não existem no banco

-- Escada de Pedra (stone_stairs)
-- SKIPPED: Ingredientes não existem no banco

-- Espada de Pedra (stone_sword)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'stone_sword';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'cobblestone'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'cobblestone'), 2),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 1);

-- Tocha (torch)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'torch';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'coal'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'coal'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 1);

-- Tapete Branco (white_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'white_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'white_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'white_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);

-- Machado de Madeira (wooden_axe)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'wooden_axe';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 3),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 2);

-- Enxada de Madeira (wooden_hoe)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'wooden_hoe';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 2),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 2);

-- Picareta de Madeira (wooden_pickaxe)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'wooden_pickaxe';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 1, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 0, 2, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 1, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 3),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 2);

-- Pá de Madeira (wooden_shovel)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'wooden_shovel';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'stick'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 2);

-- Espada de Madeira (wooden_sword)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'wooden_sword';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 0, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'oak_planks'), 1),
(@recipe_id, 2, 0, (SELECT id FROM items WHERE slug = 'stick'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'oak_planks'), 2),
(@recipe_id, (SELECT id FROM items WHERE slug = 'stick'), 1);

-- Tapete Amarelo (yellow_carpet)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'yellow_carpet';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'yellow_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'yellow_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_carpet'), 1);

-- Lã Amarela (yellow_wool)
INSERT IGNORE INTO recipes (item_id) SELECT id FROM items WHERE slug = 'yellow_wool';
SET @recipe_id = LAST_INSERT_ID();
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 0, (SELECT id FROM items WHERE slug = 'yellow_dye'), 1);
INSERT IGNORE INTO recipe_grid (recipe_id, `row`, `col`, ingredient_item_id, quantity) VALUES
(@recipe_id, 1, 1, (SELECT id FROM items WHERE slug = 'black_wool'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'yellow_dye'), 1);
INSERT IGNORE INTO ingredients_flat (recipe_id, ingredient_item_id, quantity) VALUES
(@recipe_id, (SELECT id FROM items WHERE slug = 'black_wool'), 1);

SELECT '✓ 69 receitas corrigidas!' as Status;
