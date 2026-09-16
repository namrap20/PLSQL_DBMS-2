-- 22)  Write a PL/SQL block to accept a student name from a user if it exists, display his/her result from the RESULT table otherwise display appropriate message using exception handling. 

set serveroutput on 

DECLARE

   v_name   RESULT.NAME%TYPE := '&NAME';
   v_total  RESULT.TOTAL%TYPE;
   v_per    RESULT.PER%TYPE;
   v_result RESULT.RESULT%TYPE;

BEGIN

   SELECT TOTAL, PER, RESULT INTO v_total, v_per, v_result FROM RESULT WHERE NAME = v_name;

   DBMS_OUTPUT.PUT_LINE('--- Student Result ---');
   DBMS_OUTPUT.PUT_LINE('Name       : ' || v_name);
   DBMS_OUTPUT.PUT_LINE('Total Marks: ' || v_total);
   DBMS_OUTPUT.PUT_LINE('Percentage : ' || v_per || '%');
   DBMS_OUTPUT.PUT_LINE('Status     : ' || v_result);

EXCEPTION

   WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('Error: Student "' || v_name || '" does not exist.');

END;
/