CREATE OR REPLACE VIEW vw_cards_detalhes AS
SELECT 
    c.id,
    c.name,
    c.hp,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resist,
    c.retreat,
    c.cardNumberInCollection,
    col.collectionSetName AS collection,
    col.releaseDate,
    col.totalCardsInCollection,
    t.typeName AS type,
    s.stageName AS stage
FROM tbl_cards c
JOIN tbl_collections col ON c.collection_id = col.id
JOIN tbl_types t ON c.type_id = t.id
JOIN tbl_stages s ON c.stage_id = s.id;




SELECT 
    card_id,
    name,
    hp,
    info,
    attack,
    damage,
    weak,
    resist,
    retreat,
    cardNumberInCollection,
    collection_name,
    collection_release_date,
    collection_total_cards,
    type_name,
    stage_name
FROM vw_cards_detalhes;