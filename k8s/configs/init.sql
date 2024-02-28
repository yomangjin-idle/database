CREATE SCHEMA IF NOT EXISTS `yomangjin` DEFAULT CHARACTER SET utf8mb4;

GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root' WITH GRANT OPTION;
GRANT ALL ON yomangjin.* TO 'root'@'localhost';
FLUSH PRIVILEGES;

USE `yomangjin`;

CREATE TABLE IF NOT EXISTS `yomangjin`.`tour` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `address` VARCHAR(255) COLLATE 'utf8mb3_bin' NULL DEFAULT NULL,
  `content` VARCHAR(511) COLLATE 'utf8mb3_bin' NULL DEFAULT NULL,
  `img_path` VARCHAR(255) COLLATE 'utf8mb3_bin' NULL DEFAULT NULL,
  `name` VARCHAR(255) COLLATE 'utf8mb3_bin' NULL DEFAULT NULL,
  `x` DOUBLE NULL DEFAULT NULL,
  `y` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `yomangjin`.`image` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(511) COLLATE 'utf8mb3_bin' NULL DEFAULT NULL,
  `img_path` VARCHAR(255) COLLATE 'utf8mb3_bin' NULL DEFAULT NULL,
  `tour_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FKmbgj1irf3sy7672g02dedrea` (`tour_id` ASC) VISIBLE,
  CONSTRAINT `FKmbgj1irf3sy7672g02dedrea`
    FOREIGN KEY (`tour_id`)
    REFERENCES `yomangjin`.`tour` (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `yomangjin`.`near_tour` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `address` VARCHAR(255) COLLATE 'utf8mb3_bin' NULL DEFAULT NULL,
  `content` VARCHAR(255) COLLATE 'utf8mb3_bin' NULL DEFAULT NULL,
  `dis` INT NULL DEFAULT NULL,
  `name` VARCHAR(255) COLLATE 'utf8mb3_bin' NULL DEFAULT NULL,
  `tour_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK2ipodpxkyb7byb051j8iakndh` (`tour_id` ASC) VISIBLE,
  CONSTRAINT `FK2ipodpxkyb7byb051j8iakndh`
    FOREIGN KEY (`tour_id`)
    REFERENCES `yomangjin`.`tour` (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `yomangjin`.`speak_file` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `file_path` VARCHAR(255) COLLATE 'utf8mb3_bin' NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
