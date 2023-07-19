CREATE TABLE IF NOT EXISTS tag.Tag
(
    tag_id       BIGINT      NOT NULL,
    name         VARCHAR(50) NOT NULL,
    CONSTRAINT PK_Tag PRIMARY KEY (tag_id),
    CONSTRAINT UQ_Tag_name UNIQUE (name)
);
