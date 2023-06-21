CREATE TABLE settings.tag
(
    tag_id       bigint      NOT NULL,
    tag_name     varchar(50) NOT NULL,
    tag_type_id  bigint      NOT NULL,
    fill_by_user BOOLEAN     NOT NULL,
    CONSTRAINT pk_tag PRIMARY KEY (tag_id)
);

COMMENT ON TABLE settings.tag IS 'Список всех возможных тегов для ингредиентов

Поле name_rus будет уникальным, чтобы тэги не дублировались

Примеры:
- рыба
- мясо
- овощи
- фрукты
- молочка
- крупа
- приправа
- мука
- орехи

На основе тэгов, можно будет добавить фильтры в приложение, например,
- показать пользователю все рецепты без орехов
- показать пользователю все рецепты с любым видом рыбы кроме семги';





