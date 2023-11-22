
-- вывести все теги у которых нет группы

SELECT tag.tag_id,
       tag.name
FROM tag.tag
         LEFT JOIN tag.TagType tt on tt.tag_id = tag.tag_id
WHERE tt.type_id is null;
