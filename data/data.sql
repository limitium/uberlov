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

/*Data for the table `area_high` */

/*Data for the table `area_low` */

/*Data for the table `comment` */

insert  into `comment`(`id`,`parent`,`message`,`toward`,`location_id`,`profit_id`,`inbox_id`,`talk_id`,`fishevent_id`,`created_by`,`updated_by`,`created_at`,`updated_at`,`root_id`,`lft`,`rgt`,`level`) values (1,NULL,'root','location',1,NULL,NULL,NULL,NULL,1,1,'2011-03-12 01:28:47','2011-03-12 01:28:47',1,1,16,0),(2,1,'  Lion \n1:08 http://img863.imageshack.us/img863/51/99069037.jpg\nhttp://img863.imageshack.us/img863/3223/20657054.jpg\nв общем как-то так. под стаб 2 штуки высотой 30мм. под редуктор одна 30мм, вторая 25мм.','location',1,NULL,NULL,NULL,NULL,1,1,'2011-03-12 01:28:47','2011-03-12 01:28:48',1,2,3,1),(3,1,'  Lion \n1:08 http://img863.imageshack.us/img863/51/99069037.jpg\nhttp://img863.imageshack.us/img863/3223/20657054.jpg\nв общем как-то так. под стаб 2 штуки высотой 30мм. под редуктор одна 30мм, вторая 25мм.','location',1,NULL,NULL,NULL,NULL,1,1,'2011-03-12 01:28:48','2011-03-12 01:28:48',1,4,5,1),(4,1,'23:52 шайбочка)\n23:53 хочу самобок в жопу!','location',1,NULL,NULL,NULL,NULL,1,1,'2011-03-12 01:29:03','2011-03-12 01:29:03',1,6,7,1),(5,1,'23:52 шайбочка)\n23:53 хочу самобок в жопу!','location',1,NULL,NULL,NULL,NULL,1,1,'2011-03-12 01:29:04','2011-03-12 01:29:04',1,8,9,1),(6,1,'qwe','location',1,NULL,NULL,NULL,NULL,1,1,'2011-03-12 01:29:24','2011-03-12 01:29:24',1,10,13,1),(7,1,'asd\n','location',1,NULL,NULL,NULL,NULL,1,1,'2011-03-12 01:29:33','2011-03-12 01:29:34',1,14,15,1),(8,6,'sg\n','location',1,NULL,NULL,NULL,NULL,1,1,'2011-03-12 01:29:39','2011-03-12 01:29:39',1,11,12,2);

/*Data for the table `country` */

/*Data for the table `fish` */

/*Data for the table `fish_event` */

/*Data for the table `friend` */

insert  into `friend`(`requester_id`,`accepter_id`,`accepted`) values (1,2,1),(1,3,1);

/*Data for the table `inbox` */

/*Data for the table `inboxed` */

/*Data for the table `locality` */

/*Data for the table `location` */

insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`latitude`,`longitude`,`slug`,`created_at`,`updated_at`,`version`) values (1,'1111','',1.00,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,123.00,123.00,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL);

/*Data for the table `location_flow` */

/*Data for the table `location_fundus` */

/*Data for the table `location_relief` */

/*Data for the table `location_scope` */

/*Data for the table `location_type` */

/*Data for the table `location_version` */

/*Data for the table `photo` */

/*Data for the table `profit` */

/*Data for the table `profit_detail` */

/*Data for the table `read_comment` */

/*Data for the table `sf_guard_forgot_password` */

/*Data for the table `sf_guard_group` */

/*Data for the table `sf_guard_group_permission` */

/*Data for the table `sf_guard_permission` */

/*Data for the table `sf_guard_remember_key` */

/*Data for the table `sf_guard_user` */

insert  into `sf_guard_user`(`id`,`first_name`,`last_name`,`email_address`,`username`,`algorithm`,`salt`,`password`,`is_active`,`is_super_admin`,`last_login`,`created_at`,`updated_at`) values (1,'Максим','Гречушкин','qweqwe@qwe.qwe','qweqwe','PasswordKeeper::generate','93b8926afa3c763923dc904682439337','93b8926afa3c763923dc904682439337qweqwe',1,0,'2011-03-11 23:17:26','2011-03-11 20:52:17','2011-03-11 23:17:26'),(2,'Андрей','Белоозеров','asd@qwe.qwe','asdasd','PasswordKeeper::generate','8c65d6733a4dd32a5510ab6d3793d3d9','8c65d6733a4dd32a5510ab6d3793d3d9asdasd',1,0,NULL,'2011-03-11 20:52:31','2011-03-11 20:52:31'),(3,'Дмитрий','Хашабаев','zxc@zxc.zxc','zxczxc','PasswordKeeper::generate','884f9de044df99d54aedf354eded1a32','884f9de044df99d54aedf354eded1a32zxczxc',1,0,NULL,'2011-03-11 20:52:47','2011-03-11 20:52:47');

/*Data for the table `sf_guard_user_group` */

/*Data for the table `sf_guard_user_permission` */

/*Data for the table `sf_guard_user_profile` */

insert  into `sf_guard_user_profile`(`user_id`,`email_new`,`validate_at`,`validate`,`id`,`sex`,`birth_date`,`userpic`,`description`,`created_at`,`updated_at`) values (1,NULL,'2011-03-11 20:52:17','nfa5bae0e531cbce5ff5ec46dbad87fda',1,1,NULL,NULL,NULL,'2011-03-11 20:52:18','2011-03-11 20:52:18'),(2,NULL,'2011-03-11 20:52:31','n2b1d22bf44686b95b77bb07f52e365d0',2,1,NULL,NULL,NULL,'2011-03-11 20:52:31','2011-03-11 20:52:31'),(3,NULL,'2011-03-11 20:52:47','n87805300e6edd21d174f7fc147de786b',3,0,NULL,NULL,NULL,'2011-03-11 20:52:47','2011-03-11 20:52:47');

/*Data for the table `style` */

/*Data for the table `tag` */

/*Data for the table `tagging` */

/*Data for the table `talk` */

/*Data for the table `talk_section` */

/*Data for the table `vote` */

insert  into `vote`(`id`,`value`,`voter`,`toward`,`location_id`,`comment_id`,`profit_id`,`profile_id`,`talk_id`,`fish_event_id`) values (7,1,1,'comment',NULL,6,NULL,NULL,NULL,NULL),(10,-1,1,'comment',NULL,8,NULL,NULL,NULL,NULL),(11,1,1,'location',1,NULL,NULL,NULL,NULL,NULL),(15,-1,1,'profile',NULL,NULL,NULL,1,NULL,NULL);

/*Data for the table `wish_list` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
