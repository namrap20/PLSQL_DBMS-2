-- 24) Write a PL/SQL block to display the salary of that employee whose age is 50 years otherwise display appropriate messages using exception handling. 

set serveroutput on

declare

    en varchar2(50);
    sal number(10,2);
    
begin

    select ename, BASICSAL INTO en,sal from employee where age>=50;
    dbms_output.put_line('Employee Name: '||en||'Salary '||sal);

EXCEPTION

    WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('Employee '||en||'above 50 is not available in table');

end;
/