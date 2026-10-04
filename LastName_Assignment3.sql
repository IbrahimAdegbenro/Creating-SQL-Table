SELECT * FROM public.customer_spending
SELECT sub_category FROM customer_spending
Question 1
SELECT category, SUM(revenue)AS total_revenue FROM customer_spending
WHERE
sale_year=2016
GROUP BY category
ORDER BY category ASC;
Question 2
SELECT sub_category
ROUND AVG(unit_price) AS avg_unit_price
ROUND AVG(unit_cost) AS avg_unit_cost FROM customer_spending
GROUP BY 
sub_category
ORDER BY
margin DESC;
QUESTION 3
SELECT sale_year, COUNT(gender) AS total_female_buyers
FROM customer_spending
WHERE gender='Female' AND category = 'Clothing'
GROUP BY sale_year
ORDER BY sale_year;
QUESTION 4

QUESTION 5
SELECT country FROM customer_spending
WHERE age BETWEEN 18 AND 25
GROUP BY country
HAVING
COUNT(*) > 900;

