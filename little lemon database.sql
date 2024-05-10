-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lir
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS bookings;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE bookings (
  booking_id int NOT NULL,
  `date` datetime NOT NULL,
  table_number int NOT NULL,
  PRIMARY KEY (booking_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES bookings WRITE;
/*!40000 ALTER TABLE bookings DISABLE KEYS */;
INSERT INTO bookings VALUES (1,'2022-01-01 12:30:00',12),(2,'2022-01-01 12:00:00',2),(3,'2022-01-01 11:20:00',3);
/*!40000 ALTER TABLE bookings ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS customers;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE customers (
  customer_id int NOT NULL,
  customer_fullname varchar(255) NOT NULL,
  contactnumber varchar(45) NOT NULL,
  email varchar(255) NOT NULL,
  PRIMARY KEY (customer_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES customers WRITE;
/*!40000 ALTER TABLE customers DISABLE KEYS */;
INSERT INTO customers VALUES (11,'ashraf abohatem','3313312','aho22@gmail.com'),(22,'haidarah hamdoush','5231332','hai1232@gmail.com'),(33,'ayman khedhair','8373312','ayma@gmail.com');
/*!40000 ALTER TABLE customers ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delliverystatus`
--

DROP TABLE IF EXISTS delliverystatus;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE delliverystatus (
  delivery_id int NOT NULL,
  delivery_date datetime NOT NULL,
  PRIMARY KEY (delivery_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delliverystatus`
--

LOCK TABLES delliverystatus WRITE;
/*!40000 ALTER TABLE delliverystatus DISABLE KEYS */;
INSERT INTO delliverystatus VALUES (11111,'2022-01-01 12:30:00'),(22222,'2022-01-01 12:30:00'),(33333,'2022-01-01 12:30:00');
/*!40000 ALTER TABLE delliverystatus ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS menu;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE menu (
  menu_id int NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (menu_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES menu WRITE;
/*!40000 ALTER TABLE menu DISABLE KEYS */;
INSERT INTO menu VALUES (1111,'ashraf abohatem','meat'),(2222,'haidarah hamdoush','pasta'),(3333,'ayman khedhair','pizza');
/*!40000 ALTER TABLE menu ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS orders;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE orders (
  order_id int NOT NULL,
  `date` datetime NOT NULL,
  quantity int NOT NULL,
  totla_cost decimal(10,0) NOT NULL,
  Booking_booking_id int NOT NULL,
  Customer_customer_id int NOT NULL,
  Menu_menu_id int NOT NULL,
  DeliveryStatus_delivery_id int NOT NULL,
  PRIMARY KEY (order_id,Customer_customer_id,Menu_menu_id,DeliveryStatus_delivery_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES orders WRITE;
/*!40000 ALTER TABLE orders DISABLE KEYS */;
INSERT INTO orders VALUES (111,'2022-01-01 12:15:00',2,34,1,11,1111,11111),(333,'2022-01-01 12:10:00',7,88,3,33,3333,33333);
/*!40000 ALTER TABLE orders ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS staff;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE staff (
  staff_id int NOT NULL,
  full_name varchar(255) NOT NULL,
  contactnumber varchar(45) NOT NULL,
  email varchar(255) NOT NULL,
  `role` varchar(45) NOT NULL,
  salary decimal(10,0) NOT NULL,
  Customer_customer_id int NOT NULL,
  PRIMARY KEY (staff_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES staff WRITE;
/*!40000 ALTER TABLE staff DISABLE KEYS */;
INSERT INTO staff VALUES (101,'ashraf abohatem','3313312','aho22@gmail.com','lunch',88,11),(202,'haidarah hamdoush','5231332','hai1232@gmail.com','luch',77,22),(303,'ayman khedhair','8373312','ayma@gmail.com','luch',55,33);
/*!40000 ALTER TABLE staff ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-10  4:13:38
