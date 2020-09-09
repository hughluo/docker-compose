DROP DATABASE IF EXISTS forum;
CREATE DATABASE forum CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE forum;

CREATE TABLE `forum`.`User` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `role` ENUM('admin', 'normal', 'guest') NOT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `forum`.`Post` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `title` VARCHAR(200) NOT NULL,
   `content` VARCHAR(2000) NOT NULL,
   `userId` INT NOT NULL,
   `createdTime` INT NOT NULL,
   `updatedTime` INT NOT NULL,
   PRIMARY KEY (`id`)
);


INSERT INTO `forum`.`User`( `username`, `password`, `email`, `role`)
VALUES ('wexort', 'wexort', 'wexort@wexort.com', 'admin');

INSERT INTO `forum`.`Post`( `title`, `content`, `userId`, `createdTime`, `updatedTime`)
VALUES ('hello wexort', 'Greetings, wexort', '1', UNIX_TIMESTAMP(), UNIX_TIMESTAMP());
