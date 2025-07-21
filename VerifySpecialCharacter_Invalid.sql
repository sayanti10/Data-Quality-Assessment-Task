SELECT 'job' AS column_name, COUNT(*) FROM bank_full_with_errors_test WHERE job GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'marital', COUNT(*) FROM bank_full_with_errors_test WHERE marital GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'education', COUNT(*) FROM bank_full_with_errors_test WHERE education GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'default', COUNT(*) FROM bank_full_with_errors_test WHERE "default" GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'housing', COUNT(*) FROM bank_full_with_errors_test WHERE housing GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'loan', COUNT(*) FROM bank_full_with_errors_test WHERE loan GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'contact', COUNT(*) FROM bank_full_with_errors_test WHERE contact GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'month', COUNT(*) FROM bank_full_with_errors_test WHERE month GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'poutcome', COUNT(*) FROM bank_full_with_errors_test WHERE poutcome GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'y', COUNT(*) FROM bank_full_with_errors_test WHERE y GLOB '*[^a-zA-Z0-9 .-]*';
