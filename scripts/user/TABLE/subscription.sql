CREATE TABLE "user".subscription
(
 subscriber_user_id bigint NOT NULL,
 user_id            bigint NOT NULL,
 CONSTRAINT pk_user PRIMARY KEY ( subscriber_user_id, user_id )
);

-- COMMENT ON TABLE "user".subscription IS 'Пользователь может подписываться на другие аккаунты и следить за появлениями новых рецептов';

