--w.a.p that accept principle amt, roi and number of year
set serveroutput on 
declare 
	price number:=&price;
	rate number:=&rate;
	year number:=&year;
	interest number;
begin
interest:=(price*rate*year)/100;
dbms_output.put_line('simple interest for item is'||interest);
end;
/