SELECT COUNT(*) AS incomplete_rows
FROM bank_full
WHERE 
age IS NULL OR
job IS NULL OR
marital IS NULL OR
education IS NULL OR
"default" IS NULL OR
balance IS NULL OR
housing IS NULL OR
loan IS NULL OR
contact IS NULL OR
day IS NULL OR
month IS NULL OR
duration IS NULL OR
campaign IS NULL OR
pdays IS NULL OR
previous IS NULL OR
poutcome IS NULL OR
y IS NULL;
