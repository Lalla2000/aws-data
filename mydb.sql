-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `role` (`role`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (13,'admin','admin@gmail.com','7876567656','profile_1720095590477.png','Admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'injection','category_1722517544709.webp'),(2,'tablet','category_1720605150038.png'),(4,'Saline Solution','category_1721197532614.jpg'),(5,'First Aid','category_1721198389380.jpeg'),(6,'Syrupd','category_1736175888376.webp'),(9,'stethoscope','category_1736163354144.jpeg'),(13,'Aa','category_1736175976017.jpg'),(14,'Rr','category_1736176035941.webp'),(15,'Cream','category_1736192012897.jpeg'),(16,'Oil','category_1736214388337.jpeg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` int DEFAULT NULL,
  `subcategory` int DEFAULT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (4,'Dr. Ortho',1,4,'company_1736214703517.jpeg'),(5,'Reckitt Benckiser',1,5,'company_1720680547617.png'),(9,'Cosmo Pharma Laboratories Ltd.',5,6,'company_1721200549215.jpeg'),(13,'ZOXIL S Pvt Ltd',2,7,'company_1721209976440.jpg'),(14,'GSK Consumer',0,0,'company_1721365267031.webp'),(16,'Syna Pharma',0,0,'company_1721885354274.png');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composition`
--

DROP TABLE IF EXISTS `composition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composition` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` varchar(11) DEFAULT NULL,
  `subcategory` varchar(11) DEFAULT NULL,
  `company` varchar(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composition`
--

LOCK TABLES `composition` WRITE;
/*!40000 ALTER TABLE `composition` DISABLE KEYS */;
INSERT INTO `composition` VALUES (1,'composition 1','1','5','5','composition_1720680778660.png'),(2,'Calcium Carbonate','1','4','4','composition_1720680868917.png'),(9,'Diclofenac',NULL,NULL,NULL,NULL),(11,'Ethanol',NULL,NULL,NULL,NULL),(12,'Paracetamol',NULL,NULL,NULL,NULL),(14,'Turpentine Oil',NULL,NULL,NULL,NULL),(15,'Gandhapura',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `composition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `description`
--

DROP TABLE IF EXISTS `description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `description` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(200) NOT NULL,
  `medicine` varchar(200) NOT NULL,
  `take` varchar(200) NOT NULL,
  `description` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `description` (`description`),
  CONSTRAINT `description_ibfk_1` FOREIGN KEY (`description`) REFERENCES `doctor_description` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `description`
--

LOCK TABLES `description` WRITE;
/*!40000 ALTER TABLE `description` DISABLE KEYS */;
INSERT INTO `description` VALUES (84,'tablet','Dolo 650mg Strip Of 15','after lunch',28,'2024-09-20','10'),(86,'tablet','Dolo 650mg Strip Of 15','after lunch',30,'2024-09-23','10'),(87,'Syrup','Himalaya Koflet Cough Syrup 100ml','after lunch',30,'2024-09-23','2');
/*!40000 ALTER TABLE `description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `hospital` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (4,'Pravin Mendhe','Kharbi Nagpur','9579908433','vipin30@gmail.com','Doctor','',NULL),(5,'Dr. Mukesh Kumar','Medical Square Nagpur','8987678767','mukesh@gmail.com','Doctor','','medical'),(6,'Dr. Kanika Sharma','Sitabuildi Nagpur','6543210987','kanika@gmail.com','Doctor','','Lata Mangeshkar Hospital'),(7,'Dr.patil','manish nagar','8987676567','patil@gmail.com','Doctor','','naik'),(9,'Dr. Sandesh ','Vyankatesh Nagar , Kdk college road nagpur','7410325896','sandesh@gmail.com','Doctor','','avanti'),(12,'Dr. Pravin Mendhe','Wardhman Nagpur','9989876765','pravin@gmail.com','Doctor',NULL,'Shri Radhakrishna Hospital '),(15,'Dr. Vilas  Mehta','Khamla Nagpur','8987677678','vilas@gmail.com','Doctor',NULL,'Orange City Hospital'),(17,'Dr. Lalit Kapoor','Nandanvan Nagpur','7666869109','lalit@gmail.com','Doctor',NULL,'Seven Star');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_description`
--

DROP TABLE IF EXISTS `doctor_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_description` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `doctor` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor` (`doctor`),
  CONSTRAINT `doctor_description_ibfk_1` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_description`
--

LOCK TABLES `doctor_description` WRITE;
/*!40000 ALTER TABLE `doctor_description` DISABLE KEYS */;
INSERT INTO `doctor_description` VALUES (28,'pranali gupta','2024-09-20',9),(30,'ashwini','2024-09-23',9);
/*!40000 ALTER TABLE `doctor_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expire_medicine`
--

DROP TABLE IF EXISTS `expire_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expire_medicine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicine` int NOT NULL,
  `stock` varchar(500) NOT NULL,
  `balance` varchar(500) NOT NULL,
  `expire` date NOT NULL,
  `batch` varchar(200) NOT NULL,
  `min_stock` varchar(500) NOT NULL,
  `phar` int DEFAULT NULL,
  `pharmacy` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medicine` (`medicine`),
  KEY `pharmacy` (`pharmacy`),
  CONSTRAINT `expire_medicine_ibfk_1` FOREIGN KEY (`medicine`) REFERENCES `medicine` (`id`),
  CONSTRAINT `expire_medicine_ibfk_2` FOREIGN KEY (`pharmacy`) REFERENCES `pharmacy` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expire_medicine`
--

LOCK TABLES `expire_medicine` WRITE;
/*!40000 ALTER TABLE `expire_medicine` DISABLE KEYS */;
INSERT INTO `expire_medicine` VALUES (14,7,'100','50','2024-07-28','B4487BN','75',0,20),(15,6,'50','50','2024-08-16','BHN222','10',NULL,21),(26,5,'100','100','2024-11-03','B','10',NULL,NULL);
/*!40000 ALTER TABLE `expire_medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `location` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_location` (`location`),
  CONSTRAINT `FK_location` FOREIGN KEY (`location`) REFERENCES `location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (5,'medical','7666869109',4,'kodikk304@gmail.com','Hospital','nagpur'),(6,'Seven Star','1234567890',2,'sevenstar@gmail.com','Hospital','Nandanvan'),(8,'Lata Mangeshkar Hospital','7122530347',8,'latamangeshkar@gmail.com','Hospital','YMCA Complex, Maharajbagh Rd, Sitabuldi, Nagpur, Maharashtra 440012'),(10,'Shri Radhakrishna Hospital ','8999768736',9,'shriradhakrishna@gmail.com','Hospital','Central Ave, Transport Nagar, East Wardhaman Nagar, Nagpur, Maharashtra 440008'),(11,'Orange City Hospital','7126634800',7,'orangecity@gmail.com','Hospital','19, Khamla Road Veer Sawarkar Square Opposite to Jupiter College, Maharashtra 440015');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipd`
--

DROP TABLE IF EXISTS `ipd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `weight` varchar(48) NOT NULL,
  `age` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `problem` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipd`
--

LOCK TABLES `ipd` WRITE;
/*!40000 ALTER TABLE `ipd` DISABLE KEYS */;
INSERT INTO `ipd` VALUES (8,'Ashwini Desai','manish nagar','55','23','8987676567','health problem','Admit'),(9,'Arjun Verma','Digori Nagpur','70','28','9876543210','Fever and Headache','Admit'),(10,'Nisha Patel','Manewada Nagpur','60','29','9871234567','High Blood Pressure','Admit');
/*!40000 ALTER TABLE `ipd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `district` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'nagpur','kalmeshwar'),(2,'nagpur','Ghoghali'),(3,'Nagpur','Bardi'),(4,'Nagpur','Pardi'),(7,'Nagpur','Khamla'),(8,'Nagpur','Sitabuldi'),(9,'Nagpur','Wardhaman Nagar,');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(11) NOT NULL,
  `register` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  KEY `register` (`register`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (34,'sagar@gmail.com','$2a$10$l0W1oFP8I9XLetbGRfUgberU3iPJ9YJrMFlwaljvj1IwyPsJg.FsK','Pharmacy',20),(36,'param@gmail.com','$2a$10$dvW5WWpc2A7v2EIwL/Stcel07Pqqm8svAaIjo6hSCKtsgyCLVXAG2','Pharmacy',21),(39,'asmitagaikwad2000@gmail.com','$2a$10$FDe7OyvF2J6ipYpG68klTeqRtVGEUKbYNOqwSeraDXWSSuUbKMjgO','Pharmacy',22),(42,'pravin@gmail.com','$2a$10$K8uyu9Lx.d9wpOEqsJgdVOCv4a0QyEl/VqB5e5VJtoDvB0pSOKgjK','Doctor',12),(45,'vilas@gmail.com','$2a$10$DBcvSEjfs1FsMm/GcObBie.727XJ6bea0pr4kvdTRD85AD9MCqpiy','Doctor',15),(49,'admin@gmail.com','$2a$10$l0W1oFP8I9XLetbGRfUgberU3iPJ9YJrMFlwaljvj1IwyPsJg.FsK','Admin',13),(51,'raunaksirsam20@gmail.com','$2a$10$MDMMth3Eb//m8B72wcikpeO2nAFxhOzwxFmF7SoQlj5/14.niROTe','Hospital',3),(53,'mypharmacy@gmail.com','$2a$10$zFeiFAM7kwwFjjKv6Ab04ehDdCvaAXd5V88Ck.4irI7LtxQx9EcaO','Pharmacy',24),(55,'lalit@gmail.com','$2a$10$f/2x8X2T9p9cbJWqEFHqmOkPaIJv.78LJs3z13u6pdkcFhqgw9Aqu','Doctor',17),(56,'kodikk304@gmail.com','$2a$10$Ks8tYWvb2OzkIs.wEo0NvOU4fb5TJ6UEEVhAqbHA2gBKHsZEdFbEm','Hospital',5),(57,'sevenstar@gmail.com','$2a$10$wDx0cDnh91DeSlAQTUuL1emI/QoH5Ik6xWTTGKKpiYgOSYm5Kl5Iu','Hospital',6),(61,'latamangeshkar@gmail.com','$2a$10$JOkEz22MFxQH9LJAf9NOxewYNMdhxDu4EKDOPf74K5QtBBawE7.5e','Hospital',8),(63,'shriradhakrishna@gmail.com','$2a$10$QX/1AwAU1FUanX/PjEGrTuzx5l.cQtl0QXtfn1KHnM.Cc4Emq9J0i','Hospital',10),(64,'orangecity@gmail.com','$2a$10$Zg9xpgA6Qaj4MdSX2D0WSOGXEpdYm9o/M/4xn/I8H0HpNmdKPnGLO','Hospital',11);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `category` int NOT NULL,
  `subcategory` int NOT NULL,
  `composition` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `unit` varchar(200) DEFAULT NULL,
  `price` varchar(200) NOT NULL,
  `Manufacturing` date DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `medicine_ibfk_1` (`category`),
  KEY `medicine_ibfk_2` (`subcategory`),
  CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `medicine_ibfk_2` FOREIGN KEY (`subcategory`) REFERENCES `subcategory` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (5,' Bonex-D',2,8,'Calcium Carbonate','Cosmo Pharma Laboratories Ltd.','Dose','25',NULL,NULL,'medicine_1736193448259.jpeg'),(6,'Crocin 650',2,8,'Paracetamol','GSK Consumer','Dose','20',NULL,NULL,'medicine_1736192880379.jpeg'),(7,'Benadryl',6,9,'Ethanol','Syna Pharma','ml','39.36',NULL,NULL,'medicine_1736192573181.jpeg'),(15,'Moove',15,16,'Turpentine Oil','Reckitt Benckiser','Strip','100',NULL,NULL,'medicine_1736193787506.jpeg'),(16,'Dr. Ortho',16,17,'Gandhapura','Dr. Ortho','ml','150',NULL,NULL,'medicine_1736214773350.jpeg');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd`
--

DROP TABLE IF EXISTS `opd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(35) NOT NULL,
  `weight` varchar(35) NOT NULL,
  `age` int NOT NULL,
  `phone` varchar(12) NOT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd`
--

LOCK TABLES `opd` WRITE;
/*!40000 ALTER TABLE `opd` DISABLE KEYS */;
INSERT INTO `opd` VALUES (1,'Pragati Sharma','nagpur besa','45',23,'8987887674','bp low problem','Check_Up'),(2,'Ashwini Desai','manish nagar','55',23,'8987676567','health problem','Admit'),(4,'Raunak Sirsam','Near hp gas godawn bhartwada nagpur','55',23,'7666869109','Fever','Check_Up'),(8,'Arjun Verma','Digori Nagpur','70',28,'9876543210','Fever and Headache','Discharge'),(9,'Nisha Patel','Manewada Nagpur','60',29,'9871234567','High Blood Pressure','Admit');
/*!40000 ALTER TABLE `opd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_table`
--

DROP TABLE IF EXISTS `order_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grand_total` varchar(1000) NOT NULL,
  `customer` varchar(200) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `orderid` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_table`
--

LOCK TABLES `order_table` WRITE;
/*!40000 ALTER TABLE `order_table` DISABLE KEYS */;
INSERT INTO `order_table` VALUES (105,'60','pranali gupta','2024-10-16 15:24:14','#PH32105'),(106,'200','Aa','2025-01-06 15:27:30','#PH32106');
/*!40000 ALTER TABLE `order_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `owner` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `hospital` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy`
--

LOCK TABLES `pharmacy` WRITE;
/*!40000 ALTER TABLE `pharmacy` DISABLE KEYS */;
INSERT INTO `pharmacy` VALUES (20,'sagar pharmacy','Dr. Prathap C. Reddy','Sitabuldi Nagpur','8987676567','sagar@gmail.com','Pharmacy','','Lata Mangeshkar Hospital'),(21,'Param Medicose','Madhukar Gangadi','Wardhman Nagpur','7452369882','param@gmail.com','Pharmacy','','Shri Radhakrishna Hospital '),(22,'asmita gaikwad','Dharmil Sheth','Khamla Nagpur','7410560033','asmitagaikwad2000@gmail.com','Pharmacy','','Orange City Hospital'),(24,'Mypharmacy ','Pradeep Dadha','Jagnade Square Nagpur','7666869106','mypharmacy@gmail.com','Pharmacy',NULL,'Seven Star');
/*!40000 ALTER TABLE `pharmacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (5,'Doctor'),(6,'Admin'),(10,'Pharmacy'),(12,'Hospital');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicine` int NOT NULL,
  `stock` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `pharmacy` int DEFAULT NULL,
  `expire` date DEFAULT NULL,
  `batch` varchar(200) NOT NULL,
  `min_stock` varchar(10) NOT NULL,
  `stockin` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_ibfk_1` (`medicine`),
  KEY `stock_ibfk_2` (`pharmacy`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`medicine`) REFERENCES `medicine` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`pharmacy`) REFERENCES `pharmacy` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (37,5,'100','90',20,'2024-11-02','A','10','Pharmacy'),(50,15,'80','40',NULL,'2026-01-07','C','40','Admin'),(51,16,'150','100',22,'2026-06-07','E','50','Pharmacy');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_maintain`
--

DROP TABLE IF EXISTS `stock_maintain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_maintain` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pharmacy` int DEFAULT NULL,
  `alloted` varchar(200) DEFAULT NULL,
  `total` varchar(200) DEFAULT NULL,
  `balance` varchar(200) DEFAULT NULL,
  `medicine` int DEFAULT NULL,
  `stock_id` int DEFAULT NULL,
  `stockdate` date DEFAULT NULL,
  `pharmacy_balance` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_maintain`
--

LOCK TABLES `stock_maintain` WRITE;
/*!40000 ALTER TABLE `stock_maintain` DISABLE KEYS */;
INSERT INTO `stock_maintain` VALUES (3,20,'10','100','90',6,39,'2024-10-10','0'),(4,21,'10','100','90',10,42,'2024-10-10','10'),(5,20,'10','100','90',5,37,'2024-10-16','7'),(6,24,'12','22','10',7,47,'2025-01-06','12'),(7,24,'40','80','40',15,50,'2025-01-07','40'),(8,21,'100','200','100',7,48,'2025-01-07','100'),(9,22,'50','150','100',16,51,'2025-01-07','50');
/*!40000 ALTER TABLE `stock_maintain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` int NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategory_ibfk_1` (`category`),
  CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (8,'Dolo',2,'subcategory_1721730428198.webp'),(9,'Cough Syrup',6,'subcategory_1721884785202.jpeg'),(16,'Pain Relief',15,'subcategory_1736192106019.jpeg'),(17,'Muscle Pain',16,'subcategory_1736214499947.jpeg');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suborder`
--

DROP TABLE IF EXISTS `suborder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suborder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicine` int NOT NULL,
  `expire` date DEFAULT NULL,
  `qty` varchar(500) NOT NULL,
  `medicine_price` varchar(500) NOT NULL,
  `total` varchar(500) NOT NULL,
  `category` varchar(200) DEFAULT NULL,
  `order_id` varchar(300) NOT NULL,
  `phamacy_id` varchar(200) NOT NULL,
  `subcategory` varchar(200) DEFAULT NULL,
  `medicine_name` varchar(200) DEFAULT NULL,
  `batch` varchar(200) DEFAULT NULL,
  `reason` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medicine` (`medicine`),
  KEY `category` (`category`),
  KEY `suborder` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suborder`
--

LOCK TABLES `suborder` WRITE;
/*!40000 ALTER TABLE `suborder` DISABLE KEYS */;
INSERT INTO `suborder` VALUES (99,5,NULL,'3','20','60','tablet','105','20','Dolo','Dolo 650mg Strip Of 15',NULL,'reason for patient'),(100,6,NULL,'10','20','200','tablet','106','20','Dolo','Crocin 650',NULL,'Headache ');
/*!40000 ALTER TABLE `suborder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` varchar(11) DEFAULT NULL,
  `subcategory` varchar(11) DEFAULT NULL,
  `company` int DEFAULT NULL,
  `composition` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (6,'Strip','','',0,''),(7,'ml','','',0,''),(12,'Dose','','',NULL,'');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  `category` int NOT NULL,
  `subcategory` int NOT NULL,
  `company` int NOT NULL,
  `photo` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant`
--

LOCK TABLES `variant` WRITE;
/*!40000 ALTER TABLE `variant` DISABLE KEYS */;
/*!40000 ALTER TABLE `variant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-07  5:43:13
