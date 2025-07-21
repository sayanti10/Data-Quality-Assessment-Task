SELECT rowid,
       'job' AS column_name,
       job AS invalid_value,
       'Special characters not allowed' AS reason
FROM bank_full_with_errors_test
WHERE job GLOB '*[^a-zA-Z0-9 ._-]*'

UNION ALL

SELECT rowid,
       'marital' AS column_name,
       marital AS invalid_value,
       'Special characters not allowed' AS reason
FROM bank_full_with_errors_test
WHERE marital GLOB '*[^a-zA-Z0-9 ._-]*';
