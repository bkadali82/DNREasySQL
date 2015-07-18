CREATE DATABASE  IF NOT EXISTS `CPUPLOAD` DEFAULT CHARSET=utf8;

USE `CPUPLOAD`;

--
-- Table structure for table `CouponData`
--

DROP TABLE IF EXISTS `CouponData`;
CREATE TABLE `CouponData` (
  `CouponID` varchar(16) NOT NULL AUTO_INCREMENT,
  `Merchant` varchar(16) DEFAULT NULL,
  `BussinessType` varchar(20) DEFAULT NULL,
  `Address` varchar(256) DEFAULT NULL,
  `zipcode` varchar(16) DEFAULT NULL,
  `longitude` varchar(16) DEFAULT NULL,
  `lat` varchar(16) DEFAULT NULL,
  `couponimage` blob DEFAULT NULL, 
  PRIMARY KEY (`CouponID`)
);


DROP TABLE IF EXISTS `Customer`;
CREATE TABLE `Customer` (
  `CustomerEmail` varchar(100) NOT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `Address` varchar(256) DEFAULT NULL,
  `zipcode` varchar(16) DEFAULT NULL,
  `phonenumber` varchar(10) DEFAULT NULL,
  `directReferal1` varchar(100) DEFAULT NULL,
  `directReferal2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CustomerEmail`)
);


LOCK TABLES `CouponData` WRITE;
INSERT INTO `CouponData` VALUES
  ('1122233','TGIF','Restuarent','123 address','60008','42.050123','-88.042236',null),
  ('1122234','CPK','Restuarent','123 address','60008','42.051051	','-88.040167',null);
UNLOCK TABLES;
