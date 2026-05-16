\*QUESTION

Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName
and "Course" table with the following a columns: CourseId,CourseName 

and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.

Answer:*/

show databases;
+---------------------------+
| Database                  |
+---------------------------+
| aggregation               |
| bankaccount               |
| ecommerse                 |
| information_schema        |
| joints                    |
| mysql                     |
| performance_schema        |
| sakila                    |
| store_procedure_example   |
| student_management_system |
| studentmanagementsystem   |
| sys                       |
| world                     |
+---------------------------+
13 rows in set (0.01 sec)

mysql> use studentmanagementsystem
Database changed
mysql> drop database studentmanagementsystem;
Query OK, 4 rows affected (0.16 sec)

mysql> create database studentmanagementsystem;
Query OK, 1 row affected (0.02 sec)

mysql> use studentmanagementsystem
Database changed
mysql> create table student(student_id varchar(10)not null primary key,first_name varchar(10)not null,last_name varchar(10)not null);
Query OK, 0 rows affected (0.07 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | varchar(10) | NO   | PRI | NULL    |       |
| first_name | varchar(10) | NO   |     | NULL    |       |
| last_name  | varchar(10) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into student values("01","rohan","pal"),("02","mohan","yadav"),("03","aayansh","dash"),("04","diksha","ghai"),("05","ansh","rena");
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------------+------------+-----------+
| student_id | first_name | last_name |
+------------+------------+-----------+
| 01         | rohan      | pal       |
| 02         | mohan      | yadav     |
| 03         | aayansh    | dash      |
| 04         | diksha     | ghai      |
| 05         | ansh       | rena      |
+------------+------------+-----------+
5 rows in set (0.00 sec)

mysql> create table course(course_id varchar(10)not null primary key,course_name varchar(10)not null);
Query OK, 0 rows affected (0.08 sec)

mysql> desc course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| course_id   | varchar(10) | NO   | PRI | NULL    |       |
| course_name | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into course values("c21","dpba"),("c22","python"),("c23","java"),("c25","hacking"),("c24","linux");
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from course;
+-----------+-------------+
| course_id | course_name |
+-----------+-------------+
| c21       | dpba        |
| c22       | python      |
| c23       | java        |
| c24       | linux       |
| c25       | hacking     |
+-----------+-------------+
5 rows in set (0.00 sec)

mysql> create table Enrollment(Enrollment_id varchar(10)not null primary key,student_id varchar(10) not null,course_id varchar(10)not null,foreign key(student_id)references student(student_id), foreign key(course_id)references course(course_id));
Query OK, 0 rows affected (0.09 sec)

mysql> desc enrollment;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Enrollment_id | varchar(10) | NO   | PRI | NULL    |       |
| student_id    | varchar(10) | NO   | MUL | NULL    |       |
| course_id     | varchar(10) | NO   | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
mysql> insert into enrollment values("c101","01","c21"),("c102","02","c22"),("c103","03","c23"),("c104","04","c24"),("c105","05","c25");
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from enrollment;
+---------------+------------+-----------+
| Enrollment_id | student_id | course_id |
+---------------+------------+-----------+
| c101          | 01         | c21       |
| c102          | 02         | c22       |
| c103          | 03         | c23       |
| c104          | 04         | c24       |
| c105          | 05         | c25       |
+---------------+------------+-----------+
5 rows in set (0.00 sec)

mysql> select student.student_id,student.first_name,student.last_name,course.course_id,course.course_name from enrollment enrollment inner join student student on enrollment.student_id=student.student_id inner join course course on enrollment.course_id=course.course_id;
+------------+------------+-----------+-----------+-------------+
| student_id | first_name | last_name | course_id | course_name |
+------------+------------+-----------+-----------+-------------+
| 01         | rohan      | pal       | c21       | dpba        |
| 02         | mohan      | yadav     | c22       | python      |
| 03         | aayansh    | dash      | c23       | java        |
| 04         | diksha     | ghai      | c24       | linux       |
| 05         | ansh       | rena      | c25       | hacking     |
+------------+------------+-----------+-----------+-------------+
5 rows in set (0.01 sec)

