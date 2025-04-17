SELECT g.goal_time, p.uniform_num, p.position, p.name
FROM players p
RIGHT OUTER JOIN goals g ON g.player_id = p.id