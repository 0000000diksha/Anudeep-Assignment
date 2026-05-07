/*to show the databses*/

mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| ecommerece                |
| information_schema        |
| mysql                     |
| performance_schema        |
| sakila                    |
| student_management_system |
| sys                       |
| world                     |
+---------------------------+
8 rows in set (0.01 sec)

/* To active the database which we are using*/

mysql> use ecommerece;
Database changed

/*to show the tables in databases*/

mysql> show tables;
+----------------------+
| Tables_in_ecommerece |
+----------------------+
| customer             |
| orders               |
| products             |
+----------------------+
3 rows in set (0.01 sec)

/* to show the description of the table*/

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(5)   | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

/* SELECT command used for retrive data from tables*/
mysql> SELECT * FROM customer;
Empty set (0.01 sec)

/*INSERT command1 used for insert data in the table*/

mysql> INSERT INTO customer( customer_id , name, city, email, address, phone_no, pincode) VALUES('C101', 'DIKSHA', 'THANE', 'diksha@gmail.com', 'kisan nagar no 3 thane' ,'7894561230', 400604);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM customer;
+-------------+--------+-------+------------------+------------------------+------------+---------+
| customer_id | name   | city  | email            | address                | phone_no   | pincode |
+-------------+--------+-------+------------------+------------------------+------------+---------+
| C101        | DIKSHA | THANE | diksha@gmail.com | kisan nagar no 3 thane | 7894561230 |  400604 |
+-------------+--------+-------+------------------+------------------------+------------+---------+
1 row in set (0.00 sec)

/*INSERT command2 used for insert data in the table*/

mysql> select customer_id, name from customer;
+-------------+--------+
| customer_id | name   |
+-------------+--------+
| C101        | DIKSHA |
+-------------+--------+
1 row in set (0.00 sec)

/*INSERT command3 used for insert data in the table*/

mysql> insert into customer values ( 'C102','SAKSHI','KALYAN','sakshi@gmail.com', 'kalyan city','1230456789', 789456);
Query OK, 1 row affected (0.01 sec)

/*INSERT command4 used for insert data in the table*/

mysql> insert into customer values ( 'C103','RIYA','BANDRA','riya@gmail.com', 'bandra city','7895461235', 400605),( 'C104','NUPUR','MUMBRA','nupur@gmail.com', 'mumbra city','3659874102', 400607);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

/*ALTER command1 to modify data */

mysql> alter table customer modify customer_id varchar(10) not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

/*ALTER command2 to modify data */

mysql> alter table customer add bill_no double not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

/*ALTER command3 to modify data */

mysql> alter table customer add state varchar(10) not null, add country varchar(10) not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
| bill_no     | double       | NO   |     | NULL    |       |
| state       | varchar(10)  | NO   |     | NULL    |       |
| country     | varchar(10)  | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

/*ALTER command4 to modify data */

mysql> alter table customer change column name customer_name varchar(10) not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

/*ALTER command5 to modify data */

mysql> create table demo(demo_id varchar(10) not null primary key, name varchar(10) not null);
Query OK, 0 rows affected (0.01 sec)

/*ALTER command5 to modify data */

mysql> alter table demo drop primary key;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| demo_id | varchar(10) | NO   |     | NULL    |       |
| name    | varchar(10) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

/*ALTER command6 to modify data */

mysql> alter table demo add primary key (demo_id);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

/*DELETE command1 to delete particular record or all records*/

mysql> delete from customer where customer_id ='C103' ;
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------------+--------+------------------+------------------------+------------+---------+---------+-------+---------+
| customer_id | customer_name | city   | email            | address                | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+------------------+------------------------+------------+---------+---------+-------+---------+
| C101        | DIKSHA        | THANE  | diksha@gmail.com | kisan nagar no 3 thane | 7894561230 |  400604 |       0 |       |         |
| C102        | SAKSHI        | KALYAN | sakshi@gmail.com | kalyan city            | 1230456789 |  789456 |       0 |       |         |
| C104        | NUPUR         | MUMBRA | nupur@gmail.com  | mumbra city            | 3659874102 |  400607 |       0 |       |         |
+-------------+---------------+--------+------------------+------------------------+------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

/*DELETE command2 to delete particular record or all records*/

mysql> delete from  customer;
Query OK, 3 rows affected (0.01 sec)

mysql> select * from customer;
Empty set (0.00 sec)

mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| customer_id   | varchar(10)  | NO   | PRI | NULL    |       |
| customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | NO   |     | NULL    |       |
| email         | varchar(20)  | NO   |     | NULL    |       |
| address       | varchar(100) | NO   |     | NULL    |       |
| phone_no      | varchar(10)  | NO   |     | NULL    |       |
| pincode       | int          | NO   |     | NULL    |       |
| bill_no       | double       | NO   |     | NULL    |       |
| state         | varchar(10)  | NO   |     | NULL    |       |
| country       | varchar(10)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

/*TRUNCATE command to remove all rows from the tables but structure remain as it is */

mysql> truncate table orders;
Query OK, 0 rows affected (0.05 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> desc demo;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| demo_id | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(10) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into demo values('101', 'Diksha');
Query OK, 1 row affected (0.01 sec)

mysql> select * from demo;
+---------+--------+
| demo_id | name   |
+---------+--------+
| 101     | Diksha |
+---------+--------+
1 row in set (0.00 sec)

mysql> truncate table demo;
Query OK, 0 rows affected (0.03 sec)

mysql> desc demo;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| demo_id | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(10) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

/*DROP command to remove all rows from the table */

mysql> drop table orders;
Query OK, 0 rows affected (0.02 sec)

mysql> desc orders;
ERROR 1146 (42S02): Table 'ecommerece.orders' doesn't exist
mysql>