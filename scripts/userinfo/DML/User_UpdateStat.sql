-- Хп добавить или обновить
-- Напишите запрос с обновлением данные используя UPDATE FROM.

-- всем обновить статистику по всем пользователям

insert into userinfo.userstat (user_id,
                               dish_count,
                               follower_count,
                               favorite_dish_count)
select u.user_id,
       -1,
       -1,
       -1
from userinfo."user" u;

with dish_count as (select d.owner_user_id as user_id,
                           count(*) as count
                    from dish.dish d
                    group by d.owner_user_id),
     follower_count as (select f.user_id,
                               count(*) as count
                        from userinfo.follower f
                        group by f.user_id),
     favorite_dish_count as (select fd.user_id,
                                    count(*) as count
                             from userinfo.FavoriteDish fd
                             group by fd.user_id)
update userinfo.userstat us
set dish_count          = coalesce(dc.count, 0),
    follower_count      = coalesce(fc.count, 0),
    favorite_dish_count = coalesce(fdc.count, 0)
from userinfo."user" u
         left join dish_count dc on dc.user_id = u.user_id
         left join follower_count fc on fc.user_id = u.user_id
         left join favorite_dish_count fdc on fdc.user_id = u.user_id
where us.user_id = u.user_id
returning us.*;