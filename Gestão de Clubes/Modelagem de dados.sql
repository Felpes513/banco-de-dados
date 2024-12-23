-- MySQL Script generated by MySQL Workbench
-- Sat Dec  7 16:36:58 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Clubes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Clubes` (
  `Id_clube` INT NOT NULL,
  `Nome` VARCHAR(50) NOT NULL,
  `Cidade` VARCHAR(50) NOT NULL,
  `DataCriacao` DATETIME NOT NULL,
  `logo` BLOB NOT NULL,
  PRIMARY KEY (`Id_clube`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Jogadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Jogadores` (
  `IDjogador` INT NOT NULL,
  `Nome` VARCHAR(50) NOT NULL,
  `Nacionalidade` VARCHAR(50) NOT NULL,
  `Posicao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IDjogador`),
  CONSTRAINT `id_clube`
    FOREIGN KEY (`IDjogador`)
    REFERENCES `mydb`.`Clubes` (`Id_clube`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ligas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ligas` (
  `idLigas` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `ComecoTemporada` YEAR(4) NOT NULL,
  `FinalTemporada` YEAR(4) NOT NULL,
  PRIMARY KEY (`idLigas`))
ENGINE = InnoDB
COMMENT = '	';


-- -----------------------------------------------------
-- Table `mydb`.`Trofeus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Trofeus` (
  `idTrofeus` INT NOT NULL,
  `DataConquista` TIMESTAMP(15) NOT NULL,
  `NomeVencedor` VARCHAR(45) NOT NULL,
  `NomeTrofeu` VARCHAR(45) NOT NULL,
  `Jogadores_IDjogador` INT NOT NULL,
  PRIMARY KEY (`idTrofeus`, `Jogadores_IDjogador`),
  INDEX `fk_Trofeus_Jogadores1_idx` (`Jogadores_IDjogador` ASC) VISIBLE,
  CONSTRAINT `fk_Trofeus_Jogadores1`
    FOREIGN KEY (`Jogadores_IDjogador`)
    REFERENCES `mydb`.`Jogadores` (`IDjogador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ligas_has_Trofeus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ligas_has_Trofeus` (
  `Ligas_idLigas` INT NOT NULL,
  `Trofeus_idTrofeus` INT NOT NULL,
  PRIMARY KEY (`Ligas_idLigas`, `Trofeus_idTrofeus`),
  INDEX `fk_Ligas_has_Trofeus_Trofeus1_idx` (`Trofeus_idTrofeus` ASC) VISIBLE,
  INDEX `fk_Ligas_has_Trofeus_Ligas1_idx` (`Ligas_idLigas` ASC) VISIBLE,
  CONSTRAINT `fk_Ligas_has_Trofeus_Ligas1`
    FOREIGN KEY (`Ligas_idLigas`)
    REFERENCES `mydb`.`Ligas` (`idLigas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ligas_has_Trofeus_Trofeus1`
    FOREIGN KEY (`Trofeus_idTrofeus`)
    REFERENCES `mydb`.`Trofeus` (`idTrofeus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Clubes_has_Ligas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Clubes_has_Ligas` (
  `Clubes_Id_clube` INT NOT NULL,
  `Ligas_idLigas` INT NOT NULL,
  PRIMARY KEY (`Clubes_Id_clube`, `Ligas_idLigas`),
  INDEX `fk_Clubes_has_Ligas_Ligas1_idx` (`Ligas_idLigas` ASC) VISIBLE,
  INDEX `fk_Clubes_has_Ligas_Clubes1_idx` (`Clubes_Id_clube` ASC) VISIBLE,
  CONSTRAINT `fk_Clubes_has_Ligas_Clubes1`
    FOREIGN KEY (`Clubes_Id_clube`)
    REFERENCES `mydb`.`Clubes` (`Id_clube`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Clubes_has_Ligas_Ligas1`
    FOREIGN KEY (`Ligas_idLigas`)
    REFERENCES `mydb`.`Ligas` (`idLigas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
