--Create all group tables


--# Create a group table for main buildings
CREATE TABLE building_group (
building_group_id SERIAL PRIMARY KEY,
building_group_name VARCHAR(255));


--# Create a group table for support structures
CREATE TABLE support_structure_group (
support_structure_group_id SERIAL PRIMARY KEY,
support_structure_group_name VARCHAR(255));


--# Create a group table for support powers
CREATE TABLE support_powers_group (
support_powers_group_id SERIAL PRIMARY KEY,
support_powers_group_name VARCHAR(255));


--# Create a group table for infantry units
CREATE TABLE infantry_group (
infantry_group_id SERIAL PRIMARY KEY,
infantry_group_name VARCHAR(255));


--# Create a group table for vehicle units
CREATE TABLE vehicle_group (
vehicle_group_id SERIAL PRIMARY KEY,
vehicle_group_name VARCHAR(255));



--# Create a group table for aircraft units
CREATE TABLE aircraft_group (
aircraft_group_id SERIAL PRIMARY KEY,
aircraft_group_name VARCHAR(255));


--# Create a group table for naval units
CREATE TABLE naval_group (
naval_group_id SERIAL PRIMARY KEY,
naval_group_name VARCHAR(255));



--# Create the country technology group table 
CREATE TABLE country_tech (
country_id VARCHAR(10) PRIMARY KEY,
building_group_id INT,
support_structure_group_id INT,
support_powers_group_id INT,
infantry_group_id INT,
vehicle_group_id INT,
aircraft_group_id INT,
naval_group_id INT);