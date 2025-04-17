SELECT c.name, p.name, g.goal_time
FROM players p
JOIN countries c ON c.id = p.country_id
JOIN goals g ON g.player_id = p.id

-- SELECT c.name, p.name, g.goal_time
-- FROM goals g
-- JOIN players p ON g.player_id = p.id
-- JOIN countries c ON p.country_id = c.id