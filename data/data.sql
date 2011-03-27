/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.1.40-community : Database - FISHERY
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`FISHERY` /*!40100 DEFAULT CHARACTER SET cp1251 */;

USE `FISHERY`;

/*Data for the table `address` */

insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`) values (1,1,1,1,1),(2,1,1,1,2),(3,1,1,1,3),(4,1,2,2,4);

/*Data for the table `area_high` */

insert  into `area_high`(`id`,`name`,`area_low_id`) values (1,'Боровский р-н',1),(2,'Подольский р-н',2);

/*Data for the table `area_low` */

insert  into `area_low`(`id`,`name`,`country_id`) values (1,'Калужская обл',1),(2,'Московская обл',1);

/*Data for the table `comment` */

insert  into `comment`(`id`,`parent`,`message`,`toward`,`location_id`,`profit_id`,`inbox_id`,`talk_id`,`fish_event_id`,`created_by`,`updated_by`,`created_at`,`updated_at`,`root_id`,`lft`,`rgt`,`level`) values (17,NULL,'root','profit',NULL,3,NULL,NULL,NULL,2,2,'2010-05-22 17:10:04','2010-05-22 17:10:06',17,1,16,0),(18,17,'asdfgvbn','profit',NULL,3,NULL,NULL,NULL,2,2,'2010-05-22 17:10:07','2010-05-22 17:10:07',17,2,3,1),(19,17,'\\\\\\\\\\\\\\\\\\\\\\','profit',NULL,3,NULL,NULL,NULL,2,2,'2010-05-22 17:47:04','2010-05-22 17:47:04',17,4,5,1),(20,17,'xc','profit',NULL,3,NULL,NULL,NULL,2,2,'2010-05-22 17:49:08','2010-05-22 17:49:09',17,6,7,1),(21,17,'ASasaS','profit',NULL,3,NULL,NULL,NULL,2,2,'2010-05-22 17:51:09','2010-05-22 17:51:10',17,8,9,1),(22,17,'4T3GERVCDEC','profit',NULL,3,NULL,NULL,NULL,2,2,'2010-05-22 17:51:23','2010-05-22 17:51:24',17,10,11,1),(23,17,'111111','profit',NULL,3,NULL,NULL,NULL,2,2,'2010-05-22 18:44:53','2010-05-22 18:44:53',17,12,15,1),(24,23,'2222222','profit',NULL,3,NULL,NULL,NULL,2,2,'2010-05-22 18:45:07','2010-05-22 18:45:07',17,13,14,2),(25,NULL,'root','fish_event',NULL,NULL,NULL,NULL,NULL,2,2,'2010-05-22 19:21:25','2010-05-22 19:21:26',25,1,4,0),(26,25,'test','fish_event',NULL,NULL,NULL,NULL,NULL,2,2,'2010-05-22 19:21:26','2010-05-22 19:21:26',25,2,3,1),(27,NULL,'root','fish_event',NULL,NULL,NULL,NULL,NULL,2,2,'2010-05-22 19:24:01','2010-05-22 19:24:01',27,1,4,0),(28,27,'fffff','fish_event',NULL,NULL,NULL,NULL,NULL,2,2,'2010-05-22 19:24:01','2010-05-22 19:24:01',27,2,3,1),(29,NULL,'root','fish_event',NULL,NULL,NULL,NULL,1,2,2,'2010-05-22 19:31:32','2010-05-22 19:31:33',29,1,4,0),(30,29,'ddddd','fish_event',NULL,NULL,NULL,NULL,1,2,2,'2010-05-22 19:31:34','2010-05-22 19:31:34',29,2,3,1);

/*Data for the table `country` */

insert  into `country`(`id`,`name`) values (1,'Россия');

/*Data for the table `fish` */

insert  into `fish`(`id`,`name`) values (3,'Карась'),(1,'Окунь'),(2,'Щука');

/*Data for the table `fish_event` */

insert  into `fish_event`(`id`,`date`,`name`,`description`,`rules`,`location_id`,`created_by`,`updated_by`,`created_at`,`updated_at`) values (1,'2010-05-23','Сорвенование 1 ','Бла бла ловим карася','',1,1,1,'2010-05-20 19:51:53','2010-05-23 17:52:49');

/*Data for the table `friend` */

/*Data for the table `inbox` */

insert  into `inbox`(`id`,`name`,`message`,`created_by`,`updated_by`,`created_at`,`updated_at`) values (1,'Есть чо?','дададада?',1,1,'2010-05-19 18:42:45','2010-05-19 18:42:45'),(2,'А у тебя?','можно ?',1,1,'2010-05-19 18:45:11','2010-05-19 18:45:11'),(3,'Ну и?','Скоко ждать то?',1,1,'2010-05-19 18:46:27','2010-05-19 18:46:27');

/*Data for the table `inboxed` */

insert  into `inboxed`(`inbox_id`,`profile_id`) values (1,2),(3,2),(2,3);

/*Data for the table `locality` */

insert  into `locality`(`id`,`name`,`area_high_id`) values (1,'Роща',1),(2,'Боровск',1),(3,'Сатино',1),(4,'Подольск',2);

/*Data for the table `location` */

insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`latitude`,`longitude`,`slug`,`created_at`,`updated_at`,`version`) values (1,'Первое место','',1.00,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1.00,1.00,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(2,'Еще что-то','',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,2,2,2,2.00,2.00,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(3,'И тут!!!','',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,3,3,3,3.00,3.00,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(4,'Непонятно ничего','',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,4,1,1,1.00,1.00,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(5,'Место место','',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,3,2,2,2.00,2.00,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(6,'Аааа ееее!','',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1.00,1.00,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(7,'Пыщь пыщь','',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,4,2,2,2.00,2.00,'2','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(8,'И ололо','',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,2,3,3,3.00,3.00,'3','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL);

/*Data for the table `location_flow` */

/*Data for the table `location_fundus` */

/*Data for the table `location_relief` */

/*Data for the table `location_scope` */

/*Data for the table `location_type` */

/*Data for the table `location_version` */

/*Data for the table `photo` */

/*Data for the table `profit` */

insert  into `profit`(`id`,`name`,`location_id`,`date`,`cordage`,`description`,`fish_id`,`weight`,`created_at`,`updated_at`,`created_by`,`updated_by`) values (1,'Выезд см',1,'2010-05-20 00:00:00','','',3,4.00,'2010-05-20 16:13:13','2010-05-20 16:13:13',1,1),(2,'Опять ловили',1,'2010-05-20 00:00:00','Всякие клеви шутки','Все прошло гладко',NULL,NULL,'2010-05-20 18:30:57','2010-05-20 18:30:57',1,1),(3,'И снова тут',1,'2010-05-20 00:00:00','Всякие клеви шутки','Все прошло гладко',NULL,NULL,'2010-05-20 18:42:57','2010-05-20 18:42:57',1,1);

/*Data for the table `profit_detail` */

insert  into `profit_detail`(`id`,`profit_id`,`style_id`,`fish_id`,`qty`) values (1,1,2,3,10.00),(2,2,2,3,1.00),(3,2,1,1,3.00),(4,3,2,3,1.00),(5,3,1,1,3.00);

/*Data for the table `read_comment` */

/*Data for the table `sf_guard_forgot_password` */

/*Data for the table `sf_guard_group` */

/*Data for the table `sf_guard_group_permission` */

/*Data for the table `sf_guard_permission` */

/*Data for the table `sf_guard_remember_key` */

insert  into `sf_guard_remember_key`(`id`,`user_id`,`remember_key`,`ip_address`,`created_at`,`updated_at`) values (1,2,'hlgprbz4u5kok4808gss4ko4c8g4s0s','127.0.0.1','2010-05-17 22:14:42','2010-05-17 22:14:42'),(2,1,'hocqsx2q3qoss8kkc88kkckccggwkso','127.0.0.1','2010-05-18 20:21:38','2010-05-18 20:21:38');

/*Data for the table `sf_guard_user` */

insert  into `sf_guard_user`(`id`,`first_name`,`last_name`,`email_address`,`username`,`algorithm`,`salt`,`password`,`is_active`,`is_super_admin`,`last_login`,`created_at`,`updated_at`) values (1,'Максим','Гречушкин','qweqwe@qwe.qwe','qweqwe','PasswordKeeper::generate','93b8926afa3c763923dc904682439337','93b8926afa3c763923dc904682439337qweqwe',1,0,'2010-05-24 14:19:01','2011-03-11 20:52:17','2010-05-24 14:19:01'),(2,'Андрей','Белоозеров','asd@qwe.qwe','asdasd','PasswordKeeper::generate','8c65d6733a4dd32a5510ab6d3793d3d9','8c65d6733a4dd32a5510ab6d3793d3d9asdasd',1,0,'2010-05-22 18:29:11','2011-03-11 20:52:31','2010-05-22 18:29:11'),(3,'Дмитрий','Хашабаев','zxc@zxc.zxc','zxczxc','PasswordKeeper::generate','884f9de044df99d54aedf354eded1a32','884f9de044df99d54aedf354eded1a32zxczxc',1,0,NULL,'2011-03-11 20:52:47','2011-03-11 20:52:47');

/*Data for the table `sf_guard_user_group` */

/*Data for the table `sf_guard_user_permission` */

/*Data for the table `sf_guard_user_profile` */

insert  into `sf_guard_user_profile`(`user_id`,`email_new`,`validate_at`,`validate`,`id`,`sex`,`birth_date`,`userpic`,`description`,`created_at`,`updated_at`,`city_id`) values (1,'xxx@cc.cc','2010-05-23 20:12:20','e992509a6769b476993e5c352b270bac2',1,1,'2010-05-23',NULL,'','2011-03-11 20:52:18','2010-05-23 20:12:20',NULL),(2,NULL,'2011-03-11 20:52:31','n2b1d22bf44686b95b77bb07f52e365d0',2,1,NULL,NULL,NULL,'2011-03-11 20:52:31','2011-03-11 20:52:31',NULL),(3,NULL,'2011-03-11 20:52:47','n87805300e6edd21d174f7fc147de786b',3,0,NULL,NULL,NULL,'2011-03-11 20:52:47','2011-03-11 20:52:47',NULL);

/*Data for the table `style` */

insert  into `style`(`id`,`name`) values (2,'Спининг'),(1,'Тролинг');

/*Data for the table `tag` */

insert  into `tag`(`id`,`name`,`is_triple`,`triple_namespace`,`triple_key`,`triple_value`) values (1,'qwe',0,NULL,NULL,NULL),(2,'asd',0,NULL,NULL,NULL),(3,'zxc',0,NULL,NULL,NULL);

/*Data for the table `tagging` */

insert  into `tagging`(`id`,`tag_id`,`taggable_model`,`taggable_id`) values (1,1,'Talk',1),(2,2,'Talk',1),(3,3,'Talk',1);

/*Data for the table `talk` */

/*Data for the table `talk_section` */

insert  into `talk_section`(`id`,`parent`,`name`,`lft`,`rgt`,`level`) values (13,NULL,'root',1,14,0),(14,13,'a',2,9,1),(15,14,'a1',3,4,2),(16,13,'b',10,13,1),(17,16,'b1',11,12,2),(18,14,'a2',5,8,2),(19,18,'a21',6,7,3);

/*Data for the table `vote` */

insert  into `vote`(`id`,`value`,`voter`,`toward`,`location_id`,`comment_id`,`profit_id`,`profile_id`,`talk_id`,`fish_event_id`) values (23,-1,1,'location',1,NULL,NULL,NULL,NULL,NULL),(24,1,1,'profile',NULL,NULL,NULL,1,NULL,NULL),(33,1,2,'location',1,NULL,NULL,NULL,NULL,NULL),(36,1,2,'profit',NULL,NULL,2,NULL,NULL,NULL),(37,1,2,'profile',NULL,NULL,NULL,1,NULL,NULL),(38,1,2,'profile',NULL,NULL,NULL,3,NULL,NULL);

/*Data for the table `wish_list` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
