--Write a PL/SQL block which displays the gross salary of employees as per user input EID. (Consider an EMP table with EID, EName, Deptno, Deptname Gender, Age, BasicSal) with appropriate data types.) Gross_Salary: BASICSAL + (DA + HRA + Medical) – PF. Rules: HRA = 15% of basic, DA = 50% of basic, Medical = Rs. 500, PF = 10% of basic., ) 
set serveroutput on 
declare 
	xeid     NUMBER(5);
	bsal          ;
	hra_amt    NUMBER;
 	da_amt     NUMBER;
 	medical_amt NUMBER := 500;
	pf_amt     NUMBER;
	gross_sal  NUMBER;
begin
end;
/