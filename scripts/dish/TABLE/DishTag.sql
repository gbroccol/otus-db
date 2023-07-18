CREATE TABLE IF NOT EXISTS Dish.DishTag
(
    dish_id         BIGINT    NOT NULL,
    tag_id          BIGINT    NOT NULL,
    CONSTRAINT PK_DishTag PRIMARY KEY (dish_id, tag_id)
);
