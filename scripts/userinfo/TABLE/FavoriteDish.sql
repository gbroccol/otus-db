CREATE TABLE IF NOT EXISTS userinfo.FavoriteDish
(
    user_id   BIGINT                   NOT NULL,
    dish_id   BIGINT                   NOT NULL, --TODO dish_name + cooking_time + complexity (можно добавить в индекс для preview)
    change_dt TIMESTAMP WITH TIME ZONE NOT NULL default now(),
    CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES userinfo.User (user_id),
    CONSTRAINT FK_dish_id FOREIGN KEY (dish_id) REFERENCES dish.Dish (dish_id),
    CONSTRAINT PK_FavoriteDish PRIMARY KEY (user_id, dish_id)
);

create index IX_FavoriteDish_DishId on userinfo.FavoriteDish(dish_id);
