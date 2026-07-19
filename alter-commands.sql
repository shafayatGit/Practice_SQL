create table employ(
  id serial,
  name varchar(100),
  age int
);

-- Rename table name
alter table employ rename to employee

-- Add a column
alter table employee add column email varchar(50);

-- Drop a column
alter table employee drop column email;

-- Renaming a column name
alter table employee rename column name to username;

-- Modifying constraint
alter table employee alter column username type varchar(50);

-- Adding constraint
alter table employee alter column email set not null;

-- Set default value
alter table employee
alter column email set default 'default@gmail.com'

-- Add Constraint(table level constraint) 
alter table employee add constraint unique_employee_email unique (email);

alter table employee add constraint pk_employee_id primary key (id);

--Remove Constraint
alter table employee drop constraint unique_employee_email;

