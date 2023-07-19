
-- показать все группы тегов и их теги, сгруппированные в массив

SELECT type.sequence,
       type.name,
       array_agg(tag.name)
FROM tag.type
         LEFT JOIN tag.TagType tt on tt.type_id = type.type_id
         LEFT JOIN tag.tag on tag.tag_id = tt.tag_id
GROUP BY type.name, type.sequence
ORDER BY type.sequence;
