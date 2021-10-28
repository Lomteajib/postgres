insert into bed_types (bed_desc) values ('Односпальная 140');
insert into bed_types (bed_desc) values ('Двуспальная 160');
insert into bed_types (bed_desc) values ('Двуспальная 180');
insert into bed_types (bed_desc) values ('Двуспальная 200');
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (1,1,2,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (2,1,3,2);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (3,1,1,3);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (4,1,1,4);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (5,1,2,4);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (6,1,2,3);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (7,1,4,2);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (8,1,5,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (1,2,4,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (2,2,3,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (3,2,3,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (4,2,2,2);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (5,2,2,3);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (6,2,2,3);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (7,2,1,2);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (1,3,2,2);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (2,3,1,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (3,3,2,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (4,3,1,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (5,3,2,2);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (6,3,2,2);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (1,4,2,2);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (2,4,2,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (3,4,2,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (1,5,1,4);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (2,5,1,4);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (3,5,2,3);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (1,6,2,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (2,6,2,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (3,6,2,2);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (4,6,4,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (5,6,3,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (6,6,2,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (7,6,2,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (8,6,2,1);
insert into rooms (room_number, room_floor, bed_numbers, bed_type) values (9,6,3,2);
insert into eat_types (eat_name) values ('Без питания');
insert into eat_types (eat_name) values ('Завтраки');
insert into eat_types (eat_name) values ('Завтраки и ужины');
insert into eat_types (eat_name) values ('Полный пансион');
insert into guests (last_name, first_name, middle_name, passport_data, last_visit) values ('Иванов','Степан','Петрович','2508 124333', null);
insert into guests (last_name, first_name, middle_name, passport_data, last_visit) values ('Екатеринов','Второй','Петр-первович','4508 594333', now()::DATE-333);
insert into guests (last_name, first_name, middle_name, passport_data, last_visit) values ('Дальневосточный','Гектар','Путинович','4303 444433', now()::DATE-1734);
insert into guests (last_name, first_name, middle_name, passport_data, last_visit) values ('Степанов','Степан','Степанович','2704 444777', null);
insert into guests (last_name, first_name, middle_name, passport_data, last_visit) values ('Аюпов','Иван','Яруссович','9909 486473', now()::DATE-148);
insert into guests (last_name, first_name, middle_name, passport_data, last_visit) values ('Дельман','Сергей','Израилович','7505 409865', null);
insert into guests (last_name, first_name, middle_name, passport_data, last_visit) values ('Иванова','Екатерина','Габбасовна','0906 007643', null);
insert into guests (last_name, first_name, middle_name, passport_data, last_visit) values ('Юрьева','Светлана','Петровична','1207 445689', now()::DATE-365);
insert into booking (date_start, date_end, guest_id, room_id, eat_id) values (now(), now()::DATE+21,1,44,2);
insert into booking (date_start, date_end, guest_id, room_id, eat_id) values (now()::DATE+43, now()::DATE+64,1,36,1);
insert into booking (date_start, date_end, guest_id, room_id, eat_id) values (now(), now()::DATE+8,1,41,3);
insert into booking (date_start, date_end, guest_id, room_id, eat_id) values (now()::DATE+7, now()::DATE+27,1,63,4);














