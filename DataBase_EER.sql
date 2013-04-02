create database diplom DEFAULT CHARACTER SET cp1251 ;
use diplom;

CREATE  TABLE `diplom`.`Type` (
  `id_type` INT NOT NULL AUTO_INCREMENT ,
  `name_type` VARCHAR(45) NULL ,
  PRIMARY KEY (`id_type`) );
CREATE  TABLE `diplom`.`Size` (
  `id_size` INT NOT NULL AUTO_INCREMENT ,
  `size` VARCHAR(12) NULL ,
  PRIMARY KEY (`id_size`) );
CREATE  TABLE `diplom`.`Genre` (
  `id_genre` INT NOT NULL AUTO_INCREMENT ,
  `name_genre` VARCHAR(45) NULL ,
  PRIMARY KEY (`id_genre`) );
CREATE  TABLE `diplom`.`Color` (
  `id_color` INT NOT NULL AUTO_INCREMENT ,
  `name_color` VARCHAR(45) NULL ,
  PRIMARY KEY (`id_color`) );
CREATE  TABLE `diplom`.`Place` (
  `id_place` INT NOT NULL AUTO_INCREMENT ,
  `adress_place` INT NULL ,
  PRIMARY KEY (`id_place`) );
CREATE  TABLE IF NOT EXISTS `diplom`.`SubGenre` (
  `id_subGenre` INT NOT NULL AUTO_INCREMENT ,
  `name_subGenre` VARCHAR(45) NULL DEFAULT NULL ,
  `ref_genre` INT NOT NULL ,
  PRIMARY KEY (`id_subGenre`) ,
  INDEX `fk_SubGenre_Genre1` (`ref_genre` ASC) ,
  CONSTRAINT `fk_SubGenre_Genre1`
    FOREIGN KEY (`ref_genre` )
    REFERENCES `diplom`.`Genre` (`id_genre` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
CREATE  TABLE IF NOT EXISTS `diplom`.`Dress` (
  `id_dress` INT NOT NULL AUTO_INCREMENT ,
  `name_dress` VARCHAR(45) NULL DEFAULT NULL ,
  `price_dress` INT NULL DEFAULT NULL ,
  `ref_type` INT NOT NULL ,
  `ref_subgenre` INT NOT NULL ,
  `ref_size` INT NOT NULL ,
  `ref_color` INT NOT NULL ,
  `ref_place` INT NOT NULL ,
  `free` INT NULL DEFAULT NULL ,
  `wath` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`id_dress`) ,
  INDEX `fk_Dress_SubGenre` (`ref_subgenre` ASC) ,
  INDEX `fk_Dress_Color1` (`ref_color` ASC) ,
  INDEX `fk_Dress_Place1` (`ref_place` ASC) ,
  INDEX `fk_Dress_Size1` (`ref_size` ASC) ,
  INDEX `fk_Dress_Type1` (`ref_type` ASC) ,
  CONSTRAINT `fk_Dress_SubGenre`
    FOREIGN KEY (`ref_subgenre` )
    REFERENCES `diplom`.`SubGenre` (`id_subGenre` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Dress_Color1`
    FOREIGN KEY (`ref_color` )
    REFERENCES `diplom`.`Color` (`id_color` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Dress_Place1`
    FOREIGN KEY (`ref_place` )
    REFERENCES `diplom`.`Place` (`id_place` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Dress_Size1`
    FOREIGN KEY (`ref_size` )
    REFERENCES `diplom`.`Size` (`id_size` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Dress_Type1`
    FOREIGN KEY (`ref_type` )
    REFERENCES `diplom`.`Type` (`id_type` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
CREATE  TABLE IF NOT EXISTS `diplom`.`Order` (
  `id_order` INT NOT NULL AUTO_INCREMENT ,
  `ref_dress` INT NOT NULL ,
  `firstname` VARCHAR(45) NULL DEFAULT NULL ,
  `lastname` VARCHAR(45) NULL DEFAULT NULL ,
  `adress` VARCHAR(45) NULL DEFAULT NULL ,
  `e_mail` VARCHAR(45) NULL DEFAULT NULL ,
  `tel` VARCHAR(45) NULL DEFAULT NULL ,
  `start_date` DATE NULL DEFAULT NULL ,
  `finish_date` DATE NULL DEFAULT NULL ,
  `off_date` DATE NULL DEFAULT NULL ,
  `price_penalty` INT NULL DEFAULT NULL ,
  `prepayment` INT NULL DEFAULT NULL ,
  PRIMARY KEY (`id_order`) ,
  INDEX `fk_Order_Dress1` (`ref_dress` ASC) ,
  CONSTRAINT `fk_Order_Dress1`
    FOREIGN KEY (`ref_dress` )
    REFERENCES `diplom`.`Dress` (`id_dress` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
CREATE  TABLE IF NOT EXISTS `diplom`.`Washhouse` (
`id_washhouse` INT NOT NULL AUTO_INCREMENT ,
  `wash_date` DATE NULL DEFAULT NULL ,
  `return_date` DATE NULL DEFAULT NULL ,
  `ref_dress` INT NOT NULL ,
  PRIMARY KEY (`id_washhouse`) ,
  INDEX `fk_Washhouse_Dress1` (`ref_dress` ASC) ,
  CONSTRAINT `fk_Washhouse_Dress1`
    FOREIGN KEY (`ref_dress` )
    REFERENCES `diplom`.`Dress` (`id_dress` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
CREATE  TABLE `diplom`.`InfActor` (

  `idInfActor` INT NOT NULL AUTO_INCREMENT ,

  `firstname` VARCHAR(45) NULL ,

  `lastname` VARCHAR(45) NULL ,

  `adress` VARCHAR(45) NULL ,

  `tel` VARCHAR(45) NULL ,

  `e_mail` VARCHAR(45) NULL ,

  PRIMARY KEY (`idInfActor`) );
CREATE  TABLE IF NOT EXISTS `diplom`.`LogPass` (
  `id_logPass` INT NOT NULL AUTO_INCREMENT ,
  `login` VARCHAR(45) NULL DEFAULT NULL ,
  `password` VARCHAR(45) NULL DEFAULT NULL ,
  `ref_infActor` INT NOT NULL ,
  PRIMARY KEY (`id_logPass`) ,
  INDEX `fk_LogPass_InfActor1` (`ref_infActor` ASC) ,
  CONSTRAINT `fk_LogPass_InfActor1`
    FOREIGN KEY (`ref_infActor` )
    REFERENCES `diplom`.`InfActor` (`idInfActor` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
