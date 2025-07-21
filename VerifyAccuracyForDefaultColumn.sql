SELECT rowid, 
       'default' AS column_name, 
       "default" AS invalid_value, 
       'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE "default" NOT IN ('yes', 'no');
