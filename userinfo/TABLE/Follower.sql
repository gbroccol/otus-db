CREATE TABLE IF NOT EXISTS userinfo.Follower
(
    user_id          BIGINT                   NOT NULL, -- TODO добавить в индекс инфу по пользаку для быстрого доступа (для preview)
    follower_user_id BIGINT                   NOT NULL, -- TODO добавить в индекс инфу по пользаку для быстрого доступа (для preview)
    change_dt        TIMESTAMP WITH TIME ZONE NOT NULL default now(),
    CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES userinfo.User (user_id),
    CONSTRAINT FK_follower_user_id FOREIGN KEY (follower_user_id) REFERENCES userinfo.User (user_id),
    CONSTRAINT PK_Follower PRIMARY KEY (user_id, follower_user_id)
);

-- Пользователь может подписываться на другие аккаунты и следить за появлениями новых рецептов
-- Можно посмотреть всех своих подписчиков
-- Можно посмотреть свои подписки
