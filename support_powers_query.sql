
-- Query the support powers of Allies American Group and Soviet
SELECT s.support_powers_group_name AS Group, support_power_name AS support_power
FROM support_powers_group AS s
INNER JOIN support_powers_group_junction AS sj
	ON s.support_powers_group_id = sj.support_powers_group_id
INNER JOIN support_powers AS sp
	ON sj.support_power_id = sp.support_power_id
WHERE s.support_powers_group_name IN ('Allies American Group', 'Soviet')