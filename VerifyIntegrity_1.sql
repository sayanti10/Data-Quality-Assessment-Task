SELECT age,job,housing,loan,
CASE 
     WHEN housing = 'no' AND loan = 'yes' 
	 THEN 'Need Business Review'
     ELSE 'OK'
     END AS Intigrity_Status
FROM bank_full;



SELECT 
CASE 
	WHEN housing = 'no' AND loan = 'yes' 
	THEN 'Need Business Review' 
	ELSE 'OK' 
	END AS status,
COUNT(*) AS total_count
FROM bank_full
GROUP BY status;


