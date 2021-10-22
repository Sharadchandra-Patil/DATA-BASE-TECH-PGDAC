
DROP PROCEDURE IF EXISTS sp_sqr2;

DELIMITER $$

CREATE PROCEDURE sp_sqr2(INOUT p_n INT)
BEGIN
	SET p_n = p_n * p_n;
END
$$

DELIMITER ;

-- SOURCE /path/to/.sql
-- SET @res2 = 7;
-- CALL sp_sqr2(@res2);
-- SELECT @res2;

