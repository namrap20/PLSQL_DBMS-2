--Write a simple procedure without any parameter that updates the values in the EMP table.
SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE update_emp;
IS
BEGIN
    UPDATE EMP
    SET SALARY = SALARY + 1000;

    DBMS_OUTPUT.PUT_LINE('Employee salary updated successfully');
END;
/

 