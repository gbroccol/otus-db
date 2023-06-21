CREATE TABLE ingredient.ingredient
(
    ingredient_id bigint      NOT NULL,
    name_rus      varchar(50) NOT NULL,
    proteins      integer     NOT NULL,
    fats          integer     NOT NULL,
    carbohydrates integer     NOT NULL,
    calories      integer     NOT NULL,
    CONSTRAINT pk_ingredient PRIMARY KEY (ingredient_id)
);

COMMENT ON TABLE ingredient.ingredient IS 'Ингредиенты для блюд
Таблица включает в себы:
- название продукта
- кбжу';





