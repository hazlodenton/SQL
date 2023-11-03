SELECT *
FROM startups
LIMIT 10;

SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(category) > 3
ORDER BY category DESC;

SELECT location, ROUND(AVG(employees), 0)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;