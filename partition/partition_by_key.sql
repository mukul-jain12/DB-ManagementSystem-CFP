CREATE TABLE hired_candidate_by_key(
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
	PRIMARY KEY(id)
)
PARTITION BY KEY ()
PARTITIONS 3;

INSERT INTO hired_candidate_by_key VALUES 
	(1, 'Mukul', NULL, 'Jain', 'mukul.jain@gmail.com', 9854215621, 'Gurgaon', 'B.Tech', '2017-12-13', 3121005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(2, 'Dibyesh', NULL, 'Mishra', 'dibyesh.mishra@gmail.com', 9215684562, 'Gurgaon', 'M.Sc', '2018-12-13', 3168005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(3, 'Shivam', NULL, 'Mishra', 'shivam.mishra@gmail.com', 9232121321, 'Gurgaon', 'B.Tech', '2019-12-13', 3154005, 'KPMG', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(4, 'Shubham', NULL, 'Mule', 'shubha.mule@gmail.com', 9546235415, 'Gurgaon', 'B.Tech', '2020-12-13', 3251005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(5, 'Shreesh', NULL, 'Pandey', 'shreesh.pandey@gmail.com', 9845632114, 'Mumbai', 'B.Tech', '2021-12-13', 3211005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(6, 'Sunanda', NULL, 'Shil', 'sunanda.shil@gmail.com', 9845635414, 'Mumbai', 'B.Tech', '2022-12-13', 3211005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1)
;

EXPLAIN SELECT * FROM hired_candidate_by_key WHERE id = 2;
-- +----+-------------+------------------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
-- | id | select_type | table                  | partitions | type  | possible_keys | key     | key_len | ref   | rows | filtered | Extra |
-- +----+-------------+------------------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
-- |  1 | SIMPLE      | hired_candidate_by_key | p2         | const | PRIMARY       | PRIMARY | 4       | const |    1 |   100.00 | NULL  |
-- +----+-------------+------------------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+

EXPLAIN ANALYZE SELECT * FROM hired_candidate_by_key WHERE id = 2;
-- +-------------------------------------------------------------------------------------------------------+
-- | EXPLAIN                                                                                          
-- +-------------------------------------------------------------------------------------------------------+
-- | -> Rows fetched before execution  (cost=0.00..0.00 rows=1) (actual time=0.000..0.000 rows=1 loops=1)
-- +-------------------------------------------------------------------------------------------------------+