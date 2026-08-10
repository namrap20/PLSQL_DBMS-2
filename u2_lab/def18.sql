-- Write a PL/SQL block to display data with the use of LIKE Operator using cursor FOR Loop. 
DECLARE
   -- Cursor selecting employees whose names match a pattern
   CURSOR c_emp IS
      SELECT empno, ename, deptno, sal
      FROM emp
      WHERE ename LIKE 'S%';   -- Using LIKE operator
BEGIN
   DBMS_OUTPUT.PUT_LINE('Employees whose names start with S:');
   DBMS_OUTPUT.PUT_LINE('-----------------------------------');

   -- Cursor FOR loop automatically opens, fetches, and closes
   FOR e IN c_emp LOOP
      DBMS_OUTPUT.PUT_LINE('Emp No: ' || e.empno ||
                           ', Name: ' || e.ename ||
                           ', Dept: ' || e.deptno ||
                           ', Salary: ' || e.sal);
   END LOOP;
END;
/
