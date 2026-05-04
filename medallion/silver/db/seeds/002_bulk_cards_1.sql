-- ============================
-- Continuação do Seed (mais 50 Pokémon)
-- ============================

-- Base Set
(80, 'Ivysaur', 'Seed Pokémon. Evolves from Bulbasaur.', 'Razor Leaf', '30', 'Fire', 'None', '⭐⭐',
 2, 1, (SELECT id FROM tbl_types WHERE typeName='Grass'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

(100, 'Venusaur', 'Seed Pokémon. Evolves from Ivysaur.', 'Solar Beam', '60', 'Fire', 'None', '⭐⭐⭐',
 3, 1, (SELECT id FROM tbl_types WHERE typeName='Grass'), (SELECT id FROM tbl_stages WHERE stageName='Stage 2')),

(65, 'Wartortle', 'Turtle Pokémon. Evolves from Squirtle.', 'Water Gun', '40', 'Lightning', 'None', '⭐⭐',
 8, 1, (SELECT id FROM tbl_types WHERE typeName='Water'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

(120, 'Blastoise', 'Shellfish Pokémon. Evolves from Wartortle.', 'Hydro Pump', '60', 'Lightning', 'None', '⭐⭐⭐',
 9, 1, (SELECT id FROM tbl_types WHERE typeName='Water'), (SELECT id FROM tbl_stages WHERE stageName='Stage 2')),

(55, 'Pikachu', 'Mouse Pokémon.', 'Thunder Shock', '30', 'Fighting', 'None', '⭐',
 25, 1, (SELECT id FROM tbl_types WHERE typeName='Lightning'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(70, 'Magneton', 'Magnet Pokémon. Evolves from Magnemite.', 'Thunder Wave', '40', 'Fighting', 'None', '⭐⭐',
 82, 1, (SELECT id FROM tbl_types WHERE typeName='Lightning'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

(90, 'Alakazam', 'Psi Pokémon. Evolves from Kadabra.', 'Confuse Ray', '50', 'Psychic', 'None', '⭐⭐',
 65, 1, (SELECT id FROM tbl_types WHERE typeName='Psychic'), (SELECT id FROM tbl_stages WHERE stageName='Stage 2')),

(100, 'Machamp', 'Superpower Pokémon. Evolves from Machoke.', 'Seismic Toss', '60', 'Psychic', 'None', '⭐⭐⭐',
 68, 1, (SELECT id FROM tbl_types WHERE typeName='Fighting'), (SELECT id FROM tbl_stages WHERE stageName='Stage 2')),

(80, 'Gyarados', 'Atrocious Pokémon. Evolves from Magikarp.', 'Dragon Rage', '50', 'Lightning', 'None', '⭐⭐',
 130, 1, (SELECT id FROM tbl_types WHERE typeName='Water'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

(130, 'Mewtwo', 'Genetic Pokémon.', 'Psychic', '60', 'Psychic', 'None', '⭐⭐⭐',
 150, 1, (SELECT id FROM tbl_types WHERE typeName='Psychic'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

-- Jungle
(70, 'Eevee', 'Evolution Pokémon.', 'Quick Attack', '20', 'Fighting', 'None', '⭐',
 133, 2, (SELECT id FROM tbl_types WHERE typeName='Colorless'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(90, 'Flareon', 'Flame Pokémon. Evolves from Eevee.', 'Flamethrower', '50', 'Water', 'None', '⭐⭐',
 136, 2, (SELECT id FROM tbl_types WHERE typeName='Fire'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

(90, 'Vaporeon', 'Bubble Jet Pokémon. Evolves from Eevee.', 'Water Gun', '40', 'Lightning', 'None', '⭐⭐',
 134, 2, (SELECT id FROM tbl_types WHERE typeName='Water'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

(90, 'Jolteon', 'Lightning Pokémon. Evolves from Eevee.', 'Thunderbolt', '60', 'Fighting', 'None', '⭐⭐',
 135, 2, (SELECT id FROM tbl_types WHERE typeName='Lightning'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

(100, 'Pidgeot', 'Bird Pokémon. Evolves from Pidgeotto.', 'Wing Attack', '50', 'Lightning', 'None', '⭐⭐',
 18, 2, (SELECT id FROM tbl_types WHERE typeName='Colorless'), (SELECT id FROM tbl_stages WHERE stageName='Stage 2')),

(80, 'Venomoth', 'Poison Moth Pokémon. Evolves from Venonat.', 'Stun Spore', '30', 'Fire', 'None', '⭐⭐',
 49, 2, (SELECT id FROM tbl_types WHERE typeName='Grass'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

(90, 'Persian', 'Classy Cat Pokémon. Evolves from Meowth.', 'Scratch', '40', 'Fighting', 'None', '⭐⭐',
 53, 2, (SELECT id FROM tbl_types WHERE typeName='Colorless'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

(70, 'Rhydon', 'Drill Pokémon. Evolves from Rhyhorn.', 'Horn Attack', '50', 'Grass', 'None', '⭐⭐',
 112, 2, (SELECT id FROM tbl_types WHERE typeName='Fighting'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

(80, 'Victreebel', 'Flycatcher Pokémon. Evolves from Weepinbell.', 'Acid', '40', 'Fire', 'None', '⭐⭐',
 71, 2, (SELECT id FROM tbl_types WHERE typeName='Grass'), (SELECT id FROM tbl_stages WHERE stageName='Stage 2')),

(90, 'Clefairy', 'Fairy Pokémon.', 'Moonlight', '20', 'Metal', 'None', '⭐',
 35, 2, (SELECT id FROM tbl_types WHERE typeName='Fairy'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

-- Fossil
(80, 'Kabuto', 'Shellfish Pokémon.', 'Scratch', '20', 'Grass', 'None', '⭐',
 140, 3, (SELECT id FROM tbl_types WHERE typeName='Fighting'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(90, 'Omanyte', 'Spiral Pokémon.', 'Water Gun', '30', 'Grass', 'None', '⭐',
 138, 3, (SELECT id FROM tbl_types WHERE typeName='Water'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(100, 'Omastar', 'Spiral Pokémon. Evolves from Omanyte.', 'Hydro Pump', '50', 'Grass', 'None', '⭐⭐',
 139, 3, (SELECT id FROM tbl_types WHERE typeName='Water'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

(90, 'Kabutops', 'Shellfish Pokémon. Evolves from Kabuto.', 'Slash', '40', 'Grass', 'None', '⭐⭐',
 141, 3, (SELECT id FROM tbl_types WHERE typeName='Fighting'), (SELECT id FROM tbl_stages WHERE stageName='Stage 1')),

(100, 'Aerodactyl', 'Fossil Pokémon.', 'Wing Attack', '50', 'Lightning', 'None', '⭐⭐',
 142, 3, (SELECT id FROM tbl_types WHERE typeName='Colorless'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(120, 'Articuno', 'Freeze Pokémon.', 'Blizzard', '60', 'Lightning', 'None', '⭐⭐',
 144, 3, (SELECT id FROM tbl_types WHERE typeName='Water'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(120, 'Zapdos', 'Electric Pokémon.', 'Thunderstorm', '70', 'Fighting', 'None', '⭐⭐',
 145, 3, (SELECT id FROM tbl_types WHERE typeName='Lightning'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),

(120, 'Moltres', 'Flame Pokémon.', 'Dive Bomb', '70', 'Water', 'None', '⭐⭐',
 146, 3, (SELECT id FROM tbl_types WHERE typeName='Fire'), (SELECT id FROM tbl_stages WHERE stageName='Basic')),
