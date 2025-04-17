SELECT COUNT(id) AS '日本のゴール数'
FROM goals
WHERE player_id BETWEEN 714 AND 736

-- 	WHERE 714 <= player_id AND player_id <= 736でも良さそう