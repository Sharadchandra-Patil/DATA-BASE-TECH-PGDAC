
-- write a trigger to auto-update balance when transaction is done on bank account.

DROP TRIGGER IF EXISTS update_balance;

DELIMITER $$

CREATE TRIGGER update_balance
AFTER INSERT ON transactions
FOR EACH ROW
BEGIN
	IF NEW.type = 'Deposit' THEN
		UPDATE accounts SET balance = balance + NEW.amount WHERE id = NEW.acc_id;
	ELSE
		UPDATE accounts SET balance = balance - NEW.amount WHERE id = NEW.acc_id;
	END IF;
END;
$$

DELIMITER ;

-- SOURCE /path/to/.sql
