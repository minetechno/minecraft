-- ================================================
-- Migration: Tabela de Mobs do Minecraft
-- Data: 2025-10-29
-- ================================================

-- Criar tabela de mobs
CREATE TABLE IF NOT EXISTS `mobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT 'Nome do mob em português',
  `slug` varchar(120) NOT NULL COMMENT 'Slug para URL',
  `description` text COMMENT 'Descrição detalhada do mob',
  `icon` varchar(200) NOT NULL COMMENT 'Nome do arquivo de ícone SVG',
  `type` varchar(50) NOT NULL COMMENT 'passive, neutral, hostile, boss',
  `health` int NOT NULL DEFAULT 0 COMMENT 'Pontos de vida',
  `attack_damage` int DEFAULT NULL COMMENT 'Dano de ataque (null se não ataca)',
  `is_dangerous` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 se é perigoso, 0 se não',
  `drops_json` text COMMENT 'JSON array de itens que dropa',
  `spawn_location` text COMMENT 'Onde o mob spawna',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `idx_type` (`type`),
  KEY `idx_dangerous` (`is_dangerous`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ================================================
-- INSERÇÃO DE DADOS - MOBS DO MINECRAFT
-- ================================================

-- MOBS PASSIVOS (não atacam nunca)
INSERT INTO `mobs` (`name`, `slug`, `description`, `icon`, `type`, `health`, `attack_damage`, `is_dangerous`, `drops_json`, `spawn_location`) VALUES
('Vaca', 'cow', 'Animal passivo que fornece couro e carne. Pode ser ordenhada com um balde para obter leite. Vive em pastagens e pode ser criada com trigo.', 'cow.svg', 'passive', 10, NULL, 0, '["Couro (0-2)", "Carne Crua (1-3)"]', 'Superfície do mundo, biomas de pastagem'),

('Porco', 'pig', 'Animal passivo que fornece carne. Pode ser montado com uma sela e controlado com cenoura no graveto. Muito comum em diversos biomas.', 'pig.svg', 'passive', 10, NULL, 0, '["Carne de Porco Crua (1-3)"]', 'Superfície do mundo, diversos biomas'),

('Galinha', 'chicken', 'Animal passivo que bota ovos e fornece penas. Pode ser criada com sementes. Cai lentamente quando está no ar.', 'chicken.svg', 'passive', 4, NULL, 0, '["Penas (0-2)", "Frango Cru (1)"]', 'Superfície do mundo, diversos biomas'),

('Ovelha', 'sheep', 'Animal passivo que fornece lã quando tosquiada. Pode ter diversas cores. Muito útil para obtenção de lã sem matá-la.', 'sheep.svg', 'passive', 8, NULL, 0, '["Lã (1)", "Carneiro Cru (1-2)"]', 'Superfície do mundo, pastagens'),

('Cogumelo (Mooshroom)', 'mooshroom', 'Vaca especial encontrada apenas em biomas de cogumelos. Pode ser ordenhada para obter ensopado de cogumelos. Muito rara.', 'mooshroom.svg', 'passive', 10, NULL, 0, '["Couro (0-2)", "Carne Crua (1-3)", "Cogumelos Vermelhos (5)"]', 'Bioma de Ilha de Cogumelos'),

('Cavalo', 'horse', 'Animal passivo que pode ser domado e montado. Útil para transporte rápido. Pode usar armadura e sela. Existem diversas variações de pelagem.', 'horse.svg', 'passive', 30, NULL, 0, '["Couro (0-2)"]', 'Planícies e savanas'),

('Aldeão', 'villager', 'NPC passivo que vive em vilas e comercializa itens. Possui diversas profissões como fazendeiro, bibliotecário, armeiro, etc.', 'villager.svg', 'passive', 20, NULL, 0, '[]', 'Vilas e estruturas geradas'),

-- MOBS NEUTROS (atacam apenas se provocados)
('Lobo', 'wolf', 'Animal neutro que pode ser domado com ossos. Quando domado, protege o jogador e ataca seus inimigos. Vive em matilhas.', 'wolf.svg', 'neutral', 8, 4, 0, '[]', 'Florestas e taiga'),

('Abelha', 'bee', 'Inseto neutro que poliniza flores e produz mel. Ataca em grupo se provocada, causando envenenamento. Vive em colmeias.', 'bee.svg', 'neutral', 10, 2, 0, '[]', 'Planícies com flores, próximo a colmeias'),

('Enderman', 'enderman', 'Criatura neutra alta e misteriosa que teleporta. Ataca se você olhar diretamente para seus olhos. Muito perigoso quando irritado.', 'enderman.svg', 'neutral', 40, 7, 1, '["Pérola do End (0-1)"]', 'Superfície à noite, Nether, The End'),

('Golem de Ferro', 'iron_golem', 'Criatura neutra forte que protege aldeões. Pode ser construída pelo jogador. Ataca mobs hostis automaticamente.', 'iron_golem.svg', 'neutral', 100, 21, 0, '["Ferro (3-5)", "Papoula (0-2)"]', 'Vilas geradas naturalmente'),

('Homem-Porco Zumbi', 'zombified_piglin', 'Criatura neutra do Nether. Ataca em grupo se um deles for provocado. Carrega espada de ouro e é muito perigoso em grupo.', 'zombified_piglin.svg', 'neutral', 20, 8, 1, '["Pepita de Ouro (0-1)", "Carne Podre (0-1)"]', 'Nether, portais'),

-- MOBS HOSTIS (atacam sempre)
('Zumbi', 'zombie', 'Morto-vivo hostil comum que spawna à noite. Queima sob luz solar. Pode quebrar portas no modo difícil. Pode spawnar bebês zumbis muito rápidos.', 'zombie.svg', 'hostile', 20, 3, 1, '["Carne Podre (0-2)", "Cenoura (raro)", "Batata (raro)", "Lingote de Ferro (raro)"]', 'Superfície à noite, cavernas escuras'),

('Esqueleto', 'skeleton', 'Morto-vivo hostil que ataca com arco e flecha à distância. Queima sob luz solar. Muito perigoso em grupos.', 'skeleton.svg', 'hostile', 20, 4, 1, '["Osso (0-2)", "Flecha (0-2)", "Arco (raro)"]', 'Superfície à noite, cavernas escuras'),

('Creeper', 'creeper', 'Criatura icônica que explode quando se aproxima do jogador. Silencioso e letal. Muito perigoso para construções. Não queima no sol.', 'creeper.svg', 'hostile', 20, 49, 1, '["Pólvora (0-2)", "Disco de Música (se morto por esqueleto)"]', 'Superfície à noite, cavernas escuras'),

('Aranha', 'spider', 'Criatura hostil que escala paredes. Neutra durante o dia, hostil à noite. Pode passar por espaços de 1 bloco de largura.', 'spider.svg', 'hostile', 16, 2, 1, '["Linha (0-2)", "Olho de Aranha (0-1)"]', 'Superfície à noite, cavernas, minas'),

('Bruxa', 'witch', 'Criatura hostil que ataca com poções. Muito perigosa devido às poções de dano e cura. Spawna em pântanos e cabanas.', 'witch.svg', 'hostile', 26, 6, 1, '["Graveto (0-2)", "Pó de Pedra Luminosa (0-2)", "Redstone (0-2)", "Açúcar (0-2)", "Olho de Aranha (0-2)", "Pólvora (0-2)"]', 'Pântanos à noite, cabanas de bruxa'),

('Slime', 'slime', 'Criatura gelatinosa hostil que pula para atacar. Divide-se em slimes menores quando morta. Spawna em pântanos e chunks específicos.', 'slime.svg', 'hostile', 16, 4, 1, '["Bola de Slime (0-2)"]', 'Pântanos à noite, chunks de slime'),

('Ghast', 'ghast', 'Criatura flutuante hostil do Nether que atira bolas de fogo explosivas. Tem um choro característico. Muito perigosa à distância.', 'ghast.svg', 'hostile', 10, 17, 1, '["Pólvora (0-2)", "Lágrima de Ghast (0-1)"]', 'Nether, áreas abertas'),

-- MOBS BOSSES (chefes)
('Ender Dragon', 'ender_dragon', 'Boss final do Minecraft encontrado no End. Voa e ataca com bolas de fogo e investidas. Deve ser derrotado para completar o jogo. Extremamente poderoso.', 'ender_dragon.svg', 'boss', 200, 15, 1, '["Ovo de Dragão (1)", "Experiência massiva"]', 'The End, plataforma central'),

('Wither', 'wither', 'Boss invocado pelo jogador usando crânios de wither esqueleto. Extremamente destrutivo, atira cabeças explosivas. Muito difícil de derrotar.', 'wither.svg', 'boss', 300, 12, 1, '["Estrela do Nether (1)", "Experiência massiva"]', 'Invocado pelo jogador');

-- ================================================
-- Fim da Migration
-- ================================================
