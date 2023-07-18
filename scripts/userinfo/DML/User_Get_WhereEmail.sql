-- Напишите запрос по своей базе с регулярным выражением
-- выбрать всех пользователей, у которых email заканчивается на gmail.com

select *
from userinfo."user" u
where u.email ~~ '%gmail.com';
