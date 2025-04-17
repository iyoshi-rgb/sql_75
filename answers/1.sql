SELECT group_name, MIN(ranking) AS 'ランキング最上位', MAX(ranking) 'ランキング最下位'
FROM countries
GROUP BY group_name