SELECT c.group_name , COUNT(g.id)
FROM goals g
INNER JOIN pairings p ON p.id = g.pairing_id
INNER JOIN countries c ON c.id = p.my_country_id
WHERE p.kickoff BETWEEN '2014-6-13' AND '2014-6-27'
GROUP BY c.group_name

-- WHERE BYと書いてしまっていて