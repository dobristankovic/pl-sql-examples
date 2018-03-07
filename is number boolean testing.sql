DECLARE
   retval      BOOLEAN;
   string_in   VARCHAR2 (32767);
   FUNCTION bool2char (bool IN BOOLEAN)
      RETURN VARCHAR2
   IS
   BEGIN
      IF bool
      THEN
         RETURN 'TRUE';
      ELSIF NOT bool
      THEN
         RETURN 'FALSE';
      ELSE
         RETURN 'NULL';
      END IF;
   END;
BEGIN
   string_in := '123456789'; -- Here change the input string in order to test it
   retval := is_number_boolean (string_in);
   DBMS_OUTPUT.put_line ('RetVal = ' || bool2char (retval));
   DBMS_OUTPUT.put_line ('');
   COMMIT;
END;
