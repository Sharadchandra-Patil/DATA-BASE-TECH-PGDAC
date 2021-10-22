
-- write a function for find exp/age of person in year & months.

DROP FUNCTION IF EXISTS EXPERIENCE;

DELIMITER $$

CREATE FUNCTION EXPERIENCE(p_date DATE)
RETURNS CHAR(40)
NOT DETERMINISTIC
BEGIN
	DECLARE v_mon INT;
	DECLARE v_year INT;
	SET v_year = TIMESTAMPDIFF(YEAR, p_date, NOW());
	SET v_mon = TIMESTAMPDIFF(MONTH, p_date, NOW()) % 12;
	RETURN CONCAT(v_year, ' y ', v_mon, ' m ');
END;
$$

DELIMITER ;

-- SELECT USER(), DATABASE();
-- root@localhost, classwork

-- SELECT @@log_bin_trust_function_creators;
-- SET GLOBAL log_bin_trust_function_creators = 1;
-- SELECT @@log_bin_trust_function_creators;

-- SOURCE /path/to/.sql
-- SELECT EXPERIENCE('2004-05-31');
-- SELECT ename, hire, EXPERIENCE(hire) FROM emp;

