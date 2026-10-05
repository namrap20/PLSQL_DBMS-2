--Write a procedure that searches whether the given employee id is present or not in the table. If an employee is found then show its name otherwise raise appropriate error messages (Use both IN and OUT mode variables) and also write a PL/SQL block to call the procedure. 
create or replace procedure search_emp(xempid in
number,enm OUT char)
is
begin
select ename INTO enm from emp where
empid=xempid;
EXCEPTION
when no_Data_Found then
dbms_output.put_line('ID not found');
end search_emp;
/
begin
Exec proins(1 ,‘ DBMS’, ‘ Department Level ‘);
end;
/