mysql> CREATE DATABASE management_system;
Query OK, 1 row affected (0.13 sec)

mysql> CREATE TABLE hired_candidate(
    -> id INT NOT NULL,
    -> first_name VARCHAR(100) NOT NULL,
    -> ^C
mysql> CREATE TABLE hired_candidate(
    -> id INT NOT NULL,
    -> first_name VARCHAR(50) NOT NULL,
    -> middle_name VARCHAR(50) DEFAULT NULL,
    -> last_name VARCHAR(50) NOT NULL,
    -> email_id VARCHAR(70) NOT NULL,
    -> ^C
mysql> ^C
mysql> use management_system;
Database changed
mysql> CREATE TABLE hired_candidate(
    -> id INT NOT NULL,
    -> first_name VARCHAR(50) NOT NULL,
    -> middle_name VARCHAR(50) DEFAULT NULL,
    -> last_name VARCHAR(50) NOT NULL,
    -> email_id VARCHAR(70) NOT NULL,
    -> mobile_number BIGINT NOT NULL,
    -> hired_city VARCHAR(30) NOT NULL,
    -> degree VARCHAR(70) NOT NULL,
    -> hired_date DATETIME NOT NULL,
    -> permanent_pincode INT DEFAULT NULL,
    -> hired_lab VARCHAR(50) DEFAULT NULL,
    -> attitude VARCHAR(20) DEFAULT NULL,
    -> communication_remark VARCHAR(20) DEFAULT NULL,
    -> knowledge_remark VARCHAR(20) DEFAULT NULL,
    -> aggregate_remark VARCHAR(20) DEFAULT NULL,
    -> status VARCHAR(20) DEFAULT NULL,
    -> creator_stamp DATETIME DEFAULT NULL,
    -> creator_user INT DEFAULT NULL,
    -> PRIMARY KEY(id)
    -> );
Query OK, 0 rows affected (1.56 sec)

mysql> describe hired_candidate;
+----------------------+-------------+------+-----+---------+-------+
| Field                | Type        | Null | Key | Default | Extra |
+----------------------+-------------+------+-----+---------+-------+
| id                   | int         | NO   | PRI | NULL    |       |
| first_name           | varchar(50) | NO   |     | NULL    |       |
| middle_name          | varchar(50) | YES  |     | NULL    |       |
| last_name            | varchar(50) | NO   |     | NULL    |       |
| email_id             | varchar(70) | NO   |     | NULL    |       |
| mobile_number        | bigint      | NO   |     | NULL    |       |
| hired_city           | varchar(30) | NO   |     | NULL    |       |
| degree               | varchar(70) | NO   |     | NULL    |       |
| hired_date           | datetime    | NO   |     | NULL    |       |
| permanent_pincode    | int         | YES  |     | NULL    |       |
| hired_lab            | varchar(50) | YES  |     | NULL    |       |
| attitude             | varchar(20) | YES  |     | NULL    |       |
| communication_remark | varchar(20) | YES  |     | NULL    |       |
| knowledge_remark     | varchar(20) | YES  |     | NULL    |       |
| aggregate_remark     | varchar(20) | YES  |     | NULL    |       |
| status               | varchar(20) | YES  |     | NULL    |       |
| creator_stamp        | datetime    | YES  |     | NULL    |       |
| creator_user         | int         | YES  |     | NULL    |       |
+----------------------+-------------+------+-----+---------+-------+
18 rows in set (0.16 sec)

mysql> CREATE TABLE fellowship_candidate(
    -> id INT NOT NULL,
    -> first_name VARCHAR(50) NOT NULL,
    -> middle_name VARCHAR(50) DEFAULT NULL,
    -> last_name VARCHAR(50) NOT NULL,
    -> email_id VARCHAR(70) NOT NULL,
    -> hired_city VARCHAR(30) NOT NULL,
    -> degree VARCHAR(70) NOT NULL,
    -> hired_date DATETIME NOT NULL,
    -> permanent_pincode INT DEFAULT NULL,
    -> hired_lab VARCHAR(50) DEFAULT NULL,
    -> attitude VARCHAR(20) DEFAULT NULL,
    -> communication_remark VARCHAR(20) DEFAULT NULL,
    -> knowledge_remark VARCHAR(20) DEFAULT NULL,
    -> aggregate_remark VARCHAR(20) DEFAULT NULL,
    -> creator_stamp DATETIME DEFAULT NULL,
    -> creator_user INT DEFAULT NULL,
    -> birth_date DATE NOT NULL,
    -> is_birth_date_verified INT DEFAULT 0,
    -> parent_name VARCHAR(70) DEFAULT NULL,
    -> parent_occupation VARCHAR(100) NOT NULL,
    -> parent_mobile_number BIGINT NOT NULL,
    -> parent_annual_salary DOUBLE DEFAULT NULL,
    -> local_address VARCHAR(350) NOT NULL,
    -> permanent_address VARCHAR(350) NOT NULL,
    -> photo_path VARCHAR(600) DEFAULT NULL,
    -> joining_date DATE DEFAULT NULL,
    -> candidate_status VARCHAR(20) NOT NULL,
    -> personal_information INT DEFAULT 0,
    -> bank_information INT DEFAULT 0,
    -> educational_information INT DEFAULT 0,
    -> document_status VARCHAR(20) DEFAULT NULL,
    -> remark VARCHAR(200) DEFAULT NULL,
    -> PRIMARY KEY(id)
    -> );
Query OK, 0 rows affected (1.52 sec)

mysql> describe fellowship_candidate;
+-------------------------+--------------+------+-----+---------+-------+
| Field                   | Type         | Null | Key | Default | Extra |
+-------------------------+--------------+------+-----+---------+-------+
| id                      | int          | NO   | PRI | NULL    |       |
| first_name              | varchar(50)  | NO   |     | NULL    |       |
| middle_name             | varchar(50)  | YES  |     | NULL    |       |
| last_name               | varchar(50)  | NO   |     | NULL    |       |
| email_id                | varchar(70)  | NO   |     | NULL    |       |
| hired_city              | varchar(30)  | NO   |     | NULL    |       |
| degree                  | varchar(70)  | NO   |     | NULL    |       |
| hired_date              | datetime     | NO   |     | NULL    |       |
| permanent_pincode       | int          | YES  |     | NULL    |       |
| hired_lab               | varchar(50)  | YES  |     | NULL    |       |
| attitude                | varchar(20)  | YES  |     | NULL    |       |
| communication_remark    | varchar(20)  | YES  |     | NULL    |       |
| knowledge_remark        | varchar(20)  | YES  |     | NULL    |       |
| aggregate_remark        | varchar(20)  | YES  |     | NULL    |       |
| creator_stamp           | datetime     | YES  |     | NULL    |       |
| creator_user            | int          | YES  |     | NULL    |       |
| birth_date              | date         | NO   |     | NULL    |       |
| is_birth_date_verified  | int          | YES  |     | 0       |       |
| parent_name             | varchar(70)  | YES  |     | NULL    |       |
| parent_occupation       | varchar(100) | NO   |     | NULL    |       |
| parent_mobile_number    | bigint       | NO   |     | NULL    |       |
| parent_annual_salary    | double       | YES  |     | NULL    |       |
| local_address           | varchar(350) | NO   |     | NULL    |       |
| permanent_address       | varchar(350) | NO   |     | NULL    |       |
| photo_path              | varchar(600) | YES  |     | NULL    |       |
| joining_date            | date         | YES  |     | NULL    |       |
| candidate_status        | varchar(20)  | NO   |     | NULL    |       |
| personal_information    | int          | YES  |     | 0       |       |
| bank_information        | int          | YES  |     | 0       |       |
| educational_information | int          | YES  |     | 0       |       |
| document_status         | varchar(20)  | YES  |     | NULL    |       |
| remark                  | varchar(200) | YES  |     | NULL    |       |
+-------------------------+--------------+------+-----+---------+-------+
32 rows in set (0.27 sec)

mysql> CREATE TABLE candidate_personal_details_check(
    -> id INT NOT NULL,
    -> candidate_id INT NOT NULL,
    -> field_name INT NOT NULL,
    -> is_verified INT DEFAULT NULL,
    -> lastupd_stamp DATETIME DEFAULT NULL,
    -> lastupd_user INT DEFAULT NULL,
    -> creator_stamp DATETIME DEFAULT NULL,
    -> creator_user INT DEFAULT NULL,
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 10
mysql> CREATE TABLE candidate_personal_details_check(
    -> id INT NOT NULL,
    -> candidate_id INT NOT NULL,
    -> field_name INT NOT NULL,
    -> is_verified INT DEFAULT NULL,
    -> lastupd_stamp DATETIME DEFAULT NULL,
    -> lastupd_user INT DEFAULT NULL,
    -> creator_stamp DATETIME DEFAULT NULL,
    -> creator_user INT DEFAULT NULL,
    -> PRIMARY KEY(id)
    -> );
Query OK, 0 rows affected (1.92 sec)

mysql> CREATE TABLE candidate_bank_details(
    -> id INT NOT NULL,
    -> candidate_id INT NOT NULL,
    -> name VARCHAR(100) NOT NULL,
    -> account_number INT NOT NULL,
    -> is_account_verified INT DEFAULT 0,
    -> ifsc_code VARCHAR(15) NOT NULL,
    -> is_ifsc_code_verified INT DEFAULT 0,
    -> pan_number VARCHAR(15) DEFAULT NULL,
    -> is_pan_number_verified INT DEFAULT 0,
    -> addhar_number INT NOT NULL,
    -> is_addhar_number_verified INT DEFAULT 0,
    -> creator_stamp DATETIME DEFAULT NULL,
    -> creator_user INT DEFAULT NULL,
    -> KEY `FK_candidate_bank_details_id`(candidate_id),
    -> CONSTRAINT `FK_candidate_bank_details_id` FOREIGN KEY(`candidate_id`) REFERENCES `fellowship_candidates`(`id`),
    -> PRIMARY KEY(id)
    -> );
ERROR 1824 (HY000): Failed to open the referenced table 'fellowship_candidates'
mysql> CREATE TABLE candidate_bank_details(
    -> id INT NOT NULL,
    -> candidate_id INT NOT NULL,
    -> name VARCHAR(100) NOT NULL,
    -> account_number INT NOT NULL,
    -> is_account_verified INT DEFAULT 0,
    -> ifsc_code VARCHAR(15) NOT NULL,
    -> is_ifsc_code_verified INT DEFAULT 0,
    -> pan_number VARCHAR(15) DEFAULT NULL,
    -> is_pan_number_verified INT DEFAULT 0,
    -> addhar_number INT NOT NULL,
    -> is_addhar_number_verified INT DEFAULT 0,
    -> creator_stamp DATETIME DEFAULT NULL,
    -> creator_user INT DEFAULT NULL,
    -> KEY `FK_candidate_bank_details_id`(`candidate_id`),
    -> CONSTRAINT `FK_candidate_bank_details_id` FOREIGN KEY(`candidate_id`) REFERENCES `fellowship_candidate`(`id`),
    -> PRIMARY KEY(id)
    -> );
Query OK, 0 rows affected (0.77 sec)

mysql> describe candidate_bank_details;
+---------------------------+--------------+------+-----+---------+-------+
| Field                     | Type         | Null | Key | Default | Extra |
+---------------------------+--------------+------+-----+---------+-------+
| id                        | int          | NO   | PRI | NULL    |       |
| candidate_id              | int          | NO   | MUL | NULL    |       |
| name                      | varchar(100) | NO   |     | NULL    |       |
| account_number            | int          | NO   |     | NULL    |       |
| is_account_verified       | int          | YES  |     | 0       |       |
| ifsc_code                 | varchar(15)  | NO   |     | NULL    |       |
| is_ifsc_code_verified     | int          | YES  |     | 0       |       |
| pan_number                | varchar(15)  | YES  |     | NULL    |       |
| is_pan_number_verified    | int          | YES  |     | 0       |       |
| addhar_number             | int          | NO   |     | NULL    |       |
| is_addhar_number_verified | int          | YES  |     | 0       |       |
| creator_stamp             | datetime     | YES  |     | NULL    |       |
| creator_user              | int          | YES  |     | NULL    |       |
+---------------------------+--------------+------+-----+---------+-------+
13 rows in set (0.08 sec)

