-- NUMERIC columns invalid checks
SELECT rowid, 'age' AS column_name, age AS invalid_value, 'Out of range or non-numeric' AS reason
FROM bank_full_with_errors_test
WHERE age GLOB '*[^0-9]*' OR CAST(age AS INTEGER) < 18 OR CAST(age AS INTEGER) > 95

UNION ALL
SELECT rowid, 'day' AS column_name, day AS invalid_value, 'Out of range or non-numeric' AS reason
FROM bank_full_with_errors_test
WHERE day GLOB '*[^0-9.]*' OR CAST(day AS INTEGER) < 1 OR CAST(day AS INTEGER) > 31

UNION ALL
SELECT rowid, 'duration' AS column_name, duration AS invalid_value, 'Out of range or non-numeric' AS reason
FROM bank_full_with_errors_test
WHERE duration GLOB '*[^0-9-]*' OR CAST(duration AS INTEGER) < 0

UNION ALL
SELECT rowid, 'campaign' AS column_name, campaign AS invalid_value, 'Out of range or non-numeric' AS reason
FROM bank_full_with_errors_test
WHERE campaign GLOB '*[^0-9]*' OR CAST(campaign AS INTEGER) < 1

UNION ALL
SELECT rowid, 'pdays' AS column_name, pdays AS invalid_value, 'Out of range or non-numeric' AS reason
FROM bank_full_with_errors_test
WHERE pdays GLOB '*[^0-9-]*' OR CAST(pdays AS INTEGER) < -1 OR CAST(pdays AS INTEGER) > 999

UNION ALL
SELECT rowid, 'previous' AS column_name, previous AS invalid_value, 'Out of range or non-numeric' AS reason
FROM bank_full_with_errors_test
WHERE previous GLOB '*[^0-9-]*' OR CAST(previous AS INTEGER) < 0 OR CAST(previous AS INTEGER) > 300

UNION ALL
SELECT rowid, 'balance' AS column_name, balance AS invalid_value, 'Non-numeric balance' AS reason
FROM bank_full_with_errors_test
WHERE balance GLOB '*[^0-9.-]*'


-- CATEGORICAL columns invalid checks
UNION ALL
SELECT rowid, 'job' AS column_name, job AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE job NOT IN ('admin.', 'unknown', 'unemployed', 'management', 'housemaid', 'entrepreneur', 
                  'student', 'blue-collar', 'self-employed', 'retired', 'technician', 'services')

UNION ALL
SELECT rowid, 'month' AS column_name, month AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE month NOT IN ('jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec')

UNION ALL
SELECT rowid, 'contact' AS column_name, contact AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE contact NOT IN ('unknown', 'telephone', 'cellular')

UNION ALL
SELECT rowid, 'education' AS column_name, education AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE education NOT IN ('unknown', 'secondary', 'primary', 'tertiary')

UNION ALL
SELECT rowid, 'poutcome' AS column_name, poutcome AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE poutcome NOT IN ('unknown', 'other', 'failure', 'success')

UNION ALL
SELECT rowid, 'housing' AS column_name, housing AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE housing NOT IN ('yes', 'no')

UNION ALL
SELECT rowid, 'loan' AS column_name, loan AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE loan NOT IN ('yes', 'no')

UNION ALL
SELECT rowid, 'marital' AS column_name, marital AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE marital NOT IN ('married', 'divorced', 'single')

UNION ALL
SELECT rowid, 'default' AS column_name, "default" AS invalid_value, 'Invalid domain' AS reason
FROM bank_full_with_errors_test
WHERE "default" NOT IN ('yes', 'no');
