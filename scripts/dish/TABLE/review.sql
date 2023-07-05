CREATE TABLE IF NOT EXISTS dish.review
(
    review_id BIGSERIAL                NOT NULL,
    user_id   BIGINT                   NOT NULL, -- кто создал отзыв
    recipe_id BIGINT                   NOT NULL,
    message   TEXT                     NOT NULL,
    score     INTEGER                  NOT NULL, -- оценка (от 1 до 10)
    create_dt TIMESTAMP WITH TIME ZONE NOT NULL,
    edit_dt   TIMESTAMP WITH TIME ZONE NULL,
    CONSTRAINT pk_review PRIMARY KEY (review_id)
);
