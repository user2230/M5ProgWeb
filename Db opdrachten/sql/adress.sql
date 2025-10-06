CREATE TABLE `dbfirst`.`adres` (
  `adresID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Postcode` VARCHAR(45) NULL,
  `straatnaam` VARCHAR(45) NULL,
  `huisnummer` VARCHAR(45) NULL,
  PRIMARY KEY (`adresID`),
  UNIQUE INDEX `adresID_UNIQUE` (`adresID` ASC) VISIBLE);
