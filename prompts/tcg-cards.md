[ação]
Create a script to create a table in postgressql

[context]
- the firts table is a table to save a pokemon tcg cards
- the second table is a table to save collections set

connect to tables with foreign key

[informações]
first table: tbl_cards
- id
- hp
- name
- type
- stage
- info
- attack
- demage
- weak
- resist
- retreat
- cardNumberInCollection

second table: tbl_collections
- id
- collectionSetName
- release date
- totalCardsInCollection
