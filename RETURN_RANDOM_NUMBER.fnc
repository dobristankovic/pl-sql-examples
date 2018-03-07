/* Formatted on 07.03.2018 13:17:04 (QP5 v5.269.14213.34746) */
CREATE OR REPLACE FUNCTION return_random_number (number_in IN NUMBER)
   RETURN NUMBER
IS
   number_1   CONSTANT NUMBER := 1;
   number_out          NUMBER;
BEGIN
   -- Return RANDOM number between 1  and number_in
   number_out := ABS (MOD (DBMS_RANDOM.random, number_in)) + number_1;
   DBMS_RANDOM.TERMINATE;                                        -- Obligatory
   RETURN number_out;
EXCEPTION
   WHEN OTHERS
   THEN
      RETURN -1;                           -- Return custom defined error code
END;
/
