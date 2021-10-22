
-- write a procedure to calculate table of a given number.
-- input number as a param and put result into "result" table.

DROP PROCEDURE IF EXISTS sp_table;

DELIMITER $$

CREATE PROCEDURE sp_table(p_num INT)
BEGIN
	DECLARE v_i INT DEFAULT 1;
	REPEAT
		INSERT INTO result VALUES (p_num * v_i, CONCAT(p_num, ' * ', v_i));
		SET v_i = v_i + 1;
	UNTIL v_i > 10
	END REPEAT; 
END;
$$

DELIMITER ;

-- SOURCE /path/to/.sql
-- CALL sp_table(3);
