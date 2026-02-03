
select count(*) as total_students from students; 

select count(*) as active_students from students where active_flag = 1;

select sum(fees) as total_fees, avg(fees) as average_fees from courses;

select sum(fees) as greater_fees from courses where fees>2000; 

select min(age) as min_age from students;

select max(fees) as max_cour_fee from courses;

select TOP 1 * from students order by join_date desc;

select TOP 1 * from students order by join_date asc;

select active_flag, count(*) as student_count from students group by active_flag;

select age,count(*) as numb_students  from students group by age;

select fees,sum(fees) as total_fees from courses group by fees;

SELECT  c.course_id, c.course_name, c.fees,
COUNT(e.enroll_id) AS EnrollmentCount
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name, c.fees
HAVING COUNT(e.enroll_id) > 3;

select avg(age) as avg_age from students group by age having avg(age)>21;

select course_id, count(*) from enrollments group by course_id having count(*)>2;








select * from students;
select * from courses;
select * from enrollments;

