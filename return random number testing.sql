DECLARE 
  RetVal NUMBER;
  NUMBER_IN NUMBER;
BEGIN 
  NUMBER_IN := 100; --return number from 1 to 100 (including)
  RetVal := RETURN_RANDOM_NUMBER ( NUMBER_IN );
  DBMS_OUTPUT.Put_Line('RetVal = ' || TO_CHAR(RetVal));
  DBMS_OUTPUT.Put_Line('');
  COMMIT; 
END; 