 show databases
    -> ;
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
| sys                       |
| world                     |
+---------------------------+
12 rows in set (0.01 sec)

mysql> use joints;
Database changed
mysql> show tables;
+------------------+
| Tables_in_joints |
+------------------+
| department       |
| employee         |
+------------------+
2 rows in set (0.04 sec)

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | hr        |
|       2 | it        |
|       3 | finance   |
|       4 | marketing |
+---------+-----------+
4 rows in set (0.01 sec)

mysql> select * from employee;
+--------+----------+---------+
| emp_id | emp_name | dept_id |
+--------+----------+---------+
|      1 | dipti    |       2 |
|      2 | rohan    |       3 |
|      3 | ravi     |       4 |
|      4 | pooja    |       1 |
+--------+----------+---------+
4 rows in set (0.00 sec)


mysql> select emp_name,dept_name from employee inner join department on employee.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| dipti    | it        |
| rohan    | finance   |
| ravi     | marketing |
| pooja    | hr        |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employee right join department on employee.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| pooja    | hr        |
| dipti    | it        |
| rohan    | finance   |
| ravi     | marketing |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employee left join department on employee.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| dipti    | it        |
| rohan    | finance   |
| ravi     | marketing |
| pooja    | hr        |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employee cross join department on employee.dept_id=department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| dipti    | it        |
| rohan    | finance   |
| ravi     | marketing |
| pooja    | hr        |
+----------+-----------+
4 rows in set (0.00 sec)

mysql>  select emp_name from employee full join department;
+----------+
| emp_name |
+----------+
| pooja    |
| ravi     |
| rohan    |
| dipti    |
| pooja    |
| ravi     |
| rohan    |
| dipti    |
| pooja    |
| ravi     |
| rohan    |
| dipti    |
| pooja    |
| ravi     |
| rohan    |
| dipti    |
+----------+
16 rows in set, 1 warning (0.00 sec)

mysql> select * from employee  full join department;
+--------+----------+---------+---------+-----------+
| emp_id | emp_name | dept_id | dept_id | dept_name |
+--------+----------+---------+---------+-----------+
|      4 | pooja    |       1 |       1 | hr        |
|      3 | ravi     |       4 |       1 | hr        |
|      2 | rohan    |       3 |       1 | hr        |
|      1 | dipti    |       2 |       1 | hr        |
|      4 | pooja    |       1 |       2 | it        |
|      3 | ravi     |       4 |       2 | it        |
|      2 | rohan    |       3 |       2 | it        |
|      1 | dipti    |       2 |       2 | it        |
|      4 | pooja    |       1 |       3 | finance   |
|      3 | ravi     |       4 |       3 | finance   |
|      2 | rohan    |       3 |       3 | finance   |
|      1 | dipti    |       2 |       3 | finance   |
|      4 | pooja    |       1 |       4 | marketing |
|      3 | ravi     |       4 |       4 | marketing |
|      2 | rohan    |       3 |       4 | marketing |
|      1 | dipti    |       2 |       4 | marketing |
+--------+----------+---------+---------+-----------+
16 rows in set, 1 warning (0.00 sec)

mysql> use store_procedure_example;
Database changed
mysql> create table employee(id int primary key not null, name varchar(20) not null,dept varchar(20) not null, salary int not null);
ERROR 1050 (42S01): Table 'employee' already exists
mysql> select * from employee;
+----+--------+------------+--------+
| id | name   | department | salary |
+----+--------+------------+--------+
|  1 | dinesh | hr         |   1000 |
|  2 | mahesh | it         |  20000 |
+----+--------+------------+--------+
2 rows in set (0.00 sec)

mysql> CREATE PROCEDURE GetEmployees()
    -> BEGIN
    ->     SELECT * ' at line 1
mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployees()
    -> BEGIN
    -> SELECT * FROM Employee;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql>  DELIMITER ;
mysql> call GetEmployees();
+----+--------+------------+--------+
| id | name   | department | salary |
+----+--------+------------+--------+
|  1 | dinesh | hr         |   1000 |
|  2 | mahesh | it         |  20000 |
+----+--------+------------+--------+
2 rows in set (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE GetEmployeeByDept(IN dept_name VARCHAR(50))
    -> BEGIN
    ->     SELECT *
    ->     FROM employee
    ->     WHERE department = dept_name;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> DELIMITER ;
mysql> CALL GetEmployeeByDept('hr');
+----+--------+------------+--------+
| id | name   | department | salary |
+----+--------+------------+--------+
|  1 | dinesh | hr         |   1000 |
+----+--------+------------+--------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE AddEmployee(
    -> IN  id INT,
    -> IN name VARCHAR(50),
    ->  IN dept VARCHAR(50),
    -> IN salary INT
    -> )
    -> BEGIN
    -> INSERT INTO Employee(id, name, dept, salary)
    ->  VALUES(id, name, dept, salary);
    -> END //
Query OK, 0 rows affected (0.01 sec)


mysql> DELIMITER //
mysql> CREATE PROCEDURE AddEmployee(
    ->     IN emp_id INT,
    ->     IN emp_name VARCHAR(50),
    ->     IN emp_dept VARCHAR(50),
    ->     IN emp_salary INT
    -> )
    -> BEGIN
    ->     INSERT INTO Employee(id, name, department, salary)
    ->     VALUES(emp_id, emp_name, emp_dept, emp_salary);
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER ;
mysql> CALL AddEmployee(3, 'Khan', 'IT', 12000);
Query OK, 1 row affected (0.03 sec)

mysql> select * from employee;
+----+--------+------------+--------+
| id | name   | department | salary |
+----+--------+------------+--------+
|  1 | dinesh | hr         |   1000 |
|  2 | mahesh | it         |  20000 |
|  3 | Khan   | IT         |  12000 |
+----+--------+------------+--------+
3 rows in set (0.00 sec)

mysql> CREATE PROCEDURE GetEmployeeCount(OUT total INT)
    -> SELECT COUNT(*) INTO total
    -> FROM Employee;
Query OK, 0 rows affected (0.02 sec)

mysql> CALL GetEmployeeCount(@total);
Query OK, 1 row affected (0.03 sec)

mysql> SELECT @total;
+--------+
| @total |
+--------+
|      3 |
+--------+
1 row in set (0.00 sec)

mysql>