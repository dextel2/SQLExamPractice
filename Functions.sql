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


CREATE OR REPLACE FUNCTION count_nm 
RETURN number IS 
   tot number(7) := 0; 
BEGIN 
   SELECT count(S_NAME) into total 
   FROM STUDENT
   WHERE MARKS=65; 
    
   RETURN tot; 
END; 
/ 

-- Calling a function

-- Method 1
DECLARE 
	c number(7);
BEGIN
	c : count_nm();
	dbms_output.put_line('Total Student having 65 marks' ||c);
END;
/

-- Method 2
SELECT count_nm from DUAL;