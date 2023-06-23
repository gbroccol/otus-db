CREATE TABLE IF NOT EXISTS "user".subscription
(
    user_id            BIGINT NOT NULL, -- добавить в индекс инфу по пользаку для быстрого доступа (для preview)
    subscriber_user_id BIGINT NOT NULL, -- добавить в индекс инфу по пользаку для быстрого доступа (для preview)
    CONSTRAINT pk_subscription PRIMARY KEY (user_id, subscriber_user_id)
);

-- Пользователь может подписываться на другие аккаунты и следить за появлениями новых рецептов

-- Можно посмотреть всех своих подписчиков
-- Можно посмотреть свои подписки (индекс по полю subscriber_user_id)
