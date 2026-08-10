-- Write a PL/SQL block that uses a cursor attribute SQL%ROWCOUNT to raise the basic salary of employees by 10% that are working in department number 10 and also display the appropriate message based on the existence of the record in the EMP table. (Use Implicit Cursor) 
DECLARE
BEGIN
   -- Raise salary of employees in department 10 by 10%
   UPDATE emp
   SET sal = sal * 1.10
   WHERE deptno = 10;

   -- Check how many rows were affected
   IF SQL%ROWCOUNT > 0 THEN
      DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || 
                           ' employee(s) salary updated successfully.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('No employees found in department 10.');
   END IF;
END;
/
