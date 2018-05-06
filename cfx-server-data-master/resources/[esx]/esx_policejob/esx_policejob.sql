INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_police','Police',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_police','Police',1)
;

INSERT INTO `user_inventory` (name, label, shared) VALUES
	('society_police', 'Police', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('police','LSPD')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('police',0,'recruit','Recrue',20,'{\"tshirt_1\":57,\"torso_1\":55,\"arms\":0,\"pants_1\":35,\"glasses\":0,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":5,\"face\":19,\"glasses_2\":1,\"torso_2\":0,\"shoes\":24,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":8}','{\"tshirt_1\":34,\"torso_1\":48,\"shoes\":24,\"pants_1\":34,\"torso_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"glasses\":0,\"helmet_2\":0,\"hair_2\":3,\"face\":21,\"decals_1\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"arms\":14,\"hair_color_1\":10,\"tshirt_2\":0,\"helmet_1\":57}'),
  ('police',4,'officer','Officier',40,'{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}','{\"tshirt_1\":35,\"torso_1\":48,\"arms\":14,\"pants_1\":34,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"shoes\":24,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"face\":21,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":10,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
	('police',1,'sergeant','Sergent',60,'{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}','{\"tshirt_1\":35,\"torso_1\":48,\"arms\":14,\"pants_1\":34,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"shoes\":24,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"face\":21,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":10,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
	('police',2,'lieutenant','Lieutenant',85,'{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":2,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"glasses\":0,\"decals_1\":8,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"torso_2\":0,\"arms\":41,\"tshirt_2\":0,\"helmet_1\":11}','{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"hair_2\":3,\"decals_2\":2,\"hair_color_2\":0,\"hair_color_1\":10,\"helmet_2\":0,\"face\":21,\"shoes\":24,\"torso_2\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"decals_1\":7,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
	('police',3,'boss','Captain',100,'{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":41,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":8,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}','{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}')
;

CREATE TABLE `fine_types` (

  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,

  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types` (label, amount, category) VALUES
('Misuse of the horn', 30,0),
('Crossing a continuous line', 40,0),
('Circulation in the opposite direction', 250.0),
('Unauthorized U-turn', 250.0),
('Off-road traffic', 170.0),
('Non-respect of safety distances', 30,0),
('Dangerous / forbidden stop', 150,0),
('Parking awkward / forbidden', 70.0),
('Failure to respect priority on the right', 70.0),
('Non-compliance with a priority vehicle', 90.0),
('Failure to comply with a stop', 105.0),
('Failure to comply with a red light', 130.0),
('Dangerous overrun', 100.0),
('Vehicle not in state', 100.0),
('Driving without a license', 1500.0),
('Hit and run', 800.0),
('Speeding <5 km / h, 90.0),
(Speeding 5-15 km / h, 120.0),
('Speeding 15-30 km / h, 180.0),
('Speeding> 30 km / h, 300.0),
('Traffic jam', 110,1),
('Degradation of the public road', 90,1),
('Trouble with the public order', 90,1),
('Interference operation of police', 130,1),
('Insults against / between civilians', 75,1),
('Outrage to police officer', 110,1),
('Verbal threat or intimidation towards civil', 90,1),
('Verbal threat or intimidation of police officer', 150,1),
('Illegal demonstration', 250,1),
('Attempted corruption', 1500,1),
('Weapon white out in town', 120,2),
('Lethal Weapon Out in the City', 300,2),
('Weapon port not allowed (license defect)', 600,2),
('Port of illegal weapon', 700,2),
('Taken in flag lockpick', 300,2),
('Car theft', 1800.2),
('Sale of drugs', 1500,2),
('Manufacture of drugs', 1500.2),
('Possession of drugs', 650,2),
('Fixture of a civilian', 1500,2),
('Takeover agent of the state', 2000,2),
('Special steering', 650.2),
('Turnaround Store', 650.2),
('Bank steering', 1500,2),
('Shooting on civil', 2000,3),
('Shooting on agent of the state', 2500,3),
('Attempted murder on civil', 3000,3),
('Attempted murder on state agent', 5000,3),
('Murder on civil', 10000,3),
('Die on agent of the state', 30000,3),
('Murder involuntary', 1800,3),
('Business scam, 2000,2)
;
