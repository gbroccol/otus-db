CREATE TABLE IF NOT EXISTS tag.tag_type
(
    tag_id       BIGINT      NOT NULL,
    type_id      BIGINT      NOT NULL,
    CONSTRAINT pk_tag_type PRIMARY KEY (tag_id, type_id)
);
