SELECT p.uniform_num, p.position, p.name, p.height
FROM players p
WHERE p.height < (SELECT AVG(p1.height) FROM players p1)

-- SELECT uniform_num, position, name, height
-- FROM players
-- WHERE height < (SELECT AVG(height) FROM players)