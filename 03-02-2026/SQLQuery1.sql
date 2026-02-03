use appdb;


CREATE TABLE students (
    student_id BIGINT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    age INT,
    join_date DATE DEFAULT CAST(GETDATE() AS DATE),
    active_flag BIT DEFAULT 1
);


CREATE TABLE COURSES (
course_id INT PRIMARY KEY,
course_name VARCHAR(100) NOT NULL,
fees DECIMAL(10,2));


CREATE TABLE ENROLLMENTS (
    enroll_id BIGINT PRIMARY KEY,
    student_id BIGINT,
    course_id INT,
    enroll_timestamp DATETIME DEFAULT GETDATE(),
    CONSTRAINT FK_Enrollments_Students FOREIGN KEY (student_id) 
        REFERENCES students(student_id),
    CONSTRAINT FK_Enrollments_Courses FOREIGN KEY (course_id) 
        REFERENCES courses(course_id)
);

select * from students;
select * from courses;
select * from enrollments;