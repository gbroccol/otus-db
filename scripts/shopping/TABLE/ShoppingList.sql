CREATE TABLE IF NOT EXISTS shopping.ShoppingList
(
    shopping_list_id BIGSERIAL   NOT NULL,
    user_id          BIGINT      NOT NULL,
    name             VARCHAR(50) NOT NULL,
    CONSTRAINT PK_ShoppingList PRIMARY KEY (shopping_list_id)
);
