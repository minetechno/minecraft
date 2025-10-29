-- ================================================
-- Adição de Mais Mobs - 20 Novos Mobs
-- Data: 2025-10-29
-- ================================================

-- MOBS PASSIVOS (6 novos)
INSERT INTO `mobs` (`name`, `slug`, `description`, `icon`, `type`, `health`, `attack_damage`, `is_dangerous`, `drops_json`, `spawn_location`) VALUES

('Burro', 'donkey', 'Animal passivo semelhante ao cavalo, mas mais lento. Pode ser domado e equipado com baús para carregar itens. Ideal para transporte de recursos.', 'donkey.svg', 'passive', 30, NULL, 0, '["Couro (0-2)"]', 'Planícies e savanas'),

('Gato', 'cat', 'Animal passivo domesticável encontrado em vilas. Afasta Creepers e Phantoms. Pode trazer presentes pela manhã quando domado. Existem 11 variações de pelagem.', 'cat.svg', 'passive', 10, NULL, 0, '["Linha (0-2)"]', 'Vilas e cabanas de pântano'),

('Papagaio', 'parrot', 'Ave passiva colorida que pode ser domada com sementes. Imita sons de mobs próximos. Pode sentar no ombro do jogador. Existem 5 variações de cores.', 'parrot.svg', 'passive', 6, NULL, 0, '["Penas (1-2)"]', 'Selvas (bioma jungle)'),

('Lula', 'squid', 'Criatura aquática passiva que nada em oceanos e rios. Solta tinta quando atacada. Morre fora da água após alguns segundos.', 'squid.svg', 'passive', 10, NULL, 0, '["Saco de Tinta (1-3)"]', 'Oceanos, rios e lagos'),

('Tartaruga', 'turtle', 'Criatura passiva aquática que desova em praias. Pode ser criada com algas marinhas. Solta escudos que podem ser usados para poções.', 'turtle.svg', 'passive', 30, NULL, 0, '["Alga Marinha (0-2)", "Escudo de Tartaruga (quando bebê cresce)"]', 'Praias e oceanos'),

('Peixe Tropical', 'tropical_fish', 'Pequeno peixe colorido passivo encontrado em oceanos quentes. Existem mais de 3000 variações de cores e padrões. Pode ser capturado com balde.', 'tropical_fish.svg', 'passive', 3, NULL, 0, '["Peixe Tropical (1)", "Farinha de Osso (5%)"]', 'Oceanos quentes e mornos'),

-- MOBS NEUTROS (4 novos)
('Urso Polar', 'polar_bear', 'Grande predador neutro de biomas gelados. Ataca se aproximar dos filhotes. Muito forte e rápido na água. Perigoso em grupo.', 'polar_bear.svg', 'neutral', 30, 6, 1, '["Peixe Cru (0-2)", "Salmão Cru (0-2)"]', 'Biomas gelados e tundra'),

('Panda', 'panda', 'Animal neutro raro encontrado em selvas de bambu. Possui diferentes personalidades (normal, preguiçoso, brincalhão, agressivo, preocupado, marrom, fraco). Ataca se provocado.', 'panda.svg', 'neutral', 20, 6, 0, '["Bambu (0-2)"]', 'Selvas de bambu'),

('Raposa', 'fox', 'Animal neutro ágil e noturno. Ataca galinhas, coelhos e peixes. Pode pegar itens com a boca. Quando domada, defende o jogador. Dorme durante o dia.', 'fox.svg', 'neutral', 10, 2, 0, '[]', 'Taiga e taiga nevada'),

('Golfinho', 'dolphin', 'Criatura aquática neutra inteligente e amigável. Concede velocidade de natação ao jogador próximo. Guia até tesouros submersos. Morre fora da água.', 'dolphin.svg', 'neutral', 10, 3, 0, '["Bacalhau Cru (0-1)"]', 'Oceanos (exceto gelados)'),

-- MOBS HOSTIS (8 novos)
('Afogado', 'drowned', 'Variante zumbi aquático hostil que spawna em oceanos e rios. Pode atacar com tridente. Queima no sol quando fora da água. Pode converter zumbis normais.', 'drowned.svg', 'hostile', 20, 3, 1, '["Carne Podre (0-2)", "Pepita de Ouro (0-1)", "Tridente (raro)", "Concha Náutica (raro)"]', 'Oceanos, rios e underwater'),

('Guardião', 'guardian', 'Criatura aquática hostil que defende monumentos oceânicos. Ataca com raio laser. Possui espinhos que causam dano ao ser atacado corpo a corpo.', 'guardian.svg', 'hostile', 30, 8, 1, '["Prismarinho (0-2)", "Peixe Cru (0-1)", "Cristal Prismarinho (raro)"]', 'Monumentos oceânicos'),

('Blaze', 'blaze', 'Criatura voadora hostil do Nether feita de fogo. Atira bolas de fogo em rajadas. Spawna em fortalezas do Nether. Essencial para completar o jogo.', 'blaze.svg', 'hostile', 20, 6, 1, '["Vara de Blaze (0-1)", "Pó de Pedra Luminosa (0-2)"]', 'Fortalezas do Nether'),

('Vindicador', 'vindicator', 'Illager hostil agressivo armado com machado. Aparece em Mansões da Floresta e Raids. Muito perigoso em combate corpo a corpo. Persegue jogadores e aldeões.', 'vindicator.svg', 'hostile', 24, 13, 1, '["Esmeralda (0-1)", "Machado de Ferro/Pedra (raro)"]', 'Mansões da floresta e raids'),

('Pillager', 'pillager', 'Illager hostil armado com besta. Lidera raids em vilas. Spawna em postos avançados. Ataca à distância. Pode dropar bandeira ominosa quando líder.', 'pillager.svg', 'hostile', 24, 5, 1, '["Flecha (0-2)", "Besta (raro)", "Bandeira Ominosa (líder)"]', 'Postos avançados e patrulhas'),

('Ravager', 'ravager', 'Enorme besta hostil usada pelos Illagers. Aparece em raids. Destrói plantações e folhas. Extremamente forte e resistente. Causa muito dano.', 'ravager.svg', 'hostile', 100, 12, 1, '["Sela (1)"]', 'Raids (ondas finais)'),

('Fantasma', 'phantom', 'Criatura voadora hostil que spawna quando o jogador não dorme por 3+ dias. Ataca mergulhando do céu. Queima sob luz solar. Voa em círculos.', 'phantom.svg', 'hostile', 20, 6, 1, '["Membrana de Fantasma (0-1)"]', 'Céu noturno (após 3+ dias sem dormir)'),

('Piglin', 'piglin', 'Criatura neutra/hostil do Nether. Hostil se você não usar armadura de ouro. Pode fazer trocas (bartering) com barras de ouro. Zombifica no Overworld.', 'piglin.svg', 'hostile', 16, 5, 1, '["Carne Podre (0-1)", "Barra de Ouro (raro)"]', 'Nether (biomas Crimson Forest e Bastion)'),

-- MOBS BOSSES (2 novos)
('Guardião Ancião', 'elder_guardian', 'Versão boss do Guardião. Spawna 3 por monumento oceânico. Aplica efeito Mining Fatigue III. Muito mais forte que guardiões normais. Mini-boss aquático.', 'elder_guardian.svg', 'boss', 80, 8, 1, '["Prismarinho (0-2)", "Peixe Cru (0-1)", "Esponja Molhada (1)", "Cristal Prismarinho (raro)"]', 'Monumentos oceânicos (3 por estrutura)'),

('Warden', 'warden', 'Boss mais poderoso do Minecraft. Spawna em Deep Dark ao ativar Sculk Shriekers. É cego, detecta por vibração e som. Mata em 2 golpes com armadura de netherite. Extremamente perigoso.', 'warden.svg', 'boss', 500, 30, 1, '["Catalisador Sculk (1)", "Experiência massiva"]', 'Deep Dark (Cidades Antigas)');

-- ================================================
-- Atualização concluída: +20 mobs adicionados
-- Total de mobs agora: 42
-- ================================================
