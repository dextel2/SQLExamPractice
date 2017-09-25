-- To Run Functions use DUAL (Logical) table in Oracle

-- 1st

-- TODO Creating a Fibonnaci Function
-- logic n*(n-1)
-- TO RUN 
-- SELECT FIB(n) FROM DUAL;

CREATE OR REPLACE FUNCTION fib (n POSITIVE) RETURN INTEGER IS
BEGIN
	IF (n = 1) OR (n = 2) THEN -- terminating condition
		RETURN 1;
	ELSE
		RETURN fib(n - 1) + fib(n - 2); -- recursive call
END IF;
END fib;
/

-- TODO Creating a function which returns the lowest number among two numbers
-- logic if n>m return m else n
--TO RUN
-- SELECT LOWNUM(n.m) FROM DUAL;


CREATE OR REPLACE FUNCTION lowNum(n INTEGER,m INTEGER) RETURN INTEGER IS
BEGIN
	IF (n>m) THEN
		RETURN m;
	ELSE
		RETURN n;
	END IF;
END lowNum;
/
