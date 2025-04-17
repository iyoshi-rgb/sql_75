-- SELECT p.kickoff, mc.name, ec.name, mc.ranking, ec.ranking
-- FROM pairings p
-- LEFT JOIN countries mc ON mc.id = p.my_country_id
-- LEFT JOIN countries ec ON ec.id = p.enemy_country_id
-- LEFT JOIN goals g ON g.pairing_id = p.id
-- WHERE mc.group_name = 'C' AND ec.group_name = 'C'

SELECT p1.kickoff, c1.name AS my_country, c2.name AS enemy_country,
    c1.ranking AS my_ranking, c2.ranking AS enemy_ranking,
    COUNT(g1.id) AS my_goals
FROM pairings p1
LEFT JOIN countries c1 ON c1.id = p1.my_country_id
LEFT JOIN countries c2 ON c2.id = p1.enemy_country_id
LEFT JOIN goals g1 ON p1.id = g1.pairing_id
WHERE c1.group_name = 'C' AND c2.group_name = 'C'
GROUP BY p1.kickoff, c1.name, c2.name, c1.ranking, c2.ranking
ORDER BY p1.kickoff, c1.ranking