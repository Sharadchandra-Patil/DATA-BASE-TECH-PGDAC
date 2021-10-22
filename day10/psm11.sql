
-- write a procedure to insert given book into books table.
-- if any error occurs, stop executing procedure and display error on console.

DROP PROCEDURE IF EXISTS sp_addbook;

DELIMITER $$

CREATE PROCEDURE sp_addbook(p_id INT, p_name CHAR(20), p_author CHAR(30), p_subject CHAR(16), p_price DOUBLE)
BEGIN
	-- write error handler(s)
	DECLARE EXIT HANDLER FOR 1062 SELECT 'Book insert failed.' AS error;
	-- write procedure logic
	INSERT INTO books VALUES (p_id, p_name, p_author, p_subject, p_price);
END;
$$

DELIMITER ;

-- SOURCE /path/to/.sql
-- CALL sp_addbook(5001, 'The Alchemist', 'Cohelo', 'Novell', 624.39);
-- CALL sp_addbook(5001, 'The Archer', 'Cohelo', 'Novell', 527.30);
-- SELECT * FROM result;
