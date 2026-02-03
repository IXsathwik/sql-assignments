INSERT INTO students (student_id, name, email, age, join_date, active_flag) VALUES
(1001, 'Amit Sharma', 'amit.sharma@gmail.com', 20, '2023-06-15', 1),
(1002, 'Priya Verma', 'priya.verma@gmail.com', 21, '2023-07-01', 0),
(1003, 'Rahul Mehta', 'rahul.mehta@gmail.com', 22, '2023-05-20', 0),
(1004, 'Sneha Reddy', 'sneha.reddy@gmail.com', 19, '2023-08-10', 1),
(1005, 'Karan Patel', 'karan.patel@gmail.com', 23, '2023-04-05', 0),
(1006, 'Neha Singh', 'neha.singh@gmail.com', 21, '2023-09-12', 1),
(1007, 'Arjun Nair', 'arjun.nair@gmail.com', 20, '2023-06-30', 1),
(1008, 'Pooja Iyer', 'pooja.iyer@gmail.com', 22, '2023-07-18', 1),
(1009, 'Vikram Rao', 'vikram.rao@gmail.com', 24, '2023-03-25', 1),
(1010, 'Ananya Das', 'ananya.das@gmail.com', 19, '2023-08-28', 1);



INSERT INTO COURSES (course_id, course_name, fees) VALUES
(2001, 'Data Structures and Algorithms', 45000.00),
(2002, 'Database Management Systems', 40000.00),
(2003, 'Artificial Intelligence', 60000.00),
(2004, 'Computer Science Engineering', 85000.00),
(2005, 'Information Technology', 80000.00);



INSERT INTO ENROLLMENTS (enroll_id, student_id, course_id, enroll_timestamp) VALUES
(7001, 1001, 2001, '2023-06-01 10:00:00'),
(7002, 1002, 2002, '2023-06-03 11:15:00'),
(7003, 1001, 2004, '2023-06-20 09:30:00'),
(7004, 1002, 2005, '2023-07-05 10:45:00'),
(7005, 1003, 2003, '2023-05-25 14:20:00'),
(7006, 1004, 2004, '2023-08-12 12:10:00'),
(7007, 1005, 2002, '2023-04-10 15:00:00'),
(7008, 1006, 2001, '2023-09-15 11:40:00'),
(7009, 1007, 2005, '2023-06-30 09:50:00'),
(7010, 1008, 2003, '2023-07-20 16:05:00'),
(7011, 1009, 2002, '2023-03-30 10:25:00'),
(7012, 1010, 2001, '2023-08-30 13:35:00'),
(7013, 1001, 2002, '2023-09-05 14:55:00'),
(7014, 1001, 2001, '2022-09-05 14:55:00'),
(7015, 1010, 2003, '2021-11-15 14:55:00');
