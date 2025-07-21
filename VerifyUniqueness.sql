SELECT COUNT(*) AS duplicate_count
FROM bank_full
GROUP BY 
age, job, marital, education, "default", balance, housing, loan, contact,
day, month, duration, campaign, pdays, previous, poutcome, y
HAVING COUNT(*) > 1;
