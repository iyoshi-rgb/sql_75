SELECT p1.position, p1.最大身長, p2.name, p2.club
FROM (
    SELECT position, MAX(height) AS 最大身長
    FROM players
    GROUP BY position
    ) p1
LEFT JOIN players p2 ON p1.最大身長 = p2.height AND p1.position = p2.position