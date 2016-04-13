-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: prototype columbus
-- ------------------------------------------------------
-- Server version	5.6.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `College`
--

DROP TABLE IF EXISTS `College`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `College` (
  `collegeID` int(11) NOT NULL,
  `collegeName` varchar(60) NOT NULL,
  `collegeState` varchar(45) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `description` varchar(160) DEFAULT NULL,
  PRIMARY KEY (`collegeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `College`
--

LOCK TABLES `College` WRITE;
/*!40000 ALTER TABLE `College` DISABLE KEYS */;
/*!40000 ALTER TABLE `College` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comments`
--

DROP TABLE IF EXISTS `Comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comments` (
  `commentID` int(11) NOT NULL,
  `commentMessage` varchar(140) NOT NULL,
  `Date` datetime NOT NULL,
  `Rating` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentID`),
  KEY `userID_idx` (`userID`),
  KEY `companyID_idx` (`companyID`),
  CONSTRAINT `companyID` FOREIGN KEY (`companyID`) REFERENCES `Company` (`companyID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `userID` FOREIGN KEY (`userID`) REFERENCES `User` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comments`
--

LOCK TABLES `Comments` WRITE;
/*!40000 ALTER TABLE `Comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `companyID` int(11) NOT NULL,
  `companyName` varchar(40) DEFAULT NULL,
  `companyAddress` varchar(60) DEFAULT NULL,
  `rating` decimal(3,0) DEFAULT NULL,
  `positionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`companyID`),
  KEY `positionID_idx` (`positionID`),
  CONSTRAINT `positionID` FOREIGN KEY (`positionID`) REFERENCES `Position` (`positionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Holds the companies of all start ups to be viewed by the user.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (1,'7Park Data','http://www.7parkdata.com',4,0),(2,'AreteX Engineering','http://www.aretexeng.com/AreteX_Engineering/AreteX.html',3,NULL),(3,'Bounce Exchange','http://www.bounceexhange.com',4,0),(4,'CaseRails','http://www.caserails.com',5,NULL),(5,'Clarifai','http://www.clarifai.com',4,NULL),(6,'CoinX','http://www.coinx.com/',5,NULL),(7,'CourseHorse','http://www.coursehorse.com',4,NULL),(8,'Digital Assembly','http://www.digital-assembly.com',3,NULL),(9,'Life Dots','http://www.lifedots.com',4,NULL),(10,'Live Sqrd','http://www.livesqrd.com',4,NULL),(11,'Mandoyo','http://www.mandoyo.com',5,NULL),(12,'Mental Canvas','http://www.mentalcanvas.com',4,NULL),(13,'Miner','http://www.minerapp.com',5,NULL),(14,'NYC Seed','http://www.nycseed.com',5,NULL),(15,'Ontodia','http://www.ontodia.com',3,NULL),(16,'Open Assembly','http://www.openassembly.com',5,NULL),(17,'StyleSage','http://www.stylesage.co',5,NULL),(18,'Street of Walls','http://www.streetofwalls.com',5,NULL),(19,'Tactile Finance','http://www.tactilefinance.com',4,NULL),(20,'TextPride','http://www.textpride.com',3,NULL),(21,'TheLoadown','http://www.theloadown.com',4,NULL),(22,'two lines and a dot','http://www.twolinesandadot.com',4,NULL),(23,'Ultra Light Startups','http://www.UltraLightStartups.com/newyork',5,NULL),(24,'BLDG BLOK','http://www.bldgblok.com',4,NULL),(25,'Brooklyn Bridge Ventures','http://www.brooklynbridgeventures.com',4,NULL),(26,'Clambake','http://www.clambakeapp.com',5,NULL),(27,'Coloroot','http://www.coloroot.com/login.cfm',5,NULL),(28,'Databetes','http://www.databetes.com/',3,NULL),(29,'Emotional Explorer Lab','http://www.emotionexplorerlab.net/',5,NULL),(30,'FileMobile','http://www.filemobile.com',4,NULL),(31,'Freescape','https://angel.co/freescape',4,NULL),(32,'Honey.is','https://honey.is/',5,NULL),(33,'iBillionaire','http://www.ibillionaire.me',5,NULL),(34,'Impact Simulations','http://www.levelspro.com/impactsimulations-redirect/',4,NULL),(35,'KISI','http://www.getkisi.com',4,NULL),(36,'Kinvolved','http://.kinvolved.com',3,NULL),(37,'Makers Row','http://www.makersrow.com',4,NULL),(38,'MobiMed','http://www.cookiesmart.co',5,NULL),(39,'Notch','http://www.notchdevice.com',5,NULL),(40,'Oculogica','http://www.oculogica.com',4,NULL),(41,'Ovlu','http://www.ovlu.co',4,NULL),(42,'Pixel 506','http://www.pixel506.com',4,NULL),(43,'SalesBus','http://www.salesb.us/',5,NULL),(44,'Signl','http://www.signl.com',5,NULL),(45,'StreamSpec','http://www.streamspec.com',5,NULL),(46,'TripWing','http://tripwing.com/',4,NULL),(47,'VioletHealth','http://www.violethealth.com',4,NULL),(48,'WeDidIt','http://www.wedid.it/',5,NULL),(49,'KipinHall','http://www.kipinhall.com',5,NULL),(50,'Mana Health','http://www.mana-health.com',5,NULL),(51,'Miner','http://www.minerapp.com',4,NULL),(52,'Stereogrid','http://www.stereogrid.com',4,NULL),(53,'TENDIGI','http://www.tendigi.com',3,NULL),(54,'Docracy','http://www.docracy.com',4,NULL),(55,'Pipture','http://www.pipture.com',5,NULL),(56,'Funding Community','http://www.fundingcommunity.com',5,NULL),(57,'EchoLocation','http://www.echolocation.com',4,NULL),(58,'workZeit','http://www.workzeit.com',4,NULL),(59,'Vengo Labs','http://www.vengolabs.com',4,NULL),(60,'Cowri','http://www.cowri.com/',4,NULL);
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Favorites`
--

DROP TABLE IF EXISTS `Favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Favorites` (
  `favoriteID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  `positionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`favoriteID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Favorites`
--

LOCK TABLES `Favorites` WRITE;
/*!40000 ALTER TABLE `Favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `Favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `ID` bigint(20) NOT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Position`
--

DROP TABLE IF EXISTS `Position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Position` (
  `positionID` int(11) NOT NULL,
  `positionName` varchar(45) NOT NULL,
  `positionDesc` varchar(140) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`positionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Position`
--

LOCK TABLES `Position` WRITE;
/*!40000 ALTER TABLE `Position` DISABLE KEYS */;
INSERT INTO `Position` VALUES (0,'Software Engineer','Development',85000,5);
/*!40000 ALTER TABLE `Position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SEQUENCE`
--

DROP TABLE IF EXISTS `SEQUENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEQUENCE` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEQUENCE`
--

LOCK TABLES `SEQUENCE` WRITE;
/*!40000 ALTER TABLE `SEQUENCE` DISABLE KEYS */;
INSERT INTO `SEQUENCE` VALUES ('SEQ_GEN',800);
/*!40000 ALTER TABLE `SEQUENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `UserID` int(11) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `collegeID` int(11) DEFAULT NULL,
  `trust` int(11) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `collegeID_idx` (`collegeID`),
  CONSTRAINT `collegeID` FOREIGN KEY (`collegeID`) REFERENCES `College` (`collegeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (4,'Syed','Rashid','syedrashid@nyit.edu','syed',NULL,NULL),(5,'Jerry','Mattei','jerrymattei@nyit.edu','jerry',NULL,NULL),(6,'Umar','Ahfaq','umarahfaq@nyit.edu','umar',NULL,NULL),(7,'Mohammed','Mehdi','mohammedmehdi@nyit.edu','mohammed',NULL,NULL),(8,'Jessica','Jones','jessicajones@nyit.edu','jessica',NULL,NULL),(9,'Tiffany','Mazza','tiffanymazza@nyit.edu','tiffany',NULL,NULL),(10,'Josh','Drake','joshdrake@nyit.edu','josh',NULL,NULL),(451,'Adrian ','Popinara','apopinar@nyit.edu','andrew',NULL,NULL),(551,'Rob','Greg','robgreg@nyit.edu','greg',NULL,NULL),(601,'Andrew','Dowd','adowd@nyit.edu','sesame',NULL,NULL),(651,'Ryan','Dowd','ryandowd@nyit.edu','diana',NULL,NULL),(701,'Bob','Ross','bobross@nyit.edu','painting',NULL,NULL),(751,'joe','smith','joesmith@nyit.edu','1234567',NULL,NULL);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-13 11:30:25
