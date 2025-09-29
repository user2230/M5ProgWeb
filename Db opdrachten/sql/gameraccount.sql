-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema gameraccount
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema gameraccount
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gameraccount` DEFAULT CHARACTER SET utf8 ;
USE `gameraccount` ;

-- -----------------------------------------------------
-- Table `gameraccount`.`gamer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gameraccount`.`gamer` (
  `idgamer` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `email` VARCHAR(85) NULL,
  PRIMARY KEY (`idgamer`),
  UNIQUE INDEX `idgamer_UNIQUE` (`idgamer` ASC) VISIBLE,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gameraccount`.`game`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gameraccount`.`game` (
  `idgame` INT NOT NULL AUTO_INCREMENT,
  `game_name` VARCHAR(70) NOT NULL,
  `achievements` VARCHAR(45) NOT NULL,
  `got_achievements` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idgame`),
  UNIQUE INDEX `idgame_UNIQUE` (`idgame` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gameraccount`.`gamer_has_game`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gameraccount`.`gamer_has_game` (
  `gamer_idgamer` INT NOT NULL,
  `game_idgame` INT NOT NULL,
  PRIMARY KEY (`gamer_idgamer`, `game_idgame`),
  INDEX `fk_gamer_has_game_game1_idx` (`game_idgame` ASC) VISIBLE,
  INDEX `fk_gamer_has_game_gamer_idx` (`gamer_idgamer` ASC) VISIBLE,
  CONSTRAINT `fk_gamer_has_game_gamer`
    FOREIGN KEY (`gamer_idgamer`)
    REFERENCES `gameraccount`.`gamer` (`idgamer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_gamer_has_game_game1`
    FOREIGN KEY (`game_idgame`)
    REFERENCES `gameraccount`.`game` (`idgame`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
