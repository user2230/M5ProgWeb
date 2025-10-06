-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema m5prog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema m5prog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `m5prog` DEFAULT CHARACTER SET utf8 ;
USE `m5prog` ;

-- -----------------------------------------------------
-- Table `m5prog`.`adres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `m5prog`.`adres` (
  `adresID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `straat` VARCHAR(5) NOT NULL,
  `straatnummer` VARCHAR(45) NOT NULL,
  `postcode` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`adresID`),
  UNIQUE INDEX `adresID_UNIQUE` (`adresID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `m5prog`.`persoonsite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `m5prog`.`persoonsite` (
  `persoonID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `telefoonnummer` INT NOT NULL,
  `voornnaam` TEXT NOT NULL,
  `achternaam` TEXT NOT NULL,
  `geboorte datum` DATE NOT NULL,
  `geslacht` TEXT NOT NULL,
  `geboorte stad` TEXT NOT NULL,
  `nationaliteit` TEXT NOT NULL,
  PRIMARY KEY (`persoonID`),
  UNIQUE INDEX `idpersoonsite_UNIQUE` (`persoonID` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
