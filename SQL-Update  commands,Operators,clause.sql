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

mysql> use ecommerece;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_ecommerece |
+----------------------+
| customer             |
| demo                 |
| products             |
+----------------------+
3 rows in set (0.01 sec)

mysql> select * from customer;
Empty set (0.01 sec)

mysql> select * from products;
Empty set (0.00 sec)

mysql> select * from demo;
Empty set (0.00 sec)

mysql> insert into cutomer( cutomer_id, name, city , email , address, phone_no, pincode) values ('C101','Diksha','Thane','diksha@gmail.com', 'wagale estate thane', '7894561230' ^C
mysql> ^C
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
10 rows in set (0.01 sec)

mysql> insert into cutomer( cutomer_id, name, city , email , address, phone_no, pincode) values ('C101','Diksha','Thane','diksha@gmail.com', 'wagale estate thane', '7894561230' 400604);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '400604)' at line 1
mysql> insert into cutomer( cutomer_id, name, city , email , address, phone_no, pincode) values ('C101','Diksha','Thane','diksha@gmail.com', 'wagale estate thane', '7894561230' 400604 , 12 , 'panjab', 'india');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '400604 , 12 , 'panjab', 'india')' at line 1
mysql> insert into cutomer( cutomer_id, name, city , email , address, phone_no, pincode) values ('C101','Diksha','Thane','diksha@gmail.com', 'wagale estate thane', '7894561230', 400604 , 12 , 'panjab', 'india');
ERROR 1146 (42S02): Table 'ecommerece.cutomer' doesn't exist
mysql> insert into customer( cutomer_id, name, city , email , address, phone_no, pincode) values ('C101','Diksha','Thane','diksha@gmail.com', 'wagale estate thane', '7894561230' 400604 , 12 , 'panjab', 'india');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '400604 , 12 , 'panjab', 'india')' at line 1
mysql> insert into customer( cutomer_id, name, city , email , address, phone_no, pincode) values ('C101','Diksha','Thane','diksha@gmail.com', 'wagale estate thane', '7894561230' 400604 , 12.16 , 'panjab', 'india');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '400604 , 12.16 , 'panjab', 'india')' at line 1
mysql> insert into customer( cutomer_id, customer_name, city , email , address, phone_no, pincode, bill_no, state, country) values ('C101','Diksha','Thane','diksha@gmail.com', 'wagale estate thane', '7894561230' 400604 , 12.16 , 'panjab', 'india');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '400604 , 12.16 , 'panjab', 'india')' at line 1
mysql> insert into customer( cutomer_id, customer_name, city , email , address, phone_no, pincode, bill_no, state, country) values ('C101','Diksha','Thane','diksha@gmail.com', 'wagale estate thane', '7894561230', 400604 , 12.16 , 'panjab', 'india');
ERROR 1054 (42S22): Unknown column 'cutomer_id' in 'field list'
mysql> insert into customer( customer_id, customer_name, city , email , address, phone_no, pincode, bill_no, state, country) values ('C101','Diksha','Thane','diksha@gmail.com', 'wagale estate thane', '7894561230', 400604 , 12.16 , 'panjab', 'india');
Query OK, 1 row affected (0.01 sec)

mysql> show table customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'customer' at line 1
mysql> select * from customer;
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+--------+---------+
| customer_id | customer_name | city  | email            | address             | phone_no   | pincode | bill_no | state  | country |
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+--------+---------+
| C101        | Diksha        | Thane | diksha@gmail.com | wagale estate thane | 7894561230 |  400604 |   12.16 | panjab | india   |
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+--------+---------+
1 row in set (0.00 sec)

mysql> insert into customer values ('C102','Sakshi','Thane','sakshi@gmail.com', 'wagale estate thane', '9923067431', 400605 , 102.16 , 'gujrat', 'india');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values ('C103','Riya','Thane','riya@gmail.com', 'majiwada', '99431756420', 400606 , 0 , 'maharashtr', 'india'),('C104','Nupur','Thane','nupr@gmail.com', 'kolsheth', '6589740420', 400606 , 17 , 'maharashtr', 'india'),;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> insert into customer values ('C103','Riya','Thane','riya@gmail.com', 'majiwada', '99431756420', 400606 , 0 , 'maharashtr', 'india'),('C104','Nupur','Thane','nupr@gmail.com', 'kolsheth', '6589740420', 400606 , 17 , 'maharashtr', 'india');
ERROR 1406 (22001): Data too long for column 'phone_no' at row 1
mysql> insert into customer values ('C103','Riya','Thane','riya@gmail.com', 'majiwada', '9431756420', 400606 , 0 , 'maharashtr', 'india'),('C104','Nupur','Thane','nupr@gmail.com', 'kolsheth', '6589740420', 400606 , 17 , 'maharashtr', 'india');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into customer values ('C105','Asmita','Bandra','asmita@gmail.com', 'bandra', '8654512379', 400606 , 0 , 'maharashtr', 'india'),('C106','Pavani','Bhivandi','pavani@gmail.com', 'bhivandi', '6589456980', 400608 , 4 , 'punjab', 'india');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city     | email            | address             | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
| C101        | Diksha        | Thane    | diksha@gmail.com | wagale estate thane | 7894561230 |  400604 |   12.16 | panjab     | india   |
| C102        | Sakshi        | Thane    | sakshi@gmail.com | wagale estate thane | 9923067431 |  400605 |  102.16 | gujrat     | india   |
| C103        | Riya          | Thane    | riya@gmail.com   | majiwada            | 9431756420 |  400606 |       0 | maharashtr | india   |
| C104        | Nupur         | Thane    | nupr@gmail.com   | kolsheth            | 6589740420 |  400606 |      17 | maharashtr | india   |
| C105        | Asmita        | Bandra   | asmita@gmail.com | bandra              | 8654512379 |  400606 |       0 | maharashtr | india   |
| C106        | Pavani        | Bhivandi | pavani@gmail.com | bhivandi            | 6589456980 |  400608 |       4 | punjab     | india   |
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
6 rows in set (0.00 sec)

mysql> update customer set phone_no = '9987736070'where customer_id = 'C101' ;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city     | email            | address             | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
| C101        | Diksha        | Thane    | diksha@gmail.com | wagale estate thane | 9987736070 |  400604 |   12.16 | panjab     | india   |
| C102        | Sakshi        | Thane    | sakshi@gmail.com | wagale estate thane | 9923067431 |  400605 |  102.16 | gujrat     | india   |
| C103        | Riya          | Thane    | riya@gmail.com   | majiwada            | 9431756420 |  400606 |       0 | maharashtr | india   |
| C104        | Nupur         | Thane    | nupr@gmail.com   | kolsheth            | 6589740420 |  400606 |      17 | maharashtr | india   |
| C105        | Asmita        | Bandra   | asmita@gmail.com | bandra              | 8654512379 |  400606 |       0 | maharashtr | india   |
| C106        | Pavani        | Bhivandi | pavani@gmail.com | bhivandi            | 6589456980 |  400608 |       4 | punjab     | india   |
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
6 rows in set (0.00 sec)

mysql> select * from customer where customer_name like '%hi';
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+--------+---------+
| customer_id | customer_name | city  | email            | address             | phone_no   | pincode | bill_no | state  | country |
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+--------+---------+
| C102        | Sakshi        | Thane | sakshi@gmail.com | wagale estate thane | 9923067431 |  400605 |  102.16 | gujrat | india   |
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+--------+---------+
1 row in set (0.01 sec)

mysql> select * from customer where customer_name like '%upu%';
+-------------+---------------+-------+----------------+----------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city  | email          | address  | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+-------+----------------+----------+------------+---------+---------+------------+---------+
| C104        | Nupur         | Thane | nupr@gmail.com | kolsheth | 6589740420 |  400606 |      17 | maharashtr | india   |
+-------------+---------------+-------+----------------+----------+------------+---------+---------+------------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like 'Di%';
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+--------+---------+
| customer_id | customer_name | city  | email            | address             | phone_no   | pincode | bill_no | state  | country |
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+--------+---------+
| C101        | Diksha        | Thane | diksha@gmail.com | wagale estate thane | 9987736070 |  400604 |   12.16 | panjab | india   |
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+--------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like 'A_____';
+-------------+---------------+--------+------------------+---------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city   | email            | address | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+--------+------------------+---------+------------+---------+---------+------------+---------+
| C105        | Asmita        | Bandra | asmita@gmail.com | bandra  | 8654512379 |  400606 |       0 | maharashtr | india   |
+-------------+---------------+--------+------------------+---------+------------+---------+---------+------------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where address like '___ne';
Empty set (0.00 sec)

mysql> select * from customer where address like 'Th___';
Empty set (0.00 sec)

mysql> select * from customer where address like 'ba____';
+-------------+---------------+--------+------------------+---------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city   | email            | address | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+--------+------------------+---------+------------+---------+---------+------------+---------+
| C105        | Asmita        | Bandra | asmita@gmail.com | bandra  | 8654512379 |  400606 |       0 | maharashtr | india   |
+-------------+---------------+--------+------------------+---------+------------+---------+---------+------------+---------+
1 row in set (0.00 sec)

mysql> select * from customer limit 2;
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+--------+---------+
| customer_id | customer_name | city  | email            | address             | phone_no   | pincode | bill_no | state  | country |
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+--------+---------+
| C101        | Diksha        | Thane | diksha@gmail.com | wagale estate thane | 9987736070 |  400604 |   12.16 | panjab | india   |
| C102        | Sakshi        | Thane | sakshi@gmail.com | wagale estate thane | 9923067431 |  400605 |  102.16 | gujrat | india   |
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+--------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer top 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3' at line 1
mysql> select * from customer top 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '2' at line 1
mysql> select distinct city from customer;
+----------+
| city     |
+----------+
| Thane    |
| Bandra   |
| Bhivandi |
+----------+
3 rows in set (0.00 sec)

mysql> select distinct email from customer;
+------------------+
| email            |
+------------------+
| diksha@gmail.com |
| sakshi@gmail.com |
| riya@gmail.com   |
| nupr@gmail.com   |
| asmita@gmail.com |
| pavani@gmail.com |
+------------------+
6 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city     | email            | address             | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
| C101        | Diksha        | Thane    | diksha@gmail.com | wagale estate thane | 9987736070 |  400604 |   12.16 | panjab     | india   |
| C102        | Sakshi        | Thane    | sakshi@gmail.com | wagale estate thane | 9923067431 |  400605 |  102.16 | gujrat     | india   |
| C103        | Riya          | Thane    | riya@gmail.com   | majiwada            | 9431756420 |  400606 |       0 | maharashtr | india   |
| C104        | Nupur         | Thane    | nupr@gmail.com   | kolsheth            | 6589740420 |  400606 |      17 | maharashtr | india   |
| C105        | Asmita        | Bandra   | asmita@gmail.com | bandra              | 8654512379 |  400606 |       0 | maharashtr | india   |
| C106        | Pavani        | Bhivandi | pavani@gmail.com | bhivandi            | 6589456980 |  400608 |       4 | punjab     | india   |
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
6 rows in set (0.00 sec)

mysql> select
    -> select * from customer where bill_no>4 ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select * from customer where bill_no>4' at line 2
mysql> select * from customer where bill_no > 4 ;
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city  | email            | address             | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+------------+---------+
| C101        | Diksha        | Thane | diksha@gmail.com | wagale estate thane | 9987736070 |  400604 |   12.16 | panjab     | india   |
| C102        | Sakshi        | Thane | sakshi@gmail.com | wagale estate thane | 9923067431 |  400605 |  102.16 | gujrat     | india   |
| C104        | Nupur         | Thane | nupr@gmail.com   | kolsheth            | 6589740420 |  400606 |      17 | maharashtr | india   |
+-------------+---------------+-------+------------------+---------------------+------------+---------+---------+------------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where bill_no < 4 ;
+-------------+---------------+--------+------------------+----------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city   | email            | address  | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+--------+------------------+----------+------------+---------+---------+------------+---------+
| C103        | Riya          | Thane  | riya@gmail.com   | majiwada | 9431756420 |  400606 |       0 | maharashtr | india   |
| C105        | Asmita        | Bandra | asmita@gmail.com | bandra   | 8654512379 |  400606 |       0 | maharashtr | india   |
+-------------+---------------+--------+------------------+----------+------------+---------+---------+------------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where bill_no <= 4 ;
+-------------+---------------+----------+------------------+----------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city     | email            | address  | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+----------+------------------+----------+------------+---------+---------+------------+---------+
| C103        | Riya          | Thane    | riya@gmail.com   | majiwada | 9431756420 |  400606 |       0 | maharashtr | india   |
| C105        | Asmita        | Bandra   | asmita@gmail.com | bandra   | 8654512379 |  400606 |       0 | maharashtr | india   |
| C106        | Pavani        | Bhivandi | pavani@gmail.com | bhivandi | 6589456980 |  400608 |       4 | punjab     | india   |
+-------------+---------------+----------+------------------+----------+------------+---------+---------+------------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where bill_no >= 4 ;
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city     | email            | address             | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
| C101        | Diksha        | Thane    | diksha@gmail.com | wagale estate thane | 9987736070 |  400604 |   12.16 | panjab     | india   |
| C102        | Sakshi        | Thane    | sakshi@gmail.com | wagale estate thane | 9923067431 |  400605 |  102.16 | gujrat     | india   |
| C104        | Nupur         | Thane    | nupr@gmail.com   | kolsheth            | 6589740420 |  400606 |      17 | maharashtr | india   |
| C106        | Pavani        | Bhivandi | pavani@gmail.com | bhivandi            | 6589456980 |  400608 |       4 | punjab     | india   |
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer where customer_name = 'Diksha' and bill_no = 4;
Empty set (0.00 sec)

mysql> select * from customer where customer_name = 'Pavani' or bill_no = 4;
+-------------+---------------+----------+------------------+----------+------------+---------+---------+--------+---------+
| customer_id | customer_name | city     | email            | address  | phone_no   | pincode | bill_no | state  | country |
+-------------+---------------+----------+------------------+----------+------------+---------+---------+--------+---------+
| C106        | Pavani        | Bhivandi | pavani@gmail.com | bhivandi | 6589456980 |  400608 |       4 | punjab | india   |
+-------------+---------------+----------+------------------+----------+------------+---------+---------+--------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_id between 'C101' and 'C105';
+-------------+---------------+--------+------------------+---------------------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city   | email            | address             | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+--------+------------------+---------------------+------------+---------+---------+------------+---------+
| C101        | Diksha        | Thane  | diksha@gmail.com | wagale estate thane | 9987736070 |  400604 |   12.16 | panjab     | india   |
| C102        | Sakshi        | Thane  | sakshi@gmail.com | wagale estate thane | 9923067431 |  400605 |  102.16 | gujrat     | india   |
| C103        | Riya          | Thane  | riya@gmail.com   | majiwada            | 9431756420 |  400606 |       0 | maharashtr | india   |
| C104        | Nupur         | Thane  | nupr@gmail.com   | kolsheth            | 6589740420 |  400606 |      17 | maharashtr | india   |
| C105        | Asmita        | Bandra | asmita@gmail.com | bandra              | 8654512379 |  400606 |       0 | maharashtr | india   |
+-------------+---------------+--------+------------------+---------------------+------------+---------+---------+------------+---------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id not between 'C101' and 'C105';
+-------------+---------------+----------+------------------+----------+------------+---------+---------+--------+---------+
| customer_id | customer_name | city     | email            | address  | phone_no   | pincode | bill_no | state  | country |
+-------------+---------------+----------+------------------+----------+------------+---------+---------+--------+---------+
| C106        | Pavani        | Bhivandi | pavani@gmail.com | bhivandi | 6589456980 |  400608 |       4 | punjab | india   |
+-------------+---------------+----------+------------------+----------+------------+---------+---------+--------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_id in ('C101','C103','C105');
+-------------+---------------+--------+------------------+---------------------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city   | email            | address             | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+--------+------------------+---------------------+------------+---------+---------+------------+---------+
| C101        | Diksha        | Thane  | diksha@gmail.com | wagale estate thane | 9987736070 |  400604 |   12.16 | panjab     | india   |
| C103        | Riya          | Thane  | riya@gmail.com   | majiwada            | 9431756420 |  400606 |       0 | maharashtr | india   |
| C105        | Asmita        | Bandra | asmita@gmail.com | bandra              | 8654512379 |  400606 |       0 | maharashtr | india   |
+-------------+---------------+--------+------------------+---------------------+------------+---------+---------+------------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not in ('C101','C103','C105');
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city     | email            | address             | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
| C102        | Sakshi        | Thane    | sakshi@gmail.com | wagale estate thane | 9923067431 |  400605 |  102.16 | gujrat     | india   |
| C104        | Nupur         | Thane    | nupr@gmail.com   | kolsheth            | 6589740420 |  400606 |      17 | maharashtr | india   |
| C106        | Pavani        | Bhivandi | pavani@gmail.com | bhivandi            | 6589456980 |  400608 |       4 | punjab     | india   |
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer email is null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'is null' at line 1
mysql> select * from customer email is not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'is not null' at line 1
mysql> select * from customer where email is null;
Empty set (0.01 sec)

mysql> select * from customer where email is not null;
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
| customer_id | customer_name | city     | email            | address             | phone_no   | pincode | bill_no | state      | country |
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
| C101        | Diksha        | Thane    | diksha@gmail.com | wagale estate thane | 9987736070 |  400604 |   12.16 | panjab     | india   |
| C102        | Sakshi        | Thane    | sakshi@gmail.com | wagale estate thane | 9923067431 |  400605 |  102.16 | gujrat     | india   |
| C103        | Riya          | Thane    | riya@gmail.com   | majiwada            | 9431756420 |  400606 |       0 | maharashtr | india   |
| C104        | Nupur         | Thane    | nupr@gmail.com   | kolsheth            | 6589740420 |  400606 |      17 | maharashtr | india   |
| C105        | Asmita        | Bandra   | asmita@gmail.com | bandra              | 8654512379 |  400606 |       0 | maharashtr | india   |
| C106        | Pavani        | Bhivandi | pavani@gmail.com | bhivandi            | 6589456980 |  400608 |       4 | punjab     | india   |
+-------------+---------------+----------+------------------+---------------------+------------+---------+---------+------------+---------+
6 rows in set (0.00 sec)

mysql>