-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dbo.ACCOUNT`
--

DROP TABLE IF EXISTS `dbo.ACCOUNT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.ACCOUNT` (
  `USERNAME` varchar(13) DEFAULT NULL,
  `PASSWORD` varchar(6) DEFAULT NULL,
  `PHONE_NUMBER` varchar(10) DEFAULT NULL,
  `FULLNAME` varchar(14) DEFAULT NULL,
  `ADDRESS` varchar(26) DEFAULT NULL,
  `IMAGE` varchar(60) DEFAULT NULL,
  `DEFAULT_DELIVERY_ID` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.ACCOUNT`
--

LOCK TABLES `dbo.ACCOUNT` WRITE;
/*!40000 ALTER TABLE `dbo.ACCOUNT` DISABLE KEYS */;
INSERT INTO `dbo.ACCOUNT` VALUES ('ankiimation','123456','','','','',32),('lenguyenkhoa','test','0357860936','Lê Nguyên Khoa','Cư Xá Thanh Đa, Bình Thạnh','https://cdn.mos.cms.futurecdn.net/C6HfMG7vULcucbYFau89md.jpg',30),('lenguyenkhoa1','123456','','','','',7);
/*!40000 ALTER TABLE `dbo.ACCOUNT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.CATEGORY`
--

DROP TABLE IF EXISTS `dbo.CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.CATEGORY` (
  `ID` smallint(6) DEFAULT NULL,
  `NAME` varchar(9) DEFAULT NULL,
  `DESCRIPTION` varchar(12) DEFAULT NULL,
  `IMAGE` varchar(207) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.CATEGORY`
--

LOCK TABLES `dbo.CATEGORY` WRITE;
/*!40000 ALTER TABLE `dbo.CATEGORY` DISABLE KEYS */;
INSERT INTO `dbo.CATEGORY` VALUES (1,'Noodle','Noodle','https://www.acouplecooks.com/wp-content/uploads/2020/03/Soba-Noodles-016.jpg'),(2,'Snack','Snack','https://toplist.vn/images/800px/thuong-hieu-snack-pho-bien-gia-binh-dan-ngon-va-an-toan-nhat-thi-truong-viet-nam-198441.jpg'),(3,'Drink','Drink','https://hips.hearstapps.com/del.h-cdn.co/assets/16/25/1466718212-delish-lemonade-cheatsheet-index.jpg'),(1002,'Weapon','Weapon','https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Dangerous_weapons_seized_from_holiday_flights_at_Manchester_Airport.jpg/260px-Dangerous_weapons_seized_from_holiday_flights_at_Manchester_Airport.jpg'),(1003,'Vehicle','War Vehicle ','https://upload.wikimedia.org/wikipedia/commons/6/6b/M1117_Armored_Security_Vehicle.jpg'),(1004,'Coffee','Coffee','https://vn-test-11.slatic.net/p/mdc/f982b9770e346f4e9f2bd650bc830cf6.jpg'),(1005,'Onni Chan','Onni','https://s3-ap-northeast-1.amazonaws.com/ddnbgroup/wp-content/uploads/sites/4/2017/09/29001014/gn-gift_guide_variable_c_2x.jpg');
/*!40000 ALTER TABLE `dbo.CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.DELIVERY_ADDRESS`
--

DROP TABLE IF EXISTS `dbo.DELIVERY_ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.DELIVERY_ADDRESS` (
  `ID` tinyint(4) DEFAULT NULL,
  `USERNAME` varchar(12) DEFAULT NULL,
  `PHONE_NUMBER` varchar(14) DEFAULT NULL,
  `FULLNAME` varchar(15) DEFAULT NULL,
  `ADDRESS` varchar(81) DEFAULT NULL,
  `LATITUDE` decimal(17,15) DEFAULT NULL,
  `LONGITUDE` decimal(17,14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.DELIVERY_ADDRESS`
--

LOCK TABLES `dbo.DELIVERY_ADDRESS` WRITE;
/*!40000 ALTER TABLE `dbo.DELIVERY_ADDRESS` DISABLE KEYS */;
INSERT INTO `dbo.DELIVERY_ADDRESS` VALUES (12,'lenguyenkhoa','123456','le nguyen khiem','asdaads',1.000000000000000,0.10000000000000),(13,'lenguyenkhoa','5555555555555','test','75/9, Đường Bình Quới, , Bình Thạnh, Thành phố Hồ Chí Minh',10.816727000000000,106.71897299999999),(23,'lenguyenkhoa','1231234278','khoa','384B, Đường Bùi Hữu Nghĩa, , Bình Thạnh, Thành phố Hồ Chí Minh',10.802596000000000,106.69878399999999),(24,'lenguyenkhoa','12313123123132','khoa','1600, Amphitheatre Parkway, , Santa Clara County, California',37.421999899999996,-122.08405750000001),(25,'lenguyenkhoa','sdfsdfsdfsdf','fsfssdfsdf','1502, Amphitheatre Parkway, , Santa Clara County, California',37.422448300000000,-122.08393270000000),(26,'lenguyenkhoa','0357860936','Le Nguyen Khoa','27, Thanh Đa, , Bình Thạnh, Thành phố Hồ Chí Minh',10.816907100000000,106.71828400000000),(27,'lenguyenkhoa','0977162066','Le Van Phat','Đường ĐH 76, Đường ĐH 76, , Tây Hòa, Phú Yên',12.964488600000000,109.20270690000000),(28,'lenguyenkhoa','123213123144','asasasdf','Cambodia, , , , ',12.565679000000000,104.99096300000000),(29,'lenguyenkhoa','03578560934','Le Nguyen Khoa','17/2 Truong Mam non cu xa Thanh Da, Thanh Đa, , Bình Thạnh, Thành phố Hồ Chí Minh',10.816892000000000,106.71825100000000),(30,'lenguyenkhoa','0357860936','Le Nguyen Khoa','27, Thanh Đa, , Bình Thạnh, Thành phố Hồ Chí Minh',10.816907100000000,106.71828400000000),(31,'lenguyenkhoa','0357860936','test','10, Đường 48 Nhỏ, , Thủ Đức, Thành phố Hồ Chí Minh',10.833976400000000,106.72639889999999),(32,'ankiimation','0357860936','Le Nguyen Khoa','27, Thanh Đa, , Bình Thạnh, Thành phố Hồ Chí Minh',10.816907100000000,106.71828400000000),(33,'ankiimation','aasdasdasdasd','sesfd','6008, 7th Avenue, Brooklyn, Kings County, New York',40.636619599999996,-74.01218490000000);
/*!40000 ALTER TABLE `dbo.DELIVERY_ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.FAVORITE`
--

DROP TABLE IF EXISTS `dbo.FAVORITE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.FAVORITE` (
  `ID` tinyint(4) DEFAULT NULL,
  `USERNAME` varchar(13) DEFAULT NULL,
  `PRODUCT_ID` smallint(6) DEFAULT NULL,
  `ISFAVORITE` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.FAVORITE`
--

LOCK TABLES `dbo.FAVORITE` WRITE;
/*!40000 ALTER TABLE `dbo.FAVORITE` DISABLE KEYS */;
INSERT INTO `dbo.FAVORITE` VALUES (7,'lenguyenkhoa',1,0),(8,'lenguyenkhoa',2,1),(9,'lenguyenkhoa',3,0),(10,'lenguyenkhoa',4,0),(11,'lenguyenkhoa',5,0),(12,'lenguyenkhoa',9,1),(13,'lenguyenkhoa',10,1),(14,'lenguyenkhoa',7,1),(15,'lenguyenkhoa',6,1),(16,'lenguyenkhoa',11,1),(17,'lenguyenkhoa',8,1),(18,'lenguyenkhoa',12,1),(19,'lenguyenkhoa1',2,1),(20,'lenguyenkhoa1',1,1),(21,'lenguyenkhoa',13,1),(22,'lenguyenkhoa',1003,1),(23,'lenguyenkhoa',1004,1),(24,'lenguyenkhoa',1007,1),(25,'lenguyenkhoa',1009,0),(26,'ankiimation',11,0),(27,'ankiimation',1004,1),(28,'ankiimation',1007,1),(29,'ankiimation',1009,0),(30,'ankiimation',1003,1),(31,'ankiimation',10,1),(32,'ankiimation',9,1),(33,'lenguyenkhoa1',3,1),(34,'lenguyenkhoa1',4,1);
/*!40000 ALTER TABLE `dbo.FAVORITE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.ORDERING`
--

DROP TABLE IF EXISTS `dbo.ORDERING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.ORDERING` (
  `ID` smallint(6) DEFAULT NULL,
  `STATUS` tinyint(4) DEFAULT NULL,
  `USERNAME` varchar(13) DEFAULT NULL,
  `DELIVERY_ID` tinyint(4) DEFAULT NULL,
  `CREATED_DATE` varchar(19) DEFAULT NULL,
  `SHOP_USERNAME` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.ORDERING`
--

LOCK TABLES `dbo.ORDERING` WRITE;
/*!40000 ALTER TABLE `dbo.ORDERING` DISABLE KEYS */;
INSERT INTO `dbo.ORDERING` VALUES (1078,2,'lenguyenkhoa',29,'2020-07-30 13:11:18','lenguyenkhoa'),(1079,4,'lenguyenkhoa',29,'2020-07-30 13:11:18','vuhoangnhatvy'),(1080,4,'lenguyenkhoa',30,'2020-07-30 13:58:24','lenguyenkhoa'),(1081,4,'lenguyenkhoa',30,'2020-07-30 13:58:24','vuhoangnhatvy'),(1082,4,'lenguyenkhoa',29,'2020-07-30 16:17:11','lenguyenkhoa'),(1083,3,'lenguyenkhoa',29,'2020-07-30 16:17:11','vuhoangnhatvy'),(1084,3,'lenguyenkhoa',29,'2020-07-30 16:42:57','lenguyenkhoa'),(1085,2,'lenguyenkhoa',29,'2020-07-30 16:52:15','vuhoangnhatvy'),(1086,2,'lenguyenkhoa',29,'2020-07-30 16:52:15','lenguyenkhoa'),(1087,4,'lenguyenkhoa',31,'2020-07-30 17:13:09','lenguyenkhoa'),(1088,2,'lenguyenkhoa',31,'2020-07-30 17:13:09','vuhoangnhatvy'),(1089,4,'lenguyenkhoa',31,'2020-08-06 09:13:15','vuhoangnhatvy'),(1090,3,'lenguyenkhoa',31,'2020-08-06 09:12:46','lenguyenkhoa'),(1091,2,'lenguyenkhoa',31,'2020-08-06 09:13:15','lenguyenkhoa'),(1092,4,'lenguyenkhoa',31,'2020-08-06 10:33:38','lenguyenkhoa'),(1093,3,'lenguyenkhoa',31,'2020-08-06 09:14:04','vuhoangnhatvy'),(1094,2,'lenguyenkhoa',31,'2020-08-06 09:14:34','vuhoangnhatvy'),(1095,4,'lenguyenkhoa',31,'2020-08-06 10:11:57','lenguyenkhoa'),(1096,2,'lenguyenkhoa',31,'2020-08-06 10:11:57','vuhoangnhatvy'),(1097,4,'lenguyenkhoa',31,'2020-08-06 17:22:26','vuhoangnhatvy'),(1098,4,'lenguyenkhoa',31,'2020-08-06 17:22:26','lenguyenkhoa'),(1101,4,'lenguyenkhoa',31,'2020-08-06 17:27:49','lenguyenkhoa'),(1102,4,'lenguyenkhoa',31,'2020-08-06 17:27:49','vukhi'),(1103,4,'lenguyenkhoa',31,'2020-08-07 10:51:20','vuhoangnhatvy'),(1104,4,'lenguyenkhoa',31,'2020-08-07 10:51:20','lenguyenkhoa'),(1105,4,'lenguyenkhoa',31,'2020-08-07 10:51:20','vukhi'),(1106,4,'lenguyenkhoa',30,'2020-08-07 13:34:42','vuhoangnhatvy'),(1107,4,'lenguyenkhoa',30,'2020-08-07 13:34:43','vukhi'),(1108,4,'lenguyenkhoa',30,'2020-08-07 13:34:43','lenguyenkhoa'),(1109,1,'lenguyenkhoa',31,'2020-08-11 14:46:18','vuhoangnhatvy'),(1110,1,'lenguyenkhoa',31,'2020-08-11 14:46:19','lenguyenkhoa'),(1111,1,'lenguyenkhoa',30,'2020-08-11 10:35:32','vukhi'),(1112,1,'lenguyenkhoa',30,'2020-08-11 10:35:32','wibushop'),(1113,4,'ankiimation',32,'2020-08-11 10:58:55','wibushop'),(1114,4,'ankiimation',32,'2020-08-11 11:01:27','wibushop'),(1115,4,'ankiimation',32,'2020-08-11 11:06:06','wibushop'),(1116,1,'lenguyenkhoa',31,'2020-08-11 14:46:19','wibushop'),(1117,1,'ankiimation',32,'2020-08-12 10:02:28','wibushop'),(1118,1,'ankiimation',32,'2020-08-12 10:02:28','lenguyenkhoa'),(1119,1,'lenguyenkhoa',31,'2020-08-11 14:46:55','vuhoangnhatvy'),(1120,1,'lenguyenkhoa',31,'2020-08-11 14:52:02','vuhoangnhatvy'),(1121,1,'lenguyenkhoa',31,'2020-08-12 08:38:56','vuhoangnhatvy'),(1122,4,'lenguyenkhoa',31,'2020-08-12 08:38:56','wibushop'),(1123,1,'lenguyenkhoa',30,'2020-08-12 14:19:13','vuhoangnhatvy'),(1124,1,'lenguyenkhoa',30,'2020-08-12 14:19:14','lenguyenkhoa'),(1125,1,'lenguyenkhoa',30,'2020-08-12 14:19:14','vukhi'),(1126,1,'ankiimation',32,'2020-08-12 10:02:28','vukhi'),(1127,1,'ankiimation',32,'2020-08-12 11:48:01','vukhi'),(1128,1,'ankiimation',32,'2020-08-12 11:48:01','lenguyenkhoa'),(1129,1,'ankiimation',32,'2020-08-12 11:48:01','vuhoangnhatvy'),(1130,1,'ankiimation',32,'2020-08-12 11:48:01','wibushop'),(1131,1,'ankiimation',32,'2020-08-12 11:51:14','vukhi'),(1132,1,'ankiimation',-1,'2020-08-12 11:55:18','vukhi'),(1133,1,'ankiimation',32,'2020-08-12 11:56:16','vukhi'),(1134,1,'ankiimation',33,'2020-08-12 11:57:00','vukhi'),(1135,1,'ankiimation',33,'2020-08-12 11:57:40','lenguyenkhoa'),(1136,1,'ankiimation',33,'2020-08-12 11:57:40','vukhi'),(1137,1,'ankiimation',32,'2020-08-12 11:58:28','vukhi'),(1138,1,'ankiimation',32,'2020-08-12 11:58:28','lenguyenkhoa'),(1139,1,'ankiimation',32,'2020-08-12 13:12:12','lenguyenkhoa'),(1140,1,'ankiimation',32,'2020-08-12 13:14:36','lenguyenkhoa'),(1141,0,'lenguyenkhoa',-1,'2020-08-12 14:20:06','vuhoangnhatvy'),(1142,4,'lenguyenkhoa1',7,'2020-08-12 14:39:19','vuhoangnhatvy'),(1143,1,'lenguyenkhoa1',7,'2020-08-12 15:22:02','lenguyenkhoa'),(1144,1,'lenguyenkhoa1',7,'2020-08-12 15:22:02','vuhoangnhatvy'),(1145,1,'lenguyenkhoa1',7,'2020-08-12 15:22:02','vukhi'),(1146,0,'lenguyenkhoa',-1,'2020-08-12 15:41:33','lenguyenkhoa');
/*!40000 ALTER TABLE `dbo.ORDERING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.ORDERING_DETAIL`
--

DROP TABLE IF EXISTS `dbo.ORDERING_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.ORDERING_DETAIL` (
  `ID` smallint(6) DEFAULT NULL,
  `ORDERING_ID` smallint(6) DEFAULT NULL,
  `PRODUCT_ID` smallint(6) DEFAULT NULL,
  `COUNT` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.ORDERING_DETAIL`
--

LOCK TABLES `dbo.ORDERING_DETAIL` WRITE;
/*!40000 ALTER TABLE `dbo.ORDERING_DETAIL` DISABLE KEYS */;
INSERT INTO `dbo.ORDERING_DETAIL` VALUES (200,1078,1,1),(201,1079,2,1),(202,1079,3,1),(203,1078,5,2),(204,1080,5,3),(205,1080,6,5),(206,1080,1,5),(207,1081,2,6),(208,1081,3,4),(209,1081,4,2),(210,1082,1,9),(211,1083,2,2),(212,1084,1,20),(213,1085,2,5),(214,1086,6,3),(215,1087,6,8),(216,1087,1,1),(217,1088,2,1),(218,1088,3,1),(219,1089,2,1),(220,1089,3,0),(221,1090,5,6),(222,1090,6,2),(223,1090,8,3),(224,1090,1,26),(225,1090,11,2),(226,1090,7,1),(227,1089,4,0),(228,1089,13,0),(229,1090,12,2),(230,1090,9,3),(231,1090,10,1),(232,1091,1,1),(233,1092,1,2),(234,1093,2,1),(235,1094,2,1),(236,1095,1,11),(237,1096,3,7),(238,1096,2,0),(239,1096,4,2),(240,1095,5,1),(241,1095,6,3),(242,1097,2,2),(243,1097,4,4),(244,1098,1,1),(245,1098,1003,7),(246,1101,1003,2),(247,1101,1004,3),(248,1102,1004,6),(249,1102,1003,2),(250,1103,2,2),(251,1103,3,1),(252,1104,1,1),(253,1105,1003,35),(254,1105,1004,0),(255,1105,1007,0),(256,1106,2,18),(257,1106,3,4),(258,1107,1004,1),(259,1107,1003,3),(260,1107,1007,1),(261,1108,1,14),(262,1108,11,2),(263,1108,10,6),(264,1108,9,2),(265,1108,12,1),(266,1106,13,1),(267,1106,4,7),(268,1109,3,4),(269,1110,1,9),(270,1109,2,22),(271,1110,5,1),(272,1110,7,0),(273,1111,1004,3),(274,1111,1003,11),(275,1111,1007,7),(276,1110,11,0),(277,1110,10,50),(278,1110,12,0),(279,1110,6,0),(280,1110,8,0),(281,1109,13,0),(282,1110,9,0),(283,1109,4,1),(284,1112,1009,17),(285,1113,1009,4),(286,1114,1009,1),(287,1115,1009,1),(288,1116,1009,1),(289,1117,1009,5),(290,1118,10,2),(291,1118,9,1),(292,1118,11,2),(293,1118,6,5),(294,1118,5,1),(295,1119,2,1),(296,1120,2,3),(297,1121,2,11),(298,1122,1009,1),(299,1121,4,9),(300,1121,3,1),(301,1123,3,8),(302,1123,2,11),(303,1124,5,4),(304,1125,1003,6),(305,1125,1007,4),(306,1125,1004,9),(307,1126,1004,1),(308,1127,1004,53),(309,1127,1003,26),(310,1127,1007,16),(311,1128,1,28),(312,1129,2,18),(313,1129,3,3),(314,1129,4,1),(315,1130,1009,70),(316,1129,13,1),(317,1128,8,11),(318,1131,1003,1),(319,1132,1003,1),(320,1133,1003,1),(321,1133,1004,1),(322,1134,1003,1),(323,1134,1004,1),(324,1135,9,1),(325,1135,10,1),(326,1136,1004,1),(327,1136,1003,1),(328,1137,1004,1),(329,1137,1003,1),(330,1138,10,1),(331,1139,10,1),(332,1139,9,10),(333,1140,10,1),(334,1124,1,3),(335,1124,12,2),(336,1124,11,1),(337,1141,2,10),(338,1142,2,1),(339,1143,1,30),(340,1144,2,11),(341,1144,4,2),(342,1143,11,5),(343,1143,9,1),(344,1143,5,1),(345,1145,1004,1),(346,1145,1003,2),(347,1144,13,2),(348,1144,3,13),(349,1146,9,6),(350,1146,10,1),(351,1146,11,1),(352,1146,12,1),(353,1146,6,2),(354,1146,7,2),(355,1146,8,1);
/*!40000 ALTER TABLE `dbo.ORDERING_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.PRODUCT`
--

DROP TABLE IF EXISTS `dbo.PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.PRODUCT` (
  `ID` smallint(6) DEFAULT NULL,
  `NAME` varchar(17) DEFAULT NULL,
  `DESCRIPTION` text,
  `IMAGE` varchar(164) DEFAULT NULL,
  `PRICE` bigint(20) DEFAULT NULL,
  `CATEGORY_ID` smallint(6) DEFAULT NULL,
  `SHOP_USERNAME` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.PRODUCT`
--

LOCK TABLES `dbo.PRODUCT` WRITE;
/*!40000 ALTER TABLE `dbo.PRODUCT` DISABLE KEYS */;
INSERT INTO `dbo.PRODUCT` VALUES (1,'Bún bò Huế','Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì??','https://image.thanhnien.vn/980/uploaded/congthang/2019_10_09/anh_1_dzzf.jpg',50000,1,'lenguyenkhoa'),(2,'Mì xào','Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì??','https://wikiohana.net/wp-content/uploads/2019/08/hoan-thanh-mon-mi-xao.jpg',30000,1,'vuhoangnhatvy'),(3,'Mì xào giòn','Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì??','https://monngonsaigon.net/wp-content/uploads/2018/12/M%C3%AC-x%C3%A0o-gi%C3%B2n-chay.jpg',35000,1,'vuhoangnhatvy'),(4,'Phở xào','Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì??','https://cdn.cet.edu.vn/wp-content/uploads/2018/10/pho-xao-mem.jpg',30000,1,'vuhoangnhatvy'),(5,'Cá viên chiên','Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì??','https://bizweb.dktcdn.net/thumb/grande/100/307/913/products/ca-vien.jpg?v=1526013537880',10000,2,'lenguyenkhoa'),(6,'Xiên gà','Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì??','https://znews-photo.zadn.vn/w1024/Uploaded/ofh_btgazstm/2019_01_18/xienga.jpg',15000,2,'lenguyenkhoa'),(7,'Xiên que thập cẩm','Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì??','https://cdn.dealtoday.vn/img/s630x420/84dadbc535ce4581b7581f82aa6c1c7e.jpg?sign=EjeTOWI8LcjfOLkLJ8E4tQ',20000,2,'lenguyenkhoa'),(8,'Gà rán','Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì??','https://image-us.eva.vn/upload/2-2020/images/2020-04-17/cach-lam-ga-ran-kfc-vang-gion-ngon-chuan-vi-ngoai-hang-an-suong-mieng-7-1587094121-418-width512height327.jpg',25000,2,'lenguyenkhoa'),(9,'Trà sữa','Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì??','https://cdn.huongnghiepaau.com/wp-content/uploads/2020/06/mon-tra-sua-tran-chau.jpg',15000,3,'lenguyenkhoa'),(10,'Trà đào','Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì??','https://cdn.huongnghiepaau.com/wp-content/uploads/2017/07/tra-dao.jpg',15000,3,'lenguyenkhoa'),(11,'Trà tắc','Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì??','https://i.ytimg.com/vi/jO4ys5Jq4fU/maxresdefault.jpg',15000,3,'lenguyenkhoa'),(12,'Nước cam','Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì??','https://vinmec-prod.s3.amazonaws.com/images/20190730_050026_023627_e98285e460a589fbd0b4.max-800x800.jpg',15000,3,'lenguyenkhoa'),(13,'Nước chanh','Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì?? Món này không ăn thì ăn món gì??','https://healthplus.vn/Images/Uploaded/Share/2020/02/04/vi-sao-ban-nen-uong-nuoc-chanh-hang-ngay-dac-biet-trong-mua-dich1580802869.jpg',10000,3,'vuhoangnhatvy'),(1003,'Katana','Katana (刀, かたな,Đao) là loại Kiếm Nhật nihontō (日本刀, にほんとう, Nhật Bản Đao) truyền thống, dài hình hơi cong, một lưỡi, rất bén được các võ sĩ Nhật trọng dụng và luôn đeo trên thắt lưng - thường cặp với một thanh kiếm ngắn hơn là wakizashi (脇差, わきざし) hoặc cực ngắn gọi là tanto (短刀, たんとう,Đoản Đao). Bộ kiếm đôi gọi là daishō (大小, だいしょう, Lớn Nhỏ) - biểu tượng cho tác phong và danh dự của người võ sĩ. Thanh kiếm dài Katana dùng để chém trong tác chiến. Kiếm ngắn để đâm khi đến gần đối phương - hoặc để mổ bụng tự sát (một kỹ thuật tự sát của samurai, mang tên seppuku).\r\n\r\nKiếm Katana có chuôi dài đủ để người sử dụng dùng hai bàn tay nắm chặt. Thông thường, nếu mặc giáp trụ, samurai sẽ đeo lưỡi kiếm hướng xuống dưới để tiện rút kiếm ra. Còn khi mặc thường phục, samurai sẽ đeo lưỡi kiếm hướng lên. Ngày nay tuy không còn được sử dụng trong chiến tranh, kiếm Nhật vẫn được giới sưu tầm yêu chuộng - loại kiếm cổ rất mắc tiền; và nghệ thuật tác chiến bằng kiếm Nhật vẫn còn được lưu truyền trong một số thể thao võ thuật Nhật Bản, như môn Kendo, Kenjutsu, Battojutsu....','https://jes.edu.vn/wp-content/uploads/2020/03/katana.jpg',3000000,1002,'vukhi'),(1004,'AK-47','Súng trường tự động Kalashnikov (Автомат Калашникова, viết tắt là АК) là một trong những súng trường tấn công thông dụng nhất của thế kỷ XX, được thiết kế bởi Mikhail Kalashnikov. Tên gọi thông dụng của súng là AK-47 (АК-47). Theo phân loại của khối Xã hội chủ nghĩa, АК-47 thuộc loại tiểu liên, họ súng máy. Theo phân loại của NATO, АК-47 thuộc loại súng trường tấn công, cũng thuộc họ súng máy.\r\n\r\nCho đến thời điểm đầu thế kỷ XXI, dù đã có hơn 70 năm tuổi thọ song АК-47 và các phiên bản của nó vẫn là thứ vũ khí được ưa chuộng nhất, được lựa chọn là vũ khí tiêu chuẩn bởi trên 50 quân đội, ngoài ra nó còn phục vụ rất nhiều các lực lượng vũ trang, du kích khác tại hơn 100 quốc gia trên thế giới.[7] Chi phí sản xuất, chi phí bảo dưỡng đều rất thấp, độ tin cậy, hiệu quả, độ bền bỉ rất cao trong điều kiện chiến đấu khắc nghiệt của loại súng này làm cho nó trở thành loại vũ khí cá nhân thông dụng nhất thế giới. Tầm bắn hiệu quả nhất của АК-47 trong khoảng 400 mét, chuyên dùng để tác chiến tầm ngắn và tầm trung.[8], các phiên bản mới hơn có thể đạt tầm bắn hiệu quả xa hơn, khoảng 2 km.\r\n\r\nVới những ảnh hưởng của mình, АК-47 được gọi là một biểu tượng trong quân sự,[7] một thứ vũ khí làm thay đổi bộ mặt chiến tranh.[9] Hiện tại АК-47 đang là vũ khí cá nhân tiêu chuẩn cho quân đội của hơn 60 quốc gia trên thế giới. Rất nhiều quốc gia khác nữa sử dụng АК-47 cho các lực lượng cảnh sát, biên phòng. АК-47 còn là lựa chọn của các lực lượng nổi dậy và tội phạm trên khắp thế giới do độ bền rất cao và giá thành lại rẻ. Ngay cả ở Hoa Kỳ, nơi chế tạo ra loại súng đối thủ là M16, АК-47 cùng với SKS vẫn cứ \"đắt như tôm tươi\" trên thị trường súng dân sự Mỹ với số lượng hàng triệu khẩu được bán trong 1 năm, tương đương số lượng súng AK mà quân đội Nga và cảnh sát Nga đang sở hữu[10]\r\n\r\nАК-47 là nền tảng để Liên Xô (nay là Nga) nghiên cứu phát triển thành các biến thể hiện đại hóa như: АКM, RPK, АК-74, RPK-74, AN-94, АК-103, АК-107, АК-12, RPK-16,... các phiên bản hiện đại hóa được làm nhẹ đi và được trang bị thanh ray để gắn thêm các phụ kiện. Các quốc gia khác cũng phát triển một loạt mẫu súng mới dựa trên nền tảng АК-47 như Galil ACE (Israel), Rk 95 Tp (Phần Lan), Karabinek szturmowy wz. 1996 Beryl (Ba Lan), Zastava M21 (Serbia)... Những loại súng này nhìn chung đều áp dụng cơ chế hoạt động là trích khí và khóa nòng xoay giống hệt như АК-47, chỉ khác về hình dáng bên ngoài và một số bộ phận phụ.','https://images.vov.vn/Uploaded/uIU3NTXWpHb5HZDMoLmxA/2020_03_02/zing_ak47_1_1_XBBP.jpg',100000000,1002,'vukhi'),(1007,'Knife','','https://cdn11.bigcommerce.com/s-blqh8ck/images/stencil/700x700/products/4175/10415/IMG_7892__58412.1509109937.jpg?c=2&imbypass=on',250000,1002,'vukhi'),(1009,'Basic Anime Girl','','https://i.pinimg.com/originals/a4/2a/44/a42a4479c62c774b997cb4eff9ebb319.jpg',10000,1005,'wibushop'),(1010,'M1117','','https://upload.wikimedia.org/wikipedia/commons/6/6b/M1117_Armored_Security_Vehicle.jpg',99999999999,1003,'vukhi'),(1011,'M551','','https://upload.wikimedia.org/wikipedia/commons/0/0a/Yuma_Proving_Ground%2C_Arizona_%2842188342504%29.jpg',99999999999,1003,'vukhi');
/*!40000 ALTER TABLE `dbo.PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.PRODUCT_IMAGE`
--

DROP TABLE IF EXISTS `dbo.PRODUCT_IMAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.PRODUCT_IMAGE` (
  `ID` tinyint(4) DEFAULT NULL,
  `PRODUCT_ID` tinyint(4) DEFAULT NULL,
  `IMAGE` varchar(57) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.PRODUCT_IMAGE`
--

LOCK TABLES `dbo.PRODUCT_IMAGE` WRITE;
/*!40000 ALTER TABLE `dbo.PRODUCT_IMAGE` DISABLE KEYS */;
INSERT INTO `dbo.PRODUCT_IMAGE` VALUES (1,1,'http://192.168.11.209/SHOPiiproduct	humbun_bo_hue.jpg');
/*!40000 ALTER TABLE `dbo.PRODUCT_IMAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.SHOP_ACCOUNT`
--

DROP TABLE IF EXISTS `dbo.SHOP_ACCOUNT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.SHOP_ACCOUNT` (
  `USERNAME` varchar(13) DEFAULT NULL,
  `PASSWORD` mediumint(9) DEFAULT NULL,
  `NAME` varchar(26) DEFAULT NULL,
  `ADDRESS` varchar(8) DEFAULT NULL,
  `PHONE_NUMBER` bigint(20) DEFAULT NULL,
  `IMAGE` varchar(230) DEFAULT NULL,
  `LATITUDE` varchar(0) DEFAULT NULL,
  `LONGITUDE` varchar(0) DEFAULT NULL,
  `COVER_IMAGE` varchar(230) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.SHOP_ACCOUNT`
--

LOCK TABLES `dbo.SHOP_ACCOUNT` WRITE;
/*!40000 ALTER TABLE `dbo.SHOP_ACCOUNT` DISABLE KEYS */;
INSERT INTO `dbo.SHOP_ACCOUNT` VALUES ('lenguyenkhoa',123456,'SHOPii','HCM',357860936,'https://i.pinimg.com/originals/cd/b5/ea/cdb5eaa1c1fcee8d925edc3668f293bc.jpg','','','https://graphic.com.vn//uploads/product/graphic-templates/CJA5UC/cover/CJA5UC-w2038.jpg'),('vuhoangnhatvy',123456,'SunniiFood','HCM City',357860936,'https://scontent.fvca1-1.fna.fbcdn.net/v/t1.0-9/101718256_101651148255862_6065200070872838680_n.png?_nc_cat=103&_nc_sid=e3f864&_nc_ohc=zGZDQaDxws4AX9-N4UV&_nc_ht=scontent.fvca1-1.fna&oh=633195a26397836019e32baebc4008d0&oe=5F46989E','','','https://scontent.fvca1-1.fna.fbcdn.net/v/t1.0-9/101718256_101651148255862_6065200070872838680_n.png?_nc_cat=103&_nc_sid=e3f864&_nc_ohc=zGZDQaDxws4AX9-N4UV&_nc_ht=scontent.fvca1-1.fna&oh=633195a26397836019e32baebc4008d0&oe=5F46989E'),('vukhi',123456,'Vũ Khí Chửi Nhau Trên Mạng','USA',1234567755,'https://cdn11.bigcommerce.com/s-blqh8ck/images/stencil/700x700/products/4175/10415/IMG_7892__58412.1509109937.jpg?c=2&imbypass=on','','','https://cdn11.bigcommerce.com/s-blqh8ck/images/stencil/700x700/products/4175/10415/IMG_7892__58412.1509109937.jpg?c=2&imbypass=on'),('wibushop',123456,'Wjbu Shop','Japen',1231144234,'https://s3-ap-northeast-1.amazonaws.com/ddnbgroup/wp-content/uploads/sites/4/2017/09/29001014/gn-gift_guide_variable_c_2x.jpg','','','https://s3-ap-northeast-1.amazonaws.com/ddnbgroup/wp-content/uploads/sites/4/2017/09/29001014/gn-gift_guide_variable_c_2x.jpg');
/*!40000 ALTER TABLE `dbo.SHOP_ACCOUNT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:26
