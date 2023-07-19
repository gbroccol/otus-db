CREATE TABLE IF NOT EXISTS tag.TagType
(
    tag_id       BIGINT      NOT NULL,
    type_id      BIGINT      NOT NULL,
    CONSTRAINT PK_TagType PRIMARY KEY (tag_id, type_id)
);
