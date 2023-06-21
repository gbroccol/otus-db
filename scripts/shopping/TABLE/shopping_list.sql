CREATE TABLE shopping.shopping_list
(
    user_id            bigint      NOT NULL,
    ingredient_id      bigint      NOT NULL,
    ingredient_name    varchar(50) NOT NULL,
    ingredient_qnt     integer     NOT NULL,
    ingredient_unit                NOT NULL,
    is_bought          boolean     NOT NULL,
    shop_category_id   bigint      NOT NULL,
    shop_category_name varchar(50) NOT NULL,
    CONSTRAINT pk_shopping_list PRIMARY KEY (user_id)
);

COMMENT ON TABLE shopping.shopping_list IS 'Продукты для понравившихся рецептов пользователь добавляет в списос покупок (с учетом кол-ва порций, которые пользователь настраивает сам)

В списке покупок хранится след. информация:
- название продукта
- кол-во
- един. измерения
- куплено или нет (если продукт не нужен, есть дома или уже купили продукт можно перечеркнуть, но не удалять)

У каждого пользователя может быть только 1 список покупок

Продукты в списке продуктов необходимо отображать по категориям. Для этого есть два поля shop_category_id (для сортировки по категориям) и shop_category_name для отображения отдела магазина (бакалея/фрукты/овощи и тд)';

COMMENT ON COLUMN shopping.shopping_list.is_bought IS 'зачеркивать товары, которые есть дома или уже купил';




