-- ============================
-- Seed para coleções
-- ============================
INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection) VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

-- ============================
-- Seed para tipos (todos oficiais do TCG)
-- ============================
INSERT INTO tbl_types (typeName) VALUES
('Grass'),
('Fire'),
('Water'),
('Lightning'),
('Psychic'),
('Fighting'),
('Darkness'),
('Metal'),
('Fairy'),
('Dragon'),
('Colorless');

-- ============================
-- Seed para estágios
-- ============================
INSERT INTO tbl_stages (stageName) VALUES
('Basic'),
('Stage 1'),
('Stage 2');

-- ============================
-- Seed para cartas (50 exemplos)
-- ============================
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, resist, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
) VALUES
-- Base Set
(120, 'Charizard', 'Flame Pokémon. Evolves from Charmeleon.', 'Fire Spin', '100', 'Water', '-30', '⭐⭐', 4, 1, (SELECT id FROM tbl_types WHERE typeName='Fire'), (SELECT id FROM tbl_stages WHERE stageName='Stage 2')),
(60, 'Bulbasaur', 'Seed Pokémon.', 'Vine Whip', '20', 'Fire', 'None', '⭐', 44, 1, (SELECT id FROM tbl_types WHERE typeName='Grass'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
(90, 'Raichu', 'Electric Pokémon. Evolves from Pikachu.', 'Thunderbolt', '90', 'Fighting', 'None', '⭐⭐', 14, 1, (SELECT id FROM tbl_types WHERE typeName='Lightning'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),
(40, 'Squirtle', 'Tiny Turtle Pokémon.', 'Bubble', '10', 'Lightning', 'None', '⭐', 7, 1, (SELECT id FROM tbl_types WHERE typeName='Water'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
(50, 'Charmander', 'Lizard Pokémon.', 'Ember', '30', 'Water', 'None', '⭐', 46, 1, (SELECT id FROM tbl_types WHERE typeName='Fire'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
(80, 'Gengar', 'Shadow Pokémon. Evolves from Haunter.', 'Dark Mind', '30', 'Psychic', 'None', '⭐⭐', 5, 1, (SELECT id FROM tbl_types WHERE typeName='Psychic'), (SELECT id FROM tbl_stages WHERE stageName='Stage 2')),
(70, 'Machoke', 'Superpower Pokémon.', 'Karate Chop', '50', 'Psychic', 'None', '⭐⭐', 34, 1, (SELECT id FROM tbl_types WHERE typeName='Fighting'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),
(90, 'Snorlax', 'Sleeping Pokémon.', 'Body Slam', '30', 'Fighting', 'Psychic', '⭐⭐⭐', 11, 1, (SELECT id FROM tbl_types WHERE typeName='Colorless'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
(60, 'Jigglypuff', 'Balloon Pokémon.', 'Sing', '10', 'Metal', 'None', '⭐', 54, 1, (SELECT id FROM tbl_types WHERE typeName='Fairy'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
(100, 'Dragonite', 'Dragon Pokémon. Evolves from Dragonair.', 'Hyper Beam', '70', 'Fairy', 'None', '⭐⭐⭐', 19, 1, (SELECT id FROM tbl_types WHERE typeName='Dragon'), (SELECT id FROM tbl_stages WHERE stageName='Stage 2')),

-- Jungle
(70, 'Scyther', 'Mantis Pokémon.', 'Slash', '30', 'Fire', 'Fighting', '⭐⭐', 10, 2, (SELECT id FROM tbl_types WHERE typeName='Grass'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
(80, 'Electrode', 'Ball Pokémon.', 'Explosion', '80', 'Fighting', 'None', '⭐⭐', 21, 2, (SELECT id FROM tbl_types WHERE typeName='Lightning'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),
(90, 'Pinsir', 'Stag Beetle Pokémon.', 'Guillotine', '50', 'Fire', 'None', '⭐⭐', 6, 2, (SELECT id FROM tbl_types WHERE typeName='Grass'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
(100, 'Kangaskhan', 'Parent Pokémon.', 'Comet Punch', '40', 'Fighting', 'None', '⭐⭐⭐', 5, 2, (SELECT id FROM tbl_types WHERE typeName='Colorless'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
(70, 'Clefable', 'Fairy Pokémon. Evolves from Clefairy.', 'Metronome', '30', 'Metal', 'None', '⭐⭐', 1, 2, (SELECT id FROM tbl_types WHERE typeName='Fairy'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),
(80, 'Mr. Mime', 'Barrier Pokémon.', 'Meditate', '20', 'Psychic', 'None', '⭐⭐', 22, 2, (SELECT id FROM tbl_types WHERE typeName='Psychic'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
(90, 'Tauros', 'Wild Bull Pokémon.', 'Rampage', '30', 'Fighting', 'None', '⭐⭐', 17, 2, (SELECT id FROM tbl_types WHERE typeName='Colorless'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
(70, 'Nidoqueen', 'Drill Pokémon. Evolves from Nidorina.', 'Mega Punch', '40', 'Psychic', 'None', '⭐⭐', 7, 2, (SELECT id FROM tbl_types WHERE typeName='Fighting'), (SELECT id FROM tbl_stages WHERE stageName='Stage 2')),
(60, 'Butterfree', 'Butterfly Pokémon. Evolves from Metapod.', 'Whirlwind', '20', 'Fire', 'None', '⭐⭐', 33, 2, (SELECT id FROM tbl_types WHERE typeName='Grass'), (SELECT id FROM tbl_stages WHERE stageName='Stage 2')),
(100, 'Wigglytuff', 'Balloon Pokémon. Evolves from Jigglypuff.', 'Do the Wave', '60', 'Metal', 'None', '⭐⭐', 32, 2, (SELECT id FROM tbl_types WHERE typeName='Fairy'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

-- Fossil
(80, 'Kabutops', 'Shellfish Pokémon. Evolves from Kabuto.', 'Slash', '40', 'Grass', 'None', '⭐⭐', 6, 3, (SELECT id FROM tbl_types WHERE typeName='Fighting'), (SELECT id FROM tbl_stages WHERE stageName='Stage 2')),
(70, 'Aerodactyl', 'Fossil Pokémon.', 'Wing Attack', '30', 'Lightning', 'None', '⭐⭐', 1, 3, (SELECT id FROM tbl_types WHERE typeName='Colorless'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
(90, 'Articuno', 'Freeze Pokémon.', 'Blizzard', '50', 'Lightning', 'None', '⭐⭐', 2, 3, (SELECT id FROM tbl_types WHERE typeName='Water'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
(90, 'Zapdos', 'Electric Pokémon.', 'Thunderstorm', '60', 'Fighting', 'None', '⭐⭐', 15, 3, (SELECT id FROM tbl_types WHERE typeName='Lightning'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
(90, 'Moltres', 'Flame Pokémon.', 'Dive Bomb', '70', 'Water', 'None', '⭐⭐', 12, 3, (SELECT id FROM tbl_types WHERE typeName='Fire'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),