CREATE TABLE dish.review
(
    review_id bigint                   NOT NULL,
    user_id   bigint                   NOT NULL,
    recipe_id bigint                   NOT NULL,
    message   text                     NOT NULL,
    score     integer                  NOT NULL,
    create_dt timestamp with time zone NOT NULL, -- заменить везде
    edit_dt   timestamp with time zone      NULL,
    CONSTRAINT pk_review PRIMARY KEY (review_id)
);

COMMENT ON TABLE dish.review IS 'Отзывы на рецепты
Таблица содержит след. информацию:
- о том, кто создал отзыв
- id рецепта
- сообщение
- оценка (от 1 до 10)
- время создания отзыва
- время редактирования';

COMMENT ON COLUMN dish.review.score IS 'оценка от 1 до 10  (буду рисовать 5 звезд)';




