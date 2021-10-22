
-- write a function for TITLE case.
--	e.g. TITLE('SunBeam') --> 'Sunbeam'
--	e.g. TITLE('NILESH') --> 'Nilesh'
--	e.g. TITLE('nitin') --> 'Nitin'

DROP FUNCTION IF EXISTS TITLE;

DELIMITER $$

CREATE FUNCTION TITLE(p_name CHAR(40))
RETURNS CHAR(40)
DETERMINISTIC
BEGIN
	DECLARE v_result CHAR(40);
	DECLARE v_first CHAR(1) DEFAULT LEFT(p_name,1);
	DECLARE v_rest CHAR(40) DEFAULT SUBSTR(p_name, 2);
	SET v_result = CONCAT(UPPER(v_first), LOWER(v_rest));
	RETURN v_result;
END;
$$

DELIMITER ;

-- SELECT USER(), DATABASE();
-- root@localhost, classwork

-- SOURCE /path/to/.sql
-- SELECT TITLE('NILESH');
-- SELECT ename, TITLE(ename) FROM emp;

