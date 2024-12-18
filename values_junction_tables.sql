--# adding values to junction tables 

--# adding to building_group_junction 
INSERT INTO building_group_junction (building_group_id,building_id)
VALUES
(1,'BUID001'),
(1,'BUID002'),
(1,'BUID003'),
(1,'BUID004'),
(1,'BUID005'),
(1,'BUID006'),
(1,'BUID007'),
(1,'BUID008'),
(1,'BUID009'),
(1,'BUID010'),
(1,'BUID011'),
(2,'BUID012'),
(2,'BUID013'),
(2,'BUID014'),
(2,'BUID015'),
(2,'BUID016'),
(2,'BUID017'),
(2,'BUID018'),
(2,'BUID019'),
(2,'BUID020'),
(2,'BUID021'),
(2,'BUID022'),
(3,'BUID023'),
(3,'BUID024'),
(3,'BUID025'),
(3,'BUID026'),
(3,'BUID027'),
(3,'BUID028'),
(3,'BUID029'),
(3,'BUID030');



--# adding to support_structure_group_junction
INSERT INTO support_structure_group_junction (support_structure_group_id,support_structure_id)
VALUES
(1,'SID001'),
(1,'SID002'),
(1,'SID003'),
(1,'SID004'),
(1,'SID005'),
(1,'SID006'),
(1,'SID007'),
(1,'SID008'),
(1,'SID009'),
(2,'SID001'),
(2,'SID002'),
(2,'SID003'),
(2,'SID004'),
(2,'SID005'),
(2,'SID006'),
(2,'SID008'),
(2,'SID009'),
(3,'SID010'),
(3,'SID011'),
(3,'SID012'),
(3,'SID013'),
(3,'SID014'),
(3,'SID015'),
(3,'SID016'),
(4,'SID017'),
(4,'SID018'),
(4,'SID019'),
(4,'SID020'),
(4,'SID021'),
(4,'SID022'),
(4,'SID023');



--# adding to support_powers_group_junction
INSERT INTO support_powers_group_junction (support_powers_group_id,support_power_id)
VALUES
(1,'SPID001'),
(1,'SPID002'),
(1,'SPID003'),
(1,'SPID010'),
(2,'SPID002'),
(2,'SPID003'),
(2,'SPID010'),
(3,'SPID004'),
(3,'SPID005'),
(3,'SPID006'),
(3,'SPID010'),
(4,'SPID007'),
(4,'SPID008'),
(4,'SPID009'),
(4,'SPID010');



--# adding to infantry_group_junction 
INSERT INTO infantry_group_junction (infantry_group_id,infantry_id)
VALUES
(1,'IFID001'),
(1,'IFID002'),
(1,'IFID003'),
(1,'IFID004'),
(1,'IFID005'),
(1,'IFID006'),
(1,'IFID007'),
(1,'IFID008'),
(1,'IFID009'),
(1,'IFID010'),
(1,'IFID011'),
(1,'IFID012'),
(1,'IFID013'),
(2,'IFID001'),
(2,'IFID002'),
(2,'IFID003'),
(2,'IFID004'),
(2,'IFID005'),
(2,'IFID006'),
(2,'IFID007'),
(2,'IFID008'),
(2,'IFID009'),
(2,'IFID010'),
(2,'IFID011'),
(2,'IFID012'),
(3,'IFID014'),
(3,'IFID015'),
(3,'IFID016'),
(3,'IFID017'),
(3,'IFID018'),
(3,'IFID019'),
(3,'IFID004'),
(3,'IFID020'),
(4,'IFID014'),
(4,'IFID015'),
(4,'IFID016'),
(4,'IFID017'),
(4,'IFID018'),
(4,'IFID019'),
(4,'IFID004'),
(4,'IFID021'),
(5,'IFID014'),
(5,'IFID015'),
(5,'IFID016'),
(5,'IFID017'),
(5,'IFID018'),
(5,'IFID019'),
(5,'IFID004'),
(6,'IFID022'),
(6,'IFID023'),
(6,'IFID024'),
(6,'IFID025'),
(6,'IFID026'),
(6,'IFID027'),
(6,'IFID004');




--# adding to vehicle_group_junction 
INSERT INTO vehicle_group_junction (vehicle_group_id,vehicle_id)
VALUES
(1,'VEID001'),
(1,'VEID002'),
(1,'VEID003'),
(1,'VEID004'),
(1,'VEID005'),
(1,'VEID006'),
(1,'VEID007'),
(1,'VEID008'),
(1,'VEID009'),
(2,'VEID001'),
(2,'VEID002'),
(2,'VEID003'),
(2,'VEID004'),
(2,'VEID005'),
(2,'VEID006'),
(2,'VEID007'),
(2,'VEID008'),
(3,'VEID010'),
(3,'VEID011'),
(3,'VEID012'),
(3,'VEID013'),
(3,'VEID014'),
(3,'VEID015'),
(3,'VEID016'),
(3,'VEID017'),
(4,'VEID010'),
(4,'VEID011'),
(4,'VEID012'),
(4,'VEID013'),
(4,'VEID014'),
(4,'VEID015'),
(4,'VEID016'),
(4,'VEID018'),
(5,'VEID010'),
(5,'VEID011'),
(5,'VEID012'),
(5,'VEID013'),
(5,'VEID014'),
(5,'VEID015'),
(5,'VEID016'),
(6,'VEID019'),
(6,'VEID020'),
(6,'VEID021'),
(6,'VEID022'),
(6,'VEID023'),
(6,'VEID024'),
(6,'VEID025');



--# adding values to aircraft_group_junction 
INSERT INTO aircraft_group_junction (aircraft_group_id,aircraft_id)
VALUES
(1,'AID001'),
(1,'AID002'),
(1,'AID003'),
(2,'AID001'),
(2,'AID002'),
(2,'AID004'),
(3,'AID001'),
(3,'AID002'),
(4,'AID005'),
(4,'AID006'),
(4,'AID007'),
(4,'AID008'),
(5,'AID009');



--# adding values to naval_group_junction 
INSERT INTO naval_group_junction (naval_group_id,naval_unit_id)
VALUES
(1,'NUID001'),
(1,'NUID002'),
(1,'NUID003'),
(1,'NUID004'),
(1,'NUID005'),
(2,'NUID006'),
(2,'NUID007'),
(2,'NUID008'),
(2,'NUID009'),
(2,'NUID010'),
(3,'NUID011'),
(3,'NUID012');



--#a adding values to country_tech
INSERT INTO country_tech (country_id,building_group_id,support_structure_group_id,support_powers_group_id,infantry_group_id,vehicle_group_id,aircraft_group_id,naval_group_id)
VALUES
('COID001',1,1,2,2,2,3,1),
('COID002',1,2,2,2,1,3,1),
('COID003',1,2,2,1,2,3,1),
('COID004',1,2,2,2,2,1,1),
('COID005',1,2,1,2,2,2,1),
('COID006',2,3,3,3,5,4,2),
('COID007',2,3,3,4,5,4,2),
('COID008',2,3,3,5,3,4,2),
('COID009',2,3,3,5,4,4,2),
('COID010',3,4,4,6,6,5,3);


















