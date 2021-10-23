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
    guest_id NOT NULL REFERENCES guests(id),
    room_id NOT NULL REFERENCES rooms(id),
    eat_id NOT NULL REFERENCES eat_types(id)
)

/* Для начала я бы сделал так, а дальше в процессе разработки уже будут добавляться новые столбцы*/




