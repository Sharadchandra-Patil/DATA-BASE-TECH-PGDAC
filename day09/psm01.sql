
-- write a procedure to print Hello World on terminal.

DROP PROCEDURE IF EXISTS sp_hello1;

DELIMITER $$

CREATE PROCEDURE sp_hello1()
BEGIN
	SELECT 'HELLO WORLD' AS msg;
END;
$$

DELIMITER ;

-- SOURCE /path/to/.sql
-- CALL sp_hello1();
