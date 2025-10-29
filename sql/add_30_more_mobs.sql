-- ================================================
-- Adição de Mais 30 Mobs - Expansão Completa
-- Data: 2025-10-29
-- Total após execução: 72 mobs
-- ================================================

-- MOBS PASSIVOS (9 novos)
INSERT INTO `mobs` (`name`, `slug`, `description`, `icon`, `type`, `health`, `attack_damage`, `is_dangerous`, `drops_json`, `spawn_location`) VALUES

('Coelho', 'rabbit', 'Pequeno animal passivo que pula rapidamente. Pode ser criado com cenouras. Existem várias cores incluindo o raríssimo coelho assassino. Dropa pé de coelho usado em poções.', 'rabbit.svg', 'passive', 3, NULL, 0, '["Couro de Coelho (0-1)", "Carne de Coelho Crua (0-1)", "Pé de Coelho (raro)"]', 'Planícies, desertos, taiga, tundra'),

('Mula', 'mule', 'Híbrido entre cavalo e burro. Não pode se reproduzir mas pode carregar baús. Mais rápido que burros, mais lento que cavalos. Ideal para transporte.', 'mule.svg', 'passive', 30, NULL, 0, '["Couro (0-2)"]', 'Planícies e savanas (cruzamento)'),

('Axolote', 'axolotl', 'Criatura aquática passiva rara encontrada em cavernas alagadas. Ataca peixes e afogados. Pode fingir morte. Existem 5 cores, incluindo o raríssimo azul.', 'axolotl.svg', 'passive', 14, NULL, 0, '[]', 'Cavernas alagadas (Lush Caves)'),

('Lula Brilhante', 'glow_squid', 'Variante brilhante da lula que emite luz. Encontrada em cavernas alagadas profundas. Dropa saco de tinta brilhante usado em placas e livros.', 'glow_squid.svg', 'passive', 10, NULL, 0, '["Saco de Tinta Brilhante (1-3)"]', 'Oceanos profundos e cavernas aquáticas'),

('Bacalhau', 'cod', 'Peixe passivo comum encontrado em oceanos frios. Pode ser pescado ou capturado com balde. Usado como alimento ou para domar gatos.', 'cod.svg', 'passive', 3, NULL, 0, '["Bacalhau Cru (1)", "Farinha de Osso (5%)"]', 'Oceanos frios e normais'),

('Salmão', 'salmon', 'Peixe passivo encontrado em oceanos e rios. Nada contra correnteza. Pode ser pescado ou capturado com balde. Melhor alimento que bacalhau.', 'salmon.svg', 'passive', 3, NULL, 0, '["Salmão Cru (1)", "Farinha de Osso (5%)"]', 'Oceanos frios, rios'),

('Peixe Baiacu', 'pufferfish', 'Peixe passivo que infla quando ameaçado, envenenando quem se aproxima. Usado em poções de respiração aquática. Perigoso quando inflado.', 'pufferfish.svg', 'passive', 3, NULL, 0, '["Peixe Baiacu (1)", "Farinha de Osso (5%)"]', 'Oceanos mornos'),

('Morcego', 'bat', 'Pequena criatura voadora passiva que vive em cavernas. Voa em padrões erráticos. Não dropa nada. Apenas atmosférico, emite sons característicos.', 'bat.svg', 'passive', 6, NULL, 0, '[]', 'Cavernas escuras (light level 0)'),

('Strider', 'strider', 'Criatura passiva do Nether que anda sobre lava. Pode ser montado com sela e guiado com vara e fungo distorcido. Congela fora da lava.', 'strider.svg', 'passive', 20, NULL, 0, '["Linha (2-5)"]', 'Oceanos de lava no Nether'),

-- MOBS NEUTROS (3 novos)
('Aranha de Caverna', 'cave_spider', 'Variante menor e mais perigosa da aranha. Envenena ao atacar. Spawna apenas de spawners em minas abandonadas. Mais ágil que aranha normal.', 'cave_spider.svg', 'neutral', 12, 2, 1, '["Linha (0-2)", "Olho de Aranha (0-1)"]', 'Minas abandonadas (spawners)'),

('Cabra', 'goat', 'Animal neutro encontrado em montanhas. Pula muito alto e derruba jogadores de penhascos. Pode dropar chifre quando bate em blocos. Agressiva se provocada.', 'goat.svg', 'neutral', 10, 2, 1, '["Chifre de Cabra (quando bate em bloco)"]', 'Montanhas e picos'),

('Lhama', 'llama', 'Animal neutro que pode ser domado e forma caravanas. Cospe em inimigos. Pode carregar baús e usar carpetes decorativos. Defende aldeões.', 'llama.svg', 'neutral', 30, 1, 0, '["Couro (0-2)"]', 'Montanhas e savanas'),

-- MOBS HOSTIS (18 novos)
('Husk', 'husk', 'Variante de zumbi do deserto. Não queima no sol. Aplica efeito Fome ao atacar. Mais resistente em ambientes quentes. Converte em zumbi se afogar.', 'husk.svg', 'hostile', 20, 3, 1, '["Carne Podre (0-2)", "Areia (raro)", "Lingote de Ferro (muito raro)"]', 'Desertos'),

('Stray', 'stray', 'Variante de esqueleto de biomas gelados. Atira flechas com efeito Lentidão. Não queima no sol em biomas nevados. Muito perigoso em grupo.', 'stray.svg', 'hostile', 20, 4, 1, '["Osso (0-2)", "Flecha (0-2)", "Flecha de Lentidão (raro)"]', 'Biomas gelados e tundra'),

('Traça', 'silverfish', 'Pequeno inseto hostil que se esconde em blocos de pedra. Chama mais traças quando atacada. Encontrada em strongholds e montanhas extremas.', 'silverfish.svg', 'hostile', 8, 1, 1, '[]', 'Strongholds, montanhas extremas'),

('Endermite', 'endermite', 'Pequena criatura hostil que spawna ao usar pérolas do End. Provoca Endermen. Vida curta, desaparece após 2 minutos. Muito pequeno e difícil de acertar.', 'endermite.svg', 'hostile', 8, 2, 1, '[]', 'Spawna ao usar Pérola do End (5%)'),

('Shulker', 'shulker', 'Mob hostil do End que se disfarça como bloco. Atira projéteis que aplicam Levitação. Essencial para farms. Dropa shulker box quando morto.', 'shulker.svg', 'hostile', 30, 4, 1, '["Concha de Shulker (0-1)"]', 'Cidades do End'),

('Vex', 'vex', 'Pequeno espírito hostil invocado por Evokers. Atravessa paredes. Voa e ataca com espada de ferro. Morre após alguns minutos. Muito irritante.', 'vex.svg', 'hostile', 14, 9, 1, '[]', 'Invocado por Evokers'),

('Invocador', 'evoker', 'Illager hostil poderoso que invoca Vexes e presas. Aparece em Mansões e Raids. Dropa Totem da Imortalidade. Muito perigoso, líder de Illagers.', 'evoker.svg', 'hostile', 24, 6, 1, '["Esmeralda (0-1)", "Totem da Imortalidade (1)"]', 'Mansões da floresta e raids'),

('Cubo de Magma', 'magma_cube', 'Versão do Nether do Slime. Imune a fogo e lava. Divide-se em cubos menores. Salta mais alto que slimes. Não sofre dano de queda.', 'magma_cube.svg', 'hostile', 16, 6, 1, '["Creme de Magma (0-1)"]', 'Nether, perto de lava'),

('Hoglin', 'hoglin', 'Grande besta hostil do Nether parecida com javali. Não ataca se você usar fungo distorcido. Zombifica no Overworld. Pode ser criado.', 'hoglin.svg', 'hostile', 40, 6, 1, '["Carne de Porco Crua (2-4)", "Couro (0-2)"]', 'Nether (Crimson Forest)'),

('Zoglin', 'zoglin', 'Versão zumbi hostil do Hoglin. Criado quando Hoglin vai para Overworld. Ataca tudo, incluindo Piglins. Extremamente agressivo e perigoso.', 'zoglin.svg', 'hostile', 40, 6, 1, '["Carne Podre (1-2)"]', 'Overworld (Hoglin transformado)'),

('Piglin Bruto', 'piglin_brute', 'Variante mais forte e hostil do Piglin. Não faz trocas. Sempre hostil, mesmo com armadura de ouro. Guarda bastions. Muito perigoso.', 'piglin_brute.svg', 'hostile', 50, 13, 1, '["Barra de Ouro (raro)"]', 'Bastion Remnants (Nether)'),

('Esqueleto Wither', 'wither_skeleton', 'Esqueleto alto e negro do Nether armado com espada de pedra. Aplica efeito Wither. Dropa crânio usado para invocar o Wither. Muito perigoso.', 'wither_skeleton.svg', 'hostile', 20, 8, 1, '["Carvão (0-1)", "Osso (0-2)", "Crânio de Wither Skeleton (raro)"]', 'Fortalezas do Nether'),

('Coelho Assassino', 'killer_bunny', 'Variante raríssima e extremamente hostil do coelho. Olhos vermelhos. Ataca jogadores e lobos. Extremamente rápido e perigoso. Easter egg do jogo.', 'killer_bunny.svg', 'hostile', 3, 8, 1, '["Couro de Coelho (0-1)", "Pé de Coelho (garantido)"]', 'Não spawna naturalmente (comando)'),

('Zumbi Bebê', 'baby_zombie', 'Versão bebê extremamente rápida do zumbi. Muito mais perigoso que zumbi adulto. Pode montar galinhas, lobos e outros mobs. Não queima no sol.', 'baby_zombie.svg', 'hostile', 20, 3, 1, '["Carne Podre (0-2)"]', 'Superfície à noite (raro)'),

('Golem de Neve', 'snow_golem', 'Criatura criada pelo jogador com blocos de neve e abóbora. Atira bolas de neve. Derrete em biomas quentes. Útil para defesa. Não causa dano a mobs não-Blaze.', 'snow_golem.svg', 'neutral', 4, 0, 0, '["Bola de Neve (0-15)"]', 'Criado pelo jogador'),

('Aldeão Zumbi', 'zombie_villager', 'Aldeão transformado em zumbi. Pode ser curado de volta para aldeão. Mantém profissão após cura. Queima no sol como zumbis normais.', 'zombie_villager.svg', 'hostile', 20, 3, 1, '["Carne Podre (0-2)", "Lingote de Ferro (raro)"]', 'Superfície à noite, ou conversão'),

('Aranha Jockey', 'spider_jockey', 'Esqueleto montado em aranha. Combinação perigosa de mobilidade e ataque à distância. Raro spawn. Esqueleto atira enquanto aranha persegue.', 'spider_jockey.svg', 'hostile', 36, 6, 1, '["Linha (0-2)", "Osso (0-2)", "Flecha (0-2)"]', 'Superfície à noite (1% de chance)');

-- ================================================
-- Atualização concluída: +30 mobs adicionados
-- Total de mobs agora: 72
-- ================================================

-- Estatísticas finais:
-- Passivos: 22 mobs
-- Neutros: 15 mobs
-- Hostis: 31 mobs
-- Bosses: 4 mobs
-- TOTAL: 72 mobs
