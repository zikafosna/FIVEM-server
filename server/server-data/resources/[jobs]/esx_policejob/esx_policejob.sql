USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_police', 'Milicija', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_police', 'Milicija', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_police', 'Milicija', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('police','Milicija')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('police',0,'recruit','Kadet',20,'{}','{}'),
	('police',1,'officer','Policajac',40,'{}','{}'),
	('police',2,'sergeant','Porucnik',60,'{}','{}'),
	('police',3,'lieutenant','Narednik',70,'{}','{}'),
	('police',4,'boss','Nacelnik',80,'{}','{}')
;

CREATE TABLE `fine_types` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`label` varchar(255) DEFAULT NULL,
	`amount` int(11) DEFAULT NULL,
	`category` int(11) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `fine_types` (label, amount, category) VALUES
	('Voznja pod alkoholom', 30, 0),
	('Zatamnjena stakla, folije', 40, 0),
	('Prestrojavanje', 250, 0),
	('Koristenje mobilnog telefona', 250, 0),
	('Ne koristenje "P"', 170, 0),
	('Parkiranje - pjesacki', 30, 0),
	('Parkiranje - raskrsnica', 150, 0),
	('Parkiranje - smeta pri izlasku', 70, 0),
	('Parkiranje - zelene povrsine', 70, 0),
	('Parkiranje - na kolovozu, oba smjera', 90, 0),
	('Parkiranje - autobusko stajaliste', 105, 0),
	('Oprema u vozilu', 130, 0),
	('Nema dokumente', 100, 0),
	('Dijete na prednjem sjedistu', 100, 0),
	('Ugrozavanje sigurnosti', 1500, 0),
	('Ne koristenje pojasa', 800, 0),
	('Prekoracenje brzine < 15 km/h', 90, 0),
	('Prekoracenje brzine < 15-50 km/h', 120, 0),
	('Prekoracenje brzine < 50-100 km/h', 180, 0),
	('Prekoracenje brzine < 100-150 km/h', 300, 0),
	('Krakta svetla', 110, 1),
	('Odbijanje alkotesta', 300, 1),
	('Alkohol, vozac pocetnik', 90, 1),
	('Nezgoda, voznja unazad', 130, 1),
	('Nezgoda, brzina', 75, 1),
	('Nezgoda, mimoilazenje', 110, 1),
	('Nezgoda, radnje vozilom', 90, 1),
	('Nezgoda, desna ivica kolovoza', 150, 1),
	('Prolazak kroz crveno svetlo', 250, 1),
	('Prolazak kroz vise crvenih svetala', 1500, 1),
	('Nedavanje zmigavca', 120, 2),
	('Upravljanje bez dozvole', 1300, 2),
	('Koristenje neodgovarajucih reg. tablica', 600, 2),
	('Kaciga', 700, 2),
	('Pravo prvensta prolaza', 300, 2),
	('Svjetla za maglu', 1800, 2),
	('Pokusaj ubistva civila', 1500, 2),
	('Pokusaj ubistva vaznih ljudi', 5000, 2),
	('Voznja neispravnog automobila', 650, 2),
	('Kidnapovanje', 1500, 2),
	('Kidnapovanje vaznih ljudi', 2000, 2),
	('Pljacka zlatare', 5000, 2),
	('Pljacka trgovine', 10000, 2),
	('Pljacka banke', 15000, 2),
	('Napad na civila', 2000, 3),
	('Napad na sluzbeno lice', 2500, 3),
	('Nosenje hladnog oruzija', 3000, 3),
	('Nosenje vatrenog oruzija', 5000, 3),
	('Pokusaj korupcije', 10000, 3),
	('Pokusaj mita', 30000, 3)
;