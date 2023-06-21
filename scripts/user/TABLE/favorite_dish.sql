CREATE TABLE "user".favorite_dish
(
    user_id      bigint      NOT NULL,
    dish_id      bigint      NOT NULL,
    dish_name    varchar(50) NOT NULL,
    cooking_time interval    NOT NULL,
    complexity   integer     NOT NULL,
    CONSTRAINT pk_1 PRIMARY KEY (user_id, dish_id)
);

-- COMMENT ON TABLE "user".favorite_dish IS 'У пользователя есть список любимых блюд. В таблице присуствует информация для отображения списка карточек любимых блюд (preview), чтобы не делать лишние join';




