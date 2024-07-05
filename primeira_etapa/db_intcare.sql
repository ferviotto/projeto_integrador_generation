SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `db_inticare` DEFAULT CHARACTER SET utf8 ;
USE `db_inticare` ;

CREATE TABLE IF NOT EXISTS `db_inticare`.`tb_categorias` (
  `id` BIGINT AUTO_INCREMENT,
  `nome_categoria` VARCHAR(255) NOT NULL,
  `genero` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `db_inticare`.`tb_usuario` (
  `id` BIGINT AUTO_INCREMENT,
  `nome_usuario` VARCHAR(255) NOT NULL,
  `email_usuario` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(55) NOT NULL,
  `foto_usuario` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `usuario_UNIQUE` (`email_usuario` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db_inticare`.`tb_produtos` (
  `id` BIGINT AUTO_INCREMENT,
  `prod_nome` VARCHAR(100) NOT NULL,
  `prod_descricao` VARCHAR(255) NOT NULL,
  `preco` DECIMAL(6,2) NOT NULL,
  `quantidade` INT NULL,
  `tb_categorias_id` BIGINT NOT NULL,
  `tb_usuario_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_produtos_tb_categorias_idx` (`tb_categorias_id` ASC) VISIBLE,
  INDEX `fk_tb_produtos_tb_usuario1_idx` (`tb_usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produtos_tb_categorias`
    FOREIGN KEY (`tb_categorias_id`)
    REFERENCES `db_inticare`.`tb_categorias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_produtos_tb_usuario1`
    FOREIGN KEY (`tb_usuario_id`)
    REFERENCES `db_inticare`.`tb_usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
