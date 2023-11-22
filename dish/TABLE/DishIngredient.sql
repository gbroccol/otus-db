CREATE TABLE IF NOT EXISTS dish.DishIngredient
(
    dish_id       BIGINT      NOT NULL,
    ingredient_id BIGINT      NOT NULL,
    qnt           INTEGER     NOT NULL,
    unit          CHAR[2]     NOT NULL CHECK (unit = 'g' OR
                                              unit = 'ml' OR
                                              unit = 'ct'),
    ex_qnt        INTEGER     NULL,
    ex_unit       VARCHAR(50) NULL,     -- TODO какой тип ? CHAR[20] / VARCHAR(50)
                                        -- TODO придумать обозначения для единиц измерения
                                        -- TODO ед. измерения - стакан / ст.л. / ч.л / шт / зубчик / лист / пучок / перо / головка / щепотка / веточка / кочан / ломтик / палочка /  долька / по вкусу / капля
                                        -- TODO обдумать нужно ли валидировать ex_qnt и ex_unit (возможно имеет смысл проставлять автоматически)
    CONSTRAINT PK_DishIngredient PRIMARY KEY (dish_id, ingredient_id)
);

-- Поля qnt и unit будут инпользоваться для составления списка покупок
-- Поля  ex_qnt и ex_unit нужны для удобного вывода кол-ва ингредиентов на страничке рецепта (доп. инфа)

