SELECT g.id, g.goal_time, p.name
FROM goals g
INNER JOIN players p ON g.player_id = p.id