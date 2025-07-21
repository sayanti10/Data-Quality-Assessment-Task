SELECT COUNT(*)
FROM bank_full WHERE 
-- Numeric columns checks
 age < 0 OR age IS NULL
 OR balance IS NULL
 OR day < 1 OR day > 31 OR day IS NULL
 OR duration < 0 OR duration IS NULL
 OR campaign < 0 OR campaign IS NULL
 OR pdays < -1 OR pdays IS NULL
 OR previous < 0 OR previous IS NULL
 -- Correct categorical columns checks based on your description
 OR job NOT IN ('admin.', 'unknown', 'unemployed', 'management', 'housemaid', 'entrepreneur', 'student', 'blue-collar', 'self-employed', 
 'retired', 'technician', 'services')
 OR marital NOT IN ('single', 'married', 'divorced')
 OR education NOT IN ('unknown', 'secondary', 'primary', 'tertiary')
 OR "default" NOT IN ('yes', 'no')
 OR housing NOT IN ('yes', 'no')
 OR loan NOT IN ('yes', 'no')
 OR contact NOT IN ('unknown', 'telephone', 'cellular')
 OR month NOT IN ('jan', 'feb', 'mar', 'apr', 'may', 'jun','jul', 'aug', 'sep', 'oct', 'nov', 'dec')
 OR poutcome NOT IN ('unknown', 'other', 'failure', 'success')
 OR y NOT IN ('yes', 'no');
