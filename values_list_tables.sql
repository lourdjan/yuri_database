--# Adding values to tables

--#adding values to factions
INSERT INTO factions (faction_name, faction_color, n_country_affiliates, military_description)
VALUES
('Allies','Blue',NULL,'Allies prioritize mobility, technology, quality, training.'),
('Soviet','Red',NULL,'Soviets rely on firepower, numbers, durability, armor.'),
('Yuri','Purple',NULL,'Yuri utilizes mind-control, cloning, advanced weapons.'),
('Neutral','Gray',NULL,'A neutral faction.');

--#adding values to countries
INSERT INTO countries (faction_id, country_name, special_tech)
VALUES
('FA001','France','French Grand Cannon'),
('FA001','Germany','German Tank Destroyer'),
('FA001','Great Britain','British Sniper'),
('FA001','South Korea','Korean Black Eagle'),
('FA001','USA','American Airbornes'),
('FA002','Cuba','Cuban Terrorist'),
('FA002','Iraq','Iraqi Desolator'),
('FA002','Libya','Libyan Demolishon Truck'),
('FA002','Russia','Russian Tesla Tank'),
('FA003','Yuri','Yuri"s Faction'),
('FA004','Neutral','None');

--#addig values to main_buildings
INSERT INTO main_buildings (building_name, tech_level, hit_points, armor_type, cost_in_dollars, build_time_in_seconds, power_consumption, can_be_captured, tech_type, role_description)
VALUES
('Construction Yard (Allied)',-1,1000,'Concrete',3000,0,0,'True','faction_common','Base Construction'),
('Power Plant',1,750,'Wood',800,32,200,'True','faction_common','Power Supply'),
('Barracks (Allied)',2,500,'Steel',500,20,-10,'True','faction_common','Infantry Training Facility'),
('War Factory (Allied)',2,1000,'Wood',2000,80,-25,'True','faction_common','Vehicle Production'),
('Ore Refinary (Allied)',1,1000,'Wood',2000,80,-50,'True','faction_common','Resource Processor'),
('Airforce Command HQ',3,600,'Steel',1000,40,-50,'True','faction_common','Radar Provider. Aircraft Production and Maintenance'),
('Naval Shipyard (Allied)',4,1500,'Concrete',1000,40,-25,'False','faction_common','Naval Units Production and Maintenance'),
('Service Depot (Allied)',6,1200,'Wood',800,32,-25,'True','faction_common','Vehicle Maintenance'),
('Battle Lab (Allied)',8,500,'Wood',2000,80,-100,'True','faction_common','Tech Structure'),
('Ore Purifier',10,900,'Wood',2500,100,-200,'False','faction_common','Resource Enhancement. Increase resource income by 25%'),
('Robot Control Center',10,600,'Wood',600,24,-100,'False','faction_common','Robot Tank Control Center'),
('Construction Yard (Soviet)',-1,1000,'Concrete',3000,0,0,'True','faction_common','Base Construction'),
('Tesla Reactor',1,750,'Wood',600,24,150,'True','faction_common','Power Supply'),
('Barracks (Soviet)',2,500,'Steel',500,20,-10,'True','faction_common','Infantry Training Facility'),
('War Factory  (Soviet)',2,1000,'Wood',2000,80,-25,'True','faction_common','Vehicle Production'),
('Ore Refinary  (Soviet)',1,1000,'Wood',2000,80,-50,'True','faction_common','Resource Processor'),
('Radar Tower',3,1000,'Wood',1000,40,-50,'True','faction_common','Radar Provider. Activate Spy Plane Power Support'),
('Naval Shipyard  (Soviet)',4,1500,'Concrete',1000,40,-20,'False','faction_common','Naval Units Production and Maintenance'),
('Service Depot (Soviet)',6,1200,'Wood',800,32,-20,'True','faction_common','Vehicle Maintenance'),
('Battle Lab (Soviet)',7,500,'Wood',2000,80,-100,'True','faction_common','Tech Structure'),
('Nuclear Reactor',9,1000,'Concrete',1000,60,2000,'True','faction_common','Advance Power Supply'),
('Industrial Plant',10,1000,'Wood',2500,100,-200,'False','faction_common','Production Efficiency. Decrease price and build-time of vehicles, aircraft and navy units by 25%'),
('Construction Yard (Yuri)',-1,1000,'Concrete',3000,0,0,'True','faction_common','Base Construction'),
('Bio Reactor',1,700,'Wood',600,24,150,'True','faction_common','Power Supply. Increase power by 100 per unit (5 max units).'),
('Barracks (Yuri)',2,500,'Steel',500,20,-10,'True','faction_common','Infantry Training Facility'),
('War Factory (Yuri)',2,1000,'Wood',2000,80,-25,'True','faction_common','Vehicle Production'),
('Psychic Radar',2,750,'Wood',1000,40,-50,'True','faction_common','Radar Provider. Activate Psychic Power Support. Detect stealth and enemy attack'),
('Submarine Pen',4,1500,'Concrete',1000,40,-25,'False','faction_common','Naval Units Production and Maintenance'),
('Battle Lab (Yuri)',8,500,'Wood',2000,80,-100,'True','faction_common','Tech Structure'),
('Grinder',9,900,'Wood',600,24,0,'False','faction_common','Convert units into funds. 50% for enemy units, 100% for enemy vehicle and own units');

--# adding values to support_structures
INSERT INTO support_structures (support_structure_name,tech_level,hit_points,armor_type,cost_in_dollars,build_time_in_seconds,can_ground_attack,can_air_attack,power_consumption,tech_type,role_description)
VALUES
('Fortress Wall (Allied)',1,300,'Concrete',100,4,FALSE,FALSE,0,'faction_common','defensive barrier'),
('Pillbox',1,400,'Steel',500,20,TRUE,FALSE,0,'faction_common','anti-infantry base defense'),
('Patriot Missile System',4,900,'Steel',1000,40,FALSE,TRUE,-50,'faction_common','anti-air base defense'),
('Prism Tower',6,600,'Steel',1500,60,TRUE,FALSE,-75,'faction_common','anti-surface base defense. 200 if there is a support tower nearby'),
('Gap Generator',7,600,'Wood',1000,40,FALSE,FALSE,-100,'faction_common','Radar jamming device'),
('Spy Satellite Uplink',9,1000,'Wood',1500,60,FALSE,FALSE,-100,'faction_common','Intelligence gathering'),
('Grand Cannon',7,900,'Steel',2000,80,TRUE,FALSE,-100,'special_tech','advance anti surface base defense. Cannot attack closed enemies'),
('Weather Control Device',10,1000,'Concrete',5000,200,FALSE,FALSE,-200,'superweapon','Superweapon. Activate Lightning Storm Support Power. 10 min cooldown'),
('Chronosphere',10,750,'Concrete',2500,100,FALSE,FALSE,-200,'superweapon','Support Superweapon. Activate Chronoshift Support Power. 5 min cooldown'),
('Fortress Wall (Soviet)',1,300,'Concrete',100,4,FALSE,FALSE,0,'faction_common','defensive barrier'),
('Bunker',1,600,'Steel',500,20,FALSE,FALSE,0,'faction_common','infantry bunker. 5 units max'),
('Sentry Gun',1,400,'Steel',500,20,TRUE,FALSE,0,'faction_common','anti-infantry base defense'),
('Flak Cannon',4,900,'Steel',1000,40,FALSE,TRUE,-50,'faction_common','anti-air base defense. Has a cluster damage effect'),
('Tesla Coil',5,600,'Steel',1500,60,TRUE,FALSE,-75,'faction_common','advance anti surface base defense. 300 attack points and 100 range attack if charged up.'),
('Nuclear Missile Silo',10,1000,'Concrete',5000,200,FALSE,FALSE,-200,'superweapon','Superweapon. Activate Nuke Attack Support Power. 10 min cooldown'),
('Iron Curtain Device',10,750,'Concrete',2500,100,FALSE,FALSE,-200,'superweapon','Support Superweapon. Activate Invulnerability Support Power. 5 min cooldown'),
('Citadel Wall',1,300,'Concrete',100,4,FALSE,FALSE,0,'faction_common','defensive barrier'),
('Tank Bunker',3,1000,'Steel',400,16,FALSE,FALSE,0,'faction_common','Increases tank''s ability by +2 weapon range, 30% rate of fire, 30% firepower'),
('Gattling Cannon',4,810,'Steel',1000,40,TRUE,TRUE,-50,'faction_common','Anti-air, anti-ground base defense. 25/30/40 air attack, 16/8/4 cooldown'),
('Psychic Tower',7,455,'Steel',1500,60,FALSE,FALSE,-100,'faction_common','control enemy units maximum of 3'),
('Cloning Vats',9,1000,'Wood',2500,100,FALSE,FALSE,-200,'faction_common','clone infantry units for free'),
('Psychic Dominator',10,1000,'Concrete',5000,200,FALSE,FALSE,-200,'superweapon','Superweapon. Activate Dominate Support Power. 10 min cooldown'),
('Genetic Mutator',10,1000,'Concrete',2500,100,FALSE,FALSE,-200,'superweapon','Support Superweapon. Activate Mutate Support Power. 5 min cooldown'),
('Tech Hospital',-1,800,'Concrete',0,0,FALSE,FALSE,0,'neutral','All infantry units will auto-heal'),
('Tech Air Field',-1,800,'Concrete',0,0,FALSE,FALSE,0,'neutral','Activate Paratroopers Support Power'),
('Tech Outpost',-1,2000,'Concrete',0,0,TRUE,TRUE,0,'neutral','Remote vehicle maintenance outpost'),
('Tech Machine Shop',-1,800,'Concrete',0,0,FALSE,FALSE,0,'neutral','All vehicle units will auto-heal'),
('Tech Secret Lab',-1,1000,'Steel',0,0,FALSE,FALSE,0,'neutral','Acquire a random special tech ability'),
('Tech Civilian Power Plant',-1,800,'Concrete',0,0,FALSE,FALSE,200,'neutral','Increase Power Supply'),
('Tech Oil Derrick',-1,1000,'Steel',0,0,FALSE,FALSE,0,'neutral','$1000 for capture, $20 per 100frames');

--# adding values to support_powers
INSERT INTO support_powers (support_power_name,tech_type)
VALUES
('Airborne','special_tech'),
('Chrono Shift','superweapon'),
('Lightning Storm','superweapon'),
('Spy Plane','faction_common'),
('Nuclear Missile Strike','superweapon'),
('Invulnerability','superweapon'),
('Psychic Reveal','faction_common'),
('Mutate','superweapon'),
('Dominate','superweapon'),
('Force Shield','neutral'),
('Paratroopers','neutral');

--# adding values to infantry_units
INSERT INTO infantry_units (infantry_name, tech_level, hit_points, is_unit_amphibious, cost_in_dollars, build_time_in_seconds, can_ground_attack, can_air_attack, tech_type)
VALUES
('G.I.',1,125,False,200,8,True,False,'faction_common'),
('Guardian G.I',2,100,False,400,16,True,True,'faction_common'),
('Attack Dog (Allied)',2,100,False,200,8,True,False,'faction_common'),
('Engineer',1,75,False,500,20,False,False,'faction_common'),
('Rocketeer',3,125,True,600,24,True,True,'faction_common'),
('Seal',9,125,True,1000,40,True,False,'faction_common'),
('Spy',5,100,False,1000,40,False,False,'faction_common'),
('Tanya',9,200,True,1500,60,True,False,'faction_common'),
('Chrono Legionnaire',10,125,False,1500,60,True,False,'faction_common'),
('Chrono Commando',9,100,False,2000,60,True,False,'stolen_tech'),
('Chrono Ivan',9,100,False,1750,60,True,False,'stolen_tech'),
('Psi Commando',9,100,False,1000,60,True,False,'stolen_tech'),
('British Sniper',2,125,False,600,24,True,False,'special_tech'),
('Conscript',1,125,False,100,4,True,False,'faction_common'),
('Flak Trooper',1,100,False,300,12,True,True,'faction_common'),
('Attack Dog (Soviet)',2,100,False,200,8,True,False,'faction_common'),
('Tesla Trooper',5,130,False,500,20,True,False,'faction_common'),
('Crazy Ivan',5,125,False,600,24,True,False,'faction_common'),
('Boris',9,200,False,1500,60,True,False,'faction_common'),
('Cuban Terrorist',5,75,False,200,8,True,False,'special_tech'),
('Iraqi Desolator',8,150,False,600,24,True,False,'special_tech'),
('Initiate',1,100,False,200,8,True,False,'faction_common'),
('Brute',5,200,False,500,20,True,False,'faction_common'),
('Virus',1,100,False,700,28,True,False,'faction_common'),
('Yuri Clone',10,100,False,800,32,True,False,'faction_common'),
('Yuri Prime',10,150,True,1500,60,True,False,'faction_common'),
('Slaves',-1,125,False,0,0,True,False,'faction_common');


--# adding values to vehicle_units
INSERT INTO vehicle_units (vehicle_name,tech_level,hit_points,is_unit_amphibious,cost_in_dollars,build_time_in_seconds,can_ground_attack,can_air_attack,tech_type)
VALUES
('Chrono Miner',1,1000,False,1400,56,False,False,'faction_common'),
('Grizzly Tank',1,300,False,700,42,True,False,'faction_common'),
(' Infantry Fighting Vehicle',3,200,False,600,24,True,True,'faction_common'),
('Prism Tank',8,150,False,1200,48,True,False,'faction_common'),
('Mirage Tank',9,200,False,1000,40,True,False,'faction_common'),
('Battle Fortress',10,600,False,2000,80,True,False,'faction_common'),
('Allied MCV',10,1000,False,3000,120,False,False,'faction_common'),
('Robot Tank',2,180,True,600,24,True,False,'faction_common'),
('Tank Destroyer',2,400,False,900,36,True,False,'special_tech'),
('War Miner',1,1000,False,1400,56,True,False,'faction_common'),
('Rhino Tank',2,400,False,900,45,True,False,'faction_common'),
('Terror Drone',4,100,False,500,20,True,False,'faction_common'),
('Flak Track',3,180,False,500,20,True,True,'faction_common'),
('V3 Rocket Launcher',3,150,False,800,32,True,False,'faction_common'),
('Apocalypse',7,800,False,1750,70,True,True,'faction_common'),
('Soviet MCV',10,1000,False,3000,120,False,False,'faction_common'),
('Libyan Demolishon Truck',10,150,False,1500,60,True,False,'special_tech'),
('Russian Tesla Tank',10,300,False,1200,48,True,False,'special_tech'),
('Lasher Tank',2,300,False,700,28,True,False,'faction_common'),
('Chaos Drone',4,130,False,800,40,True,False,'faction_common'),
('Gattling Tank',4,210,False,600,24,True,True,'faction_common'),
('Slave Miner',1,2000,False,1750,70,True,False,'faction_common'),
('Magnetron',2,150,False,1000,40,True,False,'faction_common'),
('Mastermind',2,500,False,1750,70,True,False,'faction_common'),
('Yuri MCV',10,1000,False,3000,120,False,False,'faction_common');


--# adding values to aircraft_units
INSERT INTO aircraft_units (aircraft_name,tech_level,hit_points,is_unit_amphibious, cost_in_dollars ,build_time_in_seconds,can_ground_attack,can_air_attack,tech_type)
VALUES
('Harrier',3,150,TRUE,1200,48,TRUE,FALSE,'faction_common'),
('Night Hawk Transport ',7,175,TRUE,1000,40,TRUE,TRUE,'faction_common'),
('Black Eagle',3,200,TRUE,1200,48,TRUE,FALSE,'special_tech'),
('Airborne Plane (USA)',-1,100,FALSE,0,240,FALSE,FALSE,'special_tech'),
('Spy Plane',2,600,FALSE,0,240,FALSE,FALSE,'faction_common'),
('Seige Chopper',7,300,FALSE,1400,44,TRUE,TRUE,'faction_common'),
('Kirov Airship',10,2000,TRUE,2000,80,TRUE,FALSE,'faction_common'),
('Boris MiGs',-1,200,FALSE,0,0,TRUE,FALSE,'faction_common'),
('Floating Disc',2,600,TRUE,1750,70,TRUE,TRUE,'faction_common'),
('Transport Plane',-1,100,FALSE,0,240,FALSE,FALSE,'neutral');

--# adding values to naval_units
INSERT INTO naval_units (naval_unit_name,tech_level,hit_points,is_unit_amphibious,cost_in_dollars,build_time_in_seconds,can_ground_attack,can_air_attack,tech_type)
VALUES
('Dolphin',8,200,False,500,20,True,False,'faction_common'),
('Destroyer',4,600,False,1000,40,True,False,'faction_common'),
('Amphibious Transport (Allied)',4,300,True,900,36,False,False,'faction_common'),
('Aegis Cruiser',7,800,False,1200,48,False,True,'faction_common'),
('Aircraft Carrier',7,800,False,2000,80,True,False,'faction_common'),
('Giant Squid',9,200,False,1000,40,True,False,'faction_common'),
('Attack Submarine',2,600,False,1000,40,True,False,'faction_common'),
('Amphibious Transport (Soviet)',2,300,True,900,36,False,False,'faction_common'),
('Sea Scorpion',6,400,False,600,24,True,True,'faction_common'),
('Dreadnought',6,800,False,2000,80,True,False,'faction_common'),
('Boomer Submarine',2,1200,False,2000,80,True,False,'faction_common'),
('Amphibious Transport (Yuri)',2,300,True,900,36,False,False,'faction_common');