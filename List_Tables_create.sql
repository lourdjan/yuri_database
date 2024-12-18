--# Create all List Tables


--# Create the Sequence for faction_id
CREATE SEQUENCE faction_id_seq START 1;


--# Create table for factions
CREATE TABLE factions (
faction_id VARCHAR(10) DEFAULT 'FA' || LPAD(NEXTVAL('faction_id_seq')::TEXT, 3, '0') PRIMARY KEY,
faction_name VARCHAR(255) NOT NULL,
faction_color VARCHAR(50),
n_country_affiliates INT,
military_description TEXT);


--# Create the Sequence for country_id
CREATE SEQUENCE country_id_seq START 1;


--# Create table for countries
CREATE TABLE countries (
country_id VARCHAR(10) DEFAULT 'COID' || LPAD(NEXTVAL('country_id_seq')::TEXT, 3, '0') PRIMARY KEY,
faction_id VARCHAR(10) NOT NULL,
country_name VARCHAR(255) NOT NULL,
special_tech TEXT);


--# Create the Sequence for building_id
CREATE SEQUENCE building_id_seq START 1;


--# Create table for main buildings
CREATE TABLE main_buildings (
building_id VARCHAR(10) DEFAULT 'BUID' || LPAD(NEXTVAL('building_id_seq')::TEXT, 3, '0') PRIMARY KEY,
building_name VARCHAR(255) NOT NULL,
tech_level INT NOT NULL,
hit_points INT NOT NULL,
armor_type TEXT NOT NULL,
cost_in_dollars NUMERIC(10, 2),
build_time_in_seconds INT NOT NULL,
power_consumption INT,
can_be_captured BOOLEAN NOT NULL,
tech_type VARCHAR(50) NOT NULL,
role_description TEXT);


--# Create the Sequence for support_structure_id
CREATE SEQUENCE support_structure_id_seq START 1;


--# Create table for support structures
CREATE TABLE support_structures (
support_structure_id VARCHAR(10) DEFAULT 'SID' || LPAD(NEXTVAL('support_structure_id_seq')::TEXT, 3, '0') PRIMARY KEY,
support_structure_name VARCHAR(255) NOT NULL,
tech_level INT NOT NULL,
hit_points INT NOT NULL,
armor_type TEXT NOT NULL,
cost_in_dollars NUMERIC(10, 2),
build_time_in_seconds INT NOT NULL,
can_ground_attack BOOLEAN NOT NULL,
can_air_attack BOOLEAN NOT NULL,
power_consumption INT,
tech_type VARCHAR(50) NOT NULL,
role_description TEXT);


--# Create the Sequence for support_power_id
CREATE SEQUENCE support_power_id_seq START 1;


--# Create table for support powers
CREATE TABLE support_powers (
support_power_id VARCHAR(10) DEFAULT 'SPID' || LPAD(NEXTVAL('support_power_id_seq')::TEXT, 3, '0') PRIMARY KEY,
support_power_name VARCHAR(255) NOT NULL,
tech_type VARCHAR(50) NOT NULL);



--# Create the Sequence for infantry_id
CREATE SEQUENCE infantry_id_seq START 1;


--# Create table for infantry units
CREATE TABLE infantry_units (
infantry_id VARCHAR(10) DEFAULT 'IFID' || LPAD(NEXTVAL('infantry_id_seq')::TEXT, 3, '0') PRIMARY KEY,
infantry_name VARCHAR(255) NOT NULL,
tech_level INT NOT NULL,
hit_points INT NOT NULL,
is_unit_amphibious BOOLEAN NOT NULL,
cost_in_dollars NUMERIC(10, 2),
build_time_in_seconds INT NOT NULL,
can_ground_attack BOOLEAN NOT NULL,
can_air_attack BOOLEAN NOT NULL,
tech_type VARCHAR(50) NOT NULL);



--# Create the Sequence for vehicle_id
CREATE SEQUENCE vehicle_id_seq START 1;


--# Create table for vehicle units
CREATE TABLE vehicle_units (
vehicle_id VARCHAR(10) DEFAULT 'VEID' || LPAD(NEXTVAL('vehicle_id_seq')::TEXT, 3, '0') PRIMARY KEY,
vehicle_name VARCHAR(255) NOT NULL,
tech_level INT NOT NULL,
hit_points INT NOT NULL,
is_unit_amphibious BOOLEAN NOT NULL,
cost_in_dollars NUMERIC(10, 2),
build_time_in_seconds INT NOT NULL,
can_ground_attack BOOLEAN NOT NULL,
can_air_attack BOOLEAN NOT NULL,
tech_type VARCHAR(50) NOT NULL);



--# Create the sequence for aircraft units
CREATE SEQUENCE aircraft_id_seq START 1;


--# Create table for aircraft units
CREATE TABLE aircraft_units (
aircraft_id VARCHAR(10) DEFAULT 'AID' || LPAD(NEXTVAL('aircraft_id_seq')::TEXT, 3, '0') PRIMARY KEY,
aircraft_name VARCHAR(255) NOT NULL,
tech_level INT NOT NULL,
hit_points INT NOT NULL,
is_unit_amphibious BOOLEAN NOT NULL,
cost_in_dollars NUMERIC(10, 2),
build_time_in_seconds INT NOT NULL,
can_ground_attack BOOLEAN NOT NULL,
can_air_attack BOOLEAN NOT NULL,
tech_type VARCHAR(50) NOT NULL);



--# Create the sequence for naval units
CREATE SEQUENCE naval_unit_id_seq START 1;

--# Create table for naval units
CREATE TABLE naval_units (
naval_unit_id VARCHAR(10) DEFAULT 'NUID' || LPAD(NEXTVAL('naval_unit_id_seq')::TEXT, 3, '0') PRIMARY KEY,
naval_unit_name VARCHAR(255) NOT NULL,
tech_level INT NOT NULL,
hit_points INT NOT NULL,
is_unit_amphibious BOOLEAN NOT NULL,
cost_in_dollars NUMERIC(10, 2),
build_time_in_seconds INT NOT NULL,
can_ground_attack BOOLEAN NOT NULL,
can_air_attack BOOLEAN NOT NULL,
tech_type VARCHAR(50) NOT NULL);
