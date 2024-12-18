--# Create all junction tables

--# Create a junction table for main buildings
CREATE TABLE building_group_junction (
building_group_id INT,
building_id VARCHAR(10),
PRIMARY KEY (building_group_id, building_id));


--# Create a junction table for Support Structures 
CREATE TABLE support_structure_group_junction (
support_structure_group_id INT,
support_structure_id VARCHAR(10),
PRIMARY KEY (support_structure_group_id, support_structure_id));


--# Create a junction table for support powers
CREATE TABLE support_powers_group_junction (
support_powers_group_id INT,
support_power_id VARCHAR(10),
PRIMARY KEY (support_powers_group_id, support_power_id));


--# Create a junction table for infantry units
CREATE TABLE infantry_group_junction (
infantry_group_id INT,
infantry_id VARCHAR(10),
PRIMARY KEY (infantry_group_id, infantry_id));



--# Create a junction table for vehicle units
CREATE TABLE vehicle_group_junction (
vehicle_group_id INT,
vehicle_id VARCHAR(10),
PRIMARY KEY (vehicle_group_id, vehicle_id));



--# Create a junction table for aircraft units
CREATE TABLE aircraft_group_junction (
aircraft_group_id INT,
aircraft_id VARCHAR(10),
PRIMARY KEY (aircraft_group_id, aircraft_id));



--# Create a junction table for naval units
CREATE TABLE naval_group_junction (
naval_group_id INT,
naval_unit_id VARCHAR(10),
PRIMARY KEY (naval_group_id, naval_unit_id));


