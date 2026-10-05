--Write a function that returns the balance for a given account number. (Create ACCOUNT table with ACNO, CNAME, BNAME, BALANCE columns using appropriate data types) 
CREATE OR REPLACE FUNCTION get_balance(p_acno IN ACCOUNT.ACNO%TYPE)
RETURN ACCOUNT.BALANCE%TYPE IS
    v_balance ACCOUNT.BALANCE%TYPE;
BEGIN
    SELECT BALANCE 
    INTO v_balance
    FROM ACCOUNT
    WHERE ACNO = p_acno;

    RETURN v_balance;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END;
/
