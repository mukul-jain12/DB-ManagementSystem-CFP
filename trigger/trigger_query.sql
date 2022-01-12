/*
	1. To update valid password, trigger will be invoked before update to check the new value of password if its empty sql error message will be singled.
*/
DELIMITER $$
	CREATE TRIGGER before_update_password
	BEFORE UPDATE ON user_details FOR EACH ROW
	BEGIN
		DECLARE error_message1 VARCHAR(600);
        DECLARE error_message2 VARCHAR(600);
		SET error_message1=('Password is Empty.');
		SET error_message2=('New Password Should Be Defferent From New Password.');
			IF
				new.password = '' THEN signal sqlstate '45000' set message_text=error_messge;
			ELSEIF
				new.password = old.password THEN signal sqlstate '44000' set message_text=error_mesage;
			END IF;
	END$$
DELIMITER ;

UPDATE user_details SET password = 'Mukul@123' WHERE id = 1;


/*
	2. Delete Trigger:- After deleting a row from company table, trigger will be invoked to insert the company name and date_deleted in another table named as company_trash.
*/
DELIMITER $$
	CREATE TRIGGER after_delete_company_row
	AFTER DELETE ON company FOR EACH ROW
	BEGIN
 			 IF
  				EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'company_trash') 
					THEN INSERT INTO company_trash(company_name, date_deleted) VALUES(old.name, localtime());
  			ELSE
				CREATE TABLE IF NOT EXISTS company_trash(company_name VARCHAR(60) NOT NULL, date_deleted DATE NOT NULL);
				INSERT INTO company_trash(company_name, date_deleted) VALUES(old.name, localtime());
			END IF;
	END$$
DELIMITER ;

drop trigger after_delete_company_row;

delete from company where name='KPMG';