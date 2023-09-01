CREATE TABLE IF NOT EXISTS userinfo.User
(
    user_id      BIGSERIAL                NOT NULL,
    first_name   VARCHAR(50)              NOT NULL,
    last_name    VARCHAR(50)              NULL,
    middle_name  VARCHAR(50)              NULL,
    gender       CHAR(1)                  NULL,     -- F / M
    birth_date   DATE                     NULL,
    email        VARCHAR(50)              NOT NULL, --TODO решить NULL / NOT NULL ?
    phone_number VARCHAR(20)              NOT NULL, --TODO решить NULL / NOT NULL ?
    sign_up_dt   TIMESTAMP WITH TIME ZONE NOT NULL,
    login        VARCHAR(50)              NOT NULL,
    password     VARCHAR(500)             NOT NULL,
    CONSTRAINT PK_User PRIMARY KEY (user_id)
);

create index IX_User_UserId on userinfo.User (user_id) include (first_name);