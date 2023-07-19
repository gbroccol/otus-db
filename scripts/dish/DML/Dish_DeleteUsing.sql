-- удалить все блюда, у которых есть тег пп (правильное питание) или перекус

with dish_id_to_delete as (select distinct (dt.dish_id) as dish_id
                           from tag.tag t
                                    left join dish.dishtag dt
                                        on dt.tag_id = t.tag_id
                           where t.name in ('пп', 'перекус'))
delete
from dish.dish d
    using dish_id_to_delete del_id
where d.dish_id in (del_id.dish_id)
returning *;
