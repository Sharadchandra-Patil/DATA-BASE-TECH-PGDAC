
DROP PROCEDURE IF EXISTS sp_sqr1;

DELIMITER $$

CREATE PROCEDURE sp_sqr1(IN p_n INT, OUT p_r INT)
BEGIN
	SET p_r = p_n * p_n;
END
$$

DELIMITER ;

-- SOURCE /path/to/.sql
-- CALL sp_sqr1(5, @res1);
-- SELECT @res1;

