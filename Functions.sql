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

--TODO Create a function to find lowest of three numbers
--SELECT MinOfThree(1,2,5) FROM dual;
CREATE OR REPLACE FUNCTION MinOfThree(A INTEGER,B INTEGER,C INTEGER) RETURN INTEGER IS
BEGIN
	IF (A<B) AND (A<C) THEN
		RETURN A;
	ELSIF (B<A) AND (B<C) THEN
		RETURN B;
	ELSE
		RETURN C;
	END IF;
END MinOfThree;
/
