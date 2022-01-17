CREATE TABLE hired_candidate_by_range(
	id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	middle_name VARCHAR(50) DEFAULT NULL,
	last_name VARCHAR(50) NOT NULL,
	email_id VARCHAR(70) NOT NULL,
	mobile_number BIGINT NOT NULL,
	hired_city VARCHAR(30) NOT NULL,
	degree VARCHAR(70) NOT NULL,
	hired_date DATE NOT NULL,
	permanent_pincode INT DEFAULT NULL,
	hired_lab VARCHAR(50) DEFAULT NULL,
	attitude VARCHAR(20) DEFAULT NULL,
	communication_remark VARCHAR(20) DEFAULT NULL,
	knowledge_remark VARCHAR(20) DEFAULT NULL,
	aggregate_remark VARCHAR(20) DEFAULT NULL,
	status VARCHAR(20) DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	PRIMARY KEY(id, hired_date)
)
PARTITION BY RANGE (year(hired_date)) (
	PARTITION less_than_2018 VALUES LESS THAN (2018),
	PARTITION less_than_2019 VALUES LESS THAN (2019),
	PARTITION less_than_2020 VALUES LESS THAN (2020),
	PARTITION less_than_2021 VALUES LESS THAN (2021),
	PARTITION less_than_max_date VALUES LESS THAN MAXVALUE
);

INSERT INTO hired_candidate_by_range VALUES 
	(1, 'Mukul', NULL, 'Jain', 'mukul.jain@gmail.com', 9854215621, 'Gurgaon', 'B.Tech', '2017-12-13', 3121005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(2, 'Dibyesh', NULL, 'Mishra', 'dibyesh.mishra@gmail.com', 9215684562, 'Gurgaon', 'M.Sc', '2018-12-13', 3168005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(3, 'Shivam', NULL, 'Mishra', 'shivam.mishra@gmail.com', 9232121321, 'Gurgaon', 'B.Tech', '2019-12-13', 3154005, 'KPMG', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(4, 'Shubham', NULL, 'Mule', 'shubha.mule@gmail.com', 9546235415, 'Gurgaon', 'B.Tech', '2020-12-13', 3251005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(5, 'Shreesh', NULL, 'Pandey', 'shreesh.pandey@gmail.com', 9845632114, 'Mumbai', 'B.Tech', '2021-12-13', 3211005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(6, 'Sunanda', NULL, 'Shil', 'sunanda.shil@gmail.com', 9845635414, 'Mumbai', 'B.Tech', '2022-12-13', 3211005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1)
;

EXPLAIN SELECT * FROM hired_candidate_by_range WHERE hired_date = '2021-12-12';
-- +----+-----------------+---------------------------------------+------------------------------+-------+----------------------+------+---------+------+------+----------+-------------+
-- | id | select_type  | table                    		  | partitions                | type | possible_keys | key     | key_len | ref  | rows | filtered | Extra       |
-- +----+-----------------+---------------------------------------+------------------------------+-------+----------------------+------+---------+------+------+----------+-------------+
-- |  1 | SIMPLE      | hired_candidate_by_range | less_than_max_date | ALL | NULL              | NULL  | NULL    | NULL |    2 |    50.00 | Using where |
-- +----+-----------------+---------------------------------------+------------------------------+-------+----------------------+------+---------+------+------+----------+-------------+

EXPLAIN ANALYZE SELECT * FROM hired_candidate_by_range WHERE hired_date = '2021-12-12';
-- +------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- | EXPLAIN                                                                                                                                                                                                                                        |
-- +------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- | -> Filter: (hired_candidate_by_range.hired_date = DATE'2021-12-12')  (cost=0.45 rows=1) (actual time=0.113..0.113 rows=0 loops=1)
--     -> Table scan on hired_candidate_by_range  (cost=0.45 rows=2) (actual time=0.105..0.110 rows=2 loops=1)
--  |
-- +------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+