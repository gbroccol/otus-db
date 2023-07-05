CREATE TABLE IF NOT EXISTS dish.recipe_step
(
    dish_id     BIGINT       NOT NULL,
    sequence    INTEGER      NOT NULL,
    description TEXT         NOT NULL,
    photo       VARCHAR(250) NULL,
    CONSTRAINT pk_dish_recipe_stage PRIMARY KEY (dish_id, sequence)
);
