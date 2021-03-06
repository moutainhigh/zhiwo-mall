-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: zwoshop
-- ------------------------------------------------------
-- Server version	5.5.53

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ad_advertisment`
--

DROP TABLE IF EXISTS `ad_advertisment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_advertisment` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(45) DEFAULT NULL COMMENT '名称',
  `SORT` int(11) NOT NULL AUTO_INCREMENT,
  `AD_POSTION_ID` varchar(32) DEFAULT NULL COMMENT '广告位置ID',
  `DESCRIPTION` varchar(45) DEFAULT NULL,
  `START_TIME` timestamp NULL DEFAULT NULL COMMENT '广告开始时间',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `ICON` varchar(120) DEFAULT NULL COMMENT '上传广告图片',
  `URL` varchar(120) DEFAULT NULL COMMENT '图片网址',
  `DISABLED` int(11) DEFAULT NULL COMMENT '是否禁用，0表示可用，1表示禁用',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='具体广告，必须先定义一个广告位置，然后再使用广告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_advertisment`
--

LOCK TABLES `ad_advertisment` WRITE;
/*!40000 ALTER TABLE `ad_advertisment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad_advertisment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_assets`
--

DROP TABLE IF EXISTS `ad_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_assets` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(45) DEFAULT NULL COMMENT '名称',
  `SORT` int(11) NOT NULL AUTO_INCREMENT,
  `PATH` varchar(1200) DEFAULT NULL COMMENT '路径',
  `URL` varchar(1200) DEFAULT NULL COMMENT '地址',
  `ADVERTISEMENT_ID` varchar(32) DEFAULT NULL COMMENT '广告的外键ID，它没有关联到广告，而是一个类似于傀儡，这样做的好处是。',
  `REAL_ADVERTISEMENT_ID` varchar(32) DEFAULT NULL COMMENT '真实的外键',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`),
  KEY `FK_AD_ASSETS_ADVERTISEMENT_idx` (`REAL_ADVERTISEMENT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告附件,上传附件的时候，先插入ADVERTISEMENT_ID';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_assets`
--

LOCK TABLES `ad_assets` WRITE;
/*!40000 ALTER TABLE `ad_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_postion`
--

DROP TABLE IF EXISTS `ad_postion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_postion` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(45) DEFAULT NULL COMMENT '名称',
  `SORT` int(11) NOT NULL AUTO_INCREMENT,
  `PR_CATEGORY_ID` varchar(32) DEFAULT NULL COMMENT '商品种类ID',
  `DESCRIPTION` varchar(45) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL COMMENT '广告类型先分两种，一种是头部轮播图，值为0，一种是插入滚动图，值为1，每个种类头部轮播图只有一个，但是滚动图有多个',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告位置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_postion`
--

LOCK TABLES `ad_postion` WRITE;
/*!40000 ALTER TABLE `ad_postion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad_postion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_assets`
--

DROP TABLE IF EXISTS `cms_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_assets` (
  `ID` varchar(32) NOT NULL COMMENT 'id标志符',
  `EN_NAME` varchar(120) DEFAULT NULL COMMENT '英文名称',
  `NAME` varchar(120) DEFAULT NULL COMMENT '名称',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `IS_DISABLE` tinyint(1) DEFAULT '1' COMMENT '是否可用',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `PATH` varchar(1200) DEFAULT NULL COMMENT '路径',
  `ICON` varchar(120) DEFAULT NULL COMMENT '图标',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  `KEYWORDS` varchar(120) DEFAULT NULL COMMENT '关键字',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `THUMBNAIL` varchar(1200) DEFAULT NULL COMMENT '缩略图',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `URL` varchar(1200) DEFAULT NULL COMMENT '地址',
  `IP` varchar(32) DEFAULT NULL COMMENT 'IP',
  PRIMARY KEY (`ID`),
  KEY `SORT_INDEX` (`SORT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_assets`
--

LOCK TABLES `cms_assets` WRITE;
/*!40000 ALTER TABLE `cms_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_channel`
--

DROP TABLE IF EXISTS `cms_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_channel` (
  `ID` varchar(32) NOT NULL COMMENT 'id标志符',
  `EN_NAME` varchar(120) DEFAULT NULL COMMENT '英文名称',
  `NAME` varchar(120) DEFAULT NULL COMMENT '名称',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `IS_TOOIC` tinyint(1) DEFAULT NULL COMMENT '是否为专题',
  `IS_DISABLE` tinyint(1) DEFAULT '1' COMMENT '是否可用，0表示可用，1表示禁用',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `PATH` varchar(120) DEFAULT NULL COMMENT '路径',
  `ICON` varchar(120) DEFAULT NULL COMMENT '图标',
  `PARENT_ID` varchar(32) DEFAULT NULL COMMENT '父类ID',
  `PARENTIDS` varchar(320) DEFAULT NULL COMMENT '父类IDS',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  `KEYWORDS` varchar(120) DEFAULT NULL COMMENT '关键字',
  `DESCRIPTION` varchar(120) DEFAULT NULL COMMENT '描述',
  `THUMBNAIL` varchar(120) DEFAULT NULL COMMENT '缩略图',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `CHANNEL_TEMPLATE` varchar(1200) DEFAULT NULL COMMENT '频道模板路径',
  `MCHANNEL_TEMPLATE` varchar(1200) DEFAULT NULL COMMENT '移动频道模板路径',
  `JSP_TEMPLATE` varchar(1200) DEFAULT NULL COMMENT 'JSP模板路径',
  `MOBILE_JSP_TEMPLATE` varchar(1200) DEFAULT NULL COMMENT '手机端JSP模板',
  `FREEMARKER_TEMPLATE` varchar(1200) DEFAULT NULL COMMENT 'FREEMARKER静态模板',
  `MOBILE_FREEMARKER_TEMPLATE` varchar(1200) DEFAULT NULL COMMENT '手机端FREEMARKER静态模板',
  `DOC_JSP_TEMPLATE` varchar(1200) DEFAULT NULL COMMENT '文档JSP模板路径',
  `DOC_MOBILE__JSP_TEMPLATE` varchar(1200) DEFAULT NULL COMMENT '文档手机端JSP模板路基',
  `DOC_FREEMARKER_TEMPLATE` varchar(1200) DEFAULT NULL COMMENT '文档FREEMARKER静态模板',
  `DOC_MOBILE_FREEMARKER_TEMPLATE` varchar(120) DEFAULT NULL COMMENT '文档手机端FREEMARKER静态模板',
  PRIMARY KEY (`ID`),
  KEY `SORT_INDEX` (`SORT`),
  KEY `FK_CHANNEL_CHANNEL_idx` (`PARENT_ID`),
  CONSTRAINT `FK_CHANNEL_CHANNEL` FOREIGN KEY (`PARENT_ID`) REFERENCES `cms_channel` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_channel`
--

LOCK TABLES `cms_channel` WRITE;
/*!40000 ALTER TABLE `cms_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_comment`
--

DROP TABLE IF EXISTS `cms_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_comment` (
  `ID` varchar(32) NOT NULL COMMENT 'id标志符',
  `MEMBER_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `IS_DISABLE` tinyint(1) DEFAULT '1' COMMENT '是否可用，0为可用，1表示不可用',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `PATH` varchar(1200) DEFAULT NULL COMMENT '路径',
  `MOBILE_FREEMARKER_TEMPLATE` varchar(1200) DEFAULT NULL COMMENT '手机端FREEMARKER静态模板',
  `ICON` varchar(120) DEFAULT NULL COMMENT '图标',
  `PARENT_ID` varchar(32) DEFAULT NULL COMMENT '父类ID',
  `PARENTIDS` varchar(3200) DEFAULT NULL COMMENT '父类IDS',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `CMS_DOCUMENT_ID` varchar(32) DEFAULT NULL,
  `CONTENT` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SORT_INDEX` (`SORT`),
  KEY `FK_COMMENT_DOCUMENT_idx` (`CMS_DOCUMENT_ID`),
  KEY `FK_COMMENT_COMMENT_idx` (`PARENT_ID`),
  CONSTRAINT `FK_COMMENT_COMMENT` FOREIGN KEY (`PARENT_ID`) REFERENCES `cms_comment` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_COMMENT_DOCUMENT` FOREIGN KEY (`CMS_DOCUMENT_ID`) REFERENCES `cms_document` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_comment`
--

LOCK TABLES `cms_comment` WRITE;
/*!40000 ALTER TABLE `cms_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_document`
--

DROP TABLE IF EXISTS `cms_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_document` (
  `ID` varchar(32) NOT NULL COMMENT 'id标志符',
  `NAME` varchar(120) DEFAULT NULL COMMENT '名称',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '用户ID，不做外键关联',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `IS_TOOIC` tinyint(1) DEFAULT NULL COMMENT '是否为专题',
  `IS_DISABLE` tinyint(1) DEFAULT '1' COMMENT '是否可用',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `PATH` varchar(1200) DEFAULT NULL COMMENT '路径',
  `ICON` varchar(120) DEFAULT NULL COMMENT '图标',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  `KEYWORDS` varchar(120) DEFAULT NULL COMMENT '关键字',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `THUMBNAIL` varchar(1200) DEFAULT NULL COMMENT '缩略图',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `CHANNEL_TEMPLATE` varchar(1200) DEFAULT NULL COMMENT '频道模板路径',
  `MCHANNEL_TEMPLATE` varchar(1200) DEFAULT NULL COMMENT '移动频道模板路径',
  `TITLE_EN` varchar(120) DEFAULT NULL COMMENT '英文标题',
  `TITLE` varchar(120) DEFAULT NULL COMMENT '标题',
  `SUB_TITLE_EN` varchar(120) DEFAULT NULL COMMENT '英文副标题',
  `SUB_TITLE` varchar(120) DEFAULT NULL COMMENT '副标题',
  `CONTENT` text COMMENT '内容',
  `TO_INDEX` tinyint(1) DEFAULT '0' COMMENT '是否推荐到首页',
  `TO_CHANNEL_INDEX` tinyint(1) DEFAULT '0' COMMENT '是否推荐到频道首页',
  `CMS_CHANNEL_ID` varchar(45) DEFAULT NULL,
  `AUTHOR` varchar(45) DEFAULT NULL COMMENT '作者',
  PRIMARY KEY (`ID`),
  KEY `SORT_INDEX` (`SORT`),
  KEY `FK_DOCUMENT_CHANNEL_idx` (`CMS_CHANNEL_ID`),
  CONSTRAINT `FK_DOCUMENT_CHANNEL` FOREIGN KEY (`CMS_CHANNEL_ID`) REFERENCES `cms_channel` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_document`
--

LOCK TABLES `cms_document` WRITE;
/*!40000 ALTER TABLE `cms_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_purcse`
--

DROP TABLE IF EXISTS `group_purcse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_purcse` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL COMMENT '名称即为商品名称',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `MEMEBER_ID` varchar(120) DEFAULT NULL COMMENT '会员ID',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `PRODUCT_ID` varchar(120) DEFAULT NULL,
  `NUMBER_COUNT` int(11) DEFAULT '2' COMMENT '默认开团人数',
  `EXPIRED_TIME` datetime DEFAULT NULL COMMENT '过期时间',
  `MEMBER_NAME` varchar(45) DEFAULT NULL COMMENT '会员名称',
  `MEMBER_ICON` varchar(250) DEFAULT NULL,
  `MEMBER_OPEN_ID` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`),
  KEY `FK_GROUP_PURCSE_MEMBER_idx` (`MEMEBER_ID`),
  KEY `FK_GROUP_PURCSE_PRODUCT_idx` (`PRODUCT_ID`),
  CONSTRAINT `FK_GROUP_PURCSE_MEMBER` FOREIGN KEY (`MEMEBER_ID`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_GROUP_PURCSE_PRODUCT` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `pr_product` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='开团表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_purcse`
--

LOCK TABLES `group_purcse` WRITE;
/*!40000 ALTER TABLE `group_purcse` DISABLE KEYS */;
INSERT INTO `group_purcse` VALUES ('027355643cba4095a4da68ea906a42fa',NULL,'2017-09-20 00:54:41','2017-09-22 11:32:26',0,NULL,'150270323164192',42,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-22 08:54:40','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('09b40275f72f410c9397b86c13fad8db',NULL,'2017-09-19 13:37:34','2017-09-22 11:32:26',0,NULL,'150270323164192',12,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 21:37:34','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('1127d1d788474d14b9cc7ecb89106430',NULL,'2017-09-19 14:04:12','2017-09-22 11:32:26',0,NULL,'150270323164192',20,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 22:04:12','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('1dfac4c45bb3432e9bb2242c54842f86',NULL,'2017-09-19 14:38:03','2017-09-22 11:32:26',0,NULL,'150270323164192',27,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 22:38:03','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('21bd2cf905534e8480aba784a64edb4c',NULL,'2017-09-19 14:21:36','2017-09-22 11:32:26',0,NULL,'150270323164192',25,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 22:21:36','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('244faf7cf5324a908ce69ee2cf4134f0',NULL,'2017-09-19 10:44:40','2017-09-22 11:32:26',0,NULL,'150270323164192',7,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 18:44:40','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('307db68f3d1b4e44a817d633f9fdde26',NULL,'2017-09-19 13:13:00','2017-09-22 11:32:26',0,NULL,'150270323164192',11,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 21:13:00','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('398ebb303341435f8b7b0eef2fe99b1d',NULL,'2017-09-19 15:13:48','2017-09-22 11:32:26',0,NULL,'150270323164192',35,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 23:13:48','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('39d3b219486741259bf6b6b690577d4d',NULL,'2017-09-19 14:14:37','2017-09-22 11:32:26',0,NULL,'150270323164192',23,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 22:14:36','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('432c4a845f504720bbeff3e2ef5c8941',NULL,'2017-09-19 23:56:54','2017-09-22 11:32:26',0,NULL,'150270323164192',38,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-22 07:56:54','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('4783d7b8fc6744d1b3a8265168386e51',NULL,'2017-09-19 15:16:10','2017-09-22 11:32:26',0,NULL,'150270323164192',36,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 23:16:10','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('47920b8823cc42079cca72fa4246457d',NULL,'2017-09-20 00:53:15','2017-09-22 11:32:26',0,NULL,'150270323164192',41,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-22 08:53:15','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('4cefa711d67f4a418e0831c5e79825e8',NULL,'2017-09-19 23:59:01','2017-09-22 11:32:26',0,NULL,'150270323164192',40,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-22 07:59:01','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('57e7b4f45dff40a08c457e004bc32636',NULL,'2017-09-19 14:08:22','2017-09-22 11:32:26',0,NULL,'150270323164192',21,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 22:08:22','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('58e94222c5a64863891c6e3930dcde23',NULL,'2017-09-19 14:09:38','2017-09-22 11:32:26',0,NULL,'150270323164192',22,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 22:09:38','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('5a9f7c8a79a3467faf58406046dc102d',NULL,'2017-09-19 13:44:01','2017-09-22 11:32:26',0,NULL,'150270323164192',14,'99fda1d4bd0f4b7ebc596cc393688590',2,'2017-09-21 21:44:01','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('5f8816df0e724bd0841373d7b98d01c3',NULL,'2017-09-19 15:03:45','2017-09-22 11:32:26',0,NULL,'150270323164192',32,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 23:03:45','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('6990f9bdbc164e03879e62094ae803b2',NULL,'2017-09-16 12:02:51','2017-09-22 11:32:26',0,NULL,'150270323164192',2,'99fda1d4bd0f4b7ebc596cc393688590',2,'2017-09-18 20:02:20',NULL,'http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('763c55cbe93647ef9570d3099a18fffd',NULL,'2017-09-19 10:32:35','2017-09-22 11:32:26',0,NULL,'150270323164192',6,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 18:32:35','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('7d09d1e864d5458bb3b330976731649f',NULL,'2017-09-19 13:44:25','2017-09-22 11:32:26',0,NULL,'150270323164192',15,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 21:44:25','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('838c793e972e47ba936a7eb4a9af9874',NULL,'2017-09-19 14:03:00','2017-09-22 11:32:26',0,NULL,'150270323164192',19,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 22:03:00','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('84fe8b5d81be489fb4eb70f7ce2eb9dd',NULL,'2017-09-19 13:55:10','2017-09-22 11:32:26',0,NULL,'150270323164192',17,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 21:55:10','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('8743a8e573d046b49ea49377d3bfb178',NULL,'2017-09-19 14:32:50','2017-09-22 11:32:26',0,NULL,'150270323164192',26,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 22:32:50','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('888f24aa5cbb41c696226fabfae616ce',NULL,'2017-09-19 15:10:26','2017-09-22 11:32:26',0,NULL,'150270323164192',33,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 23:10:26','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('908d8dd9211d421c89b531cd73657bd8',NULL,'2017-09-19 13:41:52','2017-09-22 11:32:26',0,NULL,'150270323164192',13,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 21:41:52','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('91d14582a0e440358c3c6fb2c96dd25b',NULL,'2017-09-19 14:39:25','2017-09-22 11:32:26',0,NULL,'150270323164192',28,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 22:39:25','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('9a61ba0103ba4405b7dd844576d41f68',NULL,'2017-09-21 04:31:44','2017-09-22 11:32:26',0,NULL,'150270323164192',43,'99fda1d4bd0f4b7ebc596cc393688590',2,'2017-09-23 12:31:44','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('a1efdd5c7a4446cc997f1c6651fc0ee8',NULL,'2017-09-19 23:55:29','2017-09-22 11:32:26',0,NULL,'150270323164192',37,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-22 07:55:29','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('a4cc58a06fa949da9de560a63b9af343',NULL,'2017-09-19 12:59:41','2017-09-22 11:32:26',0,NULL,'150270323164192',10,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 20:59:41','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('a5e637877faf4b28b717c975a22a6d9b',NULL,'2017-09-19 13:57:10','2017-09-22 11:32:26',0,NULL,'150270323164192',18,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 21:57:10','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('b0afd04e4b544d7ca63f0dacacc6950a',NULL,'2017-09-19 12:44:12','2017-09-22 11:32:26',0,NULL,'150270323164192',9,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 20:44:12','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('b50455c63e684044917bbe570f69090b',NULL,'2017-09-19 14:40:16','2017-09-22 11:32:26',0,NULL,'150270323164192',29,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 22:40:16','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('c0d982d2ac96465c871db59c587a4944',NULL,'2017-09-16 23:59:22','2017-09-22 11:32:26',0,NULL,'150270323164192',4,'99fda1d4bd0f4b7ebc596cc393688590',2,'2017-09-19 07:59:21','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('c255c24644244f0c84b20a600a9af5a7',NULL,'2017-09-19 11:11:53','2017-09-22 11:32:26',0,NULL,'150270323164192',8,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 19:11:53','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('c5460125bd7b47b6a20e66fd25d64bfe',NULL,'2017-09-19 15:13:07','2017-09-22 11:32:26',0,NULL,'150270323164192',34,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 23:13:07','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('d558dd7b78a441c0a15f1c3b8cfeb9bf',NULL,'2017-09-19 14:59:23','2017-09-22 11:32:26',0,NULL,'150270323164192',31,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 22:59:23','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('e0708d0367574c4dad488cece59b9ada',NULL,'2017-09-19 14:16:20','2017-09-22 11:32:26',0,NULL,'150270323164192',24,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 22:16:20','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('eae68891e67441a683d2f40821a02bac',NULL,'2017-09-19 14:42:21','2017-09-22 11:32:26',0,NULL,'150270323164192',30,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 22:42:21','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('efabb1d19e3344c5a3b6d5332e62b358',NULL,'2017-09-19 23:58:01','2017-09-22 11:32:26',0,NULL,'150270323164192',39,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-22 07:58:01','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('f064199ac5524c02aa51d0f4bd0ff105',NULL,'2017-09-19 13:54:48','2017-09-22 11:32:26',0,NULL,'150270323164192',16,'c6dd09184e7d4f8ab7b9d96edbaf3595',2,'2017-09-21 21:54:48','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('f069239bef864bf0bd32acc8b106ccb2',NULL,'2017-09-17 00:32:04','2017-09-22 11:32:26',0,NULL,'150270323164192',5,'99fda1d4bd0f4b7ebc596cc393688590',2,'2017-09-19 08:32:04','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('f2fefe6bf9e84e60a3c679e06f1eeb4c',NULL,'2017-09-16 12:05:41','2017-09-22 11:32:26',0,NULL,'150270323164192',3,'99fda1d4bd0f4b7ebc596cc393688590',2,'2017-09-18 20:05:41',NULL,'http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL),('fa2f7a33443a4383950e3ad1b6a0a5bf',NULL,'2017-09-16 11:45:41','2017-09-22 11:32:26',0,NULL,'150270323164192',1,'99fda1d4bd0f4b7ebc596cc393688590',2,NULL,NULL,'http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL);
/*!40000 ALTER TABLE `group_purcse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_purcse_member`
--

DROP TABLE IF EXISTS `group_purcse_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_purcse_member` (
  `ID` varchar(32) NOT NULL,
  `GROUP_PURCSE_ID` varchar(32) DEFAULT NULL COMMENT '团ID',
  `MEMBER_ID` varchar(32) DEFAULT NULL COMMENT '会员ID',
  `MEMBER_NAME` varchar(45) DEFAULT NULL COMMENT '会员名称',
  `MEMBER_ICON` varchar(500) DEFAULT NULL,
  `MEMBER_OPEN_ID` varchar(120) DEFAULT NULL,
  `PRODUCT_ID` varchar(32) DEFAULT NULL COMMENT '商品ID',
  PRIMARY KEY (`ID`),
  KEY `FK_GROUP_PURCSE_idx` (`GROUP_PURCSE_ID`),
  KEY `FK_MEMBER_idx` (`MEMBER_ID`),
  KEY `FK_GROUP_PURCSE_PRODUCT_idx` (`PRODUCT_ID`),
  CONSTRAINT `FK_GROUP_PURCSE` FOREIGN KEY (`GROUP_PURCSE_ID`) REFERENCES `group_purcse` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_GROUP_PURCSE_MEMBER_PRODUCT` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `pr_product` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MEMBER` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团——会员中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_purcse_member`
--

LOCK TABLES `group_purcse_member` WRITE;
/*!40000 ALTER TABLE `group_purcse_member` DISABLE KEYS */;
INSERT INTO `group_purcse_member` VALUES ('00ed27a5a04f47f7a8c52ee6f780b519','eae68891e67441a683d2f40821a02bac','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('1830520bac194e6c9f01731cd8334004','21bd2cf905534e8480aba784a64edb4c','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('1d78dbd2c02d4fc082fd9baf8bfb5cea','a1efdd5c7a4446cc997f1c6651fc0ee8','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('200253cf14f847d8baddafb2f3b838fd','432c4a845f504720bbeff3e2ef5c8941','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('202dd66877d54419ac65760aa388a833','b50455c63e684044917bbe570f69090b','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('26126b317b8046f88d71774b325c5099','307db68f3d1b4e44a817d633f9fdde26','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('270ac1a8e96949e3b95404d9d76e2630','84fe8b5d81be489fb4eb70f7ce2eb9dd','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('29e98bc5bebe417cac70da1f3c577c96','4cefa711d67f4a418e0831c5e79825e8','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('34d523e7799c4162b5c363f5e38ae0f8','1127d1d788474d14b9cc7ecb89106430','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('34f35427998f45dc894e15560248d1d4','58e94222c5a64863891c6e3930dcde23','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('3fc84889562a49ada0d6ea775133c94d','09b40275f72f410c9397b86c13fad8db','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('4408f0b0ec00474a8765c4f6cb2317f8','1dfac4c45bb3432e9bb2242c54842f86','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('46168a1002734ba4852547a554e7ff4b','7d09d1e864d5458bb3b330976731649f','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('461fcba4a79f45cd90e4ba9cbdc1c17d','57e7b4f45dff40a08c457e004bc32636','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('463c0ca3cf194dcda43bc7d72dfc18fc','8743a8e573d046b49ea49377d3bfb178','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('4d61c6d5239f429daad958ff9eb41cb4','39d3b219486741259bf6b6b690577d4d','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('4dade893be504041b1636d137abdaf84','f069239bef864bf0bd32acc8b106ccb2','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('5223fdcb8bfc46749c494060f18970bc','91d14582a0e440358c3c6fb2c96dd25b','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('54cd18e0ef604a7b9df71c198606b5fb','244faf7cf5324a908ce69ee2cf4134f0','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('573f3b30e3334520a61a9799eb7a0c73','9a61ba0103ba4405b7dd844576d41f68','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('5d1db26165674b9ba45c8025ddb114a4','b0afd04e4b544d7ca63f0dacacc6950a','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('6490518b15464f09bf9f2abd9dc7cc7c','398ebb303341435f8b7b0eef2fe99b1d','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('6494bc7ba4c042e7a9e71cc6739178bd','e0708d0367574c4dad488cece59b9ada','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('6bdf3cbe0ea6479d9cf8b864472a8db2','763c55cbe93647ef9570d3099a18fffd','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('723679721e57464eaf6723d7bfbe27a4','a4cc58a06fa949da9de560a63b9af343','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('7a71213f7bd8402d91cb88b09d42c29c','5f8816df0e724bd0841373d7b98d01c3','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('8514d38f2ba94731a814a39116bf417e','d558dd7b78a441c0a15f1c3b8cfeb9bf','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('8bcfc650a57247e09bffb2b3f60b4d86','4783d7b8fc6744d1b3a8265168386e51','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('8ec82e9eb4b64c749759bade9c38f031','838c793e972e47ba936a7eb4a9af9874','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('9c9966b917d44104bbf838202d8b2cb2','5a9f7c8a79a3467faf58406046dc102d','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('af349bed4fd74869b319ec88323c582e','888f24aa5cbb41c696226fabfae616ce','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('af5dc89e3b6649a3aafbd604bcf5bcdc','6990f9bdbc164e03879e62094ae803b2','150270323164192',NULL,'http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('b7f1b26a4f8d476eb2aec8d73d34420b','c0d982d2ac96465c871db59c587a4944','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('b80e1afbb7654317bf320ecdeeece509','a5e637877faf4b28b717c975a22a6d9b','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('baa2a08c222e4e25ba683d7e52c757c7','47920b8823cc42079cca72fa4246457d','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('c9ede25891334d3490e2872eccacadb7','908d8dd9211d421c89b531cd73657bd8','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('ca270f2122564be784b1a3b82e26af11','efabb1d19e3344c5a3b6d5332e62b358','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('cb09a76a2f7c48dabba3ed22aed447d1','c255c24644244f0c84b20a600a9af5a7','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('cf4dfa3bead14f04a1af807ef12cc299','f064199ac5524c02aa51d0f4bd0ff105','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('e72da899a7b84234b886958be7bd8fb3','f2fefe6bf9e84e60a3c679e06f1eeb4c','150270323164192',NULL,'http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('ebc3a117ff174863931ea86ae0559d91','c5460125bd7b47b6a20e66fd25d64bfe','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590'),('f29817a06a71403db81bb601feff0813','027355643cba4095a4da68ea906a42fa','150270323164192','huangjixin','http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0',NULL,'99fda1d4bd0f4b7ebc596cc393688590');
/*!40000 ALTER TABLE `group_purcse_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guess_category`
--

DROP TABLE IF EXISTS `guess_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guess_category` (
  `ID` varchar(32) NOT NULL,
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `START_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间，用于查询绑定',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间，用于查询绑定',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `IS_DEFAULT` tinyint(1) DEFAULT '0' COMMENT '是否为默认，0：非，1：是',
  `EN_NAME` varchar(120) DEFAULT NULL COMMENT '英文名称',
  `NAME` varchar(120) DEFAULT NULL COMMENT '种类名称',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `PARENT_ID` varchar(120) DEFAULT NULL COMMENT '父类ID',
  `PARENTIDS` varchar(3200) DEFAULT NULL COMMENT '父类IDS',
  `ICON` varchar(1200) DEFAULT NULL COMMENT '图标',
  `KEYWORDS` varchar(120) DEFAULT NULL COMMENT '关键字',
  `THUMBNAIL` varchar(1200) DEFAULT NULL COMMENT '缩略图',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  `USER_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SORT_INDEX` (`SORT`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='会员竞猜分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guess_category`
--

LOCK TABLES `guess_category` WRITE;
/*!40000 ALTER TABLE `guess_category` DISABLE KEYS */;
INSERT INTO `guess_category` VALUES ('150410531466397',NULL,NULL,NULL,'2017-08-30 15:03:57','2017-08-30 15:03:57',0,NULL,NULL,1,0,NULL,'足球','',NULL,NULL,'',NULL,NULL,'football',NULL),('150410543768324',NULL,NULL,NULL,'2017-08-30 15:04:27','2017-08-30 15:04:27',0,NULL,NULL,2,0,NULL,'篮球','篮球竞猜',NULL,NULL,'',NULL,NULL,'basketball',NULL),('150410546750186',NULL,NULL,NULL,'2017-08-30 15:05:27','2017-08-30 15:05:27',0,NULL,NULL,3,0,NULL,'趣味','趣味竞猜',NULL,NULL,'',NULL,NULL,'fun',NULL),('150410552794635',NULL,NULL,NULL,'2017-08-30 15:07:07','2017-08-30 15:07:07',0,NULL,NULL,4,0,NULL,'财经','',NULL,NULL,'',NULL,NULL,'finance',NULL),('150410562713693',NULL,NULL,NULL,'2017-08-30 15:07:39','2017-08-30 15:07:39',0,NULL,NULL,5,0,NULL,'娱乐','娱乐',NULL,NULL,'',NULL,NULL,'entertainment',NULL),('150410565940326',NULL,NULL,NULL,'2017-08-30 15:07:54','2017-08-30 15:07:54',0,NULL,NULL,6,0,NULL,'其它','其它',NULL,NULL,'',NULL,NULL,'other',NULL);
/*!40000 ALTER TABLE `guess_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guess_question`
--

DROP TABLE IF EXISTS `guess_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guess_question` (
  `ID` varchar(32) NOT NULL,
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `START_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间，用于查询绑定',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间，用于查询绑定',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `IS_DEFAULT` tinyint(1) DEFAULT '0' COMMENT '是否为默认，0：非，1：是',
  `EN_NAME` varchar(120) DEFAULT NULL COMMENT '英文名称',
  `NAME` varchar(120) DEFAULT NULL COMMENT '名称',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `ICON` varchar(1200) DEFAULT NULL COMMENT '图标',
  `KEYWORDS` varchar(120) DEFAULT NULL COMMENT '关键字',
  `THUMBNAIL` varchar(1200) DEFAULT NULL COMMENT '缩略图',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  `USER_ID` varchar(32) DEFAULT NULL,
  `GUESS_CATEGORY_ID` varchar(32) DEFAULT NULL,
  `GUESS_ANSWER_ID` varchar(32) DEFAULT NULL COMMENT '问题答案ID引用',
  `QUESTION_END_TIME` timestamp NULL DEFAULT NULL COMMENT '竞猜活动截止时间',
  PRIMARY KEY (`ID`),
  KEY `FK_GQUESTION_GCATEGORY_idx` (`GUESS_CATEGORY_ID`),
  KEY `SORTINDEX` (`SORT`),
  KEY `ANSWER_IDINDEX` (`GUESS_ANSWER_ID`),
  CONSTRAINT `FK_GQUESTION_GCATEGORY` FOREIGN KEY (`GUESS_CATEGORY_ID`) REFERENCES `guess_category` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='会员竞猜问题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guess_question`
--

LOCK TABLES `guess_question` WRITE;
/*!40000 ALTER TABLE `guess_question` DISABLE KEYS */;
INSERT INTO `guess_question` VALUES ('0fb1290936ff4d089a142c289a779c66',NULL,NULL,NULL,'2017-09-07 12:07:14','2017-09-09 11:59:33',0,NULL,NULL,28,0,NULL,'中超第24轮，上海上港（主队） VS 天津泰达（客队）','25','',NULL,NULL,'',NULL,NULL,NULL,'2017-09-07 11:35:00'),('a19e3833319b421780680dd0382ca726',NULL,NULL,NULL,'2017-09-07 11:24:30','2017-09-09 11:46:49',0,NULL,NULL,27,0,NULL,'中超第24轮，广州恒大（主队） VS 长春亚泰（客队）','','',NULL,NULL,'',NULL,NULL,NULL,'2017-09-29 11:35:00');
/*!40000 ALTER TABLE `guess_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guess_question_answer`
--

DROP TABLE IF EXISTS `guess_question_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guess_question_answer` (
  `ID` varchar(32) NOT NULL,
  `question_id` varchar(32) DEFAULT NULL,
  `question_options_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_guess_question_answer_guess_question_idx` (`question_id`),
  KEY `FK_guess_question_answer_question_options_idx` (`question_options_id`),
  CONSTRAINT `FK_guess_question_answer_guess_question` FOREIGN KEY (`question_id`) REFERENCES `guess_question` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_guess_question_answer_question_options` FOREIGN KEY (`question_options_id`) REFERENCES `guess_question_options` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞猜问题答案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guess_question_answer`
--

LOCK TABLES `guess_question_answer` WRITE;
/*!40000 ALTER TABLE `guess_question_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `guess_question_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guess_question_memanswer`
--

DROP TABLE IF EXISTS `guess_question_memanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guess_question_memanswer` (
  `ID` varchar(32) NOT NULL,
  `MEMBER_ID` varchar(32) DEFAULT NULL,
  `question_id` varchar(32) DEFAULT NULL,
  `question_options_id` varchar(32) DEFAULT NULL,
  `payed` int(11) DEFAULT NULL COMMENT '是否已经支付，默认为0为未结算，为1则已经结算。',
  `bet_num` int(11) DEFAULT NULL COMMENT '竞猜的智惠豆数量',
  PRIMARY KEY (`ID`),
  KEY `FK_GUESS_QUESTION_MEMANSWER_MEMBER_idx` (`MEMBER_ID`),
  KEY `FK_GUESS_QUESTION_MEMANSWER_QUESTION_idx` (`question_id`),
  KEY `FK_GUESS_QUESTION_MEMANSWER_OPTIONS_idx` (`question_options_id`),
  CONSTRAINT `FK_GUESS_QUESTION_MEMANSWER_MEMBER` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_GUESS_QUESTION_MEMANSWER_OPTIONS` FOREIGN KEY (`question_options_id`) REFERENCES `guess_question_options` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_GUESS_QUESTION_MEMANSWER_QUESTION` FOREIGN KEY (`question_id`) REFERENCES `guess_question` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员竞猜的答案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guess_question_memanswer`
--

LOCK TABLES `guess_question_memanswer` WRITE;
/*!40000 ALTER TABLE `guess_question_memanswer` DISABLE KEYS */;
INSERT INTO `guess_question_memanswer` VALUES ('397d103eece349149a3abf3a0d71b5c9','150270323164192','a19e3833319b421780680dd0382ca726','150478575145255',0,100),('3abf1a02a98d4c7c9e8faf007a996a35','150270323164192','a19e3833319b421780680dd0382ca726','150478575145255',0,100),('414817263e1c48b0a4e411b2ea06a395','150270323164192','a19e3833319b421780680dd0382ca726','150478576868480',0,100),('44132cb44d214867acf4f17514d16577','150270323164192','a19e3833319b421780680dd0382ca726','150478575145255',0,1000),('49e9110efb63467e9867518b6e3e2a04','150270323164192','a19e3833319b421780680dd0382ca726','150478579205995',0,917),('4c442d42ed444ca0aa87f0c453265a7f','150270323164192','a19e3833319b421780680dd0382ca726','150478576868480',0,100),('55306a64be484d96b6457397fc3a99ed','150270323164192','a19e3833319b421780680dd0382ca726','150478579205995',0,5000),('69fcdb9241a14c669c44c1490263712a','150270323164192','a19e3833319b421780680dd0382ca726','150478575145255',0,100),('6cd8d33b32e0473891d7b74765a2c062','150270323164192','a19e3833319b421780680dd0382ca726','150478575145255',0,100),('9fa22bf2622344fb8e6d7173f04f710b','150270323164192','a19e3833319b421780680dd0382ca726','150478579205995',0,500),('a8ee85b9cd334daca5b2ea23ea9d14b7','150270323164192','a19e3833319b421780680dd0382ca726','150478575145255',0,100),('b335a8689d5a46328fbd33b495368164','150270323164192','a19e3833319b421780680dd0382ca726','150478579205995',0,500),('b9618bece5c446d2aad94c0e7290d7aa','150270323164192','a19e3833319b421780680dd0382ca726','150478575145255',0,50000),('c1e8ee0327984803a9c2d2c90cec33eb','150270323164192','a19e3833319b421780680dd0382ca726','150478579205995',0,100),('cbc6f49a18874d168541910c6f2712c3','150270323164192','a19e3833319b421780680dd0382ca726','150478576868480',0,100),('e15d2fa9c59e4cc48d726250b3335440','150270323164192','a19e3833319b421780680dd0382ca726','150478576868480',0,500),('f4c7b5d6d5be4d878d145a150482efb4','150270323164192','a19e3833319b421780680dd0382ca726','150478575145255',0,1000),('fb7716d4d8c2449586437b2bcc866224','150270323164192','a19e3833319b421780680dd0382ca726','150478575145255',0,100),('fcaf56d6fff8469ba0494efe64fcc862','150270323164192','a19e3833319b421780680dd0382ca726','150478575145255',0,50000);
/*!40000 ALTER TABLE `guess_question_memanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guess_question_options`
--

DROP TABLE IF EXISTS `guess_question_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guess_question_options` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '名称',
  `BET_RATE` double DEFAULT NULL COMMENT '赔率',
  `GUESS_QUESTION_ID` varchar(32) DEFAULT NULL COMMENT '竞猜问题ID',
  `REAL_QUESTION_ID` varchar(32) DEFAULT NULL COMMENT '正式的外键ID',
  PRIMARY KEY (`ID`),
  KEY `GUESS_QUESTION_IDINDEX` (`GUESS_QUESTION_ID`),
  KEY `FK_guess_question_options_question_idx` (`REAL_QUESTION_ID`),
  CONSTRAINT `FK_guess_question_options_question` FOREIGN KEY (`REAL_QUESTION_ID`) REFERENCES `guess_question` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞猜活动备选项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guess_question_options`
--

LOCK TABLES `guess_question_options` WRITE;
/*!40000 ALTER TABLE `guess_question_options` DISABLE KEYS */;
INSERT INTO `guess_question_options` VALUES ('1','字数不可以超过五十个字数不可以超过五十个字数不可以超过五十个字数不可以超过五十个字数不可以超过五十个字数不可以超过五十个字数不可以超过五十个字数不可以超过五十个字数不可以超过五十个字数不可以超过五十个',1,NULL,NULL),('150478575145255','广州恒大胜',1.26,'a19e3833319b421780680dd0382ca726',NULL),('150478576868480','平局',4.98,'a19e3833319b421780680dd0382ca726',NULL),('150478579205995','长春亚泰胜',9.17,'a19e3833319b421780680dd0382ca726',NULL),('150478591922535','上海上港胜',1.1,'0fb1290936ff4d089a142c289a779c66','0fb1290936ff4d089a142c289a779c66'),('150478594640118','平局',8.15,'0fb1290936ff4d089a142c289a779c66','0fb1290936ff4d089a142c289a779c66'),('150478596959975','天津泰达胜',18.19,'0fb1290936ff4d089a142c289a779c66','0fb1290936ff4d089a142c289a779c66');
/*!40000 ALTER TABLE `guess_question_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `ID` varchar(32) NOT NULL,
  `USERNAME` varchar(120) DEFAULT NULL COMMENT '用户名',
  `PASSWORD` varchar(120) DEFAULT NULL COMMENT '密码',
  `LOGIN_DATE` timestamp NULL DEFAULT NULL COMMENT '登录日期',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `LAST_LOGIN_DATE` timestamp NULL DEFAULT NULL COMMENT '上次登录日期',
  `EMAIL` varchar(120) DEFAULT NULL COMMENT '邮箱',
  `MOBIL_PHONE` varchar(120) DEFAULT NULL COMMENT '手机',
  `DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `SEX` tinyint(1) DEFAULT NULL COMMENT '性别',
  `ICON` varchar(1200) DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `AGE` int(11) DEFAULT NULL COMMENT '身高',
  `WEIGHT` int(11) DEFAULT NULL COMMENT '体重',
  `QQ` varchar(32) DEFAULT NULL COMMENT 'QQ',
  `WEIXIN` varchar(32) DEFAULT NULL COMMENT '微信',
  `REAL_NAME` varchar(32) DEFAULT NULL COMMENT '实名',
  `LOGIN_COUNT` int(11) DEFAULT NULL COMMENT '登录次数',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `PARENT_ID` varchar(120) DEFAULT NULL COMMENT '父类ID',
  `PARENTIDS` varchar(3200) DEFAULT NULL COMMENT '父类IDS',
  `MEMBER_GROUP_ID` varchar(120) DEFAULT NULL,
  `NICKNAME` varchar(45) DEFAULT NULL COMMENT '昵称',
  `OPEN_ID` varchar(120) DEFAULT NULL COMMENT '微信的open_id',
  PRIMARY KEY (`ID`),
  KEY `SORT` (`SORT`),
  KEY `FK_MEMBER_MEMBER_idx` (`PARENT_ID`),
  KEY `FK_MEMBER_MEMBER_GROUP_idx` (`MEMBER_GROUP_ID`),
  CONSTRAINT `FK_MEMBER_MEMBER` FOREIGN KEY (`PARENT_ID`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MEMBER_MEMBER_GROUP` FOREIGN KEY (`MEMBER_GROUP_ID`) REFERENCES `member_group` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('150270323164192','test','ea48576f30be1669971699c09ad05c94','2017-09-22 07:55:38','2017-08-14 09:33:51','2017-09-22 07:55:38','2017-08-14 09:33:51','','13926205227',0,NULL,NULL,NULL,'http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0','13926205227',NULL,NULL,NULL,'13926205227',NULL,NULL,9,NULL,NULL,NULL,NULL,'黄记新',NULL),('7cdeeb7918a54b379ff996e83053e569','7cdeeb','5284b18e3cfb8aeaa0eba1cd7fba79aa','2017-09-21 10:27:31','2017-09-21 10:27:31','2017-09-21 10:27:31','2017-09-21 10:27:31',NULL,NULL,0,NULL,NULL,NULL,'http://wx.qlogo.cn/mmopen/z2JphiaeYdpf3r6Lxr1icDaiajHGGSI5SkOOtGbIJo5h8eSt2NiaBHtpWOpuvsrPpCRtZKov3iacScRyicErrzEUlHcrvibNfRlMRae/0','{\"country\":\"中国\",\"city\":\"广州\"}',NULL,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,'黄记新','o9_D3s-u1SuJtgBoE_w-eEtdS1WU');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_account`
--

DROP TABLE IF EXISTS `member_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_account` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用,0否,1是',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `REAL_NAME` varchar(32) DEFAULT NULL COMMENT '实名',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `MEMBER_ID` varchar(32) DEFAULT NULL,
  `LOCKED` tinyint(1) DEFAULT '0' COMMENT '是否锁定,0否,1是',
  `BALANCE` double DEFAULT NULL COMMENT '账号余额',
  `DEPOSIT` double DEFAULT NULL COMMENT '存款变动金额',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='会员账户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_account`
--

LOCK TABLES `member_account` WRITE;
/*!40000 ALTER TABLE `member_account` DISABLE KEYS */;
INSERT INTO `member_account` VALUES ('1066e8a026454132ba0aed4f47ab79b7','2017-09-21 06:41:03','2017-09-21 06:41:03',0,NULL,NULL,4,NULL,'1066e8a026454132ba0aed4f47ab79b7',0,NULL,NULL),('150268445155524','2017-08-14 04:20:59','2017-08-14 04:20:59',0,NULL,NULL,1,NULL,'150268445155524',0,NULL,NULL),('150270323164192','2017-08-14 09:33:57','2017-08-14 13:25:20',0,'21','ewr',2,NULL,'150270323164192',1,12,NULL),('19b237821be847d983eab1e9100a98ed','2017-09-21 07:42:32','2017-09-21 07:42:32',0,NULL,NULL,8,NULL,'19b237821be847d983eab1e9100a98ed',0,NULL,NULL),('1abb0df3ca024a078cdf2ff8d5398534','2017-09-21 07:06:50','2017-09-21 07:06:50',0,NULL,NULL,6,NULL,'1abb0df3ca024a078cdf2ff8d5398534',0,NULL,NULL),('417b83f77bd94325827d3f52eedaf288','2017-09-21 10:19:54','2017-09-21 10:19:54',0,NULL,NULL,12,NULL,'417b83f77bd94325827d3f52eedaf288',0,NULL,NULL),('4d6b2d1ac37645ec92f3c13e88b565d3','2017-09-21 06:40:31','2017-09-21 06:40:31',0,NULL,NULL,3,NULL,'4d6b2d1ac37645ec92f3c13e88b565d3',0,NULL,NULL),('7cdeeb7918a54b379ff996e83053e569','2017-09-21 10:27:31','2017-09-21 10:27:31',0,NULL,NULL,13,NULL,'7cdeeb7918a54b379ff996e83053e569',0,NULL,NULL),('8f953934f422479cb4eb1e362e94c39d','2017-09-21 07:42:32','2017-09-21 07:42:32',0,NULL,NULL,9,NULL,'8f953934f422479cb4eb1e362e94c39d',0,NULL,NULL),('917898c946b34d0b91c7c532b44ab6e7','2017-09-21 06:41:22','2017-09-21 06:41:22',0,NULL,NULL,5,NULL,'917898c946b34d0b91c7c532b44ab6e7',0,NULL,NULL),('b0439d614ab44d2dbe805af496c5d2e2','2017-09-21 08:43:58','2017-09-21 08:43:58',0,NULL,NULL,11,NULL,'b0439d614ab44d2dbe805af496c5d2e2',0,NULL,NULL),('b190b39c76e94958b625bdc7e382329a','2017-09-21 07:09:05','2017-09-21 07:09:05',0,NULL,NULL,7,NULL,'b190b39c76e94958b625bdc7e382329a',0,NULL,NULL),('d8e521bd8b1a451298eec953f5dcf0ba','2017-09-21 08:35:22','2017-09-21 08:35:22',0,NULL,NULL,10,NULL,'d8e521bd8b1a451298eec953f5dcf0ba',0,NULL,NULL);
/*!40000 ALTER TABLE `member_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_account_his`
--

DROP TABLE IF EXISTS `member_account_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_account_his` (
  `BALANCE` double DEFAULT NULL COMMENT '账号余额',
  `WITHDRAWAL` double DEFAULT NULL COMMENT '取款金额',
  `DEPOSIT` double DEFAULT NULL COMMENT '存款金额',
  `ID` varchar(32) NOT NULL,
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用,0否,1是',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `REAL_NAME` varchar(32) DEFAULT NULL COMMENT '实名',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `MEMBER_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`),
  KEY `FK_MACCOUNT_HIS_MEMBER_idx` (`MEMBER_ID`),
  CONSTRAINT `FK_MACCOUNT_HIS_MEMBER` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='存款流水表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_account_his`
--

LOCK TABLES `member_account_his` WRITE;
/*!40000 ALTER TABLE `member_account_his` DISABLE KEYS */;
INSERT INTO `member_account_his` VALUES (12,NULL,NULL,'150270593791613','2017-08-14 10:19:02','2017-08-14 10:19:02',0,'21','ewr',1,NULL,'150270323164192'),(12,NULL,NULL,'150271712110684','2017-08-14 13:25:21','2017-08-14 13:25:21',0,'21','ewr',2,NULL,'150270323164192'),(12,NULL,NULL,'150271713919912','2017-08-14 13:25:39','2017-08-14 13:25:39',0,'21','ewr',3,NULL,'150270323164192'),(12,NULL,NULL,'150272132289310','2017-08-14 14:35:23','2017-08-14 14:35:23',0,'21','ewr',4,NULL,'150270323164192');
/*!40000 ALTER TABLE `member_account_his` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_address`
--

DROP TABLE IF EXISTS `member_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_address` (
  `ID` varchar(32) NOT NULL,
  `PROVINCE` varchar(120) DEFAULT NULL COMMENT '省',
  `CITY` varchar(120) DEFAULT NULL COMMENT '市',
  `AREA` varchar(120) DEFAULT NULL COMMENT '区',
  `NAME` varchar(50) DEFAULT NULL COMMENT '姓名',
  `MOBIL_PHONE` varchar(120) DEFAULT NULL COMMENT '手机',
  `STREET` varchar(120) DEFAULT NULL COMMENT '街道',
  `MEMBER_ID` varchar(120) DEFAULT NULL,
  `IS_DEFAULT` varchar(1) DEFAULT '0' COMMENT '是否设置为默认1为是,0为否',
  `DISABLE` varchar(1) DEFAULT '0',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`ID`),
  KEY `FK_MEMBER_ADDRESS_MEMBER_idx` (`MEMBER_ID`),
  CONSTRAINT `FK_MEMBER_ADDRESS_MEMBER` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_address`
--

LOCK TABLES `member_address` WRITE;
/*!40000 ALTER TABLE `member_address` DISABLE KEYS */;
INSERT INTO `member_address` VALUES ('0b597d967d854f37897bded41a0b4eca','广东','广州',NULL,'黄记新','13926205227','黄埔区茅岗路和贵新街4巷10号',NULL,'0','0','2017-09-14 07:05:20','2017-09-14 07:05:20'),('0b7e6a2a082e4ba4ade09fc245d95c2a','广东','广州',NULL,'黄记新','13926205227','黄埔区茅岗路和贵新街4巷10号',NULL,'1','0','2017-09-11 01:16:46','2017-09-11 09:04:19'),('1b482be7927241d7bc06a41fba8014be','天津','河东',NULL,'黄建新','13926203777','广告歌',NULL,'0','0','2017-09-11 08:29:49','2017-09-11 09:03:16'),('4e088604f4174e81a8d774f0bd74a720','广东','广州',NULL,'黄记新','13926205227','黄埔区茅岗路和贵新街4巷10号','150270323164192','1','0','2017-09-19 11:13:14','2017-09-21 04:14:43'),('6b04fa70623b4562ba240c473d515276','广东','揭阳',NULL,'杨苗青','13926205227','榕城区新河区新阳路13号',NULL,'0','0','2017-09-11 07:32:10','2017-09-11 09:03:16'),('7364f5b2ebd64eb78b69a656443f977a','广东','广州',NULL,'hjx','13926205227','hhs','150270323164192','0','0','2017-09-19 15:10:58','2017-09-21 04:15:03'),('ad66832e3345413281f3d8579db96b91','北京','东城区',NULL,'test','13926205227','wew','7cdeeb7918a54b379ff996e83053e569','1','0','2017-09-21 10:41:40','2017-09-21 10:41:40'),('bd53505288114099a3c235dfc3210476','北京','东城区',NULL,'黄建新','13926205227','古古怪怪',NULL,'0','0','2017-09-11 08:29:12','2017-09-11 09:03:16'),('c66e4fdfcea243b6b4881f799723f2bd','广东','广州',NULL,'123','13926205227','21211',NULL,'0','0','2017-09-14 07:10:02','2017-09-14 07:10:02');
/*!40000 ALTER TABLE `member_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_group`
--

DROP TABLE IF EXISTS `member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_group` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `NAME` varchar(120) DEFAULT NULL COMMENT '名称',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT NULL COMMENT '是否禁用',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `CODE` varchar(120) DEFAULT NULL COMMENT '排序',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `PARENT_ID` varchar(120) DEFAULT NULL COMMENT '父类ID',
  `PARENTIDS` varchar(3200) DEFAULT NULL COMMENT '父类IDS',
  PRIMARY KEY (`ID`),
  KEY `SORT` (`SORT`),
  KEY `FK_MEMBER_GROUP_MEMBER_GROUP_idx` (`PARENT_ID`),
  CONSTRAINT `FK_MEMBER_GROUP_MEMBER_GROUP` FOREIGN KEY (`PARENT_ID`) REFERENCES `member_group` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_group`
--

LOCK TABLES `member_group` WRITE;
/*!40000 ALTER TABLE `member_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_guess_question`
--

DROP TABLE IF EXISTS `member_guess_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_guess_question` (
  `ID` varchar(32) NOT NULL,
  `GUESS_QUESTION_ID` varchar(32) DEFAULT NULL COMMENT '竞猜问题ID',
  `MEMBER_ID` varchar(32) DEFAULT NULL,
  `GUESS_ACCOUNT` double DEFAULT NULL COMMENT '竞猜值',
  PRIMARY KEY (`ID`),
  KEY `FK_MGQ_MEMBER_idx` (`MEMBER_ID`),
  KEY `FK_MGQ_QUESTION_idx` (`GUESS_QUESTION_ID`),
  CONSTRAINT `FK_MGQ_MEMBER` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_MGQ_QUESTION` FOREIGN KEY (`GUESS_QUESTION_ID`) REFERENCES `guess_question` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员竞猜中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_guess_question`
--

LOCK TABLES `member_guess_question` WRITE;
/*!40000 ALTER TABLE `member_guess_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_guess_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_level`
--

DROP TABLE IF EXISTS `member_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_level` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `NAME` varchar(120) DEFAULT NULL COMMENT '名称',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT '0' COMMENT '是否禁用,0为否，1为是',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_level`
--

LOCK TABLES `member_level` WRITE;
/*!40000 ALTER TABLE `member_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_play_account`
--

DROP TABLE IF EXISTS `member_play_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_play_account` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL COMMENT '用户名',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `ZHIHUIDOU_COUNT` int(11) DEFAULT NULL COMMENT '智慧豆数量',
  `MEMBER_ID` varchar(32) DEFAULT NULL COMMENT '会员外键',
  PRIMARY KEY (`ID`),
  KEY `FK_MPA_MEMBER_idx` (`MEMBER_ID`),
  CONSTRAINT `FK_MPA_MEMBER` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员智惠豆帐号，专门用于竞猜充值，变现为优惠券';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_play_account`
--

LOCK TABLES `member_play_account` WRITE;
/*!40000 ALTER TABLE `member_play_account` DISABLE KEYS */;
INSERT INTO `member_play_account` VALUES ('150270323164192',NULL,'2017-08-14 09:33:57','2017-09-15 08:22:06',0,42083,'150270323164192'),('7cdeeb7918a54b379ff996e83053e569',NULL,'2017-09-21 10:27:31','2017-09-21 10:27:31',0,NULL,'7cdeeb7918a54b379ff996e83053e569');
/*!40000 ALTER TABLE `member_play_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_play_his_account`
--

DROP TABLE IF EXISTS `member_play_his_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_play_his_account` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL COMMENT '用户名',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `ZHIHUIDOU_COUNT` int(11) DEFAULT NULL COMMENT '智慧豆数量',
  `MEMBER_ID` varchar(32) DEFAULT NULL COMMENT '会员外键',
  PRIMARY KEY (`ID`),
  KEY `FK_MPAHIS_MEMBER_idx` (`MEMBER_ID`),
  CONSTRAINT `FK_MPAHIS_MEMBER` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员智惠豆帐号历史记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_play_his_account`
--

LOCK TABLES `member_play_his_account` WRITE;
/*!40000 ALTER TABLE `member_play_his_account` DISABLE KEYS */;
INSERT INTO `member_play_his_account` VALUES ('0ed04a4bfcc9406dadd9ed4814ff7198','竞猜1000豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）',NULL,NULL,NULL,97983,'150270323164192'),('17f8e2e21474476f9dc1c95e7fd2a4ce',NULL,NULL,NULL,NULL,99083,'150270323164192'),('38c44728f48f4269a2524a79758e78c7','竞猜1000豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）',NULL,NULL,NULL,97983,'150270323164192'),('458791f6f43a40cd869ed9670ab938dd','竞猜100豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）','2017-09-22 13:23:13',NULL,NULL,42083,'150270323164192'),('45a8df9f183a4574abc61ffda3394ca6','竞猜100豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）',NULL,NULL,NULL,98883,'150270323164192'),('468b20196a61461ca95b8858e1f807a3','竞猜50000豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）',NULL,NULL,NULL,48983,'150270323164192'),('7429bfa1b63048fb9f057b6b41fd3746','竞猜100豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）','2017-09-15 12:37:38',NULL,NULL,48683,'150270323164192'),('76264ab75a604f9fb2c384c54e434775','竞猜100豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）','2017-09-21 04:17:59',NULL,NULL,42083,'150270323164192'),('8977a8d0455346479856b290fdb8f0cf','竞猜100豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）','2017-09-17 00:27:18',NULL,NULL,47083,'150270323164192'),('8a44cbfa0349405e9d753002c620b5cd','竞猜100豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）','2017-09-21 04:17:36',NULL,NULL,42083,'150270323164192'),('8b4765acc205466c818c0d6c51028c6f','竞猜100豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）','2017-09-15 12:37:33',NULL,NULL,48783,'150270323164192'),('96ae790383224987a88217c1e018c3ea','竞猜500豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）','2017-09-15 12:37:45',NULL,NULL,48183,'150270323164192'),('9d94ebe2ea654cb9a6315b66a277e7dd','竞猜100豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）','2017-09-17 00:27:18',NULL,NULL,47083,'150270323164192'),('a0a46d709de64a938c64394a77203f9c','竞猜50000豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）',NULL,NULL,NULL,48883,'150270323164192'),('a832cae8254940ba8d21aef356868514',NULL,NULL,NULL,NULL,98983,'150270323164192'),('b8b18cee327f435f9fa5b19c96e6c140','竞猜500豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）','2017-09-15 13:30:28',NULL,NULL,47183,'150270323164192'),('cf525c75a35c4745957b4b3a6393bc7e','竞猜5000豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）','2017-09-17 00:31:13',NULL,NULL,42183,'150270323164192'),('e0347217fc044557a50c866f1819f6f9','竞猜100豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）',NULL,NULL,NULL,98883,'150270323164192'),('f24620b283e84e84989f3ae75374195b','竞猜500豆中超第24轮，广州恒大（主队） VS 长春亚泰（客队）','2017-09-15 13:30:21',NULL,NULL,47683,'150270323164192');
/*!40000 ALTER TABLE `member_play_his_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_product_distribution`
--

DROP TABLE IF EXISTS `member_product_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_product_distribution` (
  `ID` varchar(120) NOT NULL,
  `MEMBER_ID` varchar(45) DEFAULT NULL COMMENT '会员ID',
  `PRODUCT_ID` varchar(45) DEFAULT NULL COMMENT '产品ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员分销产品中间表（越高级的会员能够分销的商品越多）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_product_distribution`
--

LOCK TABLES `member_product_distribution` WRITE;
/*!40000 ALTER TABLE `member_product_distribution` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_product_distribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_profit`
--

DROP TABLE IF EXISTS `member_profit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_profit` (
  `ID` varchar(32) NOT NULL,
  `MEMBER_ID` varchar(32) DEFAULT NULL,
  `PRODUCT_ID` varchar(45) DEFAULT NULL,
  `SALE_PRICE` double DEFAULT NULL COMMENT '销售价',
  `DEAL_PRICE` double DEFAULT NULL COMMENT '成交价',
  `PROFIT` double DEFAULT NULL COMMENT '盈利',
  `DISTRIBUTION_VALUE` double DEFAULT NULL COMMENT '分销让利值,是指该商品允许分销以后,销售出去给分销者的钱',
  `REAL_PROFIT` double DEFAULT '0',
  `TRANSPORT_FEE` double DEFAULT NULL COMMENT '运费',
  PRIMARY KEY (`ID`),
  KEY `FK_MEMPROFIT_MEMBER_idx` (`MEMBER_ID`),
  KEY `FK_MEMPROFIT_PRODUCT_idx` (`PRODUCT_ID`),
  CONSTRAINT `FK_MEMPROFIT_MEMBER` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_MEMPROFIT_PRODUCT` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `pr_product` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员盈利表，会员可以分销商品，';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_profit`
--

LOCK TABLES `member_profit` WRITE;
/*!40000 ALTER TABLE `member_profit` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_profit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_comment`
--

DROP TABLE IF EXISTS `order_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_comment` (
  `ID` varchar(32) NOT NULL,
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT '0' COMMENT '是否禁用，0否，1是',
  `START_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间，用于查询绑定',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间，用于查询绑定',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `DESCRIPTION` varchar(120) DEFAULT NULL COMMENT '描述',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  `STATUS` varchar(45) DEFAULT NULL COMMENT '订单状态',
  `SHOP_ID` varchar(120) DEFAULT NULL COMMENT '商铺ID',
  `PRODUCT_ID` varchar(120) DEFAULT NULL COMMENT '商品ID',
  `DEAL_PRICE` varchar(120) DEFAULT NULL COMMENT '实付',
  `MEMBER_ID` varchar(120) DEFAULT NULL COMMENT '会员ID',
  `ADDRESS` varchar(45) DEFAULT NULL COMMENT '具体地址',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '店铺管理员ID',
  `ICON` varchar(120) DEFAULT NULL COMMENT '评论晒图',
  `ORDER_TRADE_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`),
  KEY `FK_ORDER_COMMENT_ORDER_idx` (`ORDER_TRADE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单评论';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_comment`
--

LOCK TABLES `order_comment` WRITE;
/*!40000 ALTER TABLE `order_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_delivery`
--

DROP TABLE IF EXISTS `order_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_delivery` (
  `ID` varchar(32) NOT NULL,
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `START_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间，用于查询绑定',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间，用于查询绑定',
  `SORT` int(11) DEFAULT NULL COMMENT '排序',
  `DELIVERY_COMPANY` varchar(45) DEFAULT '申通公司' COMMENT '物流公司',
  `DELIVERY_ORDER_CODE` varchar(120) DEFAULT NULL COMMENT '物流公司订单号',
  `NAME` varchar(45) DEFAULT NULL COMMENT '名称',
  `ORDER_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `DELIVERY_ORDER_CODEINDEX` (`DELIVERY_ORDER_CODE`),
  KEY `order_delivery_order_trade_idx` (`ORDER_ID`),
  CONSTRAINT `order_delivery_order_trade` FOREIGN KEY (`ORDER_ID`) REFERENCES `order_trade` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单包裹信息，包括物流单号，订单号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_delivery`
--

LOCK TABLES `order_delivery` WRITE;
/*!40000 ALTER TABLE `order_delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_trade`
--

DROP TABLE IF EXISTS `order_trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_trade` (
  `ID` varchar(120) NOT NULL,
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT '0' COMMENT '是否禁用，0否，1是',
  `START_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间，用于查询绑定',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间，用于查询绑定',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `IS_DEFAULT` tinyint(1) DEFAULT '0' COMMENT '是否为默认，0：非，1：是',
  `DESCRIPTION` varchar(120) DEFAULT NULL COMMENT '描述',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  `STATUS` varchar(45) DEFAULT NULL COMMENT '订单状态',
  `SHOP_ID` varchar(120) DEFAULT NULL COMMENT '商铺ID',
  `PRODUCT_ID` varchar(120) DEFAULT NULL COMMENT '商品ID',
  `DEAL_PRICE` varchar(120) DEFAULT NULL COMMENT '实付',
  `MEMBER_ID` varchar(120) DEFAULT NULL COMMENT '会员ID',
  `BUY_NUM` int(11) DEFAULT NULL COMMENT '购买数量',
  `RECIVE_NAME` varchar(45) DEFAULT NULL COMMENT '收货人名称',
  `ADDRESS` varchar(45) DEFAULT NULL COMMENT '具体地址',
  `TELEPHONE` varchar(45) DEFAULT NULL COMMENT '电话',
  `MAIL_CODE` varchar(45) DEFAULT '000000' COMMENT '邮码',
  `DELIVERY_COMPANY` varchar(45) DEFAULT '申通公司' COMMENT '物流公司',
  `DELIVERY_ORDER_CODE` varchar(120) DEFAULT NULL COMMENT '物流公司订单号',
  `IS_FORM_SCCUESS` tinyint(1) DEFAULT '0' COMMENT '是否为默认，0：非，1：是',
  `TRANSPORT_FEE` double DEFAULT NULL COMMENT '运费',
  `GROUP_PURCSE_ID` varchar(32) DEFAULT NULL COMMENT '开团ID号码',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '店铺管理员ID',
  `EXPIRED_TIME` datetime DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`ID`),
  KEY `SORT` (`SORT`),
  KEY `FK_ORDER_SHOP_idx` (`SHOP_ID`),
  KEY `FK_ORDER_PRODUCT_idx` (`PRODUCT_ID`),
  KEY `FK_ORDER_MEMBER_idx` (`MEMBER_ID`),
  KEY `GROUP_PURCSE_IDINDEX` (`GROUP_PURCSE_ID`),
  CONSTRAINT `FK_ORDER_MEMBER` FOREIGN KEY (`MEMBER_ID`) REFERENCES `member` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ORDER_PRODUCT` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `pr_product` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ORDER_SHOP` FOREIGN KEY (`SHOP_ID`) REFERENCES `shop` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_trade`
--

LOCK TABLES `order_trade` WRITE;
/*!40000 ALTER TABLE `order_trade` DISABLE KEYS */;
INSERT INTO `order_trade` VALUES ('0d69fde6bce64c25853bff8b9be7dd31',NULL,NULL,NULL,'2017-09-21 10:41:00','2017-09-21 10:41:00',0,NULL,NULL,74,0,NULL,NULL,'toBePayed','150375229485416','150383670510593',NULL,'7cdeeb7918a54b379ff996e83053e569',1,NULL,NULL,NULL,'000000','申通公司',NULL,0,NULL,NULL,NULL,NULL),('29c9723bb175494ab941886af8d9d5ab',NULL,NULL,NULL,'2017-09-22 06:51:17','2017-09-22 06:51:17',0,NULL,NULL,76,0,NULL,NULL,'toBePayed','150375229485416','150383670510593',NULL,'150270323164192',1,NULL,NULL,NULL,'000000','申通公司',NULL,0,NULL,NULL,NULL,NULL),('aa1b3703b039461195638ac2b80c5c1f',NULL,NULL,NULL,'2017-09-22 07:56:44','2017-09-22 11:13:57',0,NULL,NULL,77,0,NULL,'huangjixin','toBePayed','150375229485416','150383670510593',NULL,'150270323164192',1,NULL,NULL,NULL,'000000','申通公司',NULL,0,NULL,NULL,NULL,NULL),('ee09332a019e4b35bf04ace972fe273b',NULL,NULL,NULL,'2017-09-21 10:43:47','2017-09-21 10:43:47',0,NULL,NULL,75,0,NULL,NULL,'toBePayed','150375229485416','150383670510593',NULL,'7cdeeb7918a54b379ff996e83053e569',1,NULL,NULL,NULL,'000000','申通公司',NULL,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `order_trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_trade_payment_order`
--

DROP TABLE IF EXISTS `pay_trade_payment_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_trade_payment_order` (
  `ID` varchar(120) NOT NULL,
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `START_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间，用于查询绑定',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间，用于查询绑定',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `MEMBER_ID` varchar(120) DEFAULT NULL COMMENT '会员ID外键',
  `ORDER_ID` varchar(120) DEFAULT NULL COMMENT '订单ID外键',
  `PRODUCT_ID` varchar(120) DEFAULT NULL COMMENT '商品ID外键',
  `ORG_ID` varchar(120) DEFAULT NULL COMMENT '用户ID外键',
  `MEM_NAME` varchar(120) DEFAULT NULL COMMENT '会员名称',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `STATUS` varchar(45) DEFAULT NULL COMMENT '订单状态:',
  `PRODUCT_NAME` varchar(120) DEFAULT NULL,
  `ORDER_AMOUNT` double DEFAULT NULL COMMENT '订单金额',
  `MERCHANT_ORDER_NO` varchar(120) DEFAULT NULL COMMENT '订单商户号',
  `ORDER_FROM` varchar(120) DEFAULT NULL COMMENT '订单来源',
  `MERCHANT_NAME` varchar(120) DEFAULT NULL COMMENT '商家名称',
  `MERCHANT_NO` varchar(120) DEFAULT NULL COMMENT '商户编号',
  `ORDER_TIME` timestamp NULL DEFAULT NULL COMMENT '订单时间戳',
  `ORDER_DATE` date DEFAULT NULL COMMENT '订单日期',
  `ORDER_IP` varchar(20) DEFAULT NULL COMMENT '订单IP地址',
  `ORDER_REFERER_URL` varchar(240) DEFAULT NULL COMMENT '从哪个页面链接过来的(可用于防诈骗)',
  `RETURN_URL` varchar(600) DEFAULT NULL COMMENT '页面回调通知url',
  `NOTIFY_URL` varchar(600) DEFAULT NULL COMMENT '后台异步通知url',
  `CANCEL_REASON` varchar(600) DEFAULT NULL COMMENT '订单撤销原因',
  `ORDER_PERIOD` int(11) DEFAULT NULL COMMENT '订单有效期(单位分钟)',
  `EXPIRE_TIME` date DEFAULT NULL COMMENT '到期时间',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '支付备注',
  `PAY_WAY_NAME` varchar(45) DEFAULT NULL COMMENT '支付方式名称',
  `PAY_WAY_CODE` varchar(120) DEFAULT NULL COMMENT '支付方式编号',
  `TRX_TYPE` varchar(45) DEFAULT NULL COMMENT '交易业务类型  ：消费、充值等',
  `TRX_NO` varchar(120) DEFAULT NULL COMMENT '支付流水号',
  `PAY_TYPE_CODE` varchar(120) DEFAULT NULL,
  `PAY_TYPE_NAME` varchar(45) DEFAULT NULL COMMENT '支付类型名称',
  `FUND_INTO_TYPE` varchar(45) DEFAULT NULL COMMENT '资金流入类型',
  `IS_REFUND` tinyint(1) DEFAULT '0' COMMENT '是否退款(1:是,0:否,默认值为:0)',
  `REFUND_TIMES` int(11) DEFAULT '0' COMMENT '退款次数(默认值为:0)',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_trade_payment_order`
--

LOCK TABLES `pay_trade_payment_order` WRITE;
/*!40000 ALTER TABLE `pay_trade_payment_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_trade_payment_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_category`
--

DROP TABLE IF EXISTS `pr_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_category` (
  `ID` varchar(120) NOT NULL,
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT '0' COMMENT '是否禁用，0否，1是',
  `START_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间，用于查询绑定',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间，用于查询绑定',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `IS_DEFAULT` tinyint(1) DEFAULT '0' COMMENT '是否为默认，0：非，1：是',
  `EN_NAME` varchar(120) DEFAULT NULL COMMENT '英文名称',
  `NAME` varchar(120) DEFAULT NULL COMMENT '种类名称',
  `DESCRIPTION` varchar(120) DEFAULT NULL COMMENT '描述',
  `PARENT_ID` varchar(120) DEFAULT NULL COMMENT '父类ID',
  `PARENTIDS` varchar(3200) DEFAULT NULL COMMENT '父类IDS',
  `ICON` varchar(1200) DEFAULT NULL COMMENT '图标',
  `KEYWORDS` varchar(120) DEFAULT NULL COMMENT '关键字',
  `THUMBNAIL` varchar(1200) DEFAULT NULL COMMENT '缩略图',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  PRIMARY KEY (`ID`),
  KEY `SORT` (`SORT`),
  KEY `fk_pr_category_category_idx` (`PARENT_ID`),
  CONSTRAINT `fk_pr_category_category` FOREIGN KEY (`PARENT_ID`) REFERENCES `pr_category` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='商品种类管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_category`
--

LOCK TABLES `pr_category` WRITE;
/*!40000 ALTER TABLE `pr_category` DISABLE KEYS */;
INSERT INTO `pr_category` VALUES ('149879109000689',NULL,NULL,NULL,'2017-06-30 02:51:41','2017-08-30 11:04:57',0,NULL,NULL,3,0,'clothes','服饰','服饰',NULL,'','uassets/2017/8/30/1504091064401.webp',NULL,NULL,'fushi'),('150408382323048',NULL,NULL,NULL,'2017-08-30 09:03:43','2017-08-30 09:03:43',0,NULL,NULL,12,0,NULL,'男装','男装',NULL,NULL,'uassets/2017/8/30/1504083814398.webp',NULL,NULL,'nanzhuang'),('1504085428827',NULL,NULL,NULL,'2017-08-30 09:31:41','2017-08-30 11:37:37',0,NULL,NULL,16,0,NULL,'T恤','T恤','150408382323048',NULL,'uassets/2017/8/30/1504090707199.webp',NULL,NULL,'tixu'),('1504091114549',NULL,NULL,NULL,'2017-08-30 11:09:37','2017-08-30 11:09:37',0,NULL,NULL,17,0,NULL,'美食','美食',NULL,NULL,'uassets/2017/8/30/1504091315778.webp',NULL,NULL,'meishi'),('1504091377795',NULL,NULL,NULL,'2017-08-30 11:10:45','2017-08-30 13:21:38',0,NULL,NULL,18,0,NULL,'日用品','家居',NULL,NULL,'uassets/2017/8/30/1504091443006.webp',NULL,NULL,'riyongpin'),('1504091445504',NULL,NULL,NULL,'2017-08-30 11:11:30','2017-08-30 11:11:30',0,NULL,NULL,19,0,NULL,'纸品湿巾','纸品湿巾','1504091377795',NULL,'uassets/2017/8/30/1504091478076.webp',NULL,NULL,'zhipingshijin'),('1504091490955',NULL,NULL,NULL,'2017-08-30 11:12:07','2017-08-30 11:12:07',0,NULL,NULL,20,0,NULL,'饰品首饰','饰品首饰','1504091377795',NULL,'uassets/2017/8/30/1504091522199.webp',NULL,NULL,'shipinshoushi'),('1504091527135',NULL,NULL,NULL,'2017-08-30 11:12:49','2017-08-30 11:12:49',0,NULL,NULL,21,0,NULL,'餐具水具','餐具水具','1504091377795',NULL,'uassets/2017/8/30/1504091557168.webp',NULL,NULL,'canjushuiju'),('1504091709763',NULL,NULL,NULL,'2017-08-30 11:16:21','2017-08-30 11:16:21',0,NULL,NULL,22,0,NULL,'厨房用品','厨房用品','1504091377795',NULL,'uassets/2017/8/30/1504091775222.webp',NULL,NULL,'chufangyongpin'),('1504091934763',NULL,NULL,NULL,'2017-08-30 11:19:36','2017-08-30 11:19:36',0,NULL,NULL,23,0,NULL,'清洁用具','清洁用具','1504091377795',NULL,'uassets/2017/8/30/1504091973745.webp',NULL,NULL,'qingjieyongju'),('1504092428839',NULL,NULL,NULL,'2017-08-30 11:28:19','2017-08-30 11:28:52',0,NULL,NULL,24,0,NULL,'日用百货','日用百货','1504091377795',NULL,'uassets/2017/8/30/1504092492444.webp',NULL,NULL,'riyongbaihuo'),('1504092596212',NULL,NULL,NULL,'2017-08-30 11:30:50','2017-08-30 11:30:50',0,NULL,NULL,25,0,NULL,'休闲零食','休闲零食','1504091114549',NULL,'uassets/2017/8/30/1504092644961.webp',NULL,NULL,'xiuxianlingshi'),('1504092768188',NULL,NULL,NULL,'2017-08-30 11:34:07','2017-08-30 11:34:07',0,NULL,NULL,26,0,NULL,'营养保健','营养保健','1504091114549',NULL,'uassets/2017/8/30/1504092831809.webp',NULL,NULL,'yingyangbaojian'),('1504092847772',NULL,NULL,NULL,'2017-08-30 11:34:48','2017-08-30 11:34:48',0,NULL,NULL,27,0,NULL,'糕点饼干','糕点饼干','1504091114549',NULL,'uassets/2017/8/30/1504092880728.webp',NULL,NULL,'gaodianbinggan'),('1504092888385',NULL,NULL,NULL,'2017-08-30 11:35:35','2017-08-30 11:35:35',0,NULL,NULL,28,0,NULL,'坚果蜜栈','坚果蜜栈','1504091114549',NULL,'uassets/2017/8/30/1504092930446.webp',NULL,NULL,'jianguomizhan'),('1504092936041',NULL,NULL,NULL,'2017-08-30 11:36:12','2017-08-30 11:36:12',0,NULL,NULL,29,0,NULL,'粮油速食','粮油速食','1504091114549',NULL,'uassets/2017/8/30/1504092966674.webp',NULL,NULL,'liangyousushi'),('1504093070005',NULL,NULL,NULL,'2017-08-30 11:38:36','2017-08-30 11:38:36',0,NULL,NULL,30,0,NULL,'衬衫','衬衫','150408382323048',NULL,'uassets/2017/8/30/1504093110702.webp',NULL,NULL,'chenshan'),('1504093116278',NULL,NULL,NULL,'2017-08-30 11:39:38','2017-08-30 11:39:38',0,NULL,NULL,31,0,NULL,'男装','男装子类','150408382323048',NULL,'uassets/2017/8/30/1504093165113.webp',NULL,NULL,'nanzhuangzilei'),('1504093178176',NULL,NULL,NULL,'2017-08-30 11:40:46','2017-08-30 11:40:46',0,NULL,NULL,32,0,NULL,'套装','套装','150408382323048',NULL,'uassets/2017/8/30/1504093240704.webp',NULL,NULL,'taozhuang'),('1504093246711',NULL,NULL,NULL,'2017-08-30 11:41:23','2017-08-30 11:41:23',0,NULL,NULL,33,0,NULL,'内衣裤袜','内衣裤袜','150408382323048',NULL,'uassets/2017/8/30/1504093282668.webp',NULL,NULL,'neiyikuwa'),('1504093484290',NULL,NULL,NULL,'2017-08-30 11:46:08','2017-08-30 13:13:13',0,NULL,NULL,34,0,NULL,'家居','住宅家居',NULL,NULL,'uassets/2017/8/30/1504093559472.webp',NULL,NULL,'zhuzhaijiaju'),('1504093568256',NULL,NULL,NULL,'2017-08-30 11:46:36','2017-08-30 11:46:36',0,NULL,NULL,35,0,NULL,'被子毯子','被子毯子','1504093484290',NULL,'uassets/2017/8/30/1504093589511.webp',NULL,NULL,'beizitanzi'),('1504093596477',NULL,NULL,NULL,'2017-08-30 11:47:04','2017-08-30 11:47:04',0,NULL,NULL,36,0,NULL,'布艺家饰','布艺家饰','1504093484290',NULL,'uassets/2017/8/30/1504093619958.webp',NULL,NULL,'buyijiashi'),('1504093624461',NULL,NULL,NULL,'2017-08-30 11:47:41','2017-08-30 11:48:25',0,NULL,NULL,37,0,NULL,'床单被套','床单被套','1504093484290',NULL,'uassets/2017/8/30/1504093654420.webp',NULL,NULL,'chuangdanbeitao'),('1504093715778',NULL,NULL,NULL,'2017-08-30 11:49:09','2017-08-30 11:49:09',0,NULL,NULL,38,0,NULL,'床品套件','床品套件','1504093484290',NULL,'uassets/2017/8/30/1504093742321.webp',NULL,NULL,'chuangpintaojian'),('1504093749733',NULL,NULL,NULL,'2017-08-30 11:49:36','2017-08-30 11:49:36',0,NULL,NULL,39,0,NULL,'家装建材','家装建材','1504093484290',NULL,'uassets/2017/8/30/1504093771491.webp',NULL,NULL,'jiazhuangjiancai'),('1504093776997',NULL,NULL,NULL,'2017-08-30 11:50:03','2017-08-30 11:50:03',0,NULL,NULL,40,0,NULL,'凉席蚊帐','凉席蚊帐','1504093484290',NULL,'uassets/2017/8/30/1504093790528.webp',NULL,NULL,'liangxiwenzhang'),('1504093803955',NULL,NULL,NULL,'2017-08-30 11:50:32','2017-08-30 11:50:51',0,NULL,NULL,41,0,NULL,'衣柜鞋柜','衣柜鞋柜','1504093484290',NULL,'uassets/2017/8/30/1504093826522.webp',NULL,NULL,'yiguixiegui'),('1504093892650',NULL,NULL,NULL,'2017-08-30 11:52:13','2017-08-30 11:52:13',0,NULL,NULL,42,0,NULL,'枕头床垫','枕头床垫','1504093484290',NULL,'uassets/2017/8/30/1504093928525.webp',NULL,NULL,'zhentouchuangdian'),('1504093933686',NULL,NULL,NULL,'2017-08-30 11:52:49','2017-08-30 11:52:49',0,NULL,NULL,43,0,NULL,'住宅家居','住宅家居','1504093484290',NULL,'uassets/2017/8/30/1504093950652.webp',NULL,NULL,'zhuzhaijiaju'),('1504094118365',NULL,NULL,NULL,'2017-08-30 11:56:13','2017-08-30 11:56:13',0,NULL,NULL,44,0,NULL,'女装','女装','149879109000689',NULL,'uassets/2017/8/30/1504094167005.webp',NULL,NULL,'nvzhuang'),('1504094173900',NULL,NULL,NULL,'2017-08-30 11:57:17','2017-08-30 11:57:17',0,NULL,NULL,45,0,NULL,'秋装','秋装','149879109000689',NULL,'uassets/2017/8/30/1504094232067.webp',NULL,NULL,'qiuzhuang'),('1504094237825',NULL,NULL,NULL,'2017-08-30 11:57:56','2017-08-30 11:57:56',0,NULL,NULL,46,0,NULL,'T恤','T恤','149879109000689',NULL,'uassets/2017/8/30/1504094270750.webp',NULL,NULL,'tixu'),('1504094276144',NULL,NULL,NULL,'2017-08-30 11:58:30','2017-08-30 11:58:30',0,NULL,NULL,47,0,NULL,'大码女装','大码女装','149879109000689',NULL,'uassets/2017/8/30/1504094301691.webp',NULL,NULL,'damanvzhuang'),('1504094310402',NULL,NULL,NULL,'2017-08-30 12:52:35','2017-08-30 12:52:35',0,NULL,NULL,48,0,NULL,'箱包','箱包','149879109000689',NULL,'uassets/2017/8/30/1504097551167.webp',NULL,NULL,'xiangbao'),('1504097555422',NULL,NULL,NULL,'2017-08-30 13:00:34','2017-08-30 13:00:34',0,NULL,NULL,49,0,NULL,'内衣裤袜','内衣裤袜','149879109000689',NULL,'uassets/2017/8/30/1504098032698.webp',NULL,NULL,'neiyikuwa'),('1504098034126',NULL,NULL,NULL,'2017-08-30 13:01:04','2017-08-30 13:01:04',0,NULL,NULL,50,0,NULL,'女裤','女裤','149879109000689',NULL,'uassets/2017/8/30/1504098061664.webp',NULL,NULL,'nvku'),('1504098065074',NULL,NULL,NULL,'2017-08-30 13:10:50','2017-08-30 13:10:50',0,NULL,NULL,51,0,NULL,'女鞋','女鞋','149879109000689',NULL,'uassets/2017/8/30/1504098649350.webp',NULL,NULL,'nvxie'),('1504098864613',NULL,NULL,NULL,'2017-08-30 13:15:03','2017-08-30 13:15:03',0,NULL,NULL,52,0,NULL,'水果','水果',NULL,NULL,'uassets/2017/8/30/1504098901987.webp',NULL,NULL,'shuiguo'),('1504098903180',NULL,NULL,NULL,'2017-08-30 13:15:52','2017-08-30 13:15:52',0,NULL,NULL,53,0,NULL,'芒果街','芒果街','1504098864613',NULL,'uassets/2017/8/30/1504098940088.webp',NULL,NULL,'mangguo'),('1504099380925',NULL,NULL,NULL,'2017-08-30 13:25:16','2017-08-30 13:25:16',0,NULL,NULL,54,0,NULL,'蛋制品','蛋制品','1504098864613',NULL,'uassets/2017/8/30/1504099510287.webp',NULL,NULL,'danzhipin'),('1504099516589',NULL,NULL,NULL,'2017-08-30 13:25:45','2017-08-30 13:25:45',0,NULL,NULL,55,0,NULL,'海鲜水产','海鲜水产','1504098864613',NULL,'uassets/2017/8/30/1504099541970.webp',NULL,NULL,'haixianshuichan'),('1504099546107',NULL,NULL,NULL,'2017-08-30 13:27:37','2017-08-30 13:27:37',0,NULL,NULL,56,0,NULL,'手机','手机',NULL,NULL,'uassets/2017/8/30/1504099651766.webp',NULL,NULL,'shouji'),('1504099657133',NULL,NULL,NULL,'2017-08-30 13:28:14','2017-09-01 01:24:22',0,NULL,NULL,57,0,NULL,'数码配件','数码配件11','1504099546107',NULL,'uassets/2017/8/30/1504099690777.webp',NULL,NULL,'shumapeijian');
/*!40000 ALTER TABLE `pr_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_image`
--

DROP TABLE IF EXISTS `pr_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_image` (
  `ID` varchar(120) NOT NULL,
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `START_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间，用于查询绑定',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间，用于查询绑定',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `IS_DEFAULT` tinyint(1) DEFAULT '0' COMMENT '是否为默认，0：非，1：是',
  `EN_NAME` varchar(120) DEFAULT NULL COMMENT '英文名称',
  `NAME` varchar(120) DEFAULT NULL COMMENT '名称',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `URL` varchar(120) DEFAULT NULL COMMENT '图片连接地址',
  `PRODUCT_ID` varchar(120) DEFAULT NULL COMMENT '产品ID',
  `LOCATION` varchar(240) DEFAULT NULL COMMENT '图片物理地址',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `REAL_PRODUCT_ID` varchar(32) DEFAULT NULL COMMENT '真正的外键ID',
  `TYPE` varchar(45) DEFAULT NULL COMMENT '商品的缩略图，也可能是商品属性图，也可能是商品详情描述图\n三种类型的值分别是：thumbnail，detail，prop',
  PRIMARY KEY (`ID`),
  KEY `SORT` (`SORT`),
  KEY `PRODUCTINDEX` (`PRODUCT_ID`),
  KEY `USER_IDINDEX` (`USER_ID`),
  KEY `FK_pr_image_product_idx` (`REAL_PRODUCT_ID`),
  CONSTRAINT `FK_pr_image_product` FOREIGN KEY (`REAL_PRODUCT_ID`) REFERENCES `pr_product` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COMMENT='产品图片';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_image`
--

LOCK TABLES `pr_image` WRITE;
/*!40000 ALTER TABLE `pr_image` DISABLE KEYS */;
INSERT INTO `pr_image` VALUES ('150364558697751',NULL,NULL,NULL,'2017-08-25 07:19:47','2017-08-25 07:19:47',0,NULL,NULL,28,0,NULL,'1503645586968.jpg',NULL,'images/passets/2017/8/25/1503645586968.jpg','150364555521851','D:\\images\\passets\\2017\\8\\25\\1503645586968.jpg',NULL,NULL,NULL),('150423362791419',NULL,NULL,NULL,'2017-09-01 02:40:27','2017-09-08 09:01:18',0,NULL,NULL,35,1,NULL,'1504233627910.jpeg',NULL,'passets/2017/9/1/1504233627910.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\1\\1504233627910.jpeg',NULL,'150383670510593',NULL),('150423364884219',NULL,NULL,NULL,'2017-09-01 02:40:48','2017-09-08 09:01:18',0,NULL,NULL,37,1,NULL,'1504233648838.jpeg',NULL,'passets/2017/9/1/1504233648838.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\1\\1504233648838.jpeg',NULL,'150383670510593',NULL),('150424449387618',NULL,NULL,NULL,'2017-09-01 05:41:33','2017-09-08 09:01:18',0,NULL,NULL,39,1,NULL,'1504244493872.jpeg',NULL,'passets/2017/9/1/1504244493872.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\1\\1504244493872.jpeg',NULL,'150383670510593',NULL),('150424536785236',NULL,NULL,NULL,'2017-09-01 05:56:07','2017-09-08 09:01:18',0,NULL,NULL,40,1,NULL,'1504245367848.jpeg',NULL,'passets/2017/9/1/1504245367848.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\1\\1504245367848.jpeg',NULL,'150383670510593',NULL),('150424593796963',NULL,NULL,NULL,'2017-09-01 06:05:37','2017-09-08 09:01:18',0,NULL,NULL,41,1,NULL,'1504245937964.jpeg',NULL,'passets/2017/9/1/1504245937964.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\1\\1504245937964.jpeg',NULL,'150383670510593',NULL),('150467050339986',NULL,NULL,NULL,'2017-09-06 04:01:43','2017-09-08 09:01:18',0,NULL,NULL,42,0,NULL,'1504670503364.jpeg',NULL,'passets/150383670510593/2017/9/6/1504670503364.jpeg','150383670510593','D:\\images\\passets\\150383670510593\\2017\\9\\6\\1504670503364.jpeg',NULL,'150383670510593',NULL),('150484777619055',NULL,NULL,NULL,'2017-09-08 05:16:16','2017-09-08 09:01:18',0,NULL,NULL,43,1,NULL,'1504847776170.jpeg',NULL,'passets/2017/9/8/1504847776170.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\8\\1504847776170.jpeg',NULL,'150383670510593',NULL),('150484778385640',NULL,NULL,NULL,'2017-09-08 05:16:23','2017-09-08 09:01:18',0,NULL,NULL,44,1,NULL,'1504847783852.jpeg',NULL,'passets/2017/9/8/1504847783852.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\8\\1504847783852.jpeg',NULL,'150383670510593',NULL),('150484779067213',NULL,NULL,NULL,'2017-09-08 05:16:30','2017-09-08 09:01:18',0,NULL,NULL,45,1,NULL,'1504847790668.jpeg',NULL,'passets/2017/9/8/1504847790668.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\8\\1504847790668.jpeg',NULL,'150383670510593',NULL),('150484780401840',NULL,NULL,NULL,'2017-09-08 05:16:44','2017-09-08 09:01:18',0,NULL,NULL,46,1,NULL,'1504847804013.jpeg',NULL,'passets/2017/9/8/1504847804013.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\8\\1504847804013.jpeg',NULL,'150383670510593',NULL),('15048478133844',NULL,NULL,NULL,'2017-09-08 05:16:53','2017-09-08 09:01:18',0,NULL,NULL,47,1,NULL,'1504847813334.jpeg',NULL,'passets/2017/9/8/1504847813334.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\8\\1504847813334.jpeg',NULL,'150383670510593',NULL),('150485864766669',NULL,NULL,NULL,'2017-09-08 08:17:27','2017-09-08 09:01:18',0,NULL,NULL,48,1,NULL,'1504858647631.jpeg',NULL,'passets/2017/9/8/1504858647631.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\8\\1504858647631.jpeg',NULL,'150383670510593','swiper'),('150485865868646',NULL,NULL,NULL,'2017-09-08 08:17:38','2017-09-08 09:01:18',0,NULL,NULL,49,1,NULL,'1504858658682.jpeg',NULL,'passets/2017/9/8/1504858658682.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\8\\1504858658682.jpeg',NULL,'150383670510593','swiper'),('150485878864591',NULL,NULL,NULL,'2017-09-08 08:19:48','2017-09-08 09:01:18',0,NULL,NULL,50,1,NULL,'1504858788586.jpeg',NULL,'passets/2017/9/8/1504858788586.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\8\\1504858788586.jpeg',NULL,'150383670510593','swiper'),('150485913757645',NULL,NULL,NULL,'2017-09-08 08:25:37','2017-09-08 09:01:18',0,NULL,NULL,51,1,NULL,'1504859137572.jpeg',NULL,'passets/2017/9/8/1504859137572.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\8\\1504859137572.jpeg',NULL,'150383670510593','swiper'),('150486123287959',NULL,NULL,NULL,'2017-09-08 09:00:32','2017-09-08 09:01:18',0,NULL,NULL,52,1,NULL,'1504861232875.jpeg',NULL,'passets/2017/9/8/1504861232875.jpeg','150383670510593','D:\\images\\passets\\2017\\9\\8\\1504861232875.jpeg',NULL,'150383670510593','swiper'),('150486367892615',NULL,NULL,NULL,'2017-09-08 09:41:19','2017-09-08 09:41:19',0,NULL,NULL,53,0,NULL,'1504863678899.jpeg',NULL,'passets/150486349379157/2017/9/8/1504863678899.jpeg','150486349379157','D:\\images\\passets\\150486349379157\\2017\\9\\8\\1504863678899.jpeg',NULL,NULL,'thumbnail'),('150486369138730',NULL,NULL,NULL,'2017-09-08 09:41:31','2017-09-08 09:41:31',0,NULL,NULL,54,1,NULL,'1504863691334.jpeg',NULL,'passets/2017/9/8/1504863691334.jpeg','150486349379157','D:\\images\\passets\\2017\\9\\8\\1504863691334.jpeg',NULL,NULL,'swiper'),('150486369784218',NULL,NULL,NULL,'2017-09-08 09:41:37','2017-09-08 09:41:37',0,NULL,NULL,55,1,NULL,'1504863697838.jpeg',NULL,'passets/2017/9/8/1504863697838.jpeg','150486349379157','D:\\images\\passets\\2017\\9\\8\\1504863697838.jpeg',NULL,NULL,'swiper'),('15048637034309',NULL,NULL,NULL,'2017-09-08 09:41:43','2017-09-08 09:41:43',0,NULL,NULL,56,1,NULL,'1504863703426.jpeg',NULL,'passets/2017/9/8/1504863703426.jpeg','150486349379157','D:\\images\\passets\\2017\\9\\8\\1504863703426.jpeg',NULL,NULL,'swiper'),('15048637281043',NULL,NULL,NULL,'2017-09-08 09:42:08','2017-09-08 09:42:08',0,NULL,NULL,57,1,NULL,'1504863728100.jpeg',NULL,'passets/2017/9/8/1504863728100.jpeg','150486349379157','D:\\images\\passets\\2017\\9\\8\\1504863728100.jpeg',NULL,NULL,'swiper'),('150492529069258',NULL,NULL,NULL,'2017-09-09 02:48:11','2017-09-09 02:48:51',0,NULL,NULL,58,1,NULL,'1504925290643.jpeg',NULL,'passets/2017/9/9/1504925290643.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\2017\\9\\9\\1504925290643.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','swiper'),('15049253160559',NULL,NULL,NULL,'2017-09-09 02:48:36','2017-09-09 02:48:51',0,NULL,NULL,59,1,NULL,'1504925316050.jpeg',NULL,'passets/2017/9/9/1504925316050.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\2017\\9\\9\\1504925316050.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','swiper'),('150492532379126',NULL,NULL,NULL,'2017-09-09 02:48:43','2017-09-09 02:48:51',0,NULL,NULL,60,1,NULL,'1504925323783.jpeg',NULL,'passets/2017/9/9/1504925323783.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\2017\\9\\9\\1504925323783.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','swiper'),('150513117879887',NULL,NULL,NULL,'2017-09-11 11:59:38','2017-09-11 12:03:05',0,NULL,NULL,61,0,NULL,'1505131178787.jpeg@750w_1l_50Q.webp',NULL,'passets/99fda1d4bd0f4b7ebc596cc393688590/2017/9/11/1505131178787.jpeg@750w_1l_50Q.webp','99fda1d4bd0f4b7ebc596cc393688590','D:\\images\\passets\\99fda1d4bd0f4b7ebc596cc393688590\\2017\\9\\11\\1505131178787.jpeg@750w_1l_50Q.webp',NULL,'99fda1d4bd0f4b7ebc596cc393688590','thumbnail'),('150520245439186',NULL,NULL,NULL,'2017-09-12 07:47:34','2017-09-12 07:48:07',0,NULL,NULL,82,1,NULL,'1505202454385.jpg',NULL,'passets/2017/9/12/1505202454385.jpg','150383670510593','D:\\images\\passets\\2017\\9\\12\\1505202454385.jpg',NULL,'150383670510593','detail'),('150535921558234',NULL,NULL,NULL,'2017-09-14 03:20:15','2017-09-14 03:20:39',0,NULL,NULL,96,0,NULL,'1505359215571.jpeg',NULL,'passets/c6dd09184e7d4f8ab7b9d96edbaf3595/2017/9/14/1505359215571.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\c6dd09184e7d4f8ab7b9d96edbaf3595\\2017\\9\\14\\1505359215571.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','thumbnail'),('150539453538291',NULL,NULL,NULL,'2017-09-14 13:08:55','2017-09-14 13:09:41',0,NULL,NULL,103,1,NULL,'1505394535350.jpeg',NULL,'passets/2017/9/14/1505394535350.jpeg','99fda1d4bd0f4b7ebc596cc393688590','D:\\images\\passets\\2017\\9\\14\\1505394535350.jpeg',NULL,'99fda1d4bd0f4b7ebc596cc393688590','detail'),('150539454763678',NULL,NULL,NULL,'2017-09-14 13:09:07','2017-09-14 13:09:41',0,NULL,NULL,104,1,NULL,'1505394547630.jpeg',NULL,'passets/2017/9/14/1505394547630.jpeg','99fda1d4bd0f4b7ebc596cc393688590','D:\\images\\passets\\2017\\9\\14\\1505394547630.jpeg',NULL,'99fda1d4bd0f4b7ebc596cc393688590','detail'),('150539456420789',NULL,NULL,NULL,'2017-09-14 13:09:24','2017-09-14 13:09:41',0,NULL,NULL,105,1,NULL,'1505394564158.jpeg',NULL,'passets/2017/9/14/1505394564158.jpeg','99fda1d4bd0f4b7ebc596cc393688590','D:\\images\\passets\\2017\\9\\14\\1505394564158.jpeg',NULL,'99fda1d4bd0f4b7ebc596cc393688590','detail'),('150539457458197',NULL,NULL,NULL,'2017-09-14 13:09:34','2017-09-14 13:09:41',0,NULL,NULL,106,1,NULL,'1505394574576.jpeg',NULL,'passets/2017/9/14/1505394574576.jpeg','99fda1d4bd0f4b7ebc596cc393688590','D:\\images\\passets\\2017\\9\\14\\1505394574576.jpeg',NULL,'99fda1d4bd0f4b7ebc596cc393688590','detail'),('150572160258296',NULL,NULL,NULL,'2017-09-18 08:00:02','2017-09-18 08:46:56',0,NULL,NULL,120,0,NULL,'1505721602577.jpeg',NULL,'passets/c6dd09184e7d4f8ab7b9d96edbaf3595/2017/9/18/1505721602577.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\c6dd09184e7d4f8ab7b9d96edbaf3595\\2017\\9\\18\\1505721602577.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','prop'),('150572175776657',NULL,NULL,NULL,'2017-09-18 08:02:37','2017-09-18 08:46:56',0,NULL,NULL,121,0,NULL,'1505721757766.jpeg',NULL,'passets/c6dd09184e7d4f8ab7b9d96edbaf3595/2017/9/18/1505721757766.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\c6dd09184e7d4f8ab7b9d96edbaf3595\\2017\\9\\18\\1505721757766.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','prop'),('150572176496514',NULL,NULL,NULL,'2017-09-18 08:02:44','2017-09-18 08:46:56',0,NULL,NULL,122,0,NULL,'1505721764961.jpeg',NULL,'passets/c6dd09184e7d4f8ab7b9d96edbaf3595/2017/9/18/1505721764961.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\c6dd09184e7d4f8ab7b9d96edbaf3595\\2017\\9\\18\\1505721764961.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','prop'),('150572250199732',NULL,NULL,NULL,'2017-09-18 08:15:02','2017-09-18 08:46:56',0,NULL,NULL,123,0,NULL,'1505722501993.jpeg',NULL,'passets/c6dd09184e7d4f8ab7b9d96edbaf3595/2017/9/18/1505722501993.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\c6dd09184e7d4f8ab7b9d96edbaf3595\\2017\\9\\18\\1505722501993.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','prop'),('150572582675749',NULL,NULL,NULL,'2017-09-18 09:10:26','2017-09-18 10:58:35',0,NULL,NULL,125,0,NULL,'1505725826751.jpeg',NULL,'passets/c6dd09184e7d4f8ab7b9d96edbaf3595/2017/9/18/1505725826751.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\c6dd09184e7d4f8ab7b9d96edbaf3595\\2017\\9\\18\\1505725826751.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','thumbnail'),('150572583343341',NULL,NULL,NULL,'2017-09-18 09:10:33','2017-09-18 10:58:35',0,NULL,NULL,126,0,NULL,'1505725833427.jpeg',NULL,'passets/c6dd09184e7d4f8ab7b9d96edbaf3595/2017/9/18/1505725833427.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\c6dd09184e7d4f8ab7b9d96edbaf3595\\2017\\9\\18\\1505725833427.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','thumbnail'),('150572588107276',NULL,NULL,NULL,'2017-09-18 09:11:21','2017-09-18 10:58:35',0,NULL,NULL,127,0,NULL,'1505725881068.jpeg',NULL,'passets/c6dd09184e7d4f8ab7b9d96edbaf3595/2017/9/18/1505725881068.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\c6dd09184e7d4f8ab7b9d96edbaf3595\\2017\\9\\18\\1505725881068.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','thumbnail'),('150572836395357',NULL,NULL,NULL,'2017-09-18 09:52:43','2017-09-18 10:58:35',0,NULL,NULL,132,0,NULL,'1505728363949.jpeg',NULL,'passets/c6dd09184e7d4f8ab7b9d96edbaf3595/2017/9/18/1505728363949.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\c6dd09184e7d4f8ab7b9d96edbaf3595\\2017\\9\\18\\1505728363949.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','thumbnail'),('150572836993091',NULL,NULL,NULL,'2017-09-18 09:52:49','2017-09-18 10:58:35',0,NULL,NULL,133,0,NULL,'1505728369911.jpeg',NULL,'passets/c6dd09184e7d4f8ab7b9d96edbaf3595/2017/9/18/1505728369911.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\c6dd09184e7d4f8ab7b9d96edbaf3595\\2017\\9\\18\\1505728369911.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','thumbnail'),('150572838648723',NULL,NULL,NULL,'2017-09-18 09:53:06','2017-09-18 10:58:35',0,NULL,NULL,134,0,NULL,'1505728386482.jpeg',NULL,'passets/c6dd09184e7d4f8ab7b9d96edbaf3595/2017/9/18/1505728386482.jpeg','c6dd09184e7d4f8ab7b9d96edbaf3595','D:\\images\\passets\\c6dd09184e7d4f8ab7b9d96edbaf3595\\2017\\9\\18\\1505728386482.jpeg',NULL,'c6dd09184e7d4f8ab7b9d96edbaf3595','swiper'),('150578762949118',NULL,NULL,NULL,'2017-09-19 02:20:29','2017-09-19 02:24:50',0,NULL,NULL,137,0,NULL,'1505787629486.jpeg',NULL,'passets/99fda1d4bd0f4b7ebc596cc393688590/2017/9/19/1505787629486.jpeg','99fda1d4bd0f4b7ebc596cc393688590','D:\\images\\passets\\99fda1d4bd0f4b7ebc596cc393688590\\2017\\9\\19\\1505787629486.jpeg',NULL,'99fda1d4bd0f4b7ebc596cc393688590','swiper'),('150578763440568',NULL,NULL,NULL,'2017-09-19 02:20:34','2017-09-19 02:24:50',0,NULL,NULL,138,0,NULL,'1505787634401.jpeg',NULL,'passets/99fda1d4bd0f4b7ebc596cc393688590/2017/9/19/1505787634401.jpeg','99fda1d4bd0f4b7ebc596cc393688590','D:\\images\\passets\\99fda1d4bd0f4b7ebc596cc393688590\\2017\\9\\19\\1505787634401.jpeg',NULL,'99fda1d4bd0f4b7ebc596cc393688590','swiper'),('150578763952393',NULL,NULL,NULL,'2017-09-19 02:20:39','2017-09-19 02:24:50',0,NULL,NULL,139,0,NULL,'1505787639467.jpeg',NULL,'passets/99fda1d4bd0f4b7ebc596cc393688590/2017/9/19/1505787639467.jpeg','99fda1d4bd0f4b7ebc596cc393688590','D:\\images\\passets\\99fda1d4bd0f4b7ebc596cc393688590\\2017\\9\\19\\1505787639467.jpeg',NULL,'99fda1d4bd0f4b7ebc596cc393688590','swiper'),('150578764426675',NULL,NULL,NULL,'2017-09-19 02:20:44','2017-09-19 02:24:50',0,NULL,NULL,140,0,NULL,'1505787644261.jpeg',NULL,'passets/99fda1d4bd0f4b7ebc596cc393688590/2017/9/19/1505787644261.jpeg','99fda1d4bd0f4b7ebc596cc393688590','D:\\images\\passets\\99fda1d4bd0f4b7ebc596cc393688590\\2017\\9\\19\\1505787644261.jpeg',NULL,'99fda1d4bd0f4b7ebc596cc393688590','swiper'),('150578765029146',NULL,NULL,NULL,'2017-09-19 02:20:50','2017-09-19 02:24:50',0,NULL,NULL,141,0,NULL,'1505787650288.jpeg',NULL,'passets/99fda1d4bd0f4b7ebc596cc393688590/2017/9/19/1505787650288.jpeg','99fda1d4bd0f4b7ebc596cc393688590','D:\\images\\passets\\99fda1d4bd0f4b7ebc596cc393688590\\2017\\9\\19\\1505787650288.jpeg',NULL,'99fda1d4bd0f4b7ebc596cc393688590','swiper'),('150578775127096',NULL,NULL,NULL,'2017-09-19 02:22:31','2017-09-19 02:24:50',0,NULL,NULL,144,0,NULL,'1505787751266.jpeg',NULL,'passets/99fda1d4bd0f4b7ebc596cc393688590/2017/9/19/1505787751266.jpeg','99fda1d4bd0f4b7ebc596cc393688590','D:\\images\\passets\\99fda1d4bd0f4b7ebc596cc393688590\\2017\\9\\19\\1505787751266.jpeg',NULL,'99fda1d4bd0f4b7ebc596cc393688590','prop');
/*!40000 ALTER TABLE `pr_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_product`
--

DROP TABLE IF EXISTS `pr_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_product` (
  `ID` varchar(120) NOT NULL,
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT '1' COMMENT '是否禁用，产品默认不可以用，必须经过审核',
  `START_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间，用于查询绑定',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间，用于查询绑定',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `IS_DEFAULT` tinyint(1) DEFAULT '0' COMMENT '是否为默认，0：非，1：是',
  `EN_NAME` varchar(120) DEFAULT NULL COMMENT '英文名称',
  `NAME` varchar(120) DEFAULT NULL COMMENT '名称',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `ICON` varchar(1200) DEFAULT NULL COMMENT '图标',
  `KEYWORDS` varchar(120) DEFAULT NULL COMMENT '关键字',
  `THUMBNAIL` varchar(1200) DEFAULT NULL COMMENT '缩略图',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  `CATEGORY_ID` varchar(120) DEFAULT NULL COMMENT '产品分类外键ID',
  `CONTENT` text,
  `EN_CONTENT` text COMMENT '英文内容',
  `ALLOW_DISTRIBUTION` tinyint(1) DEFAULT NULL COMMENT '是否允许分销',
  `DISTRIBUTION_VALUE` double DEFAULT NULL COMMENT '分销让利值,是指该商品允许分销以后,销售出去给分销者的钱',
  `SHOP_ID` varchar(120) DEFAULT NULL COMMENT '该商品所属的店',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '用户ID，本来通过shop_id可以通过查询SHOP表拿到用户ID，但是此处为了方便查询做了冗余',
  `PURCHASING_COST` double DEFAULT NULL COMMENT '进货价',
  `DIST_INTRUEDUTION` varchar(200) DEFAULT NULL COMMENT '分销介绍',
  `SUPPLIER_ID` varchar(32) DEFAULT NULL COMMENT '供应商ID',
  `GOURP_SALE_PRICE` double DEFAULT '0' COMMENT '团购价',
  `INDEPENDENT_PRICE` double DEFAULT NULL COMMENT '独立销售价',
  `NUMBER_COUNT` int(11) DEFAULT NULL COMMENT '开团人数',
  `AUDIT_DESCRIPTION` varchar(360) DEFAULT NULL COMMENT '审核原因，多条用“||”分割开，比如管理员觉得你图片质量非常差，打回去让你重新修改上架，这个时候修改数据库的时候，用“||”分割开来多个原因',
  `STORAGE` int(11) DEFAULT NULL COMMENT '库存',
  `STATUS` varchar(45) DEFAULT 'online' COMMENT '商品状态，上架或者下架，默认上架为：online，下架为offline',
  `MARKET_PRICE` double DEFAULT NULL COMMENT '市价或者划下价',
  `TRANSPORT_FEE` double DEFAULT NULL COMMENT '运费',
  `SHOP_NAME` varchar(120) DEFAULT NULL COMMENT '商店名称',
  `SHOP_ICON` varchar(120) DEFAULT NULL COMMENT '商标地址',
  `IS_SENT_UNPAY` int(11) DEFAULT NULL COMMENT '是否支持货到付款，1是，0否',
  `CHECK_STATUS` int(11) DEFAULT NULL COMMENT '审核状态，0未审核，1审核通过，2驳回',
  PRIMARY KEY (`ID`),
  KEY `SORT` (`SORT`),
  KEY `fk_product_category_idx` (`CATEGORY_ID`),
  KEY `FK_PRODUCT_SHOP_idx` (`SHOP_ID`),
  KEY `USER_ID_INDEX` (`USER_ID`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `pr_category` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PRODUCT_SHOP` FOREIGN KEY (`SHOP_ID`) REFERENCES `shop` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_product`
--

LOCK TABLES `pr_product` WRITE;
/*!40000 ALTER TABLE `pr_product` DISABLE KEYS */;
INSERT INTO `pr_product` VALUES ('150383670510593',NULL,NULL,NULL,'2017-08-27 12:26:34','2017-09-12 07:48:06',0,NULL,NULL,20,0,NULL,'【第2份减5元】攀枝花凯特芒果4斤（单果400-2000g）新鲜芒果非吉禄贵妃小台农金煌玉芒果','【坏果包赔】芒果属于后熟水果，根据发货地区不同，为确保果子运输途中不易损坏，一般发7-8成熟的果子，收到未熟（请放一个苹果和香蕉密封箱子，温度保持在20度左右，放软即可）芒果的表皮受季节和天气影响，出现花皮黑斑，花斑，是正常现象，这种斑点对果肉没有任何影响，因为近期发货量交大，黄皮和青皮我们随机发货，介意者慎拍！。益果汇小贴士，我们发货以后请及时跟踪物流到货及时签收，避免在快递存放太久损坏，收到水果如有坏果，请在24小时内联系我们客服。','passets/150383670510593/2017/9/6/1504670503364.jpeg',NULL,NULL,'mangguo','1504098903180','&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img id=&quot;150520245439186&quot; src=&quot;/passets/2017/9/12/1505202454385.jpg&quot; class=&quot;img-responsive&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img id=&quot;150520245439186&quot; src=&quot;/passets/2017/9/12/1505202454385.jpg&quot; class=&quot;img-responsive&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img id=&quot;150520245439186&quot; src=&quot;/passets/2017/9/12/1505202454385.jpg&quot; class=&quot;img-responsive&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',NULL,1,1,'150375229485416',NULL,1,NULL,NULL,6,12,2,NULL,10001,'online',12,NULL,NULL,NULL,NULL,NULL),('99fda1d4bd0f4b7ebc596cc393688590',NULL,NULL,NULL,'2017-09-11 12:03:05','2017-09-19 07:34:00',0,NULL,NULL,23,0,NULL,'【会走路唱歌、讲故事、学英语，早教好助手】儿童益智讲故事闪光跳舞机器人电动T1智能机器人模型玩具','集多功能于一身的智能小伙伴，早教益智故事机，绿色环保无毒ABS材料，国家3C认证更安全！【T1智能机器人会唱歌，讲故事、学英语，360度旋转、行走，电动万向，手臂可动（需要手动操作），炫彩灯光，】颜色鲜艳，可丰富宝宝认知，锻炼动手能力，刺激听觉和视觉，让孩子在玩耍中学习，陪伴孩子快乐成长，可爱的卡通造型更吸引孩子的眼球，宝贝肯定爱不释手！产品尺寸15x9x26cm。注：为换取方便，电池盖采用卡扣方式，无螺丝哦！快递默认申通快递！！！建议在能参团情况下的优先参团，点参团可以优先发货哦！','passets/99fda1d4bd0f4b7ebc596cc393688590/2017/9/11/1505131178787.jpeg@750w_1l_50Q.webp',NULL,NULL,'','1504092428839','&lt;p&gt;&lt;img id=&quot;150539453538291&quot; class=&quot;img-responsive&quot; src=&quot;/passets/2017/9/14/1505394535350.jpeg&quot;/&gt;&lt;img id=&quot;150539454763678&quot; class=&quot;img-responsive&quot; src=&quot;/passets/2017/9/14/1505394547630.jpeg&quot;/&gt;&lt;img id=&quot;150539456420789&quot; class=&quot;img-responsive&quot; src=&quot;/passets/2017/9/14/1505394564158.jpeg&quot;/&gt;&lt;img id=&quot;150539457458197&quot; class=&quot;img-responsive&quot; src=&quot;/passets/2017/9/14/1505394574576.jpeg&quot;/&gt;&lt;/p&gt;',NULL,0,1,'150375229485416',NULL,12,NULL,NULL,12,12,2,NULL,10000,'online',58,NULL,NULL,NULL,0,NULL),('c6dd09184e7d4f8ab7b9d96edbaf3595',NULL,NULL,NULL,'2017-09-08 10:23:13','2017-09-18 13:13:47',0,NULL,NULL,22,0,NULL,'【南极人+正品】保暖外套棉服中老年爸爸装大码男装冬装中长款加绒加厚棉袄棉衣男','高品质大厂出品、面料上乘、保暖透气、抗皱免烫、3D立体裁剪贴身设计，更保暖更舒适！每一个选择我们的客户都是我们的尊贵VIP客户，我们都会给予细致周到的售后服务，售后无忧，【默认天天快递】全中国到货！ XL号适合重130斤以下、2XL号适合重150斤以下 3XL号适合重180斤以下、 郑重承诺： 承诺1:收到货后，质量不爽，退！ 承诺2:收到货后，颜色不爽，退！ 承诺3:收到货后，款式不爽，退！ 承诺4:收到货后，家人不喜欢，退！','passets/c6dd09184e7d4f8ab7b9d96edbaf3595/2017/9/14/1505359215571.jpeg',NULL,NULL,'1111','149879109000689','&lt;p&gt;1212&lt;/p&gt;',NULL,0,0,'150375229485416',NULL,11,NULL,NULL,12,12,2,NULL,123,'online',12,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `pr_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_product_package_price`
--

DROP TABLE IF EXISTS `pr_product_package_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_product_package_price` (
  `ID` varchar(32) NOT NULL,
  `PROPERTIES` varchar(360) DEFAULT NULL COMMENT '属性组合',
  `INDEPENDENT_PRICE` varchar(45) DEFAULT NULL COMMENT '属性值组合价',
  `PRODUCT_ID` varchar(32) DEFAULT NULL COMMENT '产品ID，根据ID可以取出产品不同的组合价钱',
  `GOURP_PRICE` varchar(45) DEFAULT NULL COMMENT '团购价',
  `PROPERTY_ID` varchar(32) DEFAULT NULL COMMENT '属性ID',
  `PROPERTY_VAlUE_ID` varchar(330) DEFAULT NULL,
  `DISABLE` tinyint(4) DEFAULT '0',
  `ICON` varchar(120) DEFAULT NULL COMMENT '属性对应的图片',
  PRIMARY KEY (`ID`),
  KEY `FK_PACKAGE_PRICE_PRODUCT_idx` (`PRODUCT_ID`),
  CONSTRAINT `FK_PACKAGE_PRICE_PRODUCT` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `pr_product` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品有不同的属性，这个时候不同的规格，大小，颜色，可能产生不同价格，比如苹果手机白色的比黑色的要贵，这个时候需要一个表来记录不同属性产生的价格，';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_product_package_price`
--

LOCK TABLES `pr_product_package_price` WRITE;
/*!40000 ALTER TABLE `pr_product_package_price` DISABLE KEYS */;
INSERT INTO `pr_product_package_price` VALUES ('10df0123646842ec982afdc9c88b62ac',NULL,'12','99fda1d4bd0f4b7ebc596cc393688590','12',NULL,'150580576785333',0,'passets/99fda1d4bd0f4b7ebc596cc393688590/2017/9/19/1505787751266.jpeg'),('6bf50691d40f4dd095f1c6745f213224',NULL,'14','150383670510593','8',NULL,'150383677798623_150426763581353_150449840098737',0,NULL),('73731e72cd704ee9a015273882f7717a',NULL,'12','c6dd09184e7d4f8ab7b9d96edbaf3595','12',NULL,'150574544039022',0,'passets/c6dd09184e7d4f8ab7b9d96edbaf3595/2017/9/18/1505721764961.jpeg'),('9aa0588bc6ab4b699d8c2d64b529e9ed',NULL,'12','150383670510593','6',NULL,'150383677798623_150426761471323_150449840098737',0,NULL),('eb90100351334db9ba722740856ba84e',NULL,'15','150383670510593','9',NULL,'150383677798623_150426763581353_150449841005324',0,NULL),('f0d45804dcd44754812354e85941c53f',NULL,'13','150383670510593','7',NULL,'150383677798623_150426761471323_150449841005324',0,NULL);
/*!40000 ALTER TABLE `pr_product_package_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_product_property`
--

DROP TABLE IF EXISTS `pr_product_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_product_property` (
  `ID` varchar(120) NOT NULL,
  `NAME` varchar(45) DEFAULT NULL COMMENT '属性名称',
  `CODE` varchar(45) DEFAULT NULL COMMENT '英文代码',
  `DESCRIPTION` varchar(45) DEFAULT NULL COMMENT '属性表描述',
  `PRODUCT_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PROPERTY_PRODUCT_idx` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品属性表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_product_property`
--

LOCK TABLES `pr_product_property` WRITE;
/*!40000 ALTER TABLE `pr_product_property` DISABLE KEYS */;
INSERT INTO `pr_product_property` VALUES ('15028412955799','款式','style','',NULL),('150284145896292','规格','specification','',NULL),('150284148370969','尺寸','size','',NULL),('150284150590025','颜色','color','',NULL),('15028415409685','容量','capacity','',NULL),('150284156334250','套餐','combo','',NULL),('150284157674586','重量','weight','',NULL),('150581525331091','口味','kouwei','',NULL),('150581584464190','型号','xinghao','',NULL),('150581587881278','其它','other','',NULL);
/*!40000 ALTER TABLE `pr_product_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_product_property_value`
--

DROP TABLE IF EXISTS `pr_product_property_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_product_property_value` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(45) DEFAULT NULL COMMENT '属性名称',
  `CODE` varchar(45) DEFAULT NULL COMMENT '英文代码',
  `DESCRIPTION` varchar(45) DEFAULT NULL COMMENT '属性表描述',
  `PROPERTY_ID` varchar(32) DEFAULT NULL COMMENT '属性ID',
  `IMAGE_ID` varchar(120) DEFAULT NULL COMMENT '属性值对应的图片',
  `DISABLE` tinyint(1) DEFAULT '0' COMMENT '是否禁用，0否，1是',
  `PRODUCT_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PRO_VALUE_PROPERTY_idx` (`PROPERTY_ID`),
  KEY `FK_PRO_VALUE_PRODUCT_idx` (`PRODUCT_ID`),
  CONSTRAINT `FK_PRO_VALUE_PRODUCT` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `pr_product` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PRO_VALUE_PROPERTY` FOREIGN KEY (`PROPERTY_ID`) REFERENCES `pr_product_property` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品属性值';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_product_property_value`
--

LOCK TABLES `pr_product_property_value` WRITE;
/*!40000 ALTER TABLE `pr_product_property_value` DISABLE KEYS */;
INSERT INTO `pr_product_property_value` VALUES ('150574544039022','rt',NULL,NULL,'15028412955799',NULL,0,'c6dd09184e7d4f8ab7b9d96edbaf3595'),('150580576785333','324',NULL,NULL,'15028412955799',NULL,0,'99fda1d4bd0f4b7ebc596cc393688590');
/*!40000 ALTER TABLE `pr_product_property_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_supplier`
--

DROP TABLE IF EXISTS `pr_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pr_supplier` (
  `ID` varchar(120) NOT NULL,
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `START_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间，用于查询绑定',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间，用于查询绑定',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `IS_DEFAULT` tinyint(1) DEFAULT '0' COMMENT '是否为默认，0：非，1：是',
  `EN_NAME` varchar(120) DEFAULT NULL COMMENT '英文名称',
  `NAME` varchar(120) DEFAULT NULL COMMENT '名称',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `ICON` varchar(1200) DEFAULT NULL COMMENT '图标',
  `KEYWORDS` varchar(120) DEFAULT NULL COMMENT '关键字',
  `THUMBNAIL` varchar(1200) DEFAULT NULL COMMENT '缩略图',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '用户的ID',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `MOBILPHONE` varchar(20) DEFAULT NULL COMMENT '电话',
  `ADDRESS` varchar(100) DEFAULT NULL COMMENT '地址',
  `CONTACTOR` varchar(45) DEFAULT NULL COMMENT '联系人姓名',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品供应商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_supplier`
--

LOCK TABLES `pr_supplier` WRITE;
/*!40000 ALTER TABLE `pr_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `ID` varchar(120) NOT NULL,
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT '1' COMMENT '是否禁用',
  `START_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间，用于查询绑定',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间，用于查询绑定',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `IS_DEFAULT` tinyint(1) DEFAULT '0' COMMENT '是否为默认，0：非，1：是',
  `EN_NAME` varchar(120) DEFAULT NULL COMMENT '英文名称',
  `NAME` varchar(120) DEFAULT NULL COMMENT '名称',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `ICON` varchar(1200) DEFAULT NULL COMMENT '图标',
  `KEYWORDS` varchar(120) DEFAULT NULL COMMENT '关键字',
  `THUMBNAIL` varchar(1200) DEFAULT NULL COMMENT '缩略图',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  `CATEGORY_ID` varchar(120) DEFAULT NULL COMMENT '品牌外键ID',
  `CONTENT` text,
  `EN_CONTENT` text COMMENT '英文内容',
  `USER_ID` varchar(120) DEFAULT NULL,
  `CONTACT_TELEPHONE` varchar(45) DEFAULT NULL COMMENT '联系人',
  `EMAIL` varchar(45) DEFAULT NULL COMMENT '邮件',
  `ADMIN_NAME` varchar(45) DEFAULT NULL COMMENT '管理员姓名',
  PRIMARY KEY (`ID`),
  KEY `SORT` (`SORT`),
  KEY `FK_SHOP_SHOP_CATEGORY_idx` (`CATEGORY_ID`),
  KEY `FK_SHOP_TB_USER_idx` (`USER_ID`),
  CONSTRAINT `FK_SHOP_SHOP_CATEGORY` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `shop_category` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SHOP_TB_USER` FOREIGN KEY (`USER_ID`) REFERENCES `tb_user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='店铺';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES ('150375229485416',NULL,NULL,NULL,'2017-08-26 12:58:14','2017-09-09 13:34:15',1,NULL,NULL,18,0,NULL,'洋洋水果','健康科学儿童学习桌,伴孩子成长.我们有着完善的售前售后服务，有任何问题及时解决，放心购买安心使用。','uassets/2017/8/27/1503807062182.jpg',NULL,NULL,'yangyangshuiguo',NULL,'<p>洋洋水果是一家专门经营水果的商店，依托江南水果市场</p>',NULL,'150375229439161','13926205227','517714860@qq.com','13926205227');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category`
--

DROP TABLE IF EXISTS `shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_category` (
  `ID` varchar(120) NOT NULL,
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLE` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  `START_TIME` timestamp NULL DEFAULT NULL COMMENT '开始时间，用于查询绑定',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '结束时间，用于查询绑定',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `IS_DEFAULT` tinyint(1) DEFAULT '0' COMMENT '是否为默认，0：非，1：是',
  `EN_NAME` varchar(120) DEFAULT NULL COMMENT '英文名称',
  `NAME` varchar(120) DEFAULT NULL COMMENT '种类名称',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `PARENT_ID` varchar(120) DEFAULT NULL COMMENT '父类ID',
  `PARENTIDS` varchar(3200) DEFAULT NULL COMMENT '父类IDS',
  `ICON` varchar(1200) DEFAULT NULL COMMENT '图标',
  `KEYWORDS` varchar(120) DEFAULT NULL COMMENT '关键字',
  `THUMBNAIL` varchar(1200) DEFAULT NULL COMMENT '缩略图',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  PRIMARY KEY (`ID`),
  KEY `SORT` (`SORT`),
  KEY `fk_shop_category_shop_category_idx` (`PARENT_ID`),
  CONSTRAINT `fk_shop_category_shop_category` FOREIGN KEY (`PARENT_ID`) REFERENCES `shop_category` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='店铺分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category`
--

LOCK TABLES `shop_category` WRITE;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` VALUES ('150234567614056',NULL,NULL,NULL,'2017-08-10 06:14:36','2017-08-12 09:38:43',0,NULL,NULL,27,0,NULL,'123','sasasa','150234567614056',NULL,'images/uassets/2017/8/12/1502530153474.jpg',NULL,NULL,'123'),('150234567908665',NULL,NULL,NULL,'2017-08-10 06:14:39','2017-08-12 09:31:09',0,NULL,NULL,28,0,NULL,'as','sasasa','150234567614056',NULL,'images/uassets/2017/8/12/1502530266424.jpg',NULL,NULL,'as'),('150252980535768',NULL,NULL,NULL,'2017-08-12 09:23:25','2017-08-12 09:53:34',0,NULL,NULL,32,0,NULL,'我的店铺','testdsdsds',NULL,NULL,'images/uassets/2017/8/12/1502529790774.jpg',NULL,NULL,'myshopCategory'),('15025312782676',NULL,NULL,NULL,'2017-08-12 09:47:58','2017-08-12 09:48:20',0,NULL,NULL,34,0,NULL,'sdf','afsfa',NULL,NULL,'images/uassets/2017/8/12/1502531298140.jpg',NULL,NULL,'sdaf');
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_org`
--

DROP TABLE IF EXISTS `tb_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_org` (
  `ID` varchar(32) NOT NULL COMMENT 'ID',
  `NAME` varchar(120) DEFAULT NULL COMMENT '机构名称',
  `PARENT_ID` varchar(32) DEFAULT NULL COMMENT '父类ID',
  `PARENTIDS` varchar(3200) DEFAULT NULL COMMENT '父类IDS',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `CHECKED` tinyint(1) DEFAULT NULL COMMENT '是否勾选',
  `TYPE` varchar(120) DEFAULT NULL COMMENT '类型',
  `TEXT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`),
  KEY `FK_ORG_TO_ORG_idx` (`PARENT_ID`),
  CONSTRAINT `FK_ORG_TO_ORG` FOREIGN KEY (`PARENT_ID`) REFERENCES `tb_org` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织结构';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_org`
--

LOCK TABLES `tb_org` WRITE;
/*!40000 ALTER TABLE `tb_org` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_resources`
--

DROP TABLE IF EXISTS `tb_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_resources` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(120) DEFAULT NULL COMMENT '资源名称',
  `PARENT_ID` varchar(32) DEFAULT NULL COMMENT '父类ID',
  `PARENTIDS` varchar(340) DEFAULT NULL COMMENT '父类IDS',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `AUTH_NAME` varchar(120) DEFAULT NULL COMMENT '权限名称',
  `PATH` varchar(120) DEFAULT NULL COMMENT '访问路径',
  `SORT` int(11) DEFAULT NULL COMMENT '排序',
  `TYPE` varchar(120) DEFAULT NULL COMMENT '类型',
  `CHECKED` tinyint(1) DEFAULT NULL COMMENT '是否勾选',
  `TEXT` varchar(120) DEFAULT NULL COMMENT '文本',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_resources`
--

LOCK TABLES `tb_resources` WRITE;
/*!40000 ALTER TABLE `tb_resources` DISABLE KEYS */;
INSERT INTO `tb_resources` VALUES ('150183915978716','资源管理','150379508975520',NULL,NULL,NULL,NULL,NULL,'','system:resources:view','resources',NULL,'menu',NULL,NULL,'resourcesManage',NULL),('15018393878145','资源管理-新增','150183915978716','150183915978716','2017-08-04 09:36:28','2017-08-04 09:36:28',NULL,NULL,NULL,'system:resources:create',NULL,NULL,'button',NULL,NULL,'resourcesManageCreate',NULL),('150183945124351','资源管理-编辑','150183915978716','150183915978716','2017-08-04 09:37:31','2017-08-04 09:37:31',NULL,NULL,NULL,'system:resources:edit',NULL,NULL,'button',NULL,NULL,'resourcesManageEdit',NULL),('150198229992573','会员',NULL,NULL,NULL,NULL,NULL,NULL,'','member:member:view','member',NULL,'menu',NULL,NULL,'',NULL),('150251102697652','会员-新增','150198229992573',NULL,'2017-08-12 04:10:26','2017-08-12 08:44:50',NULL,NULL,'','member:member:create','',NULL,'menu',NULL,NULL,'memberCreate',NULL),('150379218609524','用户管理','150379508975520',NULL,NULL,NULL,NULL,NULL,'','system:user:view','user',NULL,'menu',NULL,NULL,'userManager',NULL),('150379360110449','用户管理-新增','150379218609524',NULL,'2017-08-27 00:26:41','2017-08-27 00:26:41',NULL,NULL,'','system:user:create','',NULL,'button',NULL,NULL,'userManagerCreate',NULL),('150379366774145','用户管理-编辑','150379218609524',NULL,'2017-08-27 00:27:47','2017-08-27 00:27:47',NULL,NULL,'','system:user:edit','',NULL,'button',NULL,NULL,'userManagerEdit',NULL),('15037937484304','用户管理-删除','150379218609524',NULL,'2017-08-27 00:29:08','2017-08-27 00:29:08',NULL,NULL,'','system:user:delete','',NULL,'button',NULL,NULL,'userManagerDelete',NULL),('150379396460869','个人中心',NULL,NULL,NULL,NULL,NULL,NULL,'个人中心，下面应有我的店铺，我的商品，我的订单，密码修改，分销我的商品会员，我的交易记录等','personal:view','personal',NULL,'menu',NULL,NULL,'personalManager',NULL),('150379406634697','我的店铺','150379396460869',NULL,NULL,NULL,NULL,NULL,'个人中心，我的店铺','personal:myshop:view','/personal/myshop',NULL,'menu',NULL,NULL,'personalMyshop',NULL),('150379504541678','角色管理','150379508975520',NULL,NULL,NULL,NULL,NULL,'角色管理','system:role:view','role',NULL,'menu',NULL,NULL,'roleManager',NULL),('150379508975520','系统管理',NULL,NULL,'2017-08-27 00:51:29','2017-08-27 00:51:29',NULL,NULL,'','system:view','',NULL,'menu',NULL,NULL,'systemManager',NULL),('150379525152179','角色管理-新增','150379504541678',NULL,'2017-08-27 00:54:11','2017-08-27 00:54:11',NULL,NULL,'','system:role:create','',NULL,'button',NULL,NULL,'userManager',NULL),('150379531977827','角色管理-编辑','150379504541678',NULL,NULL,NULL,NULL,NULL,'角色管理-编辑','system:role:edit','',NULL,'button',NULL,NULL,'userManagerEdit',NULL),('150379537058918','用户管理-删除','150379504541678',NULL,'2017-08-27 00:56:10','2017-08-27 00:56:10',NULL,NULL,'','system:role:delete','',NULL,'button',NULL,NULL,'userManagerDelete',NULL),('150379566954642','会员管理-编辑','150198229992573',NULL,'2017-08-27 01:01:09','2017-08-27 01:01:09',NULL,NULL,'会员管理-编辑','member:member:edit','',NULL,'button',NULL,NULL,'memberManagerEdit',NULL),('150379573995920','会员管理-删除','150198229992573',NULL,'2017-08-27 01:02:19','2017-08-27 01:02:19',NULL,NULL,'会员管理-删除','member:member:delete','',NULL,'button',NULL,NULL,'memberManagerDelete',NULL),('150379592744520','用户组管理','150379508975520',NULL,'2017-08-27 01:05:27','2017-08-27 01:05:27',NULL,NULL,'用户组管理','system:userGroup:view','userGroup',NULL,'menu',NULL,NULL,'userGroupManager',NULL),('150379597886185','用户组管理-新增','150379592744520',NULL,NULL,NULL,NULL,NULL,'用户组管理-新增','system:userGroup:create','',NULL,'button',NULL,NULL,'userGroupManagerCreate',NULL),('150379607694585','用户组管理-编辑','150379592744520',NULL,'2017-08-27 01:07:56','2017-08-27 01:07:56',NULL,NULL,'用户组管理-编辑','system:userGroup:edit','',NULL,'button',NULL,NULL,'userGroupManagerEdit',NULL),('150379612348988','用户管理-删除','150379592744520',NULL,'2017-08-27 01:08:43','2017-08-27 01:08:43',NULL,NULL,'用户管理-删除','system:userGroup:delete','',NULL,'button',NULL,NULL,'userGroupManagerDelete',NULL),('150379623171081','我的订单','150379396460869',NULL,'2017-08-27 01:10:31','2017-08-27 01:10:31',NULL,NULL,'我的订单页面','personal:myorder:view','personal/myorder',NULL,'menu',NULL,NULL,'personalmyorderview',NULL),('150379716573586','密码修改','150379396460869',NULL,NULL,NULL,NULL,NULL,'密码修改','personal:changePass:view','personal/changePass',NULL,'menu',NULL,NULL,'personalChangePassView',NULL),('150379754660161','竞猜管理',NULL,NULL,'2017-08-27 01:32:26','2017-08-27 01:32:26',NULL,NULL,'竞猜管理','member:guess:view','',NULL,'menu',NULL,NULL,'memberGuessManager',NULL),('150379759981057','竞猜分类管理','150379754660161',NULL,'2017-08-27 01:33:19','2017-08-27 01:33:19',NULL,NULL,'竞猜分类管理','member:guessCategory:view','guessCategory',NULL,'menu',NULL,NULL,'memberGuessCategoryManager',NULL),('150379766741257','竞猜分类管理-新增','150379759981057',NULL,'2017-08-27 01:34:27','2017-08-27 01:34:27',NULL,NULL,'竞猜分类管理-新增','member:guessCategory:create','',NULL,'button',NULL,NULL,'memberGuessCategoryCreate',NULL),('150379771338447','竞猜分类管理-编辑','150379759981057',NULL,'2017-08-27 01:35:13','2017-08-27 01:35:13',NULL,NULL,'竞猜分类管理-编辑','member:guessCategory:edit','',NULL,'button',NULL,NULL,'memberGuessCategoryEdit',NULL),('150379777604875','竞猜分类管理-删除','150379759981057',NULL,'2017-08-27 01:36:16','2017-08-27 01:36:16',NULL,NULL,'竞猜分类管理-删除','member:guessCategory:delete','',NULL,'button',NULL,NULL,'memberGuessCategoryDelete',NULL),('150379792589547','竞猜问题管理','150379754660161',NULL,'2017-08-27 01:38:45','2017-08-27 01:38:45',NULL,NULL,'竞猜问题管理','member:guessQuestion:view','guessQuestion',NULL,'button',NULL,NULL,'memberGuessQuestion',NULL),('150379807020543','竞猜问题管理-新增','150379792589547',NULL,'2017-08-27 01:41:10','2017-08-27 01:41:10',NULL,NULL,'竞猜问题管理-新增','member:guessQuestion:create','',NULL,'button',NULL,NULL,'memberGuessQuestionCreate',NULL),('15037982173041','竞猜问题管理-编辑','150379792589547',NULL,'2017-08-27 01:43:37','2017-08-27 01:43:37',NULL,NULL,'竞猜问题管理-编辑','member:guessQuestion:edit','',NULL,'button',NULL,NULL,'memberGuessQuestionEdit',NULL),('150379827523241','竞猜问题管理-删除','150379792589547',NULL,'2017-08-27 01:44:35','2017-08-27 01:44:35',NULL,NULL,'竞猜问题管理-删除','member:guessQuestion:delete','',NULL,'button',NULL,NULL,'memberGuessQuestionDelete',NULL),('150379858554549','商品管理',NULL,NULL,'2017-08-27 01:49:45','2017-08-27 01:49:45',NULL,NULL,'商品管理','product:view','',NULL,'menu',NULL,NULL,'productManager',NULL),('150379871535612','商品分类管理','150379858554549',NULL,'2017-08-27 01:51:55','2017-08-27 01:51:55',NULL,NULL,'商品分类管理','mall:prCategory:view','prCategory',NULL,'menu',NULL,NULL,'prCategoryManager',NULL),('150379895415851','商品分类管理-新增','150379871535612',NULL,'2017-08-27 01:55:54','2017-08-27 01:55:54',NULL,NULL,'商品分类管理-新增','mall:prCategory:create','',NULL,'button',NULL,NULL,'prCategoryManagerCreate',NULL),('150379930433113','商品分类管理-编辑','150379871535612',NULL,'2017-08-27 02:01:44','2017-08-27 02:01:44',NULL,NULL,'商品分类管理-编辑','mall:prCategory:edit','',NULL,'button',NULL,NULL,'prCategoryManagerEdit',NULL),('150379934975243','商品分类管理-删除','150379871535612',NULL,'2017-08-27 02:02:29','2017-08-27 02:02:29',NULL,NULL,'','mall:prCategory:delete','',NULL,'button',NULL,NULL,'prCategoryManagerDelete',NULL),('150379971306833','商品管理','150379858554549',NULL,'2017-08-27 02:08:33','2017-08-27 02:08:33',NULL,NULL,'商品管理','mall:product:view','product',NULL,'menu',NULL,NULL,'product',NULL),('150379979238088','商品管理-新增','150379971306833',NULL,'2017-08-27 02:09:52','2017-08-27 02:09:52',NULL,NULL,'商品管理-新增','mall:product:create','',NULL,'button',NULL,NULL,'mall:product:create',NULL),('150379983863770','商品管理-编辑','150379971306833',NULL,'2017-08-27 02:10:38','2017-08-27 02:10:38',NULL,NULL,'商品管理-编辑','mall:product:edit','',NULL,'button',NULL,NULL,'mall:product:edit',NULL),('150380032692268','商品管理-删除','150379971306833',NULL,'2017-08-27 02:18:46','2017-08-27 02:18:46',NULL,NULL,'商品管理-删除','mall:product:delete','',NULL,'button',NULL,NULL,'mall:product:delete',NULL),('150380043673149','商品属性管理','150379858554549',NULL,'2017-08-27 02:20:36','2017-08-27 02:20:36',NULL,NULL,'商品属性管理','mall:productProperty:view','productProperty',NULL,'menu',NULL,NULL,'mall:productProperty:view',NULL),('150380058592219','商品属性管理-新增','150380043673149',NULL,NULL,NULL,NULL,NULL,'商品属性管理-新增','mall:productProperty:create','',NULL,'button',NULL,NULL,'mall:productProperty:create',NULL),('150380070988029','商品属性管理-编辑','150380043673149',NULL,'2017-08-27 02:25:09','2017-08-27 02:25:09',NULL,NULL,'商品属性管理-编辑','mall:productProperty:edit','',NULL,'button',NULL,NULL,'mall:productProperty:edit',NULL),('150380083826115','商品属性管理-删除','150380043673149',NULL,'2017-08-27 02:27:18','2017-08-27 02:27:18',NULL,NULL,'商品属性管理-删除','mall:productProperty:delete','',NULL,'button',NULL,NULL,'mall:productProperty:delete',NULL),('150380109563978','商铺管理',NULL,NULL,'2017-08-27 02:31:35','2017-08-27 02:31:35',NULL,NULL,'','shop:shop:view','',NULL,'menu',NULL,NULL,'',NULL),('150380123402961','商铺分类管理','150380109563978',NULL,'2017-08-27 02:33:54','2017-08-27 02:33:54',NULL,NULL,'商铺分类管理','shop:shopCategory:view','shopCategory',NULL,'menu',NULL,NULL,'shop:shopCategory:view',NULL),('150380130913763','商铺分类管理-新增','150380123402961',NULL,'2017-08-27 02:35:09','2017-08-27 02:35:09',NULL,NULL,'商铺分类管理-新增','shop:shopCategory:create','',NULL,'button',NULL,NULL,'shop:shopCategory:create',NULL),('15038015824771','商铺分类管理-编辑','150380123402961',NULL,'2017-08-27 02:39:42','2017-08-27 02:39:42',NULL,NULL,'商铺分类管理-编辑','shop:shopCategory:edit','',NULL,'button',NULL,NULL,'shop:shopCategory:edit',NULL),('150380162808977','商铺分类管理-删除','150380123402961',NULL,'2017-08-27 02:40:28','2017-08-27 02:40:28',NULL,NULL,'商铺分类管理-删除','shop:shopCategory:delete','',NULL,'button',NULL,NULL,'shop:shopCategory:delete',NULL),('15038017353505','店铺管理','150380109563978',NULL,'2017-08-27 02:42:15','2017-08-27 02:42:15',NULL,NULL,'店铺管理','shop:shop:view','shop',NULL,'menu',NULL,NULL,'shop:shop:view',NULL),('15038017747621','店铺管理-新增','15038017353505',NULL,NULL,NULL,NULL,NULL,'店铺管理-新增','shop:shop:create','',NULL,'button',NULL,NULL,'shop:shop:create',NULL),('150380181148196','店铺管理-编辑','15038017353505',NULL,NULL,NULL,NULL,NULL,'店铺管理-编辑','shop:shop:edit','',NULL,'button',NULL,NULL,'shop:shop:edit',NULL),('150380254929161','店铺管理-删除','15038017353505',NULL,'2017-08-27 02:55:49','2017-08-27 02:55:49',NULL,NULL,'店铺管理-删除','shop:shop:delete','',NULL,'button',NULL,NULL,'shop:shop:delete',NULL),('150380265752454','订单管理',NULL,NULL,NULL,NULL,NULL,NULL,'订单管理','mall:order:view','order',NULL,'menu',NULL,NULL,'mall:order:view',NULL),('150380272979220','资源管理-新增','150183915978716',NULL,'2017-08-27 02:58:49','2017-08-27 02:58:49',NULL,NULL,'资源管理-新增','system:resources:delete','',NULL,'button',NULL,NULL,'system:resources:delete',NULL),('150380310674270','订单管理-新增','150380265752454',NULL,'2017-08-27 03:05:06','2017-08-27 03:05:06',NULL,NULL,'订单管理-新增','mall:order:create','',NULL,'button',NULL,NULL,'mall:order:create',NULL),('150380314132038','订单管理-编辑','150380265752454',NULL,NULL,NULL,NULL,NULL,'订单管理-编辑','mall:order:edit','',NULL,'button',NULL,NULL,'mall:order:edit',NULL),('150380345813745','订单管理-删除','150380265752454',NULL,'2017-08-27 03:10:58','2017-08-27 03:10:58',NULL,NULL,'订单管理-删除','mall:order:edit','',NULL,'button',NULL,NULL,'mall:order:edit',NULL),('150380378289536','会员账户管理',NULL,NULL,'2017-08-27 03:16:22','2017-08-27 03:16:22',NULL,NULL,'会员账户管理','member:memberAccount:view','memberAccount',NULL,'menu',NULL,NULL,'member:memberAccount:view',NULL);
/*!40000 ALTER TABLE `tb_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role`
--

DROP TABLE IF EXISTS `tb_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_role` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用,0否，1是',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `CODE` varchar(45) DEFAULT NULL COMMENT '代码，比如管理员角色，可填写为admin_role',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role`
--

LOCK TABLES `tb_role` WRITE;
/*!40000 ALTER TABLE `tb_role` DISABLE KEYS */;
INSERT INTO `tb_role` VALUES ('150183669467347','超级管理员','2017-08-04 08:51:34','2017-08-08 02:34:52',0,NULL,NULL,1,NULL,'adminRole'),('150236810620045','123','2017-08-10 12:28:26','2017-08-14 02:48:02',0,NULL,NULL,2,NULL,'123wr');
/*!40000 ALTER TABLE `tb_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role_resources`
--

DROP TABLE IF EXISTS `tb_role_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_role_resources` (
  `ID` varchar(32) NOT NULL,
  `RESOURCES_ID` varchar(32) DEFAULT NULL,
  `ROLE_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ROLERESOURCES_RESOURCES_idx` (`RESOURCES_ID`),
  KEY `FK_ROLERESOURCE_ROLE_idx` (`ROLE_ID`),
  CONSTRAINT `FK_ROLERESOURCES_RESOURCES` FOREIGN KEY (`RESOURCES_ID`) REFERENCES `tb_resources` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ROLERESOURCE_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `tb_role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色资源中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role_resources`
--

LOCK TABLES `tb_role_resources` WRITE;
/*!40000 ALTER TABLE `tb_role_resources` DISABLE KEYS */;
INSERT INTO `tb_role_resources` VALUES ('047c3bb95f584ff79a83ca46d5c38b85','150379807020543','150183669467347'),('0df27b1276cf4deaa8465c18a06b992c','150379754660161','150183669467347'),('11e2b4f504a74d4998bc5e0ee70a3458','150379895415851','150183669467347'),('150267749731230','150251102697652','150236810620045'),('150267749731255','15018393878145','150236810620045'),('150267749731275','150198229992573','150236810620045'),('150267749731278','150183915978716','150236810620045'),('150267749731299','150183945124351','150236810620045'),('150eeeeaa513464bb82b134a7f0817d1','150380083826115','150183669467347'),('28b76105d2234135a9215733cf800658','150379858554549','150183669467347'),('2a6f26d7a0a14b85afb3fcbad734c2bb','150379537058918','150183669467347'),('2e95b391776c4705965da1c404f02e2d','150380265752454','150183669467347'),('321c52c4210a4916a0ea7e81d20c19e5','150379366774145','150183669467347'),('33a85f386f7f4106a5d3c650e7d8158e','150379607694585','150183669467347'),('35bf28c0250b42aaad65c8323fb228c9','150379979238088','150183669467347'),('38ca06084c76467dac003e0feaa56d18','150380272979220','150183669467347'),('3db8083f36b64ed5903006f386dac4c3','150380043673149','150183669467347'),('404276e8ca0c4070a488a92864481a84','150379406634697','150183669467347'),('4f50d68c327b41b18449b9311e768a05','150379827523241','150183669467347'),('5114651ec1b54598baa770aaf6f9a84d','150380310674270','150183669467347'),('518c4ab2f34942c686476a10bcb1e0f5','150380254929161','150183669467347'),('53726909b34c4ebfb061d271b9c7aeca','150379531977827','150183669467347'),('5f6faa2c8b2d49aaa3933672a82a0eeb','150380070988029','150183669467347'),('5ff38157106346d7bcc8003223eacee5','150198229992573','150183669467347'),('6667c6463f1f4fc6ac44b8d697d3ff64','150379508975520','150183669467347'),('69b54f40cdb0468a8d1356a243481e38','150379771338447','150183669467347'),('6d318edb64ff493e9a7fa4ad67e318b7','150183915978716','150183669467347'),('6d3a3999c0fe48678f9656f80dddcf15','150380181148196','150183669467347'),('6e1278cbdcf04547a30e9ceba07ec958','150379971306833','150183669467347'),('6edd7a0c92964e3a99027f40414bab2c','15037937484304','150183669467347'),('75267e68e2904340927e5644e55a24a2','150379766741257','150183669467347'),('7557278f8edd48259b262f345dd872f2','150379573995920','150183669467347'),('81a2e5ef307b4d339e4f94c4eab09cf8','150379597886185','150183669467347'),('82629281528a4d7dbfa849c47a1f25b1','150379360110449','150183669467347'),('836833a00b84409487d99f5ed649eb5c','150379396460869','150183669467347'),('849675cb22764dcdb281c14ecb0d8942','150379792589547','150183669467347'),('861c3d832cdd4b509d161799853aa4bf','150379592744520','150183669467347'),('92a980bedd054d908c17fab30ece5899','150379930433113','150183669467347'),('96e53a0b5b9b43238c07fe32351495ed','150379218609524','150183669467347'),('9aafb0c97c244d31a968cb55337e3b21','150251102697652','150183669467347'),('9f7ee1bfcc88424ab1c8b9f433256615','150379759981057','150183669467347'),('a2fb835df9c74ebdaec7b27f4f674036','150380345813745','150183669467347'),('a97991e90a65455eb3e4b40255114cd6','150380109563978','150183669467347'),('ab31837c1e7c41089b7450b9344791fa','15038015824771','150183669467347'),('acbb25864ecc43a6840dcf4c769ffff3','15038017353505','150183669467347'),('adba89307cdb4462a145440c3892f8e8','150183945124351','150183669467347'),('b1de130f7dc14f28b7e2b56c84ca48b1','150379777604875','150183669467347'),('b8c75610246a4c119246f0a73f8382bf','15038017747621','150183669467347'),('ba86d5b8463345248a94bac7309c90c5','150379716573586','150183669467347'),('be63a97866be42e99c59289c19d5bcca','150379983863770','150183669467347'),('c3d04a60e9b94e24a1dfe35ed7848801','150379612348988','150183669467347'),('c5e701aeb4d54e63b63a4f78f2a55615','150379504541678','150183669467347'),('c9f61c4d6c2e452196c3d2a9530e1728','150379566954642','150183669467347'),('cb017f78c06345d09f9f35c132dfdbbd','150379934975243','150183669467347'),('cde89ce7a9b54015966878a97fe225af','15018393878145','150183669467347'),('d26a92a82a434b589cfa9568f786affc','150380058592219','150183669467347'),('d40ac20242af49a5810c60f936b17f75','150380314132038','150183669467347'),('d83986a32a2043ba9d152d5e1ad45f09','150380032692268','150183669467347'),('d930ba185b8d4cf78ae03e40f6457a0f','15037982173041','150183669467347'),('de13d460e2fb4fdfaa016da00ceb84bf','150380378289536','150183669467347'),('e2b7a0d8435d4f2c9226e0310fc1d9df','150380130913763','150183669467347'),('e48de9981644477daaeb69ffbf559859','150379525152179','150183669467347'),('e5a1827db5164f699b4a3e35251775ce','150380162808977','150183669467347'),('efee130a15444251b90819bb1b0c67fe','150380123402961','150183669467347'),('f19184005d25470480413db311f11919','150379871535612','150183669467347'),('f61ff655447c4e2b8d558b6df935a335','150379623171081','150183669467347');
/*!40000 ALTER TABLE `tb_role_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `ID` varchar(32) NOT NULL,
  `USERNAME` varchar(120) DEFAULT NULL COMMENT '用户名',
  `PASSWORD` varchar(120) DEFAULT NULL COMMENT '密码',
  `LOGIN_DATE` timestamp NULL DEFAULT NULL COMMENT '登录日期',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `LAST_LOGIN_DATE` timestamp NULL DEFAULT NULL COMMENT '上次登录日期',
  `EMAIL` varchar(120) DEFAULT NULL COMMENT '邮箱',
  `MOBIL_PHONE` varchar(120) DEFAULT NULL COMMENT '手机',
  `DISABLE` tinyint(1) DEFAULT '1' COMMENT '是否禁用',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `SEX` tinyint(1) DEFAULT NULL COMMENT '性别',
  `ICON` varchar(1200) DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `AGE` int(11) DEFAULT NULL COMMENT '身高',
  `WEIGHT` int(11) DEFAULT NULL COMMENT '体重',
  `QQ` varchar(32) DEFAULT NULL COMMENT 'QQ',
  `WEIXIN` varchar(32) DEFAULT NULL COMMENT '微信',
  `REAL_NAME` varchar(32) DEFAULT NULL COMMENT '实名',
  `LOGIN_COUNT` int(11) DEFAULT NULL COMMENT '登录次数',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `PARENT_ID` varchar(120) DEFAULT NULL COMMENT '父类ID',
  `PARENTIDS` varchar(3200) DEFAULT NULL COMMENT '父类IDS',
  `MEMBER_GROUP_ID` varchar(120) DEFAULT NULL,
  `NICKNAME` varchar(45) DEFAULT NULL COMMENT '昵称',
  `LOGIN_NAME` varchar(45) DEFAULT NULL COMMENT '登录名',
  `USERGROUP_ID` varchar(32) DEFAULT NULL,
  `EMERGECY_CONTACT` varchar(45) DEFAULT NULL COMMENT '紧急情况联系人',
  `IS_CERTIFICATE_INTERNATIONAL` tinyint(1) DEFAULT '1' COMMENT '是否是国内企业证件照,1表示是，0表示否',
  `ID_CARD` varchar(45) DEFAULT NULL COMMENT '身份证号码',
  `COOP_NAME` varchar(45) DEFAULT NULL COMMENT '公司名称',
  `COOP_ADDRESS` varchar(45) DEFAULT NULL COMMENT '公司经营地址',
  `BUSSINESS_LICENSE_CODE` varchar(45) DEFAULT NULL COMMENT '营业执照注册号',
  `ORG_CODE` varchar(45) DEFAULT NULL COMMENT '组织机构代码',
  `TAXPAYER` varchar(45) DEFAULT NULL COMMENT '纳税人识别码',
  `SOCIETY_CODE` varchar(45) DEFAULT NULL COMMENT '统一社会信用代码',
  `LEGAL_REPRESENTATIVE_CARD1` varchar(32) DEFAULT NULL COMMENT '法定代表人身份证正面照片',
  `LEGAL_REPRESENTATIVE_CARD2` varchar(32) DEFAULT NULL COMMENT '法定代表人身份证反面照片',
  `LEGAL_IDCARD_EFFITIVE` varchar(45) DEFAULT NULL COMMENT '法定代表人身份证有效期',
  `BUSSINESS_LICENSE_PIC` varchar(32) DEFAULT NULL COMMENT '营业执照',
  `LICENSE_FOR_OPENING_COUNT` varchar(32) DEFAULT NULL COMMENT '开户许可证',
  `QUANTITY_REPORT_ID` varchar(45) DEFAULT NULL COMMENT '质检报告',
  `TYPE` varchar(45) DEFAULT 'cooperation' COMMENT '商户类型，cooperation表示企业类型，person表示个人',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`),
  KEY `FK_USER_USERGROUP_idx` (`USERGROUP_ID`),
  CONSTRAINT `FK_USER_USERGROUP` FOREIGN KEY (`USERGROUP_ID`) REFERENCES `tb_user_group` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES ('150375229439161','huangjixin','ea48576f30be1669971699c09ad05c94','2017-08-26 15:29:36','2017-08-26 12:58:14','2017-08-26 15:29:36','2017-08-26 12:58:14','517714860@qq.com','13926205227',0,NULL,NULL,NULL,'uassets/2017/8/26/1503761211244.jpg','新建用户为huangjixn,该用户为管理员账户',NULL,NULL,'517714860','13926205227',NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,'150183679493710',NULL,1,'445202198510308352',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cooperation');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_account`
--

DROP TABLE IF EXISTS `tb_user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_account` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用,0否,1是',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `REAL_NAME` varchar(32) DEFAULT NULL COMMENT '实名',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '用户ID，关联tb_user表',
  `LOCKED` tinyint(1) DEFAULT '0' COMMENT '是否锁定,0否,1是',
  `BALANCE` double DEFAULT NULL COMMENT '账号余额',
  `DEPOSIT` double DEFAULT NULL COMMENT '存款变动金额',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`),
  KEY `fk_tb_user_account_tb_user_idx_idx` (`USER_ID`),
  CONSTRAINT `fk_tb_user_account_tb_user_idx` FOREIGN KEY (`USER_ID`) REFERENCES `tb_user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商户佣金账户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_account`
--

LOCK TABLES `tb_user_account` WRITE;
/*!40000 ALTER TABLE `tb_user_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_account_his`
--

DROP TABLE IF EXISTS `tb_user_account_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_account_his` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用,0否,1是',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `REAL_NAME` varchar(32) DEFAULT NULL COMMENT '实名',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '用户ID，关联tb_user表',
  `LOCKED` tinyint(1) DEFAULT '0' COMMENT '是否锁定,0否,1是',
  `BALANCE` double DEFAULT NULL COMMENT '账号余额',
  `DEPOSIT` double DEFAULT NULL COMMENT '存款变动金额',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商户佣金账户历史记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_account_his`
--

LOCK TABLES `tb_user_account_his` WRITE;
/*!40000 ALTER TABLE `tb_user_account_his` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user_account_his` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_apply`
--

DROP TABLE IF EXISTS `tb_user_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_apply` (
  `ID` varchar(32) NOT NULL,
  `USERNAME` varchar(120) DEFAULT NULL COMMENT '用户名',
  `PASSWORD` varchar(120) DEFAULT NULL COMMENT '密码',
  `LOGIN_DATE` timestamp NULL DEFAULT NULL COMMENT '登录日期',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `LAST_LOGIN_DATE` timestamp NULL DEFAULT NULL COMMENT '上次登录日期',
  `EMAIL` varchar(120) DEFAULT NULL COMMENT '邮箱',
  `MOBIL_PHONE` varchar(120) DEFAULT NULL COMMENT '手机',
  `DISABLE` tinyint(1) DEFAULT '1' COMMENT '是否禁用',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `SEX` tinyint(1) DEFAULT NULL COMMENT '性别',
  `ICON` varchar(400) DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(40) DEFAULT NULL COMMENT '描述',
  `AGE` int(11) DEFAULT NULL COMMENT '身高',
  `WEIGHT` int(11) DEFAULT NULL COMMENT '体重',
  `QQ` varchar(32) DEFAULT NULL COMMENT 'QQ',
  `WEIXIN` varchar(32) DEFAULT NULL COMMENT '微信',
  `REAL_NAME` varchar(32) DEFAULT NULL COMMENT '实名',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `NICKNAME` varchar(45) DEFAULT NULL COMMENT '昵称',
  `LOGIN_NAME` varchar(45) DEFAULT NULL COMMENT '登录名',
  `TYPE` varchar(45) DEFAULT 'cooperation' COMMENT '商户类型，cooperation表示企业类型，person表示个人',
  `EMERGECY_CONTACT` varchar(45) DEFAULT NULL COMMENT '紧急情况联系人',
  `IS_CERTIFICATE_INTERNATIONAL` tinyint(1) DEFAULT '1' COMMENT '是否是国内企业证件照,1表示是，0表示否',
  `ID_CARD` varchar(45) DEFAULT NULL COMMENT '身份证号码',
  `COOP_NAME` varchar(45) DEFAULT NULL COMMENT '公司名称',
  `COOP_ADDRESS` varchar(45) DEFAULT NULL COMMENT '公司经营地址',
  `BUSSINESS_LICENSE_CODE` varchar(45) DEFAULT NULL COMMENT '营业执照注册号',
  `ORG_CODE` varchar(45) DEFAULT NULL COMMENT '组织机构代码',
  `TAXPAYER` varchar(45) DEFAULT NULL COMMENT '纳税人识别码',
  `SOCIETY_CODE` varchar(45) DEFAULT NULL COMMENT '统一社会信用代码',
  `LEGAL_REPRESENTATIVE_CARD1` varchar(32) DEFAULT NULL COMMENT '法定代表人身份证正面照片',
  `LEGAL_REPRESENTATIVE_CARD2` varchar(32) DEFAULT NULL COMMENT '法定代表人身份证反面照片',
  `LEGAL_IDCARD_EFFITIVE` varchar(45) DEFAULT NULL COMMENT '法定代表人身份证有效期',
  `BUSSINESS_LICENSE_PIC` varchar(32) DEFAULT NULL COMMENT '营业执照',
  `LICENSE_FOR_OPENING_COUNT` varchar(32) DEFAULT NULL COMMENT '开户许可证',
  `QUANTITY_REPORT_ID` varchar(45) DEFAULT NULL COMMENT '质检报告',
  `CHECK_STATUS` int(11) DEFAULT NULL COMMENT '0表示未审核，1表示审核通过，2表示驳回',
  `USE_FEE` double DEFAULT '0' COMMENT '平台使用费',
  `PROMISE_FEE` double DEFAULT NULL COMMENT '平台保证金',
  `IS_PROMISE_FEE_PAYED` int(11) DEFAULT '0' COMMENT '商家保证金是否已经支付，0表示未支付，1表示已经支付',
  `ZHIFUBAO_ACCOUNT` varchar(45) DEFAULT NULL COMMENT '支付宝账户',
  `WECHAT_ACCOUNT` varchar(45) DEFAULT NULL COMMENT '微信账户',
  `SHARE_PERCENT` double DEFAULT '0' COMMENT '分成利率',
  `SHARE_ACCOUNT` double DEFAULT '0' COMMENT '分成数额',
  `LAVEL_ID` varchar(32) DEFAULT NULL COMMENT '进驻商等级ID',
  `PR_CATEGORY_ID` varchar(320) DEFAULT NULL COMMENT '商品种类ID，用户只能够选择一种商品分类进行销售，但是可以申请多个种类进行销售，期间用英文逗号","分割开',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`),
  KEY `FK_tb_user_apply_to_tb_user_apply_lavel_idx` (`LAVEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户申请入驻表，如果申请通过，那么把信息能够搬的给搬进tb_user表里面，同时要对该用进行授权调进商户组。';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_apply`
--

LOCK TABLES `tb_user_apply` WRITE;
/*!40000 ALTER TABLE `tb_user_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_apply_lavel`
--

DROP TABLE IF EXISTS `tb_user_apply_lavel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_apply_lavel` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `NAME` varchar(45) DEFAULT NULL COMMENT '名称',
  `DESCRIPTION` varchar(45) DEFAULT NULL COMMENT '等级描述',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='入驻商等级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_apply_lavel`
--

LOCK TABLES `tb_user_apply_lavel` WRITE;
/*!40000 ALTER TABLE `tb_user_apply_lavel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user_apply_lavel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_assets`
--

DROP TABLE IF EXISTS `tb_user_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_assets` (
  `ID` varchar(32) NOT NULL COMMENT 'id标志符',
  `EN_NAME` varchar(120) DEFAULT NULL COMMENT '英文名称',
  `NAME` varchar(120) DEFAULT NULL COMMENT '名称',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `IS_DISABLE` tinyint(1) DEFAULT '1' COMMENT '是否可用',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `PATH` varchar(1200) DEFAULT NULL COMMENT '路径',
  `ICON` varchar(120) DEFAULT NULL COMMENT '图标',
  `CODE` varchar(120) DEFAULT NULL COMMENT '代码',
  `KEYWORDS` varchar(120) DEFAULT NULL COMMENT '关键字',
  `DESCRIPTION` varchar(1200) DEFAULT NULL COMMENT '描述',
  `THUMBNAIL` varchar(1200) DEFAULT NULL COMMENT '缩略图',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `URL` varchar(1200) DEFAULT NULL COMMENT '地址',
  `IP` varchar(32) DEFAULT NULL COMMENT 'IP',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`),
  KEY `USER_IDINDEX` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COMMENT='用户附件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_assets`
--

LOCK TABLES `tb_user_assets` WRITE;
/*!40000 ALTER TABLE `tb_user_assets` DISABLE KEYS */;
INSERT INTO `tb_user_assets` VALUES ('150192413505221',NULL,'1501924135045.png',NULL,'2017-08-05 09:08:56','2017-08-05 09:08:56',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-fileupload-web\\userAssets\\2017\\8\\5\\1501924135045.png',NULL,NULL,NULL,NULL,NULL,1,'userAssets/\\2017/8/5/1501924135045.png',NULL,NULL),('15019241368541',NULL,'1501924136847.jpg',NULL,'2017-08-05 09:08:56','2017-08-05 09:08:56',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-fileupload-web\\userAssets\\2017\\8\\5\\1501924136847.jpg',NULL,NULL,NULL,NULL,NULL,2,'userAssets/\\2017/8/5/1501924136847.jpg',NULL,NULL),('150192474307979',NULL,'1501924743023.jpg',NULL,'2017-08-05 09:19:03','2017-08-05 09:19:03',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-fileupload-web\\userAssets\\2017\\8\\5\\1501924743023.jpg',NULL,NULL,NULL,NULL,NULL,3,'userAssets/2017/8/5/1501924743023.jpg',NULL,NULL),('150192640000137',NULL,'1501926399980.jpg',NULL,'2017-08-05 09:46:40','2017-08-05 09:46:40',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-fileupload-web\\userAssets\\2017\\8\\5\\1501926399980.jpg',NULL,NULL,NULL,NULL,NULL,4,'uassets/2017/8/5/1501926399980.jpg',NULL,NULL),('150192640009937',NULL,'1501926400094.jpg',NULL,'2017-08-05 09:46:40','2017-08-05 09:46:40',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-fileupload-web\\userAssets\\2017\\8\\5\\1501926400094.jpg',NULL,NULL,NULL,NULL,NULL,5,'uassets/2017/8/5/1501926400094.jpg',NULL,NULL),('150192655170447',NULL,'1501926551673.jpg',NULL,'2017-08-05 09:49:11','2017-08-05 09:49:11',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-fileupload-web\\images\\uassets\\2017\\8\\5\\1501926551673.jpg',NULL,NULL,NULL,NULL,NULL,6,'images/uassets/2017/8/5/1501926551673.jpg',NULL,NULL),('150192655181124',NULL,'1501926551805.jpg',NULL,'2017-08-05 09:49:11','2017-08-05 09:49:11',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-fileupload-web\\images\\uassets\\2017\\8\\5\\1501926551805.jpg',NULL,NULL,NULL,NULL,NULL,7,'images/uassets/2017/8/5/1501926551805.jpg',NULL,NULL),('150193785152452',NULL,'1501937851507.jpg',NULL,'2017-08-05 12:57:34','2017-08-05 12:57:34',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-fileupload-web\\images\\uassets\\2017\\8\\5\\1501937851507.jpg',NULL,NULL,NULL,NULL,NULL,8,'images/uassets/2017/8/5/1501937851507.jpg',NULL,NULL),('150193794371878',NULL,'1501937943709.jpg',NULL,'2017-08-05 12:59:03','2017-08-05 12:59:03',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\5\\1501937943709.jpg',NULL,NULL,NULL,NULL,NULL,9,'images/uassets/2017/8/5/1501937943709.jpg',NULL,NULL),('150193798868715',NULL,'1501937988683.jpg',NULL,'2017-08-05 12:59:48','2017-08-05 12:59:48',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\5\\1501937988683.jpg',NULL,NULL,NULL,NULL,NULL,10,'images/uassets/2017/8/5/1501937988683.jpg',NULL,NULL),('150194046403243',NULL,'1501940464020.jpg',NULL,'2017-08-05 13:41:06','2017-08-05 13:41:06',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\5\\1501940464020.jpg',NULL,NULL,NULL,NULL,NULL,11,'images/uassets/2017/8/5/1501940464020.jpg',NULL,NULL),('150194051716486',NULL,'1501940517098.jpg',NULL,'2017-08-05 13:41:57','2017-08-05 13:41:57',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-fileupload-web\\images\\uassets\\2017\\8\\5\\1501940517098.jpg',NULL,NULL,NULL,NULL,NULL,12,'images/uassets/2017/8/5/1501940517098.jpg',NULL,NULL),('150194057301019',NULL,'1501940573002.jpg',NULL,'2017-08-05 13:42:53','2017-08-05 13:42:53',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-fileupload-web\\images\\uassets\\2017\\8\\5\\1501940573002.jpg',NULL,NULL,NULL,NULL,NULL,13,'images/uassets/2017/8/5/1501940573002.jpg',NULL,NULL),('150194061426168',NULL,'1501940614251.jpg',NULL,'2017-08-05 13:43:34','2017-08-05 13:43:34',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-fileupload-web\\images\\uassets\\2017\\8\\5\\1501940614251.jpg',NULL,NULL,NULL,NULL,NULL,14,'images/uassets/2017/8/5/1501940614251.jpg',NULL,NULL),('150223603894197',NULL,'1502236038922.jpg',NULL,'2017-08-08 23:47:22','2017-08-08 23:47:22',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\9\\1502236038922.jpg',NULL,NULL,NULL,NULL,NULL,15,'images/uassets/2017/8/9/1502236038922.jpg',NULL,NULL),('150223675330225',NULL,'1502236753286.jpg',NULL,'2017-08-08 23:59:13','2017-08-08 23:59:13',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502236753286.jpg',NULL,NULL,NULL,NULL,NULL,16,'images/uassets/2017/8/9/1502236753286.jpg',NULL,NULL),('150223717785159',NULL,'1502237177847.jpg',NULL,'2017-08-09 00:06:17','2017-08-09 00:06:17',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502237177847.jpg',NULL,NULL,NULL,NULL,NULL,17,'images/uassets/2017/8/9/1502237177847.jpg',NULL,NULL),('150224297174312',NULL,'1502242971734.jpg',NULL,'2017-08-09 01:42:54','2017-08-09 01:42:54',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502242971734.jpg',NULL,NULL,NULL,NULL,NULL,18,'images/uassets/2017/8/9/1502242971734.jpg',NULL,NULL),('150224319740092',NULL,'1502243197394.jpg',NULL,'2017-08-09 01:46:37','2017-08-09 01:46:37',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502243197394.jpg',NULL,NULL,NULL,NULL,NULL,19,'images/uassets/2017/8/9/1502243197394.jpg',NULL,NULL),('15022436102652',NULL,'1502243610260.ch5.cc.jpg',NULL,'2017-08-09 01:53:30','2017-08-09 01:53:30',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502243610260.ch5.cc.jpg',NULL,NULL,NULL,NULL,NULL,20,'images/uassets/2017/8/9/1502243610260.ch5.cc.jpg',NULL,NULL),('150224408063250',NULL,'1502244080627.ch5.cc.jpg',NULL,'2017-08-09 02:01:20','2017-08-09 02:01:20',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502244080627.ch5.cc.jpg',NULL,NULL,NULL,NULL,NULL,21,'images/uassets/2017/8/9/1502244080627.ch5.cc.jpg',NULL,NULL),('150224414529638',NULL,'1502244145290.COM.gif',NULL,'2017-08-09 02:02:25','2017-08-09 02:02:25',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502244145290.COM.gif',NULL,NULL,NULL,NULL,NULL,22,'images/uassets/2017/8/9/1502244145290.COM.gif',NULL,NULL),('150224436832148',NULL,'1502244368314.COM.jpg',NULL,'2017-08-09 02:06:08','2017-08-09 02:06:08',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502244368314.COM.jpg',NULL,NULL,NULL,NULL,NULL,23,'images/uassets/2017/8/9/1502244368314.COM.jpg',NULL,NULL),('15022444956228',NULL,'1502244495617.COM.jpg',NULL,'2017-08-09 02:08:15','2017-08-09 02:08:15',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502244495617.COM.jpg',NULL,NULL,NULL,NULL,NULL,24,'images/uassets/2017/8/9/1502244495617.COM.jpg',NULL,NULL),('150224493257821',NULL,'1502244932572.COM.jpg',NULL,'2017-08-09 02:15:32','2017-08-09 02:15:32',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502244932572.COM.jpg',NULL,NULL,NULL,NULL,NULL,25,'images/uassets/2017/8/9/1502244932572.COM.jpg',NULL,NULL),('150224497542966',NULL,'1502244975424.COM.jpg',NULL,'2017-08-09 02:16:15','2017-08-09 02:16:15',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502244975424.COM.jpg',NULL,NULL,NULL,NULL,NULL,26,'images/uassets/2017/8/9/1502244975424.COM.jpg',NULL,NULL),('150224534737462',NULL,'1502245347364.COM.jpg',NULL,'2017-08-09 02:22:27','2017-08-09 02:22:27',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502245347364.COM.jpg',NULL,NULL,NULL,NULL,NULL,27,'images/uassets/2017/8/9/1502245347364.COM.jpg',NULL,NULL),('150224542696440',NULL,'1502245426960.COM.jpg',NULL,'2017-08-09 02:23:46','2017-08-09 02:23:46',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502245426960.COM.jpg',NULL,NULL,NULL,NULL,NULL,28,'images/uassets/2017/8/9/1502245426960.COM.jpg',NULL,NULL),('150224570263796',NULL,'1502245702631.COM.jpg',NULL,'2017-08-09 02:28:22','2017-08-09 02:28:22',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502245702631.COM.jpg',NULL,NULL,NULL,NULL,NULL,29,'images/uassets/2017/8/9/1502245702631.COM.jpg',NULL,NULL),('150224580621076',NULL,'1502245806205.COM.jpg',NULL,'2017-08-09 02:30:06','2017-08-09 02:30:06',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502245806205.COM.jpg',NULL,NULL,NULL,NULL,NULL,30,'images/uassets/2017/8/9/1502245806205.COM.jpg',NULL,NULL),('150224581469646',NULL,'1502245814690.ch5.cc.jpg',NULL,'2017-08-09 02:30:14','2017-08-09 02:30:14',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502245814690.ch5.cc.jpg',NULL,NULL,NULL,NULL,NULL,31,'images/uassets/2017/8/9/1502245814690.ch5.cc.jpg',NULL,NULL),('150224601486773',NULL,'1502246014813.ch5.cc.jpg',NULL,'2017-08-09 02:33:34','2017-08-09 02:33:34',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502246014813.ch5.cc.jpg',NULL,NULL,NULL,NULL,NULL,32,'images/uassets/2017/8/9/1502246014813.ch5.cc.jpg',NULL,NULL),('150224603783250',NULL,'1502246037828.png',NULL,'2017-08-09 02:33:57','2017-08-09 02:33:57',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502246037828.png',NULL,NULL,NULL,NULL,NULL,33,'images/uassets/2017/8/9/1502246037828.png',NULL,NULL),('150224605331354',NULL,'1502246053309.png',NULL,'2017-08-09 02:34:13','2017-08-09 02:34:13',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502246053309.png',NULL,NULL,NULL,NULL,NULL,34,'images/uassets/2017/8/9/1502246053309.png',NULL,NULL),('150224833424824',NULL,'1502248334244.com~自由な成人映画、最も速く&最新ポルノ映画サイト.jpg',NULL,'2017-08-09 03:12:14','2017-08-09 03:12:14',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502248334244.com~自由な成人映画、最も速く&最新ポルノ映画サイト.jpg',NULL,NULL,NULL,NULL,NULL,35,'images/uassets/2017/8/9/1502248334244.com~自由な成人映画、最も速く&最新ポルノ映画サイト.jpg',NULL,NULL),('150224834418382',NULL,'1502248344179.COM.gif',NULL,'2017-08-09 03:12:24','2017-08-09 03:12:24',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502248344179.COM.gif',NULL,NULL,NULL,NULL,NULL,36,'images/uassets/2017/8/9/1502248344179.COM.gif',NULL,NULL),('150224835817145',NULL,'1502248358167.COM.jpg',NULL,'2017-08-09 03:12:38','2017-08-09 03:12:38',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502248358167.COM.jpg',NULL,NULL,NULL,NULL,NULL,37,'images/uassets/2017/8/9/1502248358167.COM.jpg',NULL,NULL),('150224879545698',NULL,'1502248795389.COM.jpg',NULL,'2017-08-09 03:19:55','2017-08-09 03:19:55',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502248795389.COM.jpg',NULL,NULL,NULL,NULL,NULL,38,'images/uassets/2017/8/9/1502248795389.COM.jpg',NULL,NULL),('15022499902346',NULL,'1502249990210.COM.jpg',NULL,'2017-08-09 03:39:50','2017-08-09 03:39:50',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502249990210.COM.jpg',NULL,NULL,NULL,NULL,NULL,39,'images/uassets/2017/8/9/1502249990210.COM.jpg',NULL,NULL),('150225144561859',NULL,'1502251445612.ch5.cc.jpg',NULL,'2017-08-09 04:04:08','2017-08-09 04:04:08',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502251445612.ch5.cc.jpg',NULL,NULL,NULL,NULL,NULL,40,'images/uassets/2017/8/9/1502251445612.ch5.cc.jpg',NULL,NULL),('150225956087211',NULL,'1502259560865.COM.jpg',NULL,'2017-08-09 06:19:22','2017-08-09 06:19:22',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\9\\1502259560865.COM.jpg',NULL,NULL,NULL,NULL,NULL,41,'images/uassets/2017/8/9/1502259560865.COM.jpg',NULL,NULL),('150232955909379',NULL,'1502329559049.ch5.cc.jpg',NULL,'2017-08-10 01:45:59','2017-08-10 01:45:59',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502329559049.ch5.cc.jpg',NULL,NULL,NULL,NULL,NULL,42,'images/uassets/2017/8/10/1502329559049.ch5.cc.jpg',NULL,NULL),('150233171072720',NULL,'1502331710721.COM.jpg',NULL,'2017-08-10 02:21:51','2017-08-10 02:21:51',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502331710721.COM.jpg',NULL,NULL,NULL,NULL,NULL,43,'images/uassets/2017/8/10/1502331710721.COM.jpg',NULL,NULL),('150233187532978',NULL,'1502331875325.COM.jpg',NULL,'2017-08-10 02:24:35','2017-08-10 02:24:35',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502331875325.COM.jpg',NULL,NULL,NULL,NULL,NULL,44,'images/uassets/2017/8/10/1502331875325.COM.jpg',NULL,NULL),('150233199304378',NULL,'1502331993039.COM.jpg',NULL,'2017-08-10 02:26:33','2017-08-10 02:26:33',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502331993039.COM.jpg',NULL,NULL,NULL,NULL,NULL,45,'images/uassets/2017/8/10/1502331993039.COM.jpg',NULL,NULL),('150233228618160',NULL,'1502332286158.COM.jpg',NULL,'2017-08-10 02:31:26','2017-08-10 02:31:26',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502332286158.COM.jpg',NULL,NULL,NULL,NULL,NULL,46,'images/uassets/2017/8/10/1502332286158.COM.jpg',NULL,NULL),('150233284529953',NULL,'1502332845274.COM.jpg',NULL,'2017-08-10 02:40:45','2017-08-10 02:40:45',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502332845274.COM.jpg',NULL,NULL,NULL,NULL,NULL,47,'images/uassets/2017/8/10/1502332845274.COM.jpg',NULL,NULL),('150233323089450',NULL,'1502333230888.COM.jpg',NULL,'2017-08-10 02:47:10','2017-08-10 02:47:10',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502333230888.COM.jpg',NULL,NULL,NULL,NULL,NULL,48,'images/uassets/2017/8/10/1502333230888.COM.jpg',NULL,NULL),('15023334681759',NULL,'1502333468169.COM.jpg',NULL,'2017-08-10 02:51:08','2017-08-10 02:51:08',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502333468169.COM.jpg',NULL,NULL,NULL,NULL,NULL,49,'images/uassets/2017/8/10/1502333468169.COM.jpg',NULL,NULL),('150233354450478',NULL,'1502333544442.COM.jpg',NULL,'2017-08-10 02:52:24','2017-08-10 02:52:24',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502333544442.COM.jpg',NULL,NULL,NULL,NULL,NULL,50,'images/uassets/2017/8/10/1502333544442.COM.jpg',NULL,NULL),('150233388845966',NULL,'1502333888455.COM.jpg',NULL,'2017-08-10 02:58:08','2017-08-10 02:58:08',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502333888455.COM.jpg',NULL,NULL,NULL,NULL,NULL,51,'images/uassets/2017/8/10/1502333888455.COM.jpg',NULL,NULL),('150233457915951',NULL,'1502334579030.COM.jpg',NULL,'2017-08-10 03:09:39','2017-08-10 03:09:39',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502334579030.COM.jpg',NULL,NULL,NULL,NULL,NULL,53,'images/uassets/2017/8/10/1502334579030.COM.jpg',NULL,NULL),('150233499465914',NULL,'1502334994652.COM.jpg',NULL,'2017-08-10 03:16:35','2017-08-10 03:16:35',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502334994652.COM.jpg',NULL,NULL,NULL,NULL,NULL,54,'images/uassets/2017/8/10/1502334994652.COM.jpg',NULL,NULL),('150233512833591',NULL,'1502335128330.COM.jpg',NULL,'2017-08-10 03:18:48','2017-08-10 03:18:48',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502335128330.COM.jpg',NULL,NULL,NULL,NULL,NULL,55,'images/uassets/2017/8/10/1502335128330.COM.jpg',NULL,NULL),('150233598271260',NULL,'1502335982656.COM.jpg',NULL,'2017-08-10 03:33:02','2017-08-10 03:33:02',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502335982656.COM.jpg',NULL,NULL,NULL,NULL,NULL,56,'images/uassets/2017/8/10/1502335982656.COM.jpg',NULL,NULL),('150233761979843',NULL,'1502337619793.ch5.cc.jpg',NULL,'2017-08-10 04:00:19','2017-08-10 04:00:19',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502337619793.ch5.cc.jpg',NULL,NULL,NULL,NULL,NULL,57,'images/uassets/2017/8/10/1502337619793.ch5.cc.jpg',NULL,NULL),('150233768403072',NULL,'1502337684024.COM.jpg',NULL,'2017-08-10 04:01:24','2017-08-10 04:01:24',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502337684024.COM.jpg',NULL,NULL,NULL,NULL,NULL,58,'images/uassets/2017/8/10/1502337684024.COM.jpg',NULL,NULL),('150233782103077',NULL,'1502337821025.COM.gif',NULL,'2017-08-10 04:03:41','2017-08-10 04:03:41',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502337821025.COM.gif',NULL,NULL,NULL,NULL,NULL,59,'images/uassets/2017/8/10/1502337821025.COM.gif',NULL,NULL),('150233793754245',NULL,'1502337937537.COM.gif',NULL,'2017-08-10 04:05:37','2017-08-10 04:05:37',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502337937537.COM.gif',NULL,NULL,NULL,NULL,NULL,60,'images/uassets/2017/8/10/1502337937537.COM.gif',NULL,NULL),('150233838791728',NULL,'1502338387910.COM.jpg',NULL,'2017-08-10 04:13:10','2017-08-10 04:13:10',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502338387910.COM.jpg',NULL,NULL,NULL,NULL,NULL,61,'images/uassets/2017/8/10/1502338387910.COM.jpg',NULL,NULL),('150233976693339',NULL,'1502339766912.COM.gif',NULL,'2017-08-10 04:36:07','2017-08-10 04:36:07',1,NULL,NULL,'E:\\软件\\wildfly-10.1.0.Final\\standalone\\deployments\\zhiwo-system-web.warimages\\uassets\\2017\\8\\10\\1502339766912.COM.gif',NULL,NULL,NULL,NULL,NULL,62,'images/uassets/2017/8/10/1502339766912.COM.gif',NULL,NULL),('150234702398617',NULL,'1502347023963.COM.gif',NULL,'2017-08-10 06:37:04','2017-08-10 06:37:04',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502347023963.COM.gif',NULL,NULL,NULL,NULL,NULL,63,'images/uassets/2017/8/10/1502347023963.COM.gif',NULL,NULL),('150234710893628',NULL,'1502347108866.COM.gif',NULL,'2017-08-10 06:38:28','2017-08-10 06:38:28',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502347108866.COM.gif',NULL,NULL,NULL,NULL,NULL,64,'images/uassets/2017/8/10/1502347108866.COM.gif',NULL,NULL),('150234716514832',NULL,'1502347165098.COM.gif',NULL,'2017-08-10 06:39:25','2017-08-10 06:39:25',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502347165098.COM.gif',NULL,NULL,NULL,NULL,NULL,65,'images/uassets/2017/8/10/1502347165098.COM.gif',NULL,NULL),('150234731679131',NULL,'1502347316731.COM.gif',NULL,'2017-08-10 06:41:56','2017-08-10 06:41:56',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502347316731.COM.gif',NULL,NULL,NULL,NULL,NULL,66,'images/uassets/2017/8/10/1502347316731.COM.gif',NULL,NULL),('150234756210021',NULL,'1502347562043.COM.gif',NULL,'2017-08-10 06:46:02','2017-08-10 06:46:02',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502347562043.COM.gif',NULL,NULL,NULL,NULL,NULL,67,'images/uassets/2017/8/10/1502347562043.COM.gif',NULL,NULL),('150234851548797',NULL,'1502348515483.COM.gif',NULL,'2017-08-10 07:01:55','2017-08-10 07:01:55',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502348515483.COM.gif',NULL,NULL,NULL,NULL,NULL,68,'images/uassets/2017/8/10/1502348515483.COM.gif',NULL,NULL),('150234883745072',NULL,'1502348837446.COM.gif',NULL,'2017-08-10 07:07:17','2017-08-10 07:07:17',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502348837446.COM.gif',NULL,NULL,NULL,NULL,NULL,69,'images/uassets/2017/8/10/1502348837446.COM.gif',NULL,NULL),('150235149273954',NULL,'1502351492732.COM.jpg',NULL,'2017-08-10 07:51:33','2017-08-10 07:51:33',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502351492732.COM.jpg',NULL,NULL,NULL,NULL,NULL,70,'images/uassets/2017/8/10/1502351492732.COM.jpg',NULL,NULL),('150235829247058',NULL,'1502358292463.JPG',NULL,'2017-08-10 09:44:52','2017-08-10 09:44:52',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502358292463.JPG',NULL,NULL,NULL,NULL,NULL,71,'images/uassets/2017/8/10/1502358292463.JPG',NULL,NULL),('150235913561222',NULL,'1502359135606.jpg',NULL,'2017-08-10 09:58:55','2017-08-10 09:58:55',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502359135606.jpg',NULL,NULL,NULL,NULL,NULL,72,'images/uassets/2017/8/10/1502359135606.jpg',NULL,NULL),('150236435862640',NULL,'1502364358603.jpg',NULL,'2017-08-10 11:25:58','2017-08-10 11:25:58',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\10\\1502364358603.jpg',NULL,NULL,NULL,NULL,NULL,73,'images/uassets/2017/8/10/1502364358603.jpg',NULL,NULL),('150241345781979',NULL,'1502413457729.jpg',NULL,'2017-08-11 01:04:18','2017-08-11 01:04:18',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502413457729.jpg',NULL,NULL,NULL,NULL,NULL,74,'images/uassets/2017/8/11/1502413457729.jpg',NULL,NULL),('150241461191046',NULL,'1502414611871.jpg',NULL,'2017-08-11 01:23:31','2017-08-11 01:23:31',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502414611871.jpg',NULL,NULL,NULL,NULL,NULL,75,'images/uassets/2017/8/11/1502414611871.jpg',NULL,NULL),('150241467326320',NULL,'1502414673207.jpg',NULL,'2017-08-11 01:24:33','2017-08-11 01:24:33',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502414673207.jpg',NULL,NULL,NULL,NULL,NULL,76,'images/uassets/2017/8/11/1502414673207.jpg',NULL,NULL),('150241999867811',NULL,'1502419998673.jpg',NULL,'2017-08-11 02:53:19','2017-08-11 02:53:19',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502419998673.jpg',NULL,NULL,NULL,NULL,NULL,77,'images/uassets/2017/8/11/1502419998673.jpg',NULL,NULL),('150242004220787',NULL,'1502420042192.jpeg',NULL,'2017-08-11 02:54:02','2017-08-11 02:54:02',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp6\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502420042192.jpeg',NULL,NULL,NULL,NULL,NULL,78,'images/uassets/2017/8/11/1502420042192.jpeg',NULL,NULL),('150242513408087',NULL,'1502425134024.jpg',NULL,'2017-08-11 04:18:54','2017-08-11 04:18:54',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502425134024.jpg',NULL,NULL,NULL,NULL,NULL,79,'images/uassets/2017/8/11/1502425134024.jpg',NULL,NULL),('150243367560912',NULL,'1502433675587.jpg',NULL,'2017-08-11 06:41:15','2017-08-11 06:41:15',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502433675587.jpg',NULL,NULL,NULL,NULL,NULL,80,'images/uassets/2017/8/11/1502433675587.jpg',NULL,NULL),('150243519383316',NULL,'1502435193826.jpg',NULL,'2017-08-11 07:06:34','2017-08-11 07:06:34',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502435193826.jpg',NULL,NULL,NULL,NULL,NULL,81,'images/uassets/2017/8/11/1502435193826.jpg',NULL,NULL),('150243744549536',NULL,'1502437445489.jpg',NULL,'2017-08-11 07:44:05','2017-08-11 07:44:05',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502437445489.jpg',NULL,NULL,NULL,NULL,NULL,82,'images/uassets/2017/8/11/1502437445489.jpg',NULL,NULL),('150243750765533',NULL,'1502437507627.gif',NULL,'2017-08-11 07:45:07','2017-08-11 07:45:07',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502437507627.gif',NULL,NULL,NULL,NULL,NULL,83,'images/uassets/2017/8/11/1502437507627.gif',NULL,NULL),('150244078702481',NULL,'1502440787019.jpg',NULL,'2017-08-11 08:39:47','2017-08-11 08:39:47',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502440787019.jpg',NULL,NULL,NULL,NULL,NULL,84,'images/uassets/2017/8/11/1502440787019.jpg',NULL,NULL),('150244970655574',NULL,'1502449706546.jpg',NULL,'2017-08-11 11:08:26','2017-08-11 11:08:26',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502449706546.jpg',NULL,NULL,NULL,NULL,NULL,85,'images/uassets/2017/8/11/1502449706546.jpg',NULL,NULL),('150244977893974',NULL,'1502449778933.jpg',NULL,'2017-08-11 11:09:38','2017-08-11 11:09:38',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502449778933.jpg',NULL,NULL,NULL,NULL,NULL,86,'images/uassets/2017/8/11/1502449778933.jpg',NULL,NULL),('150244978689351',NULL,'1502449786887.jpg',NULL,'2017-08-11 11:09:46','2017-08-11 11:09:46',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\11\\1502449786887.jpg',NULL,NULL,NULL,NULL,NULL,87,'images/uassets/2017/8/11/1502449786887.jpg',NULL,NULL),('15025292039925',NULL,'1502529203958.jpg',NULL,'2017-08-12 09:13:24','2017-08-12 09:13:24',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502529203958.jpg',NULL,NULL,NULL,NULL,NULL,88,'images/uassets/2017/8/12/1502529203958.jpg',NULL,NULL),('150252979084234',NULL,'1502529790774.jpg',NULL,'2017-08-12 09:23:11','2017-08-12 09:23:11',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502529790774.jpg',NULL,NULL,NULL,NULL,NULL,89,'images/uassets/2017/8/12/1502529790774.jpg',NULL,NULL),('150253015351321',NULL,'1502530153474.jpg',NULL,'2017-08-12 09:29:13','2017-08-12 09:29:13',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502530153474.jpg',NULL,NULL,NULL,NULL,NULL,90,'images/uassets/2017/8/12/1502530153474.jpg',NULL,NULL),('150253020598419',NULL,'1502530205924.jpg',NULL,'2017-08-12 09:30:06','2017-08-12 09:30:06',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502530205924.jpg',NULL,NULL,NULL,NULL,NULL,91,'images/uassets/2017/8/12/1502530205924.jpg',NULL,NULL),('150253026642943',NULL,'1502530266424.jpg',NULL,'2017-08-12 09:31:06','2017-08-12 09:31:06',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502530266424.jpg',NULL,NULL,NULL,NULL,NULL,92,'images/uassets/2017/8/12/1502530266424.jpg',NULL,NULL),('150253127544349',NULL,'1502531275385.jpg',NULL,'2017-08-12 09:47:55','2017-08-12 09:47:55',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502531275385.jpg',NULL,NULL,NULL,NULL,NULL,93,'images/uassets/2017/8/12/1502531275385.jpg',NULL,NULL),('150253129814561',NULL,'1502531298140.jpg',NULL,'2017-08-12 09:48:18','2017-08-12 09:48:18',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502531298140.jpg',NULL,NULL,NULL,NULL,NULL,94,'images/uassets/2017/8/12/1502531298140.jpg',NULL,NULL),('150253599038014',NULL,'1502535990354.jpg',NULL,'2017-08-12 11:06:30','2017-08-12 11:06:30',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502535990354.jpg',NULL,NULL,NULL,NULL,NULL,95,'images/uassets/2017/8/12/1502535990354.jpg',NULL,NULL),('150253656671855',NULL,'1502536566713.jpg',NULL,'2017-08-12 11:16:07','2017-08-12 11:16:07',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502536566713.jpg',NULL,NULL,NULL,NULL,NULL,96,'images/uassets/2017/8/12/1502536566713.jpg',NULL,NULL),('150254091663445',NULL,'1502540916163.jpg',NULL,'2017-08-12 12:28:36','2017-08-12 12:28:36',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502540916163.jpg',NULL,NULL,NULL,NULL,NULL,97,'images/uassets/2017/8/12/1502540916163.jpg',NULL,NULL),('15025411459114',NULL,'1502541145906.jpg',NULL,'2017-08-12 12:32:25','2017-08-12 12:32:25',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502541145906.jpg',NULL,NULL,NULL,NULL,NULL,98,'images/uassets/2017/8/12/1502541145906.jpg',NULL,NULL),('150254163378243',NULL,'1502541633776.jpg',NULL,'2017-08-12 12:40:33','2017-08-12 12:40:33',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502541633776.jpg',NULL,NULL,NULL,NULL,NULL,99,'images/uassets/2017/8/12/1502541633776.jpg',NULL,NULL),('150254249406418',NULL,'1502542494009.jpg',NULL,'2017-08-12 12:54:54','2017-08-12 12:54:54',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502542494009.jpg',NULL,NULL,NULL,NULL,NULL,100,'images/uassets/2017/8/12/1502542494009.jpg',NULL,NULL),('150254293183985',NULL,'1502542931834.jpg',NULL,'2017-08-12 13:02:11','2017-08-12 13:02:11',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502542931834.jpg',NULL,NULL,NULL,NULL,NULL,101,'images/uassets/2017/8/12/1502542931834.jpg',NULL,NULL),('150254390099838',NULL,'1502543900991.jpg',NULL,'2017-08-12 13:18:21','2017-08-12 13:18:21',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\12\\1502543900991.jpg',NULL,NULL,NULL,NULL,NULL,102,'images/uassets/2017/8/12/1502543900991.jpg',NULL,NULL),('150268160216529',NULL,'1502681602155.jpg',NULL,'2017-08-14 03:33:22','2017-08-14 03:33:22',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\14\\1502681602155.jpg',NULL,NULL,NULL,NULL,NULL,103,'images/uassets/2017/8/14/1502681602155.jpg',NULL,NULL),('150268444857038',NULL,'1502684448564.jpg',NULL,'2017-08-14 04:20:48','2017-08-14 04:20:48',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\14\\1502684448564.jpg',NULL,NULL,NULL,NULL,NULL,104,'images/uassets/2017/8/14/1502684448564.jpg',NULL,NULL),('15027032203839',NULL,'1502703220376.jpg',NULL,'2017-08-14 09:33:40','2017-08-14 09:33:40',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\14\\1502703220376.jpg',NULL,NULL,NULL,NULL,NULL,105,'images/uassets/2017/8/14/1502703220376.jpg',NULL,NULL),('150310003164596',NULL,'1503100031577.jpg',NULL,'2017-08-18 23:47:12','2017-08-18 23:47:12',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\19\\1503100031577.jpg',NULL,NULL,NULL,NULL,NULL,106,'images/uassets/2017/8/19/1503100031577.jpg',NULL,NULL),('150310035591784',NULL,'1503100355911.jpg',NULL,'2017-08-18 23:52:35','2017-08-18 23:52:35',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\19\\1503100355911.jpg',NULL,NULL,NULL,NULL,NULL,107,'images/uassets/2017/8/19/1503100355911.jpg',NULL,NULL),('150310473362841',NULL,'1503104733603.jpg',NULL,'2017-08-19 01:05:33','2017-08-19 01:05:33',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\19\\1503104733603.jpg',NULL,NULL,NULL,NULL,NULL,108,'images/uassets/2017/8/19/1503104733603.jpg',NULL,NULL),('15032468671632',NULL,'1503246867136.jpg',NULL,'2017-08-20 16:34:27','2017-08-20 16:34:27',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\21\\1503246867136.jpg',NULL,NULL,NULL,NULL,NULL,109,'images/uassets/2017/8/21/1503246867136.jpg',NULL,NULL),('150327743398683',NULL,'1503277433981.jpg',NULL,'2017-08-21 01:03:54','2017-08-21 01:03:54',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\21\\1503277433981.jpg',NULL,NULL,NULL,NULL,NULL,110,'images/uassets/2017/8/21/1503277433981.jpg',NULL,NULL),('150366547266580',NULL,'1503665472644.jpg',NULL,'2017-08-25 12:51:13','2017-08-25 12:51:13',1,NULL,NULL,'D:\\zwoweb_workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\zhiwo-system-web\\images\\uassets\\2017\\8\\25\\1503665472644.jpg',NULL,NULL,NULL,NULL,NULL,111,'images/uassets/2017/8/25/1503665472644.jpg',NULL,NULL),('150375225313983',NULL,'1503752253115.jpg',NULL,'2017-08-26 12:57:33','2017-08-26 12:57:33',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\26\\1503752253115.jpg',NULL,NULL,NULL,NULL,NULL,112,'images/uassets/2017/8/26/1503752253115.jpg',NULL,NULL),('150376063239576',NULL,'1503760632386.jpg',NULL,'2017-08-26 15:17:12','2017-08-26 15:17:12',1,NULL,NULL,'D:\\uassets\\2017\\8\\26\\1503760632386.jpg',NULL,NULL,NULL,NULL,NULL,113,'uassets/2017/8/26/1503760632386.jpg',NULL,NULL),('150376081559413',NULL,'1503760815589.jpg',NULL,'2017-08-26 15:20:16','2017-08-26 15:20:16',1,NULL,NULL,'D:\\uassets\\2017\\8\\26\\1503760815589.jpg',NULL,NULL,NULL,NULL,NULL,114,'uassets/2017/8/26/1503760815589.jpg',NULL,NULL),('150376106167372',NULL,'1503761061663.jpg',NULL,'2017-08-26 15:24:21','2017-08-26 15:24:21',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\26\\1503761061663.jpg',NULL,NULL,NULL,NULL,NULL,115,'uassets/2017/8/26/1503761061663.jpg',NULL,NULL),('150376112665213',NULL,'1503761126647.jpg',NULL,'2017-08-26 15:25:26','2017-08-26 15:25:26',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\26\\1503761126647.jpg',NULL,NULL,NULL,NULL,NULL,116,'uassets/2017/8/26/1503761126647.jpg',NULL,NULL),('150376121124848',NULL,'1503761211244.jpg',NULL,'2017-08-26 15:26:51','2017-08-26 15:26:51',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\26\\1503761211244.jpg',NULL,NULL,NULL,NULL,NULL,117,'uassets/2017/8/26/1503761211244.jpg',NULL,NULL),('150380706222853',NULL,'1503807062182.jpg',NULL,'2017-08-27 04:11:02','2017-08-27 04:11:02',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\27\\1503807062182.jpg',NULL,NULL,NULL,NULL,NULL,118,'uassets/2017/8/27/1503807062182.jpg',NULL,NULL),('150408381442598',NULL,'1504083814398.webp',NULL,'2017-08-30 09:03:35','2017-08-30 09:03:35',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504083814398.webp',NULL,NULL,NULL,NULL,NULL,119,'uassets/2017/8/30/1504083814398.webp',NULL,NULL),('150409073258486',NULL,'1504090707199.webp','1504085428827','2017-08-30 10:58:58','2017-08-30 10:58:58',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504090707199.webp',NULL,NULL,NULL,NULL,NULL,120,'uassets/2017/8/30/1504090707199.webp',NULL,NULL),('150409090906036',NULL,'1504091064401.webp','149879109000689','2017-08-30 11:01:55','2017-08-30 11:01:55',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504091064401.webp',NULL,NULL,NULL,NULL,NULL,121,'uassets/2017/8/30/1504091064401.webp',NULL,NULL),('150409137048038',NULL,'1504091315778.webp','1504091114549','2017-08-30 11:09:30','2017-08-30 11:09:30',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504091315778.webp',NULL,NULL,NULL,NULL,NULL,122,'uassets/2017/8/30/1504091315778.webp',NULL,NULL),('150409144304828',NULL,'1504091443006.webp','1504091377795','2017-08-30 11:10:43','2017-08-30 11:10:43',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504091443006.webp',NULL,NULL,NULL,NULL,NULL,123,'uassets/2017/8/30/1504091443006.webp',NULL,NULL),('150409147811246',NULL,'1504091478076.webp','1504091445504','2017-08-30 11:11:18','2017-08-30 11:11:18',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504091478076.webp',NULL,NULL,NULL,NULL,NULL,124,'uassets/2017/8/30/1504091478076.webp',NULL,NULL),('150409152223672',NULL,'1504091522199.webp','1504091490955','2017-08-30 11:12:02','2017-08-30 11:12:02',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504091522199.webp',NULL,NULL,NULL,NULL,NULL,125,'uassets/2017/8/30/1504091522199.webp',NULL,NULL),('150409155720735',NULL,'1504091557168.webp','1504091527135','2017-08-30 11:12:37','2017-08-30 11:12:37',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504091557168.webp',NULL,NULL,NULL,NULL,NULL,126,'uassets/2017/8/30/1504091557168.webp',NULL,NULL),('15040917752688',NULL,'1504091775222.webp','1504091709763','2017-08-30 11:16:15','2017-08-30 11:16:15',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504091775222.webp',NULL,NULL,NULL,NULL,NULL,127,'uassets/2017/8/30/1504091775222.webp',NULL,NULL),('150409197379638',NULL,'1504091973745.webp','1504091934763','2017-08-30 11:19:33','2017-08-30 11:19:33',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504091973745.webp',NULL,NULL,NULL,NULL,NULL,128,'uassets/2017/8/30/1504091973745.webp',NULL,NULL),('150409249248618',NULL,'1504092492444.webp','1504092428839','2017-08-30 11:28:12','2017-08-30 11:28:12',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504092492444.webp',NULL,NULL,NULL,NULL,NULL,129,'uassets/2017/8/30/1504092492444.webp',NULL,NULL),('150409264499917',NULL,'1504092644961.webp','1504092596212','2017-08-30 11:30:45','2017-08-30 11:30:45',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504092644961.webp',NULL,NULL,NULL,NULL,NULL,130,'uassets/2017/8/30/1504092644961.webp',NULL,NULL),('150409283185526',NULL,'1504092831809.webp','1504092768188','2017-08-30 11:33:51','2017-08-30 11:33:51',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504092831809.webp',NULL,NULL,NULL,NULL,NULL,131,'uassets/2017/8/30/1504092831809.webp',NULL,NULL),('150409288076716',NULL,'1504092880728.webp','1504092847772','2017-08-30 11:34:40','2017-08-30 11:34:40',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504092880728.webp',NULL,NULL,NULL,NULL,NULL,132,'uassets/2017/8/30/1504092880728.webp',NULL,NULL),('150409293049692',NULL,'1504092930446.webp','1504092888385','2017-08-30 11:35:30','2017-08-30 11:35:30',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504092930446.webp',NULL,NULL,NULL,NULL,NULL,133,'uassets/2017/8/30/1504092930446.webp',NULL,NULL),('150409296671218',NULL,'1504092966674.webp','1504092936041','2017-08-30 11:36:06','2017-08-30 11:36:06',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504092966674.webp',NULL,NULL,NULL,NULL,NULL,134,'uassets/2017/8/30/1504092966674.webp',NULL,NULL),('150409311073849',NULL,'1504093110702.webp','1504093070005','2017-08-30 11:38:30','2017-08-30 11:38:30',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093110702.webp',NULL,NULL,NULL,NULL,NULL,135,'uassets/2017/8/30/1504093110702.webp',NULL,NULL),('150409316515364',NULL,'1504093165113.webp','1504093116278','2017-08-30 11:39:25','2017-08-30 11:39:25',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093165113.webp',NULL,NULL,NULL,NULL,NULL,136,'uassets/2017/8/30/1504093165113.webp',NULL,NULL),('150409324074034',NULL,'1504093240704.webp','1504093178176','2017-08-30 11:40:40','2017-08-30 11:40:40',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093240704.webp',NULL,NULL,NULL,NULL,NULL,137,'uassets/2017/8/30/1504093240704.webp',NULL,NULL),('15040932827064',NULL,'1504093282668.webp','1504093246711','2017-08-30 11:41:22','2017-08-30 11:41:22',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093282668.webp',NULL,NULL,NULL,NULL,NULL,138,'uassets/2017/8/30/1504093282668.webp',NULL,NULL),('15040935595072',NULL,'1504093559472.webp','1504093484290','2017-08-30 11:45:59','2017-08-30 11:45:59',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093559472.webp',NULL,NULL,NULL,NULL,NULL,139,'uassets/2017/8/30/1504093559472.webp',NULL,NULL),('150409358955095',NULL,'1504093589511.webp','1504093568256','2017-08-30 11:46:29','2017-08-30 11:46:29',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093589511.webp',NULL,NULL,NULL,NULL,NULL,140,'uassets/2017/8/30/1504093589511.webp',NULL,NULL),('150409361999567',NULL,'1504093619958.webp','1504093596477','2017-08-30 11:47:00','2017-08-30 11:47:00',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093619958.webp',NULL,NULL,NULL,NULL,NULL,141,'uassets/2017/8/30/1504093619958.webp',NULL,NULL),('150409365445589',NULL,'1504093654420.webp','1504093624461','2017-08-30 11:47:34','2017-08-30 11:47:34',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093654420.webp',NULL,NULL,NULL,NULL,NULL,142,'uassets/2017/8/30/1504093654420.webp',NULL,NULL),('150409374235787',NULL,'1504093742321.webp','1504093715778','2017-08-30 11:49:02','2017-08-30 11:49:02',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093742321.webp',NULL,NULL,NULL,NULL,NULL,143,'uassets/2017/8/30/1504093742321.webp',NULL,NULL),('15040937715253',NULL,'1504093771491.webp','1504093749733','2017-08-30 11:49:31','2017-08-30 11:49:31',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093771491.webp',NULL,NULL,NULL,NULL,NULL,144,'uassets/2017/8/30/1504093771491.webp',NULL,NULL),('150409379056456',NULL,'1504093790528.webp','1504093776997','2017-08-30 11:49:50','2017-08-30 11:49:50',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093790528.webp',NULL,NULL,NULL,NULL,NULL,145,'uassets/2017/8/30/1504093790528.webp',NULL,NULL),('150409382655651',NULL,'1504093826522.webp','1504093803955','2017-08-30 11:50:26','2017-08-30 11:50:26',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093826522.webp',NULL,NULL,NULL,NULL,NULL,146,'uassets/2017/8/30/1504093826522.webp',NULL,NULL),('150409392856457',NULL,'1504093928525.webp','1504093892650','2017-08-30 11:52:08','2017-08-30 11:52:08',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093928525.webp',NULL,NULL,NULL,NULL,NULL,147,'uassets/2017/8/30/1504093928525.webp',NULL,NULL),('150409395070995',NULL,'1504093950652.webp','1504093933686','2017-08-30 11:52:30','2017-08-30 11:52:30',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504093950652.webp',NULL,NULL,NULL,NULL,NULL,148,'uassets/2017/8/30/1504093950652.webp',NULL,NULL),('150409416703972',NULL,'1504094167005.webp','1504094118365','2017-08-30 11:56:07','2017-08-30 11:56:07',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504094167005.webp',NULL,NULL,NULL,NULL,NULL,149,'uassets/2017/8/30/1504094167005.webp',NULL,NULL),('15040942321685',NULL,'1504094232067.webp','1504094173900','2017-08-30 11:57:12','2017-08-30 11:57:12',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504094232067.webp',NULL,NULL,NULL,NULL,NULL,150,'uassets/2017/8/30/1504094232067.webp',NULL,NULL),('150409427079164',NULL,'1504094270750.webp','1504094237825','2017-08-30 11:57:50','2017-08-30 11:57:50',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504094270750.webp',NULL,NULL,NULL,NULL,NULL,151,'uassets/2017/8/30/1504094270750.webp',NULL,NULL),('150409430180614',NULL,'1504094301691.webp','1504094276144','2017-08-30 11:58:21','2017-08-30 11:58:21',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504094301691.webp',NULL,NULL,NULL,NULL,NULL,152,'uassets/2017/8/30/1504094301691.webp',NULL,NULL),('150409755135332',NULL,'1504097551167.webp','1504094310402','2017-08-30 12:52:31','2017-08-30 12:52:31',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504097551167.webp',NULL,NULL,NULL,NULL,NULL,153,'uassets/2017/8/30/1504097551167.webp',NULL,NULL),('150409803273478',NULL,'1504098032698.webp','1504097555422','2017-08-30 13:00:32','2017-08-30 13:00:32',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504098032698.webp',NULL,NULL,NULL,NULL,NULL,154,'uassets/2017/8/30/1504098032698.webp',NULL,NULL),('150409806169972',NULL,'1504098061664.webp','1504098034126','2017-08-30 13:01:01','2017-08-30 13:01:01',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504098061664.webp',NULL,NULL,NULL,NULL,NULL,155,'uassets/2017/8/30/1504098061664.webp',NULL,NULL),('150409864940128',NULL,'1504098649350.webp','1504098065074','2017-08-30 13:10:49','2017-08-30 13:10:49',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504098649350.webp',NULL,NULL,NULL,NULL,NULL,156,'uassets/2017/8/30/1504098649350.webp',NULL,NULL),('150409890203567',NULL,'1504098901987.webp','1504098864613','2017-08-30 13:15:02','2017-08-30 13:15:02',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504098901987.webp',NULL,NULL,NULL,NULL,NULL,157,'uassets/2017/8/30/1504098901987.webp',NULL,NULL),('150409894013195',NULL,'1504098940088.webp','1504098903180','2017-08-30 13:15:40','2017-08-30 13:15:40',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504098940088.webp',NULL,NULL,NULL,NULL,NULL,158,'uassets/2017/8/30/1504098940088.webp',NULL,NULL),('15040995103249',NULL,'1504099510287.webp','1504099380925','2017-08-30 13:25:10','2017-08-30 13:25:10',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504099510287.webp',NULL,NULL,NULL,NULL,NULL,159,'uassets/2017/8/30/1504099510287.webp',NULL,NULL),('15040995420061',NULL,'1504099541970.webp','1504099516589','2017-08-30 13:25:42','2017-08-30 13:25:42',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504099541970.webp',NULL,NULL,NULL,NULL,NULL,160,'uassets/2017/8/30/1504099541970.webp',NULL,NULL),('150409965180363',NULL,'1504099651766.webp','1504099546107','2017-08-30 13:27:31','2017-08-30 13:27:31',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504099651766.webp',NULL,NULL,NULL,NULL,NULL,161,'uassets/2017/8/30/1504099651766.webp',NULL,NULL),('150409969087144',NULL,'1504099690777.webp','1504099657133','2017-08-30 13:28:10','2017-08-30 13:28:10',1,NULL,NULL,'D:\\images\\uassets\\2017\\8\\30\\1504099690777.webp',NULL,NULL,NULL,NULL,NULL,162,'uassets/2017/8/30/1504099690777.webp',NULL,NULL);
/*!40000 ALTER TABLE `tb_user_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_group`
--

DROP TABLE IF EXISTS `tb_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_group` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用,0否，1是',
  `CREATOR` varchar(120) DEFAULT NULL COMMENT '创建人',
  `UPDATER` varchar(120) DEFAULT NULL COMMENT '更新人',
  `SORT` int(11) NOT NULL AUTO_INCREMENT COMMENT '排序',
  `ORG_ID` varchar(32) DEFAULT NULL COMMENT '组织结构表ID，该字段用于过滤数据，不做外键关联',
  `CODE` varchar(45) DEFAULT NULL COMMENT '代码，比如管理员角色，可填写为admin_role',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_group`
--

LOCK TABLES `tb_user_group` WRITE;
/*!40000 ALTER TABLE `tb_user_group` DISABLE KEYS */;
INSERT INTO `tb_user_group` VALUES ('150183679493710','超级管理员组','2017-08-04 08:53:15','2017-08-08 04:03:58',0,NULL,NULL,1,NULL,'adminGroup'),('150236982949469','weew','2017-08-10 12:57:09','2017-08-10 12:57:09',0,NULL,NULL,4,NULL,'ewew'),('150250019597417','test','2017-08-12 01:09:56','2017-08-12 01:20:37',0,NULL,NULL,9,NULL,'test');
/*!40000 ALTER TABLE `tb_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_group_role`
--

DROP TABLE IF EXISTS `tb_user_group_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_group_role` (
  `ID` varchar(32) NOT NULL,
  `USERGROUP_ID` varchar(32) DEFAULT NULL,
  `ROLE_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_USERGROUP_idx` (`USERGROUP_ID`),
  KEY `FK_USERGROUP_ROLE_idx` (`ROLE_ID`),
  CONSTRAINT `FK_USERGROUP_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `tb_role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_USERGROUP_USER` FOREIGN KEY (`USERGROUP_ID`) REFERENCES `tb_user_group` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组——角色中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_group_role`
--

LOCK TABLES `tb_user_group_role` WRITE;
/*!40000 ALTER TABLE `tb_user_group_role` DISABLE KEYS */;
INSERT INTO `tb_user_group_role` VALUES ('150183758332847','150183679493710','150183669467347'),('150250083811733','150250019597417','150183669467347'),('15025008381185454','150250019597417','150236810620045');
/*!40000 ALTER TABLE `tb_user_group_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_quantity_report`
--

DROP TABLE IF EXISTS `tb_user_quantity_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_quantity_report` (
  `ID` varchar(32) NOT NULL,
  `USER_ASSET_ID` varchar(120) DEFAULT NULL COMMENT '用户名',
  `USER_ID` varchar(120) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='质检报告中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_quantity_report`
--

LOCK TABLES `tb_user_quantity_report` WRITE;
/*!40000 ALTER TABLE `tb_user_quantity_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user_quantity_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_trade_marke`
--

DROP TABLE IF EXISTS `tb_user_trade_marke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user_trade_marke` (
  `ID` varchar(32) NOT NULL,
  `MARK_CODE` varchar(120) DEFAULT NULL COMMENT '商标注册号',
  `MARK_CODE_AUTH` varchar(120) DEFAULT NULL COMMENT '商标注册证明',
  `BRAND_AUTH` varchar(45) DEFAULT NULL COMMENT '品牌授权证明',
  `BRAND_AUTH_INEFFITIVE` varchar(45) DEFAULT NULL COMMENT '品牌授权有效期',
  `CREATE_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `UPDATE_DATE` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  `USER_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户商标';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_trade_marke`
--

LOCK TABLES `tb_user_trade_marke` WRITE;
/*!40000 ALTER TABLE `tb_user_trade_marke` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user_trade_marke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_shop_config`
--

DROP TABLE IF EXISTS `web_shop_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_shop_config` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(45) DEFAULT '智惠多商城' COMMENT '商店名称',
  `TITLE` varchar(45) DEFAULT '智慧多商城-正品低价、品质保障、配送及时、轻松购物！' COMMENT '商店标题',
  `KEY_WORLDS` varchar(45) DEFAULT NULL COMMENT '商店关键字',
  `DESCRIPTION` varchar(45) DEFAULT NULL COMMENT '商店描述',
  `TELEPHONE` varchar(45) DEFAULT NULL COMMENT '客服电话',
  `STATISTICS_CODE` varchar(200) DEFAULT NULL,
  `NUMBER_COMMEMT` int(11) DEFAULT '2' COMMENT '显示在商品详情页的每页用户评论数量,默认5',
  `INDEX_PAGESIZE` int(11) DEFAULT '10' COMMENT '商品首页列表分页的数量',
  `CATEGORY_PAGESIZE` int(11) DEFAULT NULL COMMENT '商品分类页列表的数量',
  `PRO_IMAGE_PATH` varchar(100) DEFAULT NULL COMMENT '设置微信端读取商品图片的路径,例如：http://您的域名',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='前台商店设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_shop_config`
--

LOCK TABLES `web_shop_config` WRITE;
/*!40000 ALTER TABLE `web_shop_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_shop_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_shop_menu`
--

DROP TABLE IF EXISTS `web_shop_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_shop_menu` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(45) DEFAULT NULL COMMENT '名称',
  `ICON` varchar(120) DEFAULT NULL COMMENT '图标',
  `LINK` varchar(100) DEFAULT NULL COMMENT '链接地址',
  `SORT` int(11) DEFAULT NULL COMMENT '排序',
  `DESCRIPTION` varchar(45) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`ID`),
  KEY `SORTINDEX` (`SORT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自定义菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_shop_menu`
--

LOCK TABLES `web_shop_menu` WRITE;
/*!40000 ALTER TABLE `web_shop_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_shop_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wechat_config`
--

DROP TABLE IF EXISTS `wechat_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wechat_config` (
  `ID` varchar(32) NOT NULL,
  `DESCRIPTION` varchar(45) DEFAULT NULL COMMENT '商店描述',
  `NAME` varchar(45) DEFAULT NULL COMMENT '名称',
  `TOKEN` varchar(32) DEFAULT NULL COMMENT '此处“Token”内容与对接的微信公众号中的Token值一致。',
  `APPID` varchar(32) DEFAULT NULL COMMENT '微信分配的公众账号ID ',
  `APPSECRET` varchar(45) DEFAULT NULL COMMENT '微信密钥',
  `MCH_ID` varchar(32) DEFAULT NULL COMMENT '微信支付分配的商户号',
  `REFRESH_TIME` int(11) DEFAULT NULL COMMENT '后台access_token刷新时间，单位为秒',
  `ATTENDTION_REPLY` varchar(80) DEFAULT NULL COMMENT '关注回复内容',
  `BINDING_REPLY` varchar(45) DEFAULT NULL COMMENT '绑定后回复内容回复内容',
  `AUTO_REPLY` varchar(45) DEFAULT NULL COMMENT '自动回复',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信基础配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wechat_config`
--

LOCK TABLES `wechat_config` WRITE;
/*!40000 ALTER TABLE `wechat_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `wechat_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wechat_push`
--

DROP TABLE IF EXISTS `wechat_push`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wechat_push` (
  `ID` varchar(32) NOT NULL,
  `DESCRIPTION` varchar(45) DEFAULT NULL COMMENT '描述',
  `CONTENT` varchar(120) DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信消息推送';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wechat_push`
--

LOCK TABLES `wechat_push` WRITE;
/*!40000 ALTER TABLE `wechat_push` DISABLE KEYS */;
/*!40000 ALTER TABLE `wechat_push` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wechat_remind`
--

DROP TABLE IF EXISTS `wechat_remind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wechat_remind` (
  `ID` varchar(32) NOT NULL,
  `IF_REMIND_ON_ORDER` int(11) DEFAULT '1' COMMENT '下单微信提醒,1是，0否',
  `REMIND_CONTENT` varchar(80) DEFAULT NULL COMMENT '下单微信内容,例如恭喜你参团成功！',
  `IF_REMIND_ON_SEND` int(11) DEFAULT '1' COMMENT '发货微信提醒,1是，0否',
  `REMIND_CONTENT_SEND` varchar(80) DEFAULT NULL COMMENT '发货微信内容,例如您购买的商品（订单号：$order_sn）已经发货请注意查收！快递号：$shoping_code',
  `IF_REMIND_ON_CANCEL` int(11) DEFAULT '1' COMMENT '订单取消微信提醒,1是，0否',
  `REMIND_CONTENT_CANCEL` varchar(80) DEFAULT NULL COMMENT '订单取消，微信内容,例如您购买的商品（订单号：$order_sn）已经发货请注意查收！快递号：$shoping_code',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信提醒';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wechat_remind`
--

LOCK TABLES `wechat_remind` WRITE;
/*!40000 ALTER TABLE `wechat_remind` DISABLE KEYS */;
/*!40000 ALTER TABLE `wechat_remind` ENABLE KEYS */;
UNLOCK TABLES;
