/*
	1. Create a function to calculate age from DOB of candidate.
*/
DELIMITER $$
CREATE FUNCTION calculate_age(cand_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE age INT;
		SELECT (YEAR(CURDATE()) - YEAR(birth_date)) INTO age FROM fellowship_candidate WHERE id = cand_id;
	RETURN age; 
END$$
DELIMITER ;

SELECT CALCULATE_AGE(1);

/*
	2. Get the full name of the candidate by candidate_id.
*/
DELIMITER $$
CREATE FUNCTION full_name(cand_id INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
	DECLARE fullName VARCHAR(100);
		SELECT CONCAT(first_name,' ', COALESCE(middle_name,''), ' ', last_name) INTO fullName FROM fellowship_candidate WHERE id = cand_id;
	RETURN fullName; 
END$$
DELIMITER ;

SELECT FULL_NAME(1);

/*
	3. Take cpu percent and use case to print cpu percent is high when > 80,  normal<80 and else low.
*/
DELIMITER $$
CREATE FUNCTION cpu_percent_check(cpu_percent DOUBLE)
RETURNS VARCHAR(150)
DETERMINISTIC
BEGIN
	CASE
		WHEN cpu_percent > 80 THEN  RETURN 'CPU Percent is High';
		WHEN cpu_percent < 80 THEN RETURN 'CPU Percent is Normal';
		ELSE RETURN 'LOW';
	END CASE;
END$$
DELIMITER ;

SELECT CPU_PERCENT_CHECK(90);

/*
	4. Get company count by location.
*/
DELIMITER $$
CREATE FUNCTION company_name(location_name VARCHAR(50))
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	DECLARE count_company VARCHAR(50);
		SELECT COUNT(location) INTO count_company FROM company WHERE location = location_name;
	RETURN count_company;
END$$
DELIMITER ;

SELECT COMPANY_NAME('Banglore');