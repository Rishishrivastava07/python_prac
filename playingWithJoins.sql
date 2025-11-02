--One to One relationship.
--created a table.
create table students (
student_id serial primary key,
name varchar(100) not null 
);

--inserting the values.
insert into students(name)
values
 	('Rishi Shrivastava'),
	 ('piyush garg'),
	 ('akarsh jain');

--printing the table.
select * from students;

--creating another table.
create table students_profile(
student_id serial primary key,
address text,
age int,
phone varchar(15)
);

-- inserting the values
insert into students_profile(address, age, phone)
values	
		('Delhi, India', 22, '9999999999'),
		('Mumbai, India', 22, '8888888888'),
		('indore, India', 24, '7878787878');

--printing the values.
select * from students_profile;

--altering the table by adding constraint which sets the primary key to foreign key.
alter table students_profile
add constraint fk_student_id
foreign key(student_id)
references students(student_id);

--joining both the tables.
select 
s.student_id,
s.name,
sp.address,
sp.age,
sp.phone
from students s
join students_profile sp
on s.student_id = sp.student_id;
