CREATE TABLE IF NOT EXISTS dish.DishTag
(
    dish_id         BIGINT    NOT NULL,
    tag_id          BIGINT    NOT NULL,
    CONSTRAINT PK_DishTag PRIMARY KEY (dish_id, tag_id)
);
