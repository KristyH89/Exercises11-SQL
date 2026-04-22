CREATE DATABASE IF NOT EXISTS school_management DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE TABLE IF NOT EXISTS courses (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,                 
    credits INT NOT NULL          
    );
    INSERT INTO courses (course_name, credits) VALUES
					('Defense Against the Dark Arts', 5),
					('Potions', 4),
                    ('Transfiguration', 6),
                    ('Care of Magical Creatures', 4),
                    ('Flying Lessons', 3),
                    ('Acient Runes', 3
);
UPDATE courses SET credits = 8 WHERE course_name = 'Defense Against the Dark Arts';
SELECT * FROM courses;
UPDATE courses SET credits = 8 WHERE id = 1;
DELETE FROM courses WHERE id = 6;
SELECT * FROM student;
SELECT * FROM student WHERE group_name = 'G1';
SELECT * FROM student WHERE name LIKE 'H%';
SELECT s.name, a.status, a.attendance_date FROM student s INNER JOIN attendance a ON s.id = a.student_id;
SELECT s.name, a.status, a.attendance_date FROM student s LEFT JOIN attendance a ON s.id = a.student_id;
SELECT COUNT(*) AS total_students FROM student;
SELECT status, COUNT(*) AS total From attendance GROUP BY status;
SELECT s.name, COUNT(a.status) AS days_present FROM student s INNER JOIN attendance a ON s.id = a.student_id WHERE a.status = 'Present'GROUP BY s.name;



----------------------------------------------------------------------------------------------------------------------------------------------------------

Time	SQL
20:09:23	SELECT
  s.name,
     a.attendance_date,
     a.status
     FROM student s
     INNER JOIN attendance a ON s.id = a.student_id
20:05:04	SELECT * FROM student s INNER JOIN attendance a ON s.id = a.student_id
19:52:33	SELECT * FROM attendance
19:44:05	INSERT INTO attendance (student_id, attendance_date, status) VALUES
       (1, '2026-04-20', 'Present'),
       (2, '2026-04-20', 'Present'),
       (3, '2026-04-20', 'Absent'),
       (4, '2026-04-20', 'Present'),
       (5, '2026-04-20', 'Absent'),
       (6, '2026-04-20', 'Present'),
       (7, '2026-04-20', 'Present'),
       (8, '2026-04-20', 'Absent'),
       (9, '2026-04-20', 'Present'),
       (10, '2026-04-20', 'Present'),
       (11, '2026-04-20', 'Absent'),
       (12, '2026-04-20', 'Present'),
       (13, '2026-04-20', 'Present'),
       (14, '2026-04-20', 'Absent'),
       (15, '2026-04-20', 'Present'),
                         
                         (1, '2026-04-21', 'Present'),
       (2, '2026-04-21', 'Present'),
       (3, '2026-04-21', 'Present'),
       (4, '2026-04-21', 'Absent'),
       (5, '2026-04-21', 'Present'),
       (6, '2026-04-21', 'Present'),
       (7, '2026-04-21', 'Present'),
       (8, '2026-04-21', 'Present'),
       (9, '2026-04-21', 'Absent'),
       (10, '2026-04-21', 'Present'),
       (11, '2026-04-21', 'Present'),
       (12, '2026-04-21', 'Present'),
       (13, '2026-04-21', 'Absent'),
       (14, '2026-04-21', 'Present'),
       (15, '2026-04-21', 'Present'),
                         
                         (1, '2026-04-22', 'Present'),
       (2, '2026-04-22', 'Present'),
       (3, '2026-04-22', 'Present'),
       (4, '2026-04-22', 'Present'),
       (5, '2026-04-22', 'Absent'),
       (6, '2026-04-22', 'Present'),
       (7, '2026-04-22', 'Present'),
       (8, '2026-04-22', 'Present'),
       (9, '2026-04-22', 'Present'),
       (10, '2026-04-22', 'Present'),
       (11, '2026-04-22', 'Absent'),
       (12, '2026-04-22', 'Present'),
       (13, '2026-04-22', 'Present'),
       (14, '2026-04-22', 'Present'),
       (15, '2026-04-22', 'Present'
 )
19:44:01	INSERT INTO student (id, name, group_name) VALUES (4, 'Bellatrix Lestrange', 'G3')
19:43:44	DELETE FROM student WHERE name = 'Bellatrix Lestrange'
19:41:51	INSERT INTO attendance (student_id, attendance_date, status) VALUES
       (1, '2026-04-20', 'Present'),
       (2, '2026-04-20', 'Present'),
       (3, '2026-04-20', 'Absent'),
       (4, '2026-04-20', 'Present'),
       (5, '2026-04-20', 'Absent'),
       (6, '2026-04-20', 'Present'),
       (7, '2026-04-20', 'Present'),
       (8, '2026-04-20', 'Absent'),
       (9, '2026-04-20', 'Present'),
       (10, '2026-04-20', 'Present'),
       (11, '2026-04-20', 'Absent'),
       (12, '2026-04-20', 'Present'),
       (13, '2026-04-20', 'Present'),
       (14, '2026-04-20', 'Absent'),
       (15, '2026-04-20', 'Present'),
                         
                         (1, '2026-04-21', 'Present'),
       (2, '2026-04-21', 'Present'),
       (3, '2026-04-21', 'Present'),
       (4, '2026-04-21', 'Absent'),
       (5, '2026-04-21', 'Present'),
       (6, '2026-04-21', 'Present'),
       (7, '2026-04-21', 'Present'),
       (8, '2026-04-21', 'Present'),
       (9, '2026-04-21', 'Absent'),
       (10, '2026-04-21', 'Present'),
       (11, '2026-04-21', 'Present'),
       (12, '2026-04-21', 'Present'),
       (13, '2026-04-21', 'Absent'),
       (14, '2026-04-21', 'Present'),
       (15, '2026-04-21', 'Present'),
                         
                         (1, '2026-04-22', 'Present'),
       (2, '2026-04-22', 'Present'),
       (3, '2026-04-22', 'Present'),
       (4, '2026-04-22', 'Present'),
       (5, '2026-04-22', 'Absent'),
       (6, '2026-04-22', 'Present'),
       (7, '2026-04-22', 'Present'),
       (8, '2026-04-22', 'Present'),
       (9, '2026-04-22', 'Present'),
       (10, '2026-04-22', 'Present'),
       (11, '2026-04-22', 'Absent'),
       (12, '2026-04-22', 'Present'),
       (13, '2026-04-22', 'Present'),
       (14, '2026-04-22', 'Present'),
       (15, '2026-04-22', 'Present'
 )
19:40:15	INSERT INTO attendance (student_id, attendance_date, status) VALUES
       (1, '2026-04-20', 'Present'),
       (2, '2026-04-20', 'Present'),
       (3, '2026-04-20', 'Absent'),
       (4, '2026-04-20', 'Present'),
       (5, '2026-04-20', 'Absent'),
       (6, '2026-04-20', 'Present'),
       (7, '2026-04-20', 'Present'),
       (8, '2026-04-20', 'Absent'),
       (9, '2026-04-20', 'Present'),
       (10, '2026-04-20', 'Present'),
       (11, '2026-04-20', 'Absent'),
       (12, '2026-04-20', 'Present'),
       (13, '2026-04-20', 'Present'),
       (14, '2026-04-20', 'Absent'),
       (15, '2026-04-20', 'Present'),
                         
                         (1, '2026-04-21', 'Present'),
       (2, '2026-04-21', 'Present'),
       (3, '2026-04-21', 'Present'),
       (4, '2026-04-21', 'Absent'),
       (5, '2026-04-21', 'Present'),
       (6, '2026-04-21', 'Present'),
       (7, '2026-04-21', 'Present'),
       (8, '2026-04-21', 'Present'),
       (9, '2026-04-21', 'Absent'),
       (10, '2026-04-21', 'Present'),
       (11, '2026-04-21', 'Present'),
       (12, '2026-04-21', 'Present'),
       (13, '2026-04-21', 'Absent'),
       (14, '2026-04-21', 'Present'),
       (15, '2026-04-21', 'Present'),
                         
                         (1, '2026-04-22', 'Present'),
       (2, '2026-04-22', 'Present'),
       (3, '2026-04-22', 'Present'),
       (4, '2026-04-22', 'Present'),
       (5, '2026-04-22', 'Absent'),
       (6, '2026-04-22', 'Present'),
       (7, '2026-04-22', 'Present'),
       (8, '2026-04-22', 'Present'),
       (9, '2026-04-22', 'Present'),
       (10, '2026-04-22', 'Present'),
       (11, '2026-04-22', 'Absent'),
       (12, '2026-04-22', 'Present'),
       (13, '2026-04-22', 'Present'),
       (14, '2026-04-22', 'Present'),
       (15, '2026-04-22', 'Present')
 )
19:39:58	INSERT INTO attendance (student_id, attendance_date, status) VALUES
       (1, '2026-04-20', 'Present'),
       (2, '2026-04-20', 'Present'),
       (3, '2026-04-20', 'Absent'),
       (4, '2026-04-20', 'Present'),
       (5, '2026-04-20', 'Absent'),
       (6, '2026-04-20', 'Present'),
       (7, '2026-04-20', 'Present'),
       (8, '2026-04-20', 'Absent'),
       (9, '2026-04-20', 'Present'),
       (10, '2026-04-20', 'Present'),
       (11, '2026-04-20', 'Absent'),
       (12, '2026-04-20', 'Present'),
       (13, '2026-04-20', 'Present'),
       (14, '2026-04-20', 'Absent'),
       (15, '2026-04-20', 'Present'),
                         
                         (1, '2026-04-21', 'Present'),
       (2, '2026-04-21', 'Present'),
       (3, '2026-04-21', 'Present'),
       (4, '2026-04-21', 'Absent'),
       (5, '2026-04-21', 'Present'),
       (6, '2026-04-21', 'Present'),
       (7, '2026-04-21', 'Present'),
       (8, '2026-04-21', 'Present'),
       (9, '2026-04-21', 'Absent'),
       (10, '2026-04-21', 'Present'),
       (11, '2026-04-21', 'Present'),
       (12, '2026-04-21', 'Present'),
       (13, '2026-04-21', 'Absent'),
       (14, '2026-04-21', 'Present'),
       (15, '2026-04-21', 'Present'),
                         
                         (1, '2026-04-22', 'Present'),
       (2, '2026-04-22', 'Present'),
       (3, '2026-04-22', 'Present'),
       (4, '2026-04-22', 'Present'),
       (5, '2026-04-22', 'Absent'),
       (6, '2026-04-22', 'Present'),
       (7, '2026-04-22', 'Present'),
       (8, '2026-04-22', 'Present'),
       (9, '2026-04-22', 'Present'),
       (10, '2026-04-22', 'Present'),
       (11, '2026-04-22', 'Absent'),
       (12, '2026-04-22', 'Present'),
       (13, '2026-04-22', 'Present'),
       (14, '2026-04-22', 'Present'),
       (15, '2026-04-22', 'Present')
 )
19:39:31	INSERT INTO attendance (student_id, attendance_date, status) VALUES
       (1, '2026-04-20', 'Present'),
       (2, '2026-04-20', 'Present'),
       (3, '2026-04-20', 'Absent'),
       (4, '2026-04-20', 'Present'),
       (5, '2026-04-20', 'Absent'),
       (6, '2026-04-20', 'Present'),
       (7, '2026-04-20', 'Present'),
       (8, '2026-04-20', 'Absent'),
       (9, '2026-04-20', 'Present'),
       (10, '2026-04-20', 'Present'),
       (11, '2026-04-20', 'Absent'),
       (12, '2026-04-20', 'Present'),
       (13, '2026-04-20', 'Present'),
       (14, '2026-04-20', 'Absent'),
       (15, '2026-04-20', 'Present'),
                         
                         (1, '2026-04-21', 'Present'),
       (2, '2026-04-21', 'Present'),
       (3, '2026-04-21', 'Present'),
       (4, '2026-04-21', 'Absent'),
       (5, '2026-04-21', 'Present'),
       (6, '2026-04-21', 'Present'),
       (7, '2026-04-21', 'Present'),
       (8, '2026-04-21', 'Present'),
       (9, '2026-04-21', 'Absent'),
       (10, '2026-04-21', 'Present'),
       (11, '2026-04-21', 'Present'),
       (12, '2026-04-21', 'Present'),
       (13, '2026-04-21', 'Absent'),
       (14, '2026-04-21', 'Present'),
       (15, '2026-04-21', 'Present'),
                         
                         (1, '2026-04-22', 'Present'),
       (2, '2026-04-22', 'Present'),
       (3, '2026-04-22', 'Present'),
       (4, '2026-04-22', 'Present'),
       (5, '2026-04-22', 'Absent'),
       (6, '2026-04-22', 'Present'),
       (7, '2026-04-22', 'Present'),
       (8, '2026-04-22', 'Present'),
       (9, '2026-04-22', 'Present'),
       (10, '2026-04-22', 'Present'),
       (11, '2026-04-22', 'Absent'),
       (12, '2026-04-22', 'Present'),
       (13, '2026-04-22', 'Present'),
       (14, '2026-04-22', 'Present'),
       (15, '2026-04-22', 'Present'),
 )
19:39:22	INSERT INTO attendance (student_id, attendance_date, status) VALUES
       (1, '2026-04-20', 'Present'),
       (2, '2026-04-20', 'Present'),
       (3, '2026-04-20', 'Absent'),
       (4, '2026-04-20', 'Present'),
       (5, '2026-04-20', 'Absent'),
       (6, '2026-04-20', 'Present'),
       (7, '2026-04-20', 'Present'),
       (8, '2026-04-20', 'Absent'),
       (9, '2026-04-20', 'Present'),
       (10, '2026-04-20', 'Present'),
       (11, '2026-04-20', 'Absent'),
       (12, '2026-04-20', 'Present'),
       (13, '2026-04-20', 'Present'),
       (14, '2026-04-20', 'Absent'),
       (15, '2026-04-20', 'Present'),
                         
                         (1, '2026-04-21', 'Present'),
       (2, '2026-04-21', 'Present'),
       (3, '2026-04-21', 'Present'),
       (4, '2026-04-21', 'Absent'),
       (5, '2026-04-21', 'Present'),
       (6, '2026-04-21', 'Present'),
       (7, '2026-04-21', 'Present'),
       (8, '2026-04-21', 'Present'),
       (9, '2026-04-21', 'Absent'),
       (10, '2026-04-21', 'Present'),
       (11, '2026-04-21', 'Present'),
       (12, '2026-04-21', 'Present'),
       (13, '2026-04-21', 'Absent'),
       (14, '2026-04-21', 'Present'),
       (15, '2026-04-21', 'Present'),
                         
                         (1, '2026-04-22', 'Present'),
       (2, '2026-04-22', 'Present'),
       (3, '2026-04-22', 'Present'),
       (4, '2026-04-22', 'Present'),
       (5, '2026-04-22', 'Absent'),
       (6, '2026-04-22', 'Present'),
       (7, '2026-04-22', 'Present'),
       (8, '2026-04-22', 'Present'),
       (9, '2026-04-22', 'Present'),
       (10, '2026-04-22', 'Present'),
       (11, '2026-04-22', 'Absent'),
       (12, '2026-04-22', 'Present'),
       (13, '2026-04-22', 'Present'),
       (14, '2026-04-22', 'Present'),
       (15, '2026-04-22', 'Present')
 )
19:37:00	INSERT INTO attendance (student_id, attendance_date, status) VALUES
       (1, '2026-04-20', 'Present'),
       (2, '2026-04-20', 'Present'),
       (3, '2026-04-20', 'Absent'),
       (4, '2026-04-20', 'Present'),
       (5, '2026-04-20', 'Absent'),
       (6, '2026-04-20', 'Present'),
       (7, '2026-04-20', 'Present'),
       (8, '2026-04-20', 'Absent'),
       (9, '2026-04-20', 'Present'),
       (10, '2026-04-20', 'Present'),
       (11, '2026-04-20', 'Absent'),
       (12, '2026-04-20', 'Present'),
       (13, '2026-04-20', 'Present'),
       (14, '2026-04-20', 'Absent'),
       (15, '2026-04-20', 'Present')
                         
                         (1, '2026-04-21', 'Present'),
       (2, '2026-04-21', 'Present'),
       (3, '2026-04-21', 'Present'),
       (4, '2026-04-21', 'Absent'),
       (5, '2026-04-21', 'Present'),
       (6, '2026-04-21', 'Present'),
       (7, '2026-04-21', 'Present'),
       (8, '2026-04-21', 'Present'),
       (9, '2026-04-21', 'Absent'),
       (10, '2026-04-21', 'Present'),
       (11, '2026-04-21', 'Present'),
       (12, '2026-04-21', 'Present'),
       (13, '2026-04-21', 'Absent'),
       (14, '2026-04-21', 'Present'),
       (15, '2026-04-21', 'Present')
                         
                         (1, '2026-04-22', 'Present'),
       (2, '2026-04-22', 'Present'),
       (3, '2026-04-22', 'Present'),
       (4, '2026-04-22', 'Present'),
       (5, '2026-04-22', 'Absent'),
       (6, '2026-04-22', 'Present'),
       (7, '2026-04-22', 'Present'),
       (8, '2026-04-22', 'Present'),
       (9, '2026-04-22', 'Present'),
       (10, '2026-04-22', 'Present'),
       (11, '2026-04-22', 'Absent'),
       (12, '2026-04-22', 'Present'),
       (13, '2026-04-22', 'Present'),
       (14, '2026-04-22', 'Present'),
       (15, '2026-04-22', 'Present')
 )
19:36:44	INSERT INTO student (name, group_name) VALUES ('Bellatrix Lestrange', 'G3')
19:30:31	SELECT * FROM student
19:10:00	CREATE TABLE IF NOT EXISTS attendance (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     student_id INT NOT NULL,
     attendance_date DATE NOT NULL DEFAULT (CURRENT_DATE),
     status ENUM ('Present', 'Absent') NOT NULL,
     FOREIGN KEY (student_id) REFERENCES student(id),
     UNIQUE (student_id, attendance_date)
     )
16:22:01	CREATE TABLE IF NOT EXISTS attendance (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     student_id INT NOT NULL,
     attendance_date DATE NOT NULL DEFAULT (CURRENT_DATE),
     status ENUM ('Present', 'Absent') NOT NULL,
     FOREIGN KEY (student_id) REFERENCES student(id),
     UNIQUE (student_id, attendance_date)
     )
16:21:29	CREATE TABLE IF NOT EXISTS attendance (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     student_id INT NOT NULL,
     attendance_date DATE NOT NULL DEFAULT (CURRENT_DATE),
     status ENUM ('Present', 'Absent') NOT NULL,
     FOREIGN KEY (student_id) REFERENCE student(id),
     UNIQUE (student_id, attendance_date)
     )
16:10:27	SELECT * FROM student
16:09:59	INSERT INTO student (name, class_group) VALUES
         ('Hermione Granger', 'G1'),
      ('Severus Snape', 'G2'),
      ('Harry Potter', 'G1'),
      ('Bellatrix Lestrange', 'G3'),
      ('Ron Weasley', 'G1'),
      ('Draco Malfoy', 'G2'),
      ('Luna Lovegood', 'G3'),
      ('Albus Dumbledore', 'G1'),
      ('Minerva McGonagall', 'G2'),
      ('Neville Longbottom', 'G3'),
      ('Rubeus Hagrid', 'G1'),
      ('Sirius Black', 'G2'),
      ('Ginny Weasley', 'G3'),
      ('Remus Lupin', 'G2'),
      ('Lord Voldemort', 'G3')
16:09:55	ALTER TABLE student DROP COLUMN email
16:07:30	ALTER TABLE student CHANGE class_group group_name VARCHAR(50) NOT NULL
16:06:54	SELECT * FROM student
16:05:37	ALTER TABLE student MODIFY name VARCHAR(150) NOT NULL
16:05:02	ALTER TABLE student ADD email VARCHAR(255) UNIQUE
15:59:46	SELECT * FROM student
15:59:40	DELETE FROM student WHERE id = 4
15:55:28	SELECT * FROM student
15:54:54	UPDATE student SET  class_group = 'G2'WHERE id = 11
15:50:39	SELECT * FROM student ORDER BY name ASC
15:48:32	SELECT * FROM student WHERE id BETWEEN 1 AND 5
15:46:48	SELECT * FROM student WHERE name LIKE '%ley%'
15:43:59	SELECT * FROM student WHERE class_group IN ('G1', 'G3')
15:42:50	SELECT * FROM student WHERE class_group = 'G1' OR class_group = 'G2'
15:38:22	SELECT * FROM student WHERE class_group = 'G1' AND name LIKE 'H%'
15:36:42	SELECT* FROM student WHERE class_group = 'G1'
15:33:30	SELECT name, class_group FROM student
15:32:06	SELECT * FROM student
15:30:00	INSERT INTO student (name, class_group) VALUES
         ('Hermione Granger', 'G1'),
      ('Severus Snape', 'G2'),
      ('Harry Potter', 'G1'),
      ('Bellatrix Lestrange', 'G3'),
      ('Ron Weasley', 'G1'),
      ('Draco Malfoy', 'G2'),
      ('Luna Lovegood', 'G3'),
      ('Albus Dumbledore', 'G1'),
      ('Minerva McGonagall', 'G2'),
      ('Neville Longbottom', 'G3'),
      ('Rubeus Hagrid', 'G1'),
      ('Sirius Black', 'G2'),
      ('Ginny Weasley', 'G3'),
      ('Remus Lupin', 'G2' ),
      ('Lord Voldemort', 'G3')
14:49:06	CREATE TABLE IF NOT EXISTS student (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- unique id for each student (1,2,3..) made automatically
     name VARCHAR(100) NOT NULL,                 -- student name (text up to 100 characters)
     class_group VARCHAR(50) NOT NULL,          -- group like G1, G2, G3
     create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- automatically stores when the student row was created
     )
14:39:36	USE student_db
14:20:04	CREATE DATABASE IF NOT EXISTS student_db DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
