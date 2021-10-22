
-- write a procedure to check if given number is prime or not.
-- input number as param and print result on console.

DROP PROCEDURE IF EXISTS sp_prime;

DELIMITER $$

CREATE PROCEDURE sp_prime(p_num INT)
BEGIN
	DECLARE v_i INT DEFAULT 2;
	DECLARE v_status CHAR(20);
	prime: LOOP
		IF v_i = p_num THEN
			LEAVE prime;
		END IF;
		IF p_num % v_i = 0 THEN
			SET v_status = 'Not Prime';
			LEAVE prime;
		END IF;
		SET v_i = v_i + 1;
	END LOOP;
	IF v_i = p_num THEN
		SET v_status = 'Prime';
	END IF;
	SELECT p_num AS num, v_status AS status;
END;
$$

DELIMITER ;

-- SOURCE /path/to/.sql
-- CALL sp_prime(49);
