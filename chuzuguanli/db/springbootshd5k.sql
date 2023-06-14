-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootshd5k
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springbootshd5k`
--

/*!40000 DROP DATABASE IF EXISTS `springbootshd5k`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootshd5k` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootshd5k`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-01-18 07:02:17','关于我们','巡游出租','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢? 你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p>','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1674026628857 DEFAULT CHARSET=utf8 COMMENT='在线投诉';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (111,'2023-01-18 07:02:17',1,1,'提问1','回复1',0),(112,'2023-01-18 07:02:17',2,2,'提问2','回复2',2),(113,'2023-01-18 07:02:17',3,3,'提问3','回复3',3),(114,'2023-01-18 07:02:17',4,4,'提问4','回复4',4),(115,'2023-01-18 07:02:17',5,5,'提问5','回复5',5),(116,'2023-01-18 07:02:17',6,6,'提问6','回复6',6),(117,'2023-01-18 07:02:17',7,7,'提问7','回复7',7),(118,'2023-01-18 07:02:17',8,8,'提问8','回复8',8),(1674026126372,'2023-01-18 07:15:26',1,1674026122492,NULL,'主人，我是您的智能助手小搏，请问有什么可以帮您！',NULL),(1674026150718,'2023-01-18 07:15:50',1674026122492,1674026122492,NULL,'您好，在线客服很高兴为您服务！',0),(1674026166345,'2023-01-18 07:16:05',1674026122492,NULL,'工号1司机态度很差',NULL,0),(1674026174522,'2023-01-18 07:16:14',1674026122492,1674026122492,NULL,'主人，我是您的智能助手小搏，请问有什么可以帮您！',0),(1674026597366,'2023-01-18 07:23:16',1674026122492,1674026122492,NULL,'主人，我是您的智能助手小搏，请问有什么可以帮您！',0),(1674026600992,'2023-01-18 07:23:20',1674026122492,1674026122492,NULL,'您好，在线客服很高兴为您服务！',0),(1674026605284,'2023-01-18 07:23:25',1674026122492,NULL,'号1司机态度很差',NULL,0),(1674026628856,'2023-01-18 07:23:48',1674026122492,1,NULL,'已处罚',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chathelper`
--

DROP TABLE IF EXISTS `chathelper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chathelper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ask` varchar(200) DEFAULT NULL COMMENT '提问',
  `reply` longtext COMMENT '回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1674026361078 DEFAULT CHARSET=utf8 COMMENT='聊天助手表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chathelper`
--

LOCK TABLES `chathelper` WRITE;
/*!40000 ALTER TABLE `chathelper` DISABLE KEYS */;
INSERT INTO `chathelper` VALUES (121,'2023-01-18 07:02:17','提问1','回复1'),(122,'2023-01-18 07:02:17','提问2','回复2'),(123,'2023-01-18 07:02:17','提问3','回复3'),(124,'2023-01-18 07:02:17','提问4','回复4'),(125,'2023-01-18 07:02:17','提问5','回复5'),(126,'2023-01-18 07:02:17','提问6','回复6'),(127,'2023-01-18 07:02:17','提问7','回复7'),(128,'2023-01-18 07:02:17','提问8','回复8'),(1674026361077,'2023-01-18 07:19:20','在不','在 ');
/*!40000 ALTER TABLE `chathelper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheliangzhuangtai`
--

DROP TABLE IF EXISTS `cheliangzhuangtai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheliangzhuangtai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chuzuchebianhao` varchar(200) DEFAULT NULL COMMENT '出租车编号',
  `chuzuchepinpai` varchar(200) DEFAULT NULL COMMENT '出租车品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `cheliangzhuangtai` varchar(200) DEFAULT NULL COMMENT '车辆状态',
  `beizhu` longtext COMMENT '备注',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1674026425012 DEFAULT CHARSET=utf8 COMMENT='车辆状态';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheliangzhuangtai`
--

LOCK TABLES `cheliangzhuangtai` WRITE;
/*!40000 ALTER TABLE `cheliangzhuangtai` DISABLE KEYS */;
INSERT INTO `cheliangzhuangtai` VALUES (51,'2023-01-18 07:02:17','工号1','姓名1','出租车编号1','出租车品牌1','车牌号1','良好','备注1','2023-01-18 15:02:17'),(52,'2023-01-18 07:02:17','工号2','姓名2','出租车编号2','出租车品牌2','车牌号2','良好','备注2','2023-01-18 15:02:17'),(53,'2023-01-18 07:02:17','工号3','姓名3','出租车编号3','出租车品牌3','车牌号3','良好','备注3','2023-01-18 15:02:17'),(54,'2023-01-18 07:02:17','工号4','姓名4','出租车编号4','出租车品牌4','车牌号4','良好','备注4','2023-01-18 15:02:17'),(55,'2023-01-18 07:02:17','工号5','姓名5','出租车编号5','出租车品牌5','车牌号5','良好','备注5','2023-01-18 15:02:17'),(56,'2023-01-18 07:02:17','工号6','姓名6','出租车编号6','出租车品牌6','车牌号6','良好','备注6','2023-01-18 15:02:17'),(57,'2023-01-18 07:02:17','工号7','姓名7','出租车编号7','出租车品牌7','车牌号7','良好','备注7','2023-01-18 15:02:17'),(58,'2023-01-18 07:02:17','工号8','姓名8','出租车编号8','出租车品牌8','车牌号8','良好','备注8','2023-01-18 15:02:17'),(1674026425011,'2023-01-18 07:20:24','222','李可可','025','东方','粤265','良好','1','2023-01-18 15:20:22');
/*!40000 ALTER TABLE `cheliangzhuangtai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chengke`
--

DROP TABLE IF EXISTS `chengke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `chengkexingming` varchar(200) NOT NULL COMMENT '乘客姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1674026122493 DEFAULT CHARSET=utf8 COMMENT='乘客';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengke`
--

LOCK TABLES `chengke` WRITE;
/*!40000 ALTER TABLE `chengke` DISABLE KEYS */;
INSERT INTO `chengke` VALUES (21,'2023-01-18 07:02:17','用户名1','乘客姓名1','e10adc3949ba59abbe56e057f20f883e','男','13823888881','upload/chengke_touxiang1.jpg'),(22,'2023-01-18 07:02:17','用户名2','乘客姓名2','e10adc3949ba59abbe56e057f20f883e','男','13823888882','upload/chengke_touxiang2.jpg'),(23,'2023-01-18 07:02:17','用户名3','乘客姓名3','e10adc3949ba59abbe56e057f20f883e','男','13823888883','upload/chengke_touxiang3.jpg'),(24,'2023-01-18 07:02:17','用户名4','乘客姓名4','e10adc3949ba59abbe56e057f20f883e','男','13823888884','upload/chengke_touxiang4.jpg'),(25,'2023-01-18 07:02:17','用户名5','乘客姓名5','e10adc3949ba59abbe56e057f20f883e','男','13823888885','upload/chengke_touxiang5.jpg'),(26,'2023-01-18 07:02:17','用户名6','乘客姓名6','e10adc3949ba59abbe56e057f20f883e','男','13823888886','upload/chengke_touxiang6.jpg'),(27,'2023-01-18 07:02:17','用户名7','乘客姓名7','e10adc3949ba59abbe56e057f20f883e','男','13823888887','upload/chengke_touxiang7.jpg'),(28,'2023-01-18 07:02:17','用户名8','乘客姓名8','e10adc3949ba59abbe56e057f20f883e','男','13823888888','upload/chengke_touxiang8.jpg'),(1674026122492,'2023-01-18 07:15:22','111','胡二宇','698d51a19d8a121ce581499d7b701668','男','13612512514','upload/1674026121958.jpg');
/*!40000 ALTER TABLE `chengke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chexianxinxi`
--

DROP TABLE IF EXISTS `chexianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chexianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hetongbianhao` varchar(200) DEFAULT NULL COMMENT '合同编号',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `chuzuchepinpai` varchar(200) DEFAULT NULL COMMENT '出租车品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `chuzuchebianhao` varchar(200) DEFAULT NULL COMMENT '出租车编号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `baoxiangongsi` varchar(200) DEFAULT NULL COMMENT '保险公司',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `daoqishijian` date DEFAULT NULL COMMENT '到期时间',
  `baoxianfei` varchar(200) DEFAULT NULL COMMENT '保险费',
  `hetong` longtext COMMENT '合同',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hetongbianhao` (`hetongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1674026407529 DEFAULT CHARSET=utf8 COMMENT='车险信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chexianxinxi`
--

LOCK TABLES `chexianxinxi` WRITE;
/*!40000 ALTER TABLE `chexianxinxi` DISABLE KEYS */;
INSERT INTO `chexianxinxi` VALUES (31,'2023-01-18 07:02:17','1111111111','工号1','出租车品牌1','车牌号1','出租车编号1','姓名1','保险公司1','2023-01-18','2023-01-18','保险费1','','备注1'),(32,'2023-01-18 07:02:17','2222222222','工号2','出租车品牌2','车牌号2','出租车编号2','姓名2','保险公司2','2023-01-18','2023-01-18','保险费2','','备注2'),(33,'2023-01-18 07:02:17','3333333333','工号3','出租车品牌3','车牌号3','出租车编号3','姓名3','保险公司3','2023-01-18','2023-01-18','保险费3','','备注3'),(34,'2023-01-18 07:02:17','4444444444','工号4','出租车品牌4','车牌号4','出租车编号4','姓名4','保险公司4','2023-01-18','2023-01-18','保险费4','','备注4'),(35,'2023-01-18 07:02:17','5555555555','工号5','出租车品牌5','车牌号5','出租车编号5','姓名5','保险公司5','2023-01-18','2023-01-18','保险费5','','备注5'),(36,'2023-01-18 07:02:17','6666666666','工号6','出租车品牌6','车牌号6','出租车编号6','姓名6','保险公司6','2023-01-18','2023-01-18','保险费6','','备注6'),(37,'2023-01-18 07:02:17','7777777777','工号7','出租车品牌7','车牌号7','出租车编号7','姓名7','保险公司7','2023-01-18','2023-01-18','保险费7','','备注7'),(38,'2023-01-18 07:02:17','8888888888','工号8','出租车品牌8','车牌号8','出租车编号8','姓名8','保险公司8','2023-01-18','2023-01-28','保险费8','','备注8'),(1674026407528,'2023-01-18 07:20:06','1674026384584','222','东方','粤265','025','李可可','品安保险','2023-01-11','2023-02-04','2000','upload/1674026405273.doc','3232');
/*!40000 ALTER TABLE `chexianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/1674026317346.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `chuzuchebianhao` varchar(200) DEFAULT NULL COMMENT '出租车编号',
  `chuzuchepinpai` varchar(200) DEFAULT NULL COMMENT '出租车品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `chengkexingming` varchar(200) DEFAULT NULL COMMENT '乘客姓名',
  `chengchedian` varchar(200) DEFAULT NULL COMMENT '乘车点',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `shizhang` varchar(200) DEFAULT NULL COMMENT '时长',
  `licheng` varchar(200) DEFAULT NULL COMMENT '里程',
  `zongfeiyong` varchar(200) DEFAULT NULL COMMENT '总费用',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1674026481430 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (91,'2023-01-18 07:02:17','1111111111','出租车编号1','出租车品牌1','车牌号1','工号1','姓名1','用户名1','乘客姓名1','乘车点1','目的地1','时长1','里程1','总费用1','2023-01-18 15:02:17','未支付'),(92,'2023-01-18 07:02:17','2222222222','出租车编号2','出租车品牌2','车牌号2','工号2','姓名2','用户名2','乘客姓名2','乘车点2','目的地2','时长2','里程2','总费用2','2023-01-18 15:02:17','未支付'),(93,'2023-01-18 07:02:17','3333333333','出租车编号3','出租车品牌3','车牌号3','工号3','姓名3','用户名3','乘客姓名3','乘车点3','目的地3','时长3','里程3','总费用3','2023-01-18 15:02:17','未支付'),(94,'2023-01-18 07:02:17','4444444444','出租车编号4','出租车品牌4','车牌号4','工号4','姓名4','用户名4','乘客姓名4','乘车点4','目的地4','时长4','里程4','总费用4','2023-01-18 15:02:17','未支付'),(95,'2023-01-18 07:02:17','5555555555','出租车编号5','出租车品牌5','车牌号5','工号5','姓名5','用户名5','乘客姓名5','乘车点5','目的地5','时长5','里程5','总费用5','2023-01-18 15:02:17','未支付'),(96,'2023-01-18 07:02:17','6666666666','出租车编号6','出租车品牌6','车牌号6','工号6','姓名6','用户名6','乘客姓名6','乘车点6','目的地6','时长6','里程6','总费用6','2023-01-18 15:02:17','未支付'),(97,'2023-01-18 07:02:17','7777777777','出租车编号7','出租车品牌7','车牌号7','工号7','姓名7','用户名7','乘客姓名7','乘车点7','目的地7','时长7','里程7','总费用7','2023-01-18 15:02:17','未支付'),(98,'2023-01-18 07:02:17','8888888888','出租车编号8','出租车品牌8','车牌号8','工号8','姓名8','用户名8','乘客姓名8','乘车点8','目的地8','时长8','里程8','总费用8','2023-01-18 15:02:17','未支付'),(1674026481429,'2023-01-18 07:21:20','1674026452159','025','东方','粤265','222','李可可','111','胡二宇','南门','东区','30分钟','80km','60','2023-01-18 15:20:52','已支付');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzixinxi`
--

DROP TABLE IF EXISTS `gongzixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `chuzuchebianhao` varchar(200) DEFAULT NULL COMMENT '出租车编号',
  `chuzuchepinpai` varchar(200) DEFAULT NULL COMMENT '出租车品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `riyingyun` varchar(200) DEFAULT NULL COMMENT '日营运',
  `yingyunlicheng` varchar(200) DEFAULT NULL COMMENT '营运里程',
  `yingyunshouru` varchar(200) DEFAULT NULL COMMENT '营运收入',
  `gongzishouru` varchar(200) DEFAULT NULL COMMENT '工资收入',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1674026292591 DEFAULT CHARSET=utf8 COMMENT='工资信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzixinxi`
--

LOCK TABLES `gongzixinxi` WRITE;
/*!40000 ALTER TABLE `gongzixinxi` DISABLE KEYS */;
INSERT INTO `gongzixinxi` VALUES (41,'2023-01-18 07:02:17','工号1','出租车编号1','出租车品牌1','车牌号1','姓名1','日营运1','营运里程1','营运收入1','工资收入1','2023-01-18 15:02:17','备注1'),(42,'2023-01-18 07:02:17','工号2','出租车编号2','出租车品牌2','车牌号2','姓名2','日营运2','营运里程2','营运收入2','工资收入2','2023-01-18 15:02:17','备注2'),(43,'2023-01-18 07:02:17','工号3','出租车编号3','出租车品牌3','车牌号3','姓名3','日营运3','营运里程3','营运收入3','工资收入3','2023-01-18 15:02:17','备注3'),(44,'2023-01-18 07:02:17','工号4','出租车编号4','出租车品牌4','车牌号4','姓名4','日营运4','营运里程4','营运收入4','工资收入4','2023-01-18 15:02:17','备注4'),(45,'2023-01-18 07:02:17','工号5','出租车编号5','出租车品牌5','车牌号5','姓名5','日营运5','营运里程5','营运收入5','工资收入5','2023-01-18 15:02:17','备注5'),(46,'2023-01-18 07:02:17','工号6','出租车编号6','出租车品牌6','车牌号6','姓名6','日营运6','营运里程6','营运收入6','工资收入6','2023-01-18 15:02:17','备注6'),(47,'2023-01-18 07:02:17','工号7','出租车编号7','出租车品牌7','车牌号7','姓名7','日营运7','营运里程7','营运收入7','工资收入7','2023-01-18 15:02:17','备注7'),(48,'2023-01-18 07:02:17','工号8','出租车编号8','出租车品牌8','车牌号8','姓名8','日营运8','营运里程8','营运收入8','工资收入8','2023-01-18 15:02:17','备注8'),(1674026292590,'2023-01-18 07:18:12','222','025','东方','粤265','李可可','50','100','2000','300','2023-01-18 15:17:51','111');
/*!40000 ALTER TABLE `gongzixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangdaka`
--

DROP TABLE IF EXISTS `jiankangdaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangdaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chuzuchebianhao` varchar(200) DEFAULT NULL COMMENT '出租车编号',
  `chuzuchepinpai` varchar(200) DEFAULT NULL COMMENT '出租车品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `jiankangzhuangtai` varchar(200) DEFAULT NULL COMMENT '健康状态',
  `beizhu` longtext COMMENT '备注',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1674026433489 DEFAULT CHARSET=utf8 COMMENT='健康打卡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangdaka`
--

LOCK TABLES `jiankangdaka` WRITE;
/*!40000 ALTER TABLE `jiankangdaka` DISABLE KEYS */;
INSERT INTO `jiankangdaka` VALUES (61,'2023-01-18 07:02:17','工号1','姓名1','出租车编号1','出租车品牌1','车牌号1','体温1','正常','备注1','2023-01-18 15:02:17'),(62,'2023-01-18 07:02:17','工号2','姓名2','出租车编号2','出租车品牌2','车牌号2','体温2','正常','备注2','2023-01-18 15:02:17'),(63,'2023-01-18 07:02:17','工号3','姓名3','出租车编号3','出租车品牌3','车牌号3','体温3','正常','备注3','2023-01-18 15:02:17'),(64,'2023-01-18 07:02:17','工号4','姓名4','出租车编号4','出租车品牌4','车牌号4','体温4','正常','备注4','2023-01-18 15:02:17'),(65,'2023-01-18 07:02:17','工号5','姓名5','出租车编号5','出租车品牌5','车牌号5','体温5','正常','备注5','2023-01-18 15:02:17'),(66,'2023-01-18 07:02:17','工号6','姓名6','出租车编号6','出租车品牌6','车牌号6','体温6','正常','备注6','2023-01-18 15:02:17'),(67,'2023-01-18 07:02:17','工号7','姓名7','出租车编号7','出租车品牌7','车牌号7','体温7','正常','备注7','2023-01-18 15:02:17'),(68,'2023-01-18 07:02:17','工号8','姓名8','出租车编号8','出租车品牌8','车牌号8','体温8','正常','备注8','2023-01-18 15:02:17'),(1674026433488,'2023-01-18 07:20:33','222','李可可','025','东方','粤265','36.5','正常','11','2023-01-18 15:20:28');
/*!40000 ALTER TABLE `jiankangdaka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meiridaka`
--

DROP TABLE IF EXISTS `meiridaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meiridaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chuzuchebianhao` varchar(200) DEFAULT NULL COMMENT '出租车编号',
  `chuzuchepinpai` varchar(200) DEFAULT NULL COMMENT '出租车品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `kaoqinleixing` varchar(200) DEFAULT NULL COMMENT '考勤类型',
  `beizhu` longtext COMMENT '备注',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1674026439535 DEFAULT CHARSET=utf8 COMMENT='每日打卡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meiridaka`
--

LOCK TABLES `meiridaka` WRITE;
/*!40000 ALTER TABLE `meiridaka` DISABLE KEYS */;
INSERT INTO `meiridaka` VALUES (71,'2023-01-18 07:02:17','工号1','姓名1','出租车编号1','出租车品牌1','车牌号1','签到','备注1','2023-01-18 15:02:17','是',''),(72,'2023-01-18 07:02:17','工号2','姓名2','出租车编号2','出租车品牌2','车牌号2','签到','备注2','2023-01-18 15:02:17','是',''),(73,'2023-01-18 07:02:17','工号3','姓名3','出租车编号3','出租车品牌3','车牌号3','签到','备注3','2023-01-18 15:02:17','是',''),(74,'2023-01-18 07:02:17','工号4','姓名4','出租车编号4','出租车品牌4','车牌号4','签到','备注4','2023-01-18 15:02:17','是',''),(75,'2023-01-18 07:02:17','工号5','姓名5','出租车编号5','出租车品牌5','车牌号5','签到','备注5','2023-01-18 15:02:17','是',''),(76,'2023-01-18 07:02:17','工号6','姓名6','出租车编号6','出租车品牌6','车牌号6','签到','备注6','2023-01-18 15:02:17','是',''),(77,'2023-01-18 07:02:17','工号7','姓名7','出租车编号7','出租车品牌7','车牌号7','签到','备注7','2023-01-18 15:02:17','是',''),(78,'2023-01-18 07:02:17','工号8','姓名8','出租车编号8','出租车品牌8','车牌号8','签到','备注8','2023-01-18 15:02:17','是',''),(1674026439534,'2023-01-18 07:20:39','222','李可可','025','东方','粤265','签到','11','2023-01-18 15:20:36','是','批准');
/*!40000 ALTER TABLE `meiridaka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1674026339682 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (131,'2023-01-18 07:02:17','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(132,'2023-01-18 07:02:17','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(133,'2023-01-18 07:02:17','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(134,'2023-01-18 07:02:17','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(135,'2023-01-18 07:02:17','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(136,'2023-01-18 07:02:17','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(137,'2023-01-18 07:02:17','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(138,'2023-01-18 07:02:17','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(1674026339681,'2023-01-18 07:18:59','巡游出租','巡游出租巡游出租巡游出租巡游出租巡游出租','upload/1674026331338.jpg','<p>巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租巡游出租</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjiashenqing`
--

DROP TABLE IF EXISTS `qingjiashenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjiashenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chuzuchebianhao` varchar(200) DEFAULT NULL COMMENT '出租车编号',
  `chuzuchepinpai` varchar(200) DEFAULT NULL COMMENT '出租车品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `beizhu` longtext COMMENT '备注',
  `qingjiariqi` date DEFAULT NULL COMMENT '请假日期',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1674026448103 DEFAULT CHARSET=utf8 COMMENT='请假申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjiashenqing`
--

LOCK TABLES `qingjiashenqing` WRITE;
/*!40000 ALTER TABLE `qingjiashenqing` DISABLE KEYS */;
INSERT INTO `qingjiashenqing` VALUES (81,'2023-01-18 07:02:17','工号1','姓名1','出租车编号1','出租车品牌1','车牌号1','备注1','2023-01-18','2023-01-18 15:02:17','是',''),(82,'2023-01-18 07:02:17','工号2','姓名2','出租车编号2','出租车品牌2','车牌号2','备注2','2023-01-18','2023-01-18 15:02:17','是',''),(83,'2023-01-18 07:02:17','工号3','姓名3','出租车编号3','出租车品牌3','车牌号3','备注3','2023-01-18','2023-01-18 15:02:17','是',''),(84,'2023-01-18 07:02:17','工号4','姓名4','出租车编号4','出租车品牌4','车牌号4','备注4','2023-01-18','2023-01-18 15:02:17','是',''),(85,'2023-01-18 07:02:17','工号5','姓名5','出租车编号5','出租车品牌5','车牌号5','备注5','2023-01-18','2023-01-18 15:02:17','是',''),(86,'2023-01-18 07:02:17','工号6','姓名6','出租车编号6','出租车品牌6','车牌号6','备注6','2023-01-18','2023-01-18 15:02:17','是',''),(87,'2023-01-18 07:02:17','工号7','姓名7','出租车编号7','出租车品牌7','车牌号7','备注7','2023-01-18','2023-01-18 15:02:17','是',''),(88,'2023-01-18 07:02:17','工号8','姓名8','出租车编号8','出租车品牌8','车牌号8','备注8','2023-01-18','2023-01-18 15:02:17','是',''),(1674026448102,'2023-01-18 07:20:47','222','李可可','025','东方','粤265','22','2023-01-18','2023-01-18 15:20:43','是','批准');
/*!40000 ALTER TABLE `qingjiashenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siji`
--

DROP TABLE IF EXISTS `siji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `jiashizhengleixing` varchar(200) DEFAULT NULL COMMENT '驾驶证类型',
  `jiashizhenghaoma` varchar(200) DEFAULT NULL COMMENT '驾驶证号码',
  `touxiang` longtext COMMENT '头像',
  `chuzuchebianhao` varchar(200) DEFAULT NULL COMMENT '出租车编号',
  `chuzuchepinpai` varchar(200) DEFAULT NULL COMMENT '出租车品牌',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1674026225452 DEFAULT CHARSET=utf8 COMMENT='司机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siji`
--

LOCK TABLES `siji` WRITE;
/*!40000 ALTER TABLE `siji` DISABLE KEYS */;
INSERT INTO `siji` VALUES (11,'2023-01-18 07:02:17','工号1','姓名1','e10adc3949ba59abbe56e057f20f883e','男','13823888881','440300199101010001','年龄1','A','驾驶证号码1','upload/siji_touxiang1.jpg','出租车编号1','出租车品牌1','车牌号1'),(12,'2023-01-18 07:02:17','工号2','姓名2','e10adc3949ba59abbe56e057f20f883e','男','13823888882','440300199202020002','年龄2','A','驾驶证号码2','upload/siji_touxiang2.jpg','出租车编号2','出租车品牌2','车牌号2'),(13,'2023-01-18 07:02:17','工号3','姓名3','e10adc3949ba59abbe56e057f20f883e','男','13823888883','440300199303030003','年龄3','A','驾驶证号码3','upload/siji_touxiang3.jpg','出租车编号3','出租车品牌3','车牌号3'),(14,'2023-01-18 07:02:17','工号4','姓名4','e10adc3949ba59abbe56e057f20f883e','男','13823888884','440300199404040004','年龄4','A','驾驶证号码4','upload/siji_touxiang4.jpg','出租车编号4','出租车品牌4','车牌号4'),(15,'2023-01-18 07:02:17','工号5','姓名5','e10adc3949ba59abbe56e057f20f883e','男','13823888885','440300199505050005','年龄5','A','驾驶证号码5','upload/siji_touxiang5.jpg','出租车编号5','出租车品牌5','车牌号5'),(16,'2023-01-18 07:02:17','工号6','姓名6','e10adc3949ba59abbe56e057f20f883e','男','13823888886','440300199606060006','年龄6','A','驾驶证号码6','upload/siji_touxiang6.jpg','出租车编号6','出租车品牌6','车牌号6'),(17,'2023-01-18 07:02:17','工号7','姓名7','e10adc3949ba59abbe56e057f20f883e','男','13823888887','440300199707070007','年龄7','A','驾驶证号码7','upload/siji_touxiang7.jpg','出租车编号7','出租车品牌7','车牌号7'),(18,'2023-01-18 07:02:17','工号8','姓名8','e10adc3949ba59abbe56e057f20f883e','男','13823888888','440300199808080008','年龄8','A','驾驶证号码8','upload/siji_touxiang8.jpg','出租车编号8','出租车品牌8','车牌号8'),(1674026225451,'2023-01-18 07:17:05','222','李可可','bcbe3365e6ac95ea2c0343a2395834dd','男','13612547847','125125125125125125','36','B','c2565','','025','东方','粤265');
/*!40000 ALTER TABLE `siji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-01-18 07:02:17','系统简介','巡游出租','<p>当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p>','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1674026122492,'111','chengke','乘客','azvte2d5ppg4f3w0zdd67cj114o9copx','2023-01-18 07:15:26','2023-01-18 08:23:57'),(2,1,'admin','users','管理员','x3hbyb2tb85bmxp653fst0b1h37tfysf','2023-01-18 07:16:23','2023-01-18 08:23:33'),(3,1674026225451,'222','siji','司机','0pinp16geimpg86m9hkkpedn1fpz3nk5','2023-01-18 07:19:31','2023-01-18 08:22:56');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-01-18 07:02:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wentidingdan`
--

DROP TABLE IF EXISTS `wentidingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wentidingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `chuzuchebianhao` varchar(200) DEFAULT NULL COMMENT '出租车编号',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `chengkexingming` varchar(200) DEFAULT NULL COMMENT '乘客姓名',
  `chengchedian` varchar(200) DEFAULT NULL COMMENT '乘车点',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `shizhang` varchar(200) DEFAULT NULL COMMENT '时长',
  `licheng` varchar(200) DEFAULT NULL COMMENT '里程',
  `zongfeiyong` varchar(200) DEFAULT NULL COMMENT '总费用',
  `fankuishijian` datetime DEFAULT NULL COMMENT '反馈时间',
  `qingkuangfankui` longtext COMMENT '情况反馈',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1674026514624 DEFAULT CHARSET=utf8 COMMENT='问题订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wentidingdan`
--

LOCK TABLES `wentidingdan` WRITE;
/*!40000 ALTER TABLE `wentidingdan` DISABLE KEYS */;
INSERT INTO `wentidingdan` VALUES (101,'2023-01-18 07:02:17','订单编号1','出租车编号1','车牌号1','工号1','用户名1','乘客姓名1','乘车点1','目的地1','时长1','里程1','总费用1','2023-01-18 15:02:17','情况反馈1',''),(102,'2023-01-18 07:02:17','订单编号2','出租车编号2','车牌号2','工号2','用户名2','乘客姓名2','乘车点2','目的地2','时长2','里程2','总费用2','2023-01-18 15:02:17','情况反馈2',''),(103,'2023-01-18 07:02:17','订单编号3','出租车编号3','车牌号3','工号3','用户名3','乘客姓名3','乘车点3','目的地3','时长3','里程3','总费用3','2023-01-18 15:02:17','情况反馈3',''),(104,'2023-01-18 07:02:17','订单编号4','出租车编号4','车牌号4','工号4','用户名4','乘客姓名4','乘车点4','目的地4','时长4','里程4','总费用4','2023-01-18 15:02:17','情况反馈4',''),(105,'2023-01-18 07:02:17','订单编号5','出租车编号5','车牌号5','工号5','用户名5','乘客姓名5','乘车点5','目的地5','时长5','里程5','总费用5','2023-01-18 15:02:17','情况反馈5',''),(106,'2023-01-18 07:02:17','订单编号6','出租车编号6','车牌号6','工号6','用户名6','乘客姓名6','乘车点6','目的地6','时长6','里程6','总费用6','2023-01-18 15:02:17','情况反馈6',''),(107,'2023-01-18 07:02:17','订单编号7','出租车编号7','车牌号7','工号7','用户名7','乘客姓名7','乘车点7','目的地7','时长7','里程7','总费用7','2023-01-18 15:02:17','情况反馈7',''),(108,'2023-01-18 07:02:17','订单编号8','出租车编号8','车牌号8','工号8','用户名8','乘客姓名8','乘车点8','目的地8','时长8','里程8','总费用8','2023-01-18 15:02:17','情况反馈8',''),(1674026514623,'2023-01-18 07:21:54','1674026452159','025','粤265','222','111','胡二宇','南门','东区','30分钟','80km','60','2023-01-18 15:21:35','如果对订单有疑问可以在这里提交','好的');
/*!40000 ALTER TABLE `wentidingdan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-02 23:59:18
