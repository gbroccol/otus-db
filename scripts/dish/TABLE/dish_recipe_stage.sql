CREATE TABLE dish.dish_recipe_stage
(
    dish_id             bigint       NOT NULL,
    dish_recipe_step_id bigint       NOT NULL,
    description         text         NOT NULL,
    photo               varchar(250) NULL,
    CONSTRAINT pk_dish_recipe_stage PRIMARY KEY (dish_id, dish_recipe_step_id)
);

COMMENT ON TABLE dish.dish_recipe_stage IS 'Этапы приготовления блюда с описанием и фотографией';
