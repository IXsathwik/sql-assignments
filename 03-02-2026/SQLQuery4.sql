select * from students where age>21;

select * from students where active_flag = 1;

Select course_name from courses where  fees BETWEEN 1000 AND 5000;

Select name from students where age IN (20, 22, 25);

select name from students where age > 20 AND active_flag=1; 

select name from students where age < 20 OR active_flag=0;

select course_name from courses where fees > 2000 AND course_name LIKE '%Artificial%';

select email from students where email LIKE '%gmail.com';

select course_name from courses where course_name LIKE 'Artificial%';

SELECT * FROM courses WHERE course_name LIKE '%Artificial%';

select * from students where age is null;

select * from students where age is not NULL;





























TASK 4  
 — WHERE  
Select students age > 21 
Select active students only 
Select courses with fee BETWEEN 1000 AND 5000 
Select students with age IN (20, 22, 25) 
 — AND / OR 
Students age > 20 AND active 
Students age < 20 OR inactive 
Courses with fee > 2000 AND name LIKE '%Data%' 
 — LIKE Pattern 
Emails ending with ‘gmail.com’ (%gmail.com) 
Course names starting with ‘Data’ (Data%) 
Cities containing ‘new’ anywhere (%new%) 
 — NULL Checks 
Insert a student with NULL age 
Select students where age IS NULL 
Select students where age IS NOT NULL 