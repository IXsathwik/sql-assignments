

select * from students where age>20 order by age asc ;

select count(name) as liek_A from students where name like '%ab%';

select * from courses where fees between 10000 and 500000 order by fees desc;

select * from students where age is NOT NULL  and active_flag=1;

select course_id, count(*) as enrol_cnt from enrollments group by course_id having count(*) > 1;



