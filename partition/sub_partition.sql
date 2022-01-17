CREATE TABLE log_subpart(
	user_name VARCHAR(50) NOT NULL,
	technology VARCHAR(100) NOT NULL,
	disk_write_count BIGINT NOT NULL
)
PARTITION BY RANGE (disk_write_count)
SUBPARTITION BY HASH (disk_write_count)(
	PARTITION less_than_100000 VALUES LESS THAN (100000)
	(
		SUBPARTITION part1,
		SUBPARTITION part2
	),
	PARTITION less_than_200000 VALUES LESS THAN (200000)
	(
		SUBPARTITION part3,
		SUBPARTITION part4
	),
	PARTITION less_than_300000 VALUES LESS THAN (300000)
	(
		SUBPARTITION part5,
		SUBPARTITION part6
	),
	PARTITION less_than_other VALUES LESS THAN MAXVALUE
	(
		SUBPARTITION part7,
		SUBPARTITION part8
	)
);


INSERT INTO log_subpart SELECT user_name, technology, disk_write_count FROM temporary_mis;

EXPLAIN SELECT * FROM log_subpart WHERE disk_write_count = 296929;
-- +----+-------------+-------------+------------------------+------+---------------+------+---------+------+------+----------+-------------+
-- | id | select_type | table       | partitions             | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
-- +----+-------------+-------------+------------------------+------+---------------+------+---------+------+------+----------+-------------+
-- |  1 | SIMPLE      | log_subpart | less_than_300000_part6 | ALL  | NULL          | NULL | NULL    | NULL |   84 |    10.00 | Using where |
-- +----+-------------+-------------+------------------------+------+---------------+------+---------+------+------+----------+-------------+

EXPLAIN SELECT * FROM log_subpart WHERE disk_write_count = 315262;
-- +----+-------------+-------------+-----------------------+------+---------------+------+---------+------+------+----------+-------------+
-- | id | select_type | table       | partitions            | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
-- +----+-------------+-------------+-----------------------+------+---------------+------+---------+------+------+----------+-------------+
-- |  1 | SIMPLE      | log_subpart | less_than_other_part7 | ALL  | NULL          | NULL | NULL    | NULL |   81 |    10.00 | Using where |
-- +----+-------------+-------------+-----------------------+------+---------------+------+---------+------+------+----------+-------------+