-- MySQL dump 10.13  Distrib 5.7.29, for Win64 (x86_64)
--
-- Host: localhost    Database: db_1910_project
-- ------------------------------------------------------
-- Server version	5.7.29

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add image',7,'add_image'),(26,'Can change image',7,'change_image'),(27,'Can delete image',7,'delete_image'),(28,'Can view image',7,'view_image'),(29,'Can add new',8,'add_new'),(30,'Can change new',8,'change_new'),(31,'Can delete new',8,'delete_new'),(32,'Can view new',8,'view_new'),(33,'Can add 轮播图',9,'add_banner'),(34,'Can change 轮播图',9,'change_banner'),(35,'Can delete 轮播图',9,'delete_banner'),(36,'Can view 轮播图',9,'view_banner'),(37,'Can add 友情链接',10,'add_link'),(38,'Can change 友情链接',10,'change_link'),(39,'Can delete 友情链接',10,'delete_link'),(40,'Can view 友情链接',10,'view_link'),(41,'Can add 标签',11,'add_tag'),(42,'Can change 标签',11,'change_tag'),(43,'Can delete 标签',11,'delete_tag'),(44,'Can view 标签',11,'view_tag'),(45,'Can add 文章',12,'add_artical'),(46,'Can change 文章',12,'change_artical'),(47,'Can delete 文章',12,'delete_artical'),(48,'Can view 文章',12,'view_artical'),(49,'Can add 评论',13,'add_comment'),(50,'Can change 评论',13,'change_comment'),(51,'Can delete 评论',13,'delete_comment'),(52,'Can view 评论',13,'view_comment'),(53,'Can add 分类',14,'add_classif'),(54,'Can change 分类',14,'change_classif'),(55,'Can delete 分类',14,'delete_classif'),(56,'Can view 分类',14,'view_classif');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_project_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_project_user_id` FOREIGN KEY (`user_id`) REFERENCES `project_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-03-31 03:38:27.289846','1','疫情',1,'[{\"added\": {}}]',14,1),(2,'2020-03-31 03:38:35.503975','1','疫情',1,'[{\"added\": {}}]',11,1),(3,'2020-03-31 03:38:49.864289','2','医疗',1,'[{\"added\": {}}]',11,1),(4,'2020-03-31 03:38:52.585176','1','138人，奋战65天',1,'[{\"added\": {}}]',12,1),(5,'2020-03-31 03:40:53.020908','3','互联网',1,'[{\"added\": {}}]',11,1),(6,'2020-03-31 03:40:59.173623','2','互联网“线上诊间”正',1,'[{\"added\": {}}]',12,1),(7,'2020-03-31 03:44:56.562272','1','服饰',1,'[{\"added\": {}}]',9,1),(8,'2020-03-31 03:45:11.897551','2','水果',1,'[{\"added\": {}}]',9,1),(9,'2020-03-31 03:45:27.283470','3','简约',1,'[{\"added\": {}}]',9,1),(10,'2020-03-31 04:02:58.093343','3','简约',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',9,1),(11,'2020-03-31 04:03:34.968870','3','简约',2,'[]',9,1),(12,'2020-03-31 04:03:42.330427','2','水果',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',9,1),(13,'2020-03-31 04:03:47.339510','1','服饰',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',9,1),(14,'2020-03-31 04:27:06.476223','1','互联网',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',14,1),(15,'2020-03-31 04:27:08.725484','2','互联网“线上诊间”正',2,'[]',12,1),(16,'2020-03-31 04:27:33.853068','2','疫情',1,'[{\"added\": {}}]',14,1),(17,'2020-03-31 04:27:45.029226','1','138人，奋战65天',2,'[{\"changed\": {\"fields\": [\"classif\"]}}]',12,1),(18,'2020-03-31 04:54:48.682720','1','good',1,'[{\"added\": {}}]',13,1),(19,'2020-03-31 05:06:29.108402','1','百度',1,'[{\"added\": {}}]',10,1),(20,'2020-03-31 12:26:56.141719','2','互联网“线上诊间”正',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',12,1),(21,'2020-03-31 12:27:06.386123','1','138人，奋战65天',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',12,1),(22,'2020-03-31 12:30:19.078081','3','综艺',1,'[{\"added\": {}}]',14,1),(23,'2020-03-31 12:30:34.910185','4','青春有你',1,'[{\"added\": {}}]',11,1),(24,'2020-03-31 12:30:38.684622','3','《青春有你2》',1,'[{\"added\": {}}]',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(12,'project','artical'),(9,'project','banner'),(14,'project','classif'),(13,'project','comment'),(7,'project','image'),(10,'project','link'),(8,'project','new'),(11,'project','tag'),(6,'project','user'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-30 10:59:33.002138'),(2,'contenttypes','0002_remove_content_type_name','2020-03-30 10:59:33.116615'),(3,'auth','0001_initial','2020-03-30 10:59:33.457382'),(4,'auth','0002_alter_permission_name_max_length','2020-03-30 10:59:33.523833'),(5,'auth','0003_alter_user_email_max_length','2020-03-30 10:59:33.529819'),(6,'auth','0004_alter_user_username_opts','2020-03-30 10:59:33.536798'),(7,'auth','0005_alter_user_last_login_null','2020-03-30 10:59:33.542782'),(8,'auth','0006_require_contenttypes_0002','2020-03-30 10:59:33.546607'),(9,'auth','0007_alter_validators_add_error_messages','2020-03-30 10:59:33.552257'),(10,'auth','0008_alter_user_username_max_length','2020-03-30 10:59:33.558329'),(11,'auth','0009_alter_user_last_name_max_length','2020-03-30 10:59:33.564350'),(12,'project','0001_initial','2020-03-30 10:59:33.980580'),(13,'admin','0001_initial','2020-03-30 10:59:34.171472'),(14,'admin','0002_logentry_remove_auto_add','2020-03-30 10:59:34.179393'),(15,'admin','0003_logentry_add_action_flag_choices','2020-03-30 10:59:34.188369'),(16,'sessions','0001_initial','2020-03-30 10:59:34.242871'),(17,'project','0002_auto_20200330_1946','2020-03-30 11:46:25.640127');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('e7fa7z7smnb030k6xw1uxvll2grt8j6a','MjU0NzdiMTQxMGFjOTZlYWE1ZmU1MDkzZTc0OGQ3NDM5NjRlMjU2Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NmU4ZGFlZDMwODBhOWMzNWM3ODE3OWJiMTk3ZWFhYzA1MjVkNDdhIn0=','2020-04-15 12:47:49.242533');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_artical`
--

DROP TABLE IF EXISTS `project_artical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_artical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `title` varchar(10) NOT NULL,
  `content` longtext NOT NULL,
  `introduce` varchar(100) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `see` int(11) NOT NULL,
  `is_top` tinyint(1) NOT NULL,
  `classif_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_artical_classif_id_edb2be9c_fk_project_classif_id` (`classif_id`),
  KEY `project_artical_user_id_87a59af2_fk_project_user_id` (`user_id`),
  CONSTRAINT `project_artical_classif_id_edb2be9c_fk_project_classif_id` FOREIGN KEY (`classif_id`) REFERENCES `project_classif` (`id`),
  CONSTRAINT `project_artical_user_id_87a59af2_fk_project_user_id` FOREIGN KEY (`user_id`) REFERENCES `project_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_artical`
--

LOCK TABLES `project_artical` WRITE;
/*!40000 ALTER TABLE `project_artical` DISABLE KEYS */;
INSERT INTO `project_artical` VALUES (1,'2020-03-31 03:38:52.574260','2020-03-31 12:27:06.384096',0,'138人，奋战65天','<p style=\"color: rgb(51, 51, 51); font-family: 微软雅黑,&amp;quot;Microsoft YaHei&amp;quot;,arial,sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; outline-color: invert; outline-style: none; outline-width: 0px; padding-bottom: 12px; padding-left: 0px; padding-right: 0px; padding-top: 12px; text-align: left; text-decoration: none; text-indent: 2em; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">46人，59天，首支返京的北京医疗队</p><p style=\"color: rgb(51, 51, 51); font-family: 微软雅黑,&amp;quot;Microsoft YaHei&amp;quot;,arial,sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; outline-color: invert; outline-style: none; outline-width: 0px; padding-bottom: 12px; padding-left: 0px; padding-right: 0px; padding-top: 12px; text-align: left; text-decoration: none; text-indent: 2em; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">在武汉抗疫一线连续奋战了59天后，3月25日晚9时10分，在结束了5小时36分的旅途之后，随着G68次列车驶达北京西站，来自北京中医药大学东直门医院和北京中医药大学东方医院的共46名医疗队队员回京。这是国家中医药管理局派出的第二支驰援武汉的中医医疗队，也是首支返京的驰援武汉医疗队。</p><p style=\"line-height: 16px;\"><img title=\"\" alt=\"1.jpg\" src=\"/media/news/1_20200331202705.jpg\"/></p><p><br/></p>','援鄂北京医疗队返京','article/2020/03/31/1.jpg',0,1,2,1),(2,'2020-03-31 03:40:59.164678','2020-03-31 12:26:56.139763',0,'互联网“线上诊间”正','<p style=\"text-align: center;\"><span style=\"display: inline !important; float: none; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: 微软雅黑,&quot;Microsoft YaHei&quot;,arial,sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 2em; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">3月30日上午，安徽医科大学第二附属医院互联网医院“线上诊间”正式启用，该院儿科、妇产科、普外科、心血管内科、消化内科、感染科、内分泌科等20多个专业的医生轮流排班，将全力为广大患者在线提供诊疗服务。为让患者享受更多的便捷，目前，医院专门开设互联网诊间，将面对面问诊从普通的诊室搬到了网上，更加方便患者就医。凭借互联网医疗的优势，医院也将把更多的医疗服务推向“移动端”</span></p><p style=\"line-height: 16px; text-indent: 2em;\"><img title=\"\" alt=\"2.jpg\" src=\"/media/news/2_20200331202653.jpg\"/></p><p><br/></p>','安徽医科大学第二附属医院互联网“线上诊间”正式启用','article/2020/03/31/2.jpg',0,0,1,1),(3,'2020-03-31 12:30:38.680633','2020-03-31 12:30:38.680633',0,'《青春有你2》','<p style=\"color: rgb(51, 51, 51); font-family: 微软雅黑,&amp;quot;Microsoft YaHei&amp;quot;,arial,sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; outline-color: invert; outline-style: none; outline-width: 0px; padding-bottom: 12px; padding-left: 0px; padding-right: 0px; padding-top: 12px; text-align: left; text-decoration: none; text-indent: 2em; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">这次导师和选手的关注度都很高，而蔡徐坤也从上一季的最强厂牌，升级为本季的PD。从舞台的中心到评委席的C位，蔡徐坤短时间里的成长有目共睹。虽然被网络暴力了多次，依然阻挡不了他追寻和自我突破的脚步。</p><p style=\"color: rgb(51, 51, 51); font-family: 微软雅黑,&amp;quot;Microsoft YaHei&amp;quot;,arial,sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; outline-color: invert; outline-style: none; outline-width: 0px; padding-bottom: 12px; padding-left: 0px; padding-right: 0px; padding-top: 12px; text-align: left; text-decoration: none; text-indent: 2em; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">这次以“蔡PD”的身份回归，也让粉丝看到了他更加专业的一面，颜值只是辅助的利器，实力才是王者之风。</p><p style=\"text-align: center;\"><img title=\"\" alt=\"13.jpg\" src=\"/media/news/13_20200331202952.jpg\"/></p>','《青春有你2》见证了蔡徐坤的成长！受益者除了虞书欣，还有TA们','article/2020/03/31/13.jpg',0,1,3,1);
/*!40000 ALTER TABLE `project_artical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_artical_tag`
--

DROP TABLE IF EXISTS `project_artical_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_artical_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artical_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_artical_tag_artical_id_tag_id_0f45ab36_uniq` (`artical_id`,`tag_id`),
  KEY `project_artical_tag_tag_id_c1c6c99a_fk_project_tag_id` (`tag_id`),
  CONSTRAINT `project_artical_tag_artical_id_52909121_fk_project_artical_id` FOREIGN KEY (`artical_id`) REFERENCES `project_artical` (`id`),
  CONSTRAINT `project_artical_tag_tag_id_c1c6c99a_fk_project_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `project_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_artical_tag`
--

LOCK TABLES `project_artical_tag` WRITE;
/*!40000 ALTER TABLE `project_artical_tag` DISABLE KEYS */;
INSERT INTO `project_artical_tag` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,2,3),(6,3,3),(7,3,4);
/*!40000 ALTER TABLE `project_artical_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_banner`
--

DROP TABLE IF EXISTS `project_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `title` varchar(10) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_banner`
--

LOCK TABLES `project_banner` WRITE;
/*!40000 ALTER TABLE `project_banner` DISABLE KEYS */;
INSERT INTO `project_banner` VALUES (1,'2020-03-31 03:44:56.559341','2020-03-31 04:03:47.338513',0,'服饰','banner/2020/03/31/5.jpg','https://www.baidu.com/',0),(2,'2020-03-31 03:45:11.895556','2020-03-31 04:03:42.329430',0,'水果','banner/2020/03/31/4.jpg','https://www.baidu.com/',0),(3,'2020-03-31 03:45:27.281475','2020-03-31 04:03:34.967872',0,'简约','banner/2020/03/31/3.jpg','https://www.baidu.com/',0);
/*!40000 ALTER TABLE `project_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_classif`
--

DROP TABLE IF EXISTS `project_classif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_classif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(10) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_classif`
--

LOCK TABLES `project_classif` WRITE;
/*!40000 ALTER TABLE `project_classif` DISABLE KEYS */;
INSERT INTO `project_classif` VALUES (1,'2020-03-31 03:38:27.287850','2020-03-31 04:27:06.475225',0,'互联网',0),(2,'2020-03-31 04:27:33.852070','2020-03-31 04:27:33.852070',0,'疫情',0),(3,'2020-03-31 12:30:19.077083','2020-03-31 12:30:19.077083',0,'综艺',0);
/*!40000 ALTER TABLE `project_classif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_comment`
--

DROP TABLE IF EXISTS `project_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `content` varchar(300) NOT NULL,
  `article_id` int(11) NOT NULL,
  `useer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_comment_article_id_c8b7b26b_fk_project_artical_id` (`article_id`),
  KEY `project_comment_useer_id_5386bc7a_fk_project_user_id` (`useer_id`),
  CONSTRAINT `project_comment_article_id_c8b7b26b_fk_project_artical_id` FOREIGN KEY (`article_id`) REFERENCES `project_artical` (`id`),
  CONSTRAINT `project_comment_useer_id_5386bc7a_fk_project_user_id` FOREIGN KEY (`useer_id`) REFERENCES `project_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_comment`
--

LOCK TABLES `project_comment` WRITE;
/*!40000 ALTER TABLE `project_comment` DISABLE KEYS */;
INSERT INTO `project_comment` VALUES (1,'2020-03-31 04:54:48.681700','2020-03-31 04:54:48.681700',0,'good',1,1),(2,'2020-04-01 12:47:59.676571','2020-04-01 12:47:59.676571',0,'Lisa',3,2);
/*!40000 ALTER TABLE `project_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_link`
--

DROP TABLE IF EXISTS `project_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `link` varchar(200) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_link`
--

LOCK TABLES `project_link` WRITE;
/*!40000 ALTER TABLE `project_link` DISABLE KEYS */;
INSERT INTO `project_link` VALUES (1,'2020-03-31 05:06:29.107404','2020-03-31 05:06:29.107404',0,'百度','https://www.baidu.com/',0);
/*!40000 ALTER TABLE `project_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_tag`
--

DROP TABLE IF EXISTS `project_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(10) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_tag`
--

LOCK TABLES `project_tag` WRITE;
/*!40000 ALTER TABLE `project_tag` DISABLE KEYS */;
INSERT INTO `project_tag` VALUES (1,'2020-03-31 03:38:35.502978','2020-03-31 03:38:35.502978',0,'疫情',0),(2,'2020-03-31 03:38:49.862294','2020-03-31 03:38:49.862294',0,'医疗',0),(3,'2020-03-31 03:40:53.020908','2020-03-31 03:40:53.020908',0,'互联网',0),(4,'2020-03-31 12:30:34.909188','2020-03-31 12:30:34.909188',0,'青春有你',0);
/*!40000 ALTER TABLE `project_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_user`
--

DROP TABLE IF EXISTS `project_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_user`
--

LOCK TABLES `project_user` WRITE;
/*!40000 ALTER TABLE `project_user` DISABLE KEYS */;
INSERT INTO `project_user` VALUES (1,'pbkdf2_sha256$120000$lehiz27auKiK$NvBOl+OD4g0eHJMAJ1l9sXkFcTKPpndS7330pRFGoGw=','2020-03-31 03:33:08.064447',1,'liuheling','','','liuhrling@qq.com',1,1,'2020-03-30 11:52:16.759778',''),(2,'pbkdf2_sha256$120000$uGwvh6EvN1kv$8V/o54iwDvmUY8y02REm0zdaRA2nUgsZFBnMCPegMnI=','2020-04-01 12:47:49.240247',0,'刘小河','','','',0,1,'2020-04-01 11:28:05.295623','18035721055');
/*!40000 ALTER TABLE `project_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_user_groups`
--

DROP TABLE IF EXISTS `project_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_user_groups_user_id_group_id_dbfa7eb6_uniq` (`user_id`,`group_id`),
  KEY `project_user_groups_group_id_b7bccbe2_fk_auth_group_id` (`group_id`),
  CONSTRAINT `project_user_groups_group_id_b7bccbe2_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `project_user_groups_user_id_eee1bffb_fk_project_user_id` FOREIGN KEY (`user_id`) REFERENCES `project_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_user_groups`
--

LOCK TABLES `project_user_groups` WRITE;
/*!40000 ALTER TABLE `project_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_user_user_permissions`
--

DROP TABLE IF EXISTS `project_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_user_user_permis_user_id_permission_id_24f8710c_uniq` (`user_id`,`permission_id`),
  KEY `project_user_user_pe_permission_id_7e3a8598_fk_auth_perm` (`permission_id`),
  CONSTRAINT `project_user_user_pe_permission_id_7e3a8598_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `project_user_user_pe_user_id_878f8a4f_fk_project_u` FOREIGN KEY (`user_id`) REFERENCES `project_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_user_user_permissions`
--

LOCK TABLES `project_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `project_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-01 22:40:51
