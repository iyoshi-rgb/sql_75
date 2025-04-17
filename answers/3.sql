SELECT c.name AS '国名', AVG(p.height) AS '平均身長'
FROM countries c
INNER JOIN players p ON p.country_id = c.id
GROUP BY c.id
ORDER BY AVG(p.height) DESC