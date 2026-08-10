--Write a PL/SQL block using a parameterized cursor that displays the department wise basic salary of each employee and department wise total gross salary. (Parameterized Cursor and Use Cursor For Loop) 
DECLARE
   -- Parameterized cursor: takes department number as input
   CURSOR c_emp (p_deptno NUMBER) IS
      SELECT empno, ename, sal
      FROM emp
      WHERE deptno = p_deptno;

   v_total_sal NUMBER;  -- to hold department-wise total salary
BEGIN
   -- Loop through each department present in EMP table
   FOR d IN (SELECT DISTINCT deptno FROM emp) LOOP
      v_total_sal := 0;

      DBMS_OUTPUT.PUT_LINE('Department Number: ' || d.deptno);
      DBMS_OUTPUT.PUT_LINE('-----------------------------------');

      -- Cursor FOR loop for employees of this department
      FOR e IN c_emp(d.deptno) LOOP
         DBMS_OUTPUT.PUT_LINE('Emp No: ' || e.empno ||
                              ', Name: ' || e.ename ||
                              ', Basic Salary: ' || e.sal);

         -- Accumulate salary for total
         v_total_sal := v_total_sal + e.sal;
      END LOOP;

      DBMS_OUTPUT.PUT_LINE('Total Gross Salary for Dept ' || d.deptno ||
                           ' = ' || v_total_sal);
      DBMS_OUTPUT.PUT_LINE('===================================');
   END LOOP;
END;
/
