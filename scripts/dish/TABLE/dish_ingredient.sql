CREATE TABLE dish.dish_ingredient
(
    dish_id       bigint       NOT NULL,
    ingredient_id bigint       NOT NULL,
    name          varchar(150) NOT NULL,
    qnt           integer      NOT NULL,
    unit          integer      NOT NULL,
    ex_qnt        integer      NOT NULL,
    ex_unit       varchar(50)  NOT NULL,
    CONSTRAINT PK_1 PRIMARY KEY (dish_id, ingredient_id)
);

COMMENT ON TABLE dish.dish_ingredient IS 'Ингредиенты для блюда
Дублирую название ингредиента из таблицы ingredient.ingredient чтобы не делать лишний join при выводе рецептов

Поля (что значит):
- qnt (кол-во)
- unit (ед. измерения)

----------------------------------------------------
Поля qnt и unit будут инпользоваться для составления списка покупок
---
Допустимые единицы измерения: г / мл / л / кг
----------------------------------------------------
Поля  ex_qnt и ex_unit нужны для удобного вывода кол-ва ингредиентов
---
Допустимые единицы измерения: стакан / ст.л. / ч.л / шт / зубчик / лист / пучок / перо / головка / щепотка / веточка / кочан / ломтик / палочка /  долька / по вкусу / капля
----------------------------------------------------';

COMMENT ON COLUMN dish.dish_ingredient.unit IS 'единицы измерения';




