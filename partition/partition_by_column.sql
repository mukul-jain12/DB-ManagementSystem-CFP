CREATE TABLE hired_candidate_by_column(
	id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	middle_name VARCHAR(50) DEFAULT NULL,
	last_name VARCHAR(50) NOT NULL,
	email_id VARCHAR(70) NOT NULL,
	mobile_number BIGINT NOT NULL,
	hired_city VARCHAR(30) NOT NULL,
	degree VARCHAR(70) NOT NULL,
	hired_date DATE NOT NULL,
	permanent_pincode INT NOT NULL,
	hired_lab VARCHAR(50) DEFAULT NULL,
	attitude VARCHAR(20) DEFAULT NULL,
	communication_remark VARCHAR(20) DEFAULT NULL,
	knowledge_remark VARCHAR(20) DEFAULT NULL,
	aggregate_remark VARCHAR(20) DEFAULT NULL,
	status VARCHAR(20) DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	PRIMARY KEY(id, degree, permanent_pincode)
)
PARTITION BY RANGE COLUMNS(degree,permanent_pincode) (
	PARTITION part_be VALUES LESS THAN ('BE', 3000000),
	PARTITION part_btech VALUES LESS THAN ('BTech', 4000000),
	PARTITION part_msc VALUES LESS THAN ('MSc', 5000000),
	PARTITION part_others VALUES LESS THAN (MAXVALUE,MAXVALUE)
);

drop table hired_candidate_by_column;

INSERT INTO hired_candidate_by_column VALUES 
	(1, 'Mukul', NULL, 'Jain', 'mukul.jain@gmail.com', 9854215621, 'Gurgaon', 'BTech', '2017-12-13', 3121005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(2, 'Dibyesh', NULL, 'Mishra', 'dibyesh.mishra@gmail.com', 9215684562, 'Gurgaon', 'MSc', '2018-12-13', 3168005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(3, 'Shivam', NULL, 'Mishra', 'shivam.mishra@gmail.com', 9232121321, 'Gurgaon', 'BTech', '2019-12-13', 3154005, 'KPMG', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(4, 'Shubham', NULL, 'Mule', 'shubha.mule@gmail.com', 9546235415, 'Gurgaon', 'BE', '2020-12-13', 3251005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(5, 'Shreesh', NULL, 'Pandey', 'shreesh.pandey@gmail.com', 9845632114, 'Mumbai', 'BTech', '2021-12-13', 4211005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(6, 'Sunanda', NULL, 'Shil', 'sunanda.shil@gmail.com', 9845635414, 'Mumbai', 'BTech', '2022-12-13', 5211005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1)
;

EXPLAIN SELECT * FROM hired_candidate_by_column WHERE degree = 'BTech' AND permanent_pincode = 3121005;
-- +----+-------------+---------------------------+------------+------+---------------+------+---------+------+------+----------+-------------+
-- | id | select_type | table                     | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
-- +----+-------------+---------------------------+------------+------+---------------+------+---------+------+------+----------+-------------+
-- |  1 | SIMPLE      | hired_candidate_by_column | part_btech | ALL  | NULL          | NULL | NULL    | NULL |    3 |    33.33 | Using where |
-- +----+-------------+---------------------------+------------+------+---------------+------+---------+------+------+----------+-------------+


EXPLAIN ANALYZE SELECT * FROM hired_candidate_by_column WHERE degree = 'BTech' AND permanent_pincode = 3121005;
-- +---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- | EXPLAIN                                                                                                                                                                                                                                                                                           |
-- +---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- | -> Filter: ((hired_candidate_by_column.permanent_pincode = 3121005) and (hired_candidate_by_column.degree = 'BTech'))  (cost=0.55 rows=1) (actual time=0.132..0.143 rows=1 loops=1)
--     -> Table scan on hired_candidate_by_column  (cost=0.55 rows=3) (actual time=0.126..0.135 rows=3 loops=1)
--  |
-- +---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+