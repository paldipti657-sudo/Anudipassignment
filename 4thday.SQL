mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| ecommerece                |
| information_schema        |
| lab                       |
| mysql                     |
| performance_schema        |
| sakila                    |
| student_management_system |
| sys                       |
| world                     |
+---------------------------+
9 rows in set (0.01 sec)

mysql> create database aggregation;
Query OK, 1 row affected (0.01 sec)

/* Aggregation function 
- which is used to operate set of values and return the single value. */

mysql> use aggregation;
Database changed
mysql> create table product( product_id varchar(10) not null primary key, product_name varchar(20) not null, category varchar(20) not null,selling_price double not null, original_price double not null, stock int not null);
Query OK, 0 rows affected (0.02 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(20) | NO   |     | NULL    |       |
| category       | varchar(20) | NO   |     | NULL    |       |
| selling_price  | double      | NO   |     | NULL    |       |
| original_price | double      | NO   |     | NULL    |       |
| stock          | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into product values('P101','Chair','Furniture', 6000,50000,12);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values('P102','Table','Furniture', 4000,3000,10);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values('P103','Mobile','Electronics', 20000,17000,20);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values('P104','Webcam','Electronics', 6000,5500,13);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values('P105','Jeans','clothing', 2000,1500,14);
Query OK, 1 row affected (0.00 sec)

mysql> select * from product;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P101       | Chair        | Furniture   |          6000 |          50000 |    12 |
| P102       | Table        | Furniture   |          4000 |           3000 |    10 |
| P103       | Mobile       | Electronics |         20000 |          17000 |    20 |
| P104       | Webcam       | Electronics |          6000 |           5500 |    13 |
| P105       | Jeans        | clothing    |          2000 |           1500 |    14 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

/*SUM() 
-used to calculate summation of set of value*/

mysql> select sum(selling_price) from product;
+--------------------+
| sum(selling_price) |
+--------------------+
|              38000 |
+--------------------+
1 row in set (0.00 sec)

/*AVG()
-used to get average of set of value*/

mysql> select avg(selling_price) from product;
+--------------------+
| avg(selling_price) |
+--------------------+
|               7600 |
+--------------------+
1 row in set (0.00 sec)

/*COUNT()
-used to count the number of rows & columns in the table */

mysql> select count(*) from product;
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.01 sec)

/*MAX()
-used to count maximum value in the table */

mysql> select max(stock) from product;
+------------+
| max(stock) |
+------------+
|         20 |
+------------+
1 row in set (0.00 sec)

/*MIN()
-used to count minimum value in table */

mysql> select min(stock) from product;
+------------+
| min(stock) |
+------------+
|         10 |
+------------+
1 row in set (0.00 sec)

/*ODER BY cluase 
used to sort data in ascending & descending order. */

/*ascending order*/
mysql> select * from product order by stock;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P102       | Table        | Furniture   |          4000 |           3000 |    10 |
| P101       | Chair        | Furniture   |          6000 |          50000 |    12 |
| P104       | Webcam       | Electronics |          6000 |           5500 |    13 |
| P105       | Jeans        | clothing    |          2000 |           1500 |    14 |
| P103       | Mobile       | Electronics |         20000 |          17000 |    20 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

/*descending order*/
mysql> select * from product order by stock desc;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P103       | Mobile       | Electronics |         20000 |          17000 |    20 |
| P105       | Jeans        | clothing    |          2000 |           1500 |    14 |
| P104       | Webcam       | Electronics |          6000 |           5500 |    13 |
| P101       | Chair        | Furniture   |          6000 |          50000 |    12 |
| P102       | Table        | Furniture   |          4000 |           3000 |    10 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

/*descending order with limit*/
mysql> select * from product order by stock desc limit 3;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P103       | Mobile       | Electronics |         20000 |          17000 |    20 |
| P105       | Jeans        | clothing    |          2000 |           1500 |    14 |
| P104       | Webcam       | Electronics |          6000 |           5500 |    13 |
+------------+--------------+-------------+---------------+----------------+-------+
3 rows in set (0.00 sec)

/*GROUP BY clause 
-it is used for combining and aslo in aggregation function.*/

mysql> create table employee( employee_id varchar(10) not null primary key, employee_name varchar(20) not null, department varchar(20) not null, salary int not null);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into employee values('E101','Diksha','HR', 40000),('E102', 'Pavani','IT', 6000),('E103', 'Shreyal', 'IT', 7000),('E104','Sheetal', 'HR', 45000),('E105', 'Harsh', 'Finance', 5000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | Diksha        | HR         |  40000 |
| E102        | Pavani        | IT         |   6000 |
| E103        | Shreyal       | IT         |   7000 |
| E104        | Sheetal       | HR         |  45000 |
| E105        | Harsh         | Finance    |   5000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

/*To count employee in each department*/

mysql> select department, count(*) as total_employees from employee group by department;
+------------+-----------------+
| department | total_employees |
+------------+-----------------+
| HR         |               2 |
| IT         |               2 |
| Finance    |               1 |
+------------+-----------------+
3 rows in set (0.00 sec)

/*To count salaray per department*/

mysql> select department, sum(salary) as total_salary from employee group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        85000 |
| IT         |        13000 |
| Finance    |         5000 |
+------------+--------------+
3 rows in set (0.00 sec)

/* To count average salary per department */

mysql> select department, avg(salary) as average_salary from employee group by department;
+------------+----------------+
| department | average_salary |
+------------+----------------+
| HR         |     42500.0000 |
| IT         |      6500.0000 |
| Finance    |      5000.0000 |
+------------+----------------+
3 rows in set (0.01 sec)

mysql> select department, salary, count(*) from employee group by department , salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |  40000 |        1 |
| IT         |   6000 |        1 |
| IT         |   7000 |        1 |
| HR         |  45000 |        1 |
| Finance    |   5000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)

/* Having clause - used to filter the data after using the group by clause 
- it is also used in aggregation.*/

mysql> select department, count(*) as total_employee from employee group by department having count(*) > 1;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
+------------+----------------+
2 rows in set (0.00 sec)

/* To return the department with total salary*/
mysql> select department, sum(salary) as total_salary from employee group by department having sum(salary) > 8000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        85000 |
| IT         |        13000 |
+------------+--------------+
2 rows in set (0.00 sec)

/* To return the department with average salary*/

mysql> select department, avg(salary) as average_salary from employee group by department having avg(salary) > 5000;
+------------+----------------+
| department | average_salary |
+------------+----------------+
| HR         |     42500.0000 |
| IT         |      6500.0000 |
+------------+----------------+
2 rows in set (0.00 sec)

/*RENAME to rename the table name*/

mysql> alter table employee rename to employee_details;
Query OK, 0 rows affected (0.02 sec)

mysql> select * from employee_details;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | Diksha        | HR         |  40000 |
| E102        | Pavani        | IT         |   6000 |
| E103        | Shreyal       | IT         |   7000 |
| E104        | Sheetal       | HR         |  45000 |
| E105        | Harsh         | Finance    |   5000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql>