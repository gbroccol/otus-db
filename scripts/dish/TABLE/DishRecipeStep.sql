CREATE TABLE IF NOT EXISTS Dish.DishRecipeStep
(
    dish_id     BIGINT       NOT NULL,
    sequence    INTEGER      NOT NULL,
    description TEXT         NOT NULL,
    photo       VARCHAR(250) NULL,
    CONSTRAINT pk_dishrecipestep PRIMARY KEY (dish_id, sequence)
);
