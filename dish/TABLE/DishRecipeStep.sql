CREATE TABLE IF NOT EXISTS dish.DishRecipeStep
(
    dish_id     BIGINT       NOT NULL,
    sequence    INTEGER      NOT NULL,
    description TEXT         NOT NULL,
    photo       VARCHAR(250) NULL,
    CONSTRAINT PK_DishRecipeStep PRIMARY KEY (dish_id, sequence)
);
