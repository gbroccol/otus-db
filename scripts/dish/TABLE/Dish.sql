CREATE TABLE IF NOT EXISTS dish.Dish
(
    dish_id             BIGSERIAL                NOT NULL,
    owner_user_id       BIGINT                   NOT NULL,
    name                VARCHAR(50)              NOT NULL,
    description         VARCHAR(200)             NOT NULL,
    photo               VARCHAR(250)             NOT NULL, -- ссылка на фото для preview
    cooking_time        INTERVAL                 NOT NULL,
    active_cooking_time INTERVAL                 NOT NULL,
    portion_qnt         INTEGER                  NOT NULL,
    proteins            INTEGER                  NULL,     -- на 1 порцию -- TODO кто будет проставлять? как считать?
    fats                INTEGER                  NULL,     -- на 1 порцию -- TODO кто будет проставлять? как считать?
    carbohydrates       INTEGER                  NULL,     -- на 1 порцию -- TODO кто будет проставлять? как считать?
    calories            INTEGER                  NULL,     -- на 1 порцию -- TODO кто будет проставлять? как считать?
    spiciness           INTEGER                  NOT NULL, -- острота
    complexity_scale    INTEGER                  NOT NULL, -- сложность приготовления
    create_dt           TIMESTAMP WITH TIME ZONE NOT NULL,
    edit_dt             TIMESTAMP WITH TIME ZONE NULL,
    verify_dt           TIMESTAMP WITH TIME ZONE NULL,
    verify_user_id      BIGINT                   NULL,
    CONSTRAINT PK_Dish PRIMARY KEY (dish_id)
);

-- можно добавить visibility_type (личный, публичный, группа)

-- Возможные фильтры на основе данных из таблицы:
-- - Рецепты по времени приготовления
-- - Фильтр с диапазоном по калорийности
-- - Можно устанавливать тэги
--      Низкоуглеводный
--      Высокобелковый
--      Мало жира
--      Низкокалорийный
--      Много клетчатки автоматически, на основе данных из таблицы

-- Возможность создавать группы рецептов (например для запуска марафона)
-- с возможностью открывать доступ только группе лиц

-- создание коммерческого аккаунта с возможностью добавления редакторов, диетологов
-- поделиться своим аккаунтом с мужем  / специалистом по питанию