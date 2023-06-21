CREATE TABLE "user"."user"
(
    user_id      bigint       NOT NULL,
    first_name   varchar(50)  NOT NULL,
    last_name    varchar(50)  NULL,
    middle_name  varchar(50)  NULL,
    gender       char(1)      NULL,
    birth_date   date         NULL,
    email        varchar(50)  NOT NULL,
    phone_number varchar(20)  NULL,
    sign_up_dt   timestamp    NOT NULL,
    login        varchar(50)  NOT NULL,
    password     varchar(500) NOT NULL,
    -- последний логин
    CONSTRAINT pk_user PRIMARY KEY (user_id)
);

-- COMMENT ON TABLE "user"."user" IS 'Таблица для хранения информации о пользователях';

