CREATE TABLE `m5prog`.`leerlingen` (
  `naam` INT NOT NULL,
  `leeftijd` VARCHAR(45) NULL,
  `klas` VARCHAR(45) NULL,
  PRIMARY KEY (`naam`));

INSERT INTO leerlingen (idleerlingen, naam, leeftijd, klas)
VALUES
(1, 'Mario', '67', 'A1'),
(2, 'Sonic', '35', 'A2'),
(3, 'Kirby', '10', 'B1'),
(4, 'Naruto', '16', 'C2'),
(5, 'Link', '17', 'C1');
