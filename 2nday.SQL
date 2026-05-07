mysql> mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| ecommerse                 |
| information_schema        |
| mysql                     |
| performance_schema        |
| sakila                    |
| student_management_system |
| sys                       |
| world                     |
+---------------------------+
8 rows in set (0.01 sec)

mysql> use ecommerse
Database changed
mysql> mysql> show tables;
+---------------------+
| Tables_in_ecommerse |
+---------------------+
| customer            |
| orders              |
| product             |
+---------------------+
3 rows in set (0.00 sec)

mysql> desc customer;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| customer_id  | varchar(5)  | NO   | PRI | NULL    |       |
| name         | varchar(10) | NO   |     | NULL    |       |
| city         | varchar(10) | NO   |     | NULL    |       |
| email        | varchar(20) | NO   |     | NULL    |       |
| address      | varchar(10) | NO   |     | NULL    |       |
| phone_number | varchar(10) | NO   |     | NULL    |       |
| pincode      | int         | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql>mysql> select * from customer;
Empty set (0.03 sec)

mysql> insert into customer(customer_id,name,city,email,address,phone_number,pincode) values('s101','dipti','mumbai','pal@gmail.com','mulund','9123874420','40028');
Query OK, 1 row affected (0.09 sec)

mysql> select * from customer;
+-------------+-------+--------+---------------+---------+--------------+---------+
| customer_id | name  | city   | email         | address | phone_number | pincode |
+-------------+-------+--------+---------------+---------+--------------+---------+
| s101        | dipti | mumbai | pal@gmail.com | mulund  | 9123874420   |   40028 |
+-------------+-------+--------+---------------+---------+--------------+---------+
1 row in set (0.01 sec)

mysql> select table customer_id from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table customer_id from customer' at line 1
mysql> select customer_id from customer;
+-------------+
| customer_id |
+-------------+
| s101        |
+-------------+
1 row in set (0.00 sec)

mysql> insert into customer values('s102','rohan','thane','ans@gmail.com','pawai','9136019925','500');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+-------+--------+---------------+---------+--------------+---------+
| customer_id | name  | city   | email         | address | phone_number | pincode |
+-------------+-------+--------+---------------+---------+--------------+---------+
| s101        | dipti | mumbai | pal@gmail.com | mulund  | 9123874420   |   40028 |
| s102        | rohan | thane  | ans@gmail.com | pawai   | 9136019925   |     500 |
+-------------+-------+--------+---------------+---------+--------------+---------+
2 rows in set (0.00 sec)

mysql> insert into customer values('s103','bhoomika','thane','dfh@gmail.com','kalyan','4676014525','600'),('c104','asmita','tahne','cvb@gmail.com','pune','2345678123','4657');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+----------+--------+---------------+---------+--------------+---------+
| customer_id | name     | city   | email         | address | phone_number | pincode |
+-------------+----------+--------+---------------+---------+--------------+---------+
| c104        | asmita   | tahne  | cvb@gmail.com | pune    | 2345678123   |    4657 |
| s101        | dipti    | mumbai | pal@gmail.com | mulund  | 9123874420   |   40028 |
| s102        | rohan    | thane  | ans@gmail.com | pawai   | 9136019925   |     500 |
| s103        | bhoomika | thane  | dfh@gmail.com | kalyan  | 4676014525   |     600 |
+-------------+----------+--------+---------------+---------+--------------+---------+
4 rows in set (0.00 sec)

mysql> desc customer;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| customer_id  | varchar(5)  | NO   | PRI | NULL    |       |
| name         | varchar(10) | NO   |     | NULL    |       |
| city         | varchar(10) | NO   |     | NULL    |       |
| email        | varchar(20) | NO   |     | NULL    |       |
| address      | varchar(10) | NO   |     | NULL    |       |
| phone_number | varchar(10) | NO   |     | NULL    |       |
| pincode      | int         | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> alter table customer modify customer_id varchar(5) not null;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+----------+--------+---------------+---------+--------------+---------+
| customer_id | name     | city   | email         | address | phone_number | pincode |
+-------------+----------+--------+---------------+---------+--------------+---------+
| c104        | asmita   | tahne  | cvb@gmail.com | pune    | 2345678123   |    4657 |
| s101        | dipti    | mumbai | pal@gmail.com | mulund  | 9123874420   |   40028 |
| s102        | rohan    | thane  | ans@gmail.com | pawai   | 9136019925   |     500 |
| s103        | bhoomika | thane  | dfh@gmail.com | kalyan  | 4676014525   |     600 |
+-------------+----------+--------+---------------+---------+--------------+---------+
4 rows in set (0.00 sec)

mysql> alter table customer modify customer_id varchar(10) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| customer_id  | varchar(10) | NO   | PRI | NULL    |       |
| name         | varchar(10) | NO   |     | NULL    |       |
| city         | varchar(10) | NO   |     | NULL    |       |
| email        | varchar(20) | NO   |     | NULL    |       |
| address      | varchar(10) | NO   |     | NULL    |       |
| phone_number | varchar(10) | NO   |     | NULL    |       |
| pincode      | int         | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> alter table customer add bill_no int not null,add state varchar(20) not null,add country varchar(11) not null;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+----------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| customer_id | name     | city   | email         | address | phone_number | pincode | bill_no | state | country |
+-------------+----------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| c104        | asmita   | tahne  | cvb@gmail.com | pune    | 2345678123   |    4657 |       0 |       |         |
| s101        | dipti    | mumbai | pal@gmail.com | mulund  | 9123874420   |   40028 |       0 |       |         |
| s102        | rohan    | thane  | ans@gmail.com | pawai   | 9136019925   |     500 |       0 |       |         |
| s103        | bhoomika | thane  | dfh@gmail.com | kalyan  | 4676014525   |     600 |       0 |       |         |
+-------------+----------+--------+---------------+---------+--------------+---------+---------+-------+---------+
4 rows in set (0.00 sec)

mysql> desc customer;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| customer_id  | varchar(10) | NO   | PRI | NULL    |       |
| name         | varchar(10) | NO   |     | NULL    |       |
| city         | varchar(10) | NO   |     | NULL    |       |
| email        | varchar(20) | NO   |     | NULL    |       |
| address      | varchar(10) | NO   |     | NULL    |       |
| phone_number | varchar(10) | NO   |     | NULL    |       |
| pincode      | int         | NO   |     | NULL    |       |
| bill_no      | int         | NO   |     | NULL    |       |
| state        | varchar(20) | NO   |     | NULL    |       |
| country      | varchar(11) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> mysql> alter table customer change column name customer_name varchar(10) not null;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| customer_id   | varchar(10) | NO   | PRI | NULL    |       |
| customer_name | varchar(10) | NO   |     | NULL    |       |
| city          | varchar(10) | NO   |     | NULL    |       |
| email         | varchar(20) | NO   |     | NULL    |       |
| address       | varchar(10) | NO   |     | NULL    |       |
| phone_number  | varchar(10) | NO   |     | NULL    |       |
| pincode       | int         | NO   |     | NULL    |       |
| bill_no       | int         | NO   |     | NULL    |       |
| state         | varchar(20) | NO   |     | NULL    |       |
| country       | varchar(11) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.01 sec)

mysql> alter table customer drop primary key;
ERROR 1553 (HY000): Cannot drop index 'PRIMARY': needed in a foreign key constraint
mysql> 
mysql> create table demo(name varchar(10) not null,city varchar(10) not null,id varchar(8) not null);
Query OK, 0 rows affected (0.06 sec)

mysql> mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(10) | NO   |     | NULL    |       |
| city  | varchar(10) | NO   |     | NULL    |       |
| id    | varchar(8)  | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table demo add primary key(id);
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(10) | NO   |     | NULL    |       |
| city  | varchar(10) | NO   |     | NULL    |       |
| id    | varchar(8)  | NO   | PRI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> delete from demo;
Query OK, 0 rows affected (0.01 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(10) | NO   |     | NULL    |       |
| city  | varchar(10) | NO   |     | NULL    |       |
| id    | varchar(8)  | NO   | PRI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

mysql> truncate table orders;
Query OK, 0 rows affected (0.11 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(20) | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> drop table orders;
Query OK, 0 rows affected (0.05 sec)

mysql> desc orders;
ERROR 1146 (42S02): Table 'ecommerse.orders' doesn't exist
mysql>