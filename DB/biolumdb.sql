-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema biolumdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `biolumdb` ;

-- -----------------------------------------------------
-- Schema biolumdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `biolumdb` DEFAULT CHARACTER SET utf8 ;
USE `biolumdb` ;

-- -----------------------------------------------------
-- Table `organism`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `organism` ;

CREATE TABLE IF NOT EXISTS `organism` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `scientific_name` VARCHAR(200) NULL,
  `description` TEXT NULL,
  `img_url` VARCHAR(200) NULL,
  `location` VARCHAR(200) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS biolumdb@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'biolumdb'@'localhost' IDENTIFIED BY 'biolumdb';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'biolumdb'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `organism`
-- -----------------------------------------------------
START TRANSACTION;
USE `biolumdb`;
INSERT INTO `organism` (`id`, `name`, `scientific_name`, `description`, `img_url`, `location`) VALUES (1, 'Sea Sparkle', 'Noctiluca scintillans', 'Noctiluca scintillans is a marine species of dinoflagellate that can exist in a green or red form, depending on the pigmentation in its vacuoles. It can be found worldwide, but its geographical distribution varies depending on whether it is green or red. This unicellular microorganism is known for its ability to bioluminesce, giving the water a bright blue glow seen at night. However, blooms of this species can be responsible for environmental hazards, such as toxic red tides. They may also be an indicator of anthropogenic eutrophication.', 'https://news.agu.org/files/2019/06/Blue-tears-Yu-Xian-Yang-small.jpg', 'Worldwide');
INSERT INTO `organism` (`id`, `name`, `scientific_name`, `description`, `img_url`, `location`) VALUES (2, 'Firefly', 'Family Lampyridae ', 'Fireflies are found in temperate and tropical climates. Many live in marshes or in wet, wooded areas where their larvae have abundant sources of food. While all known fireflies glow as larvae, only some species produce light in their adult stage, and the location of the light organ varies among species and between sexes of the same species. Fireflies have attracted human attention since classical antiquity; their presence has been taken to signify a wide variety of conditions in different cultures and is especially appreciated aesthetically in Japan, where parks are set aside for this specific purpose.', 'https://www.ripleys.com/wp-content/uploads/2022/08/shutterstock_669035905-e1660066718588.jpg', 'Worldwide');
INSERT INTO `organism` (`id`, `name`, `scientific_name`, `description`, `img_url`, `location`) VALUES (3, 'Sierra luminous millipedes', 'Motyxia ssp. ', 'Motyxia is a genus of cyanide-producing millipedes (collectively known as Sierra luminous millipedes or motyxias[1]) that are endemic to the southern Sierra Nevada, Tehachapi, and Santa Monica mountain ranges of California. Motyxias are blind and produce the poison cyanide, like all members of the Polydesmida. All species have the ability to glow brightly: some of the few known instances of bioluminescence in millipedes.', 'https://critter.science/wp-content/uploads/2019/07/slm1a-scaled.jpg', 'North America');
INSERT INTO `organism` (`id`, `name`, `scientific_name`, `description`, `img_url`, `location`) VALUES (4, 'Crystal Jelly', 'Aequorea victoria ', 'Aequorea victoria, also sometimes called the crystal jelly, is a bioluminescent hydrozoan jellyfish, or hydromedusa, that is found off the west coast of North America.', 'https://www.montereybayaquarium.org/globalassets/mba/images/animals/invertebrates/crystal-jelly-rw10-464.jpg', 'North America');
INSERT INTO `organism` (`id`, `name`, `scientific_name`, `description`, `img_url`, `location`) VALUES (5, 'Polka-dot tree frog', 'Boana punctata', 'The polka-dot tree frog, also known as the dotted tree frog, is a frog species in the family Hylidae found in much of South America and also in Trinidad and Tobago. It is fairly small with a snout–to–vent length of c. 3–4 cm.', 'https://www.fieldmuseum.org/sites/default/files/styles/3x2_1400w/public/jgmimg_2643-editar1_jorge_e._garcia_melo.jpg?itok=dXMdGNZi', 'South America');

COMMIT;

