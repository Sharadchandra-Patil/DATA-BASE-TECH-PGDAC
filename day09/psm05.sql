
-- write a SP to display given number is even or odd.
-- take number as param and print result on console.

DROP PROCEDURE IF EXISTS sp_evenodd;

DELIMITER $$

CREATE PROCEDURE sp_evenodd(p_num INT)
BEGIN
	DECLARE v_status CHAR(20);
	IF p_num % 2 = 0 THEN
		SET v_status = 'Even';
	ELSE
		SET v_status = 'Odd';
	END IF;
	SELECT p_num AS num, v_status AS status;
END;
$$

DELIMITER ;

-- SOURCE /path/to/.sql
-- CALL sp_evenodd(11);
-- CALL sp_evenodd(14);
