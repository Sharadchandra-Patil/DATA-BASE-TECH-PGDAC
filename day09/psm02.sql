
-- write a procedure to write 'Hello World' into a result table.
-- Create result table id INT, val CHAR(100) before the procedure.

DROP PROCEDURE IF EXISTS sp_hello2;

DELIMITER $$

CREATE PROCEDURE sp_hello2()
BEGIN
	INSERT INTO result VALUES (1, 'HELLO WORLD');
END;
$$

DELIMITER ;

-- CREATE TABLE result(id INT, val CHAR(100));

-- SOURCE /path/to/.sql
-- CALL sp_hello2();
-- SELECT * FROM result;
-- TRUNCATE TABLE result;