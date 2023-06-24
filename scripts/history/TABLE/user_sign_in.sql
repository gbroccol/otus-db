CREATE TABLE IF NOT EXISTS history.user_sign_in
(
    user_id    BIGINT                   NOT NULL,
    sign_in_dt TIMESTAMP WITH TIME ZONE NOT NULL
);

-- можно добавить партиции для удаления истории