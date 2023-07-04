-- !!! HELP !!!
-- Какой запрос будет быстрее работать так и не пойму, на занятии вроде упоминали,
-- что WHERE работает после JOIN поэтому их вместе лучше не использовать, написала
-- несколько запросов, проверила через EXPLAIN ANALYZE (статистику сбрасывала), но
-- план запроса пишет одинаковый (время работы скачет, не ясно какой быстрее)

-- вариант 1 --
SELECT type.sequence,
       type.name,
       array_agg(tag.name)
FROM tag.tag
          LEFT JOIN tag.tag_type tt on tt.tag_id = tag.tag_id
          LEFT JOIN tag.type on type.type_id = tt.type_id
WHERE type.is_filled_by_user is true
GROUP BY type.name, type.sequence
ORDER BY type.sequence;

-- вариант 2 --
SELECT type.sequence,
       type.name,
       array_agg(tag.name)
FROM tag.tag_type tt
         INNER JOIN tag.type on type.is_filled_by_user is true AND
                                type.type_id = tt.type_id
         LEFT JOIN tag.tag on tag.tag_id = tt.tag_id
GROUP BY type.name, type.sequence
ORDER BY type.sequence;

-- вариант 3 --
WITH type AS (SELECT *
             FROM tag.type
             WHERE is_filled_by_user is true)
SELECT type.sequence,
       type.name,
       array_agg(tag.name)
FROM type
         INNER JOIN tag.tag_type tt on tt.type_id = type.type_id
         INNER JOIN tag.tag on tag.tag_id = tt.tag_id
GROUP BY type.name, type.sequence
ORDER BY type.sequence;
