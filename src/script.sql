CREATE DATABASE `amendava` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE `members` (
  `idmembers` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `enterprise` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmembers`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `amendava`.`members`(`idmembers`,`name`,`enterprise`) VALUES (1, "Jhonatan","Endava");
INSERT INTO `amendava`.`members`(`idmembers`,`name`,`enterprise`) VALUES (2, "Eduardo","Endava");
INSERT INTO `amendava`.`members`(`idmembers`,`name`,`enterprise`) VALUES (3, "Mario","Endava");
INSERT INTO `amendava`.`members`(`idmembers`,`name`,`enterprise`) VALUES (4, "Diego","Endava");
INSERT INTO `amendava`.`members`(`idmembers`,`name`,`enterprise`) VALUES (5, "Erick","Endava");

--MARIA DB

--CREATE DATABASE `amendava` /*!40100 DEFAULT CHARACTER SET utf8 */;

--CREATE TABLE `members` (
--  `idmembers` int(11) NOT NULL AUTO_INCREMENT,
--  `name` varchar(45) DEFAULT NULL,
--  `enterprise` varchar(45) DEFAULT NULL,
--  PRIMARY KEY (`idmembers`)
--) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--INSERT INTO `amendava`.`members`(`idmembers`,`name`,`enterprise`) VALUES (1, "Erick","Endava-Maria");
--INSERT INTO `amendava`.`members`(`idmembers`,`name`,`enterprise`) VALUES (2, "Diego","Endava-Maria");
--INSERT INTO `amendava`.`members`(`idmembers`,`name`,`enterprise`) VALUES (3, "Mario","Endava-Maria");
--INSERT INTO `amendava`.`members`(`idmembers`,`name`,`enterprise`) VALUES (4, "Eduardo","Endava-Maria");
--INSERT INTO `amendava`.`members`(`idmembers`,`name`,`enterprise`) VALUES (5, "Jhonatan","Endava-Maria");