CREATE TABLE settings.dish_tag
(
    tag_id   bigint      NOT NULL,
    name_rus varchar(50) NOT NULL DEFAULT UNIQUE,
    name_eng varchar(50) NOT NULL,
    CONSTRAINT PK_1 PRIMARY KEY (tag_id)
);

COMMENT ON TABLE settings.dish_tag IS 'Список тегов для блюд

Примеры:
- завтрак / обед / ужин / перекус / полдник
- закуска / десерт / суп / первое блюдо / второе блюдо / напитки / гарнир / салат и т.п.
- духовка / плита / микроволновка
- выпекать / варить / жарить / тушить
- мясо / рыба  / овощи / птица / морепродукты / тесто
 - Новый год / Великий пост / Пасха / День благодарения
- пп
- ...';





