-- ============================================================================
-- MINECRAFT CRAFTS - MEGA EXPANSÃO (Versão 1.4)
-- Adicionando 150+ novos itens para máxima completude
-- ============================================================================

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

-- LÃS COLORIDAS (16 cores) --------------------------------------------------
INSERT IGNORE INTO items (name, slug, description, icon, category) VALUES
('Lã Branca', 'white_wool', 'Lã branca obtida de ovelhas ou tingida', 'white_wool.svg', 'craftable'),
('Lã Laranja', 'orange_wool', 'Lã tingida com corante laranja', 'orange_wool.svg', 'craftable'),
('Lã Magenta', 'magenta_wool', 'Lã tingida com corante magenta', 'magenta_wool.svg', 'craftable'),
('Lã Azul Claro', 'light_blue_wool', 'Lã tingida com corante azul claro', 'light_blue_wool.svg', 'craftable'),
('Lã Amarela', 'yellow_wool', 'Lã tingida com corante amarelo', 'yellow_wool.svg', 'craftable'),
('Lã Verde Limão', 'lime_wool', 'Lã tingida com corante verde limão', 'lime_wool.svg', 'craftable'),
('Lã Rosa', 'pink_wool', 'Lã tingida com corante rosa', 'pink_wool.svg', 'craftable'),
('Lã Cinza', 'gray_wool', 'Lã tingida com corante cinza', 'gray_wool.svg', 'craftable'),
('Lã Cinza Claro', 'light_gray_wool', 'Lã tingida com corante cinza claro', 'light_gray_wool.svg', 'craftable'),
('Lã Ciano', 'cyan_wool', 'Lã tingida com corante ciano', 'cyan_wool.svg', 'craftable'),
('Lã Roxa', 'purple_wool', 'Lã tingida com corante roxo', 'purple_wool.svg', 'craftable'),
('Lã Azul', 'blue_wool', 'Lã tingida com corante azul', 'blue_wool.svg', 'craftable'),
('Lã Marrom', 'brown_wool', 'Lã tingida com corante marrom', 'brown_wool.svg', 'craftable'),
('Lã Verde', 'green_wool', 'Lã tingida com corante verde', 'green_wool.svg', 'craftable'),
('Lã Vermelha', 'red_wool', 'Lã tingida com corante vermelho', 'red_wool.svg', 'craftable'),
('Lã Preta', 'black_wool', 'Lã tingida com corante preto', 'black_wool.svg', 'craftable');

-- CORANTES (16 cores) -------------------------------------------------------
INSERT IGNORE INTO items (name, slug, description, icon, category) VALUES
('Corante Branco', 'white_dye', 'Corante obtido de farinha de osso', 'white_dye.svg', 'material'),
('Corante Laranja', 'orange_dye', 'Corante obtido de tulipas laranjas', 'orange_dye.svg', 'material'),
('Corante Magenta', 'magenta_dye', 'Corante obtido de aliuns ou lilases', 'magenta_dye.svg', 'material'),
('Corante Azul Claro', 'light_blue_dye', 'Corante obtido de orquídeas azuis', 'light_blue_dye.svg', 'material'),
('Corante Amarelo', 'yellow_dye', 'Corante obtido de dentes-de-leão', 'yellow_dye.svg', 'material'),
('Corante Verde Limão', 'lime_dye', 'Corante obtido combinando verde e branco', 'lime_dye.svg', 'material'),
('Corante Rosa', 'pink_dye', 'Corante obtido de tulipas rosa', 'pink_dye.svg', 'material'),
('Corante Cinza', 'gray_dye', 'Corante obtido combinando preto e branco', 'gray_dye.svg', 'material'),
('Corante Cinza Claro', 'light_gray_dye', 'Corante obtido de tulipas brancas', 'light_gray_dye.svg', 'material'),
('Corante Ciano', 'cyan_dye', 'Corante obtido combinando azul e verde', 'cyan_dye.svg', 'material'),
('Corante Roxo', 'purple_dye', 'Corante obtido combinando vermelho e azul', 'purple_dye.svg', 'material'),
('Corante Azul', 'blue_dye', 'Corante obtido de lápis-lazúli', 'blue_dye.svg', 'material'),
('Corante Marrom', 'brown_dye', 'Corante obtido de grãos de cacau', 'brown_dye.svg', 'material'),
('Corante Verde', 'green_dye', 'Corante obtido de cactos', 'green_dye.svg', 'material'),
('Corante Vermelho', 'red_dye', 'Corante obtido de rosas ou beterrabas', 'red_dye.svg', 'material'),
('Corante Preto', 'black_dye', 'Corante obtido de saco de tinta', 'black_dye.svg', 'material');

-- VIDROS COLORIDOS (16 cores) -----------------------------------------------
INSERT IGNORE INTO items (name, slug, description, icon, category) VALUES
('Vidro Branco', 'white_stained_glass', 'Vidro tingido de branco', 'white_stained_glass.svg', 'craftable'),
('Vidro Laranja', 'orange_stained_glass', 'Vidro tingido de laranja', 'orange_stained_glass.svg', 'craftable'),
('Vidro Magenta', 'magenta_stained_glass', 'Vidro tingido de magenta', 'magenta_stained_glass.svg', 'craftable'),
('Vidro Azul Claro', 'light_blue_stained_glass', 'Vidro tingido de azul claro', 'light_blue_stained_glass.svg', 'craftable'),
('Vidro Amarelo', 'yellow_stained_glass', 'Vidro tingido de amarelo', 'yellow_stained_glass.svg', 'craftable'),
('Vidro Verde Limão', 'lime_stained_glass', 'Vidro tingido de verde limão', 'lime_stained_glass.svg', 'craftable'),
('Vidro Rosa', 'pink_stained_glass', 'Vidro tingido de rosa', 'pink_stained_glass.svg', 'craftable'),
('Vidro Cinza', 'gray_stained_glass', 'Vidro tingido de cinza', 'gray_stained_glass.svg', 'craftable'),
('Vidro Cinza Claro', 'light_gray_stained_glass', 'Vidro tingido de cinza claro', 'light_gray_stained_glass.svg', 'craftable'),
('Vidro Ciano', 'cyan_stained_glass', 'Vidro tingido de ciano', 'cyan_stained_glass.svg', 'craftable'),
('Vidro Roxo', 'purple_stained_glass', 'Vidro tingido de roxo', 'purple_stained_glass.svg', 'craftable'),
('Vidro Azul', 'blue_stained_glass', 'Vidro tingido de azul', 'blue_stained_glass.svg', 'craftable'),
('Vidro Marrom', 'brown_stained_glass', 'Vidro tingido de marrom', 'brown_stained_glass.svg', 'craftable'),
('Vidro Verde', 'green_stained_glass', 'Vidro tingido de verde', 'green_stained_glass.svg', 'craftable'),
('Vidro Vermelho', 'red_stained_glass', 'Vidro tingido de vermelho', 'red_stained_glass.svg', 'craftable'),
('Vidro Preto', 'black_stained_glass', 'Vidro tingido de preto', 'black_stained_glass.svg', 'craftable');

-- TAPETES (16 cores) --------------------------------------------------------
INSERT IGNORE INTO items (name, slug, description, icon, category) VALUES
('Tapete Branco', 'white_carpet', 'Tapete decorativo branco', 'white_carpet.svg', 'craftable'),
('Tapete Laranja', 'orange_carpet', 'Tapete decorativo laranja', 'orange_carpet.svg', 'craftable'),
('Tapete Magenta', 'magenta_carpet', 'Tapete decorativo magenta', 'magenta_carpet.svg', 'craftable'),
('Tapete Azul Claro', 'light_blue_carpet', 'Tapete decorativo azul claro', 'light_blue_carpet.svg', 'craftable'),
('Tapete Amarelo', 'yellow_carpet', 'Tapete decorativo amarelo', 'yellow_carpet.svg', 'craftable'),
('Tapete Verde Limão', 'lime_carpet', 'Tapete decorativo verde limão', 'lime_carpet.svg', 'craftable'),
('Tapete Rosa', 'pink_carpet', 'Tapete decorativo rosa', 'pink_carpet.svg', 'craftable'),
('Tapete Cinza', 'gray_carpet', 'Tapete decorativo cinza', 'gray_carpet.svg', 'craftable'),
('Tapete Cinza Claro', 'light_gray_carpet', 'Tapete decorativo cinza claro', 'light_gray_carpet.svg', 'craftable'),
('Tapete Ciano', 'cyan_carpet', 'Tapete decorativo ciano', 'cyan_carpet.svg', 'craftable'),
('Tapete Roxo', 'purple_carpet', 'Tapete decorativo roxo', 'purple_carpet.svg', 'craftable'),
('Tapete Azul', 'blue_carpet', 'Tapete decorativo azul', 'blue_carpet.svg', 'craftable'),
('Tapete Marrom', 'brown_carpet', 'Tapete decorativo marrom', 'brown_carpet.svg', 'craftable'),
('Tapete Verde', 'green_carpet', 'Tapete decorativo verde', 'green_carpet.svg', 'craftable'),
('Tapete Vermelho', 'red_carpet', 'Tapete decorativo vermelho', 'red_carpet.svg', 'craftable'),
('Tapete Preto', 'black_carpet', 'Tapete decorativo preto', 'black_carpet.svg', 'craftable');

-- ALIMENTOS ADICIONAIS ------------------------------------------------------
INSERT IGNORE INTO items (name, slug, description, icon, category) VALUES
('Maçã Dourada', 'golden_apple', 'Maçã mágica que restaura muita vida', 'golden_apple.svg', 'craftable'),
('Cenoura Dourada', 'golden_carrot', 'Cenoura dourada usada para poções', 'golden_carrot.svg', 'craftable'),
('Melancia Fatiada', 'melon_slice', 'Fatia de melancia refrescante', 'melon_slice.svg', 'material'),
('Maçã', 'apple', 'Maçã vermelha comum', 'apple.svg', 'material'),
('Cenoura', 'carrot', 'Cenoura alaranjada nutritiva', 'carrot.svg', 'material'),
('Batata', 'potato', 'Batata comum do solo', 'potato.svg', 'material'),
('Batata Assada', 'baked_potato', 'Batata cozida e quentinha', 'baked_potato.svg', 'craftable'),
('Trigo', 'wheat', 'Trigo dourado para fazer pão', 'wheat.svg', 'material'),
('Sementes de Trigo', 'wheat_seeds', 'Sementes para plantar trigo', 'wheat_seeds.svg', 'material'),
('Açúcar', 'sugar', 'Açúcar refinado de cana', 'sugar.svg', 'material'),
('Ovo', 'egg', 'Ovo de galinha', 'egg.svg', 'material'),
('Leite', 'milk_bucket', 'Balde cheio de leite', 'milk_bucket.svg', 'material');

-- BLOCOS DECORATIVOS --------------------------------------------------------
INSERT IGNORE INTO items (name, slug, description, icon, category) VALUES
('Quartzo Liso', 'quartz_block', 'Bloco branco de quartzo', 'quartz_block.svg', 'craftable'),
('Quartzo Entalhado', 'chiseled_quartz_block', 'Quartzo com padrão decorativo', 'chiseled_quartz_block.svg', 'craftable'),
('Pilar de Quartzo', 'quartz_pillar', 'Pilar decorativo de quartzo', 'quartz_pillar.svg', 'craftable'),
('Escada de Quartzo', 'quartz_stairs', 'Escada feita de quartzo', 'quartz_stairs.svg', 'craftable'),
('Laje de Quartzo', 'quartz_slab', 'Laje fina de quartzo', 'quartz_slab.svg', 'craftable'),
('Quartzo', 'quartz', 'Cristal de quartzo do Nether', 'quartz.svg', 'material'),
('Pedra Lisa', 'smooth_stone', 'Pedra polida e lisa', 'smooth_stone.svg', 'craftable'),
('Pedra Musgosa', 'mossy_cobblestone', 'Pedra coberta de musgo', 'mossy_cobblestone.svg', 'craftable'),
('Tijolos de Pedra', 'stone_bricks', 'Tijolos decorativos de pedra', 'stone_bricks.svg', 'craftable'),
('Tijolos de Pedra Rachados', 'cracked_stone_bricks', 'Tijolos de pedra danificados', 'cracked_stone_bricks.svg', 'craftable'),
('Tijolos de Pedra Musgosos', 'mossy_stone_bricks', 'Tijolos de pedra com musgo', 'mossy_stone_bricks.svg', 'craftable'),
('Arenito', 'sandstone', 'Bloco de arenito amarelo', 'sandstone.svg', 'craftable'),
('Arenito Liso', 'smooth_sandstone', 'Arenito polido', 'smooth_sandstone.svg', 'craftable'),
('Arenito Entalhado', 'chiseled_sandstone', 'Arenito com padrão decorativo', 'chiseled_sandstone.svg', 'craftable'),
('Areia', 'sand', 'Areia comum do deserto', 'sand.svg', 'material');

-- BLOCOS DE MADEIRA ADICIONAIS ----------------------------------------------
INSERT IGNORE INTO items (name, slug, description, icon, category) VALUES
('Tábuas de Carvalho', 'oak_planks', 'Tábuas de madeira de carvalho', 'oak_planks.svg', 'craftable'),
('Tábuas de Abeto', 'spruce_planks', 'Tábuas de madeira de abeto', 'spruce_planks.svg', 'craftable'),
('Tábuas de Bétula', 'birch_planks', 'Tábuas de madeira de bétula', 'birch_planks.svg', 'craftable'),
('Tábuas de Selva', 'jungle_planks', 'Tábuas de madeira de selva', 'jungle_planks.svg', 'craftable'),
('Tábuas de Acácia', 'acacia_planks', 'Tábuas de madeira de acácia', 'acacia_planks.svg', 'craftable'),
('Tábuas de Carvalho Escuro', 'dark_oak_planks', 'Tábuas de madeira de carvalho escuro', 'dark_oak_planks.svg', 'craftable'),
('Tronco de Carvalho', 'oak_log', 'Tronco de árvore de carvalho', 'oak_log.svg', 'material'),
('Tronco de Abeto', 'spruce_log', 'Tronco de árvore de abeto', 'spruce_log.svg', 'material'),
('Tronco de Bétula', 'birch_log', 'Tronco de árvore de bétula', 'birch_log.svg', 'material'),
('Tronco de Selva', 'jungle_log', 'Tronco de árvore de selva', 'jungle_log.svg', 'material'),
('Tronco de Acácia', 'acacia_log', 'Tronco de árvore de acácia', 'acacia_log.svg', 'material'),
('Tronco de Carvalho Escuro', 'dark_oak_log', 'Tronco de árvore de carvalho escuro', 'dark_oak_log.svg', 'material');

-- ITENS DE REDSTONE AVANÇADOS -----------------------------------------------
INSERT IGNORE INTO items (name, slug, description, icon, category) VALUES
('Comparador', 'comparator', 'Compara sinais de redstone', 'comparator.svg', 'craftable'),
('Observador', 'observer', 'Detecta atualizações de blocos', 'observer.svg', 'craftable'),
('Funil', 'hopper', 'Transporta itens automaticamente', 'hopper.svg', 'craftable'),
('Ejetor', 'dispenser', 'Ejeta itens e projéteis', 'dispenser.svg', 'craftable'),
('Liberador', 'dropper', 'Libera itens', 'dropper.svg', 'craftable'),
('Lâmpada de Redstone', 'redstone_lamp', 'Luz acionada por redstone', 'redstone_lamp.svg', 'craftable'),
('Bloco de Redstone', 'redstone_block', 'Bloco condutor de redstone', 'redstone_block.svg', 'craftable');

-- FERRAMENTAS E ITENS ESPECIAIS ---------------------------------------------
INSERT IGNORE INTO items (name, slug, description, icon, category) VALUES
('Mapa', 'map', 'Mapa para exploração', 'map.svg', 'craftable'),
('Mapa Vazio', 'empty_map', 'Mapa ainda não explorado', 'empty_map.svg', 'craftable'),
('Bússola de Lodestone', 'lodestone_compass', 'Bússola que aponta para lodestone', 'lodestone_compass.svg', 'craftable'),
('Porta-Item', 'item_frame', 'Moldura para exibir itens', 'item_frame.svg', 'craftable'),
('Armadura de Couro para Cavalo', 'leather_horse_armor', 'Armadura de cavalo de couro', 'leather_horse_armor.svg', 'craftable'),
('Armadura de Ferro para Cavalo', 'iron_horse_armor', 'Armadura de cavalo de ferro', 'iron_horse_armor.svg', 'craftable'),
('Armadura de Ouro para Cavalo', 'golden_horse_armor', 'Armadura de cavalo de ouro', 'golden_horse_armor.svg', 'craftable'),
('Armadura de Diamante para Cavalo', 'diamond_horse_armor', 'Armadura de cavalo de diamante', 'diamond_horse_armor.svg', 'craftable'),
('Sela', 'saddle', 'Sela para montar em animais', 'saddle.svg', 'material'),
('Cabresto', 'lead', 'Corda para guiar animais', 'lead.svg', 'craftable'),
('Etiqueta', 'name_tag', 'Etiqueta para nomear mobs', 'name_tag.svg', 'material');

-- MATERIAIS AVANÇADOS -------------------------------------------------------
INSERT IGNORE INTO items (name, slug, description, icon, category) VALUES
('Blaze Rod', 'blaze_rod', 'Vara de blaze do Nether', 'blaze_rod.svg', 'material'),
('Blaze Powder', 'blaze_powder', 'Pó de blaze para poções', 'blaze_powder.svg', 'material'),
('Ender Pearl', 'ender_pearl', 'Pérola de teletransporte', 'ender_pearl.svg', 'material'),
('Olho do Ender', 'ender_eye', 'Olho usado para localizar fortalezas', 'ender_eye.svg', 'craftable'),
('Esmeralda', 'emerald', 'Gema verde valiosa', 'emerald.svg', 'material'),
('Bloco de Esmeralda', 'emerald_block', 'Bloco compacto de esmeraldas', 'emerald_block.svg', 'craftable'),
('Lápis-Lazúli', 'lapis_lazuli', 'Gema azul para encantamentos', 'lapis_lazuli.svg', 'material'),
('Bloco de Lápis-Lazúli', 'lapis_block', 'Bloco compacto de lápis-lazúli', 'lapis_block.svg', 'craftable'),
('Obsidiana', 'obsidian', 'Bloco muito resistente', 'obsidian.svg', 'material'),
('Pedra Luminosa', 'glowstone', 'Bloco que emite luz', 'glowstone.svg', 'material'),
('Pó de Pedra Luminosa', 'glowstone_dust', 'Pó luminescente', 'glowstone_dust.svg', 'material');

-- BLOCOS FUNCIONAIS ---------------------------------------------------------
INSERT IGNORE INTO items (name, slug, description, icon, category) VALUES
('Bigorna', 'anvil', 'Repara e nomeia itens', 'anvil.svg', 'craftable'),
('Mesa de Encantamento', 'enchanting_table', 'Mesa para encantar itens', 'enchanting_table.svg', 'craftable'),
('Suporte para Poções', 'brewing_stand', 'Suporte para fazer poções', 'brewing_stand.svg', 'craftable'),
('Caldeirão', 'cauldron', 'Caldeirão para armazenar água', 'cauldron.svg', 'craftable'),
('Beacon', 'beacon', 'Farol que dá efeitos de área', 'beacon.svg', 'craftable'),
('Bloco de Nota Musical', 'note_block', 'Bloco que toca notas', 'note_block.svg', 'craftable'),
('Jukebox', 'jukebox', 'Toca discos musicais', 'jukebox.svg', 'craftable'),
('Telar', 'loom', 'Cria designs em banners', 'loom.svg', 'craftable');

-- TNT E EXPLOSIVOS ----------------------------------------------------------
INSERT IGNORE INTO items (name, slug, description, icon, category) VALUES
('TNT', 'tnt', 'Explosivo poderoso', 'tnt.svg', 'craftable'),
('Pólvora', 'gunpowder', 'Pó explosivo', 'gunpowder.svg', 'material');

SELECT '✓ 160+ novos itens adicionados com sucesso!' as Status;
