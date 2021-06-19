-- MySQL dump 10.13  Distrib 5.6.43, for Win32 (AMD64)
--
-- Host: localhost    Database: users
-- ------------------------------------------------------
-- Server version	5.6.43-log

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `train_name` varchar(20) DEFAULT NULL,
  `train_no` int(5) DEFAULT NULL,
  `frm` varchar(30) DEFAULT NULL,
  `tot` varchar(30) DEFAULT NULL,
  `adult` int(10) DEFAULT NULL,
  `childeren` int(10) DEFAULT NULL,
  `cost` int(10) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Waiting',
  `pass_name` varchar(20) DEFAULT NULL,
  `pnr` int(5) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pnr`),
  UNIQUE KEY `pass_name` (`pass_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14206 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('Rjpb Rajdhani',12310,'Dahod','Rjndr Ngr Bihar',4,2,4800,'Confirmed','Mustali',14201,'Mustali'),('Sealdah Rajdhani',12314,'Mumbai','Rjndr Ngr Bihar',2,2,2500,'Waiting','Ali',14202,'Mustali'),('Rjpb Rajdhani',12310,'Dahod','Rjndr Ngr Bihar',2,2,2900,'Confirmed','Burhanuddin',14203,'Mustali'),('Sampoorn K Express',12394,'Dahod','Mumbai',2,2,2900,'Waiting','burhan',14204,'burhan'),('Rjpb Rajdhani',12310,'Dahod','Rjndr Ngr Bihar',1,2,1950,'Waiting','xyz',14205,'mustali');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smartcard`
--

DROP TABLE IF EXISTS `smartcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smartcard` (
  `s_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phn_no` bigint(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `Idproof` varchar(150) NOT NULL,
  `cardtype` varchar(100) NOT NULL,
  `balance` double NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150004 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smartcard`
--

LOCK TABLES `smartcard` WRITE;
/*!40000 ALTER TABLE `smartcard` DISABLE KEYS */;
INSERT INTO `smartcard` VALUES (150001,'Mustali',25,'Male',8238588952,'Thakkar Faliya,Dahod','Aadhar Card','Premium',6000),(150002,'xyz',21,'Male',987654321,'abc','PAN Card','Premium',5000),(150003,'abc',24,'Female',98745612321,'xyz		','Aadhar Card','Standard',5000);
/*!40000 ALTER TABLE `smartcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `train` (
  `Number` int(5) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `city1` varchar(20) DEFAULT NULL,
  `city2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES (12310,'Rjpb Rajdhani','Dahod','Rjndr Ngr Bihar'),(12314,'Sealdah Rajdhani','Mumbai','Sealdah'),(12393,'S Kranti Sup Express','Rjndr Ngr Bihar','New Delhi'),(12394,'Sampoorn K Express','NewDelhi','Mumbai'),(12656,'Navajivan Express','Mgr Chennai Ctrl','Ahmedabad Jn');
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Username` varchar(10) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `EmailID` varchar(40) DEFAULT NULL,
  `user_ID` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Mustali','Chunawala','Mustali','qwerty','mustalichunawala',2,'C:/Users/Public/Pictures/Sample Pictures'),('burhanuddin','chunawala','burhan','123456','vdswdfwescd,',4,NULL),('X','X','X','XX','XXX@X.COM',5,'C:/Users/Public/Pictures/Sample Pictures/Penguins.jpg'),('abc','xyz','abc','123','abc@xyz.com',8,'C:UsersHPDesktopHH.png'),('Y','Y','Y','Y','Y',10,'C:/Users/HP/Desktop/IMG_1559971630178.png'),('thddf','hddf','ydjd','hfjf','hdjd',11,'C:UsersHPDesktop	rain-260nw-128079749.jpg'),('jfjhf','jfjg','jhfjg','jgf','hjf',12,'C:UsersHPDesktopistockphoto-955963336-170667a.jpg'),('HXDGFS','gfx','d','dd','gd',13,'C:UsersPublicPicturesSample PicturesJellyfish.jpg'),('DHD','DHD','DD','GHD','DGH',14,'C:UsersHPPicturessky.png'),('M','m','m','m','m',15,'C:UsersPublicPicturesSample PicturesTulips.jpg'),('c','c','c','c','c',16,'C:UsersPublicPicturesSample PicturesJellyfish.jpg'),('n','n','n','m','n',18,'C:UsersHPPicturesMUSU.png'),('iI','i','i','i','i',19,'C:UsersHPPicturesspeeding-train-sketch-style-3643988.jpg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-25 11:56:01
