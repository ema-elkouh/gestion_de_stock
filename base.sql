DROP TABLE IF EXISTS `employes`;


CREATE TABLE `employes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `salaire` decimal(10,0) DEFAULT NULL,
  `id_service` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `employes` WRITE;

INSERT INTO `employes` VALUES (1,'Dupont','Juliette',4000,1),(2,'Pagnol','Marcel',2000,1);

UNLOCK TABLES;


DROP TABLE IF EXISTS `etage`;

CREATE TABLE `etage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `numero` int DEFAULT NULL,
  `superficie` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `etage` WRITE;

INSERT INTO `etage` VALUES (1,'RDC',0,500),(2,'R+1',1,500);

UNLOCK TABLES;


DROP TABLE IF EXISTS `etudiants`;


CREATE TABLE `etudiants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `age` int NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `etudiants` WRITE;

INSERT INTO `etudiants` VALUES (1,'Spaghetti','Betty',23,'betty.spaghetti@laplateforme.io'),(2,'Steak','Chuck',45,'chuck.steak@laplateforme.io'),(3,'Doe','John',18,'john.doe@laplateforme.io'),(4,'Barnes','Binkie',16,'binkie.barnes@laplateforme.io'),(5,'Dupuis','Gertrude',20,'gertrude.dupuis@laplateforme.io'),(6,'Dupuis','Martin',18,'martin.dupuis@laplateforme.io'),(7,'Spaghetti','Betty',23,'betty.spaghetti@laplateforme.io');

UNLOCK TABLES;


DROP TABLE IF EXISTS `salles`;


CREATE TABLE `salles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `id_etage` int DEFAULT NULL,
  `capacite` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `salles` WRITE;

INSERT INTO `salles` VALUES (1,'Lounge',1,100),(2,'Studio Son',1,5),(3,'Broadcasting',2,50),(4,'Bocal Peda',2,4),(5,'Coworking',2,80),(6,'Studio Video',2,5);

UNLOCK TABLES;


DROP TABLE IF EXISTS `services`;


CREATE TABLE `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



LOCK TABLES `services` WRITE;

INSERT INTO `services` VALUES (1,'Administration'),(2,'Direction'),(3,'Enseignement');

UNLOCK TABLES;
