-- SELECT countries.name, players.name, uniform_num FROM countries
-- INNER JOIN players ON players.country_id = countries.id

SELECT c.name, p.name, p.uniform_num
FROM players p
JOIN countries c ON c.id = p.country_id
