create table students(
  student_id serial primary key,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  age int,
  isactive boolean default(true),
  grade char(3),
  course varchar(50),
  email varchar(50) unique,
  dob date,
  blood_group varchar(5),
  country varchar(50)
);

INSERT INTO students (
    first_name,
    last_name,
    age,
    isactive,
    grade,
    course,
    email,
    dob,
    blood_group,
    country
)
VALUES
('John','Smith',20,TRUE,'A','Computer Science','john.smith@gmail.com','2004-05-12','A+','USA'),
('Emily','Johnson',21,TRUE,'A+','Software Engineering','emily.johnson@gmail.com','2003-07-18','B+','Canada'),
('Michael','Brown',22,FALSE,'B','Computer Science','michael.brown@gmail.com','2002-03-09','O+','UK'),
('Sarah','Davis',19,TRUE,'A','Data Science','sarah.davis@gmail.com','2005-11-23','AB+','Australia'),
('David','Wilson',23,TRUE,'B+','Cyber Security','david.wilson@gmail.com','2001-06-14','A-','Germany'),
('Jessica','Moore',20,TRUE,'A','Software Engineering','jessica.moore@gmail.com','2004-02-28','B-','Bangladesh'),
('Daniel','Taylor',24,FALSE,'C','Computer Science','daniel.taylor@gmail.com','2000-10-19','O-','India'),
('Ashley','Anderson',18,TRUE,'A+','Artificial Intelligence','ashley.anderson@gmail.com','2006-01-30','A+','Pakistan'),
('Matthew','Thomas',22,TRUE,'B','Computer Engineering','matthew.thomas@gmail.com','2002-09-17','B+','Nepal'),
('Olivia','Jackson',21,TRUE,'A','Data Science','olivia.jackson@gmail.com','2003-04-21','AB-','Sri Lanka'),
('James','White',20,FALSE,'B+','Networking','james.white@gmail.com','2004-08-11','O+','USA'),
('Sophia','Harris',19,TRUE,'A+','Computer Science','sophia.harris@gmail.com','2005-12-06','A+','Canada'),
('Benjamin','Martin',23,TRUE,'B','Software Engineering','benjamin.martin@gmail.com','2001-03-15','B+','France'),
('Mia','Thompson',22,TRUE,'A','Cyber Security','mia.thompson@gmail.com','2002-05-10','O-','Italy'),
('William','Garcia',24,FALSE,'C','Cloud Computing','william.garcia@gmail.com','2000-07-22','AB+','Spain'),
('Charlotte','Martinez',18,TRUE,'A','Computer Science','charlotte.martinez@gmail.com','2006-02-08','A-','Brazil'),
('Elijah','Robinson',20,TRUE,'B+','AI & ML','elijah.robinson@gmail.com','2004-09-05','B-','Mexico'),
('Amelia','Clark',21,TRUE,'A','Information Systems','amelia.clark@gmail.com','2003-01-19','O+','Bangladesh'),
('Lucas','Rodriguez',22,FALSE,'B','Computer Engineering','lucas.rodriguez@gmail.com','2002-11-27','AB+','Argentina'),
('Harper','Lewis',19,TRUE,'A+','Software Engineering','harper.lewis@gmail.com','2005-04-12','A+','Japan'),
('Henry','Lee',20,TRUE,'A','Computer Science','henry.lee@gmail.com','2004-06-18','B+','South Korea'),
('Evelyn','Walker',23,TRUE,'B+','Cyber Security','evelyn.walker@gmail.com','2001-08-03','O-','China'),
('Alexander','Hall',24,FALSE,'C','Cloud Computing','alexander.hall@gmail.com','2000-12-24','AB-','Singapore'),
('Abigail','Allen',18,TRUE,'A','Data Science','abigail.allen@gmail.com','2006-03-09','A+','Malaysia'),
('Jacob','Young',22,TRUE,'B','Computer Science','jacob.young@gmail.com','2002-07-13','B+','Thailand'),
('Ella','Hernandez',21,TRUE,'A+','Software Engineering','ella.hernandez@gmail.com','2003-10-08','O+','Indonesia'),
('Logan','King',20,FALSE,'B','Artificial Intelligence','logan.king@gmail.com','2004-11-15','AB+','UAE'),
('Grace','Wright',19,TRUE,'A','Networking','grace.wright@gmail.com','2005-05-29','A-','Saudi Arabia'),
('Sebastian','Lopez',23,TRUE,'B+','Information Technology','sebastian.lopez@gmail.com','2001-09-01','O-','Turkey'),
('Lily','Hill',22,TRUE,'A','Computer Science','lily.hill@gmail.com','2002-04-16','B+','Bangladesh');

-- Using SELECT
select first_name, age from students;

-- Column Alias
select first_name as name, age as "User Age" from students; 

-- Sorting
select first_name, blood_group, country, age from students order by age asc;


