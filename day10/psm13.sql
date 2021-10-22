
-- write a procedure to decide category of emp.
-- sal < 1500 = Poor
-- sal >= 1500 AND sal <= 2500 = Middle
-- sal > 2500 = Rich
-- Process all emps from emp table and put result into "result" table.

DROP PROCEDURE IF EXISTS sp_empcategory;

DELIMITER $$

CREATE PROCEDURE sp_empcategory()
BEGIN
	DECLARE v_sal DOUBLE DEFAULT 0.0;
	DECLARE v_empno INT DEFAULT 0;
	DECLARE v_category CHAR(30);
	DECLARE v_flag INT DEFAULT 0;
	DECLARE v_cur CURSOR FOR SELECT empno, sal FROM emp;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_flag = 1;

	OPEN v_cur;
	label: LOOP
		FETCH v_cur INTO v_empno, v_sal;
		IF v_flag = 1 THEN
			LEAVE label;
		END IF;
		CASE
		WHEN v_sal < 1500 THEN 
			SET v_category = 'Poor';
		WHEN v_sal BETWEEN 1500 AND 2500 THEN 
			SET v_category = 'Middle';
		ELSE 
			SET v_category = 'Rich';
		END CASE;
		INSERT INTO result VALUES (v_empno, v_category);
	END LOOP;
	CLOSE v_cur;
END;
$$

DELIMITER ;

-- SOURCE /path/to/.sql
-- CALL sp_empcategory();
-- SELECT * FROM result;
