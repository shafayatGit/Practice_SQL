-- Creating DB
create database school;

-- Creating table
create table students (
  id serial primary key,
  name varchar(50) not null,
  email varchar(100) unique not null,
  age int check (age >= 18),
  isActive boolean default (true),
  dob date
);

-- Creating table in a different way
create table students (
  id serial,
  name varchar(50),
  email varchar(100) not null,
  age int check (age >= 18),
  isActive boolean default (true),
  dob date,
  primary key (id, name),
  unique (email)
);

-- Insert Data
------- Process:1(single row insert)
insert into
  students (id, name, email, age)
values
  (2, 'Shafayat2', 'shafayat3@gmail.com', 19);

------- Process:2(multiple row insert/bulk insert)
insert into
  students (name, email, age)
values
  ('Shafayat2', 'shafayat4@gmail.com', 19),
  ('Shafayat2', 'shafayat5@gmail.com', 19),
  ('Shafayat2', 'shafayat6@gmail.com', 19),
  ('Shafayat2', 'shafayat7@gmail.com', 19);

------- Process:3(without column name)
insert into
  students
values
  (8,'Shafayat2', 'shafayat8@gmail.com', 19),
  (9,'Shafayat2', 'shafayat9@gmail.com', 19),
  (10,'Shafayat2', 'shafayat10@gmail.com', 19),
  (11,'Shafayat2', 'shafayat11@gmail.com', 19);

-- Add Column
alter table students add column first_name varchar(50);
alter table students alter column first_name set not null;

alter table students add column last_name varchar(50);
update students set last_name=name;
alter table students alter column last_name set not null;

alter table students add column blood_group varchar(3),
  add column country varchar(50);

alter table students add column grade char(3),
  add column course varchar(50);

--Delete table
drop table if exists students;