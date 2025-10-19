-- ============================================
-- Correção de Encoding UTF-8
-- ============================================
-- Execute este script se os acentos aparecerem errados no site

USE minecraft_site;

-- Garante que a conexão está em UTF-8
SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- Corrige nomes de itens
UPDATE items SET name = 'Pá de Madeira' WHERE slug = 'wooden_shovel';
UPDATE items SET name = 'Pá de Pedra' WHERE slug = 'stone_shovel';
UPDATE items SET name = 'Pá de Ferro' WHERE slug = 'iron_shovel';
UPDATE items SET name = 'Pá de Ouro' WHERE slug = 'golden_shovel';
UPDATE items SET name = 'Pá de Diamante' WHERE slug = 'diamond_shovel';
UPDATE items SET name = 'Baú' WHERE slug = 'chest';
UPDATE items SET name = 'Tábuas de Madeira' WHERE slug = 'planks';
UPDATE items SET name = 'Bastões' WHERE slug = 'sticks';
UPDATE items SET name = 'Carvão' WHERE slug = 'coal';

-- Corrige descrições
UPDATE items SET description = 'Machado básico de madeira para cortar árvores.' WHERE slug = 'wooden_axe';
UPDATE items SET description = 'Pá de madeira para cavar terra e areia.' WHERE slug = 'wooden_shovel';
UPDATE items SET description = 'Enxada de madeira para preparar terra de cultivo.' WHERE slug = 'wooden_hoe';
UPDATE items SET description = 'Espada básica de madeira para iniciantes.' WHERE slug = 'wooden_sword';
UPDATE items SET description = 'Picareta de pedra, mais durável que madeira.' WHERE slug = 'stone_pickaxe';
UPDATE items SET description = 'Pá de pedra para escavação eficiente.' WHERE slug = 'stone_shovel';
UPDATE items SET description = 'Enxada de pedra para agricultura.' WHERE slug = 'stone_hoe';
UPDATE items SET description = 'Picareta de ferro, pode minerar diamantes.' WHERE slug = 'iron_pickaxe';
UPDATE items SET description = 'Machado de ferro para corte rápido de madeira.' WHERE slug = 'iron_axe';
UPDATE items SET description = 'Pá de ferro muito eficiente.' WHERE slug = 'iron_shovel';
UPDATE items SET description = 'Enxada de ferro durável.' WHERE slug = 'iron_hoe';
UPDATE items SET description = 'Picareta de ouro, muito rápida mas frágil.' WHERE slug = 'golden_pickaxe';
UPDATE items SET description = 'Machado de ouro extremamente rápido.' WHERE slug = 'golden_axe';
UPDATE items SET description = 'Enxada de ouro reluzente.' WHERE slug = 'golden_hoe';
UPDATE items SET description = 'Espada de ouro com baixa durabilidade.' WHERE slug = 'golden_sword';
UPDATE items SET description = 'A melhor picareta, muito durável e rápida.' WHERE slug = 'diamond_pickaxe';
UPDATE items SET description = 'Pá de diamante, a mais eficiente.' WHERE slug = 'diamond_shovel';
UPDATE items SET description = 'Enxada de diamante de alta qualidade.' WHERE slug = 'diamond_hoe';
UPDATE items SET description = 'A espada mais poderosa do jogo.' WHERE slug = 'diamond_sword';
UPDATE items SET description = 'Permite craftar itens complexos com grade 3x3.' WHERE slug = 'crafting_table';
UPDATE items SET description = 'Usada para fundir minérios e cozinhar comida.' WHERE slug = 'furnace';
UPDATE items SET description = 'Armazena até 27 stacks de itens.' WHERE slug = 'chest';
UPDATE items SET description = 'Pacote de 4 gravetos de uma vez.' WHERE slug = 'sticks';
UPDATE items SET description = 'Fonte de luz que evita spawn de mobs.' WHERE slug = 'torch';
UPDATE items SET description = 'Combustível obtido ao minerar carvão mineral.' WHERE slug = 'coal';
UPDATE items SET description = 'Usado para transportar água, lava ou leite.' WHERE slug = 'bucket';
UPDATE items SET description = 'Corta lã de ovelhas e folhas de árvores.' WHERE slug = 'shears';
UPDATE items SET description = 'Permite subir e descer verticalmente.' WHERE slug = 'ladder';
UPDATE items SET description = 'Cerca de madeira para delimitar áreas.' WHERE slug = 'fence';
UPDATE items SET description = 'Porta que pode ser aberta e fechada.' WHERE slug = 'wooden_door';

-- Corrige descrições dos itens originais
UPDATE items SET description = 'Um graveto simples de madeira, usado como cabo para ferramentas.' WHERE slug = 'stick';
UPDATE items SET description = 'Tronco de madeira obtido ao cortar árvores.' WHERE slug = 'wood_log';
UPDATE items SET description = 'Tábuas processadas a partir de troncos de madeira.' WHERE slug = 'planks';
UPDATE items SET description = 'Pedra comum encontrada ao minerar blocos de pedra.' WHERE slug = 'cobblestone';
UPDATE items SET description = 'Barra de ferro fundida a partir de minério.' WHERE slug = 'iron_ingot';
UPDATE items SET description = 'Barra de ouro fundida a partir de minério.' WHERE slug = 'gold_ingot';
UPDATE items SET description = 'Gema rara encontrada nas profundezas.' WHERE slug = 'diamond';
UPDATE items SET description = 'Uma picareta básica feita de madeira. Ideal para começar a minerar.' WHERE slug = 'wooden_pickaxe';
UPDATE items SET description = 'Espada feita de pedra. Boa para combate inicial.' WHERE slug = 'stone_sword';
UPDATE items SET description = 'Machado de pedra para cortar madeira rapidamente.' WHERE slug = 'stone_axe';
UPDATE items SET description = 'Pá feita de ouro. Muito rápida, mas pouco durável.' WHERE slug = 'golden_shovel';
UPDATE items SET description = 'Espada confiável de ferro, excelente para combate.' WHERE slug = 'iron_sword';
UPDATE items SET description = 'O machado mais durável e eficiente do jogo.' WHERE slug = 'diamond_axe';

SELECT 'Encoding UTF-8 corrigido com sucesso!' AS status;
