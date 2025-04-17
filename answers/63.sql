SELECT kickoff, mc.name AS 'my_country', ec.name AS 'enemy_country'
FROM pairings p
LEFT JOIN countries mc ON mc.id = p.my_country_id
LEFT JOIN countries ec ON ec.id = p.enemy_country_id