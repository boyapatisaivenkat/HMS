-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Mobile_no` varchar(255) NOT NULL,
  `Mail_id` varchar(255) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','admin@root','6981319149','admin@gmail.com');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactus` (
  `Customer_username` varchar(255) NOT NULL,
  `Query` text NOT NULL,
  `By_mail` tinyint(1) NOT NULL,
  `Reply` text NOT NULL,
  KEY `Customer_username` (`Customer_username`),
  CONSTRAINT `contactus_ibfk_1` FOREIGN KEY (`Customer_username`) REFERENCES `customer` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Mail_id` varchar(255) NOT NULL,
  `Age` int NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Mobile_No` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `Mail_id` (`Mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('','','','',0,'','',''),('adsdg123','adsdg','adsg','asdgh@gmail.com',0,'','',''),('boya123','boya07','Boyapati Sai Venkat','boyapati@gmail.com',20,'Male','9202345532','Guntur'),('kamal123','kamal@09','Kamal ','kamal@gmail.com',21,'Male','6597135498','Vizayawada'),('Karthik123','karthik07','Sai Karthik Maddirala','bmw@gmail.com',21,'Male','8622589532','Guntur'),('srimanth123','sri@07','Srimanth Mahadev','srimanth@gmail.com',21,'option2','9856214628','Guntur'),('subbu123','subbu07','Subrahmanyam Konakanchi','subbu@gmail.com',20,'Male','9201293875','Guntur');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `Customer_username` varchar(255) NOT NULL,
  `Rating` int NOT NULL,
  `Review` text NOT NULL,
  `Suggestions` text NOT NULL,
  `Visit` varchar(255) NOT NULL,
  `Customer_name` varchar(255) DEFAULT NULL,
  KEY `Customer_username` (`Customer_username`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`Customer_username`) REFERENCES `customer` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('boya123',4,'Great mozzarella sticks, calamari, chicken tenders, I could go on. ','Service could be better','Yes','Sai Venkat Boyapati'),('subbu123',4,'Friendly staff and probably the best cheese pizza I\'ve had!\n\n','Service could be better','Yes','Subrahmanyam Konakanchi'),('Karthik123',5,'Good Hospitality. Food quaity is very good','Service could be better','Yes','Sai Karthik Maddirala'),('',0,'','','Yes',NULL),('',0,'','','Yes',NULL),('',0,'','','Yes',NULL),('',0,'','','No',NULL),('subbu123',5,'Food IZZ Good','Service can be better.','Yes','Subrahmanyam Konakanchi'),('Karthik123',2,'AC not working .','No Suggestions.','Yes','Sai Suprabhanu');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_services`
--

DROP TABLE IF EXISTS `food_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_services` (
  `Item_id` int NOT NULL AUTO_INCREMENT,
  `Item_name` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Item_price` int DEFAULT NULL,
  `Image` text,
  PRIMARY KEY (`Item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_services`
--

LOCK TABLES `food_services` WRITE;
/*!40000 ALTER TABLE `food_services` DISABLE KEYS */;
INSERT INTO `food_services` VALUES (1,'Manchuria','Starters',140,'https://www.cookshideout.com/wp-content/uploads/2014/11/Veg-Manchurian-Low-Fat-FI.jpg'),(2,'Chicken Biryani','Main Course',300,'https://www.watscooking.com/images/dish/normal/208.jpg'),(3,'Mushroom Munchurian','Starters',170,'https://cdn1.foodviva.com/static-content/food-images/chinese-recipes/gobi-manchurian-recipe/gobi-manchurian-recipe.jpg');
/*!40000 ALTER TABLE `food_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Customer_name` varchar(255) NOT NULL,
  `Room_type` varchar(255) NOT NULL,
  `Room_no` int NOT NULL,
  `Amount` int NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Payment_option` varchar(255) NOT NULL,
  `Payment_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Payment_id`),
  KEY `Room_no` (`Room_no`),
  KEY `Customer_name` (`Customer_name`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Room_no`) REFERENCES `rooms` (`Room_No`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`Customer_name`) REFERENCES `customer` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('subbu123','King',101,3500,'Completed','Card',1),('boya123','King',301,6500,'Pending','Card',3),('karthik123','Twin',204,8000,'Pending','Card',4),('karthik123','Twin',204,8000,'Pending','Card',5);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_services`
--

DROP TABLE IF EXISTS `room_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_services` (
  `Cleaning` int NOT NULL,
  `Laundry` int NOT NULL,
  `Massage` int NOT NULL,
  `Pool` int NOT NULL,
  `Gym` int NOT NULL,
  `Sauna` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_services`
--

LOCK TABLES `room_services` WRITE;
/*!40000 ALTER TABLE `room_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `Room_No` int NOT NULL,
  `Room_type` varchar(255) NOT NULL,
  `Floor` int NOT NULL,
  `Room_services` text NOT NULL,
  `Room_price` int NOT NULL,
  `Availability` int NOT NULL,
  PRIMARY KEY (`Room_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (101,'King',1,'Massage',3500,1),(102,'King',1,'Pool',6000,1),(201,'Queen',2,'Massage',8000,1),(204,'Twin',2,'Massage',6500,1),(301,'King',3,'Massage',5000,1),(501,'Twin',5,'Massage',6500,1);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-23 23:04:35
