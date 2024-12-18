--# adding constraints and foreign keys to all junction tables


--# add foreign key from factions to countries
ALTER TABLE countries
ADD CONSTRAINT fk_countries_faction_id
FOREIGN KEY (faction_id) REFERENCES factions (faction_id);


--# add to building_group_junction
ALTER TABLE building_group_junction
ADD CONSTRAINT fk_building_group_junction_building_group_id
FOREIGN KEY (building_group_id) REFERENCES building_group (building_group_id),
ADD CONSTRAINT fk_building_group_junction_building_id
FOREIGN KEY (building_id) REFERENCES main_buildings (building_id);


--# add to support_structure_group_junction
ALTER TABLE support_structure_group_junction
ADD CONSTRAINT fk_support_structure_group_junction_support_structure_group_id
FOREIGN KEY (support_structure_group_id) REFERENCES support_structure_group (support_structure_group_id),
ADD CONSTRAINT fk_support_structure_group_junction_support_structure_id
FOREIGN KEY (support_structure_id) REFERENCES support_structures (support_structure_id);


--# add to support_powers_group_junction
ALTER TABLE support_powers_group_junction
ADD CONSTRAINT fk_support_powers_group_junction_support_powers_group_id
FOREIGN KEY (support_powers_group_id) REFERENCES support_powers_group (support_powers_group_id),
ADD CONSTRAINT fk_support_powers_group_junction_support_power_id
FOREIGN KEY (support_power_id) REFERENCES support_powers (support_power_id);


--# add to infantry_group_junction
ALTER TABLE infantry_group_junction
ADD CONSTRAINT fk_infantry_group_junction_infantry_group_id
FOREIGN KEY (infantry_group_id) REFERENCES infantry_group (infantry_group_id),
ADD CONSTRAINT fk_infantry_group_junction_infantry_id
FOREIGN KEY (infantry_id) REFERENCES infantry_units (infantry_id);


--# add to vehicle_group_junction
ALTER TABLE vehicle_group_junction
ADD CONSTRAINT fk_vehicle_group_junction_vehicle_group_id
FOREIGN KEY (vehicle_group_id) REFERENCES vehicle_group (vehicle_group_id),
ADD CONSTRAINT fk_vehicle_group_junction_vehicle_id
FOREIGN KEY (vehicle_id) REFERENCES vehicle_units (vehicle_id);

--# add to aircraft_group_junction
ALTER TABLE aircraft_group_junction
ADD CONSTRAINT fk_aircraft_group_junction_aircraft_group_id
FOREIGN KEY (aircraft_group_id) REFERENCES aircraft_group (aircraft_group_id),
ADD CONSTRAINT fk_aircraft_group_junction_aircraft_id
FOREIGN KEY (aircraft_id) REFERENCES aircraft_units (aircraft_id);

--# add to naval_group_junction
ALTER TABLE naval_group_junction
ADD CONSTRAINT fk_naval_group_junction_naval_group_id
FOREIGN KEY (naval_group_id) REFERENCES naval_group (naval_group_id),
ADD CONSTRAINT fk_naval_group_junction_naval_unit_id
FOREIGN KEY (naval_unit_id) REFERENCES naval_units (naval_unit_id);


--# add to country_tech
ALTER TABLE country_tech
ADD CONSTRAINT fk_country_tech_building_group_id
FOREIGN KEY (building_group_id) REFERENCES building_group (building_group_id),
ADD CONSTRAINT fk_country_tech_support_structure_group_id
FOREIGN KEY (support_structure_group_id) REFERENCES support_structure_group (support_structure_group_id),
ADD CONSTRAINT fk_country_tech_support_powers_group_id
FOREIGN KEY (support_powers_group_id) REFERENCES support_powers_group (support_powers_group_id),
ADD CONSTRAINT fk_country_tech_infantry_group_id
FOREIGN KEY (infantry_group_id) REFERENCES infantry_group (infantry_group_id),
ADD CONSTRAINT fk_country_tech_vehicle_group_id
FOREIGN KEY (vehicle_group_id) REFERENCES vehicle_group (vehicle_group_id),
ADD CONSTRAINT fk_country_tech_aircraft_group_id
FOREIGN KEY (aircraft_group_id) REFERENCES aircraft_group (aircraft_group_id),
ADD CONSTRAINT fk_country_tech_naval_group_id
FOREIGN KEY (naval_group_id) REFERENCES naval_group (naval_group_id);
