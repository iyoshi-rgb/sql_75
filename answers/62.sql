SELECT c.name AS country_name, g.goal_time, p.position, p.name
FROM goals g
LEFT OUTER JOIN players p ON g.player_id = p.id
LEFT OUTER JOIN countries c ON c.id = p.country_id