CREATE TABLE IF NOT EXISTS tag.type
(
    type_id           BIGINT      NOT NULL,
    name              VARCHAR(50) NOT NULL,
    is_ingredient     BOOLEAN     NOT NULL,
    is_dish           BOOLEAN     NOT NULL,
    is_filled_by_user BOOLEAN     NOT NULL, -- можно устанавливать фильтр пользователям ил только админы правят
    is_filter         BOOLEAN     NOT NULL,
    filter_nmb        INTEGER     NOT NULL,
    CONSTRAINT pk_type PRIMARY KEY (type_id)
);
