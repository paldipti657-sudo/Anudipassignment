show databases;
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
8 rows in set (0.13 sec)

mysql> use ecommerse
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerse |
+---------------------+
| customer            |
| demo                |
| orders              |
| product             |
+---------------------+
4 rows in set (0.03 sec)

mysql> select * from customer;
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| customer_id | customer_name | city    | email         | address   | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| c100        | pooja         | varansi | abn@gmail.com | ram nagar | 2374651991   |   24422 |   37674 | gujrat | kashmir |
| c104        | asmita        | tahne   | cvb@gmail.com | pune      | 1234567891   |    4657 |       0 |        |         |
| s101        | dipti         | mumbai  | pal@gmail.com | mulund    | 9123874420   |   40028 |       0 |        |         |
| s102        | rohan         | thane   | ans@gmail.com | pawai     | 9136019925   |     500 |       0 |        |         |
| s103        | bhoomika      | thane   | dfh@gmail.com | kalyan    | 1987635446   |     600 |       0 |        |         |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
5 rows in set (0.00 sec)

mysql> mysql> update customer set phone_number='2872625245'where customer_id='s102';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| customer_id | customer_name | city    | email         | address   | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| c100        | pooja         | varansi | abn@gmail.com | ram nagar | 2374651991   |   24422 |   37674 | gujrat | kashmir |
| c104        | asmita        | tahne   | cvb@gmail.com | pune      | 1234567891   |    4657 |       0 |        |         |
| s101        | dipti         | mumbai  | pal@gmail.com | mulund    | 9123874420   |   40028 |       0 |        |         |
| s102        | rohan         | thane   | ans@gmail.com | pawai     | 2872625245   |     500 |       0 |        |         |
| s103        | bhoomika      | thane   | dfh@gmail.com | kalyan    | 1987635446   |     600 |       0 |        |         |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_name like'%ti';
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email         | address | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| s101        | dipti         | mumbai | pal@gmail.com | mulund  | 9123874420   |   40028 |       0 |       |         |
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like'%ohan%';
+-------------+---------------+-------+---------------+---------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city  | email         | address | phone_number | pincode | bill_no | state | country |
+-------------+---------------+-------+---------------+---------+--------------+---------+---------+-------+---------+
| s102        | rohan         | thane | ans@gmail.com | pawai   | 2872625245   |     500 |       0 |       |         |
+-------------+---------------+-------+---------------+---------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like'as%';
+-------------+---------------+-------+---------------+---------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city  | email         | address | phone_number | pincode | bill_no | state | country |
+-------------+---------------+-------+---------------+---------+--------------+---------+---------+-------+---------+
| c104        | asmita        | tahne | cvb@gmail.com | pune    | 1234567891   |    4657 |       0 |       |         |
+-------------+---------------+-------+---------------+---------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like 'r____';
+-------------+---------------+-------+---------------+---------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city  | email         | address | phone_number | pincode | bill_no | state | country |
+-------------+---------------+-------+---------------+---------+--------------+---------+---------+-------+---------+
| s102        | rohan         | thane | ans@gmail.com | pawai   | 2872625245   |     500 |       0 |       |         |
+-------------+---------------+-------+---------------+---------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where city like 'm_____';
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email         | address | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| s101        | dipti         | mumbai | pal@gmail.com | mulund  | 9123874420   |   40028 |       0 |       |         |
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> mysql> select * from customer limit 4;
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| customer_id | customer_name | city    | email         | address   | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| c100        | pooja         | varansi | abn@gmail.com | ram nagar | 2374651991   |   24422 |   37674 | gujrat | kashmir |
| c104        | asmita        | tahne   | cvb@gmail.com | pune      | 1234567891   |    4657 |       0 |        |         |
| s101        | dipti         | mumbai  | pal@gmail.com | mulund    | 9123874420   |   40028 |       0 |        |         |
| s102        | rohan         | thane   | ans@gmail.com | pawai     | 2872625245   |     500 |       0 |        |         |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
4 rows in set (0.00 sec)

mysql> select distinct city from customer;
+---------+
| city    |
+---------+
| varansi |
| tahne   |
| mumbai  |
| thane   |
+---------+
4 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| customer_id | customer_name | city    | email         | address   | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| c100        | pooja         | varansi | abn@gmail.com | ram nagar | 2374651991   |   24422 |   37674 | gujrat | kashmir |
| c104        | asmita        | tahne   | cvb@gmail.com | pune      | 1234567891   |    4657 |       0 |        |         |
| s101        | dipti         | mumbai  | pal@gmail.com | mulund    | 9123874420   |   40028 |       0 |        |         |
| s102        | rohan         | thane   | ans@gmail.com | pawai     | 2872625245   |     500 |       0 |        |         |
| s103        | bhoomika      | thane   | dfh@gmail.com | kalyan    | 1987635446   |     600 |       0 |        |         |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
5 rows in set (0.00 sec)

mysql> select * from customer where bill_no>37674
    -> ;
Empty set (0.00 sec)

mysql> select * from customer where bill_no>4000;
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| customer_id | customer_name | city    | email         | address   | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| c100        | pooja         | varansi | abn@gmail.com | ram nagar | 2374651991   |   24422 |   37674 | gujrat | kashmir |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where bill_no>=4000;
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| customer_id | customer_name | city    | email         | address   | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| c100        | pooja         | varansi | abn@gmail.com | ram nagar | 2374651991   |   24422 |   37674 | gujrat | kashmir |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where bill_no<4000;
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email         | address | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| c104        | asmita        | tahne  | cvb@gmail.com | pune    | 1234567891   |    4657 |       0 |       |         |
| s101        | dipti         | mumbai | pal@gmail.com | mulund  | 9123874420   |   40028 |       0 |       |         |
| s102        | rohan         | thane  | ans@gmail.com | pawai   | 2872625245   |     500 |       0 |       |         |
| s103        | bhoomika      | thane  | dfh@gmail.com | kalyan  | 1987635446   |     600 |       0 |       |         |
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer where bill_no<=4000;
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email         | address | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| c104        | asmita        | tahne  | cvb@gmail.com | pune    | 1234567891   |    4657 |       0 |       |         |
| s101        | dipti         | mumbai | pal@gmail.com | mulund  | 9123874420   |   40028 |       0 |       |         |
| s102        | rohan         | thane  | ans@gmail.com | pawai   | 2872625245   |     500 |       0 |       |         |
| s103        | bhoomika      | thane  | dfh@gmail.com | kalyan  | 1987635446   |     600 |       0 |       |         |
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer where customer_name='rohan' and bill_no='37674';
Empty set (0.00 sec)

mysql> select * from customer where customer_name='pooja' and bill_no='37674';
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| customer_id | customer_name | city    | email         | address   | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| c100        | pooja         | varansi | abn@gmail.com | ram nagar | 2374651991   |   24422 |   37674 | gujrat | kashmir |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name='dipti' or bill_no='37674';
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| customer_id | customer_name | city    | email         | address   | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| c100        | pooja         | varansi | abn@gmail.com | ram nagar | 2374651991   |   24422 |   37674 | gujrat | kashmir |
| s101        | dipti         | mumbai  | pal@gmail.com | mulund    | 9123874420   |   40028 |       0 |        |         |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'c101' and 'c103';
Empty set (0.00 sec)

mysql> select * from customer where customer_id between 's101' and 's103';
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email         | address | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| s101        | dipti         | mumbai | pal@gmail.com | mulund  | 9123874420   |   40028 |       0 |       |         |
| s102        | rohan         | thane  | ans@gmail.com | pawai   | 2872625245   |     500 |       0 |       |         |
| s103        | bhoomika      | thane  | dfh@gmail.com | kalyan  | 1987635446   |     600 |       0 |       |         |
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not between 's101' and 's103';
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| customer_id | customer_name | city    | email         | address   | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| c100        | pooja         | varansi | abn@gmail.com | ram nagar | 2374651991   |   24422 |   37674 | gujrat | kashmir |
| c104        | asmita        | tahne   | cvb@gmail.com | pune      | 1234567891   |    4657 |       0 |        |         |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
2 rows in set (0.00 sec)

mysql>mysql> select * from customer where customer_id in ('s101','s102','s103');
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email         | address | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
| s101        | dipti         | mumbai | pal@gmail.com | mulund  | 9123874420   |   40028 |       0 |       |         |
| s102        | rohan         | thane  | ans@gmail.com | pawai   | 2872625245   |     500 |       0 |       |         |
| s103        | bhoomika      | thane  | dfh@gmail.com | kalyan  | 1987635446   |     600 |       0 |       |         |
+-------------+---------------+--------+---------------+---------+--------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not in ('s101','s102','s103');
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| customer_id | customer_name | city    | email         | address   | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
| c100        | pooja         | varansi | abn@gmail.com | ram nagar | 2374651991   |   24422 |   37674 | gujrat | kashmir |
| c104        | asmita        | tahne   | cvb@gmail.com | pune      | 1234567891   |    4657 |       0 |        |         |
+-------------+---------------+---------+---------------+-----------+--------------+---------+---------+--------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where email is null;
Empty set (0.00 sec)

mysql>