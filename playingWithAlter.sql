create table students(
student_id serial primary key,
name varchar(50),
age bigint
);
--Playing with alter commands.
insert into students(name, age)
values('Rishi', 23),
	('Sagar', 23);

select * from students;

--Add column email.
alter table students add column email varchar(100) default 'not provided';

--drop the column email.
alter table students drop column email; 

--rename name to full_name.
alter table students
rename column name to full_name;

--changing the data type.
alter table students
alter column age type smallint;

--setting the dafault value.
alter table students 
alter column age set default 18;

--droping the default value.
alter table students
alter column age drop default;

--adding constraints.
alter table students
add constraint age_check check(age>=0);

--dropping the constraint.
alter table students
drop constraint age_check;

--changing the name of the table.
alter table students
rename to school_students;