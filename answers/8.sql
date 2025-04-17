SELECT p.position , COUNT(g.id)
FROM players p
LEFT JOIN goals g ON g.player_id = p.id
GROUP BY p.position
ORDER BY COUNT(g.id) DESC