CREATE TABLE IF NOT EXISTS userinfo.UserStat
(
    user_id             INTEGER NOT NULL,
    dish_count          INTEGER NOT NULL,
    follower_count      INTEGER NOT NULL,
    favorite_dish_count INTEGER NOT NULL,
    CONSTRAINT PK_UserStat PRIMARY KEY (user_id)
);

