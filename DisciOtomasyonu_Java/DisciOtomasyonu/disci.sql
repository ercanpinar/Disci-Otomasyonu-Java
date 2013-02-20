/*
Navicat MySQL Data Transfer

Source Server         : mustafa
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : disci

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2011-12-29 22:42:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `anamnez_formu`
-- ----------------------------
DROP TABLE IF EXISTS `anamnez_formu`;
CREATE TABLE `anamnez_formu` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `HASTA_TC` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `SORU` int(2) NOT NULL,
  `CEVAP` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `HASTA_ID` (`HASTA_TC`) USING BTREE,
  CONSTRAINT `anamnez_formu_ibfk_1` FOREIGN KEY (`HASTA_TC`) REFERENCES `hasta_kayit` (`TCKNO`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of anamnez_formu
-- ----------------------------
INSERT INTO `anamnez_formu` VALUES ('1', '12345678910', '0', 'evet');
INSERT INTO `anamnez_formu` VALUES ('2', '12345678910', '1', 'evet');
INSERT INTO `anamnez_formu` VALUES ('3', '12345678910', '2', 'hayır');
INSERT INTO `anamnez_formu` VALUES ('4', '12345678910', '3', 'evet');
INSERT INTO `anamnez_formu` VALUES ('5', '12345678910', '4', 'evet');
INSERT INTO `anamnez_formu` VALUES ('6', '12345678910', '5', 'evet');
INSERT INTO `anamnez_formu` VALUES ('7', '12345678910', '6', 'evet');

-- ----------------------------
-- Table structure for `cari`
-- ----------------------------
DROP TABLE IF EXISTS `cari`;
CREATE TABLE `cari` (
  `CARI_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TARIH` varchar(30) DEFAULT NULL,
  `AY_YIL` varchar(7) NOT NULL,
  `YIL` varchar(4) NOT NULL,
  `TOPLAM_BORC` int(11) DEFAULT NULL,
  `KALAN` int(11) NOT NULL,
  `ACIKLAMA` longtext,
  `KIME` varchar(30) NOT NULL,
  `ODENEN` int(11) DEFAULT NULL,
  PRIMARY KEY (`CARI_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cari
-- ----------------------------
INSERT INTO `cari` VALUES ('25', '18/12/2011', '12/2011', '2011', '144', '-91', 'ASDASDSAD', 'SDADASDAS', '143');
INSERT INTO `cari` VALUES ('37', '18/12/2013', '12/2013', '2013', '566', '33', 'dsadasdasdsadasdsadsadas', 'ercan', '300');
INSERT INTO `cari` VALUES ('38', '18/12/2011', '12/2011', '2011', '399', '32', 'dasdsadasdasdsadsadsadsadsa', 'ali', '34');
INSERT INTO `cari` VALUES ('39', '18/12/2011', '12/2011', '2011', '3445', '1', 'dsadasdasdasdsadsadas', 'eka', '444');
INSERT INTO `cari` VALUES ('45', '21/12/2011', '12/2011', '2011', '399', '32', 'dsadsdsadas', 'ali', '33');
INSERT INTO `cari` VALUES ('46', '21/12/2011', '12/2011', '2011', '399', '32', 'sdsadsadsa', 'ali', '300');
INSERT INTO `cari` VALUES ('47', '21/12/2011', '12/2011', '2011', '3445', '1', '', 'eka', '3000');
INSERT INTO `cari` VALUES ('48', '23/12/2011', '12/2011', '2011', '345', '300', 'rabadabdabdbadas', 'araba', '45');
INSERT INTO `cari` VALUES ('49', '23/12/2015', '12/2015', '2015', '450', '150', 'dsadsadasdas', 'kapora', '300');

-- ----------------------------
-- Table structure for `carigelir`
-- ----------------------------
DROP TABLE IF EXISTS `carigelir`;
CREATE TABLE `carigelir` (
  `CARI_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TARIH` varchar(30) NOT NULL,
  `AY_YIL` varchar(7) NOT NULL,
  `YIL` varchar(4) NOT NULL,
  `ACIKLAMA` varchar(50) NOT NULL,
  `KIMDEN` varchar(30) NOT NULL,
  `ALINAN` int(11) NOT NULL,
  PRIMARY KEY (`CARI_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of carigelir
-- ----------------------------
INSERT INTO `carigelir` VALUES ('4', '21/12/2011 19:11:24', '12/2011', '2011', 'muayene ücreti', 'dffff sasas', '12');
INSERT INTO `carigelir` VALUES ('5', '21/12/2011', '12/2011', '2011', 'tedavi ücreti', 'selim özgür', '1');
INSERT INTO `carigelir` VALUES ('6', '21/12/2011', '12/2011', '2011', 'tedavi ücreti', 'selim özgür', '14');
INSERT INTO `carigelir` VALUES ('7', '21/12/2011', '12/2011', '2011', 'tedavi ücreti', 'ahmet dursun', '1');
INSERT INTO `carigelir` VALUES ('8', '21/12/2011', '12/2011', '2011', 'tedavi ücreti', 'ahmet dursun', '66');
INSERT INTO `carigelir` VALUES ('9', '24/12/2011 19:31:00', '12/2011', '2011', 'muayene ücreti', 'muhammet sert', '12');
INSERT INTO `carigelir` VALUES ('10', '24/12/2011 19:31:00', '12/2011', '2011', 'muayene ücreti', 'sefa turp', '12');
INSERT INTO `carigelir` VALUES ('11', '24/12/2011', '12/2011', '2011', 'tedavi ücreti', 'sefa turp', '1');
INSERT INTO `carigelir` VALUES ('12', '24/12/2011', '12/2011', '2011', 'tedavi ücreti', 'sefa turp', '100');
INSERT INTO `carigelir` VALUES ('13', '24/12/2011', '12/2011', '2011', 'tedavi ücreti', 'sefa turp', '1');
INSERT INTO `carigelir` VALUES ('14', '24/12/2011', '12/2011', '2011', 'tedavi ücreti', 'sefa turp', '1');
INSERT INTO `carigelir` VALUES ('15', '24/12/2011', '12/2011', '2011', 'tedavi ücreti', 'muhanmet sert', '1');
INSERT INTO `carigelir` VALUES ('16', '24/12/2011', '12/2011', '2011', 'tedavi ücreti', 'sefa turp', '1');
INSERT INTO `carigelir` VALUES ('17', '24/12/2011', '12/2011', '2011', 'tedavi ücreti', 'muhanmet sert', '14');
INSERT INTO `carigelir` VALUES ('18', '24/12/2011', '12/2011', '2011', 'tedavi ücreti', 'sefa turp', '1');
INSERT INTO `carigelir` VALUES ('19', '24/12/2011', '12/2011', '2011', 'tedavi ücreti', 'muhanmet sert', '1');
INSERT INTO `carigelir` VALUES ('20', '24/12/2011', '12/2011', '2011', 'tedavi ücreti', 'sefa turp', '62');
INSERT INTO `carigelir` VALUES ('21', '27/12/2011 23:49:47', '12/2011', '2011', 'muayene ücreti', 'asdf asdf', '12');
INSERT INTO `carigelir` VALUES ('22', '27/12/2011', '12/2011', '2011', 'tedavi ücreti', 'asdf asdf', '1');
INSERT INTO `carigelir` VALUES ('23', '27/12/2011', '12/2011', '2011', 'tedavi ücreti', 'asdf asdf', '883');
INSERT INTO `carigelir` VALUES ('24', '27/12/2011', '12/2011', '2011', 'tedavi ücreti', 'asdf asdf', '355');
INSERT INTO `carigelir` VALUES ('25', '29/12/2011', '12/2011', '2011', 'tedavi ücreti', 'selim özgür', '1');
INSERT INTO `carigelir` VALUES ('26', '29/12/2011', '12/2011', '2011', 'tedavi ücreti', 'selim özgür', '1');

-- ----------------------------
-- Table structure for `doktor`
-- ----------------------------
DROP TABLE IF EXISTS `doktor`;
CREATE TABLE `doktor` (
  `DOKTOR_ID` int(2) NOT NULL DEFAULT '0',
  `DIPLOMA_NO` varchar(90) DEFAULT NULL,
  `PERSONEL_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`DOKTOR_ID`),
  KEY `PERSONEL_ID` (`PERSONEL_ID`) USING BTREE,
  CONSTRAINT `doktor_ibfk_1` FOREIGN KEY (`PERSONEL_ID`) REFERENCES `personel` (`PID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doktor
-- ----------------------------
INSERT INTO `doktor` VALUES ('1', '9999999999', '1');

-- ----------------------------
-- Table structure for `hasta_borc`
-- ----------------------------
DROP TABLE IF EXISTS `hasta_borc`;
CREATE TABLE `hasta_borc` (
  `BORC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `HASTA_ID` int(11) DEFAULT NULL,
  `TARIH` datetime DEFAULT NULL,
  `TOPLAM_BORC` int(11) DEFAULT NULL,
  `ACIKLAMA` longtext,
  `ODENEN` int(11) DEFAULT NULL,
  PRIMARY KEY (`BORC_ID`),
  KEY `HASTA_ID` (`HASTA_ID`) USING BTREE,
  CONSTRAINT `hasta_borc_ibfk_1` FOREIGN KEY (`HASTA_ID`) REFERENCES `hasta_kayit` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hasta_borc
-- ----------------------------

-- ----------------------------
-- Table structure for `hasta_kayit`
-- ----------------------------
DROP TABLE IF EXISTS `hasta_kayit`;
CREATE TABLE `hasta_kayit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TCKNO` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ADI` varchar(40) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `SOYADI` varchar(40) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `DOGUM_YERI` varchar(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `DOGUM_TARIHI` varchar(15) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `BABA_ADI` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ANNE_ADI` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `MESLEK` varchar(40) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `KAN_GRUBU` varchar(5) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `EV_TELEFON` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `CEP_TELEFON` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `E_MAIL` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ANLASMALI_KURUM` varchar(254) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ANLAMALI_KURUM_NO` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `MEDENI_DURUM` varchar(5) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `CINSIYET` varchar(5) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `KAYIT_TARİHİ` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TCKNO` (`TCKNO`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hasta_kayit
-- ----------------------------
INSERT INTO `hasta_kayit` VALUES ('1', '12345678910', 'selim', 'özgür', 'bandırma', '13/06/1991', 'hasan', 'rrrr', 'öğrenci', 'a(+)', '12121212121', '1212121212', 'dsfdsf', 'ssk', '1234567', 'Evli', 'Erkek', '28/12/2011 11:01:31');
INSERT INTO `hasta_kayit` VALUES ('2', '11111111111', 'ahmet', 'dursun', 'çanakkale', '01/12/2011', 'asas', 'asads', 'sadasd', 'a', '131234543', '34235', 'asfdsaf', 'ssk', '12345', 'Evli', 'Erkek', '21/12/2011 11:11:01');
INSERT INTO `hasta_kayit` VALUES ('3', '32545', 'mustafa', 'ozcan', 'bart?n?', '01/02/1991', 'asfdsgf', 'dsgsgsr', 'segr', 'a', '2353425', '234324', 'aaaaa', 'ssk', '423432', 'Evli', 'Erkek', '21/12/2011 19:11:24');
INSERT INTO `hasta_kayit` VALUES ('4', '123234325', 'muhammet', 'sert', 'denizli', '10/02/2011', 'selim', 'sdsfd', 'asdsd', 'A', '4234234', '1234124', 'asfsadf', 'ssk', '12313', 'Evli', 'Erkek', '24/12/2011 19:31:00');
INSERT INTO `hasta_kayit` VALUES ('5', '334543', 'sefa', 'turp', 'denizli', '10/02/2011', 'selim', 'sdsfd', 'asdsd', 'A', '4234234', '1234124', 'asfsadf', 'ssk', '12313', 'Evli', 'Erkek', '24/12/2011 19:31:00');
INSERT INTO `hasta_kayit` VALUES ('6', '123456', 'asdf', 'asdf', 'asdfghj', '08/12/2011', 'asdf', 'asdf', 'asdha', 'a', '12345', '1234', 'ASDFGH', 'SSK', 'asdfgh', 'Evli', 'Erkek', '27/12/2011 23:49:47');

-- ----------------------------
-- Table structure for `islem2`
-- ----------------------------
DROP TABLE IF EXISTS `islem2`;
CREATE TABLE `islem2` (
  `ISLEMID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ISLEM` varchar(500) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `TUTAR` double NOT NULL,
  PRIMARY KEY (`ISLEMID`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of islem2
-- ----------------------------
INSERT INTO `islem2` VALUES ('1', 'ALVEOLİTİS', '1');
INSERT INTO `islem2` VALUES ('2', 'DİŞ ETİ APSESİ', '1');
INSERT INTO `islem2` VALUES ('3', 'DİŞ RENKLENMESİ', '1');
INSERT INTO `islem2` VALUES ('4', 'EKLEM PATOLOJİSİ', '1');
INSERT INTO `islem2` VALUES ('5', 'ENDODONTİK FİSTÜL', '1');
INSERT INTO `islem2` VALUES ('6', 'GÖMÜLÜ DİŞ', '1');
INSERT INTO `islem2` VALUES ('7', 'GRANÜLOM', '1');
INSERT INTO `islem2` VALUES ('8', 'İmplant', '1');
INSERT INTO `islem2` VALUES ('9', 'KALSİFİYE KANAL', '1');
INSERT INTO `islem2` VALUES ('10', 'Diş Kaybı', '1');
INSERT INTO `islem2` VALUES ('11', 'KIRIK TEDAVİSİ', '1');
INSERT INTO `islem2` VALUES ('12', 'Apikal Apse', '1');
INSERT INTO `islem2` VALUES ('13', 'KIRIK VEYA DÜŞMÜŞ DOLGU', '1');
INSERT INTO `islem2` VALUES ('14', 'Kök', '1');
INSERT INTO `islem2` VALUES ('15', 'KÖK ANKERİ', '1');
INSERT INTO `islem2` VALUES ('16', 'KÖK REZORBSİYONU', '1');
INSERT INTO `islem2` VALUES ('17', 'Kanal Tedavisi Yapılmış', '1');
INSERT INTO `islem2` VALUES ('18', 'LÜXE DİŞ', '1');
INSERT INTO `islem2` VALUES ('19', 'Mine Hipolazisi', '1');
INSERT INTO `islem2` VALUES ('20', 'PERİODONTAL FİSTÜL', '1');
INSERT INTO `islem2` VALUES ('21', 'PERİODONTOL APSE', '1');
INSERT INTO `islem2` VALUES ('22', 'PULPİTİS', '1');
INSERT INTO `islem2` VALUES ('23', 'Apikal Kist', '1');
INSERT INTO `islem2` VALUES ('24', 'YUMUŞAK DOKU LEZYONU', '1');
INSERT INTO `islem2` VALUES ('25', 'Kırık Servikal', '11');
INSERT INTO `islem2` VALUES ('26', 'Kırık Distal', '1');
INSERT INTO `islem2` VALUES ('27', 'Kırık Messial', '1');
INSERT INTO `islem2` VALUES ('28', 'Kırık O', '1');
INSERT INTO `islem2` VALUES ('29', 'Kırık Lingual', '1');
INSERT INTO `islem2` VALUES ('30', 'Kırık Buccal', '1');
INSERT INTO `islem2` VALUES ('31', 'APİKAL REZEKSİYON', '1');
INSERT INTO `islem2` VALUES ('32', 'ÇENE KIRIĞI', '1');
INSERT INTO `islem2` VALUES ('33', 'Çürük 1 Yüzlü', '1');
INSERT INTO `islem2` VALUES ('34', 'Dişhekimi muayenesi', '22.53');
INSERT INTO `islem2` VALUES ('35', 'Uzman dişhekimi muayenesi ', '31.24');
INSERT INTO `islem2` VALUES ('36', 'Diş röntgen filmi (periapikal)', '15.71');
INSERT INTO `islem2` VALUES ('37', 'Okluzal film  ', '16.77');
INSERT INTO `islem2` VALUES ('38', 'Bite - wing radyografi', '15.8');
INSERT INTO `islem2` VALUES ('39', 'Ekstra oral röntgen filmi ', '17.98');
INSERT INTO `islem2` VALUES ('40', 'Panoramik film ', '35.89');
INSERT INTO `islem2` VALUES ('41', 'Sefalometrik film ', '36.38');
INSERT INTO `islem2` VALUES ('42', 'Bilgisayarlı sefalometrik film analizi', '44.4');
INSERT INTO `islem2` VALUES ('43', 'Antero-posterior sefalometrik film ', '36.05');
INSERT INTO `islem2` VALUES ('44', 'El bilek filmi ', '35');
INSERT INTO `islem2` VALUES ('45', 'T.M.E. filmi ve tetkiki ', '57.49');
INSERT INTO `islem2` VALUES ('46', 'Siyalografi  ', '71.99');
INSERT INTO `islem2` VALUES ('47', 'Oral  hijyen eğitimi  ', '19.63');
INSERT INTO `islem2` VALUES ('48', 'Vitalite Kontrolu ', '5.25');
INSERT INTO `islem2` VALUES ('49', 'Lokal anestezi  (enjeksiyon - infiltratif))', '5.83');
INSERT INTO `islem2` VALUES ('50', 'Lokal anestezi (rejyonal)', '7.94');
INSERT INTO `islem2` VALUES ('51', 'Radio-vizyografi', '14.61');
INSERT INTO `islem2` VALUES ('52', 'Konsültasyon', '12.79');
INSERT INTO `islem2` VALUES ('53', 'Uzman dişhekimi konsültasyonu', '12.79');
INSERT INTO `islem2` VALUES ('54', 'Bilgisayarlı tomografi (tek çene) ', '101.88');
INSERT INTO `islem2` VALUES ('55', 'Bilgisayarlı eklem tomografisi (çift taraflı)', '162.16');
INSERT INTO `islem2` VALUES ('56', 'Bilgisayarlı büyük TME fonksiyon testi', '299.97');
INSERT INTO `islem2` VALUES ('57', 'Bilgisayarlı kastonus analizi', '197.98');
INSERT INTO `islem2` VALUES ('58', 'Bilinçli sedasyon', '35.91');
INSERT INTO `islem2` VALUES ('59', 'Teşhis ve tedavi planlaması ', '42');
INSERT INTO `islem2` VALUES ('60', 'Kontrol hekim muayenesi', '24.71');
INSERT INTO `islem2` VALUES ('61', 'Tükürük akış hızı ve tamponlama kapasite tayini ', '43.09');
INSERT INTO `islem2` VALUES ('62', 'Tükürükte mikrobiyolojik analiz', '64.63');
INSERT INTO `islem2` VALUES ('63', 'Amalgam dolgu (bir yüzlü)', '45.37');
INSERT INTO `islem2` VALUES ('64', 'Amalgam dolgu (iki yüzlü)', '62.88');
INSERT INTO `islem2` VALUES ('65', 'Amalgam dolgu (üç yüzlü)', '81.86');
INSERT INTO `islem2` VALUES ('66', 'İnley dolgu* (bir yüzlü) ', '64.63');
INSERT INTO `islem2` VALUES ('67', 'İnley dolgu* (iki yüzlü)', '78.99');
INSERT INTO `islem2` VALUES ('68', 'İnley dolgu* (üç yüzlü)', '86.17');
INSERT INTO `islem2` VALUES ('69', 'Komposit dolgu (bir yüzlü) (kimyasal- ışıklı)', '52.97');
INSERT INTO `islem2` VALUES ('70', 'Komposit dolgu (iki yüzlü) (kimyasal- ışıklı)', '68.21');
INSERT INTO `islem2` VALUES ('71', 'Komposit dolgu (üç yüzlü) (kimyasal- ışıklı)', '89.11');
INSERT INTO `islem2` VALUES ('72', 'Kuafaj (dolgu hariç) ', '7.57');
INSERT INTO `islem2` VALUES ('73', 'Extirpasyon (her kanal için)', '24.41');
INSERT INTO `islem2` VALUES ('74', 'Çürük 2 Yüzlü', '0');
INSERT INTO `islem2` VALUES ('75', 'Çürük 3 Yüzlü', '0');
INSERT INTO `islem2` VALUES ('76', 'Pansuman (seans başı)', '15.6');
INSERT INTO `islem2` VALUES ('77', 'Kanal tedavisi - Tek kanal(dolgu  hariç)', '61.76');
INSERT INTO `islem2` VALUES ('78', 'Kanal tedavisi - İki kanal(dolgu  hariç)', '109.15');
INSERT INTO `islem2` VALUES ('79', 'Kanal tedavisi - Üç kanal(dolgu  hariç)', '163.72');
INSERT INTO `islem2` VALUES ('80', 'Kanal Tedavisi - İlave her kanal için ', '43.09');
INSERT INTO `islem2` VALUES ('81', 'Periapikal lezyonlu dişte kanal tedavisi - Tek kanal (dolgu hariç)', '79.23');
INSERT INTO `islem2` VALUES ('82', 'Periapikal lezyonlu dişte kanal tedavisi - İki Kanal (dolgu hariç)', '132.02');
INSERT INTO `islem2` VALUES ('83', 'Periapikal lezyonlu dişte kanal tedavisi - Üç Kanal (dolgu hariç)', '188.94');
INSERT INTO `islem2` VALUES ('84', 'Aşırı kole hassasiyeti tedavisi (tam çene) ', '71.81');
INSERT INTO `islem2` VALUES ('85', 'Aşırı kole hassasiyeti tedavisi (tek diş) ', '14.36');
INSERT INTO `islem2` VALUES ('86', 'Black V kole dolgusu (amalgam) ', '44.71');
INSERT INTO `islem2` VALUES ('87', 'Black V kole dolgusu (cam ionomer) ', '35.65');
INSERT INTO `islem2` VALUES ('88', 'Black V kole dolgu(kompozit)', '44.17');
INSERT INTO `islem2` VALUES ('89', 'Onley * ', '63.19');
INSERT INTO `islem2` VALUES ('90', 'Pinley*', '63.19');
INSERT INTO `islem2` VALUES ('91', 'Komposit inley ', '88.69');
INSERT INTO `islem2` VALUES ('92', 'Seramik inley ', '287.24');
INSERT INTO `islem2` VALUES ('93', 'Cam ionomer dolgu ', '44.91');
INSERT INTO `islem2` VALUES ('94', 'Diş ağartma ( beyazlatma - tek diş)', '28.74');
INSERT INTO `islem2` VALUES ('95', 'Diş ağartma (beyazlatma - alt-üst çene) ', '249.88');
INSERT INTO `islem2` VALUES ('96', 'Pinli restorasyon (parapulpar-pin-pin başına)', '28.43');
INSERT INTO `islem2` VALUES ('97', 'Kompozit Veneer', '95.64');
INSERT INTO `islem2` VALUES ('98', 'Dolgu (restorasyon) tamiri', '50.05');
INSERT INTO `islem2` VALUES ('99', 'Amputasyon (dolgu hariç)', '59.99');
INSERT INTO `islem2` VALUES ('100', 'Dolgu sökümü (tek diş)', '30');
INSERT INTO `islem2` VALUES ('101', 'Kanal dolgusu sökümü (her kanal için)', '29.55');
INSERT INTO `islem2` VALUES ('102', 'Retreatment (kanal dolgusu tekrarı -her kanal için) ', '82.66');
INSERT INTO `islem2` VALUES ('103', 'Kanal içi post uygulaması ', '57.45');
INSERT INTO `islem2` VALUES ('104', 'Fissür örtülmesi (sealant-tek diş) ', '25.84');
INSERT INTO `islem2` VALUES ('105', 'Yerel flour uygulaması (yarım çene) ', '27.01');
INSERT INTO `islem2` VALUES ('106', 'Prefabrike kron ', '57.45');
INSERT INTO `islem2` VALUES ('107', 'Yer tutucu (sabit) ', '114.89');
INSERT INTO `islem2` VALUES ('108', 'Yer tutucu (hareketli) ', '114.89');
INSERT INTO `islem2` VALUES ('109', 'Çocuk protezi (akrilik-bölümlü-tek çene) ', '287.23');
INSERT INTO `islem2` VALUES ('110', 'Çocuk protezi  (akrilik-tam- tek çene) ', '287.23');
INSERT INTO `islem2` VALUES ('111', 'Amputasyon (dolgu hariç) ', '50.92');
INSERT INTO `islem2` VALUES ('112', 'Strip kron  (dolgu hariç)', '21.54');
INSERT INTO `islem2` VALUES ('113', 'Kompomer dolgu ', '59.99');
INSERT INTO `islem2` VALUES ('114', 'Açık apeksli dişte kanal tedavisi (her kanal için  dolgu hariç)', '96.38');
INSERT INTO `islem2` VALUES ('115', 'Tam protez (akrilik-tek çene) ', '563.8');
INSERT INTO `islem2` VALUES ('116', 'Bölümlü protez (akrilik-tek çene)', '538.9');
INSERT INTO `islem2` VALUES ('117', 'Tam protez (metal-tek çene) ', '693.23');
INSERT INTO `islem2` VALUES ('118', 'Bölümlü protez (metal-tek çene) ', '680.34');
INSERT INTO `islem2` VALUES ('119', 'Hassas tutuculu protezler (hassas tutucu ücreti hariç - tek çene)', '792.03');
INSERT INTO `islem2` VALUES ('120', 'İmplant destekli hareketli protezler (hassas tutucu ücreti hariç-tek çene)', '883.29');
INSERT INTO `islem2` VALUES ('121', 'İmmediat protez (akrilik-tek çene) ', '378.2');
INSERT INTO `islem2` VALUES ('122', 'Besleme (tek çene) ', '215.43');
INSERT INTO `islem2` VALUES ('123', 'Rebezaj (tek çene)', '224.17');
INSERT INTO `islem2` VALUES ('124', 'Proteze yumuşak akrilik uygulaması (geçici tek çene)', '97.77');
INSERT INTO `islem2` VALUES ('125', 'Proteze yumuşak akrilik uygulaması (daimi tek çene)', '214.65');
INSERT INTO `islem2` VALUES ('126', 'Tamir (akrilik protezler, kırık veya çatlak) ', '57.45');
INSERT INTO `islem2` VALUES ('127', 'Kroşe ilavesi ', '57.45');
INSERT INTO `islem2` VALUES ('128', 'Kroşe ilavesi veya metal iskelet tamiri (punto ile metal iskelete)', '85.09');
INSERT INTO `islem2` VALUES ('129', 'Diş ilavesi (tek diş) ', '57.45');
INSERT INTO `islem2` VALUES ('130', 'Gnatoloji, TME kas muayenesi (okluzyon kontrolü) ', '57.45');
INSERT INTO `islem2` VALUES ('131', 'Roch köprü', '89.99');
INSERT INTO `islem2` VALUES ('132', 'Gece plağı (bruksizm için) ', '145.63');
INSERT INTO `islem2` VALUES ('133', 'Pinley ve çeşitleri * ', '117.49');
INSERT INTO `islem2` VALUES ('134', 'Tek parça döküm kuron ', '132.25');
INSERT INTO `islem2` VALUES ('135', 'Veneer kuron (akrilik) ', '166.95');
INSERT INTO `islem2` VALUES ('136', 'Veneer kuron*(seramik)', '199.28');
INSERT INTO `islem2` VALUES ('137', 'Laminate veneer kuron (akrilik)', '179.52');
INSERT INTO `islem2` VALUES ('138', 'Laminate veneer kuron (seramik)', '323.14');
INSERT INTO `islem2` VALUES ('139', 'Jaket kuron (akrilik) ', '100.53');
INSERT INTO `islem2` VALUES ('140', 'Zirkonyum kron', '365.48');
INSERT INTO `islem2` VALUES ('141', 'Teleskop kuron primer *(koping ) ', '137.06');
INSERT INTO `islem2` VALUES ('142', 'Teleskop kuron sekonder *', '215.98');
INSERT INTO `islem2` VALUES ('143', 'İmplant üstü kuron (abutment ücreti hariç)', '182.38');
INSERT INTO `islem2` VALUES ('144', 'Kuronlarda freze tekniği farkı', '43.09');
INSERT INTO `islem2` VALUES ('145', 'Döküm post core(pivo-kuron hariç)', '103.06');
INSERT INTO `islem2` VALUES ('146', 'Maryland köprü (adeziv köprü)', '152.44');
INSERT INTO `islem2` VALUES ('147', 'Geçici kuron (tek diş için) ', '28.72');
INSERT INTO `islem2` VALUES ('148', 'Kuron sökümü (her sabit üye için) ', '28.72');
INSERT INTO `islem2` VALUES ('149', 'İmplant üstü kuron sökümü (her sabit üye için)', '30');
INSERT INTO `islem2` VALUES ('150', 'Düşmüş kuron ve köprü simantasyonu (her sabit üye için) ', '18.57');
INSERT INTO `islem2` VALUES ('151', 'Kuron köprü tamiri* (her üye için)', '43.09');
INSERT INTO `islem2` VALUES ('152', 'Diş üstü protezi (overdenture - tek çene)', '556.99');
INSERT INTO `islem2` VALUES ('153', 'Damak yarığı protezi  (velum uzantılı aparey) ', '723.94');
INSERT INTO `islem2` VALUES ('154', 'Yeni doğanda preoperatif aparey  (verin ücreti ayrıca alınır)', '571.67');
INSERT INTO `islem2` VALUES ('155', 'Geçici obturatörler ', '389.71');
INSERT INTO `islem2` VALUES ('156', 'Basit çene defektlerinde protetik tedavi (döküm ücreti hariç)', '718.09');
INSERT INTO `islem2` VALUES ('157', 'Komplike çene defektlerinde protetik tedavi (döküm ücreti hariç)', '933.51');
INSERT INTO `islem2` VALUES ('158', 'Yüz protezleri (yumuşak akrilik ile) ', '1344.77');
INSERT INTO `islem2` VALUES ('159', 'Göz protezi (oküler) ', '646.28');
INSERT INTO `islem2` VALUES ('160', 'Okluzal aşındırmalar (tek çene) ', '50.27');
INSERT INTO `islem2` VALUES ('161', 'Okluzyon düzeltilmesi (iki çene) ', '107.71');
INSERT INTO `islem2` VALUES ('162', 'Diş çekimi ', '47.13');
INSERT INTO `islem2` VALUES ('163', 'Komplikasyonlu diş çekimi ', '86.17');
INSERT INTO `islem2` VALUES ('164', 'Gömülü diş operasyonu', '174.92');
INSERT INTO `islem2` VALUES ('165', 'Gömülü diş operasyonu(kemik retansiyonlu)', '189.45');
INSERT INTO `islem2` VALUES ('166', 'Kök ucu rezeksiyonu (kanal tedavisi ve dolgu hariç) ', '143.62');
INSERT INTO `islem2` VALUES ('167', 'Alveolit cerrahi tedavisi ', '43.09');
INSERT INTO `islem2` VALUES ('168', 'Kanama müdahalesi (basit) ', '21.54');
INSERT INTO `islem2` VALUES ('169', 'Kanama müdahalesi(dikişli)', '28.72');
INSERT INTO `islem2` VALUES ('170', 'Alveol plastiği(yarım çene) ', '143.62');
INSERT INTO `islem2` VALUES ('171', 'Alveol düzeltilmesi (yarım çene)', '143.62');
INSERT INTO `islem2` VALUES ('172', 'Kist operasyonu  ', '202.27');
INSERT INTO `islem2` VALUES ('173', 'Epulis operasyonu', '139.63');
INSERT INTO `islem2` VALUES ('174', 'Osteomyelitis veya osteitis operasyonu (tek çene basit)', '215.43');
INSERT INTO `islem2` VALUES ('175', 'Çene lüksasyonu (basit) ', '31.29');
INSERT INTO `islem2` VALUES ('176', 'Frenektomi operasyonu ', '139.62');
INSERT INTO `islem2` VALUES ('177', 'Vestibüloplasti plastiği(yarım çene) ', '358.2');
INSERT INTO `islem2` VALUES ('178', 'Sinüs plastiği ', '233.56');
INSERT INTO `islem2` VALUES ('179', 'Sert doku greftleme(greft ücreti hariç)', '254.51');
INSERT INTO `islem2` VALUES ('180', 'Yumuşak doku greftleme(greft ücreti hariç) ', '218.35');
INSERT INTO `islem2` VALUES ('181', 'Sinüs lifting(biomateryal ücreti hariç)', '263.42');
INSERT INTO `islem2` VALUES ('182', 'Biyopsi', '57.45');
INSERT INTO `islem2` VALUES ('183', 'Fibrom operasyonu', '144.54');
INSERT INTO `islem2` VALUES ('184', 'Apse drenajı  ', '43.09');
INSERT INTO `islem2` VALUES ('185', 'Kapişon izalesi  ', '35.9');
INSERT INTO `islem2` VALUES ('186', 'Stomatit tedavisi (kısa süreli)', '41.65');
INSERT INTO `islem2` VALUES ('187', 'Stomatit tedavisi (uzun süreli)', '58.88');
INSERT INTO `islem2` VALUES ('188', 'Oroantral fistül tedavisi', '148.79');
INSERT INTO `islem2` VALUES ('189', 'Fizik tedavisi (infraruj seansı) ', '14.36');
INSERT INTO `islem2` VALUES ('190', 'Çene kırığı (basit) ', '422.97');
INSERT INTO `islem2` VALUES ('191', 'Çene kırığı (komplike-materyal ücreti hariç) ', '1436.17');
INSERT INTO `islem2` VALUES ('192', 'Reimplantasyon (tek diş-kanal tedavisi hariç) ', '143.62');
INSERT INTO `islem2` VALUES ('193', 'Ototransplantasyon (tek diş-kanal tedavisi hariç)', '143.62');
INSERT INTO `islem2` VALUES ('194', 'Supperiostal implant(implant ücreti hariç) ', '586.43');
INSERT INTO `islem2` VALUES ('195', 'Kemik içi implant (tek silindirik implant ücreti hariç) ', '356.61');
INSERT INTO `islem2` VALUES ('196', 'Kemik içi implant (blade tek implant ücreti hariç) ', '355.79');
INSERT INTO `islem2` VALUES ('197', 'Torus operasyonu(yarım çene)', '179.52');
INSERT INTO `islem2` VALUES ('198', 'Odontogenik tümör operasyonu (küçük) ', '378.39');
INSERT INTO `islem2` VALUES ('199', 'Odontogenik tümör operasyonu (büyük) ', '434.95');
INSERT INTO `islem2` VALUES ('200', 'Nevralji tedavisi (alkol enjeksiyonu) ', '33.68');
INSERT INTO `islem2` VALUES ('201', 'Nöroktomi (nevralji tedavisi cerrahi) ', '143.62');
INSERT INTO `islem2` VALUES ('202', 'Tükrük bezi kanalından taş çıkarma (basit) ', '71.81');
INSERT INTO `islem2` VALUES ('203', 'Ortodontik tedavi amaçlı gömük dişlerin üzerinin açılması', '179.52');
INSERT INTO `islem2` VALUES ('204', 'T.M.E. Mekonoterapi', '165.16');
INSERT INTO `islem2` VALUES ('205', 'T.M.E. İçi enjeksiyon(tek taraflı)', '66.97');
INSERT INTO `islem2` VALUES ('206', 'Artrosentez(tek taraflı)', '163.74');
INSERT INTO `islem2` VALUES ('207', 'Açık eklem cerrahisi(tek taraflı)', '1457.54');
INSERT INTO `islem2` VALUES ('208', 'Genioplasti', '1148.94');
INSERT INTO `islem2` VALUES ('209', 'Segmental osteotomi', '1335.64');
INSERT INTO `islem2` VALUES ('210', 'Osteotomi(tek çene)', '1518.26');
INSERT INTO `islem2` VALUES ('211', 'Periodontal apse tedavisi ', '36');
INSERT INTO `islem2` VALUES ('212', 'Detertraj (diş taşı temizliği-tek çene) ', '54.57');
INSERT INTO `islem2` VALUES ('213', 'Subgingival küretaj (tek diş) ', '14.36');
INSERT INTO `islem2` VALUES ('214', 'Subgingival ilaç uygulaması', '5.25');
INSERT INTO `islem2` VALUES ('215', 'Gingivoplasti (tek diş) ', '28.72');
INSERT INTO `islem2` VALUES ('216', 'Gingivektomi (tek diş) ', '35.9');
INSERT INTO `islem2` VALUES ('217', 'Flap operasyonu ( subgingival küretaj dahil - tek diş) ', '64.63');
INSERT INTO `islem2` VALUES ('218', 'Tunnel Operasyonu (tek diş)', '71.81');
INSERT INTO `islem2` VALUES ('219', 'Hemiseksiyon (kök amputasyonu-kanal tedavisi hariç)', '71.81');
INSERT INTO `islem2` VALUES ('220', 'Serbest diş eti grefti ', '76.25');
INSERT INTO `islem2` VALUES ('221', 'Coronale kaydırma veya slyding flap ', '74.4');
INSERT INTO `islem2` VALUES ('222', 'Periodontal şine(splint-sabit) ', '165.16');
INSERT INTO `islem2` VALUES ('223', 'Periodontal şine (splint-hareketli) ', '197.35');
INSERT INTO `islem2` VALUES ('224', 'Periodontal şine(splint-geçici-yarım çene) ', '57.45');
INSERT INTO `islem2` VALUES ('225', 'Biyomateryal uygulaması (tek diş, flap op.ve biomateryal ücreti hariç) ', '5.25');
INSERT INTO `islem2` VALUES ('226', 'Membran uygulaması (tek diş, flap op. ve membran ücreti hariç)', '15.75');
INSERT INTO `islem2` VALUES ('227', 'Vestibül plak ', '143.62');
INSERT INTO `islem2` VALUES ('228', 'Subepitelyal bağ dokusu grefti', '150.85');
INSERT INTO `islem2` VALUES ('229', 'Sefalometrik film analizi ', '38.42');
INSERT INTO `islem2` VALUES ('230', 'Antero pasterior sefalometrik film analizi (frontal film analizi)', '34.3');
INSERT INTO `islem2` VALUES ('231', 'Kemik yaşı tayini ', '20.58');
INSERT INTO `islem2` VALUES ('232', 'Ortodontik fotoğraf ', '13.72');
INSERT INTO `islem2` VALUES ('233', 'Ortodontik fotoğraf tetkiki ', '13.72');
INSERT INTO `islem2` VALUES ('234', 'Ortodontik model yapımı ', '20.58');
INSERT INTO `islem2` VALUES ('235', 'Ortodontik model analizi ', '13.72');
INSERT INTO `islem2` VALUES ('236', 'Ara dönem sefalometrik film analizi ', '38.42');
INSERT INTO `islem2` VALUES ('237', 'Ara dönem model yapımı ', '20.58');
INSERT INTO `islem2` VALUES ('238', 'Angle sınıf I anomalilerinin ortodontik ted. ', '617.46');
INSERT INTO `islem2` VALUES ('239', 'Angle sınıf II anomalilerinin ortodontik ted. ', '686.07');
INSERT INTO `islem2` VALUES ('240', 'Angle sınıf III anomalilerinin ortodontik ted. ', '823.28');
INSERT INTO `islem2` VALUES ('241', 'Sabit kapanış yükseltici tatbiki (kısa süreli)', '27.44');
INSERT INTO `islem2` VALUES ('242', 'Lingual teknikle angle sınıf I anomalilerinin ortodontik ted.', '686.07');
INSERT INTO `islem2` VALUES ('243', 'Lingual teknikle angle sınıf II anomalilerinin ortodontik ted.', '754.68');
INSERT INTO `islem2` VALUES ('244', 'Lingual teknikle angle sınıf III anomalilerinin ortodontik ted.', '891.89');
INSERT INTO `islem2` VALUES ('245', 'Açık kapanışlı ortodontik tedavi', '754.68');
INSERT INTO `islem2` VALUES ('246', 'Önleyici ortodontik tedavi  (tongue thrust) ', '205.82');
INSERT INTO `islem2` VALUES ('247', 'Kısa süreli ortodontik tedavi', '226.4');
INSERT INTO `islem2` VALUES ('248', 'Pekiştirme tedavisi ', '219.54');
INSERT INTO `islem2` VALUES ('249', 'Pekiştirme aygıtı (havley pi)', '178.38');
INSERT INTO `islem2` VALUES ('250', 'Sabit pekiştirme aygıtı(Lingual ratainer)', '205.82');
INSERT INTO `islem2` VALUES ('251', 'Dudak yastıkçığı (lip bunger)', '137.21');
INSERT INTO `islem2` VALUES ('252', 'Tek çeneyi ilgilendiren aparey yapımı (vida hariç)', '178.38');
INSERT INTO `islem2` VALUES ('253', 'Çift çeneyi ilgilendiren aparey yapımı (vida hariç)   (frankel aygıtları-aktivat', '356.76');
INSERT INTO `islem2` VALUES ('254', 'Vida uygulaması (tek vida)', '48.02');
INSERT INTO `islem2` VALUES ('255', 'Wilson arkı uygulaması', '308.73');
INSERT INTO `islem2` VALUES ('256', 'Jasper-Jumper- Herbest aygıtı', '411.64');
INSERT INTO `islem2` VALUES ('257', 'Kayıp apareyin yeniden yapımı (tek çene) ', '178.38');
INSERT INTO `islem2` VALUES ('258', 'Aparey Tamiri', '45.28');
INSERT INTO `islem2` VALUES ('259', 'Ağız dışı aparey tatbiki(headgear-chincap)', '164.66');
INSERT INTO `islem2` VALUES ('260', 'Reverse headgear ', '343.04');
INSERT INTO `islem2` VALUES ('261', 'Düz ark teli tatbiki (tek çene NİTİ telleri) ', '82.33');
INSERT INTO `islem2` VALUES ('262', 'Büküm içeren tel tatbiki (tek çene) ', '82.33');
INSERT INTO `islem2` VALUES ('263', 'Segmental ark veya tork arkı tatbiki', '82.33');
INSERT INTO `islem2` VALUES ('264', 'Bant tatbiki(tek diş ) ', '54.89');
INSERT INTO `islem2` VALUES ('265', 'Braket tatbiki(tek diş) ', '48.02');
INSERT INTO `islem2` VALUES ('266', 'Lingual braket tatbiki (tek diş)', '54.89');
INSERT INTO `islem2` VALUES ('267', 'Düşen bant ya da braket tatbiki(tek diş)', '48.02');
INSERT INTO `islem2` VALUES ('268', 'Bant veya braket çıkarılması(tek diş)', '13.72');
INSERT INTO `islem2` VALUES ('269', 'Lingual ataşman tatbiki ', '34.3');
INSERT INTO `islem2` VALUES ('270', 'Lingual ark ', '68.61');
INSERT INTO `islem2` VALUES ('271', 'Nance aparey', '137.21');
INSERT INTO `islem2` VALUES ('272', 'Hızlı maksiller genişletme apareyi ', '205.82');
INSERT INTO `islem2` VALUES ('273', 'Preoperatif dudak damak yarığı (ortodontik ted.)', '548.86');
INSERT INTO `islem2` VALUES ('274', 'Postoperatif dudak damak yarığı (ortodontik ted.)', '548.86');
INSERT INTO `islem2` VALUES ('275', 'TME splint yapımı ', '164.66');
INSERT INTO `islem2` VALUES ('276', 'Model set-up ', '157.8');
INSERT INTO `islem2` VALUES ('277', 'Positioner yapımı', '315.59');
INSERT INTO `islem2` VALUES ('278', 'Sefalometrik cerrahi planı', '38.42');
INSERT INTO `islem2` VALUES ('279', 'Ortodontik modellerin face-bow ile artikülatöre taşınması', '137.21');
INSERT INTO `islem2` VALUES ('280', 'Model cerrahisi ', '137.21');
INSERT INTO `islem2` VALUES ('281', 'Okluzal cerrahi splint ', '274.43');
INSERT INTO `islem2` VALUES ('282', 'Sandwiç splint', '548.86');
INSERT INTO `islem2` VALUES ('283', 'Ortodontik ameliyat arkı (tek çene) ', '274.43');
INSERT INTO `islem2` VALUES ('284', 'Alçı yüz maskı ', '343.04');
INSERT INTO `islem2` VALUES ('285', 'Sürme rehberliği', '356.76');

-- ----------------------------
-- Table structure for `personel`
-- ----------------------------
DROP TABLE IF EXISTS `personel`;
CREATE TABLE `personel` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `PADI` varchar(90) NOT NULL,
  `PSOYADI` varchar(120) NOT NULL,
  `EV_TELEFON` varchar(33) DEFAULT NULL,
  `CEP_TELEFON` varchar(33) NOT NULL,
  `ADRES` longtext NOT NULL,
  `TC` varchar(33) NOT NULL,
  `SOSYAL_GUVENLIK_NO` varchar(60) NOT NULL,
  `UNVAN` varchar(30) NOT NULL,
  `CINSIYET` varchar(15) DEFAULT NULL,
  `KULLANICI_ADI` varchar(20) NOT NULL,
  `SIFRE` varchar(8) NOT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personel
-- ----------------------------
INSERT INTO `personel` VALUES ('1', 'mustafa', 'özcan', '2122222222', '53888888888', 'mmmm', '232323232323', '2323232323', 'doktor', 'erkek', 'Doktor', '123456');
INSERT INTO `personel` VALUES ('2', 'selim', 'özgür', '1111111111', '5389999999', 'MMMM', '123456', '12345678', 'sekreter', 'kadın', 'Sekreter', '123456');

-- ----------------------------
-- Table structure for `randevu2`
-- ----------------------------
DROP TABLE IF EXISTS `randevu2`;
CREATE TABLE `randevu2` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `TC` varchar(11) NOT NULL,
  `ad` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `randevutarihi` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `randevusaati` varchar(30) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `doktorid` int(2) NOT NULL,
  `Sirano` int(3) NOT NULL,
  `hastakayit` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doktorid` (`doktorid`) USING BTREE,
  CONSTRAINT `randevu2_ibfk_1` FOREIGN KEY (`doktorid`) REFERENCES `doktor` (`DOKTOR_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of randevu2
-- ----------------------------
INSERT INTO `randevu2` VALUES ('3', '12345678910', 'selim', 'özgür', '29/12/2011', '08:30', '1', '1', '1');
INSERT INTO `randevu2` VALUES ('4', '11111111111', 'ahmet', 'dursun', '21/12/2011', '09:00', '1', '2', '1');
INSERT INTO `randevu2` VALUES ('5', '24354565756', 'mustafa', 'ozcan', '21/01/2012', '08:30', '1', '1', '0');
INSERT INTO `randevu2` VALUES ('6', '24325436', 'fdgfdh', 'fsdgdfhg', '21/12/2011', '14:30', '1', '12', '0');
INSERT INTO `randevu2` VALUES ('7', '32545', 'dffff', 'sasas', '21/12/2011', '12:30', '1', '9', '1');
INSERT INTO `randevu2` VALUES ('8', '123234325', 'muhanmet', 'sert', '24/12/2011', '08:30', '1', '1', '1');
INSERT INTO `randevu2` VALUES ('9', '334543', 'sefa', 'turp', '24/12/2011', '10:30', '1', '5', '1');
INSERT INTO `randevu2` VALUES ('10', '123456', 'asdf', 'asdf', '27/12/2011', '08:30', '1', '1', '1');

-- ----------------------------
-- Table structure for `recete`
-- ----------------------------
DROP TABLE IF EXISTS `recete`;
CREATE TABLE `recete` (
  `RECETE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `HASTA_ID` int(11) DEFAULT NULL,
  `TARIH` varchar(60) DEFAULT NULL,
  `KULLANIM_SEKLI` varchar(180) DEFAULT NULL,
  `RECETE_NO` int(11) DEFAULT NULL,
  `ILAC` varchar(150) DEFAULT NULL,
  `DOKTOR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RECETE_ID`),
  KEY `HASTA_ID` (`HASTA_ID`) USING BTREE,
  KEY `DOKTOR_ID` (`DOKTOR_ID`) USING BTREE,
  CONSTRAINT `recete_ibfk_1` FOREIGN KEY (`HASTA_ID`) REFERENCES `hasta_kayit` (`ID`),
  CONSTRAINT `recete_ibfk_2` FOREIGN KEY (`DOKTOR_ID`) REFERENCES `doktor` (`DOKTOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recete
-- ----------------------------

-- ----------------------------
-- Table structure for `tedavi`
-- ----------------------------
DROP TABLE IF EXISTS `tedavi`;
CREATE TABLE `tedavi` (
  `TEDAVI_ID` int(11) NOT NULL AUTO_INCREMENT,
  `HASTA_ID` int(11) DEFAULT NULL,
  `DOKTOR_ID` int(11) DEFAULT NULL,
  `DIS_NO` int(11) DEFAULT NULL,
  `ISLEM_ID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`TEDAVI_ID`),
  KEY `ISLEM_ID` (`ISLEM_ID`) USING BTREE,
  KEY `HASTA_ID` (`HASTA_ID`) USING BTREE,
  KEY `DOKTOR_ID` (`DOKTOR_ID`) USING BTREE,
  CONSTRAINT `tedavi_ibfk_1` FOREIGN KEY (`HASTA_ID`) REFERENCES `hasta_kayit` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `tedavi_ibfk_2` FOREIGN KEY (`ISLEM_ID`) REFERENCES `islem2` (`ISLEMID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `tedavi_ibfk_3` FOREIGN KEY (`DOKTOR_ID`) REFERENCES `doktor` (`DOKTOR_ID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tedavi
-- ----------------------------
INSERT INTO `tedavi` VALUES ('26', '1', '1', '2', '6');
INSERT INTO `tedavi` VALUES ('27', '1', '1', '2', '10');
INSERT INTO `tedavi` VALUES ('28', '2', '1', '6', '5');
INSERT INTO `tedavi` VALUES ('29', '1', '1', '3', '8');
INSERT INTO `tedavi` VALUES ('30', '1', '1', '3', '30');
INSERT INTO `tedavi` VALUES ('31', '1', '1', '17', '181');
INSERT INTO `tedavi` VALUES ('32', '2', '1', '17', '173');
INSERT INTO `tedavi` VALUES ('33', '1', '1', '4', '10');
INSERT INTO `tedavi` VALUES ('34', '1', '1', '9', '11');
INSERT INTO `tedavi` VALUES ('35', '1', '1', '19', '213');
INSERT INTO `tedavi` VALUES ('36', '2', '1', '3', '10');
INSERT INTO `tedavi` VALUES ('37', '2', '1', '24', '205');
INSERT INTO `tedavi` VALUES ('38', '5', '1', '1', '12');
INSERT INTO `tedavi` VALUES ('39', '5', '1', '18', '139');
INSERT INTO `tedavi` VALUES ('40', '5', '1', '6', '5');
INSERT INTO `tedavi` VALUES ('41', '5', '1', '29', '22');
INSERT INTO `tedavi` VALUES ('42', '4', '1', '0', '21');
INSERT INTO `tedavi` VALUES ('43', '5', '1', '27', '13');
INSERT INTO `tedavi` VALUES ('44', '4', '1', '27', '15');
INSERT INTO `tedavi` VALUES ('45', '5', '1', '17', '8');
INSERT INTO `tedavi` VALUES ('46', '1', '1', '6', '15');
INSERT INTO `tedavi` VALUES ('47', '5', '1', '9', '10');
INSERT INTO `tedavi` VALUES ('48', '5', '1', '25', '23');
INSERT INTO `tedavi` VALUES ('49', '5', '1', '7', '64');
INSERT INTO `tedavi` VALUES ('50', '6', '1', '3', '8');
INSERT INTO `tedavi` VALUES ('51', '6', '1', '24', '120');
INSERT INTO `tedavi` VALUES ('52', '6', '1', '12', '196');
INSERT INTO `tedavi` VALUES ('53', '1', '1', '10', '13');
INSERT INTO `tedavi` VALUES ('54', '1', '1', '0', '23');
