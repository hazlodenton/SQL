SELECT *
FROM hacker_news
LIMIT 5;

SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

SELECT title, SUM(score)
FROM hacker_news;

SELECT user, score
FROM hacker_news
GROUP BY score
HAVING score >= 200
ORDER BY 2 DESC;

-- SELECT user, SUM(score)
-- FROM hacker_news
-- GROUP BY user
-- HAVING SUM(score) > 200
-- ORDER BY 2 DESC;

SELECT ROUND((((517 + 309 + 304 + 282) / 6366.0) * 100),0);

SELECT user, count(*)
FROM hacker_news
WHERE url LIKE 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
GROUP BY 1
ORDER BY 2 DESC;

-- SELECT CASE
--    WHEN url LIKE '%github.com%' THEN 'GitHub'
--    WHEN url LIKE '%medium.com%' THEN 'Medium'
--    WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
--    ELSE 'Other'
--   END AS 'Source'
--   COUNT(*)
-- FROM hacker_news
-- GROUP BY 1;

SELECT timestamp
FROM hacker_news
LIMIT 3;

SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 4;

SELECT strftime('%H', timestamp), 
   AVG(score),
   COUNT(*)
FROM hacker_news
GROUP BY 1
ORDER BY 1;