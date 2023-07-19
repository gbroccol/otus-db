CREATE TABLE IF NOT EXISTS shopping.Ingredient
(
    shopping_list_id   BIGINT      NOT NULL,
    ingredient_id      BIGINT      NOT NULL,
    ingredient_qnt     BIGINT      NOT NULL,
    ingredient_unit    CHAR[2]     NOT NULL CHECK (ingredient_unit = 'g' OR
                                                   ingredient_unit = 'ml' OR
                                                   ingredient_unit = 'ct'),
    is_bought          BOOLEAN     NOT NULL,
    CONSTRAINT PK_Ingredient PRIMARY KEY (shopping_list_id, ingredient_id)
);
