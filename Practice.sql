-- Simple If Else PL/SQL Program to find status of student on basis of input grade

DECLARE
	GRADE CHAR(1) := 'A';
BEGIN
	CASE GRADE
			WHEN 'A' THEN DBMS_OUTPUT.PUT_LINE('EXCELLENT');
			WHEN 'B' THEN DBMS_OUTPUT.PUT_LINE('VERY GOOD');
			WHEN 'C' THEN DBMS_OUTPUT.PUT_LINE('WELL DONE');
			WHEN 'D' THEN DBMS_OUTPUT.PUT_LINE('YOU PASSED');
			WHEN 'F' THEN DBMS_OUTPUT.PUT_LINE('BETTER TRY AGAIN');
		ELSE
			DBMS_OUTPUT.PUT_LINE('NO SUCH GRADE');
		END CASE;
	END;
/

--Simply printing the variables

DECLARE
	NAME VARCHAR(20) := 'YASH KARANKE';
	ADDRESS VARCHAR(20) := 'VADODARA';
BEGIN
	DBMS_OUTPUT.PUT_LINE(NAME);
	DBMS_OUTPUT.PUT_LINE(ADDRESS);
END;
/
--Array Program to Store Names and Marks of Two Students

DECLARE
	TYPE NAMESARRAY IS VARRAY(5) OF VARCHAR(10);
	TYPE GRADES IS VARRAY(5) OF INTEGER;
	NAMES NAMESARRAY;
	MARKS GRADES;
	TOTAL INTEGER;
BEGIN
	NAMES := NAMESARRAY('YASH','DHWANI');
	MARKS := GRADES(99,99);
	TOTAL := NAMES.COUNT;
	DBMS_OUTPUT.PUT_LINE('TOTAL = ' || TOTAL || 'STUDENT ');
	FOR I IN 1..TOTAL LOOP
		DBMS_OUTPUT.PUT_LINE('STUDENTS: ' || NAMES(I) || 'MARKS: ' || MARKS(I));
	END LOOP;
END;
/

	
	
DECLARE 
   -- constant declaration 
   pi constant number := 3.14; 
   -- other declarations 
   radius number(5,2);  
   dia number(5,2);  
   circumference number(7, 2); 
   area number (10, 2); 
BEGIN  
   -- processing 
   radius := 9.5;  
   dia := radius * 2;  
   circumference := 2.0 * pi * radius; 
   area := pi * radius * radius; 
   -- output 
   dbms_output.put_line('Radius: ' || radius); 
   dbms_output.put_line('Diameter: ' || dia); 
   dbms_output.put_line('Circumference: ' || circumference); 
   dbms_output.put_line('Area: ' || area); 
END; 
/ 



-- PROCEDURE PROGRAM TO FIND OUT MAX OF 4 NUMBERS


DECLARE
	N NUMBER;
    M NUMBER;
	O NUMBER;
	P NUMBER;
	X NUMBER;
PROCEDURE MAXINUM(N IN NUMBER, M IN NUMBER, O IN NUMBER, P IN NUMBER, X OUT NUMBER) IS
	BEGIN
	IF N>M AND N>O AND N>P THEN
		X:=N;
	ELSIF M>N AND M>O AND M>P THEN
		X:=M;
	ELSIF O>N AND O>M AND O>P THEN
		X:=O;
	ELSIF P>N AND P>M AND P>O  THEN
		X:=P;
	END IF;
	END;

BEGIN
	N:=&NUMBER;    
    M:=&NUMBER;
    O:=&NUMBER;
    P:=&NUMBER;
	MAXINUM(N,M,O,P,X);
	DBMS_OUTPUT.PUT_LINE('HIGHEST NUMBER = '||X);
END;
/
