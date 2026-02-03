INSERT INTO students (student_id, name, email, age, active_flag) VALUES
(1012, 'Amitq', 'hytt.sharma@gmail.com', 30, 0),
(1013, 'rabii', 'sv.@gmail.com',22,1),
(1014, 'ramkaa','dkhsvd@gmail.com',20,1);

INSERT INTO COURSES (course_id, course_name, fees) VALUES
(2006, 'Developer', 99999999.00);

INSERT INTO ENROLLMENTS (enroll_id, student_id, course_id) VALUES (7016,1014,2006);

select * from students;

select name,email from students;

select * from students order by age desc;

SELECT TOP 5 * FROM students ORDER BY join_date DESC;

SELECT distinct age from students;

select distinct course_name from courses;

update students set age = 24 where student_id = 101; 

update students set active_flag=0 where student_id IN(1001,1003);

UPDATE courses set fees += (fees * 1.10);

delete from students where student_id = 109;

delete from courses where fees<1000;

delete from enrollments where enroll_timestamp <'2022-11-15';

ALTER TABLE students ALTER COLUMN name VARCHAR(200);

EXEC sp_rename 'students.join_date', 'registration_date', 'COLUMN';

ALTER TABLE students ADD phone_number VARCHAR(15);






select * from students;
select * from courses;
select * from enrollments;











