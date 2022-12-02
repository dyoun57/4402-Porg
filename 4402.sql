CREATE DATABASE  IF NOT EXISTS `4402prog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `4402prog`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: 4402prog
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brand_id` int NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1020,'Nividia'),(2015,'HP'),(3025,'ASUS'),(3588,'Corsair'),(4030,'Intel'),(4520,'Radeon'),(5203,'Gigabyte'),(6215,'Samsung'),(6642,'Kingston'),(7852,'LG'),(9562,'AMD'),(9589,'DELL');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2020,'Power Supply'),(3020,'Laptops'),(102030,'GPU\'S'),(203025,'CPU\'S'),(305289,'Monitors'),(401236,'Keyboards'),(748596,'Cases'),(859674,'RAM');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zip_code` varchar(45) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (102458,'Gina','Andersom','(255)-562-1245','gKilla@gmail.com','456 Banna Ln','Baton Rouge','LA','70823'),(111254,'Robert','B.','(625)-451-4715','Robert@gmail.com','4785 apple Ct.','Phoniex','AZ','72901'),(112233,'Julie','R.','(626)-523-6665','JuliaRJ@gmail.com','8956 Louis Drive East.','Baton Rouge','LA','70830'),(123568,'Bob','Smith','(456)123-5987','smith@gmail.com','123 Abc Street','Baton ROuge','LA','70820'),(225566,'Samantha','A.','(304)-777-7894','SamA@gmail.com','789 Dover lane.','Phoniex','AZ','72901'),(251365,'Jeff','Bloom','(625)-111-9999','JeffRocks@gmail.com','4589 Bird Dr','Phoenix','AZ','72901'),(252689,'Joe','Angle','(456)562-7826','theBestWorker@gmail.com','452 Starling Lane','New Orleans','LA','70126'),(451023,'Eliza','Smith','(304)-458-1365','Eliza@gmail.com','426 Its Hot  Dr','Phoenix','AZ','72901'),(455552,'Blake','F','(225)-444-5526','Blake@gmail.com','14 Rover st.','Baton Rouge','LA','70820'),(456875,'David','Young','(504)-562-9999','wow@yahoo.com','4589 Bird Dr','New Orleans','LA','70124'),(502312,'Jordan','F','(504)-568-9949','j@gmail.com','145 bannan st.','new orleans','LA','70128'),(777455,'kayla','C.','(225)-889-1452','K@gmail.com','145 north blvd.','new orleans','LA','70126'),(789452,'Alex','H.','(584)-120-9798','random@yahoo.com','4589 It\'s Cold Court','Billings','MT','59101'),(988887,'Ramsey','O.','(504)-555-4458','Ramsey@gmail.com','226 Starring Lane','new orleans','LA','70125'),(1234584,'Garfield','F.','(504)-265-8256','Ihatemondays@gmail.com','3256 culver Rd.','new orleans','LA','70126'),(2656896,'Marry','S.','(225)-444-8666','marrySUE@gmail.com','32 Orange Rd.','Batonm Rouge','LA','70850');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `total` int NOT NULL,
  `staff_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id_idx` (`customer_id`),
  KEY `staff_id_idx` (`staff_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `staff_id` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (123456,102458,10000,1020),(145289,252689,7895,8765),(145896,102458,500,1020),(222256,123568,1253,2536),(302030,456875,890,4152),(445789,451023,2220,1020),(555894,451023,2210,4152),(665588,251365,650,2536),(748523,252689,6001,4174),(748596,789452,4512,2536),(45789523,2656896,458,2030567),(77788884,1234584,5555,562389);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  `list_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `brand_id_idx` (`brand_id`),
  KEY `category_id_idx` (`category_id`),
  CONSTRAINT `brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (102054,'Dell S2722DGM',9589,305289,449.00),(154895,'Gigabyte Gen 1 Gaming Laptop',5203,3020,1750.00),(203023,'Radeon RX 6800',9562,102030,850.00),(203045,'RTX 3090',1020,102030,900.00),(204562,'Samsung Odyssey Neo',6215,305289,650.00),(222234,'Kingston Fury Beast RGB 32GB',6642,859674,150.00),(226351,'Radeon RX 6900 XT',9562,102030,999.00),(457830,'Intel i7 11700k',4030,203025,550.00),(458023,'LG 27 BL55U-B',7852,305289,525.00),(784558,'Radeon RX 6800',9562,102030,579.00),(789520,'Radeon RX 6950 XT',9562,102030,799.99),(848756,'RTX 3080 Ti',1020,102030,850.00),(949895,'AMD Ryzen 5',9562,203025,899.00),(987452,'Corsair Vengence RGB PRO',3588,859674,200.00),(2000326,'Intel i5 11600K',4030,203025,272.00),(3000563,'Intel i9 10980XE',4030,203025,979.00),(4445829,'Intel i9 12900F',4030,203025,494.00),(4568951,'Intel i9 12900K',4030,203025,589.00),(5556625,'Intel i9 12900KS',4030,203025,739.00),(5895102,'Radeon RX 6800 XT',9562,102030,649.00),(7777578,'Intel i9 12900KS',4030,203025,400.00),(9995845,'Radeon RX VII',9562,102030,699.00),(124532003,'Gigabyte Gen 5 Gaming Laptop',5203,3020,2500.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `store_id` int NOT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `staff_id_UNIQUE` (`staff_id`),
  UNIQUE KEY `admin_id_UNIQUE` (`admin_id`),
  KEY `store_id_idx` (`store_id`),
  CONSTRAINT `store_id` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1020,'John','S.','JohnS@hotmail.com','(602)-785-4152',25623,NULL),(1278,'Amanda','Ramirez','Amiri@gmail.com','(225)-999-4444',25263,NULL),(2021,'Andrew','N.','AN5623@gmail.com','(225)-147-8754',25263,45892),(2536,'David','W.','dw@hotmail.com','(504)-777-5555',12125,52369),(4152,'Elizabeth','D.','LizD@gmail.com','(602)-333-4512',25623,85962),(4174,'Paige','A.','PaigePage@gmail.com','(504)-203-4365',15786,NULL),(5236,'Alex','S.','AStar@gmail.com','(504)-252-6523',12125,NULL),(6259,'Dede','V.','Dede123@yahoo.com','(602)-123-4562',12125,458952),(6578,'Aliza','R.','AlizaFTW@hotmail.com','(225)-889-5122',25263,NULL),(8765,'Amber','S.','AmberS@outlook.com','(304)-301-7895',15786,NULL),(562389,'Nathan','J.','jman@yahoo.com','(225)-578-4562',20304,NULL),(2030567,'Breylan','F.','BFB@yahoo.com','(225)-405-7846',20304,NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `store_id` int NOT NULL,
  `state` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `store_id_UNIQUE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (12125,'LA','New Orleans'),(15786,'LA','Baton Rouge'),(20304,'LA','baton Rouge'),(25263,'LA','New Orleans'),(25623,'AZ','Phoenix'),(44444,'AZ','Phoenix');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-02 10:39:44
