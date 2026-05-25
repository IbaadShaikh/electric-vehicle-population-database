CREATE DATABASE  IF NOT EXISTS `electric_vehicles` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `electric_vehicles`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: electric_vehicles
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `battery`
--

DROP TABLE IF EXISTS `battery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `battery` (
  `battery_id` int NOT NULL,
  `Electric_Vehicle_Type` varchar(35) NOT NULL,
  PRIMARY KEY (`battery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battery`
--

LOCK TABLES `battery` WRITE;
/*!40000 ALTER TABLE `battery` DISABLE KEYS */;
INSERT INTO `battery` VALUES (1,'Battery Electric Vehicle'),(2,'Plug-in Hybrid Electric Vehicle');
/*!40000 ALTER TABLE `battery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `car_id` int NOT NULL,
  `VIN` varchar(20) NOT NULL,
  `model_id` int NOT NULL,
  PRIMARY KEY (`car_id`),
  KEY `fk_CARS_MODELS1_idx` (`model_id`),
  CONSTRAINT `fk_CARS_MODELS1` FOREIGN KEY (`model_id`) REFERENCES `models` (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'2C4RC1H70K',11),(2,'2C4RC1H71K',11),(3,'2C4RC1H72K',11),(4,'2C4RC1H73K',11),(5,'2C4RC1H74K',11),(6,'2C4RC1H75K',11),(7,'2C4RC1H76K',11),(8,'2C4RC1H77K',11),(9,'2C4RC1H78K',11),(10,'2C4RC1H79K',11),(11,'2C4RC1H7XK',11),(12,'2C4RC1L72K',11),(13,'2C4RC1L73K',11),(14,'2C4RC1L74K',11),(15,'2C4RC1L75K',11),(16,'2C4RC1L76K',11),(17,'2C4RC1L77K',11),(18,'2C4RC1L7XK',11),(19,'2C4RC1N70K',11),(20,'2C4RC1N71K',11),(21,'5YJRE11B08',25),(22,'5YJRE11B18',25),(23,'5YJRE11B28',25),(24,'5YJRE11B38',25),(25,'5YJRE11B48',25),(26,'5YJRE11B58',25),(27,'5YJRE11B68',25),(28,'5YJRE11B78',25),(29,'5YJRE11B88',25),(30,'5YJRE11B98',25),(31,'5YJRE11BX8',25),(32,'5YJRE1A10A',26),(33,'5YJRE1A10B',27),(34,'5YJRE1A11A',26),(35,'5YJRE1A11B',27),(36,'5YJRE1A12A',26),(37,'5YJRE1A14A',26),(38,'5YJRE1A14B',27),(39,'5YJRE1A15A',26),(40,'5YJRE1A16A',26),(41,'5YJSA1DN3D',23),(42,'5YJSA1DN4C',22),(43,'5YJSA1DN4D',23),(44,'5YJSA1DN5C',22),(45,'5YJSA1DN5D',23),(46,'5YJSA1DN6C',22),(47,'5YJSA1DN6D',23),(48,'5YJSA1DN7C',22),(49,'5YJSA1DN7D',23),(50,'5YJSA1DN8C',22),(51,'5YJSA1H10E',24),(52,'5YJSA1H11E',24),(53,'5YJSA1H12E',24),(54,'5YJSA1H13E',24),(55,'5YJSA1H14E',24),(56,'JF2GTDNC0K',21),(57,'JF2GTDNC1K',21),(58,'JF2GTDNC2K',21),(59,'JF2GTDNC3K',21),(60,'JF2GTDNC4K',21),(61,'KNDJP3AE0H',13),(62,'KNDJP3AE0J',13),(63,'KNDJP3AE1J',14),(64,'KNDJP3AE2H',14),(65,'LREKK5RX0J',10),(66,'LREKK5RX2J',10),(67,'LREKK5RX2H',9),(68,'LYVBR0DK0J',29),(69,'LYVBR0DK4K',30),(70,'WBA7J2C32H',6),(71,'WBA7J2C34H',6),(72,'WBA7J2C35H',6),(73,'WBA7J2C36H',6),(74,'WBA7J2C50J',7),(75,'WBA7J2C51J',7),(76,'WBA7J2C53J',7),(77,'WBA7J2C54J',7),(78,'WBA7J2C52K',8),(79,'WBA8E1C30H',2),(80,'WBA8E1C31H',2),(81,'WBA8E1C51H',2),(82,'WBA8E1C50G',1),(83,'WBA8E1C51J',3),(84,'WBAJA9C51J',4),(85,'WBAJA9C52K',5),(86,'WMZYU7C42J',16),(87,'WMZYU7C56K',17),(88,'WP0AH2A73J',18),(89,'WP0CA2A13F',19),(90,'WP1AE2AY0L',20),(91,'YH4K14AA0C',12),(92,'YV4BR0PK0J',28),(93,'YV4BR0PK5J',28);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars_locations`
--

DROP TABLE IF EXISTS `cars_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars_locations` (
  `car_location_id` int NOT NULL,
  `car_id` int NOT NULL,
  `location_id` int NOT NULL,
  `DOL_License_No` varchar(25) NOT NULL,
  PRIMARY KEY (`car_location_id`),
  KEY `fk_CARS_has_LOCATIONS_LOCATIONS1_idx` (`location_id`),
  KEY `fk_CARS_has_LOCATIONS_CARS_idx` (`car_id`),
  CONSTRAINT `fk_CARS_has_LOCATIONS_CARS` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
  CONSTRAINT `fk_CARS_has_LOCATIONS_LOCATIONS1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars_locations`
--

LOCK TABLES `cars_locations` WRITE;
/*!40000 ALTER TABLE `cars_locations` DISABLE KEYS */;
INSERT INTO `cars_locations` VALUES (1,1,235,'211631591'),(2,2,218,'350302242'),(3,3,284,'211241698'),(4,3,185,'255619941'),(5,3,113,'477015514'),(6,4,218,'110506903'),(7,4,127,'154204473'),(8,4,218,'271556379'),(9,5,20,'141948404'),(10,6,218,'101109921'),(11,7,121,'9090896'),(12,7,218,'180792545'),(13,7,272,'298346856'),(14,8,121,'347352036'),(15,8,218,'474955393'),(16,9,89,'192400848'),(17,9,218,'280282418'),(18,10,236,'316900251'),(19,11,120,'122359478'),(20,11,218,'271823394'),(21,12,96,'347620948'),(22,13,31,'125483592'),(23,13,86,'190080033'),(24,13,34,'478138202'),(25,14,140,'114419329'),(26,14,250,'477789056'),(27,15,255,'477248348'),(28,16,27,'190387564'),(29,16,282,'475722012'),(30,17,140,'215094316');
/*!40000 ALTER TABLE `cars_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars_locations_utilities`
--

DROP TABLE IF EXISTS `cars_locations_utilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars_locations_utilities` (
  `car_location_id` int NOT NULL,
  `utility_id` int NOT NULL,
  PRIMARY KEY (`car_location_id`,`utility_id`),
  KEY `fk_CARS_LOCATIONS_UTILITIES_CARS_LOCATIONS1_idx` (`car_location_id`),
  CONSTRAINT `fk_CARS_LOCATIONS_UTILITIES_CARS_LOCATIONS1` FOREIGN KEY (`car_location_id`) REFERENCES `cars_locations` (`car_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars_locations_utilities`
--

LOCK TABLES `cars_locations_utilities` WRITE;
/*!40000 ALTER TABLE `cars_locations_utilities` DISABLE KEYS */;
INSERT INTO `cars_locations_utilities` VALUES (1,32),(2,2),(2,8),(2,9),(2,10),(3,32),(4,2),(4,8),(4,10),(5,8),(5,39),(6,2),(6,8),(6,10),(6,11),(7,8),(7,39),(8,2),(8,8),(8,10),(8,11),(9,2),(9,21),(10,2),(10,8),(10,10),(10,11),(11,8),(11,39),(12,2),(12,8),(12,10),(12,11),(13,41),(14,8),(14,39),(15,2),(16,8),(16,10),(16,11),(16,32),(17,2),(17,8),(17,10),(17,11),(18,32),(19,8),(19,39),(20,2),(20,8),(20,10),(20,11);
/*!40000 ALTER TABLE `cars_locations_utilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `location_id` int NOT NULL,
  `County` varchar(35) NOT NULL,
  `City` varchar(35) NOT NULL,
  `Postal_Code` int NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Asotin','Asotin',99402),(2,'Asotin','Clarkston',99403),(3,'Benton','Kennewick',99336),(4,'Benton','Richland',99352),(5,'Benton','Benton City',99320),(6,'Benton','Kennewick',99337),(7,'Benton','Kennewick',99338),(8,'Benton','West Richland',99353),(9,'Benton','Richland',99354),(10,'Chelan','Wenatchee',98801),(11,'Chelan','Chelan',98816),(12,'Chelan','Leavenworth',98826),(13,'Chelan','Peshastin',98847),(14,'Clallam','Clallam Bay',98326),(15,'Clallam','Port Angeles',98362),(16,'Clallam','Port Angeles',98363),(17,'Clallam','Sequim',98382),(18,'Clark','Battle Ground',98604),(19,'Clark','Brush Prairie',98606),(20,'Clark','Camas',98607),(21,'Clark','La Center',98629),(22,'Clark','Ridgefield',98642),(23,'Clark','Vancouver',98660),(24,'Clark','Vancouver',98661),(25,'Clark','Vancouver',98662),(26,'Clark','Vancouver',98663),(27,'Clark','Vancouver',98664),(28,'Clark','Vancouver',98665),(29,'Clark','Washougal',98671),(30,'Clark','Yacolt',98675),(31,'Clark','Vancouver',98682),(32,'Clark','Vancouver',98683),(33,'Clark','Vancouver',98684),(34,'Clark','Vancouver',98685),(35,'Clark','Vancouver',98686),(36,'Columbia','Dayton',99328),(37,'Cowlitz','Ariel',98603),(38,'Cowlitz','Castle Rock',98611),(39,'Cowlitz','Kelso',98626),(40,'Cowlitz','Longview',98632),(41,'Cowlitz','Silverlake',98645),(42,'Cowlitz','Woodland',98674),(43,'Douglas','East Wenatchee',98802),(44,'Douglas','Orondo',98843),(45,'Franklin','Pasco',99301),(46,'Grant','Moses Lake',99837),(47,'Grant','Othello',99344),(48,'Grant','Quincy',98848),(49,'Grays Harbor','Aberdeen',98520),(50,'Grays Harbor','Hoquiam',98550),(51,'Grays Harbor','Montesano',98563),(52,'Grays Harbor','Ocean Shores',98569),(53,'Grays Harbor','Westport',98595),(54,'Island','Clinton',98236),(55,'Island','Coupeville',98239),(56,'Island','Freeland',98249),(57,'Island','Greenbank',98253),(58,'Island','Langley',98260),(59,'Island','Oak Harbor',98277),(60,'Island','Camano Island',98282),(61,'Jefferson','Port Hadlock',98339),(62,'Jefferson','Nordland',98358),(63,'Jefferson','Port Ludlow',98365),(64,'Jefferson','Port Townsend',98368),(65,'Jefferson','Quilcene',98376),(66,'Jefferson','Sequim',98382),(67,'King','Auburn',98001),(68,'King','Auburn',98002),(69,'King','Federal Way',98003),(70,'King','Bellevue',98004),(71,'King','Bellevue',98005),(72,'King','Bellevue',98006),(73,'King','Bellevue',98007),(74,'King','Bellevue',98008),(75,'King','Black Diamond',98010),(76,'King','Bothell',98011),(77,'King','Carnation',98014),(78,'King','Duvall',98019),(79,'King','Enumclaw',98022),(80,'King','Federal Way',98023),(81,'King','Fall City',98024),(82,'King','Issaquah',98027),(83,'King','Kenmore',98028),(84,'King','Issaquah',98029),(85,'King','Kent',98030),(86,'King','Kent',98031),(87,'King','Kent',98032),(88,'King','Kirkland',98033),(89,'King','Kirkland',98034),(90,'King','Maple Valley',98038),(91,'King','Medina',98039),(92,'King','Mercer Island',98040),(93,'King','Kent',98042),(94,'King','North Bend',98045),(95,'King','Pacific',98047),(96,'King','Redmond',98052),(97,'King','Redmond',98053),(98,'King','Renton',98055),(99,'King','Renton',98056),(100,'King','Renton',98057),(101,'King','Renton',98058),(102,'King','Renton',98059),(103,'King','Snoqualmie',98065),(104,'King','Vashon',98070),(105,'King','Redmond',98072),(106,'King','Sammamish',98074),(107,'King','Sammamish',98075),(108,'King','Woodinville',98077),(109,'King','Auburn',98092),(110,'King','Seattle',98101),(111,'King','Seattle',98102),(112,'King','Seattle',98103),(113,'King','Seattle',98104),(114,'King','Seattle',98105),(115,'King','Seattle',98106),(116,'King','Seattle',98107),(117,'King','Seattle',98108),(118,'King','Seattle',98109),(119,'King','Seattle',98112),(120,'King','Seattle',98115),(121,'King','Seattle',98116),(122,'King','Seattle',98119),(123,'King','Seattle',98122),(124,'King','Seattle',98125),(125,'King','Seattle',98126),(126,'King','Shoreline',98133),(127,'King','Seattle',98134),(128,'King','Seattle',98136),(129,'King','Seattle',98144),(130,'King','Burien',98146),(131,'King','Lake Forest Park',98155),(132,'King','Burien',98166),(133,'King','Tukwila',98168),(134,'King','Shoreline',98177),(135,'King','Seattle',98178),(136,'King','Seatac',98188),(137,'King','Des Moines',98198),(138,'King','Seattle',98199),(139,'King','Baring',98224),(140,'Kitsap','Bainbridge Island',98110),(141,'Kitsap','Bremerton',98310),(142,'Kitsap','Bremerton',98311),(143,'Kitsap','Bremerton',98312),(144,'Kitsap','Bremerton',98337),(145,'Kitsap','Kingston',98346),(146,'Kitsap','Olalla',98359),(147,'Kitsap','Port Orchard',98366),(148,'Kitsap','Port Orchard',98367),(149,'Kitsap','Poulsbo',98370),(150,'Kitsap','Silverdale',98383),(151,'Kitsap','Suquamish',98392),(152,'Kittitas','Snoqualmie Pass',98068),(153,'Kittitas','Cle Elum',98922),(154,'Kittitas','Ellensburg',98926),(155,'Kittitas','Ronald',98940),(156,'Kittitas','Roslyn',98941),(157,'Klickitat','Lyle',98635),(158,'Klickitat','White Salmon',98672),(159,'Lewis','Centralia',98531),(160,'Lewis','Chehalis',98532),(161,'Lewis','Mossyrock',98564),(162,'Lewis','Winlock',98596),(163,'Mason','Allyn',98524),(164,'Mason','Belfair',98528),(165,'Mason','Grapeview',98546),(166,'Mason','Hoodsport',98548),(167,'Mason','Shelton',98584),(168,'Mason','Union',98592),(169,'Okanogan','Pateros',98846),(170,'Okanogan','Tonasket',98855),(171,'Okanogan','Winthrop',98862),(172,'Pacific','Raymond',98577),(173,'Pacific','Tokeland',98590),(174,'Pacific','Long Beach',98631),(175,'Pacific','Long Beach',98634),(176,'Pacific','Surfside',98640),(177,'Pacific','Ocean Park',98640),(178,'Pierce','Enumclaw',98022),(179,'Pierce','Auburn',98092),(180,'Pierce','Anderson Island',98303),(181,'Pierce','Buckley',98321),(182,'Pierce','Dupont',98327),(183,'Pierce','Eatonville',98328),(184,'Pierce','Gig Harbor',98329),(185,'Pierce','Gig Harbor',98332),(186,'Pierce','Fox Island',98333),(187,'Pierce','Gig Harbor',98335),(188,'Pierce','Graham',98338),(189,'Pierce','Lakebay',98349),(190,'Pierce','Longbranch',98351),(191,'Pierce','Orting',98360),(192,'Pierce','Edgewood',98371),(193,'Pierce','Puyallup',98372),(194,'Pierce','Puyallup',98373),(195,'Pierce','South Hill',98374),(196,'Pierce','South Hill',98375),(197,'Pierce','Spanaway',98387),(198,'Pierce','Steilacoom',98388),(199,'Pierce','Bonney Lake',98391),(200,'Pierce','Vaughn',98394),(201,'Pierce','Tacoma',98402),(202,'Pierce','Tacoma',98403),(203,'Pierce','Tacoma',98404),(204,'Pierce','Tacoma',98405),(205,'Pierce','Tacoma',98406),(206,'Pierce','Tacoma',98407),(207,'Pierce','Tacoma',98408),(208,'Pierce','Tacoma',98409),(209,'Pierce','Tacoma',98422),(210,'Pierce','Fife',98424),(211,'Pierce','Tacoma',98444),(212,'Pierce','Tacoma',98445),(213,'Pierce','Tacoma',98446),(214,'Pierce','Tacoma',98465),(215,'Pierce','Fircrest',98466),(216,'Pierce','University Place',98467),(217,'Pierce','Lakewood',98498),(218,'Pierce','Lakewood',98499),(219,'Pierce','Roy',98580),(220,'San Juan','Eastsound',98245),(221,'San Juan','Friday Harbor',98250),(222,'San Juan','Friday Harbor',98261),(223,'San Juan','Olga',98279),(224,'San Juan','Shaw Island',98286),(225,'Skagit','Anacortes',98221),(226,'Skagit','Bow',98232),(227,'Skagit','Burlington',98233),(228,'Skagit','La Conner',98257),(229,'Skagit','Mount Vernon',98273),(230,'Skagit','Mount Vernon',98274),(231,'Skagit','Sedro-Woolley',98284),(232,'Skamania','Underwood',98651),(233,'Skamania','Stevenson',98648),(234,'Snohomish','Bothell',98012),(235,'Snohomish','Edmonds',98020),(236,'Snohomish','Bothell',98021),(237,'Snohomish','Edmonds',98026),(238,'Snohomish','Lynnwood',98036),(239,'Snohomish','Lynnwood',98037),(240,'Snohomish','Mountlake Terrace',98043),(241,'Snohomish','Woodinville',98072),(242,'Snohomish','Lynnwood',98087),(243,'Snohomish','Everett',98201),(244,'Snohomish','Everett',98203),(245,'Snohomish','Everett',98204),(246,'Snohomish','Everett',98208),(247,'Snohomish','Arlington',98223),(248,'Snohomish','Gold Bar',98251),(249,'Snohomish','Granite Falls',98252),(250,'Snohomish','Lake Stevens',98258),(251,'Snohomish','Marysville',98270),(252,'Snohomish','Marysville',98271),(253,'Snohomish','Monroe',98272),(254,'Snohomish','Mukilteo',98275),(255,'Snohomish','Snohomish',98290),(256,'Snohomish','Stanwood',98292),(257,'Snohomish','Sultan',98294),(258,'Snohomish','Snohomish',98296),(259,'Spokane','Colbert',99005),(260,'Spokane','Deer Park',99006),(261,'Spokane','Edwall',99008),(262,'Spokane','Fairchild Air Force',99011),(263,'Spokane','Greenacres',99016),(264,'Spokane','Liberty Lake',99019),(265,'Spokane','Medical Lake',99022),(266,'Spokane','Newman Lake',99025),(267,'Spokane','Otis Orchards',99027),(268,'Spokane','Rockford',99030),(269,'Spokane','Spokane',99037),(270,'Spokane','Spokane',99201),(271,'Spokane','Spokane',99202),(272,'Spokane','Spokane',99203),(273,'Spokane','Spokane',99204),(274,'Spokane','Spokane',99205),(275,'Spokane','Spokane',99206),(276,'Spokane','Spokane',99208),(277,'Spokane','Spokane Valley',99212),(278,'Spokane','Spokane Valley',99216),(279,'Spokane','Spokane',99217),(280,'Spokane','Spokane',99218),(281,'Spokane','Spokane',99223),(282,'Spokane','Spokane',99224),(283,'Stevens','Chewelah',99109),(284,'Thurston','Olympia',98501),(285,'Thurston','Tumwater',98501),(286,'Thurston','Olympia',98502),(287,'Thurston','Lacey',98503),(288,'Thurston','Olympia',98503),(289,'Thurston','Olympia',98506),(290,'Thurston','Olympia',98512),(291,'Thurston','Tumwater',98512),(292,'Thurston','Olympia',98513),(293,'Thurston','Olympia',98516),(294,'Thurston','Rainier',98576),(295,'Thurston','Rainier',98589),(296,'Thurston','Tenino',98589),(297,'Thurston','Yelm',98597),(298,'Wahkiakum','Cathlamet',98612),(299,'Walla Walla','Touchet',99360),(300,'Walla Walla','Walla Walla',99362),(301,'Whatcom','Bellingham',98225),(302,'Whatcom','Bellingham',98226),(303,'Whatcom','Bellingham',98229),(304,'Whatcom','Blaine',98230),(305,'Whatcom','Custer',98240),(306,'Whatcom','Deming',98244),(307,'Whatcom','Everson',98247),(308,'Whatcom','Ferndale',98248),(309,'Whatcom','Lynden',98264),(310,'Whatcom','Maple Falls',98266),(311,'Whatcom','Point Roberts',98281),(312,'Whitman','Palouse',99161),(313,'Whitman','Pullman',99163),(314,'Yakima','Yakima',98902),(315,'Yakima','Yakima',98903),(316,'Yakima','Yakima',98908),(317,'Yakima','Moxee',98936),(318,'Yakima','Naches',98937),(319,'Yakima','Selah',98942),(320,'Yakima','Sunnyside',98944),(321,'Yakima','Zillah',98953);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `make`
--

DROP TABLE IF EXISTS `make`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `make` (
  `make_id` int NOT NULL,
  `Make_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`make_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `make`
--

LOCK TABLES `make` WRITE;
/*!40000 ALTER TABLE `make` DISABLE KEYS */;
INSERT INTO `make` VALUES (1,'BMW'),(2,'CADILLAC'),(3,'CHRYSLER'),(4,'FISKER'),(5,'KIA'),(6,'MINI'),(7,'PORSCHE'),(8,'SUBARU'),(9,'TESLA'),(10,'VOLVO');
/*!40000 ALTER TABLE `make` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `models` (
  `model_id` int NOT NULL,
  `make_id` int NOT NULL,
  `Model_Year` int NOT NULL,
  `Model_Name` varchar(35) NOT NULL,
  `battery_id` int NOT NULL,
  `Electric_Range` int NOT NULL,
  `MSRP` int NOT NULL,
  `CAFV_Eligibility` varchar(25) NOT NULL,
  PRIMARY KEY (`model_id`),
  KEY `fk_MODELS_BATTERY1_idx` (`battery_id`),
  KEY `fk_MODELS_MAKE1_idx` (`make_id`),
  CONSTRAINT `fk_MODELS_BATTERY1` FOREIGN KEY (`battery_id`) REFERENCES `battery` (`battery_id`),
  CONSTRAINT `fk_MODELS_MAKE1` FOREIGN KEY (`make_id`) REFERENCES `make` (`make_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (1,1,2016,'330E',2,14,43700,'Not eligible'),(2,1,2017,'330E',2,14,44100,'Not eligible'),(3,1,2018,'330E',2,14,45600,'Not eligible'),(4,1,2018,'530E',2,14,54950,'Not eligible'),(5,1,2019,'530E',2,15,55700,'Not eligible'),(6,1,2017,'740E',2,14,89100,'Not eligible'),(7,1,2018,'740E',2,14,90700,'Not eligible'),(8,1,2019,'740E',2,14,91250,'Not eligible'),(9,2,2017,'CT6',2,31,75095,'Eligible'),(10,2,2018,'CT6',2,31,75095,'Eligible'),(11,3,2019,'PACIFICA',2,32,39995,'Eligible'),(12,4,2012,'KARMA',2,33,102000,'Eligible'),(13,5,2016,'SOUL',1,93,31950,'Eligible'),(14,5,2017,'SOUL EV',1,93,32250,'Eligible'),(15,5,2018,'SOUL EV',1,111,33950,'Eligible'),(16,6,2018,'COUNTRYMAN',2,12,36800,'Not eligible'),(17,6,2019,'COUNTRYMAN',2,12,36900,'Not eligible'),(18,7,2015,'918',2,12,845000,'Not eligible'),(19,7,2018,'PANAMERA',2,14,194400,'Not eligible'),(20,7,2020,'CAYENNE',2,14,81100,'Not eligible'),(21,8,2019,'CROSSTREK',2,17,34995,'Not eligible'),(22,9,2012,'MODEL S',1,265,59900,'Eligible'),(23,9,2013,'MODEL S',1,208,69900,'Eligible'),(24,9,2014,'MODEL S',1,208,69900,'Eligible'),(25,9,2008,'ROADSTER',1,220,98950,'Eligible'),(26,9,2010,'ROADSTER',1,245,110950,'Eligible'),(27,9,2011,'ROADSTER',1,245,109000,'Eligible'),(28,10,2018,'XC90',2,19,64950,'Not eligible'),(29,10,2018,'XC60',2,17,52900,'Not eligible'),(30,10,2019,'XC60',2,17,52900,'Not eligible');
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `query_1`
--

DROP TABLE IF EXISTS `query_1`;
/*!50001 DROP VIEW IF EXISTS `query_1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query_1` AS SELECT 
 1 AS `Model_year`,
 1 AS `Make_name`,
 1 AS `Model_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query_2`
--

DROP TABLE IF EXISTS `query_2`;
/*!50001 DROP VIEW IF EXISTS `query_2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query_2` AS SELECT 
 1 AS `Model_name`,
 1 AS `model_year`,
 1 AS `Model_id`,
 1 AS `Model_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query_3`
--

DROP TABLE IF EXISTS `query_3`;
/*!50001 DROP VIEW IF EXISTS `query_3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query_3` AS SELECT 
 1 AS `TotalBatteryVehicles`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query_4`
--

DROP TABLE IF EXISTS `query_4`;
/*!50001 DROP VIEW IF EXISTS `query_4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query_4` AS SELECT 
 1 AS `avgLocationsPerElectricVehicle`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query_5`
--

DROP TABLE IF EXISTS `query_5`;
/*!50001 DROP VIEW IF EXISTS `query_5`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query_5` AS SELECT 
 1 AS `City`,
 1 AS `number_of_cars`,
 1 AS `average_range`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `utilities`
--

DROP TABLE IF EXISTS `utilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilities` (
  `utility_id` int NOT NULL,
  `Utility_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`utility_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilities`
--

LOCK TABLES `utilities` WRITE;
/*!40000 ALTER TABLE `utilities` DISABLE KEYS */;
INSERT INTO `utilities` VALUES (1,'AVISTA CORP'),(2,'BONNEVILLE POWER ADMINISTRATION'),(3,'INLAND POWER & LIGHT COMPANY'),(4,'PUD NO 1 OF ASOTIN COUNTY'),(5,'CITY OF ELLENSBURG - (WA)'),(6,'CITY OF PORT ANGELES - (WA)'),(7,'CITY OF RICHLAND - (WA)'),(8,'CITY OF TACOMA - (WA)'),(9,'ELMHURST MUTUAL POWER & LIGHT CO'),(10,'PENNINSULA LIGHT COMPANY'),(11,'LAKEVIEW LIGHT & POWER'),(12,'OHOP MUTUAL LIGHT COMPANY, INC'),(13,'PARKLAND LIGHT & WATER COMPANY'),(14,'PUD NO 1 OF LEWIS COUNTY'),(15,'PUD NO 1 OF MASON COUNTY'),(16,'PUD NO 3 OF MASON COUNTY'),(17,'ORCAS POWER & LIGHT COOP'),(18,'PACIFICORP'),(19,'BENTON RURAL ELECTRIC ASSN'),(20,'COLUMBIA RURAL ELEC ASSN, INC'),(21,'PUD NO 1 OF CLARK COUNTY - (WA)'),(22,'PUD 1 OF SNOHOMISH COUNTY'),(23,'PUD NO 1 OF BENTON COUNTY'),(24,'PUD NO 1 OF CLALLAM COUNTY'),(25,'PUD NO 1 OF COWLITZ COUNTY'),(26,'PUD NO 1 OF FRANKLIN COUNTY'),(27,'PUD NO 1 OF GRAYS HARBOR COUNTY'),(28,'PUD NO 1 OF KLICKITAT COUNTY'),(29,'PUD NO 1 OF SKAMANIA CO'),(30,'PUD NO 1 OF WAHKIAKUM COUNTY'),(31,'PUD NO 2 OF PACIFIC COUNTY'),(32,'PUGET SOUND ENERGY INC'),(33,'PUD NO 1 OF JEFFERSON COUNTY'),(34,'TOWN OF RUSTON - (WA)'),(35,'TOWN OF STEILACOOM'),(36,'VERA IRRIGATION DISTRICT #15'),(37,'PUD NO 1 OF WHATCOM COUNTY'),(38,'CITY OF CHEWELAH'),(39,'CITY OF SEATTLE - (WA)'),(40,'TANNER ELECTRIC COOP'),(41,'MODERN ELECTRIC WATER COMPANY'),(42,'OKANOGAN COUNTY ELEC COOP, INC'),(43,'PUD NO 1 OF CHELAN COUNTY'),(44,'PUD NO 1 OF DOUGLAS COUNTY'),(45,'PUD NO 2 OF GRANT COUNTY'),(46,'CITY OF BLAINE - (WA)');
/*!40000 ALTER TABLE `utilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `query_1`
--

/*!50001 DROP VIEW IF EXISTS `query_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query_1` AS select distinct `m`.`Model_Year` AS `Model_year`,`make`.`Make_Name` AS `Make_name`,`m`.`Model_Name` AS `Model_Name` from ((`cars` `c` join `models` `m` on((`c`.`model_id` = `m`.`model_id`))) join `make` on((`m`.`make_id` = `make`.`make_id`))) where (`m`.`Model_Year` > 2000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query_2`
--

/*!50001 DROP VIEW IF EXISTS `query_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query_2` AS select `models`.`Model_Name` AS `Model_name`,`models`.`Model_Year` AS `model_year`,`cars`.`model_id` AS `Model_id`,count(0) AS `Model_Count` from (`cars` join `models` on((`cars`.`model_id` = `models`.`model_id`))) group by `cars`.`model_id`,`models`.`Model_Name` having (`Model_Count` > 1) order by `Model_Count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query_3`
--

/*!50001 DROP VIEW IF EXISTS `query_3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query_3` AS select count(0) AS `TotalBatteryVehicles` from (`cars` join `models` on((`cars`.`model_id` = `models`.`model_id`))) where (`models`.`battery_id` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query_4`
--

/*!50001 DROP VIEW IF EXISTS `query_4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query_4` AS select avg(`subquery`.`locationsCount`) AS `avgLocationsPerElectricVehicle` from (select `cars_locations`.`car_id` AS `car_id`,count(distinct `cars_locations`.`location_id`) AS `locationsCount` from `cars_locations` where `cars_locations`.`car_id` in (select `cars_locations`.`car_id` from `battery` where (`battery`.`Electric_Vehicle_Type` = 'Battery Electric Vehicle')) group by `cars_locations`.`car_id`) `subquery` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query_5`
--

/*!50001 DROP VIEW IF EXISTS `query_5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query_5` AS select `locations`.`City` AS `City`,count(`cars_locations`.`car_id`) AS `number_of_cars`,avg(`models`.`Electric_Range`) AS `average_range` from (((`cars_locations` join `locations` on((`cars_locations`.`location_id` = `locations`.`location_id`))) join `cars` on((`cars_locations`.`car_id` = `cars`.`car_id`))) join `models` on((`cars`.`model_id` = `models`.`model_id`))) group by `locations`.`City`,`cars_locations`.`location_id` order by `number_of_cars` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-13 14:07:30
