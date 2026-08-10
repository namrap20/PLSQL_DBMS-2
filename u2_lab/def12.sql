--Write a PL/SQL block that uses a cursor attribute %ISOPEN and %NOTFOUND to raise the basic salary of employees of department number 20 by 5% and also display the appropriate message based on the existence of the record in the EMP table. Whenever any such raise is given to the employees, a record for the same is maintained in the emp_update table. (Perform using both Implicit and Explicit Cursor) 
DECLARE
BEGIN
   -- Raise salary of employees in department 20 by 5%
   UPDATE emp
   SET sal = sal * 1.05
   WHERE deptno = 20;

   -- Check if any rows were updated
   IF SQL%NOTFOUND THEN
      DBMS_OUTPUT.PUT_LINE('No employees found in department 20.');
   ELSE
      DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || 
                           ' employee(s) salary updated successfully.');

      -- Maintain record in emp_update table
      INSERT INTO emp_update(update_date, deptno, remarks)
      VALUES (SYSDATE, 20, 'Salary raised by 5% for employees of dept 20');
   END IF;
END;
/
