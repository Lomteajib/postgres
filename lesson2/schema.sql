/** LESSON 1 ***/

/*
Бронирование гостиницы
- Гости
- Номера
- типы кроватей
- Таблица бронирования
- Таблица питания
*/

CREATE TABLE guests (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    last_name text,
    first_name text,
    middle_name text,
    passport_data text,
    insert_date date,
    last_visit date
);

CREATE TABLE rooms (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    room_number int,
    room_floor int,
    bed_numbers int,
    bed_type INT NOT NULL REFERENCES bed_types(id)
);

CREATE TABLE bed_types (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    bed_desc text
)

CREATE TABLE eat_types (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    eat_name text
)

create table booking
(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    date_start date,
    date_end date,
    guest_id int NOT NULL REFERENCES guests(id),
    room_id int NOT NULL REFERENCES rooms(id),
    eat_id int NOT NULL REFERENCES eat_types(id)
)

/* Для начала я бы сделал так, а дальше в процессе разработки уже будут добавляться новые столбцы*/


/*** LESSON 2 ***/

/* 

****я изначально добавил все FK****

gopher=# \d booking
                           Table "public.booking"
   Column   |  Type   | Collation | Nullable |           Default            
------------+---------+-----------+----------+------------------------------
 id         | integer |           | not null | generated always as identity
 date_start | date    |           |          | 
 date_end   | date    |           |          | 
 guest_id   | integer |           | not null | 
 room_id    | integer |           | not null | 
 eat_id     | integer |           | not null | 
Indexes:
    "booking_pkey" PRIMARY KEY, btree (id)
Foreign-key constraints:
    "booking_eat_id_fkey" FOREIGN KEY (eat_id) REFERENCES eat_types(id)
    "booking_guest_id_fkey" FOREIGN KEY (guest_id) REFERENCES guests(id)
    "booking_room_id_fkey" FOREIGN KEY (room_id) REFERENCES rooms(id)

*/

alter table guests add constraint fn_check CHECK (first_name is not null);
alter table guests add constraint ln_check CHECK (last_name is not null);
alter table guests ALTER COLUMN insert_date SET DEFAULT now();




