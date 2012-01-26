/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.1.40-community : Database - FISHERY
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `sf_combine` */

DROP TABLE IF EXISTS `sf_combine`;

CREATE TABLE `sf_combine` (
  `asset_key` varchar(40) NOT NULL DEFAULT '',
  `files` longtext NOT NULL,
  PRIMARY KEY (`asset_key`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

/*Data for the table `sf_combine` */

insert  into `sf_combine`(`asset_key`,`files`) values ('08ff95ffde1fb127e27ad0ebf97628e1703de66c','cmVzZXQrYmFzZStoZWFkZXIrbWVudSttYWluK2Zvb3RlcitidXR0b24rY29tbW9uK2Zvcm0rbG9jYXRpb24rY29tbWVudCtwcm9maWxlK3JhdGluZytwcm9maXQrdXNlcitpbmJveCt0YWxrK3BhZ2VyK2FkZHJlc3MrZXZlbnQrbGliJTI1MkZkYXRlcGlja2VyK2xpYiUyNTJGcmVkYWN0b3IlMjUyRnJlZGFjdG9yK21hcA==');
insert  into `sf_combine`(`asset_key`,`files`) values ('f402f45fdf72162c4a19503759c8d690393fe9ad','bGliJTI1MkZqcXVlcnlCbG9ja1VJK2xpYiUyNTJGanF1ZXJ5Q29sb3IrbGliJTI1MkZqcXVlcnlKU09OK2xpYiUyNTJGZGF0ZXBpY2tlcithcHArbW9kdWxlTWFuYWdlcitmdWxsTWFwTW9kdWxlK21hcE1vZHVsZQ==');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
