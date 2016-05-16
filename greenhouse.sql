/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : greenhouse

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2014-07-07 09:16:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `datacollect`
-- ----------------------------
DROP TABLE IF EXISTS `datacollect`;
CREATE TABLE `datacollect` (
  `Moteid_ID` int(11) default NULL,
  `temperature` float default NULL,
  `humidity` float default NULL,
  `photo_active` float default NULL,
  `co2` float default NULL,
  `nodetype` int(11) default NULL,
  `sample_num` int(11) default NULL,
  `xxxTemperature` int(11) default NULL,
  `xxxVoltage` int(11) default NULL,
  `total_solar` int(11) default '0',
  `A0` float(11,0) default NULL,
  `A1` float(11,0) default NULL,
  `TimestampArrive_TM` timestamp NULL default NULL,
  `Id` bigint(20) NOT NULL auto_increment,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=849 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datacollect
-- ----------------------------

-- ----------------------------
-- Table structure for `mycontrolinfo`
-- ----------------------------
DROP TABLE IF EXISTS `mycontrolinfo`;
CREATE TABLE `mycontrolinfo` (
  `isopen` tinyint(4) NOT NULL,
  `Id` int(255) NOT NULL auto_increment,
  `mycondition` varchar(255) default NULL,
  `operation` varchar(255) default NULL,
  `groupId` varchar(255) default NULL,
  `time` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mycontrolinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `node`
-- ----------------------------
DROP TABLE IF EXISTS `node`;
CREATE TABLE `node` (
  `ID` int(11) NOT NULL,
  `Moteid_ID` int(11) NOT NULL,
  `SensingType` varchar(255) default NULL,
  `area` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of node
-- ----------------------------
INSERT INTO `node` VALUES ('0', '1', 'HT', '1');
INSERT INTO `node` VALUES ('1', '2', 'HT', '2');
INSERT INTO `node` VALUES ('2', '3', 'HT', '3');
INSERT INTO `node` VALUES ('3', '4', 'HT', '4');
INSERT INTO `node` VALUES ('4', '11', 'CO2', '1');
INSERT INTO `node` VALUES ('5', '12', 'CO2', '2');
INSERT INTO `node` VALUES ('6', '13', 'CO2', '3');
INSERT INTO `node` VALUES ('7', '14', 'CO2', '4');
INSERT INTO `node` VALUES ('8', '21', 'CO', '1');
INSERT INTO `node` VALUES ('9', '22', 'CO', '2');
INSERT INTO `node` VALUES ('10', '23', 'CO', '3');
INSERT INTO `node` VALUES ('11', '24', 'CO', '4');
INSERT INTO `node` VALUES ('12', '31', 'L', '1');
INSERT INTO `node` VALUES ('13', '32', 'L', '2');
INSERT INTO `node` VALUES ('14', '33', 'L', '3');
INSERT INTO `node` VALUES ('15', '34', 'L', '4');
INSERT INTO `node` VALUES ('16', '41', 'SHT', '1');
INSERT INTO `node` VALUES ('17', '42', 'SHT', '2');
INSERT INTO `node` VALUES ('18', '43', 'SHT', '3');
INSERT INTO `node` VALUES ('19', '44', 'SHT', '4');
INSERT INTO `node` VALUES ('20', '51', 'PH', '1');
INSERT INTO `node` VALUES ('21', '52', 'PH', '2');
INSERT INTO `node` VALUES ('22', '53', 'PH', '3');
INSERT INTO `node` VALUES ('23', '54', 'PH', '4');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('orbs', 'green', '0');
INSERT INTO `userinfo` VALUES ('530', 'city', '1');
