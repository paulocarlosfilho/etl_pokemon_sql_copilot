-- ============================
-- Continuação do Seed (Pokédex #101 até #151)
-- ============================

-- Base Set / Jungle / Fossil complementares

(80, 'Electabuzz', 'Electric Pokémon.', 'Thunder Punch', '30', 'Fighting', 'None', '⭐',
 125, 1, (SELECT id FROM tbl_types WHERE typeName='Lightning'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(90, 'Magmar', 'Spitfire Pokémon.', 'Smokescreen', '40', 'Water', 'None', '⭐',
 126, 1, (SELECT id FROM tbl_types WHERE typeName='Fire'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(100, 'Hitmonlee', 'Kicking Pokémon.', 'High Jump Kick', '50', 'Psychic', 'None', '⭐⭐',
 106, 1, (SELECT id FROM tbl_types WHERE typeName='Fighting'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(100, 'Hitmonchan', 'Punching Pokémon.', 'Special Punch', '50', 'Psychic', 'None', '⭐⭐',
 107, 1, (SELECT id FROM tbl_types WHERE typeName='Fighting'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(90, 'Chansey', 'Egg Pokémon.', 'Double-Edge', '80', 'Fighting', 'None', '⭐⭐⭐',
 113, 1, (SELECT id FROM tbl_types WHERE typeName='Colorless'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(120, 'Lapras', 'Transport Pokémon.', 'Water Gun', '40', 'Lightning', 'None', '⭐⭐',
 131, 3, (SELECT id FROM tbl_types WHERE typeName='Water'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(100, 'Ditto', 'Transform Pokémon.', 'Transform', '0', 'Fighting', 'None', '⭐',
 132, 3, (SELECT id FROM tbl_types WHERE typeName='Colorless'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(110, 'Snorlax', 'Sleeping Pokémon.', 'Body Slam', '30', 'Fighting', 'Psychic', '⭐⭐⭐',
 143, 2, (SELECT id FROM tbl_types WHERE typeName='Colorless'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(120, 'Dragonair', 'Dragon Pokémon. Evolves from Dratini.', 'Slam', '40', 'Fairy', 'None', '⭐⭐',
 148, 1, (SELECT id FROM tbl_types WHERE typeName='Dragon'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

(150, 'Dragonite', 'Dragon Pokémon. Evolves from Dragonair.', 'Hyper Beam', '70', 'Fairy', 'None', '⭐⭐⭐',
 149, 1, (SELECT id FROM tbl_types WHERE typeName='Dragon'), (SELECT id FROM tbl_stages WHERE stageName='Stage 2')),

(130, 'Mewtwo', 'Genetic Pokémon.', 'Psychic', '60', 'Psychic', 'None', '⭐⭐⭐',
 150, 1, (SELECT id FROM tbl_types WHERE typeName='Psychic'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(60, 'Mew', 'New Species Pokémon.', 'Psywave', '30', 'Psychic', 'None', '⭐',
 151, 1, (SELECT id FROM tbl_types WHERE typeName='Psychic'), (SELECT id FROM tbl_stages WHERE stageName='Basic'));
