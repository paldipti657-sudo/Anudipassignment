/*Question

Database Schema: Consider a simple database with one tables: BankAccount BankAccount

Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 

Answer: */

create database bankaccount;
Query OK, 1 row affected (0.10 sec)

mysql>  show databases;
+---------------------------+
| Database                  |
+---------------------------+
| bankaccount               |
| ecommerse                 |
| information_schema        |
| mysql                     |
| performance_schema        |
| sakila                    |
| student_management_system |
| sys                       |
| world                     |
+---------------------------+
9 rows in set (0.00 sec)

mysql> mysql> use bankaccount
Database changed
mysql> create table bankaccount(account_id int primary key,account_holder_name varchar(20),account_balance double);
Query OK, 0 rows affected (0.11 sec)

mysql> insert into bankaccount(account_id,account_holder_name,account_balance)values('101','rahul yadav','4500'),('102','priya pal','3600'),('103','mohit shigh','2800');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> mysql> show tables;
+-----------------------+
| Tables_in_bankaccount |
+-----------------------+
| bankaccount           |
+-----------------------+
1 row in set (0.00 sec)
mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | rahul yadav         |            4500 |
|        102 | priya pal           |            3600 |
|        103 | mohit shigh         |            2800 |
+------------+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from bankaccount where account_balance>3000;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | rahul yadav         |            4500 |
|        102 | priya pal           |            3600 |
+------------+---------------------+-----------------+
2 rows in set (0.00 sec)
mysql> update bankaccount set account_balance=50000 where account_id=101;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | rahul yadav         |           50000 |
|        102 | priya pal           |            3600 |
|        103 | mohit shigh         |            2800 |
+------------+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql>