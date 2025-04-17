SELECT p.position, MAX(p.height) AS '最大身長', (SELECT p1.name FROM players p1 WHERE MAX(p.height) = p1.height AND p.position = p1.position) AS '名前'
FROM players p
GROUP BY p.position