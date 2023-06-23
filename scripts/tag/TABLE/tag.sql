CREATE TABLE IF NOT EXISTS tag.tag
(
    tag_id       BIGINT      NOT NULL,
    name         VARCHAR(50) NOT NULL,
    CONSTRAINT pk_tag PRIMARY KEY (tag_id),
    CONSTRAINT uq_tag_name UNIQUE (name)
);
