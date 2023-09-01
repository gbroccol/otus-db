CREATE TABLE IF NOT EXISTS ingredient.Ingredient
(
    ingredient_id BIGSERIAL   NOT NULL,
    name          VARCHAR(50) NOT NULL, -- TODO добавить в индекс, но не индексировать по полю (доп данные)
    proteins      INTEGER     NOT NULL,
    fats          INTEGER     NOT NULL,
    carbohydrates INTEGER     NOT NULL,
    calories      INTEGER     NOT NULL,
    CONSTRAINT PK_Ingredient PRIMARY KEY (ingredient_id)
);

create index IX_Ingredient_IngredientId on ingredient.Ingredient (ingredient_id) include (name);