select i.id as product_id, i.title as product, ic.character_id, c.name as unit,
c.value
from items i
join item_character ic on (i.id = ic.item_id)
join characters c on (ic.character_id = c.id)
WHERE c.name = "kg";

select distinct items.id, items.title,characters.name,characters.value
from items, characters, item_character;

select distinct
items.id, items.title,characters.name,characters.value
from items, characters, item_character
where characters.name = "kg";


