SELECT c.name, COUNT(g.id)
FROM goals g
LEFT JOIN pairings p ON g.pairing_id = p.id
LEFT JOIN countries c ON c.id = p.my_country_id
WHERE p.id = 39 OR p.id = 103
GROUP BY c.name