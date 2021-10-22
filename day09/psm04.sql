
-- write a procedure to write area of rectangle into result table.
-- take length & breadth as procedure params.

DROP PROCEDURE IF EXISTS sp_rectarea;

DELIMITER $$

CREATE PROCEDURE sp_rectarea(p_len INT, p_br INT)
BEGIN
	DECLARE v_area INT;
	-- SET v_area = p_len * p_br;
	SELECT p_len * p_br INTO v_area;
	INSERT INTO result VALUES (v_area, CONCAT(p_len, ' * ', p_br));
END;
$$

DELIMITER ;

-- SOURCE /path/to/.sql
-- CALL sp_rectarea(10, 5);
-- CALL sp_rectarea(11, 3);
-- CALL sp_rectarea(20, 2);
-- SELECT * FROM result;
-- TRUNCATE TABLE result;
