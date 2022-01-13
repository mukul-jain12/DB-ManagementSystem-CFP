/*
	1. Define a stored procedure to get a list of company names from the company table using cursor.
*/
DELIMITER &&
CREATE PROCEDURE company_list_by_name(INOUT companies VARCHAR(3000))
BEGIN
	DECLARE flag INTEGER default 0;
	DECLARE company_list varchar(3000) default '';

	DECLARE company_list_cur CURSOR FOR 
	SELECT DISTINCT name FROM company;

	DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag = 1;
    
	OPEN company_list_cur;
		retrieve_list : LOOP
			FETCH company_list_cur INTO company_list;
			IF flag =1
				THEN LEAVE retrieve_list;
			END IF;
			SET companies=concat(company_list,';',companies);
		END LOOP retrieve_list;
	CLOSE company_list_cur;
END&&
DELIMITER ;


SET @companies='';
CALL company_list_by_name(@companies);
SELECT @companies;


/*
	2. define a procedure to get a list of distinct email-ids from the cpu log table with with technology=android.
*/
DELIMITER &&
CREATE PROCEDURE cpu_data_log (INOUT emails varchar(200), IN technology_name varchar(100))
BEGIN
	DECLARE flag INTEGER default 0;
	DECLARE user_list varchar(3000) default '';

	DECLARE email_list_cur CURSOR FOR 
	SELECT DISTINCT user_name FROM temporary_mis where technology=technology_name;

	DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag = 1;
    
	OPEN email_list_cur;
		retrieve_list : LOOP
			FETCH email_list_cur INTO user_list;
			IF flag =1
				THEN LEAVE retrieve_list;
			END IF;
			SET emails=concat(user_list,';',emails);
		END LOOP retrieve_list;
	CLOSE email_list_cur;
END&&
DELIMITER ;


SET @emails ='';
CALL cpu_data_log(@emails, 'android');
SELECT @emails;
