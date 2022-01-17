/*
	1. Insert new company and do insert in all other tables which are interlinked to this.
*/
DELIMITER &&
CREATE PROCEDURE insert_company_detail(coid INT, coname VARCHAR(300), coaddress VARCHAR(150), colocation VARCHAR(50), costatus INT, cocreator_stamp DATETIME, cocreator_user INT)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SELECT 'Duplicate Date: Data is already in the Table:' 
        ROLLBACK;
	END;
    
    START TRANSACTION;
		INSERT INTO company VALUES (coid, coname, coaddress, colocation, costatus, cocreator_stamp, cocreator_user);
        INSERT INTO company_requirement VALUES (6, coid, 'Seven', 'Ahemdabad', 1, 'path of doc', 40, 2, 3, 3, 1, 1, 1, 'good', 1, null, 1);
    COMMIT;
END &&
DELIMITER ;


CALL insert_company_detail(6, 'TCS', 'Geeta Mandir', 'Ahemdabad', 1, NULL, 1);


/*
	2. Modify the password column to default value and then insert a user with no password specified and then do select *.
*/
DELIMITER &&
CREATE PROCEDURE insert_new_user(userid INT, emailid VARCHAR(70), firstname VARCHAR(100), lastname VARCHAR(100), contact BIGINT)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SELECT 'User Is already in database.'
		ROLLBACK;
	END;
    START TRANSACTION;
		ALTER TABLE user_details ALTER COLUMN password SET DEFAULT 'Abcd@1234';
		INSERT INTO user_details(id, email, first_name, last_name, contact_number) VALUES(userid, emailid, firstname, lastname, contact);
        SELECT * FROM user_details WHERE id = userid;
	COMMIT;
END &&
DELIMITER ;
drop procedure insert_new_user;
CALL insert_new_user(6, 'baburao.ganpatraoapte@gmail.com', 'Babu Rao', 'Ganpat Rao Apte', 9584325165);