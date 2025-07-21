SELECT 'job' AS column_name, COUNT(*) FROM bank_full WHERE job GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'marital', COUNT(*) FROM bank_full WHERE marital GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'education', COUNT(*) FROM bank_full WHERE education GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'default', COUNT(*) FROM bank_full WHERE "default" GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'housing', COUNT(*) FROM bank_full WHERE housing GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'loan', COUNT(*) FROM bank_full WHERE loan GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'contact', COUNT(*) FROM bank_full WHERE contact GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'month', COUNT(*) FROM bank_full WHERE month GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'poutcome', COUNT(*) FROM bank_full WHERE poutcome GLOB '*[^a-zA-Z0-9 .-]*'
UNION
SELECT 'y', COUNT(*) FROM bank_full WHERE y GLOB '*[^a-zA-Z0-9 .-]*';
