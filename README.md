# pl-sql-examples

This is repository for Oracle PL/SQL examples that can be practical for day to day work.

1. Function for returning of random number, based on Oracle PL/SQL DBMS_RANDOM built in package. 
   Function file is RETURN_RANDOM_NUMBER.fnc, and the SQL script for custom testing of the function is return random number testing.sql
   First the function must be created by executing of the RETURN_RANDOM_NUMBER.fnc file, and after that it can be tested.
   
2. Function for returning boolean values after checking if the input string is consisting of alpha or numeric characters.
   Function file is IS_NUMBER_BOOLEAN.fnc, and the SQL script for custom testing is is number boolean testing.sql
   If all the characters from the input string are numeric, the function will return TRUE, otherwise it will return FALSE.
   
