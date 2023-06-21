

CREATE TABLE dish.dish
(
    dish_id             bigint       NOT NULL,
    user_id             bigint       NOT NULL,
    user_name           varchar(101) NOT NULL,
    name                varchar(50)  NOT NULL,
    description                      NULL,
    photo               varchar(250) NOT NULL,
    cooking_time        interval     NOT NULL,
    active_cooking_time interval     NOT NULL,
    portion_qnt         integer      NOT NULL,
    proteins            integer      NULL,
    fats                integer      NULL,
    carbohydrates       integer      NULL,
    calories            integer      NULL,
    cuisine_id          bigint       NULL,
    spiciness           integer      NOT NULL,
    complexity_scale    integer      NOT NULL,
    create_dt                        NOT NULL,
    edit_dt                          NULL,
    open_access_dt                   NULL,
    -- проставлять тэг просмотрено ли блюдо модератором
    CONSTRAINT PK_1 PRIMARY KEY (dish_id),
    CONSTRAINT FK_1 FOREIGN KEY (cuisine_id) REFERENCES dish.cuisine (cuisine_id)
);

CREATE INDEX FK_1 ON dish.dish
    (
     cuisine_id
        );

COMMENT ON TABLE dish.dish IS 'В таблице хранится общая информация о блюде:
- создатель
- описание
- фото для preview
- общее время приготовления
- активное время приготовления
- кол-во порций
- кбжу
- принадлежность к кухням: Русская кухня / Французская кухня / Итальянская кухня / Азиатская кухня
- острота
сложность приготовления
- время создания блюда
- время редактирования блюда
- время, когда был открыт доступ к рецепту всем пользователям сервиса';

COMMENT ON COLUMN dish.dish.user_id IS 'автор рецепта';
COMMENT ON COLUMN dish.dish.user_name IS 'Для отображения имени пользователя в рецепте, чтобы не делать лишний join';
COMMENT ON COLUMN dish.dish.photo IS 'ссылка на фото';
COMMENT ON COLUMN dish.dish.proteins IS 'на 1 порцию';
COMMENT ON COLUMN dish.dish.fats IS 'на 1 порцию';
COMMENT ON COLUMN dish.dish.carbohydrates IS 'на 1 порцию';
COMMENT ON COLUMN dish.dish.calories IS 'на 1 порцию';




