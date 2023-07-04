CREATE TABLE IF NOT EXISTS "user".follower
(
    user_id          BIGINT NOT NULL, -- TODO добавить в индекс инфу по пользаку для быстрого доступа (для preview)
    follower_user_id BIGINT NOT NULL, -- TODO добавить в индекс инфу по пользаку для быстрого доступа (для preview)
    CONSTRAINT pk_follower PRIMARY KEY (user_id, follower_user_id)
);

-- Пользователь может подписываться на другие аккаунты и следить за появлениями новых рецептов
-- Можно посмотреть всех своих подписчиков
-- Можно посмотреть свои подписки
