-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema instrumentdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `instrumentdb` ;

-- -----------------------------------------------------
-- Schema instrumentdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `instrumentdb` DEFAULT CHARACTER SET utf8 ;
USE `instrumentdb` ;

-- -----------------------------------------------------
-- Table `instrument`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `instrument` ;

CREATE TABLE IF NOT EXISTS `instrument` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `instrument` VARCHAR(45) NOT NULL,
  `brand` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `instrument_family` VARCHAR(45) NULL,
  `date_created` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `instrument_condition` VARCHAR(45) NULL,
  `student_first_name` VARCHAR(45) NULL,
  `student_last_name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS instrument@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'instrument'@'localhost' IDENTIFIED BY 'instrument';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'instrument'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `instrument`
-- -----------------------------------------------------
START TRANSACTION;
USE `instrumentdb`;
INSERT INTO `instrument` (`id`, `instrument`, `brand`, `model`, `instrument_family`, `date_created`, `last_update`, `instrument_condition`, `student_first_name`, `student_last_name`) VALUES (1, 'Trombone', 'Bach', 'Statavarious', 'Brass', NULL, NULL, 'Good', 'James', 'Ferro');
INSERT INTO `instrument` (`id`, `instrument`, `brand`, `model`, `instrument_family`, `date_created`, `last_update`, `instrument_condition`, `student_first_name`, `student_last_name`) VALUES (2, 'Guitar', 'Fender', 'Telecaster', 'String', NULL, NULL, 'Excellent', 'Vincent', 'Ferro');

COMMIT;

