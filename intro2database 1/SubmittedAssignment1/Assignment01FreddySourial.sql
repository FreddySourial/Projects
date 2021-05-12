-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: assignment-01-nahom_befekadu
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_data`
--

DROP TABLE IF EXISTS `customers_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers_data` (
  `customers_data_id` int NOT NULL,
  `customers_name` varchar(200) DEFAULT NULL,
  `customers_address` varchar(200) DEFAULT NULL,
  `customers_email` varchar(45) DEFAULT NULL,
  `payment_type_payment_type_id` int NOT NULL,
  `payment_info_payment_info_id` int unsigned NOT NULL,
  PRIMARY KEY (`customers_data_id`,`payment_type_payment_type_id`,`payment_info_payment_info_id`),
  KEY `fk_customers_data_payment_type1_idx` (`payment_type_payment_type_id`),
  KEY `fk_customers_data_payment_info1_idx` (`payment_info_payment_info_id`),
  CONSTRAINT `fk_customers_data_payment_info1` FOREIGN KEY (`payment_info_payment_info_id`) REFERENCES `payment_info` (`payment_info_id`),
  CONSTRAINT `fk_customers_data_payment_type1` FOREIGN KEY (`payment_type_payment_type_id`) REFERENCES `payment_type` (`payment_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_data`
--

LOCK TABLES `customers_data` WRITE;
/*!40000 ALTER TABLE `customers_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
`order_number` int DEFAULT NULL,
  `order_id` int NOT NULL,
  `order_total` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `shipping_date` varchar(45) DEFAULT NULL,
  `customers_data_customers_data_id` int NOT NULL,
  `products_products_id` int unsigned NOT NULL,
  PRIMARY KEY (`order_id`,`customers_data_customers_data_id`,`products_products_id`),
  KEY `fk_order_customers_data_idx` (`customers_data_customers_data_id`),
  KEY `fk_order_products1_idx` (`products_products_id`),
  CONSTRAINT `fk_order_customers_data` FOREIGN KEY (`customers_data_customers_data_id`) REFERENCES `customers_data` (`customers_data_id`),
  CONSTRAINT `fk_order_products1` FOREIGN KEY (`products_products_id`) REFERENCES `products` (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_info` (
  `payment_info_id` int unsigned NOT NULL AUTO_INCREMENT,
  `card_number` int DEFAULT NULL,
  `card_holder_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`payment_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_info`
--

LOCK TABLES `payment_info` WRITE;
/*!40000 ALTER TABLE `payment_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_type`
--

DROP TABLE IF EXISTS `payment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_type` (
  `payment_type_id` int NOT NULL,
  `visa` varchar(45) DEFAULT NULL,
  `mastercard` varchar(45) DEFAULT NULL,
  `paypal` varchar(45) DEFAULT NULL,
 
  PRIMARY KEY (`payment_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_type`
--

LOCK TABLES `payment_type` WRITE;
/*!40000 ALTER TABLE `payment_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_types` (
  `product_types_id` int NOT NULL,
  `sport` varchar(45) DEFAULT NULL,
  `health` varchar(45) DEFAULT NULL,
  `beauty` varchar(45) DEFAULT NULL,
  `electronics` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `products_id` int unsigned NOT NULL AUTO_INCREMENT,
  `products_name` varchar(200) DEFAULT NULL,
  `products_desc` varchar(45) DEFAULT NULL,
  `products_price` int DEFAULT NULL,
  `country_country_id` int NOT NULL,
  `product_types_product_types_id` int NOT NULL,
  PRIMARY KEY (`products_id`,`country_country_id`,`product_types_product_types_id`),
  KEY `fk_products_country1_idx` (`country_country_id`),
  KEY `fk_products_product_types1_idx` (`product_types_product_types_id`),
  CONSTRAINT `fk_products_country1` FOREIGN KEY (`country_country_id`) REFERENCES `country` (`country_id`),
  CONSTRAINT `fk_products_product_types1` FOREIGN KEY (`product_types_product_types_id`) REFERENCES `product_types` (`product_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-13 18:19:38
