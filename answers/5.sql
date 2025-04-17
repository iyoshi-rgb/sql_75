-- SELECT p.kickoff AS '日時', c.name AS '国名', c1.name AS '国名２'
-- FROM pairings p
-- INNER JOIN countries c ON p.my_country_id = c.id
-- INNER JOIN countries c1 ON p.enemy_country_id = c1.id
-- ORDER BY kickoff

SELECT p.kickoff AS '日時', c.name AS '国名', c1.name AS '国名２'
FROM pairings p
LEFT JOIN countries c ON p.my_country_id = c.id
LEFT JOIN countries c1 ON p.enemy_country_id = c1.id
ORDER BY kickoff