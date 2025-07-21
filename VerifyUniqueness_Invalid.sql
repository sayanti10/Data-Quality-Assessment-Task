SELECT * 
FROM bank_full_with_errors_test
GROUP BY 
age, job, marital, education, "default", balance, housing, loan, contact,
day, month, duration, campaign, pdays, previous, poutcome, y
HAVING COUNT(*) > 1;

SELECT *
FROM bank_full_with_errors_test
WHERE (age, job, marital, education, "default", balance, housing, loan, contact,
       day, month, duration, campaign, pdays, previous, poutcome, y) IN 
    (SELECT age, job, marital, education, "default", balance, housing, loan, contact,
            day, month, duration, campaign, pdays, previous, poutcome, y
     FROM bank_full_with_errors_test
     GROUP BY age, job, marital, education, "default", balance, housing, loan, contact,
              day, month, duration, campaign, pdays, previous, poutcome, y
     HAVING COUNT(*) > 1);
