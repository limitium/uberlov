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

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `area_low_id` int(11) DEFAULT NULL,
  `area_high_id` int(11) DEFAULT NULL,
  `locality_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id_idx` (`country_id`),
  KEY `area_low_id_idx` (`area_low_id`),
  KEY `area_high_id_idx` (`area_high_id`),
  KEY `locality_id_idx` (`locality_id`),
  CONSTRAINT `address_area_high_id_area_high_id` FOREIGN KEY (`area_high_id`) REFERENCES `area_high` (`id`),
  CONSTRAINT `address_area_low_id_area_low_id` FOREIGN KEY (`area_low_id`) REFERENCES `area_low` (`id`),
  CONSTRAINT `address_country_id_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `address_locality_id_locality_id` FOREIGN KEY (`locality_id`) REFERENCES `locality` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `address` */

/*Table structure for table `area_high` */

DROP TABLE IF EXISTS `area_high`;

CREATE TABLE `area_high` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `area_low_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `area_low_id_idx` (`area_low_id`),
  CONSTRAINT `area_high_area_low_id_area_low_id` FOREIGN KEY (`area_low_id`) REFERENCES `area_low` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `area_high` */

/*Table structure for table `area_low` */

DROP TABLE IF EXISTS `area_low`;

CREATE TABLE `area_low` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `country_id_idx` (`country_id`),
  CONSTRAINT `area_low_country_id_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `area_low` */

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `toward` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `profit_id` int(11) DEFAULT NULL,
  `inbox_id` int(11) DEFAULT NULL,
  `talk_id` int(11) DEFAULT NULL,
  `fishevent_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `root_id` bigint(20) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_toward_idx` (`toward`),
  KEY `created_by_idx` (`created_by`),
  KEY `updated_by_idx` (`updated_by`),
  KEY `comment_fishevent_id_fish_event_id` (`fishevent_id`),
  KEY `comment_inbox_id_inbox_id` (`inbox_id`),
  KEY `comment_location_id_location_id` (`location_id`),
  KEY `comment_profit_id_profit_id` (`profit_id`),
  KEY `comment_talk_id_talk_id` (`talk_id`),
  CONSTRAINT `comment_talk_id_talk_id` FOREIGN KEY (`talk_id`) REFERENCES `talk` (`id`),
  CONSTRAINT `comment_created_by_sf_guard_user_profile_id` FOREIGN KEY (`created_by`) REFERENCES `sf_guard_user_profile` (`id`),
  CONSTRAINT `comment_fishevent_id_fish_event_id` FOREIGN KEY (`fishevent_id`) REFERENCES `fish_event` (`id`),
  CONSTRAINT `comment_inbox_id_inbox_id` FOREIGN KEY (`inbox_id`) REFERENCES `inbox` (`id`),
  CONSTRAINT `comment_location_id_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `comment_profit_id_profit_id` FOREIGN KEY (`profit_id`) REFERENCES `profit` (`id`),
  CONSTRAINT `comment_updated_by_sf_guard_user_profile_id` FOREIGN KEY (`updated_by`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `country` */

/*Table structure for table `fish` */

DROP TABLE IF EXISTS `fish`;

CREATE TABLE `fish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fish` */

/*Table structure for table `fish_event` */

DROP TABLE IF EXISTS `fish_event`;

CREATE TABLE `fish_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `rules` text,
  `location_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location_id_idx` (`location_id`),
  KEY `created_by_idx` (`created_by`),
  KEY `updated_by_idx` (`updated_by`),
  CONSTRAINT `fish_event_created_by_sf_guard_user_profile_id` FOREIGN KEY (`created_by`) REFERENCES `sf_guard_user_profile` (`id`),
  CONSTRAINT `fish_event_location_id_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `fish_event_updated_by_sf_guard_user_profile_id` FOREIGN KEY (`updated_by`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fish_event` */

/*Table structure for table `friend` */

DROP TABLE IF EXISTS `friend`;

CREATE TABLE `friend` (
  `requester_id` int(11) NOT NULL DEFAULT '0',
  `accepter_id` int(11) NOT NULL DEFAULT '0',
  `accepted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`requester_id`,`accepter_id`),
  KEY `friend_accepter_id_sf_guard_user_profile_id` (`accepter_id`),
  CONSTRAINT `friend_accepter_id_sf_guard_user_profile_id` FOREIGN KEY (`accepter_id`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `friend` */

/*Table structure for table `inbox` */

DROP TABLE IF EXISTS `inbox`;

CREATE TABLE `inbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by_idx` (`created_by`),
  KEY `updated_by_idx` (`updated_by`),
  CONSTRAINT `inbox_created_by_sf_guard_user_profile_id` FOREIGN KEY (`created_by`) REFERENCES `sf_guard_user_profile` (`id`),
  CONSTRAINT `inbox_updated_by_sf_guard_user_profile_id` FOREIGN KEY (`updated_by`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `inbox` */

/*Table structure for table `inboxed` */

DROP TABLE IF EXISTS `inboxed`;

CREATE TABLE `inboxed` (
  `inbox_id` int(11) NOT NULL DEFAULT '0',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`inbox_id`,`profile_id`),
  KEY `inboxed_profile_id_sf_guard_user_profile_id` (`profile_id`),
  CONSTRAINT `inboxed_inbox_id_inbox_id` FOREIGN KEY (`inbox_id`) REFERENCES `inbox` (`id`),
  CONSTRAINT `inboxed_profile_id_sf_guard_user_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `inboxed` */

/*Table structure for table `locality` */

DROP TABLE IF EXISTS `locality`;

CREATE TABLE `locality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `area_high_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `area_high_id_idx` (`area_high_id`),
  CONSTRAINT `locality_area_high_id_area_high_id` FOREIGN KEY (`area_high_id`) REFERENCES `area_high` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `locality` */

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `depth` float(18,2) DEFAULT NULL,
  `is_free` tinyint(1) DEFAULT '1',
  `price` text,
  `location_flow_id` int(11) DEFAULT NULL,
  `location_fundus_id` int(11) DEFAULT NULL,
  `location_relief_id` int(11) DEFAULT NULL,
  `location_type_id` int(11) DEFAULT NULL,
  `location_scope_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `latitude` double(18,2) DEFAULT NULL,
  `longitude` double(18,2) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `location_flow_id_idx` (`location_flow_id`),
  KEY `location_fundus_id_idx` (`location_fundus_id`),
  KEY `location_relief_id_idx` (`location_relief_id`),
  KEY `location_type_id_idx` (`location_type_id`),
  KEY `location_scope_id_idx` (`location_scope_id`),
  KEY `address_id_idx` (`address_id`),
  KEY `created_by_idx` (`created_by`),
  KEY `updated_by_idx` (`updated_by`),
  CONSTRAINT `location_address_id_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `location_created_by_sf_guard_user_profile_id` FOREIGN KEY (`created_by`) REFERENCES `sf_guard_user_profile` (`id`),
  CONSTRAINT `location_location_flow_id_location_flow_id` FOREIGN KEY (`location_flow_id`) REFERENCES `location_flow` (`id`),
  CONSTRAINT `location_location_fundus_id_location_fundus_id` FOREIGN KEY (`location_fundus_id`) REFERENCES `location_fundus` (`id`),
  CONSTRAINT `location_location_relief_id_location_relief_id` FOREIGN KEY (`location_relief_id`) REFERENCES `location_relief` (`id`),
  CONSTRAINT `location_location_scope_id_location_scope_id` FOREIGN KEY (`location_scope_id`) REFERENCES `location_scope` (`id`),
  CONSTRAINT `location_location_type_id_location_type_id` FOREIGN KEY (`location_type_id`) REFERENCES `location_type` (`id`),
  CONSTRAINT `location_updated_by_sf_guard_user_profile_id` FOREIGN KEY (`updated_by`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `location` */

/*Table structure for table `location_flow` */

DROP TABLE IF EXISTS `location_flow`;

CREATE TABLE `location_flow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `location_flow` */

/*Table structure for table `location_fundus` */

DROP TABLE IF EXISTS `location_fundus`;

CREATE TABLE `location_fundus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `location_fundus` */

/*Table structure for table `location_relief` */

DROP TABLE IF EXISTS `location_relief`;

CREATE TABLE `location_relief` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `location_relief` */

/*Table structure for table `location_scope` */

DROP TABLE IF EXISTS `location_scope`;

CREATE TABLE `location_scope` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `location_scope` */

/*Table structure for table `location_type` */

DROP TABLE IF EXISTS `location_type`;

CREATE TABLE `location_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `location_type` */

/*Table structure for table `location_version` */

DROP TABLE IF EXISTS `location_version`;

CREATE TABLE `location_version` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `depth` float(18,2) DEFAULT NULL,
  `is_free` tinyint(1) DEFAULT '1',
  `price` text,
  `location_flow_id` int(11) DEFAULT NULL,
  `location_fundus_id` int(11) DEFAULT NULL,
  `location_relief_id` int(11) DEFAULT NULL,
  `location_type_id` int(11) DEFAULT NULL,
  `location_scope_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `latitude` double(18,2) DEFAULT NULL,
  `longitude` double(18,2) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `version` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  CONSTRAINT `location_version_id_location_id` FOREIGN KEY (`id`) REFERENCES `location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `location_version` */

/*Table structure for table `photo` */

DROP TABLE IF EXISTS `photo`;

CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `toward` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `photo_toward_idx` (`toward`),
  KEY `created_by_idx` (`created_by`),
  KEY `updated_by_idx` (`updated_by`),
  KEY `photo_location_id_location_id` (`location_id`),
  CONSTRAINT `photo_location_id_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `photo_created_by_sf_guard_user_profile_id` FOREIGN KEY (`created_by`) REFERENCES `sf_guard_user_profile` (`id`),
  CONSTRAINT `photo_updated_by_sf_guard_user_profile_id` FOREIGN KEY (`updated_by`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `photo` */

/*Table structure for table `profit` */

DROP TABLE IF EXISTS `profit`;

CREATE TABLE `profit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `cordage` text NOT NULL,
  `description` text NOT NULL,
  `fish_id` int(11) DEFAULT NULL,
  `weight` float(18,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location_id_idx` (`location_id`),
  KEY `fish_id_idx` (`fish_id`),
  KEY `created_by_idx` (`created_by`),
  KEY `updated_by_idx` (`updated_by`),
  CONSTRAINT `profit_created_by_sf_guard_user_profile_id` FOREIGN KEY (`created_by`) REFERENCES `sf_guard_user_profile` (`id`),
  CONSTRAINT `profit_fish_id_fish_id` FOREIGN KEY (`fish_id`) REFERENCES `fish` (`id`),
  CONSTRAINT `profit_location_id_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `profit_updated_by_sf_guard_user_profile_id` FOREIGN KEY (`updated_by`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `profit` */

/*Table structure for table `profit_detail` */

DROP TABLE IF EXISTS `profit_detail`;

CREATE TABLE `profit_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profit_id` int(11) DEFAULT NULL,
  `style_id` int(11) DEFAULT NULL,
  `fish_id` int(11) DEFAULT NULL,
  `qty` float(18,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_fish_style_per_profit_idx` (`profit_id`,`style_id`,`fish_id`),
  KEY `profit_id_idx` (`profit_id`),
  KEY `style_id_idx` (`style_id`),
  KEY `fish_id_idx` (`fish_id`),
  CONSTRAINT `profit_detail_fish_id_fish_id` FOREIGN KEY (`fish_id`) REFERENCES `fish` (`id`),
  CONSTRAINT `profit_detail_profit_id_profit_id` FOREIGN KEY (`profit_id`) REFERENCES `profit` (`id`),
  CONSTRAINT `profit_detail_style_id_style_id` FOREIGN KEY (`style_id`) REFERENCES `style` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `profit_detail` */

/*Table structure for table `read_comment` */

DROP TABLE IF EXISTS `read_comment`;

CREATE TABLE `read_comment` (
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`profile_id`,`comment_id`),
  KEY `read_comment_comment_id_comment_id` (`comment_id`),
  CONSTRAINT `read_comment_comment_id_comment_id` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`),
  CONSTRAINT `read_comment_profile_id_sf_guard_user_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `read_comment` */

/*Table structure for table `sf_guard_forgot_password` */

DROP TABLE IF EXISTS `sf_guard_forgot_password`;

CREATE TABLE `sf_guard_forgot_password` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `unique_key` varchar(255) DEFAULT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `sf_guard_forgot_password_user_id_sf_guard_user_id` FOREIGN KEY (`user_id`) REFERENCES `sf_guard_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

/*Data for the table `sf_guard_forgot_password` */

/*Table structure for table `sf_guard_group` */

DROP TABLE IF EXISTS `sf_guard_group`;

CREATE TABLE `sf_guard_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

/*Data for the table `sf_guard_group` */

/*Table structure for table `sf_guard_group_permission` */

DROP TABLE IF EXISTS `sf_guard_group_permission`;

CREATE TABLE `sf_guard_group_permission` (
  `group_id` bigint(20) NOT NULL DEFAULT '0',
  `permission_id` bigint(20) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`group_id`,`permission_id`),
  KEY `sf_guard_group_permission_permission_id_sf_guard_permission_id` (`permission_id`),
  CONSTRAINT `sf_guard_group_permission_group_id_sf_guard_group_id` FOREIGN KEY (`group_id`) REFERENCES `sf_guard_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sf_guard_group_permission_permission_id_sf_guard_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `sf_guard_permission` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

/*Data for the table `sf_guard_group_permission` */

/*Table structure for table `sf_guard_permission` */

DROP TABLE IF EXISTS `sf_guard_permission`;

CREATE TABLE `sf_guard_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

/*Data for the table `sf_guard_permission` */

/*Table structure for table `sf_guard_remember_key` */

DROP TABLE IF EXISTS `sf_guard_remember_key`;

CREATE TABLE `sf_guard_remember_key` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `remember_key` varchar(32) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `sf_guard_remember_key_user_id_sf_guard_user_id` FOREIGN KEY (`user_id`) REFERENCES `sf_guard_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

/*Data for the table `sf_guard_remember_key` */

/*Table structure for table `sf_guard_user` */

DROP TABLE IF EXISTS `sf_guard_user`;

CREATE TABLE `sf_guard_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) NOT NULL,
  `username` varchar(128) NOT NULL,
  `algorithm` varchar(128) NOT NULL DEFAULT 'sha1',
  `salt` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_super_admin` tinyint(1) DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_address` (`email_address`),
  UNIQUE KEY `username` (`username`),
  KEY `is_active_idx_idx` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

/*Data for the table `sf_guard_user` */

/*Table structure for table `sf_guard_user_group` */

DROP TABLE IF EXISTS `sf_guard_user_group`;

CREATE TABLE `sf_guard_user_group` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `group_id` bigint(20) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `sf_guard_user_group_group_id_sf_guard_group_id` (`group_id`),
  CONSTRAINT `sf_guard_user_group_group_id_sf_guard_group_id` FOREIGN KEY (`group_id`) REFERENCES `sf_guard_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sf_guard_user_group_user_id_sf_guard_user_id` FOREIGN KEY (`user_id`) REFERENCES `sf_guard_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

/*Data for the table `sf_guard_user_group` */

/*Table structure for table `sf_guard_user_permission` */

DROP TABLE IF EXISTS `sf_guard_user_permission`;

CREATE TABLE `sf_guard_user_permission` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `permission_id` bigint(20) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`permission_id`),
  KEY `sf_guard_user_permission_permission_id_sf_guard_permission_id` (`permission_id`),
  CONSTRAINT `sf_guard_user_permission_permission_id_sf_guard_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `sf_guard_permission` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sf_guard_user_permission_user_id_sf_guard_user_id` FOREIGN KEY (`user_id`) REFERENCES `sf_guard_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

/*Data for the table `sf_guard_user_permission` */

/*Table structure for table `sf_guard_user_profile` */

DROP TABLE IF EXISTS `sf_guard_user_profile`;

CREATE TABLE `sf_guard_user_profile` (
  `user_id` bigint(20) NOT NULL,
  `email_new` varchar(255) DEFAULT NULL,
  `validate_at` datetime DEFAULT NULL,
  `validate` varchar(33) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sex` tinyint(1) NOT NULL DEFAULT '1',
  `birth_date` date DEFAULT NULL,
  `userpic` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `user_id_unique_idx` (`user_id`),
  UNIQUE KEY `email_new` (`email_new`),
  CONSTRAINT `sf_guard_user_profile_user_id_sf_guard_user_id` FOREIGN KEY (`user_id`) REFERENCES `sf_guard_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sf_guard_user_profile` */

/*Table structure for table `style` */

DROP TABLE IF EXISTS `style`;

CREATE TABLE `style` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `style` */

/*Table structure for table `tag` */

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `is_triple` tinyint(1) DEFAULT NULL,
  `triple_namespace` varchar(100) DEFAULT NULL,
  `triple_key` varchar(100) DEFAULT NULL,
  `triple_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name_idx` (`name`),
  KEY `triple1_idx` (`triple_namespace`),
  KEY `triple2_idx` (`triple_key`),
  KEY `triple3_idx` (`triple_value`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

/*Data for the table `tag` */

/*Table structure for table `tagging` */

DROP TABLE IF EXISTS `tagging`;

CREATE TABLE `tagging` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) NOT NULL,
  `taggable_model` varchar(30) DEFAULT NULL,
  `taggable_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`tag_id`),
  KEY `taggable_idx` (`taggable_model`,`taggable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

/*Data for the table `tagging` */

/*Table structure for table `talk` */

DROP TABLE IF EXISTS `talk`;

CREATE TABLE `talk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `talk_section_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `talk_section_id_idx` (`talk_section_id`),
  KEY `created_by_idx` (`created_by`),
  KEY `updated_by_idx` (`updated_by`),
  CONSTRAINT `talk_created_by_sf_guard_user_profile_id` FOREIGN KEY (`created_by`) REFERENCES `sf_guard_user_profile` (`id`),
  CONSTRAINT `talk_talk_section_id_talk_section_id` FOREIGN KEY (`talk_section_id`) REFERENCES `talk_section` (`id`),
  CONSTRAINT `talk_updated_by_sf_guard_user_profile_id` FOREIGN KEY (`updated_by`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `talk` */

/*Table structure for table `talk_section` */

DROP TABLE IF EXISTS `talk_section`;

CREATE TABLE `talk_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `talk_section` */

/*Table structure for table `vote` */

DROP TABLE IF EXISTS `vote`;

CREATE TABLE `vote` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` int(11) NOT NULL,
  `voter` int(11) DEFAULT NULL,
  `toward` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `profit_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `talk_id` int(11) DEFAULT NULL,
  `fish_event_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vote_toward_idx` (`toward`),
  KEY `voter_idx` (`voter`),
  KEY `vote_comment_id_comment_id` (`comment_id`),
  KEY `vote_fish_event_id_fish_event_id` (`fish_event_id`),
  KEY `vote_location_id_location_id` (`location_id`),
  KEY `vote_profile_id_sf_guard_user_profile_id` (`profile_id`),
  KEY `vote_profit_id_profit_id` (`profit_id`),
  KEY `vote_talk_id_talk_id` (`talk_id`),
  CONSTRAINT `vote_talk_id_talk_id` FOREIGN KEY (`talk_id`) REFERENCES `talk` (`id`),
  CONSTRAINT `vote_comment_id_comment_id` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`),
  CONSTRAINT `vote_fish_event_id_fish_event_id` FOREIGN KEY (`fish_event_id`) REFERENCES `fish_event` (`id`),
  CONSTRAINT `vote_location_id_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `vote_profile_id_sf_guard_user_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `sf_guard_user_profile` (`id`),
  CONSTRAINT `vote_profit_id_profit_id` FOREIGN KEY (`profit_id`) REFERENCES `profit` (`id`),
  CONSTRAINT `vote_voter_sf_guard_user_profile_id` FOREIGN KEY (`voter`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vote` */

/*Table structure for table `wish_list` */

DROP TABLE IF EXISTS `wish_list`;

CREATE TABLE `wish_list` (
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`profile_id`,`location_id`),
  KEY `wish_list_location_id_location_id` (`location_id`),
  CONSTRAINT `wish_list_location_id_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `wish_list_profile_id_sf_guard_user_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wish_list` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
