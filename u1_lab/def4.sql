-- Write a PL/SQL block to accept product name, qty and price from user and then calculate discount in Rs. based on the given (%).

set serveroutput on 

declare

    v_prod   varchar2(50) := '&Product';
    v_qty    number := &Quantity;
    v_price  number:= &Price;
    v_disc   number:= &Discount_Percent;
    v_total  number;
    v_save   number;
BEGIN
    v_total := v_qty * v_price;
    v_save  := v_total * (v_disc / 100);

    DBMS_OUTPUT.PUT_LINE('Product: ' || v_prod);
    DBMS_OUTPUT.PUT_LINE('Total Amount: Rs. ' || v_total);
    DBMS_OUTPUT.PUT_LINE('Discount:     Rs. ' || v_save);
    DBMS_OUTPUT.PUT_LINE('Net Payable:  Rs. ' || (v_total - v_save));
END;
/