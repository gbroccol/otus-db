CREATE TABLE IF NOT EXISTS userinfo.favorite_dish
(
    user_id   BIGINT                   NOT NULL,
    dish_id   BIGINT                   NOT NULL, --TODO dish_name + cooking_time + complexity (можно добавить в индекс для preview)
    change_dt TIMESTAMP WITH TIME ZONE NOT NULL default now(),
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES userinfo.user (user_id),
    CONSTRAINT fk_dish_id FOREIGN KEY (dish_id) REFERENCES dish.dish (dish_id),
    CONSTRAINT pk_favorite_dish PRIMARY KEY (user_id, dish_id)
);
