SELECT COUNT(*) AS inconsistent_rows
FROM bank_full WHERE 
-- Numeric columns: Must be >= 0 or follow rules
age < 0 OR
balance IS NULL OR
day < 1 OR day > 31 OR
duration < 0 OR
campaign < 0 OR
pdays < -1 OR
previous < 0 OR
-- Categorical columns: Must be in expected domain
job NOT IN ('admin.', 'technician', 'blue-collar', 'services', 'management', 'unemployed','self-employed', 'entrepreneur', 'housemaid', 'retired', 'student', 'unknown') OR
marital NOT IN ('single', 'married', 'divorced') OR
education NOT IN ('primary', 'secondary', 'tertiary', 'unknown') OR
"default" NOT IN ('yes', 'no') OR
housing NOT IN ('yes', 'no') OR
loan NOT IN ('yes', 'no') OR
contact NOT IN ('cellular', 'telephone', 'unknown') OR
month NOT IN ('jan','feb','mar','apr','may','jun','jul','aug','sep','oct','nov','dec') OR
poutcome NOT IN ('unknown', 'other', 'failure', 'success') OR
y NOT IN ('yes', 'no');
