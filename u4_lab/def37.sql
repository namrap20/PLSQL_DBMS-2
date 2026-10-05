--Write a simple procedure that increases the salary of employees for the given department not by percentage inputted by the user using the IN parameter.
CREATE OR REPLACE PROCEDURE increase_salary (
    p_deptno  IN NUMBER,
    p_percent IN NUMBER
) AS
BEGIN
    UPDATE EMP
    SET SAL = SAL + (SAL * (p_percent / 100))
    WHERE DEPTNO = p_deptno;

    COMMIT;
END;
/