-- Query all of Yuri's Vehicle units and Naval units

-- Query all Yuri's vehicle unit
WITH yuri_vehicle AS(SELECT c.country_name AS faction, vehicle_name AS vehicles, 'Vehicle' AS unit_type
FROM countries AS c
INNER JOIN country_tech AS ct
	ON c.country_id = ct.country_id
INNER JOIN vehicle_group AS vg
	ON ct.vehicle_group_id = vg.vehicle_group_id
INNER JOIN vehicle_group_junction AS vgj
	ON vg.vehicle_group_id = vgj.vehicle_group_id
INNER JOIN vehicle_units AS v
	ON vgj.vehicle_id = v.vehicle_id
WHERE country_name = 'Yuri'
),

-- Query all Yuri's naval unit
yuri_naval AS (SELECT c.country_name AS faction, naval_unit_name AS naval_units, 'Naval' AS unit_type
FROM countries AS c
INNER JOIN country_tech AS ct
	ON c.country_id = ct.country_id
INNER JOIN naval_group AS ng
	ON ct.naval_group_id = ng.naval_group_id
INNER JOIN naval_group_junction AS ngj
	ON ng.naval_group_id = ngj.naval_group_id
INNER JOIN naval_units AS n
	ON ngj.naval_unit_id = n.naval_unit_id
WHERE country_name = 'Yuri')

-- Union All Yuri's units
SELECT faction, vehicles, unit_type
FROM yuri_vehicle
UNION ALL
SELECT faction, naval_units, unit_type
FROM yuri_naval;