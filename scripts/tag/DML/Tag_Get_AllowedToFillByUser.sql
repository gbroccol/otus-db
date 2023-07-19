
-- Вывести все теги сгруппированные по типу с учетом последовательности,
-- которые могут быть заполнены пользоватнлем при создании рецепта

WITH type AS (SELECT *
             FROM tag.type
             WHERE is_filled_by_user is true)
SELECT type.sequence,
       type.name,
       array_agg(tag.name)
FROM type
         INNER JOIN tag.TagType tt on tt.type_id = type.type_id
         INNER JOIN tag.tag on tag.tag_id = tt.tag_id
GROUP BY type.name, type.sequence
ORDER BY type.sequence;
