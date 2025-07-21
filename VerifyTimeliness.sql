SELECT 
    COUNT(*) AS Invalid_timeliness_rows
FROM bank_full
WHERE month NOT IN ('jan', 'feb', 'mar', 'apr', 'may', 'jun');
