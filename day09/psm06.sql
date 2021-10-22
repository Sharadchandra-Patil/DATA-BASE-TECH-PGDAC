
-- write a procedure to sum all even numbers in given range.
-- input range as param and display output on console.

DROP PROCEDURE IF EXISTS sp_evensum;

DELIMITER $$

CREATE PROCEDURE sp_evensum(v_low INT, v_high INT)
BEGIN
	DECLARE v_num INT DEFAULT v_low;
	DECLARE v_sum INT DEFAULT 0;

	WHILE v_num <= v_high DO
		IF v_num % 2 = 0 THEN
			SET v_sum = v_sum + v_num;
		END IF;
		SET v_num = v_num + 1;
	END WHILE;

	SELECT v_low AS low, v_high AS high, v_sum AS sum;
END;
$$

DELIMITER ;

-- SOURCE /path/to/.sql
-- CALL sp_evensum(1, 10);
