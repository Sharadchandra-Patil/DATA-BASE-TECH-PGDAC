
-- write a procedure to insert given book into books table.
-- if any error occurs, continue executing procedure (using named conditon) and display success/failure message on console.

DROP PROCEDURE IF EXISTS sp_addbook;

DELIMITER $$

CREATE PROCEDURE sp_addbook(p_id INT, p_name CHAR(20), p_author CHAR(30), p_subject CHAR(16), p_price DOUBLE)
BEGIN
	DECLARE v_msg CHAR(30) DEFAULT 'Book insert success.';
	-- write error handler(s)
	DECLARE duplicate_entry CONDITION FOR 1062;
	
	DECLARE CONTINUE HANDLER FOR duplicate_entry SET v_msg = 'Book insert failed.';
	
	-- write procedure logic
	INSERT INTO books VALUES (p_id, p_name, p_author, p_subject, p_price);

	SELECT v_msg AS msg;
END;
$$

DELIMITER ;

-- SOURCE /path/to/.sql
-- CALL sp_addbook(5001, 'The Archer', 'Cohelo', 'Novell', 527.30);
-- CALL sp_addbook(5002, 'The Archer', 'Cohelo', 'Novell', 527.30);
-- SELECT * FROM result;
