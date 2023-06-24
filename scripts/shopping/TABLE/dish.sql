CREATE TABLE IF NOT EXISTS shopping.dish
(
    shopping_list_id BIGINT      NOT NULL,
    dish_id          BIGINT      NOT NULL,
    dish_portion_qnt INTEGER     NOT NULL,
    CONSTRAINT pk_dish PRIMARY KEY (shopping_list_id, dish_id)
);
