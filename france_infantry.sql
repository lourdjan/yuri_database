-- Query all Infantry Units of France (Spy not stolen other faction technologies)
SELECT country_name AS country, infantry_name AS infantry
FROM countries AS c
INNER JOIN country_tech AS ct
	ON c.country_id = ct.country_id
INNER JOIN infantry_group AS ig
	ON ct.infantry_group_id = ig.infantry_group_id
INNER JOIN infantry_group_junction AS igj
	ON ig.infantry_group_id = igj.infantry_group_id
INNER JOIN infantry_units AS i
	ON igj.infantry_id = i.infantry_id
WHERE country_name = 'France'
	AND tech_type = 'faction_common';