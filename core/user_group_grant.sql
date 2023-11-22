/* user */
CREATE user test_user;

/* role */
CREATE ROLE group_recipe_read_all;

GRANT CONNECT ON DATABASE recipe TO group_recipe_read_all;

GRANT USAGE ON SCHEMA core TO group_recipe_read_all;
GRANT USAGE ON SCHEMA ingredient TO group_recipe_read_all;
GRANT USAGE ON SCHEMA shopping TO group_recipe_read_all;
GRANT USAGE ON SCHEMA tag TO group_recipe_read_all;
GRANT USAGE ON SCHEMA "user" TO group_recipe_read_all;

GRANT SELECT ON ALL TABLES IN SCHEMA core TO group_recipe_read_all;
GRANT SELECT ON ALL TABLES IN SCHEMA ingredient TO group_recipe_read_all;
GRANT SELECT ON ALL TABLES IN SCHEMA shopping TO group_recipe_read_all;
GRANT SELECT ON ALL TABLES IN SCHEMA tag TO group_recipe_read_all;
GRANT SELECT ON ALL TABLES IN SCHEMA "user" TO group_recipe_read_all;

/* grant <group_name> to <user_name> */
GRANT group_recipe_read_all TO test_user;