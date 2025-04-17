SELECT p.name, p.position, p.club, (SELECT COUNT(id) FROM goals g WHERE p.id = g.player_id) AS 'ゴール数'
FROM players p
ORDER BY ゴール数 DESC