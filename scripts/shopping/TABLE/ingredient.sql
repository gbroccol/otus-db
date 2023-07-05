CREATE TABLE IF NOT EXISTS shopping.ingredient
(
    shopping_list_id   BIGINT      NOT NULL,
    ingredient_id      BIGINT      NOT NULL,
    ingredient_qnt     BIGINT      NOT NULL,
    ingredient_unit    CHAR[2]     NOT NULL, -- g (грамм) / ml (милилитр) / ct (count/штука)
    is_bought          BOOLEAN     NOT NULL,
    CONSTRAINT pk_ingredient PRIMARY KEY (shopping_list_id, ingredient_id)
);
