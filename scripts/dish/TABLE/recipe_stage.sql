CREATE TABLE IF NOT EXISTS dish.recipe_stage
(
    dish_id        BIGINT       NOT NULL,
    recipe_step_id BIGSERIAL    NOT NULL,
    description    TEXT         NOT NULL,
    photo          VARCHAR(250) NULL,
    CONSTRAINT pk_dish_recipe_stage PRIMARY KEY (dish_id, recipe_step_id)
);

-- Этапы приготовления блюда с описанием и фотографией