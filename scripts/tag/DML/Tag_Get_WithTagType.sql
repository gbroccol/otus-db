
-- вывести все теги с группой
SELECT type.name,
       tag.name
FROM tag.tag
         LEFT JOIN tag.tag_type tt on tt.tag_id = tag.tag_id
         LEFT JOIN tag.type on type.type_id = tt.type_id
WHERE tt.type_id is not null
ORDER BY type.sequence;
