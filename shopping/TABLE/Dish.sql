CREATE TABLE IF NOT EXISTS shopping.Dish
(
    shopping_list_id BIGINT      NOT NULL,
    dish_id          BIGINT      NOT NULL,
    dish_portion_qnt INTEGER     NOT NULL,
    CONSTRAINT PK_Dish PRIMARY KEY (shopping_list_id, dish_id)
);
