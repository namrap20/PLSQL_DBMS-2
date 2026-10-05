-- Write a function that returns the square of the given number. Execute the function using a separate PL/SQL block and on the command line.
set serveroutput on
declare
id number:=&id;
nm char(50);
begin
search_emp(id,nm);
dbms_output.put_line('Ename:'||nm);
end;
/