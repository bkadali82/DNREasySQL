CREATE DATABASE  IF NOT EXISTS `CPUPLOAD` DEFAULT CHARSET=utf8;

USE `CPUPLOAD`;

--
-- Table structure for table `CouponData`
--

DROP TABLE IF EXISTS `CouponData`;
CREATE TABLE `CouponData` (
  `CouponID` varchar(16) NOT NULL,
  `Merchant` varchar(16) DEFAULT NULL,
  `BussinessType` varchar(11) DEFAULT NULL,
  `Address` varchar(256) DEFAULT NULL,
  `zipcode` varchar(16) DEFAULT NULL,
  `longitutde` varchar(16) DEFAULT NULL,
  `lat` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`CouponID`)
);

--
-- Table structure for table `Studiengang`
--
--
--DROP TABLE IF EXISTS `Studiengang`;
--CREATE TABLE `Studiengang` (
--  `SGID` varchar(16) NOT NULL,
--  `Bezeichnung` varchar(128) DEFAULT NULL,
--  `Abschluss` varchar(16) DEFAULT NULL,
--  PRIMARY KEY (`SGID`)
--);
--
-- Dumping data for table `Lehrveranstaltung`
--

LOCK TABLES `CouponData` WRITE;
INSERT INTO `CouponData` VALUES
  ('1122233','TGIF','Restuarent','123 address','60008','42.050123','-88.042236'),
  ('1122234','CPK','Restuarent','123 address','60008','42.051051','-88.040167');
UNLOCK TABLES;
