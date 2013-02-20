/*
Navicat MySQL Data Transfer

Source Server         : ercan
Source Server Version : 50021
Source Host           : localhost:3306
Source Database       : disciotomasyonu

Target Server Type    : MYSQL
Target Server Version : 50021
File Encoding         : 65001

Date: 2011-12-03 18:05:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `anamnez_formu`
-- ----------------------------
DROP TABLE IF EXISTS `anamnez_formu`;
CREATE TABLE `anamnez_formu` (
  `ID` int(11) NOT NULL,
  `HASTA_ID` int(11) default NULL,
  `SORU` varchar(100) default NULL,
  `CEVAP` varchar(5) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of anamnez_formu
-- ----------------------------

-- ----------------------------
-- Table structure for `cari`
-- ----------------------------
DROP TABLE IF EXISTS `cari`;
CREATE TABLE `cari` (
  `CARI_ID` int(11) NOT NULL,
  `TARIH` datetime default NULL,
  `TOPLAM_BORC` int(11) default NULL,
  `ACIKLAMA` varchar(100) default NULL,
  `ODENEN` int(11) default NULL,
  PRIMARY KEY  (`CARI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cari
-- ----------------------------

-- ----------------------------
-- Table structure for `doktor`
-- ----------------------------
DROP TABLE IF EXISTS `doktor`;
CREATE TABLE `doktor` (
  `DOKTOR_ID` int(11) NOT NULL,
  `ADI` varchar(30) default NULL,
  `SOYADI` varchar(40) default NULL,
  `DIPLOMA_NO` varchar(30) default NULL,
  `EV_TELEFON` varchar(11) default NULL,
  `CEP_TELEFON` varchar(11) default NULL,
  `ADRES` varchar(100) default NULL,
  `TC` varchar(11) default NULL,
  `SOSYAL_GUVENLIK_NO` varchar(20) default NULL,
  `UNVAN` varchar(10) default NULL,
  `CINSIYET` varchar(5) default NULL,
  PRIMARY KEY  (`DOKTOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doktor
-- ----------------------------

-- ----------------------------
-- Table structure for `hasta_borc`
-- ----------------------------
DROP TABLE IF EXISTS `hasta_borc`;
CREATE TABLE `hasta_borc` (
  `BORC_ID` int(11) NOT NULL,
  `HASTA_ID` int(11) default NULL,
  `TARIH` datetime default NULL,
  `TOPLAM_BORC` int(11) default NULL,
  `ACIKLAMA` varchar(100) default NULL,
  `ODENEN` int(11) default NULL,
  PRIMARY KEY  (`BORC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hasta_borc
-- ----------------------------

-- ----------------------------
-- Table structure for `personel`
-- ----------------------------
DROP TABLE IF EXISTS `personel`;
CREATE TABLE `personel` (
  `ID` int(11) NOT NULL,
  `ADI` varchar(30) default NULL,
  `SOYADI` varchar(40) default NULL,
  `EV_TELEFON` varchar(11) default NULL,
  `CEP_TELEFON` varchar(11) default NULL,
  `ADRES` varchar(100) default NULL,
  `TC` varchar(11) default NULL,
  `SOSYAL_GUVENLIK_NO` varchar(20) default NULL,
  `UNVAN` varchar(10) default NULL,
  `CINSIYET` varchar(5) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personel
-- ----------------------------

-- ----------------------------
-- Table structure for `randevu`
-- ----------------------------
DROP TABLE IF EXISTS `randevu`;
CREATE TABLE `randevu` (
  `SIRA_NO` int(11) default NULL,
  `HASTA_ID` int(11) default NULL,
  `TARIH` datetime default NULL,
  `SAAT` datetime default NULL,
  `GELDIMI` tinyint(4) default NULL,
  `DOKTOR_ID` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of randevu
-- ----------------------------

-- ----------------------------
-- Table structure for `recete`
-- ----------------------------
DROP TABLE IF EXISTS `recete`;
CREATE TABLE `recete` (
  `RECETE_ID` int(11) default NULL,
  `HASTA_ID` int(11) default NULL,
  `TARIH` varchar(20) default NULL,
  `KULLANIM_SEKLI` varchar(60) default NULL,
  `RECETE_NO` int(11) default NULL,
  `ILAC` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recete
-- ----------------------------

-- ----------------------------
-- Table structure for `tedavi`
-- ----------------------------
DROP TABLE IF EXISTS `tedavi`;
CREATE TABLE `tedavi` (
  `TEDAVI_ID` int(11) NOT NULL,
  `HASTA_ID` int(11) default NULL,
  `DOKTOR_ID` int(11) default NULL,
  `DIS_NO` int(11) default NULL,
  `ISLEM_ID` int(11) default NULL,
  `TEDAVI` varchar(200) default NULL,
  `TESHIS` varchar(255) default NULL,
  `TEDAVI_BITTIMI` tinyint(4) default NULL,
  `TEDAVI_SURESI` int(11) default NULL,
  `TEDAVI_UCRET` int(11) default NULL,
  PRIMARY KEY  (`TEDAVI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tedavi
-- ----------------------------
