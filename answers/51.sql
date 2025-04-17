-- SELECT
-- CASE WHEN player_id IS NULL THEN 9999 ELSE player_id AS player_id, goal_time
-- FROM goals

-- CASEのEND忘れ

SELECT
CASE WHEN player_id IS NULL THEN 9999 ELSE player_id END AS player_id, goal_time
FROM goals