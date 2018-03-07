CREATE OR REPLACE FUNCTION is_number_boolean_2 (string_in IN VARCHAR2)
   RETURN BOOLEAN
IS
BEGIN
   FOR i IN 1 .. LENGTH (string_in)
   LOOP
      IF SUBSTR (string_in, i, 1) NOT IN ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9')
      THEN
         RETURN FALSE;
      END IF;
   END LOOP;

   RETURN TRUE;
EXCEPTION
   WHEN OTHERS -- Custom change
   THEN
      RETURN FALSE;
END;
/
