-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema digital_nomad
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema digital_nomad
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `digital_nomad` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `digital_nomad` ;

-- -----------------------------------------------------
-- Table `digital_nomad`.`remote_worker`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `digital_nomad`.`remote_worker` (
  `City` TEXT NOT NULL,
  `Remote_workers` BIGINT NULL DEFAULT NULL,
  PRIMARY KEY (`City`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `digital_nomad`.`general_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `digital_nomad`.`general_info` (
  `City` TEXT NOT NULL,
  `Total score` DOUBLE NULL DEFAULT NULL,
  `Quality of life score` TEXT NULL DEFAULT NULL,
  `Family score` TEXT NULL DEFAULT NULL,
  `Cost` TEXT NULL DEFAULT NULL,
  `Internet` TEXT NULL DEFAULT NULL,
  `Fun` TEXT NULL DEFAULT NULL,
  `Safety` TEXT NULL DEFAULT NULL,
  `Lack of crime` TEXT NULL DEFAULT NULL,
  `Lack of racism` TEXT NULL DEFAULT NULL,
  `Education level` TEXT NULL DEFAULT NULL,
  `Income level` TEXT NULL DEFAULT NULL,
  `English speaking` TEXT NULL DEFAULT NULL,
  `Walkability` TEXT NULL DEFAULT NULL,
  `Traffic safety` TEXT NULL DEFAULT NULL,
  `Happiness` TEXT NULL DEFAULT NULL,
  `Nightlife` TEXT NULL DEFAULT NULL,
  `Free WiFi in city` TEXT NULL DEFAULT NULL,
  `A/C or heating` TEXT NULL DEFAULT NULL,
  `Friendly to foreigners` TEXT NULL DEFAULT NULL,
  `Freedom of speech` TEXT NULL DEFAULT NULL,
  `Female friendly` TEXT NULL DEFAULT NULL,
  `LGBTQ+ friendly` TEXT NULL DEFAULT NULL,
  `Startup Score` TEXT NULL DEFAULT NULL,
  `Hospitals` TEXT NULL DEFAULT NULL,
  `Country` TEXT NULL DEFAULT NULL,
  `Continent` TEXT NULL DEFAULT NULL,
  `Ciudad_Country` TEXT NULL DEFAULT NULL,
  `Latitude` DOUBLE NULL DEFAULT NULL,
  `Longitude` DOUBLE NULL DEFAULT NULL,
  `remote_worker_City` TEXT NOT NULL,
  PRIMARY KEY (`City`),
  INDEX `fk_general_info_remote_worker1_idx` (`remote_worker_City` ASC) VISIBLE,
  CONSTRAINT `fk_general_info_remote_worker1`
    FOREIGN KEY (`remote_worker_City`)
    REFERENCES `digital_nomad`.`remote_worker` (`City`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `digital_nomad`.`weather`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `digital_nomad`.`weather` (
  `City_Month` TEXT NOT NULL,
  `City` TEXT NULL DEFAULT NULL,
  `Month` TEXT NULL DEFAULT NULL,
  `Feel` TEXT NULL DEFAULT NULL,
  `Real` TEXT NULL DEFAULT NULL,
  `Humidity` TEXT NULL DEFAULT NULL,
  `Rain` TEXT NULL DEFAULT NULL,
  `Cloud` TEXT NULL DEFAULT NULL,
  `Air_quality` TEXT NULL DEFAULT NULL,
  `Season` TEXT NULL DEFAULT NULL,
  `Remote_workers` INT NULL DEFAULT NULL,
  `general_info_City` TEXT NOT NULL,
  PRIMARY KEY (`City_Month`),
  INDEX `fk_weather_general_info_idx` (`general_info_City` ASC) VISIBLE,
  CONSTRAINT `fk_weather_general_info`
    FOREIGN KEY (`general_info_City`)
    REFERENCES `digital_nomad`.`general_info` (`City`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;




