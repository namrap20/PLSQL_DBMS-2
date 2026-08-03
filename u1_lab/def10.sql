
-- Write a PL/SQL block to delete the record of an employee for a given EID.
set serveroutput on 
declare
eid NUMBER(10) :=&eid;

begin
	delete from emp where  EMPID=eid;
	commit;
	dbms_output.put_line('data delete');
end;
/
