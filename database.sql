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
  `longitude` varchar(16) DEFAULT NULL,
  `lat` varchar(16) DEFAULT NULL,
  'couponimage' blob default null, 
  PRIMARY KEY (`CouponID`)
);


DROP TABLE IF EXISTS `Customer`;
CREATE TABLE `Customer` (
  `CustomerEmail` varchar(16) NOT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `Address` varchar(256) DEFAULT NULL,
  `zipcode` varchar(16) DEFAULT NULL,
  `phonenumber` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CustomerEmail`)
);


LOCK TABLES `CouponData` WRITE;
INSERT INTO `CouponData` VALUES
  ('1122233','TGIF','Restuarent','123 address','60008','42.050123','-88.042236'),
  ('1122234','CPK','Restuarent','123 address','60008','42.051051	','-88.040167');
UNLOCK TABLES;
