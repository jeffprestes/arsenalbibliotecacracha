SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `bae` DEFAULT CHARACTER SET latin1 ;
USE `bae` ;

-- -----------------------------------------------------
-- Table `bae`.`acoacolhidos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bae`.`acoacolhidos` ;

CREATE  TABLE IF NOT EXISTS `bae`.`acoacolhidos` (
  `acoNR` INT(10) UNSIGNED ZEROFILL NOT NULL ,
  `acoNome` VARCHAR(100) NOT NULL ,
  `acoLeito` TINYINT(4) NOT NULL ,
  `acoDataNasc` DATE NOT NULL ,
  `acoDataEmissao` DATE NOT NULL ,
  `acoDataEntrada` DATE NULL DEFAULT NULL ,
  PRIMARY KEY (`acoNR`) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `bae`.`visvisitas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bae`.`visvisitas` ;

CREATE  TABLE IF NOT EXISTS `bae`.`visvisitas` (
  `visId` INT(11) NOT NULL ,
  `visData` DATE NOT NULL ,
  `visHorario` TIME NOT NULL ,
  `acoNR` INT(11) NOT NULL ,
  PRIMARY KEY (`visId`) ,
  UNIQUE INDEX `idxVisitas` (`visData` ASC, `acoNR` ASC) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;

USE `bae` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
