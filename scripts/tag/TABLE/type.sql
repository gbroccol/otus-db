CREATE TABLE IF NOT EXISTS tag.type
(
    type_id           BIGINT      NOT NULL,
    name              VARCHAR(50) NOT NULL, -- Группировка тегов (Время приема пищи / Праздники / Популярные фильтры)
    is_ingredient     BOOLEAN     NOT NULL, -- Тех. настройки, чтобы понимать отображать эту группу тегов при добавлении нового продукта или нет
    is_dish           BOOLEAN     NOT NULL, -- Тех. настройки, чтобы понимать отображать эту группу тегов при добавлении нового рецепта или нет
    is_filled_by_user BOOLEAN     NOT NULL, -- TODO переименовать поле
                                            -- TODO можно устанавливать фильтр пользователям или только админы правят?
    is_filter         BOOLEAN     NOT NULL, -- Тех. настройки (отображить или нет в списке фильтров - поиск рецептов)
    sequence          INTEGER     NOT NULL, --TODO unique
                                            -- Тех. настройки (порядок отображения групп фильтров, например, поиск рецептов или создение рецепта)
    CONSTRAINT pk_type PRIMARY KEY (type_id)
);
