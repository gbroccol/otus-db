-- Напишите запрос на добавление данных с выводом информации о добавленных строках.
INSERT INTO userinfo.user as x (first_name, last_name, middle_name, gender,
                                birth_date, email, phone_number, sign_up_dt, login, password)
VALUES ('Anastasiya', 'Pchelina', null, 'F', '1997-07-08', 'pchelina@gmail.com', '79879876543', now(), 'gbroccol', 'password'),
       ('Ivan', 'Ivanov', 'Ivanovich', 'M', '1989-12-31', 'ivanov@yandex.ru', '79879876543', now(), 'vanechka', 'password'),
       ('Kate', 'Brown', null, 'F', '1997-07-08', 'brown@gmail.com', '79879876543', now(), 'kate', 'password'),
       ('Melissa', 'Becker', null, 'F', '1997-07-08', 'becker@gmail.com', '79879876543', now(), 'melissa', 'password')
RETURNING x.*;

INSERT INTO userinfo.follower as f (user_id, follower_user_id)
VALUES (1, 2),
       (1, 3),
       (1, 4),
       (2, 1),
       (3, 1),
       (3, 2)
RETURNING f.*;

