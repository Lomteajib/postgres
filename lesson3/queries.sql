select *  from guests where lower(first_name) like 'иван%';

select b.date_start, b.date_end, g.last_name,g.first_name, g.middle_name, r.room_number, r.room_floor from booking b, guests g, rooms r where b.guest_id=g.id and b.room_id=r.id;
