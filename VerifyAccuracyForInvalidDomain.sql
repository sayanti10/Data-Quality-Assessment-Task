SELECT rowid, 'job' AS column_name, job AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE job NOT IN ('admin.', 'unknown', 'unemployed', 'management', 'housemaid',
                  'entrepreneur', 'student', 'blue-collar', 'self-employed',
                  'retired', 'technician', 'services')

UNION ALL

SELECT rowid, 'marital' AS column_name, marital AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE marital NOT IN ('married', 'divorced', 'single')

UNION ALL

SELECT rowid, 'education' AS column_name, education AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE education NOT IN ('unknown', 'secondary', 'primary', 'tertiary')

UNION ALL

SELECT rowid, 'default' AS column_name, "default" AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE "default" NOT IN ('yes', 'no')

UNION ALL

SELECT rowid, 'housing' AS column_name, housing AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE housing NOT IN ('yes', 'no')

UNION ALL

SELECT rowid, 'loan' AS column_name, loan AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE loan NOT IN ('yes', 'no')

UNION ALL

SELECT rowid, 'contact' AS column_name, contact AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE contact NOT IN ('unknown', 'telephone', 'cellular')

UNION ALL

SELECT rowid, 'month' AS column_name, month AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE month NOT IN ('jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec')

UNION ALL

SELECT rowid, 'poutcome' AS column_name, poutcome AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE poutcome NOT IN ('unknown', 'other', 'failure', 'success')

UNION ALL

SELECT rowid, 'y' AS column_name, y AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE y NOT IN ('yes', 'no');
