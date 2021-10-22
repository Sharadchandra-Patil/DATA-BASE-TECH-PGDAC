
-- write a procedure to calculate area of circle.
-- print result on console.
-- radius = 7.0

DROP PROCEDURE IF EXISTS sp_circlearea;

DELIMITER $$

CREATE PROCEDURE sp_circlearea()
BEGIN
	DECLARE v_radius DOUBLE DEFAULT 7.0;
	DECLARE v_area DOUBLE;
	SET v_area = PI() * v_radius * v_radius;
	SELECT v_radius AS radius, v_area AS area;
END;
$$

DELIMITER ;

-- SOURCE /path/to/.sql
-- CALL sp_circlearea();
-- SHOW PROCEDURE STATUS LIKE 'sp_circlearea';
-- SHOW CREATE PROCEDURE sp_circlearea;