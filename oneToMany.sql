-- One to Many relationship
create table students(
student_id serial primary key,
name varchar(100) not null
);

--Creating the table.
create table marks(
marks_id serial primary key,
student_id int,
subject varchar(50),
marks int,
foreign key (student_id) references students(student_id)
);

--inserting the values.
insert into students(name)
values ('akarsh vyas'), ('rishi shrivastava'), ('sagar mehta');

--printing the table.
select * from students;

--updating the name column to uppercase.
update students
set name = upper(name);

--inseting tht values into the second table.
insert into marks(student_id, subject, marks)
values(1, 'English', 85), (1, 'Math', 78), (1, 'Science', 88),
	  (2, 'English', 88), (2, 'Math', 89), (2, 'Science', 90),
	  (3, 'English', 90), (3, 'Math', 92), (3, 'Science', 92);

--printing the second table.
select * from marks;

--Joining the tables and printing the name, subjects and marks of RISHI.
select s.name, m.subject, m.marks 
from students s join marks m
on s.student_id = m.student_id
where name = 'RISHI SHRIVASTAVA'
;

--printing the name and subject where marks are above 90.
select s.name, m.subject 
from students s join marks m
on s.student_id = m.student_id
where marks > 90;