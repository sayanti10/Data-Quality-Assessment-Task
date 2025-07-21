-- 1. Integrity Rule: If pdays = -1, previous must be 0
SELECT 'pdays = -1 but previous not 0' AS integrity_issue, COUNT(*) AS invalid_count
FROM bank_full
WHERE pdays = -1 AND previous != 0

UNION ALL

-- 2. Integrity Rule: If duration = 0 then y should be 'no'
SELECT 'duration = 0 but y not no' AS integrity_issue, COUNT(*) AS invalid_count
FROM bank_full
WHERE duration = 0 AND y != 'no'

