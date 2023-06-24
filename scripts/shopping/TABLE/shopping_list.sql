CREATE TABLE IF NOT EXISTS shopping.shopping_list
(
    shopping_list_id BIGSERIAL   NOT NULL,
    user_id          BIGINT      NOT NULL,
    name             VARCHAR(50) NOT NULL,
    CONSTRAINT pk_shopping_list PRIMARY KEY (shopping_list_id)
);
