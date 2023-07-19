CREATE TABLE IF NOT EXISTS userinfo.follower
(
    user_id          BIGINT                   NOT NULL, -- TODO добавить в индекс инфу по пользаку для быстрого доступа (для preview)
    follower_user_id BIGINT                   NOT NULL, -- TODO добавить в индекс инфу по пользаку для быстрого доступа (для preview)
    change_dt        TIMESTAMP WITH TIME ZONE NOT NULL default now(),
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES userinfo.user (user_id),
    CONSTRAINT fk_follower_user_id FOREIGN KEY (follower_user_id) REFERENCES userinfo.user (user_id),
    CONSTRAINT pk_follower PRIMARY KEY (user_id, follower_user_id)
);

-- Пользователь может подписываться на другие аккаунты и следить за появлениями новых рецептов
-- Можно посмотреть всех своих подписчиков
-- Можно посмотреть свои подписки
