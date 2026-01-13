-- overview of data
SELECT *
FROM cafe
LIMIT 20;

-- total row count
SELECT count(*) AS total_rows
from cafe;

-- check for duplicate transactions
SELECT transaction_id, COUNT(*)
FROM cafe
GROUP BY transaction_id
HAVING COUNT(*) > 1;

-- min, max, average check
SELECT
  MIN(total_spent),
  MAX(total_spent),
  AVG(total_spent)
FROM cafe;

-- check different payment methods and counts
SELECT DISTINCT payment_method, count(*)
FROM cafe
GROUP BY payment_method;

-- earliest and latest transaction dates
SELECT 
min(transaction_date) as earliest_date,
max(transaction_date) as latest_date
from cafe;

-- missing data counts
SELECT
  COUNT(*) - COUNT(payment_method) AS missing_payment_method,
  COUNT(*) - COUNT(location) AS missing_location,
  COUNT(*) - COUNT(total_spent) AS missing_total_spent
FROM cafe;

-- total revenue
SELECT
  SUM(total_spent) AS total_revenue
FROM cafe;

-- average transation sale 
SELECT
  AVG(total_spent) AS avg_transaction_value
FROM cafe;

-- performance by item
SELECT
  item,
  SUM(total_spent) AS revenue
FROM cafe
GROUP BY item
ORDER BY revenue DESC;

-- transactions per item
SELECT 
item,
COUNT(*) AS transactions
FROM cafe
GROUP BY item
ORDER BY transactions DESC;

-- performance by location
SELECT
  location,
  SUM(total_spent) AS revenue
FROM cafe
WHERE location IS NOT NULL
GROUP BY location
ORDER BY revenue DESC;

-- transactions by payment type
SELECT
  payment_method,
  COUNT(*) AS transactions
FROM cafe
WHERE payment_method IS NOT NULL
GROUP BY payment_method
ORDER BY transactions DESC;

-- revenue by payment method
SELECT
  payment_method,
  SUM(total_spent) AS revenue
FROM cafe
WHERE payment_method IS NOT NULL
GROUP BY payment_method
ORDER BY revenue DESC;

-- daily revenue
SELECT
  transaction_date,
  SUM(total_spent) AS daily_revenue
FROM cafe
GROUP BY transaction_date
ORDER BY transaction_date;

-- where transactions don't match quantity*price
SELECT
  transaction_id,
  quantity,
  price_per_unit,
  total_spent,
  quantity * price_per_unit AS calculated_total
FROM cafe
WHERE total_spent IS NOT NULL
  AND total_spent <> quantity * price_per_unit;

-- outlier transactions
SELECT *
FROM cafe
WHERE total_spent > (
  SELECT AVG(total_spent) + 3 * STDDEV(total_spent)
  FROM cafe
);



