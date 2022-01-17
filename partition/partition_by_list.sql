CREATE TABLE hired_candidate_by_list(
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
	PRIMARY KEY(id, permanent_pincode)
)
PARTITION BY LIST (permanent_pincode)(
    PARTITION part_pincode1 VALUES IN(3121005),
    PARTITION part_pincode2 VALUES IN(3168005, 3154005),
    PARTITION part_pincode3 VALUES IN(3251005),
    PARTITION part_pincode4 VALUES IN(3211005)
);

INSERT INTO hired_candidate_by_list VALUES 
	(1, 'Mukul', NULL, 'Jain', 'mukul.jain@gmail.com', 9854215621, 'Gurgaon', 'B.Tech', '2017-12-13', 3121005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(2, 'Dibyesh', NULL, 'Mishra', 'dibyesh.mishra@gmail.com', 9215684562, 'Gurgaon', 'M.Sc', '2018-12-13', 3168005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(3, 'Shivam', NULL, 'Mishra', 'shivam.mishra@gmail.com', 9232121321, 'Gurgaon', 'B.Tech', '2019-12-13', 3154005, 'KPMG', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(4, 'Shubham', NULL, 'Mule', 'shubha.mule@gmail.com', 9546235415, 'Gurgaon', 'B.Tech', '2020-12-13', 3251005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(5, 'Shreesh', NULL, 'Pandey', 'shreesh.pandey@gmail.com', 9845632114, 'Mumbai', 'B.Tech', '2021-12-13', 3211005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(6, 'Sunanda', NULL, 'Shil', 'sunanda.shil@gmail.com', 9845635414, 'Mumbai', 'B.Tech', '2022-12-13', 3211005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1)
;

EXPLAIN SELECT * FROM hired_candidate_by_list WHERE permanent_pincode = 3168005 OR permanent_pincode = 3211005;
-- +----+-------------+-------------------------+-----------------------------+------+---------------+------+---------+------+------+----------+-------------+
-- | id | select_type | table                   | partitions                  | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
-- +----+-------------+-------------------------+-----------------------------+------+---------------+------+---------+------+------+----------+-------------+
-- |  1 | SIMPLE      | hired_candidate_by_list | part_pincode2,part_pincode4 | ALL  | NULL          | NULL | NULL    | NULL |    4 |    43.75 | Using where |
-- +----+-------------+-------------------------+-----------------------------+------+---------------+------+---------+------+------+----------+-------------+


EXPLAIN ANALYZE SELECT * FROM hired_candidate_by_list WHERE permanent_pincode = 3168005 OR permanent_pincode = 3211005;
-- +-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- | EXPLAIN                                                                                                                                                                                                                                                                                               |
-- +-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- | -> Filter: ((hired_candidate_by_list.permanent_pincode = 3168005) or (hired_candidate_by_list.permanent_pincode = 3211005))  (cost=0.90 rows=2) (actual time=0.086..0.103 rows=3 loops=1)
--     -> Table scan on hired_candidate_by_list  (cost=0.90 rows=4) (actual time=0.076..0.092 rows=4 loops=1)
--  |
-- +-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+