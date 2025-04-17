SELECT p.name, p.position, p.club, COUNT(g.id) AS 'ゴール数'
FROM players p
LEFT JOIN goals g ON g.player_id = p.id
GROUP BY p.id
ORDER BY ゴール数 DESC

-- 模範解答
-- SELECT p.name, p.position, p.club, COUNT(g.id) AS 'ゴール数'
-- FROM players p
-- LEFT JOIN goals g ON g.player_id = p.id
-- GROUP BY p.id, p.name, p.position, p.club
-- ORDER BY ゴール数 DESC