SELECT g.id, g.goal_time, (SELECT name FROM players WHERE id = g.player_id ) AS name
FROM goals g