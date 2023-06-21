CREATE TABLE shopping.shopping_list_dish
(
    user_id          bigint      NOT NULL,
    dish_id          bigint      NOT NULL,
    dish_name        varchar(50) NOT NULL,
    dish_portion_qnt integer     NOT NULL,
    CONSTRAINT pk_shopping_list_dish PRIMARY KEY (user_id, dish_id)
);

COMMENT ON TABLE shopping.shopping_list_dish IS 'В списке покупок наверху буду выводить список блюв кол-во порций на основе чего был создан список покупок, таким образом тут же при необходимости можно будет изменить кол-во порций для отдельного блюда или удалить блюдо совсем';





