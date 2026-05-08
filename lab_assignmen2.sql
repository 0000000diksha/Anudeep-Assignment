/*Lab 2: Database Schema: Consider a simple database with one tables: BankAccount BankAccount

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance */


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

mysql> create database lab;
Query OK, 1 row affected (0.01 sec)

mysql> use lab;
Database changed
mysql> create table BankAccount( account_id varchar(10) not null primary key , account_holder_name varchar(10) not null, account_balance double not null);
Query OK, 0 rows affected (0.02 sec)

mysql> show tables;
+---------------+
| Tables_in_lab |
+---------------+
| bankaccount   |
+---------------+
1 row in set (0.00 sec)

mysql> desc BankAccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| account_id          | varchar(10) | NO   | PRI | NULL    |       |
| account_holder_name | varchar(10) | NO   |     | NULL    |       |
| account_balance     | double      | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

 /*Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table*/

mysql> insert into BankAccount values('A101','Diksha', 54213.17),('A102','Sairaj', 25763.76);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

/*Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.*/ 

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| A101       | Diksha              |        54213.17 |
| A102       | Sairaj              |        25763.76 |
+------------+---------------------+-----------------+
2 rows in set (0.00 sec)

/*Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.*/

mysql> select * from BankAccount where account_balance > 30000;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| A101       | Diksha              |        54213.17 |
+------------+---------------------+-----------------+
1 row in set (0.00 sec)

/*Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.*/

mysql> update BankAccount set account_balance = '30000' where account_id = 'A101';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select* from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| A101       | Diksha              |           30000 |
| A102       | Sairaj              |        25763.76 |
+------------+---------------------+-----------------+
2 rows in set (0.00 sec)

mysql>