
-- write a procedure to decide category of emp.
-- sal < 1500 = Poor
-- sal >= 1500 AND sal <= 2500 = Middle
-- sal > 2500 = Rich
-- Take data from emp table and put result into "result" table.

DROP PROCEDURE IF EXISTS sp_empcategory;

DELIMITER $$

CREATE PROCEDURE sp_empcategory(p_empno INT)
BEGIN
	DECLARE v_sal DOUBLE DEFAULT 0.0;
	DECLARE v_category CHAR(30);

	-- SET v_sal = (SELECT sal FROM emp WHERE empno=p_empno);
	SELECT sal INTO v_sal FROM emp WHERE empno = p_empno;

	CASE
	WHEN v_sal < 1500 THEN 
		SET v_category = 'Poor';
	WHEN v_sal BETWEEN 1500 AND 2500 THEN 
		SET v_category = 'Middle';
	ELSE 
		SET v_category = 'Rich';
	END CASE;

	INSERT INTO result VALUES (p_empno, v_category);
END;
$$

DELIMITER ;

-- SOURCE /path/to/.sql
-- CALL sp_empcategory(7900);
-- SELECT * FROM result;
