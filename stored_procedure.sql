/*
	1. retirve the data from the fellowship table
	2. Count the number of data in the fellowship table
*/
DELIMITER &&
CREATE PROCEDURE get_candidate()
BEGIN
    SELECT * FROM fellowship_candidate;
    SELECT COUNT(id) AS Total_Candidate FROM fellowship_candidate;
END &&
DELIMITER ;

CALL get_candidate();

/*-----------------------------------------------------------------------------------------*/

/*
	1. retirve the data from the fellowship table using IN parameter
*/
DELIMITER &&
CREATE PROCEDURE get_candidate_using_in_param(IN limit_id INT)
BEGIN
    SELECT * FROM fellowship_candidate LIMIT limit_id;
END &&
DELIMITER ;

CALL get_candidate_using_in_param(3);

/*-----------------------------------------------------------------------------------------*/

/*
	1. retirve the maximum percentage from the qualification table using OUT parameter
*/
DELIMITER &&
CREATE PROCEDURE max_percentage (OUT Highest_Percent DOUBLE)
BEGIN
    SELECT MAX(final_year_per) INTO Highest_Percent FROM candidate_qualification;
END &&
DELIMITER ;

CALL max_percentage(@Marks);
SELECT @Marks;

/*-----------------------------------------------------------------------------------------*/

/*
	1. retirve the marks from the qualification table using INOUT parameter
*/
DELIMITER &&
CREATE PROCEDURE candidate_percentage (INOUT candidate_id INT)  
BEGIN  
    SELECT final_year_per INTO candidate_id FROM candidate_qualification WHERE id = candidate_id;   
END &&  
DELIMITER ;

SET @ID = 1;
CALL candidate_percentage(@ID);
SELECT @ID;