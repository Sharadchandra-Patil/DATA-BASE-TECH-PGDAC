DROP PROCEDURE IF EXISTS Fibo ;

DELIMITER $$

CREATE PROCEDURE Fibo(sp_num INT)
BEGIN
    DECLARE a INT default 0;
    DECLARE b INT default 1;
    DECLARE d INT default 0;
    DECLARE C INT DEFAULT 3;
    create table FIBO(`Sr.N0` int primary key auto_increment, Fib int);
    insert into fibo(Fib) values (a);
    insert into fibo(Fib) values (b);
    WHILE C <= sp_num DO
          Set d = a + b;
          insert into fibo(Fib) values (d);
          set a = b;
          set b = d;
          set C = C + 1;
    END WHILE;
    SELECT * FROM FIBO;
    truncate table FIBO;
END;

$$

DELIMITER ;