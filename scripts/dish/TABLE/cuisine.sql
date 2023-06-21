CREATE TABLE dish.cuisine
(
    cuisine_id bigint      NOT NULL,
    name       varchar(50) NOT NULL,
    CONSTRAINT pk_cuisine PRIMARY KEY (cuisine_id)
);

COMMENT ON TABLE dish.cuisine IS 'Список видов национальных кухонь: Русская кухня / Французская кухня / Итальянская кухня / Азиатская кухня';





