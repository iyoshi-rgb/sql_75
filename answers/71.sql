-- SELECT id, position, name, height, weight FROM players
-- WHERE weight > 95 OR height > 195
-- UNION ALL
-- SELECT id, position, name, height, weight FROM players
-- WHERE weight > 95 AND height > 195
-- ORDER BY id

-- UNION ALLは重複を許す https://www.sejuku.net/blog/74750
-- 上のSQLでも動いたが、正だそう（模範解答）は下

SELECT id, position, name, height, weight
FROM players
WHERE height > 195
UNION ALL
SELECT id, position, name, height, weight
FROM players
WHERE weight > 95
ORDER BY id