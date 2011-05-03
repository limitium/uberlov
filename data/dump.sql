/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.1.40-community : Database - FISHERY
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `area_low_id` int(11) DEFAULT NULL,
  `area_high_id` int(11) DEFAULT NULL,
  `locality_id` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id_idx` (`country_id`),
  KEY `area_low_id_idx` (`area_low_id`),
  KEY `area_high_id_idx` (`area_high_id`),
  KEY `locality_id_idx` (`locality_id`),
  KEY `route_id_idx` (`route_id`),
  CONSTRAINT `address_area_high_id_area_high_id` FOREIGN KEY (`area_high_id`) REFERENCES `area_high` (`id`),
  CONSTRAINT `address_area_low_id_area_low_id` FOREIGN KEY (`area_low_id`) REFERENCES `area_low` (`id`),
  CONSTRAINT `address_country_id_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `address_locality_id_locality_id` FOREIGN KEY (`locality_id`) REFERENCES `locality` (`id`),
  CONSTRAINT `address_route_id_route_id` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=639 DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (1,1,5,NULL,NULL,1);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (2,1,3,12,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (3,1,3,12,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (4,1,3,13,8,4);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (5,1,6,NULL,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (6,1,3,7,NULL,6);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (7,1,3,14,NULL,7);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (8,1,3,NULL,NULL,8);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (9,1,7,15,NULL,9);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (10,1,7,15,NULL,9);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (11,2,8,NULL,NULL,10);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (12,1,3,14,NULL,7);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (13,1,3,16,NULL,11);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (14,1,3,16,9,12);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (15,3,NULL,17,10,13);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (16,1,3,18,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (17,1,3,19,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (18,1,3,20,11,15);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (19,1,3,13,8,4);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (20,1,6,NULL,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (21,1,3,21,NULL,16);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (22,1,5,22,NULL,1);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (23,1,3,21,NULL,16);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (24,1,7,15,NULL,9);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (25,1,7,15,NULL,9);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (26,1,3,NULL,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (27,1,3,12,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (28,1,3,19,NULL,17);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (29,1,3,12,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (30,1,3,19,NULL,17);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (31,4,9,23,NULL,18);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (32,1,3,24,12,19);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (33,1,3,19,13,20);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (34,1,3,12,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (35,1,3,19,NULL,17);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (36,4,9,23,NULL,18);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (37,1,3,24,12,19);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (38,1,3,19,13,20);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (39,1,3,25,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (40,1,10,26,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (41,1,6,27,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (42,1,11,28,14,21);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (43,1,6,NULL,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (44,1,6,29,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (45,1,NULL,NULL,NULL,22);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (46,1,12,NULL,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (47,1,12,NULL,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (48,1,13,NULL,NULL,23);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (49,1,14,30,NULL,24);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (50,1,3,4,NULL,25);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (51,1,3,31,15,26);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (52,1,3,25,NULL,27);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (53,1,3,32,16,28);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (54,1,3,33,17,29);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (55,1,3,33,17,30);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (56,1,3,33,17,31);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (57,1,3,33,17,32);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (58,1,15,34,NULL,33);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (59,5,16,35,NULL,34);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (60,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (61,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (62,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (63,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (64,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (65,6,NULL,37,18,36);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (66,4,17,NULL,19,37);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (67,4,17,38,20,38);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (68,4,18,39,NULL,39);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (69,4,9,NULL,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (70,1,11,40,14,40);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (71,1,3,41,21,41);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (72,1,3,41,NULL,41);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (73,1,12,NULL,22,42);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (74,1,19,42,23,43);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (75,1,3,43,24,44);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (76,1,3,44,NULL,45);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (77,1,20,45,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (78,1,3,18,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (79,1,21,46,NULL,46);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (80,1,19,47,23,47);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (81,1,22,NULL,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (82,1,23,48,NULL,49);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (83,1,24,49,NULL,50);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (84,1,22,50,25,51);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (85,1,25,51,26,52);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (86,1,25,52,27,53);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (87,1,12,NULL,22,54);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (88,1,26,53,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (89,1,27,54,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (90,1,3,21,NULL,16);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (91,6,NULL,55,28,55);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (92,6,NULL,55,28,56);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (93,5,28,56,NULL,57);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (94,1,24,57,NULL,58);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (95,1,29,58,NULL,59);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (96,1,30,59,NULL,60);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (97,1,24,60,29,61);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (98,1,20,61,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (99,1,22,62,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (100,1,25,52,27,62);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (101,1,22,50,25,63);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (102,1,3,63,30,64);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (103,1,11,64,14,65);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (104,1,19,65,23,66);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (105,1,11,66,31,67);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (106,1,11,67,14,68);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (107,1,31,68,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (108,5,32,69,NULL,69);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (109,1,25,52,27,70);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (110,1,11,70,14,68);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (111,1,23,71,32,71);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (112,1,19,42,23,27);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (113,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (114,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (115,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (116,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (117,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (118,1,6,29,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (119,1,33,NULL,33,72);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (120,1,3,4,NULL,73);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (121,1,3,4,NULL,73);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (122,1,7,73,NULL,74);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (123,1,25,52,27,75);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (124,5,34,74,NULL,76);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (125,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (126,1,35,75,NULL,49);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (127,1,3,16,NULL,77);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (128,1,3,14,NULL,78);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (129,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (130,1,36,NULL,NULL,79);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (131,1,3,31,NULL,8);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (132,1,22,76,NULL,80);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (133,1,37,77,NULL,81);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (134,1,23,78,NULL,49);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (135,1,23,79,32,82);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (136,1,NULL,NULL,NULL,83);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (137,1,NULL,NULL,NULL,83);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (138,1,25,52,27,84);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (139,1,25,80,NULL,85);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (140,1,25,81,34,86);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (141,1,25,52,27,70);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (142,1,3,NULL,NULL,27);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (143,1,19,42,23,87);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (144,1,12,NULL,22,88);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (145,1,12,NULL,22,89);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (146,1,12,NULL,22,90);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (147,1,19,82,23,91);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (148,1,19,83,23,92);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (149,1,NULL,NULL,NULL,93);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (150,1,31,NULL,NULL,94);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (151,1,38,16,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (152,1,3,14,NULL,78);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (153,1,3,4,NULL,73);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (154,1,23,NULL,NULL,95);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (155,1,23,79,32,96);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (156,1,23,84,NULL,97);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (157,1,23,71,NULL,97);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (158,1,3,85,NULL,98);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (159,1,24,49,NULL,50);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (160,1,24,49,NULL,50);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (161,1,3,86,NULL,99);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (162,1,3,86,NULL,99);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (163,1,31,87,NULL,100);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (164,1,3,18,NULL,77);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (165,1,39,88,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (166,1,3,NULL,NULL,27);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (167,1,23,71,NULL,97);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (168,1,23,NULL,NULL,101);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (169,1,23,NULL,NULL,49);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (170,1,3,89,35,102);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (171,1,40,90,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (172,1,3,19,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (173,1,21,91,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (174,1,6,92,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (175,1,3,NULL,NULL,103);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (176,1,27,NULL,36,104);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (177,1,NULL,NULL,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (178,1,24,57,NULL,58);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (179,1,6,NULL,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (180,1,41,93,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (181,1,21,91,NULL,105);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (182,1,21,94,NULL,106);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (183,1,35,NULL,NULL,107);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (184,1,4,NULL,NULL,108);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (185,1,3,95,NULL,109);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (186,1,19,96,23,110);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (187,1,15,97,NULL,33);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (188,1,19,98,23,111);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (189,1,6,29,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (190,1,3,NULL,NULL,112);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (191,1,3,99,NULL,73);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (192,1,5,100,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (193,1,42,101,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (194,1,15,97,NULL,33);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (195,1,15,97,NULL,33);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (196,1,3,18,NULL,77);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (197,1,3,NULL,NULL,113);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (198,1,3,NULL,NULL,113);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (199,1,3,18,NULL,77);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (200,1,3,NULL,NULL,113);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (201,1,31,68,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (202,1,3,NULL,NULL,112);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (203,1,5,100,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (204,1,5,102,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (205,1,4,103,NULL,114);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (206,1,3,104,NULL,115);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (207,1,5,102,NULL,112);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (208,1,3,105,37,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (209,1,3,86,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (210,1,43,NULL,NULL,116);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (211,1,3,19,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (212,1,3,12,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (213,1,3,19,NULL,17);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (214,4,9,23,NULL,18);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (215,1,3,24,12,19);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (216,1,3,19,13,20);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (217,1,3,25,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (218,1,10,26,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (219,1,6,27,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (220,1,11,28,14,21);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (221,1,6,NULL,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (222,1,6,29,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (223,1,NULL,NULL,NULL,22);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (224,1,12,NULL,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (225,1,12,NULL,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (226,1,13,NULL,NULL,23);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (227,1,14,30,NULL,24);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (228,1,3,4,NULL,25);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (229,1,3,31,15,26);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (230,1,3,25,NULL,27);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (231,1,3,32,16,28);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (232,1,3,33,17,29);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (233,1,3,33,17,30);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (234,1,3,33,17,31);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (235,1,3,33,17,32);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (236,1,15,34,NULL,33);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (237,5,16,35,NULL,34);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (238,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (239,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (240,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (241,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (242,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (243,6,NULL,37,18,36);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (244,4,17,NULL,19,37);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (245,4,17,38,20,38);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (246,4,18,39,NULL,39);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (247,4,9,NULL,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (248,1,11,40,14,40);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (249,1,3,41,21,41);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (250,1,3,41,NULL,41);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (251,1,12,NULL,22,42);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (252,1,19,42,23,43);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (253,1,3,43,24,44);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (254,1,3,44,NULL,45);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (255,1,20,45,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (256,1,3,18,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (257,1,21,46,NULL,46);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (258,1,19,47,23,47);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (259,1,22,NULL,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (260,1,23,48,NULL,49);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (261,1,24,49,NULL,50);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (262,1,22,50,25,51);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (263,1,25,51,26,52);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (264,1,25,52,27,53);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (265,1,12,NULL,22,54);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (266,1,26,53,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (267,1,3,12,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (268,1,3,19,NULL,17);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (269,4,9,23,NULL,18);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (270,1,3,24,12,19);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (271,1,3,19,13,20);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (272,1,3,25,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (273,1,10,26,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (274,1,6,27,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (275,1,11,28,14,21);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (276,1,6,NULL,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (277,1,6,29,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (278,1,NULL,NULL,NULL,22);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (279,1,12,NULL,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (280,1,12,NULL,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (281,1,13,NULL,NULL,23);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (282,1,14,30,NULL,24);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (283,1,3,4,NULL,25);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (284,1,3,31,15,26);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (285,1,3,25,NULL,27);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (286,1,3,32,16,28);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (287,1,3,33,17,29);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (288,1,3,33,17,30);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (289,1,3,33,17,31);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (290,1,3,33,17,32);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (291,1,15,34,NULL,33);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (292,5,16,35,NULL,34);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (293,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (294,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (295,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (296,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (297,1,13,36,NULL,35);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (298,6,NULL,37,18,36);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (299,4,17,NULL,19,37);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (300,4,17,38,20,38);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (301,4,18,39,NULL,39);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (302,4,9,NULL,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (303,1,11,40,14,40);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (304,1,3,41,21,41);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (305,1,3,41,NULL,41);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (306,1,12,NULL,22,42);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (307,1,19,42,23,43);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (308,1,3,43,24,44);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (309,1,3,44,NULL,45);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (310,1,20,45,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (311,1,3,18,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (312,1,21,46,NULL,46);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (313,1,19,47,23,47);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (314,1,22,NULL,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (315,1,23,48,NULL,49);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (316,1,24,49,NULL,50);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (317,1,22,50,25,51);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (318,1,25,51,26,52);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (319,1,25,52,27,53);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (320,1,12,NULL,22,54);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (321,1,26,53,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (322,1,27,54,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (323,1,3,21,NULL,16);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (324,6,NULL,55,28,55);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (325,6,NULL,55,28,56);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (326,5,28,56,NULL,57);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (327,1,24,57,NULL,58);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (328,1,29,58,NULL,59);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (329,1,30,59,NULL,60);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (330,1,24,60,29,61);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (331,1,20,61,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (332,1,22,62,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (333,1,25,52,27,62);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (334,1,22,50,25,63);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (335,1,3,63,30,64);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (336,1,11,64,14,65);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (337,1,19,65,23,66);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (338,1,11,66,31,67);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (339,1,11,67,14,68);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (340,1,31,68,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (341,5,32,69,NULL,69);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (342,1,25,52,27,70);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (343,1,11,70,14,68);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (344,1,23,71,32,71);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (345,1,19,42,23,27);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (346,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (347,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (348,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (349,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (350,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (351,1,6,29,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (352,1,33,NULL,33,72);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (353,1,3,4,NULL,73);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (354,1,3,4,NULL,73);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (355,1,7,73,NULL,74);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (356,1,25,52,27,75);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (357,5,34,74,NULL,76);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (358,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (359,1,35,75,NULL,49);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (360,1,3,16,NULL,77);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (361,1,3,14,NULL,78);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (362,1,22,72,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (363,1,36,NULL,NULL,79);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (364,1,3,31,NULL,8);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (365,1,22,76,NULL,80);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (366,1,37,77,NULL,81);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (367,1,23,78,NULL,49);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (368,1,23,79,32,82);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (369,1,NULL,NULL,NULL,83);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (370,1,NULL,NULL,NULL,83);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (371,1,25,52,27,84);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (372,1,25,80,NULL,85);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (373,1,25,81,34,86);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (374,1,25,52,27,70);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (375,1,3,NULL,NULL,27);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (376,1,19,42,23,87);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (377,1,12,NULL,22,88);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (378,1,12,NULL,22,89);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (379,1,12,NULL,22,90);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (380,1,19,82,23,91);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (381,1,19,83,23,92);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (382,1,NULL,NULL,NULL,93);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (383,1,31,NULL,NULL,94);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (384,1,38,16,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (385,1,3,14,NULL,78);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (386,1,3,4,NULL,73);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (387,1,23,NULL,NULL,95);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (388,1,23,79,32,96);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (389,1,23,84,NULL,97);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (390,1,23,71,NULL,97);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (391,1,3,85,NULL,98);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (392,1,24,49,NULL,50);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (393,1,24,49,NULL,50);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (394,1,3,86,NULL,99);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (395,1,3,86,NULL,99);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (396,1,31,87,NULL,100);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (397,1,3,18,NULL,77);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (398,1,39,88,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (399,1,3,NULL,NULL,27);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (400,1,23,71,NULL,97);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (401,1,23,NULL,NULL,101);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (402,1,23,NULL,NULL,49);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (403,1,3,89,35,102);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (404,1,40,90,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (405,1,3,19,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (406,1,21,91,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (407,1,6,92,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (408,1,3,NULL,NULL,103);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (409,1,27,NULL,36,104);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (410,1,NULL,NULL,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (411,1,24,57,NULL,58);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (412,1,6,NULL,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (413,1,41,93,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (414,1,21,91,NULL,105);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (415,1,21,94,NULL,106);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (416,1,35,NULL,NULL,107);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (417,1,4,NULL,NULL,108);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (418,1,3,95,NULL,109);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (419,1,19,96,23,110);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (420,1,15,97,NULL,33);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (421,1,19,98,23,111);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (422,1,6,29,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (423,1,3,NULL,NULL,112);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (424,1,3,99,NULL,73);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (425,1,5,100,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (426,1,42,101,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (427,1,15,97,NULL,33);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (428,1,15,97,NULL,33);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (429,1,3,18,NULL,77);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (430,1,3,NULL,NULL,113);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (431,1,3,NULL,NULL,113);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (432,1,3,18,NULL,77);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (433,1,3,NULL,NULL,113);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (434,1,31,68,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (435,1,3,NULL,NULL,112);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (436,1,5,100,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (437,1,5,102,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (438,1,4,103,NULL,114);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (439,1,3,104,NULL,115);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (440,1,5,102,NULL,112);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (441,1,3,105,37,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (442,1,3,86,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (443,1,43,NULL,NULL,116);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (444,1,3,19,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (445,1,3,86,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (446,1,3,NULL,NULL,112);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (447,1,6,29,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (448,1,3,86,NULL,117);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (449,1,3,19,38,118);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (450,6,NULL,106,39,119);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (451,6,NULL,106,39,120);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (452,6,NULL,106,39,121);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (453,1,3,18,40,122);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (454,1,3,14,NULL,78);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (455,1,3,63,NULL,112);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (456,1,3,14,NULL,7);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (457,1,3,107,NULL,123);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (458,1,21,108,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (459,1,3,25,41,124);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (460,1,3,25,NULL,27);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (461,1,3,86,NULL,117);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (462,1,3,86,42,125);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (463,1,44,109,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (464,1,19,98,23,126);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (465,1,3,19,NULL,31);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (466,7,NULL,110,43,127);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (467,1,3,41,NULL,78);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (468,1,3,NULL,NULL,6);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (469,1,3,4,NULL,25);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (470,1,3,14,NULL,78);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (471,1,3,NULL,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (472,1,3,111,NULL,112);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (473,1,19,96,23,128);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (474,1,3,20,11,15);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (475,1,3,16,NULL,77);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (476,1,3,16,9,129);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (477,1,3,19,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (478,1,3,19,NULL,118);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (479,1,3,25,41,130);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (480,1,3,112,44,4);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (481,1,3,9,45,6);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (482,1,3,113,NULL,131);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (483,1,6,NULL,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (484,1,3,63,NULL,112);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (485,1,3,19,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (486,1,3,18,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (487,1,19,96,23,132);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (488,1,3,NULL,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (489,1,15,NULL,NULL,93);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (490,1,15,NULL,NULL,133);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (491,1,3,16,9,134);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (492,1,3,86,NULL,135);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (493,1,3,NULL,NULL,117);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (494,1,19,47,23,136);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (495,1,19,98,23,137);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (496,3,NULL,17,10,138);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (497,3,NULL,17,10,139);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (498,3,NULL,17,10,13);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (499,3,NULL,17,10,139);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (500,1,30,114,NULL,140);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (501,1,24,115,NULL,141);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (502,1,24,57,NULL,58);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (503,1,15,NULL,NULL,133);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (504,1,15,NULL,NULL,133);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (505,1,45,116,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (506,1,3,NULL,NULL,115);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (507,1,3,NULL,NULL,113);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (508,1,44,NULL,NULL,142);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (509,1,42,117,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (510,1,42,117,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (511,1,42,117,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (512,1,3,16,9,12);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (513,1,44,118,NULL,118);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (514,1,46,119,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (515,1,3,120,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (516,1,3,121,46,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (517,1,3,NULL,NULL,3);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (518,1,3,111,NULL,27);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (519,1,20,122,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (520,1,6,123,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (521,1,20,122,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (522,1,5,100,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (523,1,3,16,NULL,11);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (524,1,44,124,NULL,142);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (525,1,19,98,23,143);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (526,1,19,96,47,144);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (527,1,19,98,23,145);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (528,1,3,3,5,131);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (529,1,3,31,48,146);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (530,1,19,82,23,147);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (531,5,47,125,NULL,148);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (532,5,47,125,NULL,148);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (533,5,48,NULL,49,149);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (534,1,NULL,NULL,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (535,5,49,NULL,50,150);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (536,8,50,NULL,51,151);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (537,1,19,42,23,43);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (538,1,3,21,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (539,6,NULL,126,52,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (540,3,NULL,127,53,152);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (541,1,13,128,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (542,1,3,86,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (543,1,51,NULL,NULL,153);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (544,1,19,83,23,154);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (545,1,19,129,23,155);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (546,1,19,98,23,156);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (547,1,22,50,25,157);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (548,1,22,50,25,158);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (549,1,22,50,25,158);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (550,1,22,50,25,159);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (551,1,22,50,25,160);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (552,1,24,NULL,NULL,161);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (553,1,22,50,25,162);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (554,1,22,50,25,163);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (555,1,19,82,23,164);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (556,1,19,129,23,165);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (557,1,19,130,23,166);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (558,1,22,50,25,167);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (559,1,19,82,23,168);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (560,1,22,50,25,169);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (561,1,22,50,25,170);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (562,1,22,50,25,171);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (563,1,22,50,25,172);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (564,1,22,50,25,173);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (565,1,22,50,25,174);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (566,1,22,50,25,175);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (567,1,22,50,25,175);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (568,1,19,129,23,176);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (569,1,19,98,23,177);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (570,1,3,14,NULL,178);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (571,1,3,14,NULL,7);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (572,1,19,98,23,179);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (573,1,3,16,NULL,77);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (574,2,8,NULL,NULL,10);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (575,5,52,NULL,NULL,180);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (576,1,7,15,NULL,9);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (577,1,7,NULL,NULL,9);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (578,1,3,4,NULL,181);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (579,1,3,25,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (580,1,3,20,NULL,15);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (581,9,53,131,NULL,182);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (582,1,3,132,54,26);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (583,1,3,86,NULL,117);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (584,1,3,132,NULL,100);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (585,1,3,25,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (586,1,24,NULL,NULL,183);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (587,1,24,NULL,NULL,183);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (588,1,7,15,NULL,9);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (589,1,3,14,NULL,78);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (590,1,22,50,25,175);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (591,1,22,NULL,NULL,48);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (592,1,30,133,NULL,60);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (593,1,3,132,NULL,112);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (594,1,3,104,NULL,115);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (595,1,24,134,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (596,1,3,89,NULL,184);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (597,1,3,63,NULL,113);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (598,1,3,NULL,NULL,8);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (599,1,3,25,41,185);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (600,1,3,21,NULL,16);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (601,6,NULL,135,55,186);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (602,1,39,NULL,56,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (603,1,5,22,NULL,1);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (604,1,3,136,57,187);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (605,1,5,22,NULL,1);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (606,1,44,137,58,188);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (607,1,3,18,NULL,14);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (608,1,3,7,NULL,189);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (609,1,3,14,NULL,78);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (610,1,3,7,NULL,190);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (611,1,19,96,23,191);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (612,5,54,138,59,192);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (613,1,55,139,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (614,1,3,86,NULL,117);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (615,1,3,14,NULL,7);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (616,1,3,21,NULL,16);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (617,1,3,14,NULL,7);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (618,1,3,14,NULL,7);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (619,1,3,14,NULL,7);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (620,1,3,14,NULL,7);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (621,1,3,132,NULL,106);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (622,1,3,21,NULL,16);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (623,1,3,32,NULL,28);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (624,1,3,140,NULL,131);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (625,1,3,132,NULL,112);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (626,1,3,7,NULL,6);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (627,1,31,141,NULL,NULL);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (628,1,3,16,60,77);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (629,1,3,16,NULL,77);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (630,1,6,27,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (631,1,6,NULL,NULL,5);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (632,1,3,14,NULL,178);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (633,1,3,7,NULL,6);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (634,1,3,113,NULL,193);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (635,1,3,142,61,194);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (636,1,19,98,23,195);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (637,1,3,13,8,4);
insert  into `address`(`id`,`country_id`,`area_low_id`,`area_high_id`,`locality_id`,`route_id`) values (638,1,5,22,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

/*Data for the table `area_high` */

insert  into `area_high`(`id`,`name`,`area_low_id`) values (1,'Боровский р-н',1);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (2,'Подольский р-н',2);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (3,'городской округ город Балашиха',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (4,'Одинцовский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (5,'Угранский район',4);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (6,'Малоярославецкий район',5);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (7,'Волоколамский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (8,'Лотошинский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (9,'Клинский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (10,'Перемышльский район',5);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (11,'Дзержинский район',5);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (12,'Коломенский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (13,'Чеховский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (14,'Солнечногорский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (15,'Рыльский район',7);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (16,'Ленинский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (17,'Рига',NULL);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (18,'Подольский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (19,'Раменский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (20,'Наро-Фоминский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (21,'Дмитровский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (22,'Юхновский район',5);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (23,'Илийский район',9);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (24,'городской округ город Жуковский',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (25,'городской округ город Домодедово',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (26,'Демянский район',10);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (27,'Енотаевский район',6);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (28,'Кировский Адм. район',11);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (29,'Камызякский район',6);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (30,'Новосибирский район',14);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (31,'Истринский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (32,'Серебряно-Прудский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (33,'городской округ город Коломна',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (34,'Пучежский район',15);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (35,'Корсунь-Шевченковский',16);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (36,'Темрюкский район',13);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (37,'Южное Саво',NULL);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (38,'Enbekshilder',17);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (39,'Павлодар',18);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (40,'Центральный Адм. район',11);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (41,'Красногорский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (42,'АО Южный',19);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (43,'городской округ город Котельники',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (44,'Павлово-Посадский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (45,'Ловозерский район',20);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (46,'Вытегорский район',21);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (47,'АО Северо-Западный',19);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (48,'Чаплыгинский район',23);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (49,'Осташковский район',24);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (50,'городской округ Нижний Новгород',22);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (51,'Гурьевский район',25);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (52,'Калининград',25);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (53,'Тернейский район',26);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (54,'Полтавский район',27);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (55,'Lapland',NULL);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (56,'Заречненский',28);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (57,'Весьегонский район',24);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (58,'Новозыбковский район',29);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (59,'Выборгский район',30);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (60,'городской округ город Тверь',24);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (61,'Терский район',20);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (62,'Кстовский район',22);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (63,'Серпуховский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (64,'Красногвардейский Адм. район',11);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (65,'АО Западный',19);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (66,'Красносельский Адм. район',11);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (67,'Адмиралтейский Адм. район',11);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (68,'Рыбинский район',31);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (69,'Волчанский',32);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (70,'Московский Адм. район',11);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (71,'Липецкий район',23);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (72,'Воротынский район',22);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (73,'Тимский район',7);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (74,'Килийский',34);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (75,'Ефремовский район',35);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (76,'Дальнеконстантиновский район',22);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (77,'Лаишевский район',37);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (78,'Лев-Толстовский район',23);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (79,'Грязинский район',23);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (80,'Гвардейский раон',25);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (81,'Зеленоградский район',25);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (82,'АО Центральный',19);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (83,'АО Восточный',19);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (84,'Хлевенский район',23);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (85,'Орехово-Зуевский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (86,'Ногинский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (87,'Переславский район',31);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (88,'Лоухский район',39);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (89,'городской округ город Протвино',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (90,'Собинский район',40);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (91,'Шекснинский район',21);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (92,'Харабалинский район',6);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (93,'Чебоксарский район',41);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (94,'Череповецкий район',21);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (95,'Озерский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (96,'АО Юго-Западный',19);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (97,'Юрьевецкий район',15);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (98,'АО Юго-Восточный',19);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (99,'Можайский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (100,'Медынский район',5);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (101,'Староюрьевский район',42);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (102,'Боровский район',5);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (103,'Сычевский район',4);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (104,'Шаховской район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (105,'Люберецкий район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (106,'Kymenlaakso',NULL);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (107,'Мытищинский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (108,'Кичменгско-Городецкий район',21);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (109,'Шиловский район',44);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (110,'Lääne-Virumaa',NULL);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (111,'Ступинский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (112,'городской округ город Железнодорожный',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (113,'Щелковский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (114,'Волховский район',30);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (115,'Кимрский район',24);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (116,'Еткульский район',45);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (117,'Бондарский район',42);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (118,'Клепиковский район',44);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (119,'Ногликский район',46);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (120,'Зарайский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (121,'Луховицкий район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (122,'Кольский район',20);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (123,'Ахтубинский район',6);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (124,'Касимовский район',44);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (125,'Солонянский',47);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (126,'Åland',NULL);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (127,'Aizkraukles District',NULL);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (128,'Приморско-Ахтарский район',13);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (129,'АО Северный',19);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (130,'АО Северо-Восточный',19);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (131,'Манавгат',53);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (132,'Сергиево-Посадский район',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (133,'Приозерский район',30);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (134,'Бологовский район',24);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (135,'Кайнуу',NULL);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (136,'городской округ город Лыткарино',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (137,'городской округ город Рязань',44);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (138,'Киев',54);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (139,'Иркутский район',55);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (140,'городской округ город Черноголовка',3);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (141,'Некоузский район',31);
insert  into `area_high`(`id`,`name`,`area_low_id`) values (142,'городской округ город Лобня',3);

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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

/*Data for the table `area_low` */

insert  into `area_low`(`id`,`name`,`country_id`) values (1,'Калужская обл',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (2,'Московская обл',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (3,'Московская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (4,'Смоленская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (5,'Калужская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (6,'Астраханская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (7,'Курская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (8,'Гродненская область',2);
insert  into `area_low`(`id`,`name`,`country_id`) values (9,'Алматинская область',4);
insert  into `area_low`(`id`,`name`,`country_id`) values (10,'Новгородская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (11,'город Санкт-Петербург',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (12,'Пермский край',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (13,'Краснодарский край',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (14,'Новосибирская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (15,'Ивановская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (16,'Черкасская область',5);
insert  into `area_low`(`id`,`name`,`country_id`) values (17,'Акмолинская область',4);
insert  into `area_low`(`id`,`name`,`country_id`) values (18,'Павлодарская область',4);
insert  into `area_low`(`id`,`name`,`country_id`) values (19,'Москва',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (20,'Мурманская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (21,'Вологодская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (22,'Нижегородская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (23,'Липецкая область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (24,'Тверская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (25,'Калининградская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (26,'Приморский край',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (27,'Омская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (28,'Ровенская область',5);
insert  into `area_low`(`id`,`name`,`country_id`) values (29,'Брянская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (30,'Ленинградская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (31,'Ярославская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (32,'Харьковская область',5);
insert  into `area_low`(`id`,`name`,`country_id`) values (33,'Самарская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (34,'Одесская область',5);
insert  into `area_low`(`id`,`name`,`country_id`) values (35,'Тульская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (36,'Алтайский край',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (37,'республика Татарстан',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (38,'Волгоградская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (39,'республика Карелия',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (40,'Владимирская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (41,'республика Чувашия',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (42,'Тамбовская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (43,'Тюменская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (44,'Рязанская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (45,'Челябинская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (46,'Сахалинская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (47,'Днепропетровская область',5);
insert  into `area_low`(`id`,`name`,`country_id`) values (48,'Запорожская область',5);
insert  into `area_low`(`id`,`name`,`country_id`) values (49,'Автономная Pеспублика Крым',5);
insert  into `area_low`(`id`,`name`,`country_id`) values (50,'Maputo City',8);
insert  into `area_low`(`id`,`name`,`country_id`) values (51,'Свердловская область',1);
insert  into `area_low`(`id`,`name`,`country_id`) values (52,'Луганская область',5);
insert  into `area_low`(`id`,`name`,`country_id`) values (53,'Анталия',9);
insert  into `area_low`(`id`,`name`,`country_id`) values (54,'Киев',5);
insert  into `area_low`(`id`,`name`,`country_id`) values (55,'Иркутская область',1);

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_city_idx` (`region_id`,`name`),
  KEY `region_id_idx` (`region_id`),
  CONSTRAINT `city_region_id_region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2281 DEFAULT CHARSET=utf8;

/*Data for the table `city` */

insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1,'Абаза',1,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2,'Абакан',1,164000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (3,'Аскиз',1,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (4,'Белый Яр',1,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (5,'Бея',1,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (6,'Боград',1,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (7,'Копьево',1,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (8,'Саяногорск',1,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (9,'Сорск',1,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (10,'Таштып',1,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (11,'Усть-Абакан',1,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (12,'Черногорск',1,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (13,'Шира',1,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (14,'Абан',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (15,'Агинское',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (16,'Ачинск',2,110000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (17,'Балахта',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (18,'Березовка',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (19,'Бирюлюсы',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (20,'Боготол',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (21,'Богучаны',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (22,'Большая Мурта',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (23,'Большой Улуй',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (24,'Бородино',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (25,'Дзержинск',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (26,'Дивногорск',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (27,'Дудинка',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (28,'Емельяново',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (29,'Енисейск',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (30,'Ермаковское',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (31,'Железногорск',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (32,'Заозерный',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (33,'Зеленогорск',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (34,'Идринское',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (35,'Иланский',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (36,'Ирбейское',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (37,'Казачинское',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (38,'Канск',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (39,'Каратузское',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (40,'Кедровый',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (41,'Кодинск',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (42,'Козулька',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (43,'Краснотуранск',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (44,'Красноярск',2,972000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (45,'Курагино',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (46,'Лесосибирск',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (47,'Минусинск',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (48,'Назарово',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (49,'Нижний Ингаш',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (50,'Новобирилюссы',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (51,'Новоселово',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (52,'Норильск',2,202000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (53,'Партизанское',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (54,'Пировское',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (55,'Рыбинск',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (56,'Сосновоборск',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (57,'Сухобузимское',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (58,'Таилтып',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (59,'Тасеево',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (60,'Тюхтет',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (61,'Ужур',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (62,'Уяр',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (63,'Шалинское',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (64,'Шарыпово',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (65,'Шушенское',2,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (66,'Абатский',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (67,'Армизонское',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (68,'Аромашево',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (69,'Бердюжье',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (70,'Большое Сорокино',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (71,'Вагай',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (72,'Викулово',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (73,'Голышманово',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (74,'Губкинский',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (75,'Заводоуковск',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (76,'Исетское',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (77,'Ишим',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (78,'Казанское',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (79,'Междуреченский',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (80,'Муравленко',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (81,'Нижняя Тавда',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (82,'Ноябрьск',3,111000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (83,'Омутинский',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (84,'Сладково',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (85,'Тарко-сале',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (86,'Тобольск',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (87,'Тюмень',3,580000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (88,'Уват',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (89,'Упорово',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (90,'Юргинское',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (91,'Ялуторовск',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (92,'Ярково',3,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (93,'Абдулино',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (94,'Адамовка',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (95,'Акбулак',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (96,'Александровка',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (97,'Асекеево',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (98,'Беляевка',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (99,'Бугуруслан',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (100,'Бузулук',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (101,'Гай',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (102,'Грачевка',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (103,'Домбаровский',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (104,'Илек',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (105,'Кваркено',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (106,'Кувандык',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (107,'Курманаевка',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (108,'Матвеевка',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (109,'Медногорск',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (110,'Новоорск',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (111,'Новосергиевка',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (112,'Новотроицк',4,101000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (113,'Октябрьское',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (114,'Оренбург',4,526000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (115,'Орск',4,245000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (116,'Первомайский',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (117,'Переволоцкий',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (118,'Плешаново',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (119,'Пономаревка',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (120,'Сакмара',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (121,'Саракташ',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (122,'Светлый',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (123,'Северное',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (124,'Соль-Илецк',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (125,'Сорочинск',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (126,'Ташла',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (127,'Тоцкое',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (128,'Тюльган',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (129,'Шарлык',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (130,'Ясный',4,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (131,'Абинск',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (132,'Адлер',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (133,'Анапа',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (134,'Апшеронск',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (135,'Армавир',5,188000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (136,'Аше',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (137,'Белая Глина',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (138,'Белореченск',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (139,'Брюховецкая',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (140,'Вардане',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (141,'Выселки',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (142,'Геленджик',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (143,'Горячий Ключ',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (144,'Гулькевичи',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (145,'Динская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (146,'Ейск',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (147,'Кавказская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (148,'Калининская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (149,'Каневская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (150,'Кореновск',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (151,'Красноармейская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (152,'Краснодар',5,713000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (153,'Кропоткин',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (154,'Крыловская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (155,'Крымск',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (156,'Кудепста',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (157,'Курганинск',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (158,'Кущевская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (159,'Лабинск',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (160,'Ленинградская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (161,'Лоо',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (162,'Мостовской',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (163,'Новокубанск',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (164,'Новопокровская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (165,'Новороссийск',5,229000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (166,'Отрадная',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (167,'Павловская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (168,'Приморско-Ахтарск',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (169,'Приморье',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (170,'Северская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (171,'Славянск-на-Кубани',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (172,'Сочи',5,342000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (173,'Староминская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (174,'Старощербиновская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (175,'Тбилисская',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (176,'Темрюк',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (177,'Тимашевск',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (178,'Тихорецк',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (179,'Туапсе',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (180,'Успенское',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (181,'Усть-Лабинск',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (182,'Хоста',5,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (183,'Авангардное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (184,'Акулово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (185,'Алеевка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (186,'Александровка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (187,'Алексеевка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (188,'Бабушкино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (189,'Багратионово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (190,'Багратионовск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (191,'Балтийск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (192,'Бекенево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (193,'Белкино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (194,'Белый яр',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (195,'Береговое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (196,'Березовка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (199,'Ближнее',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (200,'Богатово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (201,'Большаково',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (202,'Большая Поляна',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (203,'Большие Горки',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (204,'Большое село',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (205,'Борское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (206,'Брянское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (207,'Бычково',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (208,'Васильково',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (209,'Великолукское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (210,'Верний бисер',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (211,'Весново',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (212,'Взморье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (213,'Вишневка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (214,'Вишневое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (215,'Вишневское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (216,'Вишневый',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (217,'Владимирово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (218,'Володаровка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (219,'Волочаевское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (220,'Вольное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (221,'Воробьево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (222,'Восод',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (223,'Высокое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (225,'Гаврилово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (226,'Гастеллово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (227,'Гвардейск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (228,'Гвардейское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (229,'Георгиевское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (230,'Глушково',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (231,'Головкино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (232,'Гончарово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (233,'Гордое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (234,'Грачевка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (235,'Грибки',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (236,'Громово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (237,'Гурьевск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (238,'Гусев',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (239,'Гусево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (240,'Дальнее',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (243,'Дворкино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (244,'Демидово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (245,'Дивное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (247,'Доброволец',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (248,'Добровольск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (249,'Доваторовка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (250,'Долгоруково',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (251,'Домново',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (252,'Дорожное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (253,'Дружба',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (254,'Дубровка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (255,'Дунаевка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (256,'Еловое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (257,'Ельники',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (258,'Ельняки',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (259,'Ермаково',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (260,'Ершово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (261,'Жаворонково',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (262,'Железнодорожный',6,129000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (263,'Желудево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (264,'Жилино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (265,'Журавлевка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (266,'Забарье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (267,'Загородный',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (268,'Загорское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (269,'Зайцево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (270,'Залесье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (271,'Заливино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (272,'Заливное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (273,'Заовражное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (274,'Заозерье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (275,'Заостровье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (276,'Западный',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (277,'Заповедное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (278,'Заречное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (279,'Заречье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (281,'Звеньевое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (282,'Зверево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (283,'Зеленоградск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (284,'Зеленое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (285,'Знаменка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (286,'Знаменск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (287,'Зорино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (288,'Извилино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (289,'Изобильное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (290,'Ильичевка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (292,'Илюшино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (293,'Исаково',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (294,'Истровка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (295,'Калининград',6,419000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (296,'Калинино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (297,'Калининское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (298,'Калинково',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (299,'Калиновка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (300,'Калужское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (301,'Каменка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (302,'Каменское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (303,'Канаш',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (304,'Карамышево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (305,'Каштановка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (306,'Каштаново',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (308,'Кирова',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (309,'Кленовое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (310,'Климовка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (311,'Коврово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (312,'Колосовка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (313,'Комсомольск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (314,'Константиновка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (315,'Корнево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (316,'Короленково',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (317,'Кострово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (318,'Костромино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (319,'Костюковка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (320,'Красногорское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (321,'Красное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (322,'Краснознаменск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (323,'Краснолесье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (324,'Красноолмский',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (325,'Краснополье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (326,'Краснополянское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (327,'Красноторовка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (328,'Краснофлотское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (329,'Красноярское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (330,'Красный бор',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (332,'Красный Яр',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (333,'Кромы',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (334,'Кругловка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (335,'Крылово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (336,'Кубановка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (337,'Куйбышевское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (338,'Кумачово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (339,'Курортное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (340,'Ладушкин',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (341,'Левобережное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (342,'Лермонтово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (343,'Лесное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (346,'Линево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (347,'Липняки',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (348,'Липовка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (349,'Липово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (350,'Ломово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (351,'Ломоносовка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (352,'Луговое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (355,'Луговское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (356,'Лужки',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (357,'Лунино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (359,'Львовское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (360,'Маевка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (361,'Майское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (363,'Малиники',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (364,'Малиновка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (366,'Маломожайское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (367,'Малые Горки',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (368,'Мальцево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (369,'Мамоново',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (370,'Маршальское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (371,'Марьино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (372,'Матросово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (373,'Маяковское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (374,'Медовое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (375,'Междуречье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (376,'Мельниково',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (377,'Менделеево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (378,'Миайлово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (379,'Мичуринский',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (380,'Мозырь',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (381,'Моргуново',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (382,'Мордовское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (383,'Муромское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (384,'Мысовка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (385,'Нагорное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (386,'Надеждино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (387,'Наимово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (388,'Невское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (389,'Некрасово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (391,'Неман',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (392,'Неманское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (393,'Нестеров',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (394,'Нива',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (395,'Нивенское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (396,'Низовье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (397,'Нилово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (398,'Новая деревня',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (399,'Новобобруйск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (400,'Новогурьевское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (401,'Новоколозное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (402,'Новомосковский',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (403,'Новомосковское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (404,'Новоселово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (405,'Новостроево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (407,'Новостройка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (408,'Овражье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (409,'Озерки',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (411,'Озерск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (412,'Олеово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (413,'Ольоватка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (414,'Ольовка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (415,'Оотное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (416,'Ореовка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (417,'Орловка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (418,'Осиновка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (419,'Островское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (420,'Острогожское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (421,'Отрадное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (422,'Партизанское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (423,'Пеньки',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (424,'Первомайское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (426,'Переславское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (427,'Песочное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (428,'Петино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (429,'Петрово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (430,'Пионерский',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (431,'Победино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (432,'Поваровка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (433,'Пограничный',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (434,'Подгорное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (435,'Подгоровка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (436,'Поддубное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (438,'Поддубы',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (439,'Поддубье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (440,'Подлипово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (441,'Покровское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (443,'Покрышкино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (444,'Полесск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (445,'Полтавское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (446,'Поречье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (447,'Правдино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (448,'Правдинск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (449,'Прибрежное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (450,'Привольное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (451,'Пригородное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (453,'Придорожное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (455,'Приморск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (456,'Приморье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (457,'Приозерное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (459,'Проладное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (460,'Прооровка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (461,'Прудное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (462,'Пруды',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (463,'Пятидорожное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (464,'Разино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (465,'Ракитино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (466,'Рассвет',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (467,'Ржевское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (468,'Ровное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (469,'Родники',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (470,'Романово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (471,'Россия',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (472,'Рощино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (474,'Ручьи',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (475,'Рыбачий',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (476,'Рыбкино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (477,'Рябиновка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (478,'Садовое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (480,'Саранское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (481,'Светлогорск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (482,'Светлый',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (483,'Свобода',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (484,'Северный',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (486,'Севское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (487,'Семеново',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (488,'Славинск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (489,'Славск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (490,'Славское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (491,'Славяновка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (492,'Славянское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (493,'Советск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (494,'Совозное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (495,'Совозный',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (496,'Сокольники',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (497,'Солдатово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (499,'Соловьево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (500,'Солонцы',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (501,'Сопкино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (502,'Сосновка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (505,'Стройный',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (506,'Суворовка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (507,'Суворово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (508,'Талпаки',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (509,'Тимирязево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (510,'Тимофеевка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (511,'Тимофеево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (512,'Тишино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (513,'Тростники',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (514,'Тумановка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (515,'Тургенево',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (516,'Тюленино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (517,'Узловое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (518,'Ульяново',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (519,'Ушаковка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (520,'Ушаково',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (521,'Февральское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (522,'Федотово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (523,'Филипповка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (524,'Фрунзенское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (525,'Фурмановка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (526,'Фурманово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (527,'Хлебниково',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (528,'Холмогоровка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (529,'Холмогорье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (530,'Холмы',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (531,'Чайкино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (532,'Чеово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (533,'Черемуино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (534,'Чернышевское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (535,'Черняховск',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (536,'Чистополье',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (537,'Чистые пруды',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (538,'Шевченко',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (539,'Широкое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (540,'Шолоово',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (541,'Шоссейный',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (542,'Щегловка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (543,'Щеглы',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (544,'Юдино',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (545,'Южный',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (546,'Яблоневка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (548,'Яблоновка',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (549,'Ягодное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (550,'Янтарный',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (551,'Ярки',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (552,'Яровое',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (553,'Ярославское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (554,'Ясеньское',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (555,'Ясная поляна',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (556,'Ясное',6,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (557,'Агаповка',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (558,'Аргаяш',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (559,'Аша',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (560,'Бреды',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (561,'Варна',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (562,'Верхнеуральск',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (563,'Верхний Уфалей',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (564,'Долгодеревенское',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (565,'Еманжелинск',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (566,'Еткуль',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (567,'Златоуст',7,187000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (568,'Карабаш',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (569,'Карталы',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (570,'Касли',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (571,'Катав-Ивановск',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (572,'Кизильское',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (573,'Копейск',7,137000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (574,'Коркино',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (575,'Кунашак',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (576,'Куса',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (577,'Кыштым',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (578,'Магнитогорск',7,410000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (579,'Миасское',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (580,'Миасс',7,152000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (581,'Миньяр',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (582,'Нязепетровск',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (583,'Озерск',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (584,'Октябрьское',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (585,'Пласт',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (586,'Сатка',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (587,'Снежинск',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (588,'Солнечная Долина',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (589,'Трехгорный',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (590,'Троицк',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (591,'Увельский',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (592,'Уйское',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (593,'Усть-Катав',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (594,'Фершампенуаз',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (595,'Чебаркуль',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (596,'Челябинск',7,1096000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (598,'Чесма',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (599,'Южноуральск',7,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (600,'Агрыз',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (601,'Азнакаево',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (602,'Аксубаево',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (603,'Актаныш',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (604,'Алексеевское',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (605,'Алькеево',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (606,'Альметьевск',8,142000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (607,'Апастово',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (608,'Арск',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (609,'Атня',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (610,'Бавлы',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (611,'Балтаси',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (612,'Богатые Сабы',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (613,'Болгар',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (614,'Бугульма',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (615,'Буинск',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (616,'Васильево',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (617,'Верхний Услон',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (618,'Высокая Гора',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (619,'Дрожжаное',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (620,'Елабуга',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (621,'Заинск',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (622,'Зеленодольск',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (623,'Казань',8,1137000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (624,'Кайбицы',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (625,'Камское Устье',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (626,'Кукмор',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (627,'Лаишево',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (628,'Лениногорск',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (629,'Мамадыш',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (630,'Менделеевск',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (631,'Мензелинск',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (632,'Муслюмово',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (633,'Набережные Челны',8,510000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (634,'Нижнекамск',8,227000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (635,'Новошешминск',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (636,'Нурлаты',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (637,'Пестрецы',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (638,'Рыбная Слобода',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (639,'Сарманово',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (640,'Спасск',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (641,'Тетюши',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (642,'Тюлячи',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (643,'Уруссу',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (644,'Черемшаны',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (645,'Чистополь',8,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (646,'Адреаполь',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (647,'Бежецк',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (648,'Белый',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (649,'Бологое',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (650,'Вышний Волочек',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (651,'Западная Двина',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (652,'Зубцов',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (653,'Калязин',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (654,'Кашин',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (655,'Кимры',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (656,'Конаково',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (657,'Красный Холм',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (658,'Кувшиново',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (659,'Лесное',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (660,'Лихославль',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (661,'Максатиха',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (662,'Нелидово',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (663,'Оленино',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (664,'Осташков',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (665,'Пено',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (666,'Рамешки',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (667,'Ржев',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (668,'Сандово',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (669,'Сонково',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (670,'Старица',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (671,'Тверь',9,410000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (672,'Торжок',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (673,'Торопец',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (674,'Удомля',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (675,'Фирово',9,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (676,'Адыгейск',10,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (677,'Гиагинская',10,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (678,'Кошехабль',10,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (679,'Красногвардейск',10,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (680,'Майкоп',10,155000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (681,'Тахтамукай',10,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (682,'Тульский',10,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (683,'Хакуринохабль',10,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (684,'Шовгеновский',10,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (685,'Адыге-Хабль',11,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (686,'Зеленчукская',11,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (687,'Преградная',11,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (688,'Усть-Джегута',11,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (689,'Учкекен',11,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (690,'Черкесск',11,116500);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (691,'Азово',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (692,'Большеречье',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (693,'Большие Уки',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (694,'Горьковское',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (695,'Знаменское',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (696,'Исилькуль',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (697,'Калачинск',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (698,'Колосовка',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (699,'Кормиловка',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (700,'Крутинка',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (701,'Любинский',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (702,'Марьяновка',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (703,'Москаленки',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (704,'Муромцево',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (705,'Называевск',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (706,'Нижняя Омка',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (707,'Нововаршавка',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (708,'Одесское',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (709,'Оконешниково',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (710,'Омск',12,1128000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (711,'Павлоградка',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (712,'Полтавка',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (713,'Русская Поляна',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (714,'Саргатское',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (715,'Седельниково',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (716,'Таврическое',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (717,'Тара',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (718,'Тевриз',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (719,'Тюкалинск',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (720,'Усть-Ишим',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (721,'Черлак',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (722,'Шербакуль',12,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (723,'Азов',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (724,'Аксай',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (725,'Багаевский',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (726,'Батайск',13,104000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (727,'Белая Калитва',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (728,'Боковская',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (729,'Большая Мартыновка',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (730,'Веселый',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (731,'Вешенская',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (732,'Волгодонск',13,169000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (733,'Гуково',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (734,'Донецк',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (735,'Дубовское',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (736,'Егорлыкская',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (737,'Заветное',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (738,'Зерноград',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (739,'Зимовники',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (740,'Кагальницкая',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (741,'Каменоломни',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (742,'Каменск- Шахтинский',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (743,'Кашары',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (744,'Константиновск',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (745,'Красный Сулин',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (746,'Куйбышево',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (747,'Мартыновка',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (748,'Матвеев Курган',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (749,'Миллерово',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (750,'Милютинская',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (751,'Морозовск',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (752,'Новочеркасск',13,177000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (753,'Новошахтинск',13,113000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (754,'Обливская',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (755,'Октябрьск',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (756,'Орловский',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (757,'Песчанокопск',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (758,'Покровское',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (759,'Пролетарск',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (760,'Ремонтное',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (761,'Родионово-Несветайская',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (762,'Романовская',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (763,'Ростов',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (764,'Сальск',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (765,'Семикаракорск',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (766,'Таганрог',13,255000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (767,'Тарасовский',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (768,'Тацинский',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (769,'Усть-Донецкий',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (770,'Целина',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (771,'Цимлянск',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (772,'Чалтырь',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (773,'Чертково',13,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (774,'Шахты',13,245000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (775,'Айкино',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (776,'Акбулак',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (777,'Визинга',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (778,'Воркута',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (779,'Вуктыл',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (780,'Выльгорт',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (781,'Выльногорск',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (782,'Емва',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (783,'Ижма',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (784,'Инта',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (785,'Койгородок',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (786,'Корткерос',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (787,'Обьячево',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (788,'Печора',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (789,'Сосногорск',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (790,'Сыктывкар',14,236000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (791,'Троицко-Печорск',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (792,'Усинск',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (793,'Усогорск',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (794,'Усть-Кулом',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (795,'Усть-Цильма',14,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (796,'Ухта',14,103700);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (797,'Аксарка',15,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (798,'Красноселькуп',15,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (799,'Лабытнанги',15,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (800,'Мужи',15,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (801,'Надым',15,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (802,'Новый Уренгой',15,119600);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (803,'Салехард',15,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (804,'Тазовский',15,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (805,'Харп',15,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (806,'Яр-сале',15,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (807,'Акша',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (808,'Ачинское',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (809,'Белебей',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (810,'Борзя',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (811,'Верх-Усугли',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (812,'Дульдурга',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (813,'Забайкальск',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (814,'Калга',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (815,'Кара',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (816,'Карымская',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (817,'Красной Чикой',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (818,'Краснокаменск',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (819,'Могайтуй',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (820,'Нерчинск',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (821,'Первомайский',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (822,'Приаргунск',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (823,'Сретенск',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (824,'Старая Чара',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (825,'Улеты',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (826,'Хилок',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (827,'Чернышевск',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (828,'Чита',16,309000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (829,'Шелопугино',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (830,'Шилка',16,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (831,'Акъяр',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (832,'Архангельское',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (833,'Аскарово',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (834,'Аскино',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (835,'Баймак',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (836,'Бакалы',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (837,'Белебей',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (838,'Белорецк',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (839,'Бижбуляк',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (840,'Бирск',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (841,'Благовещенск',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (842,'Большеустьикинское',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (843,'Буздяк',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (844,'Бураево',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (845,'Верхнеяркеево',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (846,'Верхние Киги',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (847,'Давлеканово',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (848,'Дюртюли',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (849,'Ермекеево',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (850,'Ермолаево',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (851,'Зилаир',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (852,'Иглино',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (853,'Исянгулово',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (854,'Ишимбай',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (855,'Калтасы',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (856,'Караидель',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (857,'Кармаскалы',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (858,'Киргиз-Мияки',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (859,'Красная Горка',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (860,'Красноусольский',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (861,'Кумертау',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (862,'Кушнаренково',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (863,'Малояз',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (864,'Мелеуз',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (865,'Месягутово',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (866,'Мишкино',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (867,'Мраково',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (868,'Нефтекамск',17,119500);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (869,'Николо-Березовка',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (870,'Новобелокатай',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (871,'Октябрьский',17,109700);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (872,'Раевский',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (873,'Салават',17,156000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (874,'Сибай',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (875,'Стерлибашево',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (876,'Стерлитамак',17,272000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (877,'Толбазы',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (878,'Туймазы',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (879,'Уфа',17,1031000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (880,'Учалы',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (881,'Федоровка',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (882,'Чекмагуш',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (883,'Чишмы',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (884,'Шаран',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (885,'Языково',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (886,'Янаул',17,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (887,'Алагир',18,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (888,'Ардон',18,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (889,'Архонская',18,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (890,'Беслан',18,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (891,'Владикавказ',18,312000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (892,'Дигора',18,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (893,'Моздок',18,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (894,'Октябрьское',18,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (895,'Чикола',18,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (896,'Эльхотово',18,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (897,'Алапаевск',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (898,'Артемовский',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (899,'Арти',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (900,'Асбест',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (901,'Ачит',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (902,'Байкалово',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (903,'Белоярский',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (904,'Березовский',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (905,'Богданович',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (906,'Верхняя Пышма',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (907,'Верхняя Салда',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (908,'Верхотурье',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (909,'Екатеринбург',19,1344000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (911,'Заречный',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (912,'Ивдель',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (913,'Ирбит',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (914,'Каменск-Уральский',19,179000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (915,'Камышлов',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (916,'Карпинск',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (917,'Качканар',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (918,'Кировград',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (919,'Краснотурьинск',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (920,'Красноуральск',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (921,'Красноуфимск',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (922,'Кушва',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (923,'Невьянск',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (924,'Нижние Серги',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (925,'Нижний Тагил',19,373000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (926,'Нижняя Салда',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (927,'Нижняя Тура',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (928,'Новая Ляля',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (929,'Новоуральск',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (930,'Первоуральск',19,134000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (931,'Полевский',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (932,'Пышма',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (933,'Ревда',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (934,'Реж',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (935,'Североуральск',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (936,'Серов',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (937,'Сухой Лог',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (938,'Сысерть',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (939,'Таборы',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (940,'Тавда',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (941,'Талица',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (942,'Тугулым',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (943,'Туринская Слобода',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (944,'Туринск',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (945,'Шаля',19,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (946,'Алатырь',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (947,'Аликово',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (948,'Батырево',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (949,'Вурнары',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (950,'Ибреси',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (951,'Канаш',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (952,'Козловка',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (953,'Комсомольское',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (954,'Красноармейское',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (955,'Красные Четаи',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (956,'Кугеси',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (957,'Мариинский Посад',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (958,'Моргауши',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (959,'Порецкое',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (960,'Урмары',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (961,'Цивильск',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (962,'Чебоксары',20,448000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (963,'Шемурша',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (964,'Шумерля',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (965,'Ядрин',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (966,'Яльчики',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (967,'Янтиково',20,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (968,'Алдан',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (969,'Амга',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (970,'Батагай-Алыта',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (971,'Бердигестях',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (972,'Борогонцы',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (973,'Верхневилюйск',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (974,'Вилюйск',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (975,'Ленск',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (976,'Майя',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (977,'Мирный',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (978,'Намцы',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (979,'Нерюнгри',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (980,'Нюрба',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (981,'Олекминск',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (982,'Покровск',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (983,'Сангар',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (984,'Сунтар',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (985,'Тикси',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (986,'Усть-Мая',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (987,'Хандыга',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (988,'Чурапча',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (989,'Ытык-Кюель',21,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (990,'Якутск',21,268000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (991,'Алейск',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (992,'Алтайское',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (993,'Баево',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (994,'Барнаул',22,598000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (995,'Белокуриха',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (996,'Бийск',22,220000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (997,'Благовещенка',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (998,'Бурла',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (999,'Быстрый Исток',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1000,'Волчиха',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1001,'Гальбштадт',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1002,'Горняк',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1003,'Ельцовка',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1004,'Завьялово',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1005,'Залесово',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1006,'Заринск',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1007,'Змеиногорск',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1008,'Зональное',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1009,'Калманка',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1010,'Камень-на-Оби',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1011,'Ключи',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1012,'Косиха',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1013,'Кош-Агач',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1014,'Красногорское',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1015,'Краснощеково',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1016,'Крутиха',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1017,'Кулунда',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1018,'Курья',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1019,'Кытманово',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1020,'Мамонтово',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1021,'Михайловка',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1022,'Новичиха',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1023,'Новоалтайск',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1024,'Новоегорьевское',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1025,'Павловск',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1026,'Панкрушиха',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1027,'Петропавловское',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1028,'Поспелиха',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1029,'Ребриха',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1030,'Родино',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1031,'Романово',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1032,'Рубцовск',22,155000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1033,'Славгород',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1034,'Смоленское',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1035,'Советское',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1036,'Солонешное',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1037,'Солтон',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1038,'Староалейское',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1039,'Табуны',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1040,'Тальменка',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1041,'Тогул',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1042,'Топчиха',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1043,'Троицкое',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1044,'Тюменцево',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1045,'Угловское',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1046,'Усть-Калманка',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1047,'Усть-Пристань',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1048,'Хабары',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1049,'Целинное',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1050,'Чарышское',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1051,'Шелаболиха',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1052,'Шипуново',22,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1053,'Александров',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1054,'Владимир',23,338000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1055,'Гороховец',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1056,'Гусь Хрустальный',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1057,'Камешково',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1058,'Киржач',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1059,'Ковров',23,148000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1060,'Кольчугино',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1061,'Красная Горбатка',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1062,'Меленки',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1063,'Муром',23,117000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1064,'Петушки',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1065,'Радужный',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1066,'Собинка',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1067,'Судогда',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1068,'Суздаль',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1069,'Юрьев- Польский',23,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1070,'Александров Гай',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1071,'Аркадак',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1072,'Аткарск',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1073,'Базарный Карабулак',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1074,'Балаково',24,197000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1075,'Балашов',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1076,'Балтай',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1077,'Вольск',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1078,'Воскресенское',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1079,'Горный',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1080,'Дергачи',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1081,'Духовницкое',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1082,'Екатериновка',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1083,'Ершов',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1084,'Ивантеевка',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1085,'Калининск',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1086,'Красноармейск',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1087,'Красный Кут',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1088,'Лысые Горы',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1089,'Маркс',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1090,'Мокроус',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1091,'Новоузенск',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1092,'Новые Бурасы',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1093,'Озинки',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1094,'Перелюб',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1095,'Петровск',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1096,'Питерка',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1097,'Пугачев',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1098,'Ровное',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1099,'Романовка',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1100,'Ртищево',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1101,'Самойловка',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1102,'Саратов',24,827000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1103,'Степное',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1104,'Татищево',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1105,'Турки',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1106,'Хвалынск',24,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1107,'Энгельс',24,209000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1108,'Александровское',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1109,'Арзгир',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1110,'Благодарный',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1111,'Буденновск',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1112,'Георгиевск',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1113,'Грачевка',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1114,'Дивное',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1115,'Ессентуки',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1116,'Железноводск',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1117,'Зеленокумск',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1118,'Изобильный',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1119,'Ипатово',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1120,'Кисловодск',25,129000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1121,'Красногвардейское',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1122,'Курсавка',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1123,'Левокумское',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1124,'Лермонтов',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1125,'Летняя Ставка',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1126,'Минеральные Воды',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1127,'Невинномысск',25,128000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1128,'Нефтекумск',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1129,'Новоалександровск',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1130,'Новопавловск',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1131,'Новоселицкое',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1132,'Пятигорск',25,143000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1133,'Светлоград',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1134,'Ставрополь',25,369000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1135,'Степное',25,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1136,'Александровское',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1137,'Асино',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1138,'Бакчар',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1139,'Белый Яр',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1140,'Зырянское',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1141,'Каргасок',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1142,'Кожевниково',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1143,'Колпашево',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1144,'Кривошеино',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1145,'Мельниково',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1146,'Молчаново',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1147,'Парабель',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1148,'Первомайское',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1149,'Подгорное',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1150,'Северск',26,107000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1151,'Стрежевой',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1152,'Тегульдет',26,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1153,'Томск',26,509000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1154,'Александровск',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1155,'Барда',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1156,'Березники',27,164000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1157,'Березовка',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1158,'Большая Соснова',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1159,'Верещагино',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1160,'Горнозаводск',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1161,'Гремячинск',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1162,'Губаха',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1163,'Добрянка',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1164,'Елово',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1165,'Звездный',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1166,'Ильинский',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1167,'Карагай',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1168,'Кизел',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1169,'Красновишерск',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1170,'Краснокамск',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1171,'Кудымкар',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1172,'Куеда',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1173,'Кунгур',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1174,'Лысьва',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1175,'Нытва',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1176,'Октябрьский',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1177,'Орда',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1178,'Оса',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1179,'Оханск',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1180,'Очер',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1181,'Пермь',27,987000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1182,'Сива',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1183,'Соликамск',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1184,'Суксун',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1185,'Уинское',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1186,'Усолье',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1187,'Усть-Кишерть',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1188,'Чайковский',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1189,'Частые',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1190,'Чердынь',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1191,'Чернушка',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1192,'Чусовой',27,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1193,'Александро-Невский',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1194,'Ермишь',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1195,'Кадом',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1196,'Караблино',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1197,'Касимов',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1198,'Милославское',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1199,'Михайлов',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1200,'Новомичуринск',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1201,'Пителино',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1202,'Пронск',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1203,'Путятино',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1204,'Рыбное',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1205,'Ряжск',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1206,'Рязань',28,509000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1207,'Сапожок',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1208,'Сасово',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1209,'Скопин',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1210,'Солотча',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1211,'Спас-Клепики',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1212,'Спасск-Рязанский',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1213,'Старожилово',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1214,'Ухолово',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1215,'Чучково',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1216,'Шацк',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1217,'Шилово',28,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1218,'Алексеевка',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1219,'Белгород',29,363000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1220,'Борисовка',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1221,'Валуйки',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1222,'Вейделевка',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1223,'Волоконовка',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1224,'Грайворон',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1225,'Губкин',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1226,'Ивня',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1227,'Короча',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1228,'Красногвардейское',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1229,'Красное',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1230,'Новый Оскол',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1231,'Прохоровка',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1232,'Ракитное',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1233,'Ровеньки',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1234,'Старый Оскол',29,222000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1235,'Строитель',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1236,'Чернянка',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1237,'Шебекино',29,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1238,'Алексеевка',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1239,'Безенчук',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1240,'Большая Глушица',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1241,'Большая Черниговка',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1242,'Борское',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1243,'Жигулевск',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1244,'Исаклы',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1245,'Кинель',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1246,'Кинель-Черкасы',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1247,'Клявлино',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1248,'Кошки',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1249,'Красноармейское',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1250,'Красный Яр',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1251,'Нефтегорск',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1252,'Новокуйбышевск',30,110400);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1253,'Октябрьск',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1254,'Отрадный',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1255,'Пестровка',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1256,'Похвистнево',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1257,'Приволжье',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1258,'Самара',30,1134000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1272,'Сергиевск',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1273,'Сызрань',30,179000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1274,'Тольятти',30,722000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1275,'Чапаевск',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1276,'Челно-Вершины',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1277,'Шентала',30,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1278,'Алексеевская',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1279,'Быково',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1280,'Волгоград',31,980000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1281,'Волжский',31,305000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1282,'Городище',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1283,'Даниловка',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1284,'Дубовка',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1285,'Елань',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1286,'Жирновск',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1287,'Иловля',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1288,'Калач-на-дону',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1289,'Камышин',31,116000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1290,'Киквидзе',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1291,'Клетский',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1292,'Котельниково',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1293,'Котово',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1294,'Кумылженская',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1295,'Ленинск',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1296,'Михайловка',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1297,'Нехаевский',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1298,'Николаевск',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1299,'Новоаннинский',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1300,'Новониколаевский',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1301,'Октябрьский',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1302,'Ольховка',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1303,'Палласовка',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1304,'Преображенская',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1305,'Рудня',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1306,'Светлый Яр',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1307,'Серафимович',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1308,'Средняя Ахтуба',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1309,'Старая Полтавка',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1310,'Суровикино',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1311,'Урюпинск',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1312,'Фролово',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1313,'Чернышковский',31,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1314,'Алексин',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1315,'Арсеньево',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1316,'Архангельское',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1317,'Белев',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1318,'Богородицк',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1319,'Венев',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1320,'Волово',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1321,'Донской',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1322,'Дубна',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1323,'Ефремов',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1324,'Заокский',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1325,'Кимовск',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1326,'Киреевск',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1327,'Куркино',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1328,'Ленинский',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1329,'Новомосковск',32,131000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1330,'Одоев',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1331,'Плавск',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1332,'Суворов',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1333,'Теплое',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1334,'Тула',32,492000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1335,'Узловая',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1336,'Чернь',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1337,'Щекино',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1338,'Ясногорск',32,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1339,'Алнаши',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1340,'Балезино',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1341,'Вавож',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1342,'Воткинск',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1343,'Глазов',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1344,'Грахово',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1345,'Дебесы',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1346,'Завьялово',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1347,'Игра',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1348,'Ижевск',33,611000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1349,'Камбарка',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1350,'Каракулино',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1351,'Кез',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1352,'Кизнер',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1353,'Киясово',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1354,'Красногорское',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1355,'Малая Пурга',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1356,'Можга',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1357,'Сарапул',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1358,'Селты',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1359,'Сюмси',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1360,'Ува',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1361,'Шаркан',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1362,'Юкаменское',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1363,'Якшур-бодья',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1364,'Яр',33,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1365,'Альменево',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1366,'Белозерское',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1367,'Варгаши',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1368,'Глядянское',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1369,'Далматово',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1370,'Звериноголовское',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1371,'Каргаполье',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1372,'Катайск',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1373,'Кетово',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1374,'Курган',34,322000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1375,'Куртамыш',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1376,'Лебяжье',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1377,'Макушино',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1378,'Мишкино',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1379,'Мокроусово',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1380,'Петухово',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1381,'Половинное',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1382,'Сафакулево',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1383,'Целинное',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1384,'Частоозерье',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1385,'Шадринск',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1386,'Шатрово',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1387,'Шумиха',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1388,'Щучье',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1389,'Юргамыш',34,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1390,'Амурск',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1391,'Аян',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1392,'Бикин',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1393,'Богородское',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1394,'Ванино',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1395,'Вяземский',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1396,'Комсомольск-на-Амуре',35,270000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1397,'Николаевск-на-Амуре',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1398,'Охотск',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1399,'Переяславка',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1400,'Полина Осипенко',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1401,'Советская Гавань',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1402,'Солнечный',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1403,'Троицкое',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1404,'Хабаровск',35,581000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1405,'Чегдомын',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1406,'Чумикан',35,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1407,'Анадырь',36,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1408,'Ангарск',37,241000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1409,'Братск',37,250000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1410,'Железногорск-Илимский',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1411,'Залари',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1412,'Зима',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1413,'Иркутск',37,581000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1414,'Казачинское',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1415,'Киренск',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1416,'Новонукутский',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1417,'Тайшет',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1418,'Усолье-Сибирское',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1419,'Усть-Илимск',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1420,'Усть-Кут',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1421,'Усть-Уда',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1422,'Черемхово',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1423,'Чунский',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1424,'Шелехов',37,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1425,'Анжеро-Судженск',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1426,'Белово',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1427,'Березовский',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1428,'Верх-Чебула',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1429,'Гурьевск',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1430,'Ижморский',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1431,'Кемерово',38,521000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1432,'Киселевск',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1433,'Крапивинский',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1434,'Ленинск-Кузнецкий',38,104600);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1435,'Мариинск',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1436,'Междуреченск',38,104000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1437,'Мыски',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1438,'Новокузнецк',38,564000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1439,'Осинники',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1440,'Прокопьевск',38,211000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1441,'Промышленная',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1442,'Тайга',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1443,'Таштагол',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1444,'Тисуль',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1445,'Топки',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1446,'Тяжинский',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1447,'Юрга',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1448,'Яшкино',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1449,'Яя',38,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1450,'Анна',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1451,'Бобров',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1452,'Богучар',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1453,'Борисоглебск',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1454,'Бутурлиновка',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1455,'Верхний Мамон',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1456,'Верхняя Хава',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1457,'Воробьевка',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1458,'Воронеж',39,848000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1459,'Грибановский',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1460,'Калач',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1461,'Каменка',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1462,'Кантемировка',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1463,'Каширское',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1464,'Лиски',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1465,'Нижнедевицк',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1466,'Новая Усмань',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1467,'Нововоронеж',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1468,'Новохоперск',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1469,'Ольховатка',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1470,'Острогожск',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1471,'Павловск',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1472,'Панино',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1473,'Петропавловка',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1474,'Поворино',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1475,'Подгоренский',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1476,'Рамонь',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1477,'Репьевка',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1478,'Россия - федеральные сотовые н',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1479,'Семилуки',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1480,'Таловая',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1481,'Терновка',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1482,'Хохольский',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1483,'Эртиль',39,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1484,'Антропово',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1485,'Боговарово',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1486,'Буй',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1487,'Волгореченск',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1488,'Вохма',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1489,'Галич',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1490,'Георгиевское',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1491,'Кадый',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1492,'Кологрив',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1493,'Кострома',40,270000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1494,'Красное-на-Волге',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1495,'Макарьев',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1496,'Мантурово',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1497,'Нерехта',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1498,'Нея',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1499,'Островское',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1500,'Павино',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1501,'Парфеньево',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1502,'Поназырево',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1503,'Пыщуг',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1504,'Солигалич',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1505,'Судиславль',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1506,'Сусанино',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1507,'Чухлома',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1508,'Шарья',40,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1509,'Анучино',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1510,'Арсеньев',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1511,'Артем',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1512,'Большой Камень',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1513,'Владивосток',41,617000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1514,'Владимиро-Александровское',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1515,'Вольно-Надеждинское',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1516,'Дальнегорск',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1517,'Дальнереченск',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1518,'Кавалерово',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1519,'Камень-Рыболов',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1520,'Кировский',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1521,'Лазо',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1522,'Лесозаводск',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1523,'Лучегорск',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1524,'Михайловка',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1525,'Находка',41,166000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1526,'Ольга',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1527,'Партизанск',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1528,'Пограничный',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1529,'Покровка',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1530,'Славянка',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1531,'Спасск-Дальний',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1532,'Терней',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1533,'Уссурийск',41,153000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1534,'Фокино',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1535,'Хороль',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1536,'Черниговка',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1537,'Чугуевка',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1538,'Яковлевка',41,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1539,'Апатиты',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1540,'Заозерск',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1541,'Заполярный',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1542,'Кандалакша',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1543,'Кировск',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1544,'Ковдор',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1545,'Кола',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1546,'Ловозеро',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1547,'Мончегорск',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1548,'Мурманск',42,309000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1549,'Никель',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1550,'Оленегорск',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1551,'Полярные Зори',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1552,'Полярный',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1553,'Североморск',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1554,'Скалистый',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1555,'Снежногрск',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1556,'Умба',42,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1557,'Арбаж',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1558,'Белая Холуница',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1559,'Богородское',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1560,'Верхошижемье',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1561,'Вятские Поляны',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1562,'Даровский',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1563,'Зуевка',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1564,'Кикнур',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1565,'Кильмезь',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1566,'Киров',43,464000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1567,'Кирово-Чепецк',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1568,'Кирс',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1569,'Котельнич',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1570,'Кумены',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1571,'Лебяжье',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1572,'Ленинское',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1573,'Луза',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1574,'Малмыж',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1575,'Мураши',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1576,'Нагорск',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1577,'Нема',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1578,'Нолинск',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1579,'Омутнинск',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1580,'Опарино',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1581,'Оричи',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1582,'Орлов',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1583,'Пижанка',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1584,'Подосиновец',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1585,'Санчурск',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1586,'Свеча',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1587,'Слободской',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1588,'Советск',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1589,'Суна',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1590,'Тужа',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1591,'Уни',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1592,'Уржум',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1593,'Фаленки',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1594,'Юрья',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1595,'Яранск',43,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1596,'Аргун',44,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1597,'Ачхой-Мартан',44,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1598,'Ведено',44,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1599,'Грозный',44,251000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1600,'Гудермес',44,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1601,'Знаменское',44,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1602,'Малгобек',44,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1603,'Ножай-Юрт',44,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1604,'Урус-Мартан',44,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1605,'Шали',44,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1606,'Шатой',44,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1607,'Ардатов',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1608,'Атюрьево',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1609,'Атяшево',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1610,'Большие Березняки',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1611,'Большое Игнатово',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1612,'Дубенки',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1613,'Ельники',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1614,'Зубова Поляна',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1615,'Инсар',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1616,'Кадошкино',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1617,'Кемля',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1618,'Ковылкино',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1619,'Кочкурово',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1620,'Краснослободск',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1621,'Лямбирь',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1622,'Ромоданово',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1623,'Рузаевка',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1624,'Саранск',45,296000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1625,'Старое Шайгово',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1626,'Темников',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1627,'Теньгушево',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1628,'Торбеево',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1629,'Чамзинка',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1630,'Явас',45,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1631,'Ардатов',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1632,'Арзамас',46,105300);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1633,'Балахна',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1634,'Богородск',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1635,'Большое Болдино',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1636,'Большое Мурашкино',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1637,'Бор',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1638,'Бутурлино',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1639,'Вад',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1640,'Варнавино',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1641,'Вача',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1642,'Ветлуга',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1643,'Вознесенское',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1644,'Воротынец',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1645,'Воскресенское',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1646,'Выкса',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1647,'Гагино',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1648,'Городец',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1649,'Дальнее Константиново',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1650,'Дзержинск',46,244000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1651,'Дивеево',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1652,'Заволжье',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1653,'Княгинино',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1654,'Ковернино',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1655,'Красные Баки',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1656,'Кстово',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1657,'Кулебаки',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1658,'Лукоянов',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1659,'Лысково',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1660,'Навашино',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1661,'Нижний Новгород',46,1271000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1665,'Павлово',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1666,'Первомайск',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1667,'Перевоз',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1668,'Пильна',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1669,'Починки',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1670,'Саров',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1671,'Семенов',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1672,'Сергач',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1673,'Сеченово',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1674,'Сосновское',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1675,'Спасское',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1676,'Тонкино',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1677,'Уразовка',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1678,'Урень',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1679,'Чкаловск',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1680,'Шаранга',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1681,'Шатки',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1682,'Шахунья',46,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1683,'Архангельск',47,348000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1684,'Березник',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1685,'Вельск',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1686,'Верхняя Тойма',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1687,'Ильинско-Подомское',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1688,'Каргополь',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1689,'Карпогоры',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1690,'Коноша',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1691,'Коряжма',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1692,'Котлас',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1693,'Красноборск',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1694,'Лешуконское',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1695,'Мезень',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1696,'Мирный',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1697,'Нарьян-Мар',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1698,'Новодвинск',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1699,'Няндома',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1700,'Октябрьский',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1701,'Онега',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1702,'о.Соловки',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1703,'Плесецк',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1704,'Северодвинск',47,187000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1705,'Холмогоры',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1706,'Шенкурск',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1707,'Яренск',47,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1708,'Астрахань',48,506000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1709,'Ахтубинск',48,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1710,'Володарский',48,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1711,'Енотаевка',48,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1712,'Знаменск',48,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1713,'Икряное',48,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1714,'Камызяк',48,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1715,'Красный Яр',48,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1716,'Лиман',48,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1717,'Нариманов',48,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1718,'Началово',48,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1719,'Харабали',48,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1720,'Черный Яр',48,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1721,'Ачайваям',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1722,'Вилючинск-3',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1723,'Вилючинск',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1724,'Елизово',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1725,'Каменское',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1726,'Ключи',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1727,'Корф',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1728,'Мильково',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1729,'Оссора',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1730,'Палана',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1731,'Пахачи',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1732,'Петропавловск-Камчатский',49,194000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1733,'Соболево',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1734,'Средние Пахачи',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1735,'Тигиль',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1736,'Тиличики',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1737,'Усть-Большерецк',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1738,'Усть-Камчатск',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1739,'Усть-Хайрюзово',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1740,'Эссо',49,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1741,'Бабаево',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1742,'Белозерск',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1743,'Великий Устюг',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1744,'Верховажье',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1745,'Вожега',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1746,'Вологда',50,286000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1747,'Вытегра',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1748,'Грязовец',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1749,'Кадуй',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1750,'Кириллов',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1751,'Кичменгский Городок',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1752,'Липин Бор',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1753,'Никольск',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1754,'Нюксеница',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1755,'Село Им. Бабушкина',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1756,'Сокол',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1757,'Сямжа',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1758,'Тарногский Городок',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1759,'Тотьма',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1760,'Устье',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1761,'Устюжна',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1762,'Харовск',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1763,'Чагода',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1764,'Череповец',50,310000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1765,'Шексна',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1766,'Шуйское',50,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1767,'Бабынино',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1768,'Балабаново',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1769,'Боровск',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1770,'Думиничи',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1771,'Жиздра',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1772,'Жуково',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1773,'Калуга',51,328000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1774,'Киров',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1775,'Козельск',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1776,'Кондрово',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1777,'Людиново',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1778,'Малоярославец',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1779,'Медынь',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1780,'Мещовск',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1781,'Мосальск',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1782,'Обнинск',51,105600);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1783,'Перемышль',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1784,'Спас-Деменск',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1785,'Сухиничи',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1786,'Таруса',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1787,'Ульяново',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1788,'Ферзиково',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1789,'Хвастовичи',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1790,'Юхнов',51,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1791,'Баган',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1792,'Барабинск',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1793,'Бердск',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1794,'Болотное',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1795,'Венгерово',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1796,'Довольное',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1797,'Здвинск',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1798,'Искитим',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1799,'Карасук',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1800,'Каргат',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1801,'Колывань',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1802,'Коченево',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1803,'Кочки',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1804,'Краснозерское',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1805,'Куйбышев',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1806,'Купино',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1807,'Кыштовка',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1808,'Маслянино',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1809,'Мошково',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1810,'Новосибирск',52,1409000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1812,'Обь',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1813,'Ордынское',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1814,'Северное',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1815,'Сузун',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1816,'Татарск',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1817,'Тогучин',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1818,'Убинское',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1819,'Усть-Тарка',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1820,'Чаны',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1821,'Черепаново',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1822,'Чистоозерное',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1823,'Чулым',52,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1824,'Базарный Сызган',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1825,'Барыш',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1826,'Большое Нагаткино',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1827,'Вешкайма',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1828,'Димитровград',53,127500);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1829,'Инза',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1830,'Ишеевка',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1831,'Карсун',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1832,'Кузоватово',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1833,'Майна',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1834,'Николаевка',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1835,'Новая Малыкла',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1836,'Новоспасское',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1837,'Новоульяновск',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1838,'Павловка',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1839,'Радищево',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1840,'Сенгилей',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1841,'Старая Кулатка',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1842,'Старая Майна',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1843,'Сурское',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1844,'Тереньга',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1845,'Ульяновск',53,603000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1846,'Чердаклы',53,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1847,'Байконур',54,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1848,'Горно-Алтайск',54,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1849,'Майма',54,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1850,'Онгудай',54,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1851,'Турочак',54,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1852,'Усть-Кан',54,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1853,'Чоя',54,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1854,'Шебалино',54,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1855,'Баксан',55,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1856,'Залукокоаже',55,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1857,'Кошхатау',55,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1858,'Майский',55,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1859,'Нальчик',55,269000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1860,'Нарткала',55,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1861,'Прохладный',55,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1862,'Советское',55,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1863,'Терек',55,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1864,'Терскол',55,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1865,'Тырныауз',55,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1866,'Чегем Первый',55,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1867,'Баргузин',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1868,'Бичура',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1869,'Гусиноозерск',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1870,'Закаменск',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1871,'Иволгинск',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1872,'Кижинга',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1873,'Курумкан',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1874,'Кяхта',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1875,'Мухоршибирь',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1876,'Петропавловка',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1877,'Северобайкальск',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1878,'Сосново-Озерское',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1879,'Тарбагатай',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1880,'Турунтаево',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1881,'Улан-Удэ',56,377000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1882,'Хоринск',56,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1883,'Батецкий',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1884,'Боровичи',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1885,'Валдай',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1886,'Великий Новгород',57,215000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1887,'Волот',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1888,'Демянск',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1889,'Крестцы',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1890,'Любытино',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1891,'Малая Вишера',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1892,'Марево',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1893,'Мошенское',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1894,'Окуловка',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1895,'Парфино',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1896,'Пестово',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1897,'Поддорье',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1898,'Сольцы',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1899,'Старая Русса',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1900,'Хвойная',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1901,'Холм',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1902,'Чудово',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1903,'Шимск',57,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1904,'Башмаково',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1905,'Беднодемьяновск',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1906,'Беково',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1907,'Белинский',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1908,'Бессоновка',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1909,'Вадинск',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1910,'Городище',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1911,'Земетчино',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1912,'Исса',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1913,'Каменка',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1914,'Колышлей',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1915,'Кондоль',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1916,'Кузнецк',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1917,'Лопатино',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1918,'Лунино',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1919,'Малая Сердоба',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1920,'Мокшан',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1921,'Наровчат',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1922,'Неверкино',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1923,'Нижний Ломов',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1924,'Никольск',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1925,'Пачелма',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1926,'Пенза',58,506000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1927,'Русский Камешкир',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1928,'Сердобск',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1929,'Сосновоборск',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1930,'Тамала',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1931,'Шемышейка',58,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1932,'Бежаницы',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1933,'Великие Луки',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1934,'Гдов',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1935,'Дедовичи',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1936,'Дно',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1937,'Красногородское',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1938,'Кунья',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1939,'Локня',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1940,'Невель',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1941,'Новоржев',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1942,'Новосокольники',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1943,'Опочка',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1944,'Остров',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1945,'Палкино',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1946,'Печоры',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1947,'Плюсса',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1948,'Порхов',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1949,'Псков',59,192000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1950,'Пустошка',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1951,'Пушкинские Горы',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1952,'Пыталово',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1953,'Себеж',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1954,'Струги- Красные',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1955,'Усвяты',59,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1956,'Белая',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1957,'Большое Солдатское',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1958,'Глушково',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1959,'Горшечное',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1960,'Дмитриев-Льговский',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1961,'Железногорск',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1962,'Золотухино',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1963,'Касторное',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1964,'Конышевка',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1965,'Коренево',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1966,'Курск',60,414000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1967,'Курчатов',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1968,'Кшенский',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1969,'Льгов',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1970,'Мантурово',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1971,'Медвенка',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1972,'Обоянь',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1973,'Поныри',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1974,'Пристень',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1975,'Прямицыно',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1976,'Рыльск',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1977,'Солнцево',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1978,'Суджа',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1979,'Тим',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1980,'Фатеж',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1981,'Хомутивка',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1982,'Черемисиново',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1983,'Щигры',60,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1984,'Белогорск',61,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1985,'Благовещенск',61,206000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1986,'Завитинск',61,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1987,'Зея',61,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1988,'Ивановка',61,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1989,'Константиновка',61,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1990,'Новокиевский Увал',61,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1991,'Райчихинск',61,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1992,'Свободный',61,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1993,'Серышево',61,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1994,'Сковородино',61,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1995,'Тында',61,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1996,'Шимановск',61,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1997,'Беломорск',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1998,'Калевала',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (1999,'Кемь',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2000,'Кондопога',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2001,'Костомукша',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2002,'Лахденпохья',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2003,'Лоухи',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2004,'Медвежьегорск',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2005,'Муезерский',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2006,'Олонец',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2007,'Петрозаводск',62,271000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2008,'Питкяранта',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2009,'Пряжа',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2010,'Пудож',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2011,'Сегежа',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2012,'Сортавала',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2013,'Суоярви',62,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2014,'Белоярский',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2015,'Березово',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2016,'Когалым',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2017,'Кондинское',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2018,'Лангепас',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2019,'Лянтор',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2020,'Мегион',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2021,'Междуреченский',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2022,'Нефтеюганск',63,119000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2023,'Нижневартовск',63,250000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2024,'Нягань',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2025,'Октябрьское',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2026,'Пыть-ях',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2027,'Радужный',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2028,'Советский',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2029,'Сургут',63,302000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2030,'Урай',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2031,'Ханты-мансийск',63,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2032,'Биробиджан',64,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2033,'Бокситогорск',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2034,'Волосово',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2035,'Волхов',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2036,'Всеволожск',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2037,'Выборг',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2038,'Гатчина',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2039,'Кингесепп',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2040,'Кириши',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2041,'Кировск',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2042,'Лодейное Поле',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2043,'Ломоносов',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2044,'Луга',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2045,'Пикалево',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2046,'Подпорожье',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2047,'Приозерск',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2048,'Санкт-Петербург',65,4600000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2049,'Сланцы',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2050,'Сосновый Бор',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2051,'Тихвин',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2052,'Тосно',65,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2053,'Болхов',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2054,'Верховье',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2055,'Глазуновка',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2056,'Дмитровск-Орловский',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2057,'Залегощь',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2058,'Змиевка',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2059,'Знаменское',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2060,'Колпна',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2061,'Кромы',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2062,'Ливны',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2063,'Малоархангельское',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2064,'Мценск',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2065,'Нарышкино',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2066,'Орел',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2067,'Покровское',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2068,'Тросна',66,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2069,'Большое Село',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2070,'Борисоглебский',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2071,'Брейтово',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2072,'Гаврилов-ям',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2073,'Данилов',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2074,'Любим',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2075,'Мышкин',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2076,'Некрасовское',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2077,'Новый Некоуз',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2078,'Переяславль-Залесский',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2079,'Пошехонье',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2080,'Пречистое',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2081,'Ростов',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2082,'Рыбинск',67,207000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2083,'Тугаев',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2084,'Углич',67,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2085,'Ярославль',67,607000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2086,'Большой Царын',68,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2087,'Городовиковск',68,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2088,'Ики-Бурул',68,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2089,'Каспийский',68,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2090,'Кетченеры',68,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2091,'Комсомольский',68,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2092,'Приютное',68,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2093,'Садовое',68,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2094,'Троицкое',68,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2095,'Цаган Аман',68,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2096,'Элиста',68,103000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2097,'Яшалта',68,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2098,'Яшкуль',68,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2099,'Бондари',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2100,'Гавриловка-2',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2101,'Дмитриевка',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2102,'Жердевка',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2103,'Знаменка',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2104,'Инжавино',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2105,'Кирсанов',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2106,'Котовск',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2107,'Мичуринск',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2108,'Мордово',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2109,'Моршанск',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2110,'Мучкапский',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2111,'Первомайский',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2112,'Петровское',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2113,'Пичаево',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2114,'Рассказово',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2115,'Ржакса',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2116,'Сатинка',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2117,'Сосновка',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2118,'Староюрьево',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2119,'Тамбов',69,278000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2120,'Токаревка',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2121,'Уварово',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2122,'Умет',69,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2123,'Брянск',70,409000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2124,'Выгоничи',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2125,'Гордеевка',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2126,'Дубровка',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2127,'Дятьково',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2128,'Жиратино',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2129,'Жуковка',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2130,'Злынка',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2131,'Карачев',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2132,'Клетня',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2133,'Климово',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2134,'Клинцы',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2135,'Комаричи',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2136,'Красная Горка',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2137,'Локоть',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2138,'Мглин',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2139,'Навля',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2140,'Новозыбков',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2141,'Погар',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2142,'Почеп',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2143,'Рогнедино',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2144,'Севск',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2145,'Стародуб',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2146,'Суземка',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2147,'Сураж',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2148,'Трубачевск',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2149,'Унеча',70,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2150,'Велиж',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2151,'Вязяма',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2152,'Гагарин',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2153,'Глинка',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2154,'Демидов',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2155,'Десногорск',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2156,'Дорогобуж',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2157,'Духовщина',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2158,'Ельня',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2159,'Ершичи',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2160,'Кардымово',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2161,'Красный',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2162,'Монастырщина',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2163,'Новодугино',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2164,'Починок',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2165,'Рославль',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2166,'Рудня',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2167,'Сафоново',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2168,'Смоленск',71,314000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2169,'Сычевка',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2170,'Темкино',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2171,'Угра',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2172,'Хиславичи',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2173,'Холм-Жирковский',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2174,'Шумячи',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2175,'Ярцево',71,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2176,'Верхний Ландех',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2177,'Вичуга',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2178,'Гаврилов Посад',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2179,'Иваново',72,403000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2180,'Ильинское-Хованское',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2181,'Кинешма',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2182,'Комсомольск',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2183,'Лежнево',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2184,'Палех',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2185,'Пестяки',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2186,'Приволжск',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2187,'Пучеж',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2188,'Родники',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2189,'Савино',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2190,'Тейково',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2191,'Фурманов',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2192,'Шуя',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2193,'Южа',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2194,'Юрьевич',72,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2195,'Волжск',73,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2196,'Звенигово',73,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2197,'Йошкар-ола',73,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2198,'Килемары',73,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2199,'Козьмодемьянск',73,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2200,'Куженер',73,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2201,'Морки',73,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2202,'Новый Торъял',73,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2203,'Оршанка',73,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2204,'Параньга',73,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2205,'Сернур',73,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2206,'Советский',73,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2207,'Юрино',73,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2208,'Волово',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2209,'Грязи',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2210,'Данков',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2211,'Добринка',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2212,'Доброе',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2213,'Долгоруково',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2214,'Елец',74,110400);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2215,'Задонск',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2216,'Измалково',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2217,'Красное',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2218,'Лебедянь',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2219,'Лев Толстой',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2220,'Липецк',74,502000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2221,'Становое',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2222,'Тербуны',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2223,'Усмань',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2224,'Хлевное',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2225,'Чаплыгин',74,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2226,'Волоколамск',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2227,'Воскресенск',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2228,'Голицыно',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2229,'Дмитров',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2230,'Домодедово',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2231,'Дубна',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2232,'Егорьевск',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2233,'Жуковский',75,105000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2234,'Зарайск',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2235,'Звенигород',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2236,'Истра',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2237,'Клин',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2238,'Коломна',75,148000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2239,'Лотошино',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2240,'Луховицы',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2241,'Можайск',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2242,'Москва',75,10563000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2243,'Наро-Фоминск',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2244,'Ногинск',75,116000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2245,'Озеры',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2246,'Орехово-Зуево',75,121000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2247,'Павловский Посад',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2248,'Подольск',75,183000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2249,'Пушкино',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2250,'Раменское',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2251,'Руза',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2252,'Сергиев Посад',75,106000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2253,'Серебрянные Пруды',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2254,'Серпухов',75,123000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2255,'Солнечногорск',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2256,'Ступино',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2257,'Талдом',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2258,'Троицк',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2259,'Черноголовка',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2260,'Чехов',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2261,'Шатура',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2262,'Шаховская',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2263,'Щелково',75,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2264,'Электросталь',75,146000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2265,'Дербент',76,112500);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2266,'Касумкент',76,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2267,'Кизляр',76,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2268,'Курах',76,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2269,'Махачкала',76,469000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2270,'Кызыл',77,110000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2271,'Магадан',78,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2272,'Омсукчан',78,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2273,'Палатка',78,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2274,'Сеймчан',78,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2275,'Сусуман',78,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2276,'Усть-Омчуг',78,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2277,'Макаров',79,1);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2278,'Южно-Сахалинск',79,175000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2279,'Назрань',80,139000);
insert  into `city`(`id`,`name`,`region_id`,`weight`) values (2280,'Усть-Ордынский',81,1);

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
  `fish_event_id` int(11) DEFAULT NULL,
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
  KEY `comment_fish_event_id_fish_event_id` (`fish_event_id`),
  KEY `comment_inbox_id_inbox_id` (`inbox_id`),
  KEY `comment_location_id_location_id` (`location_id`),
  KEY `comment_profit_id_profit_id` (`profit_id`),
  KEY `comment_talk_id_talk_id` (`talk_id`),
  CONSTRAINT `comment_talk_id_talk_id` FOREIGN KEY (`talk_id`) REFERENCES `talk` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comment_created_by_sf_guard_user_profile_id` FOREIGN KEY (`created_by`) REFERENCES `sf_guard_user_profile` (`id`),
  CONSTRAINT `comment_fish_event_id_fish_event_id` FOREIGN KEY (`fish_event_id`) REFERENCES `fish_event` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comment_inbox_id_inbox_id` FOREIGN KEY (`inbox_id`) REFERENCES `inbox` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comment_location_id_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comment_profit_id_profit_id` FOREIGN KEY (`profit_id`) REFERENCES `profit` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comment_updated_by_sf_guard_user_profile_id` FOREIGN KEY (`updated_by`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

insert  into `comment`(`id`,`parent`,`message`,`toward`,`location_id`,`profit_id`,`inbox_id`,`talk_id`,`fish_event_id`,`created_by`,`updated_by`,`created_at`,`updated_at`,`root_id`,`lft`,`rgt`,`level`) values (1,NULL,'root','location',675,NULL,NULL,NULL,NULL,7,7,'2011-05-02 23:28:20','2011-05-02 23:28:20',1,1,4,0);
insert  into `comment`(`id`,`parent`,`message`,`toward`,`location_id`,`profit_id`,`inbox_id`,`talk_id`,`fish_event_id`,`created_by`,`updated_by`,`created_at`,`updated_at`,`root_id`,`lft`,`rgt`,`level`) values (2,1,'<p><strong>А что тут?</strong></p>','location',675,NULL,NULL,NULL,NULL,7,7,'2011-05-02 23:28:20','2011-05-02 23:28:20',1,2,3,1);

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `country` */

insert  into `country`(`id`,`name`) values (2,'Беларусь');
insert  into `country`(`id`,`name`) values (4,'Казахстан');
insert  into `country`(`id`,`name`) values (3,'Латвия');
insert  into `country`(`id`,`name`) values (8,'Мозамбик');
insert  into `country`(`id`,`name`) values (1,'Россия');
insert  into `country`(`id`,`name`) values (9,'Турция');
insert  into `country`(`id`,`name`) values (5,'Украина');
insert  into `country`(`id`,`name`) values (6,'Финляндия');
insert  into `country`(`id`,`name`) values (7,'Эстония');

/*Table structure for table `fish` */

DROP TABLE IF EXISTS `fish`;

CREATE TABLE `fish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `fish` */

insert  into `fish`(`id`,`name`) values (3,'Карась');
insert  into `fish`(`id`,`name`) values (1,'Окунь');
insert  into `fish`(`id`,`name`) values (2,'Щука');

/*Table structure for table `fish_event` */

DROP TABLE IF EXISTS `fish_event`;

CREATE TABLE `fish_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `rules` text,
  `users` text,
  `location_id` int(11) NOT NULL,
  `fish_event_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location_id_idx` (`location_id`),
  KEY `fish_event_type_id_idx` (`fish_event_type_id`),
  KEY `created_by_idx` (`created_by`),
  KEY `updated_by_idx` (`updated_by`),
  CONSTRAINT `fish_event_created_by_sf_guard_user_profile_id` FOREIGN KEY (`created_by`) REFERENCES `sf_guard_user_profile` (`id`),
  CONSTRAINT `fish_event_fish_event_type_id_fish_event_type_id` FOREIGN KEY (`fish_event_type_id`) REFERENCES `fish_event_type` (`id`),
  CONSTRAINT `fish_event_location_id_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fish_event_updated_by_sf_guard_user_profile_id` FOREIGN KEY (`updated_by`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fish_event` */

/*Table structure for table `fish_event_type` */

DROP TABLE IF EXISTS `fish_event_type`;

CREATE TABLE `fish_event_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `weight` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fish_event_type` */

/*Table structure for table `friend` */

DROP TABLE IF EXISTS `friend`;

CREATE TABLE `friend` (
  `requester_id` int(11) NOT NULL DEFAULT '0',
  `accepter_id` int(11) NOT NULL DEFAULT '0',
  `accepted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`requester_id`,`accepter_id`),
  KEY `friend_accepter_id_sf_guard_user_profile_id` (`accepter_id`),
  CONSTRAINT `friend_accepter_id_sf_guard_user_profile_id` FOREIGN KEY (`accepter_id`) REFERENCES `sf_guard_user_profile` (`id`),
  CONSTRAINT `friend_requester_id_sf_guard_user_profile_id` FOREIGN KEY (`requester_id`) REFERENCES `sf_guard_user_profile` (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `inbox` */

/*Table structure for table `inboxed` */

DROP TABLE IF EXISTS `inboxed`;

CREATE TABLE `inboxed` (
  `inbox_id` int(11) NOT NULL DEFAULT '0',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`inbox_id`,`profile_id`),
  KEY `inboxed_profile_id_sf_guard_user_profile_id` (`profile_id`),
  CONSTRAINT `inboxed_inbox_id_inbox_id` FOREIGN KEY (`inbox_id`) REFERENCES `inbox` (`id`) ON DELETE CASCADE,
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

/*Data for the table `locality` */

insert  into `locality`(`id`,`name`,`area_high_id`) values (1,'Роща',1);
insert  into `locality`(`id`,`name`,`area_high_id`) values (2,'Боровск',1);
insert  into `locality`(`id`,`name`,`area_high_id`) values (3,'Сатино',1);
insert  into `locality`(`id`,`name`,`area_high_id`) values (4,'Подольск',2);
insert  into `locality`(`id`,`name`,`area_high_id`) values (5,'город Балашиха',3);
insert  into `locality`(`id`,`name`,`area_high_id`) values (6,'село Немчиновка',4);
insert  into `locality`(`id`,`name`,`area_high_id`) values (7,'село Спас-Заулок',9);
insert  into `locality`(`id`,`name`,`area_high_id`) values (8,'город Чехов',13);
insert  into `locality`(`id`,`name`,`area_high_id`) values (9,'город Видное',16);
insert  into `locality`(`id`,`name`,`area_high_id`) values (10,'Рига',17);
insert  into `locality`(`id`,`name`,`area_high_id`) values (11,'город Наро-Фоминск',20);
insert  into `locality`(`id`,`name`,`area_high_id`) values (12,'город Жуковский',24);
insert  into `locality`(`id`,`name`,`area_high_id`) values (13,'город Раменское',19);
insert  into `locality`(`id`,`name`,`area_high_id`) values (14,'город Санкт-Петербург',28);
insert  into `locality`(`id`,`name`,`area_high_id`) values (15,'город Истра',31);
insert  into `locality`(`id`,`name`,`area_high_id`) values (16,'пос. Серебряные Пруды',32);
insert  into `locality`(`id`,`name`,`area_high_id`) values (17,'город Коломна',33);
insert  into `locality`(`id`,`name`,`area_high_id`) values (18,'Mäntyharju',37);
insert  into `locality`(`id`,`name`,`area_high_id`) values (19,'Вячеславка',NULL);
insert  into `locality`(`id`,`name`,`area_high_id`) values (20,'Астана',38);
insert  into `locality`(`id`,`name`,`area_high_id`) values (21,'село Ильинское',41);
insert  into `locality`(`id`,`name`,`area_high_id`) values (22,'город Пермь',NULL);
insert  into `locality`(`id`,`name`,`area_high_id`) values (23,'город Москва',42);
insert  into `locality`(`id`,`name`,`area_high_id`) values (24,'город Котельники',43);
insert  into `locality`(`id`,`name`,`area_high_id`) values (25,'город Нижний Новгород',50);
insert  into `locality`(`id`,`name`,`area_high_id`) values (26,'Родники',51);
insert  into `locality`(`id`,`name`,`area_high_id`) values (27,'Калининград',52);
insert  into `locality`(`id`,`name`,`area_high_id`) values (28,'Kittilä',55);
insert  into `locality`(`id`,`name`,`area_high_id`) values (29,'город Тверь',60);
insert  into `locality`(`id`,`name`,`area_high_id`) values (30,'пос. Большевик',63);
insert  into `locality`(`id`,`name`,`area_high_id`) values (31,'пос. Торики',66);
insert  into `locality`(`id`,`name`,`area_high_id`) values (32,'город Липецк',71);
insert  into `locality`(`id`,`name`,`area_high_id`) values (33,'город Самара',NULL);
insert  into `locality`(`id`,`name`,`area_high_id`) values (34,'Зеленоградск',81);
insert  into `locality`(`id`,`name`,`area_high_id`) values (35,'город Протвино',89);
insert  into `locality`(`id`,`name`,`area_high_id`) values (36,'город Омск',NULL);
insert  into `locality`(`id`,`name`,`area_high_id`) values (37,'город Люберцы',105);
insert  into `locality`(`id`,`name`,`area_high_id`) values (38,'деревня Донино',19);
insert  into `locality`(`id`,`name`,`area_high_id`) values (39,'Котка',106);
insert  into `locality`(`id`,`name`,`area_high_id`) values (40,'пос. Знамя Октября',18);
insert  into `locality`(`id`,`name`,`area_high_id`) values (41,'город Домодедово',25);
insert  into `locality`(`id`,`name`,`area_high_id`) values (42,'город Ногинск',86);
insert  into `locality`(`id`,`name`,`area_high_id`) values (43,'Tapa vald',110);
insert  into `locality`(`id`,`name`,`area_high_id`) values (44,'город Железнодорожный',112);
insert  into `locality`(`id`,`name`,`area_high_id`) values (45,'город Высоковск',9);
insert  into `locality`(`id`,`name`,`area_high_id`) values (46,'город Луховицы',121);
insert  into `locality`(`id`,`name`,`area_high_id`) values (47,'пос. Потапово',96);
insert  into `locality`(`id`,`name`,`area_high_id`) values (48,'город Дедовск',31);
insert  into `locality`(`id`,`name`,`area_high_id`) values (49,'Запорожье',NULL);
insert  into `locality`(`id`,`name`,`area_high_id`) values (50,'Ялта',NULL);
insert  into `locality`(`id`,`name`,`area_high_id`) values (51,'Мапуто',NULL);
insert  into `locality`(`id`,`name`,`area_high_id`) values (52,'Брандё',126);
insert  into `locality`(`id`,`name`,`area_high_id`) values (53,'Klintaine',127);
insert  into `locality`(`id`,`name`,`area_high_id`) values (54,'город Сергиев Посад',132);
insert  into `locality`(`id`,`name`,`area_high_id`) values (55,'Suomussalmi',135);
insert  into `locality`(`id`,`name`,`area_high_id`) values (56,'город Костомукша',NULL);
insert  into `locality`(`id`,`name`,`area_high_id`) values (57,'город Лыткарино',136);
insert  into `locality`(`id`,`name`,`area_high_id`) values (58,'город Рязань',137);
insert  into `locality`(`id`,`name`,`area_high_id`) values (59,'Киев',138);
insert  into `locality`(`id`,`name`,`area_high_id`) values (60,'деревня Сосенки',16);
insert  into `locality`(`id`,`name`,`area_high_id`) values (61,'город Лобня',142);

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
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
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `latitude` double(18,15) DEFAULT NULL,
  `longitude` double(18,15) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location_sluggable_idx` (`slug`),
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
) ENGINE=InnoDB AUTO_INCREMENT=677 DEFAULT CHARSET=utf8;

/*Data for the table `location` */

insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (305,'Небольшое но симпатичное место и сбросов загрязняющих нет, кто пробовал раскажите?','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,267,1,1,'','2011-05-02 19:55:04','2011-05-02 19:55:04',55.115888187800003,38.878383636499997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (306,'Река Пехорка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,268,1,1,'1','2011-05-02 19:55:07','2011-05-02 19:55:07',55.603953962600002,38.036384582499998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (307,'Река Или','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,269,1,1,'2','2011-05-02 19:55:10','2011-05-02 19:55:10',44.138855767599999,76.953735351600002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (308,'Верея -Жуковский','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,270,1,1,'3','2011-05-02 19:55:12','2011-05-02 19:55:13',55.606984259299999,38.058786392199998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (309,'Гжельский рыбхоз','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,271,1,1,'4','2011-05-02 19:55:15','2011-05-02 19:55:15',55.557185007199998,38.322715759300003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (310,'Ждановское','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,272,1,1,'5','2011-05-02 19:55:18','2011-05-02 19:55:18',55.429476124799997,37.965188026400000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (311,'Озеро Вельё. Рыбалка. Рыбы много - щука, окунь и пр.','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,273,1,1,'6','2011-05-02 19:55:21','2011-05-02 19:55:21',57.655320827499999,33.036575317400001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (312,'Дом рыбака Щукари','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,274,1,1,'7','2011-05-02 19:55:24','2011-05-02 19:55:24',47.007884597000000,47.493553161599998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (313,'Магазин «Всё для рыбалки»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,275,1,1,'8','2011-05-02 19:55:26','2011-05-02 19:55:26',59.867001686800002,30.261465311100000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (314,'база\" Седьмое небо\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,276,1,1,'9','2011-05-02 19:55:29','2011-05-02 19:55:29',46.974059485900000,47.591722011599998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (315,'Частный гостевой дом в дельте Волги на о.Станья','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,277,1,1,'10','2011-05-02 19:55:32','2011-05-02 19:55:32',45.819324979999998,48.102607727100001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (316,'Кордон Кузьмича','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,278,1,1,'11','2011-05-02 19:55:35','2011-05-02 19:55:35',60.559304045200001,28.647537231400001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (317,'Воткинская ГЭС - Краны','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,279,1,1,'12','2011-05-02 19:55:38','2011-05-02 19:55:38',56.780542058100004,54.070930480999998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (318,'Воткинская ГЭС','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,280,1,1,'13','2011-05-02 19:55:40','2011-05-02 19:55:40',56.786884805600003,54.086304902999998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (319,'Ловля Тарани','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,281,1,1,'14','2011-05-02 19:55:43','2011-05-02 19:55:43',46.647963159200003,38.890399932900003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (320,'Новосибирское водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,282,1,1,'15','2011-05-02 19:55:46','2011-05-02 19:55:46',54.702407731000001,82.842407226600002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (321,'Портновские пруды','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,283,1,1,'16','2011-05-02 19:55:49','2011-05-02 19:55:49',55.582808099300003,36.735534668000000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (322,'Все для рыбалки и отдыха','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,284,1,1,'17','2011-05-02 19:55:52','2011-05-02 19:55:52',55.907596860399998,36.881618499799998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (323,'р.Северка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,285,1,1,'18','2011-05-02 19:55:54','2011-05-02 19:55:54',55.234387508200001,37.802238464399998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (324,'рыбхоз','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,286,1,1,'19','2011-05-02 19:55:57','2011-05-02 19:55:57',54.460998599100002,38.738479614299997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (325,'Магазин «Рыболов»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,287,1,1,'20','2011-05-02 19:56:00','2011-05-02 19:56:00',55.081950800800001,38.802273273499999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (326,'река Москва','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,288,1,1,'21','2011-05-02 19:56:03','2011-05-02 19:56:03',55.080823869000000,38.835811614999997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (327,'Остров','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,289,1,1,'22','2011-05-02 19:56:06','2011-05-02 19:56:06',55.071235988600002,38.832850456199999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (328,'Ока','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,290,1,1,'23','2011-05-02 19:56:08','2011-05-02 19:56:08',55.069902962299999,38.808270692800001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (329,'2капитана','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,291,1,1,'2-1','2011-05-02 19:56:11','2011-05-02 19:56:11',57.044465295400002,43.179187774699997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (330,'Турбаза \"Рось\"','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,292,1,1,'24','2011-05-02 19:56:14','2011-05-02 19:56:14',49.458272527399998,31.047191619900001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (331,'база Войсковая 1','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,293,1,1,'1-1','2011-05-02 19:56:17','2011-05-02 19:56:17',45.368967251400001,37.506058216100001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (332,'Труженик моря 1','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,294,1,1,'1-2','2011-05-02 19:56:20','2011-05-02 19:56:20',45.315361862200000,37.386903762800003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (333,'Платная автодорога','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,295,1,1,'25','2011-05-02 19:56:22','2011-05-02 19:56:22',45.317383768600003,37.384972572300001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (334,'Труженик моря 2','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,296,1,1,'2-2','2011-05-02 19:56:25','2011-05-02 19:56:25',45.321849813599997,37.408318519600002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (335,'Темрючанка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,297,1,1,'26','2011-05-02 19:56:28','2011-05-02 19:56:28',45.346165474899998,37.452135086100000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (336,'Lahnavesi','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,298,1,1,'lahnavesi','2011-05-02 19:56:31','2011-05-02 19:56:31',61.454767214999997,26.653003692599999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (337,'Вячеславское водохранилище1','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,299,1,1,'1-3','2011-05-02 19:56:33','2011-05-02 19:56:33',50.983937635700002,72.162666320800000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (338,'Камал','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,300,1,1,'27','2011-05-02 19:56:36','2011-05-02 19:56:36',51.177964181199997,71.411025524099998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (339,'Павлодарская область1','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,301,1,1,'1-4','2011-05-02 19:56:39','2011-05-02 19:56:39',52.827045573699998,76.540331840500002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (340,'Баканас1','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,302,1,1,'1-5','2011-05-02 19:56:42','2011-05-02 19:56:42',44.811526935899998,76.234002113299994,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (341,'Окунь','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,303,1,1,'28','2011-05-02 19:56:45','2011-05-02 19:56:45',59.921627070699998,30.353076160000001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (342,'пос. Ильинское ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,304,1,1,'29','2011-05-02 19:56:47','2011-05-02 19:56:47',55.754167897800002,37.233524322500003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (343,'Озеро Глухая яма','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,305,1,1,'30','2011-05-02 19:56:50','2011-05-02 19:56:50',55.767786337799997,37.279872894299999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (344,'Моё место','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,306,1,1,'31','2011-05-02 19:56:53','2011-05-02 19:56:53',58.150009779599998,56.475992202800001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (346,'Белодачинский пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,308,1,1,'33','2011-05-02 19:56:58','2011-05-02 19:56:58',55.659286609699997,37.851676940899999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (347,'карьер Фатеево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,309,1,1,'34','2011-05-02 19:57:01','2011-05-02 19:57:01',55.750042793500000,38.639087676999999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (348,'ruslaplandia.ru Турбаза Русская Лапландия','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,310,1,1,'ruslaplandia-ru','2011-05-02 19:57:04','2011-05-02 19:57:04',67.779349420900004,35.075225830100003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (349,'Мансурово пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,311,1,1,'35','2011-05-02 19:57:07','2011-05-02 19:57:07',55.208067354800001,37.753486633300000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (350,'10 озёр','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,312,1,1,'10-1','2011-05-02 19:57:09','2011-05-02 19:57:09',60.892877688299997,35.715007782000001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (351,'Строгино , Большой карьер','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,313,1,1,'36','2011-05-02 19:57:12','2011-05-02 19:57:12',55.792902774300003,37.418231964100002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (352,'\"Барм фишинг\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,314,1,1,'37','2011-05-02 19:57:15','2011-05-02 19:57:15',56.122591449200002,45.520477294899997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (353,'Островок','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,315,1,1,'38','2011-05-02 19:57:18','2011-05-02 19:57:18',53.186441866800003,39.980964660600002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (354,'Ботово база отдыха','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,316,1,1,'39','2011-05-02 19:57:20','2011-05-02 19:57:21',57.154064106200003,32.987480163599997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (355,'Турист','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,317,1,1,'40','2011-05-02 19:57:23','2011-05-02 19:57:23',56.260932774899999,43.980953693399996,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (356,'преголя ','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,318,1,1,'41','2011-05-02 19:57:26','2011-05-02 19:57:26',54.698340739300001,20.671420097399999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (357,'голубые озёра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,319,1,1,'42','2011-05-02 19:57:29','2011-05-02 19:57:29',54.650696842700000,20.358180999799998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (358,'ГЭС','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,320,1,1,'43','2011-05-02 19:57:32','2011-05-02 19:57:32',58.113281187399998,56.324501037600001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (359,'иман','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,321,1,1,'44','2011-05-02 19:57:34','2011-05-02 19:57:35',47.863299737399998,137.856445312000010,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (360,'оз. Кадал','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,322,1,1,'45','2011-05-02 19:57:37','2011-05-02 19:57:37',54.328537239699997,71.442718505900004,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (361,'озеро Круглое','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,323,1,1,'46','2011-05-02 19:57:40','2011-05-02 19:57:40',56.053371407199997,37.353858947799999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (362,'Kapsajoki river','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,324,1,1,'kapsajoki-river','2011-05-02 19:57:43','2011-05-02 19:57:43',67.865712311799996,25.066337585399999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (363,'Ounasjoki river','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,325,1,1,'ounasjoki-river','2011-05-02 19:57:46','2011-05-02 19:57:46',67.797830755500001,24.912528991700000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (364,'Фиш и Чиж','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,326,1,1,'47','2011-05-02 19:57:49','2011-05-02 19:57:49',51.870979847299999,25.767059326199998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (365,'МОЛОГА-ФИШ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,327,1,1,'48','2011-05-02 19:57:52','2011-05-02 19:57:52',58.724203014200000,37.168121337899997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (366,'новозыбковский пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,328,1,1,'49','2011-05-02 19:57:55','2011-05-02 19:57:55',52.536064211800003,31.941032409700000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (367,'Озеро «Монетка»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,329,1,1,'50','2011-05-02 19:57:58','2011-05-02 19:57:58',60.388449943900000,29.702396392800001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (368,'Рыболовный интернет магазин www.hot-fishing.ru лучшие цены','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,330,1,1,'www-hot-fishing-ru','2011-05-02 19:58:01','2011-05-02 19:58:01',56.854960576099998,35.942738056200000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (369,'Chapoma.ru','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,331,1,1,'chapoma-ru','2011-05-02 19:58:04','2011-05-02 19:58:04',66.372755002500000,37.441406250000000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (370,'прокошево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,332,1,1,'51','2011-05-02 19:58:06','2011-05-02 19:58:07',55.881040340500000,44.511537551899998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (371,'канал','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,333,1,1,'52','2011-05-02 19:58:09','2011-05-02 19:58:09',54.694943000700000,20.527160167700000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (372,'рыбалка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,334,1,1,'53','2011-05-02 19:58:13','2011-05-02 19:58:13',56.308967243300003,44.017345905299997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (373,'Ока (Калиновские выселки)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,335,1,1,'54','2011-05-02 19:58:15','2011-05-02 19:58:16',54.875572092799999,37.320449352300002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (374,'РыбаКлюй','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,336,1,1,'55','2011-05-02 19:58:18','2011-05-02 19:58:18',59.945232303700003,30.414190292400001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (376,'Гореловское озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,338,1,1,'57','2011-05-02 19:58:24','2011-05-02 19:58:24',59.782297656799997,30.117816925000000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (377,'Рыболов','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,339,1,1,'58','2011-05-02 19:58:27','2011-05-02 19:58:27',59.909324623300002,30.306569337799999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (378,'Гостевой домик на Рыбинском водохранилище','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,340,1,1,'59','2011-05-02 19:58:30','2011-05-02 19:58:30',58.122869166800001,38.394470214800002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (379,'рубежное','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,341,1,1,'60','2011-05-02 19:58:33','2011-05-02 19:58:33',50.177777596100000,36.841707229599997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (380,'карась с моста','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,342,1,1,'61','2011-05-02 19:58:36','2011-05-02 19:58:36',54.720666969100002,20.462100505799999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (381,'Сервис центр рыбака','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,343,1,1,'62','2011-05-02 19:58:39','2011-05-02 19:58:39',59.908506987599999,30.321664810200001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (382,'Пады','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,344,1,1,'63','2011-05-02 19:58:42','2011-05-02 19:58:42',52.506191342000001,39.541168212899997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (384,'Волга (Сомовка)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,346,1,1,'65','2011-05-02 19:58:47','2011-05-02 19:58:47',56.153390360099998,45.705528259300003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (385,'р. Волга (Разнежье)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,347,1,1,'66','2011-05-02 19:58:50','2011-05-02 19:58:50',56.190660358599999,45.631027221700002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (386,'разнежье','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,348,1,1,'67','2011-05-02 19:58:53','2011-05-02 19:58:53',56.179769792999998,45.680465698200003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (387,'Рыболовный магазин в Разнежье','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,349,1,1,'68','2011-05-02 19:58:56','2011-05-02 19:58:56',56.185693115500001,45.682525634800001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (388,'р. Волга (Разнежье)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,350,1,1,'69','2011-05-02 19:58:59','2011-05-02 19:58:59',56.175183367099997,45.648536682100001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (389,'Алексей Комаров (Астрахань)','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,351,1,1,'70','2011-05-02 19:59:02','2011-05-02 19:59:02',45.928229509300003,48.317871093800001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (390,'Черновское водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,352,1,1,'71','2011-05-02 19:59:05','2011-05-02 19:59:05',53.252068805900002,50.141601562500000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (391,'Рыболов 24, минское ш. 43км','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,353,1,1,'24-43','2011-05-02 19:59:08','2011-05-02 19:59:08',55.618933466900003,37.113597392999999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (392,'Рыболов, минское ш. 47км','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,354,1,1,'47-1','2011-05-02 19:59:11','2011-05-02 19:59:11',55.603250900299997,37.002854347200000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (393,'леженьки','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,355,1,1,'72','2011-05-02 19:59:14','2011-05-02 19:59:14',51.750892616900003,37.058601379400002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (394,'рыболовный магазин','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,356,1,1,'73','2011-05-02 19:59:17','2011-05-02 19:59:17',54.724911404799997,20.468355417300000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (395,'На Дунае','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,357,1,1,'74','2011-05-02 19:59:20','2011-05-02 19:59:20',45.440380888299998,29.539146423300000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (396,'Жили -Были','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,358,1,1,'75','2011-05-02 19:59:23','2011-05-02 19:59:23',56.164288409299999,45.809211730999998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (397,'Красивая Меча','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,359,1,1,'76','2011-05-02 19:59:25','2011-05-02 19:59:26',53.132271551599999,38.140411377000000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (398,'карась плотва окунь щука','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,360,1,1,'77','2011-05-02 19:59:28','2011-05-02 19:59:28',55.591539423999997,37.434024810799997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (399,'Истринское водохранилище. д Пятница.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,361,1,1,'78','2011-05-02 19:59:31','2011-05-02 19:59:31',56.095310956299997,36.790380477900001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (400,'Васильсурская слобода','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,362,1,1,'79','2011-05-02 19:59:34','2011-05-02 19:59:34',56.137515741900003,45.930404663099999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (401,'оз. Зимари','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,363,1,1,'80','2011-05-02 19:59:37','2011-05-02 19:59:37',53.180629784700002,83.479099273700001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (402,'пруд у стадиона','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,364,1,1,'81','2011-05-02 19:59:40','2011-05-02 19:59:40',55.844506281999998,37.164816856400002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (403,'инютино нижегородская область','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,365,1,1,'82','2011-05-02 19:59:43','2011-05-02 19:59:43',55.927971155100003,43.917846679699998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (404,'р. Волга / Кама (Рождествено)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,366,1,1,'83','2011-05-02 19:59:46','2011-05-02 19:59:46',55.434857336400000,49.346466064500000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (405,'Вишенки','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,367,1,1,'84','2011-05-02 19:59:49','2011-05-02 19:59:49',53.182378635600003,39.597816467299999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (406,'Николаевка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,368,1,1,'85','2011-05-02 19:59:52','2011-05-02 19:59:52',52.703226747700000,39.916419982900003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (407,'Доброе р.Воронеж','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,369,1,1,'86','2011-05-02 19:59:54','2011-05-02 19:59:55',52.861875632599997,39.844150543200001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (408,'Каликино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,370,1,1,'87','2011-05-02 19:59:57','2011-05-02 19:59:57',52.961047854400000,39.767761230500000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (409,'преголя','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,371,1,1,'88','2011-05-02 20:00:00','2011-05-02 20:00:00',54.692165076000002,20.396804809599999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (410,'воронье озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,372,1,1,'89','2011-05-02 20:00:03','2011-05-02 20:00:03',54.653080365299999,20.855827331499999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (411,'караси','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,373,1,1,'90','2011-05-02 20:00:06','2011-05-02 20:00:06',54.944048845700003,20.485296249400001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (412,'хлебное озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,374,1,1,'91','2011-05-02 20:00:09','2011-05-02 20:00:09',54.720660772499997,20.462636947600000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (413,'Супер карп','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,375,1,1,'92','2011-05-02 20:00:12','2011-05-02 20:00:12',55.510797737499999,37.720441818200001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (415,'р. Мулянка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,377,1,1,'94','2011-05-02 20:00:18','2011-05-02 20:00:18',57.985536054000001,56.127777099600003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (416,'р. Мулянка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,378,1,1,'95','2011-05-02 20:00:21','2011-05-02 20:00:21',58.002640611399997,56.128463745099999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (417,'Заостровка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,379,1,1,'96','2011-05-02 20:00:23','2011-05-02 20:00:23',58.016827553299997,56.085205078100003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (420,'Октябрьское озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,382,1,1,'99','2011-05-02 20:00:32','2011-05-02 20:00:32',57.145325073499997,40.322721004500004,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (421,'оз. Вепревское','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,383,1,1,'100','2011-05-02 20:00:35','2011-05-02 20:00:35',56.913149236000002,39.155015945400002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (422,'По Щучьему Велению','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,384,1,1,'101','2011-05-02 20:00:41','2011-05-02 20:00:41',48.618952585599999,45.518932342500001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (423,'истра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,385,1,1,'102','2011-05-02 20:00:44','2011-05-02 20:00:44',56.033979007500001,36.817932128899997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (424,'Нарские пруды','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,386,1,1,'103','2011-05-02 20:00:46','2011-05-02 20:00:47',55.539019130600003,36.615720391300002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (425,'Донское','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,387,1,1,'104','2011-05-02 20:00:49','2011-05-02 20:00:50',52.617751637300003,38.961113691300000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (426,'Водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,388,1,1,'105','2011-05-02 20:00:53','2011-05-02 20:00:53',52.593246399700000,39.743385314900003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (427,'Вербилово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,389,1,1,'106','2011-05-02 20:00:55','2011-05-02 20:00:56',52.287902570999996,39.412765502900001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (428,'Грязное','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,390,1,1,'107','2011-05-02 20:00:58','2011-05-02 20:00:58',52.358828590100003,39.417572021500000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (429,'Саввино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,391,1,1,'108','2011-05-02 20:01:01','2011-05-02 20:01:01',55.420635710100001,39.203681945800000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (430,'База Верхневолжье','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,392,1,1,'109','2011-05-02 20:01:04','2011-05-02 20:01:04',57.082004442900001,32.698230743400003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (431,'Залив Бронежа','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,393,1,1,'110','2011-05-02 20:01:07','2011-05-02 20:01:07',57.062315591299999,32.652482986499997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (432,'Карповый','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,394,1,1,'111','2011-05-02 20:01:10','2011-05-02 20:01:10',55.792017325499998,38.129253387500000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (433,'Министерский','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,395,1,1,'112','2011-05-02 20:01:13','2011-05-02 20:01:13',55.792789380099997,38.119983673100002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (434,'Плещеево озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,396,1,1,'113','2011-05-02 20:01:16','2011-05-02 20:01:16',56.768079123699998,38.777618408199999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (435,'Золотой Сазан','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,397,1,1,'114','2011-05-02 20:01:19','2011-05-02 20:01:19',55.417566673700001,37.248544692999999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (436,'База \"Зелёный дом\" коттедж \"Простор\".','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,398,1,1,'115','2011-05-02 20:01:22','2011-05-02 20:01:22',66.197997287400000,33.354063034100001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (437,'Похра, Белеутово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,399,1,1,'116','2011-05-02 20:01:25','2011-05-02 20:01:25',55.494483625100003,37.743616104099999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (438,'с.Мокрое','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,400,1,1,'117','2011-05-02 20:01:27','2011-05-02 20:01:27',52.438013595299999,39.401779174799998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (439,'Юшинский затон','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,401,1,1,'118','2011-05-02 20:01:30','2011-05-02 20:01:30',52.544834202700002,39.822864532499999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (440,'Делиховое','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,402,1,1,'119','2011-05-02 20:01:33','2011-05-02 20:01:33',53.043380391200003,39.817199707000000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (441,'Ока - Дракино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,403,1,1,'120','2011-05-02 20:01:36','2011-05-02 20:01:36',54.836409621900003,37.260818481400001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (442,'Елец на Поле','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,404,1,1,'121','2011-05-02 20:01:39','2011-05-02 20:01:39',55.818451484000001,39.854192733799998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (443,'р. Москва, Сельцо','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,405,1,1,'122','2011-05-02 20:01:42','2011-05-02 20:01:42',55.561524637900000,38.026084899899999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (444,'Рыболовная база \"Трофейная\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,406,1,1,'123','2011-05-02 20:01:45','2011-05-02 20:01:45',59.506280713999999,38.516693115199999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (445,'Ahtuba-club.ru','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,407,1,1,'ahtuba-club-ru','2011-05-02 20:01:48','2011-05-02 20:01:48',47.112593267599998,47.398452758799998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (446,'Озеро Долгое','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,408,1,1,'124','2011-05-02 20:01:51','2011-05-02 20:01:51',56.513669536800002,37.361068725599999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (447,'\"Клёвое озеро\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,409,1,1,'125','2011-05-02 20:01:54','2011-05-02 20:01:54',54.999816697000000,73.472968339900007,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (448,'Рыболовно - охотничий клуб \"Мария\" ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,410,1,1,'126','2011-05-02 20:01:57','2011-05-02 20:01:57',47.586975945799999,46.752233505200003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (449,'Рыболовно-охотничья гостиница \"ВЕСЬ\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,411,1,1,'127','2011-05-02 20:01:59','2011-05-02 20:01:59',58.649226445899998,37.279357910199998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (450,'Плавучая гостиница \"Гусиный остров\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,412,1,1,'128','2011-05-02 20:02:02','2011-05-02 20:02:02',46.848639699000003,47.698516845699999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (451,'Река Волга','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,413,1,1,'129','2011-05-02 20:02:05','2011-05-02 20:02:05',56.163944307100003,47.080535888699998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (452,'Большой Юг','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,414,1,1,'130','2011-05-02 20:02:08','2011-05-02 20:02:08',59.073124816000004,38.302803039600001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (453,'Рыбинка. Вичелово.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,415,1,1,'131','2011-05-02 20:02:11','2011-05-02 20:02:11',59.002030770300003,37.969779968300003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (454,'Советск','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,416,1,1,'132','2011-05-02 20:02:14','2011-05-02 20:02:14',53.931351817400000,37.647399902300002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (455,'река Вопь','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,417,1,1,'133','2011-05-02 20:02:17','2011-05-02 20:02:17',55.224323672899999,32.853927612299998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (456,'р. Ока (Озёры)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,418,1,1,'134','2011-05-02 20:02:20','2011-05-02 20:02:20',54.852856907800003,38.590807914700001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (458,'МАМШИН ОСТРОВ','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,420,1,1,'135','2011-05-02 20:02:26','2011-05-02 20:02:26',57.364682060400000,43.067436218300003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (460,'Дом рыбака Ахтуба Тур','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,422,1,1,'136','2011-05-02 20:02:31','2011-05-02 20:02:32',45.845621229000002,47.964173555400002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (461,'Тростенское озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,423,1,1,'137','2011-05-02 20:02:34','2011-05-02 20:02:34',55.866912452699999,36.488342285199998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (462,'Крюково','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,424,1,1,'138','2011-05-02 20:02:37','2011-05-02 20:02:37',55.270979598799997,35.937309265099998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (463,'Дылдино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,425,1,1,'139','2011-05-02 20:02:40','2011-05-02 20:02:40',55.129905302700003,36.047172546399999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (464,'Шушпанское водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,426,1,1,'140','2011-05-02 20:02:43','2011-05-02 20:02:43',53.382017764799997,40.737304687500000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (465,'Быковские острова','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,427,1,1,'141','2011-05-02 20:02:46','2011-05-02 20:02:46',57.361904697500002,42.964096069299998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (466,'Демидовка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,428,1,1,'142','2011-05-02 20:02:49','2011-05-02 20:02:49',57.355423366399997,42.998085021999998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (467,'Юдановка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,429,1,1,'143','2011-05-02 20:02:52','2011-05-02 20:02:52',55.321722199000000,37.200393676799997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (468,'Зыбино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,430,1,1,'144','2011-05-02 20:02:55','2011-05-02 20:02:55',55.299056329999999,37.378921508799998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (469,'Богоявление','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,431,1,1,'145','2011-05-02 20:02:58','2011-05-02 20:02:58',55.252511654000003,37.180480957000000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (470,'Покровское','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,432,1,1,'146','2011-05-02 20:03:01','2011-05-02 20:03:01',55.337687994100001,37.220563888500003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (471,'Коротыгино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,433,1,1,'147','2011-05-02 20:03:03','2011-05-02 20:03:04',55.312159172800001,37.249789237999998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (472,'Биг ФишЪ www.big-fish.ru','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,434,1,1,'www-big-fish-ru','2011-05-02 20:03:06','2011-05-02 20:03:06',58.111988992999997,38.358078002900001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (473,'Пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,435,1,1,'148','2011-05-02 20:03:09','2011-05-02 20:03:09',55.421824288400003,36.303291320800000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (474,'Бывший карповый пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,436,1,1,'149','2011-05-02 20:03:12','2011-05-02 20:03:12',55.212964534999998,35.757751464800002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (475,'Карасёвый пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,437,1,1,'150','2011-05-02 20:03:15','2011-05-02 20:03:15',55.153373933799998,36.093521118200002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (476,'База на Вазузе','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,438,1,1,'151','2011-05-02 20:03:18','2011-05-02 20:03:18',55.926393927800000,34.559898376500001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (477,'Рыболовная База','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,439,1,1,'152','2011-05-02 20:03:21','2011-05-02 20:03:21',55.931702401599999,35.419235229500003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (478,'\"Зеленая Долина\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,440,1,1,'153','2011-05-02 20:03:24','2011-05-02 20:03:24',55.261927661999998,36.445212364200003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (480,'Иванисово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,442,1,1,'155','2011-05-02 20:03:30','2011-05-02 20:03:30',55.739759531700003,38.454015255000002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (481,'Криводанова','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,443,1,1,'156','2011-05-02 20:03:33','2011-05-02 20:03:33',57.100825051199998,66.207733154300001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (482,'Татаринцево','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,444,1,1,'157','2011-05-02 20:03:35','2011-05-02 20:03:36',55.356282230200001,38.321084976199998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (483,'пожарный пруд в Храпуново','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,445,1,1,'158','2011-05-02 20:03:38','2011-05-02 20:03:38',55.723359164900003,38.357906341600000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (484,'пушкино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,446,1,1,'159','2011-05-02 20:03:41','2011-05-02 20:03:41',55.450047386500003,38.709640502900001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (485,'Рыболовно-охотничья база ПРОТОКА','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,447,1,1,'160','2011-05-02 20:03:44','2011-05-02 20:03:44',45.864074329600001,48.141231536900001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (486,'пос. им. Воровского','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,448,1,1,'161','2011-05-02 20:03:47','2011-05-02 20:03:47',55.734572183499999,38.300571441700001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (487,'Храпуново','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,449,1,1,'162','2011-05-02 20:03:50','2011-05-02 20:03:50',55.726969915300003,38.326406478899997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (488,'Рыбалка на реке Kумийоки','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,450,1,1,'k','2011-05-02 20:03:53','2011-05-02 20:03:53',60.530265872999998,26.907920837399999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (489,'рыбалка в Финляндии','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,451,1,1,'163','2011-05-02 20:03:56','2011-05-02 20:03:56',60.460264753899999,26.948089599599999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (490,'ЛОВЛЯ НА СПИННИНГ И «ТРОЛЛИНГ» У БЕРЕГОВОЙ ЛИНИИ МОРЯ.','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,452,1,1,'164','2011-05-02 20:03:59','2011-05-02 20:03:59',60.459926217400003,26.954956054699998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (491,'тарасово,пруд','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,453,1,1,'165','2011-05-02 20:04:02','2011-05-02 20:04:02',55.476469975299999,37.477369308500002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (492,'Брехово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,454,1,1,'166','2011-05-02 20:04:05','2011-05-02 20:04:05',55.939442620700000,37.194042205800002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (493,'Горнево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,455,1,1,'167','2011-05-02 20:04:08','2011-05-02 20:04:08',55.197928277400003,37.095766067500001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (494,'Сенеж дамба','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,456,1,1,'168','2011-05-02 20:04:11','2011-05-02 20:04:11',56.216727837199997,36.999206543000000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (495,'Пироговское водохранилище','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,457,1,1,'169','2011-05-02 20:04:14','2011-05-02 20:04:14',55.980483184900002,37.676239013699998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (496,'Река Юг Вологодская обл.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,458,1,1,'170','2011-05-02 20:04:17','2011-05-02 20:04:17',60.109611483899997,46.470794677699999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (497,'река Пахра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,459,1,1,'171','2011-05-02 20:04:19','2011-05-02 20:04:20',55.493637596200003,37.848243713400002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (498,'Голубино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,460,1,1,'172','2011-05-02 20:04:22','2011-05-02 20:04:22',55.234602855500000,37.801809310899998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (499,'Пожарный прудик пос. им. Воровского','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,461,1,1,'173','2011-05-02 20:04:25','2011-05-02 20:04:25',55.728995076200000,38.299326896700002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (500,'Рыболов-спортсмен','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,462,1,1,'174','2011-05-02 20:04:28','2011-05-02 20:04:28',55.853901971299997,38.443855047200003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (501,'База отдыха \"Ока\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,463,1,1,'175','2011-05-02 20:04:31','2011-05-02 20:04:31',54.611646770000000,41.040973663300001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (503,'река Отра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,465,1,1,'177','2011-05-02 20:04:37','2011-05-02 20:04:37',55.355696718099999,38.310699462899997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (504,'V?ike-Kalaj?rv','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,466,1,1,'v-ike-kalaj-rv','2011-05-02 20:04:40','2011-05-02 20:04:40',59.196790372899997,25.515747070300002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (505,'СВЕТЛЫЕ ГОРЫ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,467,1,1,'178','2011-05-02 20:04:43','2011-05-02 20:04:43',55.898108287600003,37.294464111300002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (506,'ЛЬВОВСКИЕ ПРУДЫ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,468,1,1,'179','2011-05-02 20:04:46','2011-05-02 20:04:46',56.102185547099999,35.727195739700001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (507,'Брехово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,469,1,1,'180','2011-05-02 20:04:49','2011-05-02 20:04:49',55.635942079599999,36.845226287800003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (508,'Истринское водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,470,1,1,'181','2011-05-02 20:04:52','2011-05-02 20:04:52',56.016489927300000,36.818801164600004,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (509,'Фуньково','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,471,1,1,'182','2011-05-02 20:04:55','2011-05-02 20:04:55',55.786709035599998,36.862049102800000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (510,'Зевалово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,472,1,1,'183','2011-05-02 20:04:58','2011-05-02 20:04:58',55.170142798400001,38.404598236100000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (512,'голохвастово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,474,1,1,'185','2011-05-02 20:05:03','2011-05-02 20:05:03',55.382036190299999,36.954574585000003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (513,'хованское.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,475,1,1,'186','2011-05-02 20:05:06','2011-05-02 20:05:06',55.596825782000003,37.457370758099998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (514,'суханово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,476,1,1,'187','2011-05-02 20:05:09','2011-05-02 20:05:10',55.522703354500003,37.656755447400002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (515,'Поддубье','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,477,1,1,'188','2011-05-02 20:05:12','2011-05-02 20:05:12',55.321331517899999,38.425369262700002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (516,'лесное','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,478,1,1,'189','2011-05-02 20:05:15','2011-05-02 20:05:15',55.639672326499998,38.311085701000003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (517,'Река Рожайка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,479,1,1,'190','2011-05-02 20:05:18','2011-05-02 20:05:18',55.394468180799997,37.729969024699997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (518,'Бисерово озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,480,1,1,'191','2011-05-02 20:05:21','2011-05-02 20:05:21',55.761798673400001,38.111400604200000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (519,'Шипулино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,481,1,1,'192','2011-05-02 20:05:24','2011-05-02 20:05:24',56.328340210299999,36.521644592299999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (520,'Медвежьи озера','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,482,1,1,'193','2011-05-02 20:05:27','2011-05-02 20:05:27',55.865294208300000,37.996902465799998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (521,'Никольский яр','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,483,1,1,'194','2011-05-02 20:05:30','2011-05-02 20:05:30',47.792688413400001,46.339302062999998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (522,'ильино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,484,1,1,'195','2011-05-02 20:05:33','2011-05-02 20:05:33',55.176711132800001,37.039375305199997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (523,'салтыково','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,485,1,1,'196','2011-05-02 20:05:36','2011-05-02 20:05:36',55.388862080700001,38.119812011699999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (524,'Щеглятьево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,486,1,1,'197','2011-05-02 20:05:39','2011-05-02 20:05:39',55.163573381699997,37.689285278299998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (525,'Бутовские пруды','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,487,1,1,'198','2011-05-02 20:05:42','2011-05-02 20:05:42',55.530998710900001,37.507903575900002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (526,'Супонево','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,488,1,1,'199','2011-05-02 20:05:45','2011-05-02 20:05:45',55.753056964199999,36.872391700700000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (527,'Лесниковский карьер','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,489,1,1,'200','2011-05-02 20:05:48','2011-05-02 20:05:48',57.089308122600002,40.420761108400001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (528,'Щуково','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,490,1,1,'201','2011-05-02 20:05:51','2011-05-02 20:05:51',57.056136177699997,40.188846588099999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (529,'Булатниковский пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,491,1,1,'202','2011-05-02 20:05:53','2011-05-02 20:05:53',55.554078041799997,37.655296325700000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (530,'Лесное озеро Луковое','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,492,1,1,'203','2011-05-02 20:05:56','2011-05-02 20:05:56',55.929202124600003,38.540039062500000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (531,'Песчанный карьер Аборино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,493,1,1,'204','2011-05-02 20:05:59','2011-05-02 20:05:59',55.857201969199998,38.256454467799998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (532,'р. Москва (Строгино)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,494,1,1,'205','2011-05-02 20:06:02','2011-05-02 20:06:02',55.804706032100000,37.445354461699999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (533,'Марьино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,495,1,1,'206','2011-05-02 20:06:05','2011-05-02 20:06:05',55.640931810200001,37.746577262899997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (534,'bullupe (pri4al torpednix katerov biv6ii )','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,496,1,1,'bullupe-pri4al-torpednix-katerov-biv6ii','2011-05-02 20:06:08','2011-05-02 20:06:08',57.009804514300001,23.975987434400000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (535,'bullupe (okolo mosta)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,497,1,1,'bullupe-okolo-mosta','2011-05-02 20:06:11','2011-05-02 20:06:11',57.038488383800001,24.038944244400000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (536,'ziemelupe','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,498,1,1,'ziemelupe','2011-05-02 20:06:14','2011-05-02 20:06:14',57.027687814499998,24.009504318200001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (537,'ozer4o','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,499,1,1,'ozer4o','2011-05-02 20:06:17','2011-05-02 20:06:17',57.044091766599998,24.013710022000001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (538,'шальдиха','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,500,1,1,'207','2011-05-02 20:06:20','2011-05-02 20:06:20',60.141504734800002,32.365722656199999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (539,'Пруд в Губеном углу','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,501,1,1,'208','2011-05-02 20:06:23','2011-05-02 20:06:23',56.820846559200000,37.205114364600000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (540,'База \"Главкосмос\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,502,1,1,'209','2011-05-02 20:06:25','2011-05-02 20:06:26',58.650512507300000,37.275238037100003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (541,'марковские карьеры','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,503,1,1,'210','2011-05-02 20:06:28','2011-05-02 20:06:28',57.040729838399997,40.486335754400002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (542,'Марковские болота','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,504,1,1,'211','2011-05-02 20:06:31','2011-05-02 20:06:31',57.023448463100003,40.488395690899999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (543,'оз.Аткуль','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,505,1,1,'212','2011-05-02 20:06:34','2011-05-02 20:06:34',54.911356424200001,61.921691894500000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (544,'Лотошинский рыбхоз','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,506,1,1,'213','2011-05-02 20:06:37','2011-05-02 20:06:37',56.133306912400002,35.584716796899997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (545,'Золотой сазан','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,507,1,1,'214','2011-05-02 20:06:40','2011-05-02 20:06:40',55.385936843400003,37.617530822799999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (546,'Кистенево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,508,1,1,'215','2011-05-02 20:06:43','2011-05-02 20:06:43',54.255498091699998,41.546516418499998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (547,'п Граждановка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,509,1,1,'216','2011-05-02 20:06:46','2011-05-02 20:06:46',52.976994605599998,42.274575233500002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (548,'пруды п. Озерный частный','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,510,1,1,'217','2011-05-02 20:06:49','2011-05-02 20:06:49',52.877289134999998,42.192091941800001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (549,'Пруды п.Озерный','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,511,1,1,'218','2011-05-02 20:06:52','2011-05-02 20:06:52',52.861823813299999,42.156429290799998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (550,'Рыбалка у Бородина','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,512,1,1,'219','2011-05-02 20:06:55','2011-05-02 20:06:55',55.550630964699998,37.770996093800001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (551,'Колча','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,513,1,1,'220','2011-05-02 20:06:58','2011-05-02 20:06:58',55.206598083300001,40.103702545200001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (552,'Сахалин','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,514,1,1,'221','2011-05-02 20:07:01','2011-05-02 20:07:01',51.944264879000002,142.734375000000000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (553,'Пруд Печерники','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,515,1,1,'222','2011-05-02 20:07:04','2011-05-02 20:07:04',54.649207070000003,39.218444824199999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (554,'Рыб хоз','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,516,1,1,'223','2011-05-02 20:07:07','2011-05-02 20:07:07',54.936610156599997,38.895721435500000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (555,'Рыбхоз \"Осенка\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,517,1,1,'224','2011-05-02 20:07:10','2011-05-02 20:07:10',55.176907185899999,38.530769348100002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (556,'Прудно. Хатунь','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,518,1,1,'225','2011-05-02 20:07:12','2011-05-02 20:07:12',55.007698986000001,37.817516326899998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (557,'База отдыха \"Колвица\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,519,1,1,'226','2011-05-02 20:07:15','2011-05-02 20:07:15',67.086421938100003,33.207206726099997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (558,'По щучьему велению','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,520,1,1,'227','2011-05-02 20:07:18','2011-05-02 20:07:18',48.283192895500001,46.933593750000000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (559,'Рыбалка на Кольском полуострове. База отдыха \"Вува\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,521,1,1,'228','2011-05-02 20:07:21','2011-05-02 20:07:21',68.087787198100003,30.801029205300001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (560,'Арсенал','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,522,1,1,'229','2011-05-02 20:07:24','2011-05-02 20:07:24',55.207479652700002,35.677928924600003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (561,'Саби','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,523,1,1,'230','2011-05-02 20:07:27','2011-05-02 20:07:27',55.574851201300000,37.814769744899998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (562,'Касимов','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,524,1,1,'231','2011-05-02 20:07:30','2011-05-02 20:07:30',54.950019755200003,41.142253875700000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (564,'Десна ниже Расторопово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,526,1,1,'233','2011-05-02 20:07:36','2011-05-02 20:07:36',55.489844828000003,37.456684112500000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (567,'ЧИСТЫЕ РОДНИКИ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,529,1,1,'236','2011-05-02 20:07:45','2011-05-02 20:07:45',55.896437203200001,37.151416540100001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (569,'Бурсиловский порог (Амиакопровод)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,531,1,1,'238','2011-05-02 20:07:51','2011-05-02 20:07:51',48.121814548000003,35.067329406699997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (570,'Залив','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,532,1,1,'239','2011-05-02 20:07:54','2011-05-02 20:07:54',48.095967461900003,35.019264221199997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (571,'Остров Таволжан','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,533,1,1,'240','2011-05-02 20:07:56','2011-05-02 20:07:56',48.076759992400000,35.081233978299998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (572,'Раскаты волги','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,534,1,1,'241','2011-05-02 20:08:00','2011-05-02 20:08:00',45.854151738699997,48.398895263699998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (573,'Рыбалка в Ялте','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,535,1,1,'242','2011-05-02 20:08:02','2011-05-02 20:08:02',44.490597065700001,34.163875579799999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (574,'рыбалка в Мозамбике','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,536,1,1,'243','2011-05-02 20:08:05','2011-05-02 20:08:05',-25.978464447200000,32.595781087900001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (575,'Борисовские пруды','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,537,1,1,'244','2011-05-02 20:08:08','2011-05-02 20:08:08',55.631775410000003,37.713489532499999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (576,'Канал им. Москвы','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,538,1,1,'245','2011-05-02 20:08:11','2011-05-02 20:08:11',56.117998193900000,37.608432769799997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (577,'Torsholma','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,539,1,1,'torsholma','2011-05-02 20:08:14','2011-05-02 20:08:14',60.361431791599998,21.075897216800001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (578,'Клинтане.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,540,1,1,'246','2011-05-02 20:08:17','2011-05-02 20:08:17',56.600799058500002,25.662431716899999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (579,'Кресты','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,541,1,1,'247','2011-05-02 20:08:20','2011-05-02 20:08:20',45.937728505899997,38.080565929400002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (580,'Совхоз Фрязево','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,542,1,1,'248','2011-05-02 20:08:23','2011-05-02 20:08:23',55.727375922599997,38.492231369000002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (581,'Аятский пруд','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,543,1,1,'249','2011-05-02 20:08:26','2011-05-02 20:08:26',57.373938418700000,60.534667968800001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (585,'м-н \"Мир рыболова\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,547,1,1,'253','2011-05-02 20:08:38','2011-05-02 20:08:38',56.319868721500001,43.946170806900000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (586,'м-н \"РыболовСпортЦентр\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,548,1,1,'254','2011-05-02 20:08:41','2011-05-02 20:08:41',56.299634248799997,43.985309600800001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (587,'м-н \"Рыболов\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,549,1,1,'255','2011-05-02 20:08:44','2011-05-02 20:08:44',56.276911260500000,43.980331420900001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (588,'м-н \"Специалист\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,550,1,1,'256','2011-05-02 20:08:47','2011-05-02 20:08:47',56.310633609500002,44.021487235999999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (589,'м-н \"Мир рыболова\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,551,1,1,'257','2011-05-02 20:08:50','2011-05-02 20:08:50',56.317893356900001,44.023118019100004,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (590,'Волжанка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,552,1,1,'258','2011-05-02 20:08:53','2011-05-02 20:08:53',56.782545147000000,36.289730071999998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (591,'м-н \"Рыбалка\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,553,1,1,'259','2011-05-02 20:08:56','2011-05-02 20:08:56',56.329577461400000,43.992819786100000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (592,'м-н \"Поплавок\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,554,1,1,'260','2011-05-02 20:08:59','2011-05-02 20:08:59',56.322438922300002,44.035177230800002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (596,' м-н \"Дельта\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,558,1,1,'264','2011-05-02 20:09:11','2011-05-02 20:09:11',56.327983303400003,43.984665870699999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (598,'м-н «Охота на рыбалку»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,560,1,1,'266','2011-05-02 20:09:16','2011-05-02 20:09:17',56.317798156099997,43.943896293599998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (599,'м-н \"СпортКультУра\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,561,1,1,'267','2011-05-02 20:09:19','2011-05-02 20:09:19',56.249311117300003,43.854761123700001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (600,'м-н \"СпортМаг\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,562,1,1,'268','2011-05-02 20:09:22','2011-05-02 20:09:22',56.236147564900001,43.868150711100000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (601,'м-н \"Охотник-Рыболов\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,563,1,1,'269','2011-05-02 20:09:25','2011-05-02 20:09:25',56.236576882500003,43.866949081400001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (602,'м-н \"Семейный\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,564,1,1,'270','2011-05-02 20:09:28','2011-05-02 20:09:28',56.259609871899997,43.856735229500003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (603,'\"Дом Рыбака\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,565,1,1,'271','2011-05-02 20:09:31','2011-05-02 20:09:31',56.247165194700003,43.865404128999998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (604,'м-н \"Мир рыболова\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,566,1,1,'272','2011-05-02 20:09:34','2011-05-02 20:09:34',56.265640031899999,43.913340568499997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (605,'м-н \"Снаряжение\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,567,1,1,'273','2011-05-02 20:09:37','2011-05-02 20:09:37',56.265449369499997,43.913683891300003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (608,'ПОДСКАЖИТЕ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,570,1,1,'276','2011-05-02 20:09:46','2011-05-02 20:09:46',56.235813647800001,36.948738098100002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (609,'Сенеж','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,571,1,1,'277','2011-05-02 20:09:48','2011-05-02 20:09:48',56.211191173800003,36.989078521700002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (611,'РЫБНАДЗОР','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,573,1,1,'279','2011-05-02 20:09:54','2011-05-02 20:09:54',55.600244560800000,37.457542419399999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (612,'Соколово','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,574,1,1,'280','2011-05-02 20:09:57','2011-05-02 20:09:57',53.058755128999998,25.207443237300001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (613,'Счастье','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,575,1,1,'281','2011-05-02 20:10:00','2011-05-02 20:10:00',48.729813169400003,39.178276062000002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (614,'Щекино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,576,1,1,'282','2011-05-02 20:10:03','2011-05-02 20:10:03',51.547829565999997,34.479217529300001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (615,'Стремоуховка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,577,1,1,'283','2011-05-02 20:10:06','2011-05-02 20:10:06',51.598400712400000,35.080032348600000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (616,'Уборы','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,578,1,1,'284','2011-05-02 20:10:09','2011-05-02 20:10:09',55.723696327699997,37.108082771299998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (617,'Шебанцево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,579,1,1,'285','2011-05-02 20:10:12','2011-05-02 20:10:12',55.264165164399998,37.750815153100000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (618,'«Чаша»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,580,1,1,'286','2011-05-02 20:10:15','2011-05-02 20:10:15',55.537373893999998,37.135677337600001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (619,'Green canyon','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,581,1,1,'green-canyon','2011-05-02 20:10:18','2011-05-02 20:10:18',36.900729348399999,31.577796935999999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (620,'Озеро Горелое','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,582,1,1,'287','2011-05-02 20:10:21','2011-05-02 20:10:21',56.239248084200000,37.847557067899999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (621,'Песчанный карьер г. Электроугли МО','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,583,1,1,'288','2011-05-02 20:10:24','2011-05-02 20:10:24',55.773676529500001,38.186416626000003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (622,'Морозовский пруд','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,584,1,1,'289','2011-05-02 20:10:27','2011-05-02 20:10:27',56.237435503400000,38.065567016599999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (623,'Яковлевское','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,585,1,1,'290','2011-05-02 20:10:30','2011-05-02 20:10:30',55.444205751500000,37.962570190400001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (624,'р. Малога','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,586,1,1,'291','2011-05-02 20:10:33','2011-05-02 20:10:33',57.811205972899998,35.988292694099997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (625,'р. Малога','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,587,1,1,'292','2011-05-02 20:10:35','2011-05-02 20:10:36',57.933763241500003,36.363458633400001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (626,'Капыстичи','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,588,1,1,'293','2011-05-02 20:10:38','2011-05-02 20:10:38',51.680858005099999,34.825973510700003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (627,'Лыткино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,589,1,1,'294','2011-05-02 20:10:41','2011-05-02 20:10:41',56.022324498300001,36.993713378899997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (628,'м-н \"Серебрянный ручей\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,590,1,1,'295','2011-05-02 20:10:44','2011-05-02 20:10:44',56.264901209599998,43.912696838400002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (629,'г.Лысково, Волга','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,591,1,1,'296','2011-05-02 20:10:47','2011-05-02 20:10:47',56.062165487500003,45.041284561200001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (630,'Озеро Охотничье','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,592,1,1,'297','2011-05-02 20:10:50','2011-05-02 20:10:50',60.531279271199999,29.902038574199999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (631,'ООО \"РОСС\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,593,1,1,'298','2011-05-02 20:10:53','2011-05-02 20:10:53',56.425295020999997,37.995185852100001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (632,'Яузское водохран. База','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,594,1,1,'299','2011-05-02 20:10:56','2011-05-02 20:10:56',55.885036049299998,35.112476348900003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (633,'оз.Кафтино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,595,1,1,'300','2011-05-02 20:10:59','2011-05-02 20:10:59',57.968787511300000,34.230308532700001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (634,'Река Ока','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,596,1,1,'301','2011-05-02 20:11:02','2011-05-02 20:11:02',54.814733252400003,37.237472534200002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (635,'Река Ока','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,597,1,1,'302','2011-05-02 20:11:05','2011-05-02 20:11:05',54.863962939899999,37.521743774400001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (636,'Сычевское водохранилище','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,598,1,1,'303','2011-05-02 20:11:08','2011-05-02 20:11:08',55.979177017200001,36.230163574199999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (637,'Река Пахра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,599,1,1,'304','2011-05-02 20:11:11','2011-05-02 20:11:11',55.484580541400000,37.817870378499997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (638,'Алешинский пруд','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,600,1,1,'305','2011-05-02 20:11:14','2011-05-02 20:11:14',56.421497518599999,37.169837951700003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (639,'Каба','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,601,1,1,'306','2011-05-02 20:11:17','2011-05-02 20:11:17',64.878395817200001,29.980316162099999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (640,'Порог над форелевым','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,602,1,1,'307','2011-05-02 20:11:20','2011-05-02 20:11:20',64.865274706099996,30.513153076199998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (641,'Река Угра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,603,1,1,'308','2011-05-02 20:11:22','2011-05-02 20:11:23',54.699779112199998,35.616474151600002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (642,'п. Коробово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,604,1,1,'309','2011-05-02 20:11:25','2011-05-02 20:11:25',55.538636664800002,37.821292877200001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (643,'Река Угра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,605,1,1,'310','2011-05-02 20:11:28','2011-05-02 20:11:28',54.694471759000002,35.586090087899997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (644,'Место лова судака','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,606,1,1,'311','2011-05-02 20:11:31','2011-05-02 20:11:31',54.658343482500001,39.842605590799998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (645,'Песье','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,607,1,1,'312','2011-05-02 20:11:34','2011-05-02 20:11:34',55.405141947300002,37.371025085399999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (646,'Таболово','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,608,1,1,'313','2011-05-02 20:11:37','2011-05-02 20:11:37',55.917756490099997,36.050434112500000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (647,'Истра река','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,609,1,1,'314','2011-05-02 20:11:40','2011-05-02 20:11:40',56.119505416300001,36.928567886400003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (648,'Зубово','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,610,1,1,'315','2011-05-02 20:11:43','2011-05-02 20:11:43',56.017575356099996,35.824871063200000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (649,'ВИЛАР','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,611,1,1,'316','2011-05-02 20:11:46','2011-05-02 20:11:46',55.564174781100000,37.593240737899997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (650,'Русановка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,612,1,1,'317','2011-05-02 20:11:49','2011-05-02 20:11:49',50.446027359399999,30.590744018599999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (651,'Отель \"Анастасия\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,613,1,1,'318','2011-05-02 20:11:52','2011-05-02 20:11:52',51.867694048600001,104.832057953000000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (652,'ООО \"Двенди\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,614,1,1,'319','2011-05-02 20:11:55','2011-05-02 20:11:55',55.732656049100001,38.326320648200003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (653,'Небольшой прудик','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,615,1,1,'320','2011-05-02 20:11:58','2011-05-02 20:11:58',56.223886130200000,37.032852172900000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (654,'Пруд в Тараканово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,616,1,1,'321','2011-05-02 20:12:01','2011-05-02 20:12:01',56.337475888599997,37.031478881799998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (655,'Карьер в Толстяково','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,617,1,1,'322','2011-05-02 20:12:04','2011-05-02 20:12:04',56.279198461699998,36.987791061400003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (656,'\"Бездонка\"','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,618,1,1,'323','2011-05-02 20:12:07','2011-05-02 20:12:07',56.241966794600003,36.973114013699998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (657,'Рыбхоз \"Сенеж\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,619,1,1,'324','2011-05-02 20:12:10','2011-05-02 20:12:10',56.221762642800002,37.010622024500002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (658,'Сенеж, Малиновые острова','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,620,1,1,'325','2011-05-02 20:12:13','2011-05-02 20:12:13',56.208231594700003,37.021865844700002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (659,'Полубарское','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,621,1,1,'326','2011-05-02 20:12:16','2011-05-02 20:12:16',56.698097106900001,38.146247863799999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (660,'Эколенд (закрыт)','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,622,1,1,'327','2011-05-02 20:12:19','2011-05-02 20:12:19',56.375802850500001,37.153701782200002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (661,'р. Осётр','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,623,1,1,'328','2011-05-02 20:12:22','2011-05-02 20:12:22',54.486294827899997,38.637199401899998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (662,'Боровково','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,624,1,1,'329','2011-05-02 20:12:25','2011-05-02 20:12:25',55.981385955500002,38.541927337600001,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (663,'Торбеевское озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,625,1,1,'330','2011-05-02 20:12:28','2011-05-02 20:12:28',56.327198096700002,38.267784118700000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (664,'Клинский рыбхоз (Дятлово)','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,626,1,1,'331','2011-05-02 20:12:31','2011-05-02 20:12:31',56.272717702900003,36.256256103500000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (665,'\"Рыбинка\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,627,1,1,'332','2011-05-02 20:12:34','2011-05-02 20:12:34',58.053541960899999,38.251647949199999,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (666,'Сосенки','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,628,1,1,'333','2011-05-02 20:12:37','2011-05-02 20:12:37',55.557670448300001,37.444667816200003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (667,'Станиславские пруды','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,629,1,1,'334','2011-05-02 20:12:40','2011-05-02 20:12:40',55.520419699000001,37.361497878999998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (668,'Шамбай-97','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,630,1,1,'97-1','2011-05-02 20:12:43','2011-05-02 20:12:43',46.980018122600001,47.533721923800002,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (669,'База 77-99','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,631,1,1,'77-99','2011-05-02 20:12:45','2011-05-02 20:12:46',46.831777837899999,47.681694030800003,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (670,'Дурыкино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,632,1,1,'335','2011-05-02 20:12:48','2011-05-02 20:12:48',56.044335617900003,37.147521972699998,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (671,'Теряевские пруды','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,633,1,1,'336','2011-05-02 20:12:51','2011-05-02 20:12:51',56.173511096299997,36.107339859000000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (672,'Литвиново','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,634,1,1,'337','2011-05-02 20:12:54','2011-05-02 20:12:54',56.022756209500002,38.133544921899997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (673,'ВНИИ кормов (Лобня)','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,635,1,1,'338','2011-05-02 20:12:57','2011-05-02 20:12:57',56.043400760200001,37.465481758099997,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (674,'Марьино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,636,1,1,'339','2011-05-02 20:13:00','2011-05-02 20:13:00',55.647470786000000,37.769193649300000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (675,'Фанни фишинг','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,637,1,1,'340','2011-05-02 20:13:03','2011-05-02 20:13:03',55.075222516499998,37.316780090300000,2);
insert  into `location`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (676,'Отмель на угре','Удобный спуск, чистая вода, да и просто красивое место',1.00,1,'',3,3,1,1,5,638,7,7,'32','2011-05-03 23:03:26','2011-05-03 23:22:10',54.830381617699999,35.025039370300000,3);

/*Table structure for table `location_flow` */

DROP TABLE IF EXISTS `location_flow`;

CREATE TABLE `location_flow` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `weight` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `location_flow` */

insert  into `location_flow`(`id`,`name`,`weight`) values (1,'Отсутствует',NULL);
insert  into `location_flow`(`id`,`name`,`weight`) values (2,'Медленное',NULL);
insert  into `location_flow`(`id`,`name`,`weight`) values (3,'Среднее',NULL);
insert  into `location_flow`(`id`,`name`,`weight`) values (4,'Быстрое',NULL);

/*Table structure for table `location_fundus` */

DROP TABLE IF EXISTS `location_fundus`;

CREATE TABLE `location_fundus` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `weight` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `location_fundus` */

insert  into `location_fundus`(`id`,`name`,`weight`) values (1,'Песчаное',NULL);
insert  into `location_fundus`(`id`,`name`,`weight`) values (2,'Илистое',NULL);
insert  into `location_fundus`(`id`,`name`,`weight`) values (3,'Каменистое',NULL);
insert  into `location_fundus`(`id`,`name`,`weight`) values (4,'Заросшее',NULL);
insert  into `location_fundus`(`id`,`name`,`weight`) values (5,'Коряжник',NULL);

/*Table structure for table `location_relief` */

DROP TABLE IF EXISTS `location_relief`;

CREATE TABLE `location_relief` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `weight` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `location_relief` */

insert  into `location_relief`(`id`,`name`,`weight`) values (1,'Равномерный',NULL);
insert  into `location_relief`(`id`,`name`,`weight`) values (2,'Перепады',NULL);
insert  into `location_relief`(`id`,`name`,`weight`) values (3,'Ямы',NULL);
insert  into `location_relief`(`id`,`name`,`weight`) values (4,'Бровки',NULL);
insert  into `location_relief`(`id`,`name`,`weight`) values (5,'Свал',NULL);

/*Table structure for table `location_scope` */

DROP TABLE IF EXISTS `location_scope`;

CREATE TABLE `location_scope` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `weight` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `location_scope` */

insert  into `location_scope`(`id`,`name`,`weight`) values (1,'Мне',NULL);
insert  into `location_scope`(`id`,`name`,`weight`) values (2,'Друзьям',NULL);
insert  into `location_scope`(`id`,`name`,`weight`) values (3,'Зарегистрированным',NULL);
insert  into `location_scope`(`id`,`name`,`weight`) values (5,'Всем',NULL);

/*Table structure for table `location_type` */

DROP TABLE IF EXISTS `location_type`;

CREATE TABLE `location_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `weight` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `location_type` */

insert  into `location_type`(`id`,`name`,`weight`) values (1,'Река',NULL);
insert  into `location_type`(`id`,`name`,`weight`) values (2,'Озеро',NULL);
insert  into `location_type`(`id`,`name`,`weight`) values (3,'Пруд',NULL);
insert  into `location_type`(`id`,`name`,`weight`) values (4,'Водохранилище',NULL);

/*Table structure for table `location_version` */

DROP TABLE IF EXISTS `location_version`;

CREATE TABLE `location_version` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
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
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `latitude` double(18,15) DEFAULT NULL,
  `longitude` double(18,15) DEFAULT NULL,
  `version` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  CONSTRAINT `location_version_id_location_id` FOREIGN KEY (`id`) REFERENCES `location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `location_version` */

insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (305,'Небольшое но симпатичное место и сбросов загрязняющих нет, кто пробовал раскажите?','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'','2011-05-02 19:55:04','2011-05-02 19:55:04',55.115888187800003,38.878383636499997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (305,'Небольшое но симпатичное место и сбросов загрязняющих нет, кто пробовал раскажите?','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,267,1,1,'','2011-05-02 19:55:04','2011-05-02 19:55:04',55.115888187800003,38.878383636499997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (306,'Река Пехорка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'1','2011-05-02 19:55:07','2011-05-02 19:55:07',55.603953962600002,38.036384582499998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (306,'Река Пехорка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,268,1,1,'1','2011-05-02 19:55:07','2011-05-02 19:55:07',55.603953962600002,38.036384582499998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (307,'Река Или','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2','2011-05-02 19:55:10','2011-05-02 19:55:10',44.138855767599999,76.953735351600002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (307,'Река Или','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,269,1,1,'2','2011-05-02 19:55:10','2011-05-02 19:55:10',44.138855767599999,76.953735351600002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (308,'Верея -Жуковский','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'3','2011-05-02 19:55:12','2011-05-02 19:55:12',55.606984259299999,38.058786392199998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (308,'Верея -Жуковский','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,270,1,1,'3','2011-05-02 19:55:12','2011-05-02 19:55:13',55.606984259299999,38.058786392199998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (309,'Гжельский рыбхоз','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'4','2011-05-02 19:55:15','2011-05-02 19:55:15',55.557185007199998,38.322715759300003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (309,'Гжельский рыбхоз','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,271,1,1,'4','2011-05-02 19:55:15','2011-05-02 19:55:15',55.557185007199998,38.322715759300003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (310,'Ждановское','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'5','2011-05-02 19:55:18','2011-05-02 19:55:18',55.429476124799997,37.965188026400000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (310,'Ждановское','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,272,1,1,'5','2011-05-02 19:55:18','2011-05-02 19:55:18',55.429476124799997,37.965188026400000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (311,'Озеро Вельё. Рыбалка. Рыбы много - щука, окунь и пр.','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'6','2011-05-02 19:55:21','2011-05-02 19:55:21',57.655320827499999,33.036575317400001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (311,'Озеро Вельё. Рыбалка. Рыбы много - щука, окунь и пр.','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,273,1,1,'6','2011-05-02 19:55:21','2011-05-02 19:55:21',57.655320827499999,33.036575317400001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (312,'Дом рыбака Щукари','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'7','2011-05-02 19:55:24','2011-05-02 19:55:24',47.007884597000000,47.493553161599998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (312,'Дом рыбака Щукари','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,274,1,1,'7','2011-05-02 19:55:24','2011-05-02 19:55:24',47.007884597000000,47.493553161599998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (313,'Магазин «Всё для рыбалки»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'8','2011-05-02 19:55:26','2011-05-02 19:55:26',59.867001686800002,30.261465311100000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (313,'Магазин «Всё для рыбалки»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,275,1,1,'8','2011-05-02 19:55:26','2011-05-02 19:55:26',59.867001686800002,30.261465311100000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (314,'база\" Седьмое небо\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'9','2011-05-02 19:55:29','2011-05-02 19:55:29',46.974059485900000,47.591722011599998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (314,'база\" Седьмое небо\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,276,1,1,'9','2011-05-02 19:55:29','2011-05-02 19:55:29',46.974059485900000,47.591722011599998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (315,'Частный гостевой дом в дельте Волги на о.Станья','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'10','2011-05-02 19:55:32','2011-05-02 19:55:32',45.819324979999998,48.102607727100001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (315,'Частный гостевой дом в дельте Волги на о.Станья','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,277,1,1,'10','2011-05-02 19:55:32','2011-05-02 19:55:32',45.819324979999998,48.102607727100001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (316,'Кордон Кузьмича','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'11','2011-05-02 19:55:35','2011-05-02 19:55:35',60.559304045200001,28.647537231400001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (316,'Кордон Кузьмича','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,278,1,1,'11','2011-05-02 19:55:35','2011-05-02 19:55:35',60.559304045200001,28.647537231400001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (317,'Воткинская ГЭС - Краны','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'12','2011-05-02 19:55:38','2011-05-02 19:55:38',56.780542058100004,54.070930480999998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (317,'Воткинская ГЭС - Краны','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,279,1,1,'12','2011-05-02 19:55:38','2011-05-02 19:55:38',56.780542058100004,54.070930480999998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (318,'Воткинская ГЭС','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'13','2011-05-02 19:55:40','2011-05-02 19:55:40',56.786884805600003,54.086304902999998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (318,'Воткинская ГЭС','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,280,1,1,'13','2011-05-02 19:55:40','2011-05-02 19:55:40',56.786884805600003,54.086304902999998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (319,'Ловля Тарани','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'14','2011-05-02 19:55:43','2011-05-02 19:55:43',46.647963159200003,38.890399932900003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (319,'Ловля Тарани','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,281,1,1,'14','2011-05-02 19:55:43','2011-05-02 19:55:43',46.647963159200003,38.890399932900003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (320,'Новосибирское водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'15','2011-05-02 19:55:46','2011-05-02 19:55:46',54.702407731000001,82.842407226600002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (320,'Новосибирское водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,282,1,1,'15','2011-05-02 19:55:46','2011-05-02 19:55:46',54.702407731000001,82.842407226600002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (321,'Портновские пруды','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'16','2011-05-02 19:55:49','2011-05-02 19:55:49',55.582808099300003,36.735534668000000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (321,'Портновские пруды','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,283,1,1,'16','2011-05-02 19:55:49','2011-05-02 19:55:49',55.582808099300003,36.735534668000000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (322,'Все для рыбалки и отдыха','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'17','2011-05-02 19:55:52','2011-05-02 19:55:52',55.907596860399998,36.881618499799998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (322,'Все для рыбалки и отдыха','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,284,1,1,'17','2011-05-02 19:55:52','2011-05-02 19:55:52',55.907596860399998,36.881618499799998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (323,'р.Северка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'18','2011-05-02 19:55:54','2011-05-02 19:55:54',55.234387508200001,37.802238464399998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (323,'р.Северка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,285,1,1,'18','2011-05-02 19:55:54','2011-05-02 19:55:54',55.234387508200001,37.802238464399998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (324,'рыбхоз','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'19','2011-05-02 19:55:57','2011-05-02 19:55:57',54.460998599100002,38.738479614299997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (324,'рыбхоз','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,286,1,1,'19','2011-05-02 19:55:57','2011-05-02 19:55:57',54.460998599100002,38.738479614299997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (325,'Магазин «Рыболов»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'20','2011-05-02 19:56:00','2011-05-02 19:56:00',55.081950800800001,38.802273273499999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (325,'Магазин «Рыболов»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,287,1,1,'20','2011-05-02 19:56:00','2011-05-02 19:56:00',55.081950800800001,38.802273273499999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (326,'река Москва','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'21','2011-05-02 19:56:03','2011-05-02 19:56:03',55.080823869000000,38.835811614999997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (326,'река Москва','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,288,1,1,'21','2011-05-02 19:56:03','2011-05-02 19:56:03',55.080823869000000,38.835811614999997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (327,'Остров','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'22','2011-05-02 19:56:06','2011-05-02 19:56:06',55.071235988600002,38.832850456199999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (327,'Остров','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,289,1,1,'22','2011-05-02 19:56:06','2011-05-02 19:56:06',55.071235988600002,38.832850456199999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (328,'Ока','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'23','2011-05-02 19:56:08','2011-05-02 19:56:08',55.069902962299999,38.808270692800001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (328,'Ока','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,290,1,1,'23','2011-05-02 19:56:08','2011-05-02 19:56:08',55.069902962299999,38.808270692800001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (329,'2капитана','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2-1','2011-05-02 19:56:11','2011-05-02 19:56:11',57.044465295400002,43.179187774699997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (329,'2капитана','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,291,1,1,'2-1','2011-05-02 19:56:11','2011-05-02 19:56:11',57.044465295400002,43.179187774699997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (330,'Турбаза \"Рось\"','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'24','2011-05-02 19:56:14','2011-05-02 19:56:14',49.458272527399998,31.047191619900001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (330,'Турбаза \"Рось\"','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,292,1,1,'24','2011-05-02 19:56:14','2011-05-02 19:56:14',49.458272527399998,31.047191619900001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (331,'база Войсковая 1','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'1-1','2011-05-02 19:56:17','2011-05-02 19:56:17',45.368967251400001,37.506058216100001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (331,'база Войсковая 1','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,293,1,1,'1-1','2011-05-02 19:56:17','2011-05-02 19:56:17',45.368967251400001,37.506058216100001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (332,'Труженик моря 1','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'1-2','2011-05-02 19:56:20','2011-05-02 19:56:20',45.315361862200000,37.386903762800003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (332,'Труженик моря 1','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,294,1,1,'1-2','2011-05-02 19:56:20','2011-05-02 19:56:20',45.315361862200000,37.386903762800003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (333,'Платная автодорога','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'25','2011-05-02 19:56:22','2011-05-02 19:56:22',45.317383768600003,37.384972572300001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (333,'Платная автодорога','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,295,1,1,'25','2011-05-02 19:56:22','2011-05-02 19:56:22',45.317383768600003,37.384972572300001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (334,'Труженик моря 2','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2-2','2011-05-02 19:56:25','2011-05-02 19:56:25',45.321849813599997,37.408318519600002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (334,'Труженик моря 2','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,296,1,1,'2-2','2011-05-02 19:56:25','2011-05-02 19:56:25',45.321849813599997,37.408318519600002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (335,'Темрючанка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'26','2011-05-02 19:56:28','2011-05-02 19:56:28',45.346165474899998,37.452135086100000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (335,'Темрючанка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,297,1,1,'26','2011-05-02 19:56:28','2011-05-02 19:56:28',45.346165474899998,37.452135086100000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (336,'Lahnavesi','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'lahnavesi','2011-05-02 19:56:31','2011-05-02 19:56:31',61.454767214999997,26.653003692599999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (336,'Lahnavesi','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,298,1,1,'lahnavesi','2011-05-02 19:56:31','2011-05-02 19:56:31',61.454767214999997,26.653003692599999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (337,'Вячеславское водохранилище1','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'1-3','2011-05-02 19:56:33','2011-05-02 19:56:33',50.983937635700002,72.162666320800000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (337,'Вячеславское водохранилище1','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,299,1,1,'1-3','2011-05-02 19:56:33','2011-05-02 19:56:33',50.983937635700002,72.162666320800000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (338,'Камал','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'27','2011-05-02 19:56:36','2011-05-02 19:56:36',51.177964181199997,71.411025524099998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (338,'Камал','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,300,1,1,'27','2011-05-02 19:56:36','2011-05-02 19:56:36',51.177964181199997,71.411025524099998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (339,'Павлодарская область1','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'1-4','2011-05-02 19:56:39','2011-05-02 19:56:39',52.827045573699998,76.540331840500002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (339,'Павлодарская область1','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,301,1,1,'1-4','2011-05-02 19:56:39','2011-05-02 19:56:39',52.827045573699998,76.540331840500002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (340,'Баканас1','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'1-5','2011-05-02 19:56:42','2011-05-02 19:56:42',44.811526935899998,76.234002113299994,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (340,'Баканас1','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,302,1,1,'1-5','2011-05-02 19:56:42','2011-05-02 19:56:42',44.811526935899998,76.234002113299994,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (341,'Окунь','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'28','2011-05-02 19:56:45','2011-05-02 19:56:45',59.921627070699998,30.353076160000001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (341,'Окунь','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,303,1,1,'28','2011-05-02 19:56:45','2011-05-02 19:56:45',59.921627070699998,30.353076160000001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (342,'пос. Ильинское ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'29','2011-05-02 19:56:47','2011-05-02 19:56:47',55.754167897800002,37.233524322500003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (342,'пос. Ильинское ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,304,1,1,'29','2011-05-02 19:56:47','2011-05-02 19:56:47',55.754167897800002,37.233524322500003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (343,'Озеро Глухая яма','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'30','2011-05-02 19:56:50','2011-05-02 19:56:50',55.767786337799997,37.279872894299999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (343,'Озеро Глухая яма','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,305,1,1,'30','2011-05-02 19:56:50','2011-05-02 19:56:50',55.767786337799997,37.279872894299999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (344,'Моё место','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'31','2011-05-02 19:56:53','2011-05-02 19:56:53',58.150009779599998,56.475992202800001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (344,'Моё место','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,306,1,1,'31','2011-05-02 19:56:53','2011-05-02 19:56:53',58.150009779599998,56.475992202800001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (346,'Белодачинский пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'33','2011-05-02 19:56:58','2011-05-02 19:56:58',55.659286609699997,37.851676940899999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (346,'Белодачинский пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,308,1,1,'33','2011-05-02 19:56:58','2011-05-02 19:56:58',55.659286609699997,37.851676940899999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (347,'карьер Фатеево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'34','2011-05-02 19:57:01','2011-05-02 19:57:01',55.750042793500000,38.639087676999999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (347,'карьер Фатеево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,309,1,1,'34','2011-05-02 19:57:01','2011-05-02 19:57:01',55.750042793500000,38.639087676999999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (348,'ruslaplandia.ru Турбаза Русская Лапландия','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'ruslaplandia-ru','2011-05-02 19:57:04','2011-05-02 19:57:04',67.779349420900004,35.075225830100003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (348,'ruslaplandia.ru Турбаза Русская Лапландия','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,310,1,1,'ruslaplandia-ru','2011-05-02 19:57:04','2011-05-02 19:57:04',67.779349420900004,35.075225830100003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (349,'Мансурово пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'35','2011-05-02 19:57:07','2011-05-02 19:57:07',55.208067354800001,37.753486633300000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (349,'Мансурово пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,311,1,1,'35','2011-05-02 19:57:07','2011-05-02 19:57:07',55.208067354800001,37.753486633300000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (350,'10 озёр','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'10-1','2011-05-02 19:57:09','2011-05-02 19:57:09',60.892877688299997,35.715007782000001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (350,'10 озёр','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,312,1,1,'10-1','2011-05-02 19:57:09','2011-05-02 19:57:09',60.892877688299997,35.715007782000001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (351,'Строгино , Большой карьер','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'36','2011-05-02 19:57:12','2011-05-02 19:57:12',55.792902774300003,37.418231964100002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (351,'Строгино , Большой карьер','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,313,1,1,'36','2011-05-02 19:57:12','2011-05-02 19:57:12',55.792902774300003,37.418231964100002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (352,'\"Барм фишинг\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'37','2011-05-02 19:57:15','2011-05-02 19:57:15',56.122591449200002,45.520477294899997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (352,'\"Барм фишинг\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,314,1,1,'37','2011-05-02 19:57:15','2011-05-02 19:57:15',56.122591449200002,45.520477294899997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (353,'Островок','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'38','2011-05-02 19:57:18','2011-05-02 19:57:18',53.186441866800003,39.980964660600002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (353,'Островок','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,315,1,1,'38','2011-05-02 19:57:18','2011-05-02 19:57:18',53.186441866800003,39.980964660600002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (354,'Ботово база отдыха','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'39','2011-05-02 19:57:20','2011-05-02 19:57:20',57.154064106200003,32.987480163599997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (354,'Ботово база отдыха','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,316,1,1,'39','2011-05-02 19:57:20','2011-05-02 19:57:21',57.154064106200003,32.987480163599997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (355,'Турист','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'40','2011-05-02 19:57:23','2011-05-02 19:57:23',56.260932774899999,43.980953693399996,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (355,'Турист','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,317,1,1,'40','2011-05-02 19:57:23','2011-05-02 19:57:23',56.260932774899999,43.980953693399996,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (356,'преголя ','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'41','2011-05-02 19:57:26','2011-05-02 19:57:26',54.698340739300001,20.671420097399999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (356,'преголя ','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,318,1,1,'41','2011-05-02 19:57:26','2011-05-02 19:57:26',54.698340739300001,20.671420097399999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (357,'голубые озёра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'42','2011-05-02 19:57:29','2011-05-02 19:57:29',54.650696842700000,20.358180999799998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (357,'голубые озёра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,319,1,1,'42','2011-05-02 19:57:29','2011-05-02 19:57:29',54.650696842700000,20.358180999799998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (358,'ГЭС','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'43','2011-05-02 19:57:32','2011-05-02 19:57:32',58.113281187399998,56.324501037600001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (358,'ГЭС','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,320,1,1,'43','2011-05-02 19:57:32','2011-05-02 19:57:32',58.113281187399998,56.324501037600001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (359,'иман','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'44','2011-05-02 19:57:34','2011-05-02 19:57:34',47.863299737399998,137.856445312000010,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (359,'иман','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,321,1,1,'44','2011-05-02 19:57:34','2011-05-02 19:57:35',47.863299737399998,137.856445312000010,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (360,'оз. Кадал','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'45','2011-05-02 19:57:37','2011-05-02 19:57:37',54.328537239699997,71.442718505900004,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (360,'оз. Кадал','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,322,1,1,'45','2011-05-02 19:57:37','2011-05-02 19:57:37',54.328537239699997,71.442718505900004,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (361,'озеро Круглое','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'46','2011-05-02 19:57:40','2011-05-02 19:57:40',56.053371407199997,37.353858947799999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (361,'озеро Круглое','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,323,1,1,'46','2011-05-02 19:57:40','2011-05-02 19:57:40',56.053371407199997,37.353858947799999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (362,'Kapsajoki river','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'kapsajoki-river','2011-05-02 19:57:43','2011-05-02 19:57:43',67.865712311799996,25.066337585399999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (362,'Kapsajoki river','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,324,1,1,'kapsajoki-river','2011-05-02 19:57:43','2011-05-02 19:57:43',67.865712311799996,25.066337585399999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (363,'Ounasjoki river','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'ounasjoki-river','2011-05-02 19:57:46','2011-05-02 19:57:46',67.797830755500001,24.912528991700000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (363,'Ounasjoki river','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,325,1,1,'ounasjoki-river','2011-05-02 19:57:46','2011-05-02 19:57:46',67.797830755500001,24.912528991700000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (364,'Фиш и Чиж','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'47','2011-05-02 19:57:49','2011-05-02 19:57:49',51.870979847299999,25.767059326199998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (364,'Фиш и Чиж','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,326,1,1,'47','2011-05-02 19:57:49','2011-05-02 19:57:49',51.870979847299999,25.767059326199998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (365,'МОЛОГА-ФИШ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'48','2011-05-02 19:57:52','2011-05-02 19:57:52',58.724203014200000,37.168121337899997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (365,'МОЛОГА-ФИШ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,327,1,1,'48','2011-05-02 19:57:52','2011-05-02 19:57:52',58.724203014200000,37.168121337899997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (366,'новозыбковский пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'49','2011-05-02 19:57:55','2011-05-02 19:57:55',52.536064211800003,31.941032409700000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (366,'новозыбковский пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,328,1,1,'49','2011-05-02 19:57:55','2011-05-02 19:57:55',52.536064211800003,31.941032409700000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (367,'Озеро «Монетка»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'50','2011-05-02 19:57:58','2011-05-02 19:57:58',60.388449943900000,29.702396392800001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (367,'Озеро «Монетка»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,329,1,1,'50','2011-05-02 19:57:58','2011-05-02 19:57:58',60.388449943900000,29.702396392800001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (368,'Рыболовный интернет магазин www.hot-fishing.ru лучшие цены','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'www-hot-fishing-ru','2011-05-02 19:58:01','2011-05-02 19:58:01',56.854960576099998,35.942738056200000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (368,'Рыболовный интернет магазин www.hot-fishing.ru лучшие цены','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,330,1,1,'www-hot-fishing-ru','2011-05-02 19:58:01','2011-05-02 19:58:01',56.854960576099998,35.942738056200000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (369,'Chapoma.ru','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'chapoma-ru','2011-05-02 19:58:04','2011-05-02 19:58:04',66.372755002500000,37.441406250000000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (369,'Chapoma.ru','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,331,1,1,'chapoma-ru','2011-05-02 19:58:04','2011-05-02 19:58:04',66.372755002500000,37.441406250000000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (370,'прокошево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'51','2011-05-02 19:58:06','2011-05-02 19:58:06',55.881040340500000,44.511537551899998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (370,'прокошево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,332,1,1,'51','2011-05-02 19:58:06','2011-05-02 19:58:07',55.881040340500000,44.511537551899998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (371,'канал','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'52','2011-05-02 19:58:09','2011-05-02 19:58:09',54.694943000700000,20.527160167700000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (371,'канал','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,333,1,1,'52','2011-05-02 19:58:09','2011-05-02 19:58:09',54.694943000700000,20.527160167700000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (372,'рыбалка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'53','2011-05-02 19:58:13','2011-05-02 19:58:13',56.308967243300003,44.017345905299997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (372,'рыбалка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,334,1,1,'53','2011-05-02 19:58:13','2011-05-02 19:58:13',56.308967243300003,44.017345905299997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (373,'Ока (Калиновские выселки)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'54','2011-05-02 19:58:15','2011-05-02 19:58:15',54.875572092799999,37.320449352300002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (373,'Ока (Калиновские выселки)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,335,1,1,'54','2011-05-02 19:58:15','2011-05-02 19:58:16',54.875572092799999,37.320449352300002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (374,'РыбаКлюй','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'55','2011-05-02 19:58:18','2011-05-02 19:58:18',59.945232303700003,30.414190292400001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (374,'РыбаКлюй','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,336,1,1,'55','2011-05-02 19:58:18','2011-05-02 19:58:18',59.945232303700003,30.414190292400001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (376,'Гореловское озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'57','2011-05-02 19:58:24','2011-05-02 19:58:24',59.782297656799997,30.117816925000000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (376,'Гореловское озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,338,1,1,'57','2011-05-02 19:58:24','2011-05-02 19:58:24',59.782297656799997,30.117816925000000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (377,'Рыболов','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'58','2011-05-02 19:58:27','2011-05-02 19:58:27',59.909324623300002,30.306569337799999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (377,'Рыболов','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,339,1,1,'58','2011-05-02 19:58:27','2011-05-02 19:58:27',59.909324623300002,30.306569337799999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (378,'Гостевой домик на Рыбинском водохранилище','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'59','2011-05-02 19:58:30','2011-05-02 19:58:30',58.122869166800001,38.394470214800002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (378,'Гостевой домик на Рыбинском водохранилище','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,340,1,1,'59','2011-05-02 19:58:30','2011-05-02 19:58:30',58.122869166800001,38.394470214800002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (379,'рубежное','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'60','2011-05-02 19:58:33','2011-05-02 19:58:33',50.177777596100000,36.841707229599997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (379,'рубежное','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,341,1,1,'60','2011-05-02 19:58:33','2011-05-02 19:58:33',50.177777596100000,36.841707229599997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (380,'карась с моста','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'61','2011-05-02 19:58:36','2011-05-02 19:58:36',54.720666969100002,20.462100505799999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (380,'карась с моста','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,342,1,1,'61','2011-05-02 19:58:36','2011-05-02 19:58:36',54.720666969100002,20.462100505799999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (381,'Сервис центр рыбака','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'62','2011-05-02 19:58:39','2011-05-02 19:58:39',59.908506987599999,30.321664810200001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (381,'Сервис центр рыбака','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,343,1,1,'62','2011-05-02 19:58:39','2011-05-02 19:58:39',59.908506987599999,30.321664810200001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (382,'Пады','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'63','2011-05-02 19:58:42','2011-05-02 19:58:42',52.506191342000001,39.541168212899997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (382,'Пады','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,344,1,1,'63','2011-05-02 19:58:42','2011-05-02 19:58:42',52.506191342000001,39.541168212899997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (384,'Волга (Сомовка)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'65','2011-05-02 19:58:47','2011-05-02 19:58:47',56.153390360099998,45.705528259300003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (384,'Волга (Сомовка)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,346,1,1,'65','2011-05-02 19:58:47','2011-05-02 19:58:47',56.153390360099998,45.705528259300003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (385,'р. Волга (Разнежье)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'66','2011-05-02 19:58:50','2011-05-02 19:58:50',56.190660358599999,45.631027221700002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (385,'р. Волга (Разнежье)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,347,1,1,'66','2011-05-02 19:58:50','2011-05-02 19:58:50',56.190660358599999,45.631027221700002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (386,'разнежье','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'67','2011-05-02 19:58:53','2011-05-02 19:58:53',56.179769792999998,45.680465698200003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (386,'разнежье','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,348,1,1,'67','2011-05-02 19:58:53','2011-05-02 19:58:53',56.179769792999998,45.680465698200003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (387,'Рыболовный магазин в Разнежье','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'68','2011-05-02 19:58:56','2011-05-02 19:58:56',56.185693115500001,45.682525634800001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (387,'Рыболовный магазин в Разнежье','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,349,1,1,'68','2011-05-02 19:58:56','2011-05-02 19:58:56',56.185693115500001,45.682525634800001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (388,'р. Волга (Разнежье)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'69','2011-05-02 19:58:59','2011-05-02 19:58:59',56.175183367099997,45.648536682100001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (388,'р. Волга (Разнежье)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,350,1,1,'69','2011-05-02 19:58:59','2011-05-02 19:58:59',56.175183367099997,45.648536682100001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (389,'Алексей Комаров (Астрахань)','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'70','2011-05-02 19:59:02','2011-05-02 19:59:02',45.928229509300003,48.317871093800001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (389,'Алексей Комаров (Астрахань)','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,351,1,1,'70','2011-05-02 19:59:02','2011-05-02 19:59:02',45.928229509300003,48.317871093800001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (390,'Черновское водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'71','2011-05-02 19:59:05','2011-05-02 19:59:05',53.252068805900002,50.141601562500000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (390,'Черновское водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,352,1,1,'71','2011-05-02 19:59:05','2011-05-02 19:59:05',53.252068805900002,50.141601562500000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (391,'Рыболов 24, минское ш. 43км','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'24-43','2011-05-02 19:59:08','2011-05-02 19:59:08',55.618933466900003,37.113597392999999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (391,'Рыболов 24, минское ш. 43км','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,353,1,1,'24-43','2011-05-02 19:59:08','2011-05-02 19:59:08',55.618933466900003,37.113597392999999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (392,'Рыболов, минское ш. 47км','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'47-1','2011-05-02 19:59:11','2011-05-02 19:59:11',55.603250900299997,37.002854347200000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (392,'Рыболов, минское ш. 47км','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,354,1,1,'47-1','2011-05-02 19:59:11','2011-05-02 19:59:11',55.603250900299997,37.002854347200000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (393,'леженьки','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'72','2011-05-02 19:59:14','2011-05-02 19:59:14',51.750892616900003,37.058601379400002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (393,'леженьки','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,355,1,1,'72','2011-05-02 19:59:14','2011-05-02 19:59:14',51.750892616900003,37.058601379400002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (394,'рыболовный магазин','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'73','2011-05-02 19:59:17','2011-05-02 19:59:17',54.724911404799997,20.468355417300000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (394,'рыболовный магазин','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,356,1,1,'73','2011-05-02 19:59:17','2011-05-02 19:59:17',54.724911404799997,20.468355417300000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (395,'На Дунае','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'74','2011-05-02 19:59:20','2011-05-02 19:59:20',45.440380888299998,29.539146423300000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (395,'На Дунае','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,357,1,1,'74','2011-05-02 19:59:20','2011-05-02 19:59:20',45.440380888299998,29.539146423300000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (396,'Жили -Были','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'75','2011-05-02 19:59:23','2011-05-02 19:59:23',56.164288409299999,45.809211730999998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (396,'Жили -Были','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,358,1,1,'75','2011-05-02 19:59:23','2011-05-02 19:59:23',56.164288409299999,45.809211730999998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (397,'Красивая Меча','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'76','2011-05-02 19:59:25','2011-05-02 19:59:25',53.132271551599999,38.140411377000000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (397,'Красивая Меча','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,359,1,1,'76','2011-05-02 19:59:25','2011-05-02 19:59:26',53.132271551599999,38.140411377000000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (398,'карась плотва окунь щука','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'77','2011-05-02 19:59:28','2011-05-02 19:59:28',55.591539423999997,37.434024810799997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (398,'карась плотва окунь щука','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,360,1,1,'77','2011-05-02 19:59:28','2011-05-02 19:59:28',55.591539423999997,37.434024810799997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (399,'Истринское водохранилище. д Пятница.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'78','2011-05-02 19:59:31','2011-05-02 19:59:31',56.095310956299997,36.790380477900001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (399,'Истринское водохранилище. д Пятница.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,361,1,1,'78','2011-05-02 19:59:31','2011-05-02 19:59:31',56.095310956299997,36.790380477900001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (400,'Васильсурская слобода','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'79','2011-05-02 19:59:34','2011-05-02 19:59:34',56.137515741900003,45.930404663099999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (400,'Васильсурская слобода','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,362,1,1,'79','2011-05-02 19:59:34','2011-05-02 19:59:34',56.137515741900003,45.930404663099999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (401,'оз. Зимари','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'80','2011-05-02 19:59:37','2011-05-02 19:59:37',53.180629784700002,83.479099273700001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (401,'оз. Зимари','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,363,1,1,'80','2011-05-02 19:59:37','2011-05-02 19:59:37',53.180629784700002,83.479099273700001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (402,'пруд у стадиона','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'81','2011-05-02 19:59:40','2011-05-02 19:59:40',55.844506281999998,37.164816856400002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (402,'пруд у стадиона','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,364,1,1,'81','2011-05-02 19:59:40','2011-05-02 19:59:40',55.844506281999998,37.164816856400002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (403,'инютино нижегородская область','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'82','2011-05-02 19:59:43','2011-05-02 19:59:43',55.927971155100003,43.917846679699998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (403,'инютино нижегородская область','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,365,1,1,'82','2011-05-02 19:59:43','2011-05-02 19:59:43',55.927971155100003,43.917846679699998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (404,'р. Волга / Кама (Рождествено)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'83','2011-05-02 19:59:46','2011-05-02 19:59:46',55.434857336400000,49.346466064500000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (404,'р. Волга / Кама (Рождествено)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,366,1,1,'83','2011-05-02 19:59:46','2011-05-02 19:59:46',55.434857336400000,49.346466064500000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (405,'Вишенки','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'84','2011-05-02 19:59:49','2011-05-02 19:59:49',53.182378635600003,39.597816467299999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (405,'Вишенки','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,367,1,1,'84','2011-05-02 19:59:49','2011-05-02 19:59:49',53.182378635600003,39.597816467299999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (406,'Николаевка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'85','2011-05-02 19:59:52','2011-05-02 19:59:52',52.703226747700000,39.916419982900003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (406,'Николаевка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,368,1,1,'85','2011-05-02 19:59:52','2011-05-02 19:59:52',52.703226747700000,39.916419982900003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (407,'Доброе р.Воронеж','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'86','2011-05-02 19:59:54','2011-05-02 19:59:54',52.861875632599997,39.844150543200001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (407,'Доброе р.Воронеж','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,369,1,1,'86','2011-05-02 19:59:54','2011-05-02 19:59:55',52.861875632599997,39.844150543200001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (408,'Каликино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'87','2011-05-02 19:59:57','2011-05-02 19:59:57',52.961047854400000,39.767761230500000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (408,'Каликино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,370,1,1,'87','2011-05-02 19:59:57','2011-05-02 19:59:57',52.961047854400000,39.767761230500000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (409,'преголя','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'88','2011-05-02 20:00:00','2011-05-02 20:00:00',54.692165076000002,20.396804809599999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (409,'преголя','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,371,1,1,'88','2011-05-02 20:00:00','2011-05-02 20:00:00',54.692165076000002,20.396804809599999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (410,'воронье озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'89','2011-05-02 20:00:03','2011-05-02 20:00:03',54.653080365299999,20.855827331499999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (410,'воронье озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,372,1,1,'89','2011-05-02 20:00:03','2011-05-02 20:00:03',54.653080365299999,20.855827331499999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (411,'караси','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'90','2011-05-02 20:00:06','2011-05-02 20:00:06',54.944048845700003,20.485296249400001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (411,'караси','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,373,1,1,'90','2011-05-02 20:00:06','2011-05-02 20:00:06',54.944048845700003,20.485296249400001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (412,'хлебное озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'91','2011-05-02 20:00:09','2011-05-02 20:00:09',54.720660772499997,20.462636947600000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (412,'хлебное озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,374,1,1,'91','2011-05-02 20:00:09','2011-05-02 20:00:09',54.720660772499997,20.462636947600000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (413,'Супер карп','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'92','2011-05-02 20:00:12','2011-05-02 20:00:12',55.510797737499999,37.720441818200001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (413,'Супер карп','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,375,1,1,'92','2011-05-02 20:00:12','2011-05-02 20:00:12',55.510797737499999,37.720441818200001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (415,'р. Мулянка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'94','2011-05-02 20:00:18','2011-05-02 20:00:18',57.985536054000001,56.127777099600003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (415,'р. Мулянка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,377,1,1,'94','2011-05-02 20:00:18','2011-05-02 20:00:18',57.985536054000001,56.127777099600003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (416,'р. Мулянка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'95','2011-05-02 20:00:21','2011-05-02 20:00:21',58.002640611399997,56.128463745099999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (416,'р. Мулянка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,378,1,1,'95','2011-05-02 20:00:21','2011-05-02 20:00:21',58.002640611399997,56.128463745099999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (417,'Заостровка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'96','2011-05-02 20:00:23','2011-05-02 20:00:23',58.016827553299997,56.085205078100003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (417,'Заостровка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,379,1,1,'96','2011-05-02 20:00:23','2011-05-02 20:00:23',58.016827553299997,56.085205078100003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (420,'Октябрьское озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'99','2011-05-02 20:00:32','2011-05-02 20:00:32',57.145325073499997,40.322721004500004,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (420,'Октябрьское озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,382,1,1,'99','2011-05-02 20:00:32','2011-05-02 20:00:32',57.145325073499997,40.322721004500004,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (421,'оз. Вепревское','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'100','2011-05-02 20:00:35','2011-05-02 20:00:35',56.913149236000002,39.155015945400002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (421,'оз. Вепревское','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,383,1,1,'100','2011-05-02 20:00:35','2011-05-02 20:00:35',56.913149236000002,39.155015945400002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (422,'По Щучьему Велению','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'101','2011-05-02 20:00:41','2011-05-02 20:00:41',48.618952585599999,45.518932342500001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (422,'По Щучьему Велению','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,384,1,1,'101','2011-05-02 20:00:41','2011-05-02 20:00:41',48.618952585599999,45.518932342500001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (423,'истра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'102','2011-05-02 20:00:44','2011-05-02 20:00:44',56.033979007500001,36.817932128899997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (423,'истра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,385,1,1,'102','2011-05-02 20:00:44','2011-05-02 20:00:44',56.033979007500001,36.817932128899997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (424,'Нарские пруды','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'103','2011-05-02 20:00:46','2011-05-02 20:00:46',55.539019130600003,36.615720391300002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (424,'Нарские пруды','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,386,1,1,'103','2011-05-02 20:00:46','2011-05-02 20:00:47',55.539019130600003,36.615720391300002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (425,'Донское','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'104','2011-05-02 20:00:49','2011-05-02 20:00:49',52.617751637300003,38.961113691300000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (425,'Донское','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,387,1,1,'104','2011-05-02 20:00:49','2011-05-02 20:00:50',52.617751637300003,38.961113691300000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (426,'Водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'105','2011-05-02 20:00:53','2011-05-02 20:00:53',52.593246399700000,39.743385314900003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (426,'Водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,388,1,1,'105','2011-05-02 20:00:53','2011-05-02 20:00:53',52.593246399700000,39.743385314900003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (427,'Вербилово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'106','2011-05-02 20:00:55','2011-05-02 20:00:55',52.287902570999996,39.412765502900001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (427,'Вербилово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,389,1,1,'106','2011-05-02 20:00:55','2011-05-02 20:00:56',52.287902570999996,39.412765502900001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (428,'Грязное','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'107','2011-05-02 20:00:58','2011-05-02 20:00:58',52.358828590100003,39.417572021500000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (428,'Грязное','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,390,1,1,'107','2011-05-02 20:00:58','2011-05-02 20:00:58',52.358828590100003,39.417572021500000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (429,'Саввино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'108','2011-05-02 20:01:01','2011-05-02 20:01:01',55.420635710100001,39.203681945800000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (429,'Саввино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,391,1,1,'108','2011-05-02 20:01:01','2011-05-02 20:01:01',55.420635710100001,39.203681945800000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (430,'База Верхневолжье','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'109','2011-05-02 20:01:04','2011-05-02 20:01:04',57.082004442900001,32.698230743400003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (430,'База Верхневолжье','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,392,1,1,'109','2011-05-02 20:01:04','2011-05-02 20:01:04',57.082004442900001,32.698230743400003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (431,'Залив Бронежа','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'110','2011-05-02 20:01:07','2011-05-02 20:01:07',57.062315591299999,32.652482986499997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (431,'Залив Бронежа','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,393,1,1,'110','2011-05-02 20:01:07','2011-05-02 20:01:07',57.062315591299999,32.652482986499997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (432,'Карповый','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'111','2011-05-02 20:01:10','2011-05-02 20:01:10',55.792017325499998,38.129253387500000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (432,'Карповый','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,394,1,1,'111','2011-05-02 20:01:10','2011-05-02 20:01:10',55.792017325499998,38.129253387500000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (433,'Министерский','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'112','2011-05-02 20:01:13','2011-05-02 20:01:13',55.792789380099997,38.119983673100002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (433,'Министерский','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,395,1,1,'112','2011-05-02 20:01:13','2011-05-02 20:01:13',55.792789380099997,38.119983673100002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (434,'Плещеево озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'113','2011-05-02 20:01:16','2011-05-02 20:01:16',56.768079123699998,38.777618408199999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (434,'Плещеево озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,396,1,1,'113','2011-05-02 20:01:16','2011-05-02 20:01:16',56.768079123699998,38.777618408199999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (435,'Золотой Сазан','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'114','2011-05-02 20:01:19','2011-05-02 20:01:19',55.417566673700001,37.248544692999999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (435,'Золотой Сазан','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,397,1,1,'114','2011-05-02 20:01:19','2011-05-02 20:01:19',55.417566673700001,37.248544692999999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (436,'База \"Зелёный дом\" коттедж \"Простор\".','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'115','2011-05-02 20:01:22','2011-05-02 20:01:22',66.197997287400000,33.354063034100001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (436,'База \"Зелёный дом\" коттедж \"Простор\".','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,398,1,1,'115','2011-05-02 20:01:22','2011-05-02 20:01:22',66.197997287400000,33.354063034100001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (437,'Похра, Белеутово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'116','2011-05-02 20:01:25','2011-05-02 20:01:25',55.494483625100003,37.743616104099999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (437,'Похра, Белеутово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,399,1,1,'116','2011-05-02 20:01:25','2011-05-02 20:01:25',55.494483625100003,37.743616104099999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (438,'с.Мокрое','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'117','2011-05-02 20:01:27','2011-05-02 20:01:27',52.438013595299999,39.401779174799998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (438,'с.Мокрое','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,400,1,1,'117','2011-05-02 20:01:27','2011-05-02 20:01:27',52.438013595299999,39.401779174799998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (439,'Юшинский затон','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'118','2011-05-02 20:01:30','2011-05-02 20:01:30',52.544834202700002,39.822864532499999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (439,'Юшинский затон','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,401,1,1,'118','2011-05-02 20:01:30','2011-05-02 20:01:30',52.544834202700002,39.822864532499999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (440,'Делиховое','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'119','2011-05-02 20:01:33','2011-05-02 20:01:33',53.043380391200003,39.817199707000000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (440,'Делиховое','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,402,1,1,'119','2011-05-02 20:01:33','2011-05-02 20:01:33',53.043380391200003,39.817199707000000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (441,'Ока - Дракино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'120','2011-05-02 20:01:36','2011-05-02 20:01:36',54.836409621900003,37.260818481400001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (441,'Ока - Дракино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,403,1,1,'120','2011-05-02 20:01:36','2011-05-02 20:01:36',54.836409621900003,37.260818481400001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (442,'Елец на Поле','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'121','2011-05-02 20:01:39','2011-05-02 20:01:39',55.818451484000001,39.854192733799998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (442,'Елец на Поле','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,404,1,1,'121','2011-05-02 20:01:39','2011-05-02 20:01:39',55.818451484000001,39.854192733799998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (443,'р. Москва, Сельцо','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'122','2011-05-02 20:01:42','2011-05-02 20:01:42',55.561524637900000,38.026084899899999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (443,'р. Москва, Сельцо','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,405,1,1,'122','2011-05-02 20:01:42','2011-05-02 20:01:42',55.561524637900000,38.026084899899999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (444,'Рыболовная база \"Трофейная\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'123','2011-05-02 20:01:45','2011-05-02 20:01:45',59.506280713999999,38.516693115199999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (444,'Рыболовная база \"Трофейная\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,406,1,1,'123','2011-05-02 20:01:45','2011-05-02 20:01:45',59.506280713999999,38.516693115199999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (445,'Ahtuba-club.ru','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'ahtuba-club-ru','2011-05-02 20:01:48','2011-05-02 20:01:48',47.112593267599998,47.398452758799998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (445,'Ahtuba-club.ru','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,407,1,1,'ahtuba-club-ru','2011-05-02 20:01:48','2011-05-02 20:01:48',47.112593267599998,47.398452758799998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (446,'Озеро Долгое','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'124','2011-05-02 20:01:51','2011-05-02 20:01:51',56.513669536800002,37.361068725599999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (446,'Озеро Долгое','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,408,1,1,'124','2011-05-02 20:01:51','2011-05-02 20:01:51',56.513669536800002,37.361068725599999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (447,'\"Клёвое озеро\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'125','2011-05-02 20:01:54','2011-05-02 20:01:54',54.999816697000000,73.472968339900007,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (447,'\"Клёвое озеро\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,409,1,1,'125','2011-05-02 20:01:54','2011-05-02 20:01:54',54.999816697000000,73.472968339900007,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (448,'Рыболовно - охотничий клуб \"Мария\" ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'126','2011-05-02 20:01:57','2011-05-02 20:01:57',47.586975945799999,46.752233505200003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (448,'Рыболовно - охотничий клуб \"Мария\" ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,410,1,1,'126','2011-05-02 20:01:57','2011-05-02 20:01:57',47.586975945799999,46.752233505200003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (449,'Рыболовно-охотничья гостиница \"ВЕСЬ\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'127','2011-05-02 20:01:59','2011-05-02 20:01:59',58.649226445899998,37.279357910199998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (449,'Рыболовно-охотничья гостиница \"ВЕСЬ\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,411,1,1,'127','2011-05-02 20:01:59','2011-05-02 20:01:59',58.649226445899998,37.279357910199998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (450,'Плавучая гостиница \"Гусиный остров\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'128','2011-05-02 20:02:02','2011-05-02 20:02:02',46.848639699000003,47.698516845699999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (450,'Плавучая гостиница \"Гусиный остров\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,412,1,1,'128','2011-05-02 20:02:02','2011-05-02 20:02:02',46.848639699000003,47.698516845699999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (451,'Река Волга','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'129','2011-05-02 20:02:05','2011-05-02 20:02:05',56.163944307100003,47.080535888699998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (451,'Река Волга','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,413,1,1,'129','2011-05-02 20:02:05','2011-05-02 20:02:05',56.163944307100003,47.080535888699998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (452,'Большой Юг','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'130','2011-05-02 20:02:08','2011-05-02 20:02:08',59.073124816000004,38.302803039600001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (452,'Большой Юг','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,414,1,1,'130','2011-05-02 20:02:08','2011-05-02 20:02:08',59.073124816000004,38.302803039600001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (453,'Рыбинка. Вичелово.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'131','2011-05-02 20:02:11','2011-05-02 20:02:11',59.002030770300003,37.969779968300003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (453,'Рыбинка. Вичелово.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,415,1,1,'131','2011-05-02 20:02:11','2011-05-02 20:02:11',59.002030770300003,37.969779968300003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (454,'Советск','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'132','2011-05-02 20:02:14','2011-05-02 20:02:14',53.931351817400000,37.647399902300002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (454,'Советск','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,416,1,1,'132','2011-05-02 20:02:14','2011-05-02 20:02:14',53.931351817400000,37.647399902300002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (455,'река Вопь','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'133','2011-05-02 20:02:17','2011-05-02 20:02:17',55.224323672899999,32.853927612299998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (455,'река Вопь','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,417,1,1,'133','2011-05-02 20:02:17','2011-05-02 20:02:17',55.224323672899999,32.853927612299998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (456,'р. Ока (Озёры)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'134','2011-05-02 20:02:20','2011-05-02 20:02:20',54.852856907800003,38.590807914700001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (456,'р. Ока (Озёры)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,418,1,1,'134','2011-05-02 20:02:20','2011-05-02 20:02:20',54.852856907800003,38.590807914700001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (458,'МАМШИН ОСТРОВ','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'135','2011-05-02 20:02:26','2011-05-02 20:02:26',57.364682060400000,43.067436218300003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (458,'МАМШИН ОСТРОВ','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,420,1,1,'135','2011-05-02 20:02:26','2011-05-02 20:02:26',57.364682060400000,43.067436218300003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (460,'Дом рыбака Ахтуба Тур','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'136','2011-05-02 20:02:31','2011-05-02 20:02:31',45.845621229000002,47.964173555400002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (460,'Дом рыбака Ахтуба Тур','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,422,1,1,'136','2011-05-02 20:02:31','2011-05-02 20:02:32',45.845621229000002,47.964173555400002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (461,'Тростенское озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'137','2011-05-02 20:02:34','2011-05-02 20:02:34',55.866912452699999,36.488342285199998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (461,'Тростенское озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,423,1,1,'137','2011-05-02 20:02:34','2011-05-02 20:02:34',55.866912452699999,36.488342285199998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (462,'Крюково','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'138','2011-05-02 20:02:37','2011-05-02 20:02:37',55.270979598799997,35.937309265099998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (462,'Крюково','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,424,1,1,'138','2011-05-02 20:02:37','2011-05-02 20:02:37',55.270979598799997,35.937309265099998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (463,'Дылдино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'139','2011-05-02 20:02:40','2011-05-02 20:02:40',55.129905302700003,36.047172546399999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (463,'Дылдино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,425,1,1,'139','2011-05-02 20:02:40','2011-05-02 20:02:40',55.129905302700003,36.047172546399999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (464,'Шушпанское водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'140','2011-05-02 20:02:43','2011-05-02 20:02:43',53.382017764799997,40.737304687500000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (464,'Шушпанское водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,426,1,1,'140','2011-05-02 20:02:43','2011-05-02 20:02:43',53.382017764799997,40.737304687500000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (465,'Быковские острова','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'141','2011-05-02 20:02:46','2011-05-02 20:02:46',57.361904697500002,42.964096069299998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (465,'Быковские острова','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,427,1,1,'141','2011-05-02 20:02:46','2011-05-02 20:02:46',57.361904697500002,42.964096069299998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (466,'Демидовка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'142','2011-05-02 20:02:49','2011-05-02 20:02:49',57.355423366399997,42.998085021999998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (466,'Демидовка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,428,1,1,'142','2011-05-02 20:02:49','2011-05-02 20:02:49',57.355423366399997,42.998085021999998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (467,'Юдановка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'143','2011-05-02 20:02:52','2011-05-02 20:02:52',55.321722199000000,37.200393676799997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (467,'Юдановка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,429,1,1,'143','2011-05-02 20:02:52','2011-05-02 20:02:52',55.321722199000000,37.200393676799997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (468,'Зыбино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'144','2011-05-02 20:02:55','2011-05-02 20:02:55',55.299056329999999,37.378921508799998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (468,'Зыбино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,430,1,1,'144','2011-05-02 20:02:55','2011-05-02 20:02:55',55.299056329999999,37.378921508799998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (469,'Богоявление','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'145','2011-05-02 20:02:58','2011-05-02 20:02:58',55.252511654000003,37.180480957000000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (469,'Богоявление','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,431,1,1,'145','2011-05-02 20:02:58','2011-05-02 20:02:58',55.252511654000003,37.180480957000000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (470,'Покровское','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'146','2011-05-02 20:03:01','2011-05-02 20:03:01',55.337687994100001,37.220563888500003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (470,'Покровское','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,432,1,1,'146','2011-05-02 20:03:01','2011-05-02 20:03:01',55.337687994100001,37.220563888500003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (471,'Коротыгино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'147','2011-05-02 20:03:03','2011-05-02 20:03:03',55.312159172800001,37.249789237999998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (471,'Коротыгино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,433,1,1,'147','2011-05-02 20:03:03','2011-05-02 20:03:04',55.312159172800001,37.249789237999998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (472,'Биг ФишЪ www.big-fish.ru','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'www-big-fish-ru','2011-05-02 20:03:06','2011-05-02 20:03:06',58.111988992999997,38.358078002900001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (472,'Биг ФишЪ www.big-fish.ru','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,434,1,1,'www-big-fish-ru','2011-05-02 20:03:06','2011-05-02 20:03:06',58.111988992999997,38.358078002900001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (473,'Пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'148','2011-05-02 20:03:09','2011-05-02 20:03:09',55.421824288400003,36.303291320800000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (473,'Пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,435,1,1,'148','2011-05-02 20:03:09','2011-05-02 20:03:09',55.421824288400003,36.303291320800000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (474,'Бывший карповый пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'149','2011-05-02 20:03:12','2011-05-02 20:03:12',55.212964534999998,35.757751464800002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (474,'Бывший карповый пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,436,1,1,'149','2011-05-02 20:03:12','2011-05-02 20:03:12',55.212964534999998,35.757751464800002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (475,'Карасёвый пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'150','2011-05-02 20:03:15','2011-05-02 20:03:15',55.153373933799998,36.093521118200002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (475,'Карасёвый пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,437,1,1,'150','2011-05-02 20:03:15','2011-05-02 20:03:15',55.153373933799998,36.093521118200002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (476,'База на Вазузе','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'151','2011-05-02 20:03:18','2011-05-02 20:03:18',55.926393927800000,34.559898376500001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (476,'База на Вазузе','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,438,1,1,'151','2011-05-02 20:03:18','2011-05-02 20:03:18',55.926393927800000,34.559898376500001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (477,'Рыболовная База','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'152','2011-05-02 20:03:21','2011-05-02 20:03:21',55.931702401599999,35.419235229500003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (477,'Рыболовная База','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,439,1,1,'152','2011-05-02 20:03:21','2011-05-02 20:03:21',55.931702401599999,35.419235229500003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (478,'\"Зеленая Долина\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'153','2011-05-02 20:03:24','2011-05-02 20:03:24',55.261927661999998,36.445212364200003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (478,'\"Зеленая Долина\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,440,1,1,'153','2011-05-02 20:03:24','2011-05-02 20:03:24',55.261927661999998,36.445212364200003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (480,'Иванисово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'155','2011-05-02 20:03:30','2011-05-02 20:03:30',55.739759531700003,38.454015255000002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (480,'Иванисово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,442,1,1,'155','2011-05-02 20:03:30','2011-05-02 20:03:30',55.739759531700003,38.454015255000002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (481,'Криводанова','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'156','2011-05-02 20:03:33','2011-05-02 20:03:33',57.100825051199998,66.207733154300001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (481,'Криводанова','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,443,1,1,'156','2011-05-02 20:03:33','2011-05-02 20:03:33',57.100825051199998,66.207733154300001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (482,'Татаринцево','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'157','2011-05-02 20:03:35','2011-05-02 20:03:35',55.356282230200001,38.321084976199998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (482,'Татаринцево','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,444,1,1,'157','2011-05-02 20:03:35','2011-05-02 20:03:36',55.356282230200001,38.321084976199998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (483,'пожарный пруд в Храпуново','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'158','2011-05-02 20:03:38','2011-05-02 20:03:38',55.723359164900003,38.357906341600000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (483,'пожарный пруд в Храпуново','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,445,1,1,'158','2011-05-02 20:03:38','2011-05-02 20:03:38',55.723359164900003,38.357906341600000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (484,'пушкино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'159','2011-05-02 20:03:41','2011-05-02 20:03:41',55.450047386500003,38.709640502900001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (484,'пушкино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,446,1,1,'159','2011-05-02 20:03:41','2011-05-02 20:03:41',55.450047386500003,38.709640502900001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (485,'Рыболовно-охотничья база ПРОТОКА','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'160','2011-05-02 20:03:44','2011-05-02 20:03:44',45.864074329600001,48.141231536900001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (485,'Рыболовно-охотничья база ПРОТОКА','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,447,1,1,'160','2011-05-02 20:03:44','2011-05-02 20:03:44',45.864074329600001,48.141231536900001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (486,'пос. им. Воровского','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'161','2011-05-02 20:03:47','2011-05-02 20:03:47',55.734572183499999,38.300571441700001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (486,'пос. им. Воровского','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,448,1,1,'161','2011-05-02 20:03:47','2011-05-02 20:03:47',55.734572183499999,38.300571441700001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (487,'Храпуново','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'162','2011-05-02 20:03:50','2011-05-02 20:03:50',55.726969915300003,38.326406478899997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (487,'Храпуново','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,449,1,1,'162','2011-05-02 20:03:50','2011-05-02 20:03:50',55.726969915300003,38.326406478899997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (488,'Рыбалка на реке Kумийоки','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'k','2011-05-02 20:03:53','2011-05-02 20:03:53',60.530265872999998,26.907920837399999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (488,'Рыбалка на реке Kумийоки','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,450,1,1,'k','2011-05-02 20:03:53','2011-05-02 20:03:53',60.530265872999998,26.907920837399999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (489,'рыбалка в Финляндии','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'163','2011-05-02 20:03:56','2011-05-02 20:03:56',60.460264753899999,26.948089599599999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (489,'рыбалка в Финляндии','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,451,1,1,'163','2011-05-02 20:03:56','2011-05-02 20:03:56',60.460264753899999,26.948089599599999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (490,'ЛОВЛЯ НА СПИННИНГ И «ТРОЛЛИНГ» У БЕРЕГОВОЙ ЛИНИИ МОРЯ.','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'164','2011-05-02 20:03:59','2011-05-02 20:03:59',60.459926217400003,26.954956054699998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (490,'ЛОВЛЯ НА СПИННИНГ И «ТРОЛЛИНГ» У БЕРЕГОВОЙ ЛИНИИ МОРЯ.','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,452,1,1,'164','2011-05-02 20:03:59','2011-05-02 20:03:59',60.459926217400003,26.954956054699998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (491,'тарасово,пруд','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'165','2011-05-02 20:04:02','2011-05-02 20:04:02',55.476469975299999,37.477369308500002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (491,'тарасово,пруд','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,453,1,1,'165','2011-05-02 20:04:02','2011-05-02 20:04:02',55.476469975299999,37.477369308500002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (492,'Брехово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'166','2011-05-02 20:04:05','2011-05-02 20:04:05',55.939442620700000,37.194042205800002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (492,'Брехово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,454,1,1,'166','2011-05-02 20:04:05','2011-05-02 20:04:05',55.939442620700000,37.194042205800002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (493,'Горнево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'167','2011-05-02 20:04:08','2011-05-02 20:04:08',55.197928277400003,37.095766067500001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (493,'Горнево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,455,1,1,'167','2011-05-02 20:04:08','2011-05-02 20:04:08',55.197928277400003,37.095766067500001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (494,'Сенеж дамба','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'168','2011-05-02 20:04:11','2011-05-02 20:04:11',56.216727837199997,36.999206543000000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (494,'Сенеж дамба','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,456,1,1,'168','2011-05-02 20:04:11','2011-05-02 20:04:11',56.216727837199997,36.999206543000000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (495,'Пироговское водохранилище','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'169','2011-05-02 20:04:14','2011-05-02 20:04:14',55.980483184900002,37.676239013699998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (495,'Пироговское водохранилище','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,457,1,1,'169','2011-05-02 20:04:14','2011-05-02 20:04:14',55.980483184900002,37.676239013699998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (496,'Река Юг Вологодская обл.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'170','2011-05-02 20:04:17','2011-05-02 20:04:17',60.109611483899997,46.470794677699999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (496,'Река Юг Вологодская обл.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,458,1,1,'170','2011-05-02 20:04:17','2011-05-02 20:04:17',60.109611483899997,46.470794677699999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (497,'река Пахра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'171','2011-05-02 20:04:19','2011-05-02 20:04:19',55.493637596200003,37.848243713400002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (497,'река Пахра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,459,1,1,'171','2011-05-02 20:04:19','2011-05-02 20:04:20',55.493637596200003,37.848243713400002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (498,'Голубино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'172','2011-05-02 20:04:22','2011-05-02 20:04:22',55.234602855500000,37.801809310899998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (498,'Голубино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,460,1,1,'172','2011-05-02 20:04:22','2011-05-02 20:04:22',55.234602855500000,37.801809310899998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (499,'Пожарный прудик пос. им. Воровского','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'173','2011-05-02 20:04:25','2011-05-02 20:04:25',55.728995076200000,38.299326896700002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (499,'Пожарный прудик пос. им. Воровского','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,461,1,1,'173','2011-05-02 20:04:25','2011-05-02 20:04:25',55.728995076200000,38.299326896700002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (500,'Рыболов-спортсмен','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'174','2011-05-02 20:04:28','2011-05-02 20:04:28',55.853901971299997,38.443855047200003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (500,'Рыболов-спортсмен','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,462,1,1,'174','2011-05-02 20:04:28','2011-05-02 20:04:28',55.853901971299997,38.443855047200003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (501,'База отдыха \"Ока\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'175','2011-05-02 20:04:31','2011-05-02 20:04:31',54.611646770000000,41.040973663300001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (501,'База отдыха \"Ока\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,463,1,1,'175','2011-05-02 20:04:31','2011-05-02 20:04:31',54.611646770000000,41.040973663300001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (503,'река Отра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'177','2011-05-02 20:04:37','2011-05-02 20:04:37',55.355696718099999,38.310699462899997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (503,'река Отра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,465,1,1,'177','2011-05-02 20:04:37','2011-05-02 20:04:37',55.355696718099999,38.310699462899997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (504,'V?ike-Kalaj?rv','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'v-ike-kalaj-rv','2011-05-02 20:04:40','2011-05-02 20:04:40',59.196790372899997,25.515747070300002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (504,'V?ike-Kalaj?rv','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,466,1,1,'v-ike-kalaj-rv','2011-05-02 20:04:40','2011-05-02 20:04:40',59.196790372899997,25.515747070300002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (505,'СВЕТЛЫЕ ГОРЫ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'178','2011-05-02 20:04:43','2011-05-02 20:04:43',55.898108287600003,37.294464111300002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (505,'СВЕТЛЫЕ ГОРЫ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,467,1,1,'178','2011-05-02 20:04:43','2011-05-02 20:04:43',55.898108287600003,37.294464111300002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (506,'ЛЬВОВСКИЕ ПРУДЫ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'179','2011-05-02 20:04:46','2011-05-02 20:04:46',56.102185547099999,35.727195739700001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (506,'ЛЬВОВСКИЕ ПРУДЫ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,468,1,1,'179','2011-05-02 20:04:46','2011-05-02 20:04:46',56.102185547099999,35.727195739700001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (507,'Брехово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'180','2011-05-02 20:04:49','2011-05-02 20:04:49',55.635942079599999,36.845226287800003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (507,'Брехово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,469,1,1,'180','2011-05-02 20:04:49','2011-05-02 20:04:49',55.635942079599999,36.845226287800003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (508,'Истринское водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'181','2011-05-02 20:04:52','2011-05-02 20:04:52',56.016489927300000,36.818801164600004,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (508,'Истринское водохранилище','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,470,1,1,'181','2011-05-02 20:04:52','2011-05-02 20:04:52',56.016489927300000,36.818801164600004,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (509,'Фуньково','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'182','2011-05-02 20:04:55','2011-05-02 20:04:55',55.786709035599998,36.862049102800000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (509,'Фуньково','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,471,1,1,'182','2011-05-02 20:04:55','2011-05-02 20:04:55',55.786709035599998,36.862049102800000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (510,'Зевалово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'183','2011-05-02 20:04:58','2011-05-02 20:04:58',55.170142798400001,38.404598236100000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (510,'Зевалово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,472,1,1,'183','2011-05-02 20:04:58','2011-05-02 20:04:58',55.170142798400001,38.404598236100000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (512,'голохвастово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'185','2011-05-02 20:05:03','2011-05-02 20:05:03',55.382036190299999,36.954574585000003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (512,'голохвастово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,474,1,1,'185','2011-05-02 20:05:03','2011-05-02 20:05:03',55.382036190299999,36.954574585000003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (513,'хованское.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'186','2011-05-02 20:05:06','2011-05-02 20:05:06',55.596825782000003,37.457370758099998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (513,'хованское.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,475,1,1,'186','2011-05-02 20:05:06','2011-05-02 20:05:06',55.596825782000003,37.457370758099998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (514,'суханово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'187','2011-05-02 20:05:09','2011-05-02 20:05:09',55.522703354500003,37.656755447400002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (514,'суханово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,476,1,1,'187','2011-05-02 20:05:09','2011-05-02 20:05:10',55.522703354500003,37.656755447400002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (515,'Поддубье','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'188','2011-05-02 20:05:12','2011-05-02 20:05:12',55.321331517899999,38.425369262700002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (515,'Поддубье','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,477,1,1,'188','2011-05-02 20:05:12','2011-05-02 20:05:12',55.321331517899999,38.425369262700002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (516,'лесное','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'189','2011-05-02 20:05:15','2011-05-02 20:05:15',55.639672326499998,38.311085701000003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (516,'лесное','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,478,1,1,'189','2011-05-02 20:05:15','2011-05-02 20:05:15',55.639672326499998,38.311085701000003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (517,'Река Рожайка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'190','2011-05-02 20:05:18','2011-05-02 20:05:18',55.394468180799997,37.729969024699997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (517,'Река Рожайка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,479,1,1,'190','2011-05-02 20:05:18','2011-05-02 20:05:18',55.394468180799997,37.729969024699997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (518,'Бисерово озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'191','2011-05-02 20:05:21','2011-05-02 20:05:21',55.761798673400001,38.111400604200000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (518,'Бисерово озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,480,1,1,'191','2011-05-02 20:05:21','2011-05-02 20:05:21',55.761798673400001,38.111400604200000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (519,'Шипулино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'192','2011-05-02 20:05:24','2011-05-02 20:05:24',56.328340210299999,36.521644592299999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (519,'Шипулино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,481,1,1,'192','2011-05-02 20:05:24','2011-05-02 20:05:24',56.328340210299999,36.521644592299999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (520,'Медвежьи озера','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'193','2011-05-02 20:05:27','2011-05-02 20:05:27',55.865294208300000,37.996902465799998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (520,'Медвежьи озера','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,482,1,1,'193','2011-05-02 20:05:27','2011-05-02 20:05:27',55.865294208300000,37.996902465799998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (521,'Никольский яр','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'194','2011-05-02 20:05:30','2011-05-02 20:05:30',47.792688413400001,46.339302062999998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (521,'Никольский яр','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,483,1,1,'194','2011-05-02 20:05:30','2011-05-02 20:05:30',47.792688413400001,46.339302062999998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (522,'ильино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'195','2011-05-02 20:05:33','2011-05-02 20:05:33',55.176711132800001,37.039375305199997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (522,'ильино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,484,1,1,'195','2011-05-02 20:05:33','2011-05-02 20:05:33',55.176711132800001,37.039375305199997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (523,'салтыково','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'196','2011-05-02 20:05:36','2011-05-02 20:05:36',55.388862080700001,38.119812011699999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (523,'салтыково','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,485,1,1,'196','2011-05-02 20:05:36','2011-05-02 20:05:36',55.388862080700001,38.119812011699999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (524,'Щеглятьево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'197','2011-05-02 20:05:39','2011-05-02 20:05:39',55.163573381699997,37.689285278299998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (524,'Щеглятьево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,486,1,1,'197','2011-05-02 20:05:39','2011-05-02 20:05:39',55.163573381699997,37.689285278299998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (525,'Бутовские пруды','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'198','2011-05-02 20:05:42','2011-05-02 20:05:42',55.530998710900001,37.507903575900002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (525,'Бутовские пруды','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,487,1,1,'198','2011-05-02 20:05:42','2011-05-02 20:05:42',55.530998710900001,37.507903575900002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (526,'Супонево','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'199','2011-05-02 20:05:45','2011-05-02 20:05:45',55.753056964199999,36.872391700700000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (526,'Супонево','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,488,1,1,'199','2011-05-02 20:05:45','2011-05-02 20:05:45',55.753056964199999,36.872391700700000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (527,'Лесниковский карьер','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'200','2011-05-02 20:05:48','2011-05-02 20:05:48',57.089308122600002,40.420761108400001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (527,'Лесниковский карьер','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,489,1,1,'200','2011-05-02 20:05:48','2011-05-02 20:05:48',57.089308122600002,40.420761108400001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (528,'Щуково','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'201','2011-05-02 20:05:51','2011-05-02 20:05:51',57.056136177699997,40.188846588099999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (528,'Щуково','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,490,1,1,'201','2011-05-02 20:05:51','2011-05-02 20:05:51',57.056136177699997,40.188846588099999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (529,'Булатниковский пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'202','2011-05-02 20:05:53','2011-05-02 20:05:53',55.554078041799997,37.655296325700000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (529,'Булатниковский пруд','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,491,1,1,'202','2011-05-02 20:05:53','2011-05-02 20:05:53',55.554078041799997,37.655296325700000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (530,'Лесное озеро Луковое','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'203','2011-05-02 20:05:56','2011-05-02 20:05:56',55.929202124600003,38.540039062500000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (530,'Лесное озеро Луковое','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,492,1,1,'203','2011-05-02 20:05:56','2011-05-02 20:05:56',55.929202124600003,38.540039062500000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (531,'Песчанный карьер Аборино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'204','2011-05-02 20:05:59','2011-05-02 20:05:59',55.857201969199998,38.256454467799998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (531,'Песчанный карьер Аборино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,493,1,1,'204','2011-05-02 20:05:59','2011-05-02 20:05:59',55.857201969199998,38.256454467799998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (532,'р. Москва (Строгино)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'205','2011-05-02 20:06:02','2011-05-02 20:06:02',55.804706032100000,37.445354461699999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (532,'р. Москва (Строгино)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,494,1,1,'205','2011-05-02 20:06:02','2011-05-02 20:06:02',55.804706032100000,37.445354461699999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (533,'Марьино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'206','2011-05-02 20:06:05','2011-05-02 20:06:05',55.640931810200001,37.746577262899997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (533,'Марьино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,495,1,1,'206','2011-05-02 20:06:05','2011-05-02 20:06:05',55.640931810200001,37.746577262899997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (534,'bullupe (pri4al torpednix katerov biv6ii )','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'bullupe-pri4al-torpednix-katerov-biv6ii','2011-05-02 20:06:08','2011-05-02 20:06:08',57.009804514300001,23.975987434400000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (534,'bullupe (pri4al torpednix katerov biv6ii )','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,496,1,1,'bullupe-pri4al-torpednix-katerov-biv6ii','2011-05-02 20:06:08','2011-05-02 20:06:08',57.009804514300001,23.975987434400000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (535,'bullupe (okolo mosta)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'bullupe-okolo-mosta','2011-05-02 20:06:11','2011-05-02 20:06:11',57.038488383800001,24.038944244400000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (535,'bullupe (okolo mosta)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,497,1,1,'bullupe-okolo-mosta','2011-05-02 20:06:11','2011-05-02 20:06:11',57.038488383800001,24.038944244400000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (536,'ziemelupe','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'ziemelupe','2011-05-02 20:06:14','2011-05-02 20:06:14',57.027687814499998,24.009504318200001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (536,'ziemelupe','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,498,1,1,'ziemelupe','2011-05-02 20:06:14','2011-05-02 20:06:14',57.027687814499998,24.009504318200001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (537,'ozer4o','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'ozer4o','2011-05-02 20:06:17','2011-05-02 20:06:17',57.044091766599998,24.013710022000001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (537,'ozer4o','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,499,1,1,'ozer4o','2011-05-02 20:06:17','2011-05-02 20:06:17',57.044091766599998,24.013710022000001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (538,'шальдиха','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'207','2011-05-02 20:06:20','2011-05-02 20:06:20',60.141504734800002,32.365722656199999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (538,'шальдиха','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,500,1,1,'207','2011-05-02 20:06:20','2011-05-02 20:06:20',60.141504734800002,32.365722656199999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (539,'Пруд в Губеном углу','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'208','2011-05-02 20:06:23','2011-05-02 20:06:23',56.820846559200000,37.205114364600000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (539,'Пруд в Губеном углу','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,501,1,1,'208','2011-05-02 20:06:23','2011-05-02 20:06:23',56.820846559200000,37.205114364600000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (540,'База \"Главкосмос\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'209','2011-05-02 20:06:25','2011-05-02 20:06:25',58.650512507300000,37.275238037100003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (540,'База \"Главкосмос\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,502,1,1,'209','2011-05-02 20:06:25','2011-05-02 20:06:26',58.650512507300000,37.275238037100003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (541,'марковские карьеры','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'210','2011-05-02 20:06:28','2011-05-02 20:06:28',57.040729838399997,40.486335754400002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (541,'марковские карьеры','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,503,1,1,'210','2011-05-02 20:06:28','2011-05-02 20:06:28',57.040729838399997,40.486335754400002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (542,'Марковские болота','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'211','2011-05-02 20:06:31','2011-05-02 20:06:31',57.023448463100003,40.488395690899999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (542,'Марковские болота','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,504,1,1,'211','2011-05-02 20:06:31','2011-05-02 20:06:31',57.023448463100003,40.488395690899999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (543,'оз.Аткуль','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'212','2011-05-02 20:06:34','2011-05-02 20:06:34',54.911356424200001,61.921691894500000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (543,'оз.Аткуль','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,505,1,1,'212','2011-05-02 20:06:34','2011-05-02 20:06:34',54.911356424200001,61.921691894500000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (544,'Лотошинский рыбхоз','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'213','2011-05-02 20:06:37','2011-05-02 20:06:37',56.133306912400002,35.584716796899997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (544,'Лотошинский рыбхоз','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,506,1,1,'213','2011-05-02 20:06:37','2011-05-02 20:06:37',56.133306912400002,35.584716796899997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (545,'Золотой сазан','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'214','2011-05-02 20:06:40','2011-05-02 20:06:40',55.385936843400003,37.617530822799999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (545,'Золотой сазан','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,507,1,1,'214','2011-05-02 20:06:40','2011-05-02 20:06:40',55.385936843400003,37.617530822799999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (546,'Кистенево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'215','2011-05-02 20:06:43','2011-05-02 20:06:43',54.255498091699998,41.546516418499998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (546,'Кистенево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,508,1,1,'215','2011-05-02 20:06:43','2011-05-02 20:06:43',54.255498091699998,41.546516418499998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (547,'п Граждановка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'216','2011-05-02 20:06:46','2011-05-02 20:06:46',52.976994605599998,42.274575233500002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (547,'п Граждановка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,509,1,1,'216','2011-05-02 20:06:46','2011-05-02 20:06:46',52.976994605599998,42.274575233500002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (548,'пруды п. Озерный частный','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'217','2011-05-02 20:06:49','2011-05-02 20:06:49',52.877289134999998,42.192091941800001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (548,'пруды п. Озерный частный','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,510,1,1,'217','2011-05-02 20:06:49','2011-05-02 20:06:49',52.877289134999998,42.192091941800001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (549,'Пруды п.Озерный','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'218','2011-05-02 20:06:52','2011-05-02 20:06:52',52.861823813299999,42.156429290799998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (549,'Пруды п.Озерный','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,511,1,1,'218','2011-05-02 20:06:52','2011-05-02 20:06:52',52.861823813299999,42.156429290799998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (550,'Рыбалка у Бородина','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'219','2011-05-02 20:06:55','2011-05-02 20:06:55',55.550630964699998,37.770996093800001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (550,'Рыбалка у Бородина','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,512,1,1,'219','2011-05-02 20:06:55','2011-05-02 20:06:55',55.550630964699998,37.770996093800001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (551,'Колча','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'220','2011-05-02 20:06:58','2011-05-02 20:06:58',55.206598083300001,40.103702545200001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (551,'Колча','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,513,1,1,'220','2011-05-02 20:06:58','2011-05-02 20:06:58',55.206598083300001,40.103702545200001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (552,'Сахалин','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'221','2011-05-02 20:07:01','2011-05-02 20:07:01',51.944264879000002,142.734375000000000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (552,'Сахалин','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,514,1,1,'221','2011-05-02 20:07:01','2011-05-02 20:07:01',51.944264879000002,142.734375000000000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (553,'Пруд Печерники','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'222','2011-05-02 20:07:04','2011-05-02 20:07:04',54.649207070000003,39.218444824199999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (553,'Пруд Печерники','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,515,1,1,'222','2011-05-02 20:07:04','2011-05-02 20:07:04',54.649207070000003,39.218444824199999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (554,'Рыб хоз','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'223','2011-05-02 20:07:07','2011-05-02 20:07:07',54.936610156599997,38.895721435500000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (554,'Рыб хоз','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,516,1,1,'223','2011-05-02 20:07:07','2011-05-02 20:07:07',54.936610156599997,38.895721435500000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (555,'Рыбхоз \"Осенка\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'224','2011-05-02 20:07:10','2011-05-02 20:07:10',55.176907185899999,38.530769348100002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (555,'Рыбхоз \"Осенка\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,517,1,1,'224','2011-05-02 20:07:10','2011-05-02 20:07:10',55.176907185899999,38.530769348100002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (556,'Прудно. Хатунь','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'225','2011-05-02 20:07:12','2011-05-02 20:07:12',55.007698986000001,37.817516326899998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (556,'Прудно. Хатунь','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,518,1,1,'225','2011-05-02 20:07:12','2011-05-02 20:07:12',55.007698986000001,37.817516326899998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (557,'База отдыха \"Колвица\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'226','2011-05-02 20:07:15','2011-05-02 20:07:15',67.086421938100003,33.207206726099997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (557,'База отдыха \"Колвица\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,519,1,1,'226','2011-05-02 20:07:15','2011-05-02 20:07:15',67.086421938100003,33.207206726099997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (558,'По щучьему велению','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'227','2011-05-02 20:07:18','2011-05-02 20:07:18',48.283192895500001,46.933593750000000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (558,'По щучьему велению','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,520,1,1,'227','2011-05-02 20:07:18','2011-05-02 20:07:18',48.283192895500001,46.933593750000000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (559,'Рыбалка на Кольском полуострове. База отдыха \"Вува\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'228','2011-05-02 20:07:21','2011-05-02 20:07:21',68.087787198100003,30.801029205300001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (559,'Рыбалка на Кольском полуострове. База отдыха \"Вува\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,521,1,1,'228','2011-05-02 20:07:21','2011-05-02 20:07:21',68.087787198100003,30.801029205300001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (560,'Арсенал','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'229','2011-05-02 20:07:24','2011-05-02 20:07:24',55.207479652700002,35.677928924600003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (560,'Арсенал','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,522,1,1,'229','2011-05-02 20:07:24','2011-05-02 20:07:24',55.207479652700002,35.677928924600003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (561,'Саби','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'230','2011-05-02 20:07:27','2011-05-02 20:07:27',55.574851201300000,37.814769744899998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (561,'Саби','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,523,1,1,'230','2011-05-02 20:07:27','2011-05-02 20:07:27',55.574851201300000,37.814769744899998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (562,'Касимов','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'231','2011-05-02 20:07:30','2011-05-02 20:07:30',54.950019755200003,41.142253875700000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (562,'Касимов','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,524,1,1,'231','2011-05-02 20:07:30','2011-05-02 20:07:30',54.950019755200003,41.142253875700000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (564,'Десна ниже Расторопово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'233','2011-05-02 20:07:36','2011-05-02 20:07:36',55.489844828000003,37.456684112500000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (564,'Десна ниже Расторопово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,526,1,1,'233','2011-05-02 20:07:36','2011-05-02 20:07:36',55.489844828000003,37.456684112500000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (567,'ЧИСТЫЕ РОДНИКИ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'236','2011-05-02 20:07:45','2011-05-02 20:07:45',55.896437203200001,37.151416540100001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (567,'ЧИСТЫЕ РОДНИКИ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,529,1,1,'236','2011-05-02 20:07:45','2011-05-02 20:07:45',55.896437203200001,37.151416540100001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (569,'Бурсиловский порог (Амиакопровод)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'238','2011-05-02 20:07:51','2011-05-02 20:07:51',48.121814548000003,35.067329406699997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (569,'Бурсиловский порог (Амиакопровод)','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,531,1,1,'238','2011-05-02 20:07:51','2011-05-02 20:07:51',48.121814548000003,35.067329406699997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (570,'Залив','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'239','2011-05-02 20:07:54','2011-05-02 20:07:54',48.095967461900003,35.019264221199997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (570,'Залив','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,532,1,1,'239','2011-05-02 20:07:54','2011-05-02 20:07:54',48.095967461900003,35.019264221199997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (571,'Остров Таволжан','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'240','2011-05-02 20:07:56','2011-05-02 20:07:56',48.076759992400000,35.081233978299998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (571,'Остров Таволжан','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,533,1,1,'240','2011-05-02 20:07:56','2011-05-02 20:07:56',48.076759992400000,35.081233978299998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (572,'Раскаты волги','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'241','2011-05-02 20:08:00','2011-05-02 20:08:00',45.854151738699997,48.398895263699998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (572,'Раскаты волги','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,534,1,1,'241','2011-05-02 20:08:00','2011-05-02 20:08:00',45.854151738699997,48.398895263699998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (573,'Рыбалка в Ялте','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'242','2011-05-02 20:08:02','2011-05-02 20:08:02',44.490597065700001,34.163875579799999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (573,'Рыбалка в Ялте','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,535,1,1,'242','2011-05-02 20:08:02','2011-05-02 20:08:02',44.490597065700001,34.163875579799999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (574,'рыбалка в Мозамбике','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'243','2011-05-02 20:08:05','2011-05-02 20:08:05',-25.978464447200000,32.595781087900001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (574,'рыбалка в Мозамбике','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,536,1,1,'243','2011-05-02 20:08:05','2011-05-02 20:08:05',-25.978464447200000,32.595781087900001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (575,'Борисовские пруды','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'244','2011-05-02 20:08:08','2011-05-02 20:08:08',55.631775410000003,37.713489532499999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (575,'Борисовские пруды','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,537,1,1,'244','2011-05-02 20:08:08','2011-05-02 20:08:08',55.631775410000003,37.713489532499999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (576,'Канал им. Москвы','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'245','2011-05-02 20:08:11','2011-05-02 20:08:11',56.117998193900000,37.608432769799997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (576,'Канал им. Москвы','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,538,1,1,'245','2011-05-02 20:08:11','2011-05-02 20:08:11',56.117998193900000,37.608432769799997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (577,'Torsholma','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'torsholma','2011-05-02 20:08:14','2011-05-02 20:08:14',60.361431791599998,21.075897216800001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (577,'Torsholma','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,539,1,1,'torsholma','2011-05-02 20:08:14','2011-05-02 20:08:14',60.361431791599998,21.075897216800001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (578,'Клинтане.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'246','2011-05-02 20:08:17','2011-05-02 20:08:17',56.600799058500002,25.662431716899999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (578,'Клинтане.','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,540,1,1,'246','2011-05-02 20:08:17','2011-05-02 20:08:17',56.600799058500002,25.662431716899999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (579,'Кресты','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'247','2011-05-02 20:08:20','2011-05-02 20:08:20',45.937728505899997,38.080565929400002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (579,'Кресты','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,541,1,1,'247','2011-05-02 20:08:20','2011-05-02 20:08:20',45.937728505899997,38.080565929400002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (580,'Совхоз Фрязево','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'248','2011-05-02 20:08:23','2011-05-02 20:08:23',55.727375922599997,38.492231369000002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (580,'Совхоз Фрязево','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,542,1,1,'248','2011-05-02 20:08:23','2011-05-02 20:08:23',55.727375922599997,38.492231369000002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (581,'Аятский пруд','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'249','2011-05-02 20:08:26','2011-05-02 20:08:26',57.373938418700000,60.534667968800001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (581,'Аятский пруд','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,543,1,1,'249','2011-05-02 20:08:26','2011-05-02 20:08:26',57.373938418700000,60.534667968800001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (585,'м-н \"Мир рыболова\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'253','2011-05-02 20:08:38','2011-05-02 20:08:38',56.319868721500001,43.946170806900000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (585,'м-н \"Мир рыболова\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,547,1,1,'253','2011-05-02 20:08:38','2011-05-02 20:08:38',56.319868721500001,43.946170806900000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (586,'м-н \"РыболовСпортЦентр\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'254','2011-05-02 20:08:41','2011-05-02 20:08:41',56.299634248799997,43.985309600800001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (586,'м-н \"РыболовСпортЦентр\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,548,1,1,'254','2011-05-02 20:08:41','2011-05-02 20:08:41',56.299634248799997,43.985309600800001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (587,'м-н \"Рыболов\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'255','2011-05-02 20:08:44','2011-05-02 20:08:44',56.276911260500000,43.980331420900001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (587,'м-н \"Рыболов\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,549,1,1,'255','2011-05-02 20:08:44','2011-05-02 20:08:44',56.276911260500000,43.980331420900001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (588,'м-н \"Специалист\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'256','2011-05-02 20:08:47','2011-05-02 20:08:47',56.310633609500002,44.021487235999999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (588,'м-н \"Специалист\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,550,1,1,'256','2011-05-02 20:08:47','2011-05-02 20:08:47',56.310633609500002,44.021487235999999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (589,'м-н \"Мир рыболова\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'257','2011-05-02 20:08:50','2011-05-02 20:08:50',56.317893356900001,44.023118019100004,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (589,'м-н \"Мир рыболова\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,551,1,1,'257','2011-05-02 20:08:50','2011-05-02 20:08:50',56.317893356900001,44.023118019100004,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (590,'Волжанка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'258','2011-05-02 20:08:53','2011-05-02 20:08:53',56.782545147000000,36.289730071999998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (590,'Волжанка','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,552,1,1,'258','2011-05-02 20:08:53','2011-05-02 20:08:53',56.782545147000000,36.289730071999998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (591,'м-н \"Рыбалка\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'259','2011-05-02 20:08:56','2011-05-02 20:08:56',56.329577461400000,43.992819786100000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (591,'м-н \"Рыбалка\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,553,1,1,'259','2011-05-02 20:08:56','2011-05-02 20:08:56',56.329577461400000,43.992819786100000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (592,'м-н \"Поплавок\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'260','2011-05-02 20:08:59','2011-05-02 20:08:59',56.322438922300002,44.035177230800002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (592,'м-н \"Поплавок\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,554,1,1,'260','2011-05-02 20:08:59','2011-05-02 20:08:59',56.322438922300002,44.035177230800002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (596,' м-н \"Дельта\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'264','2011-05-02 20:09:11','2011-05-02 20:09:11',56.327983303400003,43.984665870699999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (596,' м-н \"Дельта\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,558,1,1,'264','2011-05-02 20:09:11','2011-05-02 20:09:11',56.327983303400003,43.984665870699999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (598,'м-н «Охота на рыбалку»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'266','2011-05-02 20:09:16','2011-05-02 20:09:16',56.317798156099997,43.943896293599998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (598,'м-н «Охота на рыбалку»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,560,1,1,'266','2011-05-02 20:09:16','2011-05-02 20:09:17',56.317798156099997,43.943896293599998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (599,'м-н \"СпортКультУра\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'267','2011-05-02 20:09:19','2011-05-02 20:09:19',56.249311117300003,43.854761123700001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (599,'м-н \"СпортКультУра\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,561,1,1,'267','2011-05-02 20:09:19','2011-05-02 20:09:19',56.249311117300003,43.854761123700001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (600,'м-н \"СпортМаг\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'268','2011-05-02 20:09:22','2011-05-02 20:09:22',56.236147564900001,43.868150711100000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (600,'м-н \"СпортМаг\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,562,1,1,'268','2011-05-02 20:09:22','2011-05-02 20:09:22',56.236147564900001,43.868150711100000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (601,'м-н \"Охотник-Рыболов\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'269','2011-05-02 20:09:25','2011-05-02 20:09:25',56.236576882500003,43.866949081400001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (601,'м-н \"Охотник-Рыболов\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,563,1,1,'269','2011-05-02 20:09:25','2011-05-02 20:09:25',56.236576882500003,43.866949081400001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (602,'м-н \"Семейный\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'270','2011-05-02 20:09:28','2011-05-02 20:09:28',56.259609871899997,43.856735229500003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (602,'м-н \"Семейный\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,564,1,1,'270','2011-05-02 20:09:28','2011-05-02 20:09:28',56.259609871899997,43.856735229500003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (603,'\"Дом Рыбака\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'271','2011-05-02 20:09:31','2011-05-02 20:09:31',56.247165194700003,43.865404128999998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (603,'\"Дом Рыбака\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,565,1,1,'271','2011-05-02 20:09:31','2011-05-02 20:09:31',56.247165194700003,43.865404128999998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (604,'м-н \"Мир рыболова\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'272','2011-05-02 20:09:34','2011-05-02 20:09:34',56.265640031899999,43.913340568499997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (604,'м-н \"Мир рыболова\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,566,1,1,'272','2011-05-02 20:09:34','2011-05-02 20:09:34',56.265640031899999,43.913340568499997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (605,'м-н \"Снаряжение\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'273','2011-05-02 20:09:37','2011-05-02 20:09:37',56.265449369499997,43.913683891300003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (605,'м-н \"Снаряжение\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,567,1,1,'273','2011-05-02 20:09:37','2011-05-02 20:09:37',56.265449369499997,43.913683891300003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (608,'ПОДСКАЖИТЕ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'276','2011-05-02 20:09:46','2011-05-02 20:09:46',56.235813647800001,36.948738098100002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (608,'ПОДСКАЖИТЕ','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,570,1,1,'276','2011-05-02 20:09:46','2011-05-02 20:09:46',56.235813647800001,36.948738098100002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (609,'Сенеж','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'277','2011-05-02 20:09:48','2011-05-02 20:09:48',56.211191173800003,36.989078521700002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (609,'Сенеж','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,571,1,1,'277','2011-05-02 20:09:48','2011-05-02 20:09:48',56.211191173800003,36.989078521700002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (611,'РЫБНАДЗОР','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'279','2011-05-02 20:09:54','2011-05-02 20:09:54',55.600244560800000,37.457542419399999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (611,'РЫБНАДЗОР','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,573,1,1,'279','2011-05-02 20:09:54','2011-05-02 20:09:54',55.600244560800000,37.457542419399999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (612,'Соколово','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'280','2011-05-02 20:09:57','2011-05-02 20:09:57',53.058755128999998,25.207443237300001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (612,'Соколово','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,574,1,1,'280','2011-05-02 20:09:57','2011-05-02 20:09:57',53.058755128999998,25.207443237300001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (613,'Счастье','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'281','2011-05-02 20:10:00','2011-05-02 20:10:00',48.729813169400003,39.178276062000002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (613,'Счастье','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,575,1,1,'281','2011-05-02 20:10:00','2011-05-02 20:10:00',48.729813169400003,39.178276062000002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (614,'Щекино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'282','2011-05-02 20:10:03','2011-05-02 20:10:03',51.547829565999997,34.479217529300001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (614,'Щекино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,576,1,1,'282','2011-05-02 20:10:03','2011-05-02 20:10:03',51.547829565999997,34.479217529300001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (615,'Стремоуховка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'283','2011-05-02 20:10:06','2011-05-02 20:10:06',51.598400712400000,35.080032348600000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (615,'Стремоуховка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,577,1,1,'283','2011-05-02 20:10:06','2011-05-02 20:10:06',51.598400712400000,35.080032348600000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (616,'Уборы','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'284','2011-05-02 20:10:09','2011-05-02 20:10:09',55.723696327699997,37.108082771299998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (616,'Уборы','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,578,1,1,'284','2011-05-02 20:10:09','2011-05-02 20:10:09',55.723696327699997,37.108082771299998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (617,'Шебанцево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'285','2011-05-02 20:10:12','2011-05-02 20:10:12',55.264165164399998,37.750815153100000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (617,'Шебанцево','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,579,1,1,'285','2011-05-02 20:10:12','2011-05-02 20:10:12',55.264165164399998,37.750815153100000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (618,'«Чаша»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'286','2011-05-02 20:10:15','2011-05-02 20:10:15',55.537373893999998,37.135677337600001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (618,'«Чаша»','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,580,1,1,'286','2011-05-02 20:10:15','2011-05-02 20:10:15',55.537373893999998,37.135677337600001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (619,'Green canyon','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'green-canyon','2011-05-02 20:10:18','2011-05-02 20:10:18',36.900729348399999,31.577796935999999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (619,'Green canyon','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,581,1,1,'green-canyon','2011-05-02 20:10:18','2011-05-02 20:10:18',36.900729348399999,31.577796935999999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (620,'Озеро Горелое','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'287','2011-05-02 20:10:21','2011-05-02 20:10:21',56.239248084200000,37.847557067899999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (620,'Озеро Горелое','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,582,1,1,'287','2011-05-02 20:10:21','2011-05-02 20:10:21',56.239248084200000,37.847557067899999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (621,'Песчанный карьер г. Электроугли МО','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'288','2011-05-02 20:10:24','2011-05-02 20:10:24',55.773676529500001,38.186416626000003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (621,'Песчанный карьер г. Электроугли МО','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,583,1,1,'288','2011-05-02 20:10:24','2011-05-02 20:10:24',55.773676529500001,38.186416626000003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (622,'Морозовский пруд','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'289','2011-05-02 20:10:27','2011-05-02 20:10:27',56.237435503400000,38.065567016599999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (622,'Морозовский пруд','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,584,1,1,'289','2011-05-02 20:10:27','2011-05-02 20:10:27',56.237435503400000,38.065567016599999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (623,'Яковлевское','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'290','2011-05-02 20:10:30','2011-05-02 20:10:30',55.444205751500000,37.962570190400001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (623,'Яковлевское','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,585,1,1,'290','2011-05-02 20:10:30','2011-05-02 20:10:30',55.444205751500000,37.962570190400001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (624,'р. Малога','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'291','2011-05-02 20:10:33','2011-05-02 20:10:33',57.811205972899998,35.988292694099997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (624,'р. Малога','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,586,1,1,'291','2011-05-02 20:10:33','2011-05-02 20:10:33',57.811205972899998,35.988292694099997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (625,'р. Малога','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'292','2011-05-02 20:10:35','2011-05-02 20:10:35',57.933763241500003,36.363458633400001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (625,'р. Малога','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,587,1,1,'292','2011-05-02 20:10:35','2011-05-02 20:10:36',57.933763241500003,36.363458633400001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (626,'Капыстичи','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'293','2011-05-02 20:10:38','2011-05-02 20:10:38',51.680858005099999,34.825973510700003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (626,'Капыстичи','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,588,1,1,'293','2011-05-02 20:10:38','2011-05-02 20:10:38',51.680858005099999,34.825973510700003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (627,'Лыткино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'294','2011-05-02 20:10:41','2011-05-02 20:10:41',56.022324498300001,36.993713378899997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (627,'Лыткино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,589,1,1,'294','2011-05-02 20:10:41','2011-05-02 20:10:41',56.022324498300001,36.993713378899997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (628,'м-н \"Серебрянный ручей\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'295','2011-05-02 20:10:44','2011-05-02 20:10:44',56.264901209599998,43.912696838400002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (628,'м-н \"Серебрянный ручей\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,590,1,1,'295','2011-05-02 20:10:44','2011-05-02 20:10:44',56.264901209599998,43.912696838400002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (629,'г.Лысково, Волга','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'296','2011-05-02 20:10:47','2011-05-02 20:10:47',56.062165487500003,45.041284561200001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (629,'г.Лысково, Волга','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,591,1,1,'296','2011-05-02 20:10:47','2011-05-02 20:10:47',56.062165487500003,45.041284561200001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (630,'Озеро Охотничье','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'297','2011-05-02 20:10:50','2011-05-02 20:10:50',60.531279271199999,29.902038574199999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (630,'Озеро Охотничье','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,592,1,1,'297','2011-05-02 20:10:50','2011-05-02 20:10:50',60.531279271199999,29.902038574199999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (631,'ООО \"РОСС\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'298','2011-05-02 20:10:53','2011-05-02 20:10:53',56.425295020999997,37.995185852100001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (631,'ООО \"РОСС\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,593,1,1,'298','2011-05-02 20:10:53','2011-05-02 20:10:53',56.425295020999997,37.995185852100001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (632,'Яузское водохран. База','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'299','2011-05-02 20:10:56','2011-05-02 20:10:56',55.885036049299998,35.112476348900003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (632,'Яузское водохран. База','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,594,1,1,'299','2011-05-02 20:10:56','2011-05-02 20:10:56',55.885036049299998,35.112476348900003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (633,'оз.Кафтино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'300','2011-05-02 20:10:59','2011-05-02 20:10:59',57.968787511300000,34.230308532700001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (633,'оз.Кафтино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,595,1,1,'300','2011-05-02 20:10:59','2011-05-02 20:10:59',57.968787511300000,34.230308532700001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (634,'Река Ока','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'301','2011-05-02 20:11:02','2011-05-02 20:11:02',54.814733252400003,37.237472534200002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (634,'Река Ока','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,596,1,1,'301','2011-05-02 20:11:02','2011-05-02 20:11:02',54.814733252400003,37.237472534200002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (635,'Река Ока','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'302','2011-05-02 20:11:05','2011-05-02 20:11:05',54.863962939899999,37.521743774400001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (635,'Река Ока','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,597,1,1,'302','2011-05-02 20:11:05','2011-05-02 20:11:05',54.863962939899999,37.521743774400001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (636,'Сычевское водохранилище','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'303','2011-05-02 20:11:08','2011-05-02 20:11:08',55.979177017200001,36.230163574199999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (636,'Сычевское водохранилище','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,598,1,1,'303','2011-05-02 20:11:08','2011-05-02 20:11:08',55.979177017200001,36.230163574199999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (637,'Река Пахра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'304','2011-05-02 20:11:11','2011-05-02 20:11:11',55.484580541400000,37.817870378499997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (637,'Река Пахра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,599,1,1,'304','2011-05-02 20:11:11','2011-05-02 20:11:11',55.484580541400000,37.817870378499997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (638,'Алешинский пруд','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'305','2011-05-02 20:11:14','2011-05-02 20:11:14',56.421497518599999,37.169837951700003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (638,'Алешинский пруд','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,600,1,1,'305','2011-05-02 20:11:14','2011-05-02 20:11:14',56.421497518599999,37.169837951700003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (639,'Каба','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'306','2011-05-02 20:11:17','2011-05-02 20:11:17',64.878395817200001,29.980316162099999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (639,'Каба','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,601,1,1,'306','2011-05-02 20:11:17','2011-05-02 20:11:17',64.878395817200001,29.980316162099999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (640,'Порог над форелевым','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'307','2011-05-02 20:11:20','2011-05-02 20:11:20',64.865274706099996,30.513153076199998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (640,'Порог над форелевым','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,602,1,1,'307','2011-05-02 20:11:20','2011-05-02 20:11:20',64.865274706099996,30.513153076199998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (641,'Река Угра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'308','2011-05-02 20:11:22','2011-05-02 20:11:22',54.699779112199998,35.616474151600002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (641,'Река Угра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,603,1,1,'308','2011-05-02 20:11:22','2011-05-02 20:11:23',54.699779112199998,35.616474151600002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (642,'п. Коробово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'309','2011-05-02 20:11:25','2011-05-02 20:11:25',55.538636664800002,37.821292877200001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (642,'п. Коробово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,604,1,1,'309','2011-05-02 20:11:25','2011-05-02 20:11:25',55.538636664800002,37.821292877200001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (643,'Река Угра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'310','2011-05-02 20:11:28','2011-05-02 20:11:28',54.694471759000002,35.586090087899997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (643,'Река Угра','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,605,1,1,'310','2011-05-02 20:11:28','2011-05-02 20:11:28',54.694471759000002,35.586090087899997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (644,'Место лова судака','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'311','2011-05-02 20:11:31','2011-05-02 20:11:31',54.658343482500001,39.842605590799998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (644,'Место лова судака','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,606,1,1,'311','2011-05-02 20:11:31','2011-05-02 20:11:31',54.658343482500001,39.842605590799998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (645,'Песье','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'312','2011-05-02 20:11:34','2011-05-02 20:11:34',55.405141947300002,37.371025085399999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (645,'Песье','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,607,1,1,'312','2011-05-02 20:11:34','2011-05-02 20:11:34',55.405141947300002,37.371025085399999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (646,'Таболово','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'313','2011-05-02 20:11:37','2011-05-02 20:11:37',55.917756490099997,36.050434112500000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (646,'Таболово','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,608,1,1,'313','2011-05-02 20:11:37','2011-05-02 20:11:37',55.917756490099997,36.050434112500000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (647,'Истра река','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'314','2011-05-02 20:11:40','2011-05-02 20:11:40',56.119505416300001,36.928567886400003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (647,'Истра река','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,609,1,1,'314','2011-05-02 20:11:40','2011-05-02 20:11:40',56.119505416300001,36.928567886400003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (648,'Зубово','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'315','2011-05-02 20:11:43','2011-05-02 20:11:43',56.017575356099996,35.824871063200000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (648,'Зубово','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,610,1,1,'315','2011-05-02 20:11:43','2011-05-02 20:11:43',56.017575356099996,35.824871063200000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (649,'ВИЛАР','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'316','2011-05-02 20:11:46','2011-05-02 20:11:46',55.564174781100000,37.593240737899997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (649,'ВИЛАР','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,611,1,1,'316','2011-05-02 20:11:46','2011-05-02 20:11:46',55.564174781100000,37.593240737899997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (650,'Русановка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'317','2011-05-02 20:11:49','2011-05-02 20:11:49',50.446027359399999,30.590744018599999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (650,'Русановка','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,612,1,1,'317','2011-05-02 20:11:49','2011-05-02 20:11:49',50.446027359399999,30.590744018599999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (651,'Отель \"Анастасия\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'318','2011-05-02 20:11:52','2011-05-02 20:11:52',51.867694048600001,104.832057953000000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (651,'Отель \"Анастасия\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,613,1,1,'318','2011-05-02 20:11:52','2011-05-02 20:11:52',51.867694048600001,104.832057953000000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (652,'ООО \"Двенди\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'319','2011-05-02 20:11:55','2011-05-02 20:11:55',55.732656049100001,38.326320648200003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (652,'ООО \"Двенди\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,614,1,1,'319','2011-05-02 20:11:55','2011-05-02 20:11:55',55.732656049100001,38.326320648200003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (653,'Небольшой прудик','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'320','2011-05-02 20:11:58','2011-05-02 20:11:58',56.223886130200000,37.032852172900000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (653,'Небольшой прудик','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,615,1,1,'320','2011-05-02 20:11:58','2011-05-02 20:11:58',56.223886130200000,37.032852172900000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (654,'Пруд в Тараканово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'321','2011-05-02 20:12:01','2011-05-02 20:12:01',56.337475888599997,37.031478881799998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (654,'Пруд в Тараканово','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,616,1,1,'321','2011-05-02 20:12:01','2011-05-02 20:12:01',56.337475888599997,37.031478881799998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (655,'Карьер в Толстяково','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'322','2011-05-02 20:12:04','2011-05-02 20:12:04',56.279198461699998,36.987791061400003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (655,'Карьер в Толстяково','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,617,1,1,'322','2011-05-02 20:12:04','2011-05-02 20:12:04',56.279198461699998,36.987791061400003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (656,'\"Бездонка\"','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'323','2011-05-02 20:12:07','2011-05-02 20:12:07',56.241966794600003,36.973114013699998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (656,'\"Бездонка\"','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,618,1,1,'323','2011-05-02 20:12:07','2011-05-02 20:12:07',56.241966794600003,36.973114013699998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (657,'Рыбхоз \"Сенеж\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'324','2011-05-02 20:12:10','2011-05-02 20:12:10',56.221762642800002,37.010622024500002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (657,'Рыбхоз \"Сенеж\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,619,1,1,'324','2011-05-02 20:12:10','2011-05-02 20:12:10',56.221762642800002,37.010622024500002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (658,'Сенеж, Малиновые острова','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'325','2011-05-02 20:12:13','2011-05-02 20:12:13',56.208231594700003,37.021865844700002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (658,'Сенеж, Малиновые острова','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,620,1,1,'325','2011-05-02 20:12:13','2011-05-02 20:12:13',56.208231594700003,37.021865844700002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (659,'Полубарское','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'326','2011-05-02 20:12:16','2011-05-02 20:12:16',56.698097106900001,38.146247863799999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (659,'Полубарское','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,621,1,1,'326','2011-05-02 20:12:16','2011-05-02 20:12:16',56.698097106900001,38.146247863799999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (660,'Эколенд (закрыт)','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'327','2011-05-02 20:12:19','2011-05-02 20:12:19',56.375802850500001,37.153701782200002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (660,'Эколенд (закрыт)','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,622,1,1,'327','2011-05-02 20:12:19','2011-05-02 20:12:19',56.375802850500001,37.153701782200002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (661,'р. Осётр','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'328','2011-05-02 20:12:22','2011-05-02 20:12:22',54.486294827899997,38.637199401899998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (661,'р. Осётр','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,623,1,1,'328','2011-05-02 20:12:22','2011-05-02 20:12:22',54.486294827899997,38.637199401899998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (662,'Боровково','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'329','2011-05-02 20:12:25','2011-05-02 20:12:25',55.981385955500002,38.541927337600001,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (662,'Боровково','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,624,1,1,'329','2011-05-02 20:12:25','2011-05-02 20:12:25',55.981385955500002,38.541927337600001,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (663,'Торбеевское озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'330','2011-05-02 20:12:28','2011-05-02 20:12:28',56.327198096700002,38.267784118700000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (663,'Торбеевское озеро','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,625,1,1,'330','2011-05-02 20:12:28','2011-05-02 20:12:28',56.327198096700002,38.267784118700000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (664,'Клинский рыбхоз (Дятлово)','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'331','2011-05-02 20:12:31','2011-05-02 20:12:31',56.272717702900003,36.256256103500000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (664,'Клинский рыбхоз (Дятлово)','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,626,1,1,'331','2011-05-02 20:12:31','2011-05-02 20:12:31',56.272717702900003,36.256256103500000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (665,'\"Рыбинка\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'332','2011-05-02 20:12:34','2011-05-02 20:12:34',58.053541960899999,38.251647949199999,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (665,'\"Рыбинка\"','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,627,1,1,'332','2011-05-02 20:12:34','2011-05-02 20:12:34',58.053541960899999,38.251647949199999,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (666,'Сосенки','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'333','2011-05-02 20:12:37','2011-05-02 20:12:37',55.557670448300001,37.444667816200003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (666,'Сосенки','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,628,1,1,'333','2011-05-02 20:12:37','2011-05-02 20:12:37',55.557670448300001,37.444667816200003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (667,'Станиславские пруды','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'334','2011-05-02 20:12:40','2011-05-02 20:12:40',55.520419699000001,37.361497878999998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (667,'Станиславские пруды','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,629,1,1,'334','2011-05-02 20:12:40','2011-05-02 20:12:40',55.520419699000001,37.361497878999998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (668,'Шамбай-97','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'97-1','2011-05-02 20:12:43','2011-05-02 20:12:43',46.980018122600001,47.533721923800002,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (668,'Шамбай-97','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,630,1,1,'97-1','2011-05-02 20:12:43','2011-05-02 20:12:43',46.980018122600001,47.533721923800002,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (669,'База 77-99','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'77-99','2011-05-02 20:12:45','2011-05-02 20:12:45',46.831777837899999,47.681694030800003,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (669,'База 77-99','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,631,1,1,'77-99','2011-05-02 20:12:45','2011-05-02 20:12:46',46.831777837899999,47.681694030800003,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (670,'Дурыкино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'335','2011-05-02 20:12:48','2011-05-02 20:12:48',56.044335617900003,37.147521972699998,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (670,'Дурыкино','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,632,1,1,'335','2011-05-02 20:12:48','2011-05-02 20:12:48',56.044335617900003,37.147521972699998,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (671,'Теряевские пруды','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'336','2011-05-02 20:12:51','2011-05-02 20:12:51',56.173511096299997,36.107339859000000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (671,'Теряевские пруды','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,633,1,1,'336','2011-05-02 20:12:51','2011-05-02 20:12:51',56.173511096299997,36.107339859000000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (672,'Литвиново','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'337','2011-05-02 20:12:54','2011-05-02 20:12:54',56.022756209500002,38.133544921899997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (672,'Литвиново','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,634,1,1,'337','2011-05-02 20:12:54','2011-05-02 20:12:54',56.022756209500002,38.133544921899997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (673,'ВНИИ кормов (Лобня)','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'338','2011-05-02 20:12:57','2011-05-02 20:12:57',56.043400760200001,37.465481758099997,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (673,'ВНИИ кормов (Лобня)','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,635,1,1,'338','2011-05-02 20:12:57','2011-05-02 20:12:57',56.043400760200001,37.465481758099997,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (674,'Марьино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'339','2011-05-02 20:13:00','2011-05-02 20:13:00',55.647470786000000,37.769193649300000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (674,'Марьино','',NULL,1,'',NULL,NULL,NULL,NULL,NULL,636,1,1,'339','2011-05-02 20:13:00','2011-05-02 20:13:00',55.647470786000000,37.769193649300000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (675,'Фанни фишинг','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'340','2011-05-02 20:13:03','2011-05-02 20:13:03',55.075222516499998,37.316780090300000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (675,'Фанни фишинг','',NULL,0,'',NULL,NULL,NULL,NULL,NULL,637,1,1,'340','2011-05-02 20:13:03','2011-05-02 20:13:03',55.075222516499998,37.316780090300000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (676,'Отмель на угре','',1.00,1,'',3,3,1,1,5,NULL,7,7,'32','2011-05-03 23:03:26','2011-05-03 23:03:26',54.830381617699999,35.025039370300000,1);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (676,'Отмель на угре','',1.00,1,'',3,3,1,1,5,638,7,7,'32','2011-05-03 23:03:26','2011-05-03 23:03:26',54.830381617699999,35.025039370300000,2);
insert  into `location_version`(`id`,`name`,`description`,`depth`,`is_free`,`price`,`location_flow_id`,`location_fundus_id`,`location_relief_id`,`location_type_id`,`location_scope_id`,`address_id`,`created_by`,`updated_by`,`slug`,`created_at`,`updated_at`,`latitude`,`longitude`,`version`) values (676,'Отмель на угре','',1.00,1,'',3,3,1,1,5,638,7,7,'32','2011-05-03 23:03:26','2011-05-03 23:22:10',54.830381617699999,35.025039370300000,3);

/*Table structure for table `photo` */

DROP TABLE IF EXISTS `photo`;

CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `toward` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `profit_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `photo_toward_idx` (`toward`),
  KEY `created_by_idx` (`created_by`),
  KEY `updated_by_idx` (`updated_by`),
  KEY `photo_location_id_location_id` (`location_id`),
  KEY `photo_profit_id_profit_id` (`profit_id`),
  CONSTRAINT `photo_profit_id_profit_id` FOREIGN KEY (`profit_id`) REFERENCES `profit` (`id`) ON DELETE CASCADE,
  CONSTRAINT `photo_created_by_sf_guard_user_profile_id` FOREIGN KEY (`created_by`) REFERENCES `sf_guard_user_profile` (`id`),
  CONSTRAINT `photo_location_id_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE,
  CONSTRAINT `photo_updated_by_sf_guard_user_profile_id` FOREIGN KEY (`updated_by`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `photo` */

insert  into `photo`(`id`,`name`,`thumb`,`toward`,`location_id`,`profit_id`,`created_by`,`updated_by`,`version`) values (1,'http://img846.imageshack.us/img846/186/php10e3.jpg','http://img846.imageshack.us/img846/186/php10e3.th.jpg','location',676,NULL,7,7,1);
insert  into `photo`(`id`,`name`,`thumb`,`toward`,`location_id`,`profit_id`,`created_by`,`updated_by`,`version`) values (2,'http://img696.imageshack.us/img696/7894/php10e7.jpg','http://img696.imageshack.us/img696/7894/php10e7.th.jpg','location',676,NULL,7,7,1);
insert  into `photo`(`id`,`name`,`thumb`,`toward`,`location_id`,`profit_id`,`created_by`,`updated_by`,`version`) values (3,'http://img841.imageshack.us/img841/2065/php10e8.jpg','http://img841.imageshack.us/img841/2065/php10e8.th.jpg','location',676,NULL,7,7,1);
insert  into `photo`(`id`,`name`,`thumb`,`toward`,`location_id`,`profit_id`,`created_by`,`updated_by`,`version`) values (4,'http://img43.imageshack.us/img43/5893/php10ea.jpg','http://img43.imageshack.us/img43/5893/php10ea.th.jpg','location',676,NULL,7,7,1);

/*Table structure for table `photo_location_version` */

DROP TABLE IF EXISTS `photo_location_version`;

CREATE TABLE `photo_location_version` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `toward` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `profit_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `version` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  CONSTRAINT `photo_location_version_id_photo_id` FOREIGN KEY (`id`) REFERENCES `photo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `photo_location_version` */

/*Table structure for table `photo_profit_version` */

DROP TABLE IF EXISTS `photo_profit_version`;

CREATE TABLE `photo_profit_version` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `toward` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `profit_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `version` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  CONSTRAINT `photo_profit_version_id_photo_id` FOREIGN KEY (`id`) REFERENCES `photo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `photo_profit_version` */

/*Table structure for table `photo_version` */

DROP TABLE IF EXISTS `photo_version`;

CREATE TABLE `photo_version` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `toward` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `profit_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `version` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`),
  CONSTRAINT `photo_version_id_photo_id` FOREIGN KEY (`id`) REFERENCES `photo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `photo_version` */

insert  into `photo_version`(`id`,`name`,`thumb`,`toward`,`location_id`,`profit_id`,`created_by`,`updated_by`,`version`) values (1,'http://img846.imageshack.us/img846/186/php10e3.jpg','http://img846.imageshack.us/img846/186/php10e3.th.jpg',NULL,NULL,NULL,7,7,1);
insert  into `photo_version`(`id`,`name`,`thumb`,`toward`,`location_id`,`profit_id`,`created_by`,`updated_by`,`version`) values (2,'http://img696.imageshack.us/img696/7894/php10e7.jpg','http://img696.imageshack.us/img696/7894/php10e7.th.jpg',NULL,NULL,NULL,7,7,1);
insert  into `photo_version`(`id`,`name`,`thumb`,`toward`,`location_id`,`profit_id`,`created_by`,`updated_by`,`version`) values (3,'http://img841.imageshack.us/img841/2065/php10e8.jpg','http://img841.imageshack.us/img841/2065/php10e8.th.jpg',NULL,NULL,NULL,7,7,1);
insert  into `photo_version`(`id`,`name`,`thumb`,`toward`,`location_id`,`profit_id`,`created_by`,`updated_by`,`version`) values (4,'http://img43.imageshack.us/img43/5893/php10ea.jpg','http://img43.imageshack.us/img43/5893/php10ea.th.jpg',NULL,NULL,NULL,7,7,1);

/*Table structure for table `profit` */

DROP TABLE IF EXISTS `profit`;

CREATE TABLE `profit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `cordage` text,
  `description` text,
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
  CONSTRAINT `profit_location_id_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE,
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
  CONSTRAINT `profit_detail_profit_id_profit_id` FOREIGN KEY (`profit_id`) REFERENCES `profit` (`id`) ON DELETE CASCADE,
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

/*Table structure for table `region` */

DROP TABLE IF EXISTS `region`;

CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `country_id_idx` (`country_id`),
  CONSTRAINT `region_country_id_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

/*Data for the table `region` */

insert  into `region`(`id`,`name`,`country_id`) values (1,'Хакасия',1);
insert  into `region`(`id`,`name`,`country_id`) values (2,'Красноярский край',1);
insert  into `region`(`id`,`name`,`country_id`) values (3,'Тюменская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (4,'Оренбургская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (5,'Краснодарский край',1);
insert  into `region`(`id`,`name`,`country_id`) values (6,'Калининградская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (7,'Челябинская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (8,'Татарстан',1);
insert  into `region`(`id`,`name`,`country_id`) values (9,'Тверская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (10,'Адыгея',1);
insert  into `region`(`id`,`name`,`country_id`) values (11,'Карачаево-Черкесия',1);
insert  into `region`(`id`,`name`,`country_id`) values (12,'Омская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (13,'Ростовская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (14,'Коми',1);
insert  into `region`(`id`,`name`,`country_id`) values (15,'Ямало-Ненецкий автономный округ',1);
insert  into `region`(`id`,`name`,`country_id`) values (16,'Читинская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (17,'Башкортостан',1);
insert  into `region`(`id`,`name`,`country_id`) values (18,'Северная Осетия',1);
insert  into `region`(`id`,`name`,`country_id`) values (19,'Свердловская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (20,'Чувашия',1);
insert  into `region`(`id`,`name`,`country_id`) values (21,'Саха-Якутия',1);
insert  into `region`(`id`,`name`,`country_id`) values (22,'Алтайский край',1);
insert  into `region`(`id`,`name`,`country_id`) values (23,'Владимирская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (24,'Саратовская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (25,'Ставропольский край',1);
insert  into `region`(`id`,`name`,`country_id`) values (26,'Томская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (27,'Пермская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (28,'Рязанская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (29,'Белгородская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (30,'Самарская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (31,'Волгоградская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (32,'Тульская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (33,'Удмуртия',1);
insert  into `region`(`id`,`name`,`country_id`) values (34,'Курганская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (35,'Хабаровский край',1);
insert  into `region`(`id`,`name`,`country_id`) values (36,'Чукотский автономный округ',1);
insert  into `region`(`id`,`name`,`country_id`) values (37,'Иркутская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (38,'Кемеровская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (39,'Воронежская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (40,'Костромская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (41,'Приморский край',1);
insert  into `region`(`id`,`name`,`country_id`) values (42,'Мурманская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (43,'Кировская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (44,'Чечня',1);
insert  into `region`(`id`,`name`,`country_id`) values (45,'Мордовия',1);
insert  into `region`(`id`,`name`,`country_id`) values (46,'Нижегородская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (47,'Архангельская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (48,'Астраханская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (49,'Камчатка',1);
insert  into `region`(`id`,`name`,`country_id`) values (50,'Вологодская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (51,'Калужская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (52,'Новосибирская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (53,'Ульяновская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (54,'Алтай',1);
insert  into `region`(`id`,`name`,`country_id`) values (55,'Кабардино-Балкария',1);
insert  into `region`(`id`,`name`,`country_id`) values (56,'Бурятия',1);
insert  into `region`(`id`,`name`,`country_id`) values (57,'Новгородская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (58,'Пензенская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (59,'Псковская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (60,'Курская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (61,'Амурская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (62,'Карелия',1);
insert  into `region`(`id`,`name`,`country_id`) values (63,'Ханты-Мансийский автономный округ',1);
insert  into `region`(`id`,`name`,`country_id`) values (64,'Еврейская автономная область',1);
insert  into `region`(`id`,`name`,`country_id`) values (65,'Ленинградская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (66,'Орловская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (67,'Ярославская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (68,'Калмыкия',1);
insert  into `region`(`id`,`name`,`country_id`) values (69,'Тамбовская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (70,'Брянская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (71,'Смоленская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (72,'Ивановская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (73,'Марий Эл',1);
insert  into `region`(`id`,`name`,`country_id`) values (74,'Липецкая область',1);
insert  into `region`(`id`,`name`,`country_id`) values (75,'Московская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (76,'Дагестан',1);
insert  into `region`(`id`,`name`,`country_id`) values (77,'Тыва',1);
insert  into `region`(`id`,`name`,`country_id`) values (78,'Магаданская область',1);
insert  into `region`(`id`,`name`,`country_id`) values (79,'Сахалин',1);
insert  into `region`(`id`,`name`,`country_id`) values (80,'Ингушетия',1);
insert  into `region`(`id`,`name`,`country_id`) values (81,'Усть-Ордынский автономный округ',1);

/*Table structure for table `route` */

DROP TABLE IF EXISTS `route`;

CREATE TABLE `route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id_idx` (`country_id`),
  CONSTRAINT `route_country_id_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;

/*Data for the table `route` */

insert  into `route`(`id`,`name`,`country_id`) values (1,'Р-132',1);
insert  into `route`(`id`,`name`,`country_id`) values (2,'Р-93',1);
insert  into `route`(`id`,`name`,`country_id`) values (3,'Новорязанское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (4,'Советская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (5,'М-6',1);
insert  into `route`(`id`,`name`,`country_id`) values (6,'Р-107',1);
insert  into `route`(`id`,`name`,`country_id`) values (7,'Тимоновское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (8,'Новорижское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (9,'Р-199',1);
insert  into `route`(`id`,`name`,`country_id`) values (10,'Р85',2);
insert  into `route`(`id`,`name`,`country_id`) values (11,'Докучаев пер.',1);
insert  into `route`(`id`,`name`,`country_id`) values (12,'Центральная ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (13,'Meža iela',3);
insert  into `route`(`id`,`name`,`country_id`) values (14,'Московское Малое Кольцо',1);
insert  into `route`(`id`,`name`,`country_id`) values (15,'Киевское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (16,'Рогачевское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (17,'А-102',1);
insert  into `route`(`id`,`name`,`country_id`) values (18,'A355',4);
insert  into `route`(`id`,`name`,`country_id`) values (19,'ул. Федотова',1);
insert  into `route`(`id`,`name`,`country_id`) values (20,'Красноармейская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (21,'просп. Стачек',1);
insert  into `route`(`id`,`name`,`country_id`) values (22,'А-123',1);
insert  into `route`(`id`,`name`,`country_id`) values (23,'Р-250',1);
insert  into `route`(`id`,`name`,`country_id`) values (24,'Р-380',1);
insert  into `route`(`id`,`name`,`country_id`) values (25,'Можайское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (26,'Московская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (27,'Каширское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (28,'Р-114',1);
insert  into `route`(`id`,`name`,`country_id`) values (29,'Окский просп.',1);
insert  into `route`(`id`,`name`,`country_id`) values (30,'Голутвинская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (31,'М-5',1);
insert  into `route`(`id`,`name`,`country_id`) values (32,'ул. Бочманово',1);
insert  into `route`(`id`,`name`,`country_id`) values (33,'Р-81',1);
insert  into `route`(`id`,`name`,`country_id`) values (34,'H01',5);
insert  into `route`(`id`,`name`,`country_id`) values (35,'Р-251',1);
insert  into `route`(`id`,`name`,`country_id`) values (36,'Ritarinrannantie',6);
insert  into `route`(`id`,`name`,`country_id`) values (37,'R-204',4);
insert  into `route`(`id`,`name`,`country_id`) values (38,'Победы просп.',4);
insert  into `route`(`id`,`name`,`country_id`) values (39,'E127',4);
insert  into `route`(`id`,`name`,`country_id`) values (40,'Разъезжая ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (41,'Ильинское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (42,'наб. ул. (м/р Голованово)',1);
insert  into `route`(`id`,`name`,`country_id`) values (43,'ул. Борисовские Пруды',1);
insert  into `route`(`id`,`name`,`country_id`) values (44,'Центральная ал.',1);
insert  into `route`(`id`,`name`,`country_id`) values (45,'Лесная ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (46,'Р-37',1);
insert  into `route`(`id`,`name`,`country_id`) values (47,'Таманская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (48,'М-7',1);
insert  into `route`(`id`,`name`,`country_id`) values (49,'Р-126',1);
insert  into `route`(`id`,`name`,`country_id`) values (50,'Р-89',1);
insert  into `route`(`id`,`name`,`country_id`) values (51,'ул. 40 Лет Октября',1);
insert  into `route`(`id`,`name`,`country_id`) values (52,'A229',1);
insert  into `route`(`id`,`name`,`country_id`) values (53,'Заводской пер.',1);
insert  into `route`(`id`,`name`,`country_id`) values (54,'ул. Карбышева',1);
insert  into `route`(`id`,`name`,`country_id`) values (55,'Vääräkäntie',6);
insert  into `route`(`id`,`name`,`country_id`) values (56,'Levin Ympärystie',6);
insert  into `route`(`id`,`name`,`country_id`) values (57,'T1805',5);
insert  into `route`(`id`,`name`,`country_id`) values (58,'Р-84',1);
insert  into `route`(`id`,`name`,`country_id`) values (59,'М-13',1);
insert  into `route`(`id`,`name`,`country_id`) values (60,'Р-34',1);
insert  into `route`(`id`,`name`,`country_id`) values (61,'ул. Маяковского',1);
insert  into `route`(`id`,`name`,`country_id`) values (62,'Водная ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (63,'Ошарская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (64,'Тракторный пер.',1);
insert  into `route`(`id`,`name`,`country_id`) values (65,'Среднеохтинский просп.',1);
insert  into `route`(`id`,`name`,`country_id`) values (66,'Бережковская наб.',1);
insert  into `route`(`id`,`name`,`country_id`) values (67,'Аннинское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (68,'наб. Обводного канала',1);
insert  into `route`(`id`,`name`,`country_id`) values (69,'T2104',5);
insert  into `route`(`id`,`name`,`country_id`) values (70,'Закавказская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (71,'ул. Тюленина',1);
insert  into `route`(`id`,`name`,`country_id`) values (72,'3-я ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (73,'Минское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (74,'А-144',1);
insert  into `route`(`id`,`name`,`country_id`) values (75,'Карла Маркса ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (76,'T1607',5);
insert  into `route`(`id`,`name`,`country_id`) values (77,'Калужское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (78,'Пятницкое ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (79,'А-349',1);
insert  into `route`(`id`,`name`,`country_id`) values (80,'Р-158',1);
insert  into `route`(`id`,`name`,`country_id`) values (81,'Р-244',1);
insert  into `route`(`id`,`name`,`country_id`) values (82,'ул. Апраксина',1);
insert  into `route`(`id`,`name`,`country_id`) values (83,'Р-204',1);
insert  into `route`(`id`,`name`,`country_id`) values (84,'Правая наб.',1);
insert  into `route`(`id`,`name`,`country_id`) values (85,'P508',1);
insert  into `route`(`id`,`name`,`country_id`) values (86,'A191',1);
insert  into `route`(`id`,`name`,`country_id`) values (87,'ул. Серпуховский Вал',1);
insert  into `route`(`id`,`name`,`country_id`) values (88,'Встречная ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (89,'ул. Красина',1);
insert  into `route`(`id`,`name`,`country_id`) values (90,'Фоминская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (91,'Комсомольская пл.',1);
insert  into `route`(`id`,`name`,`country_id`) values (92,'Уральская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (93,'Р-79',1);
insert  into `route`(`id`,`name`,`country_id`) values (94,'М-8',1);
insert  into `route`(`id`,`name`,`country_id`) values (95,'Р-119',1);
insert  into `route`(`id`,`name`,`country_id`) values (96,'Тепличная ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (97,'М-4',1);
insert  into `route`(`id`,`name`,`country_id`) values (98,'Р-106',1);
insert  into `route`(`id`,`name`,`country_id`) values (99,'Горьковское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (100,'Ярославское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (101,'Р-203',1);
insert  into `route`(`id`,`name`,`country_id`) values (102,'просп. Академика Сахарова',1);
insert  into `route`(`id`,`name`,`country_id`) values (103,'А-104',1);
insert  into `route`(`id`,`name`,`country_id`) values (104,'М-51',1);
insert  into `route`(`id`,`name`,`country_id`) values (105,'А-114',1);
insert  into `route`(`id`,`name`,`country_id`) values (106,'Р-104',1);
insert  into `route`(`id`,`name`,`country_id`) values (107,'Р-140',1);
insert  into `route`(`id`,`name`,`country_id`) values (108,'Е30',1);
insert  into `route`(`id`,`name`,`country_id`) values (109,'Р-115',1);
insert  into `route`(`id`,`name`,`country_id`) values (110,'просп. Вернадского',1);
insert  into `route`(`id`,`name`,`country_id`) values (111,'Волжский бул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (112,'Московское Большое Кольцо',1);
insert  into `route`(`id`,`name`,`country_id`) values (113,'Симферопольское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (114,'Р-134',1);
insert  into `route`(`id`,`name`,`country_id`) values (115,'Р-90',1);
insert  into `route`(`id`,`name`,`country_id`) values (116,'Р-404',1);
insert  into `route`(`id`,`name`,`country_id`) values (117,'Р-109',1);
insert  into `route`(`id`,`name`,`country_id`) values (118,'Егорьевское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (119,'Kymijoentie',6);
insert  into `route`(`id`,`name`,`country_id`) values (120,'Tallinnankatu',6);
insert  into `route`(`id`,`name`,`country_id`) values (121,'Ruotsinsalmenkatu',6);
insert  into `route`(`id`,`name`,`country_id`) values (122,'Рязановское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (123,'Осташковское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (124,'Комсомольская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (125,'ул. Мал. Горького',1);
insert  into `route`(`id`,`name`,`country_id`) values (126,'просп. 40 лет Октября',1);
insert  into `route`(`id`,`name`,`country_id`) values (127,'13',7);
insert  into `route`(`id`,`name`,`country_id`) values (128,'ул. Каховка',1);
insert  into `route`(`id`,`name`,`country_id`) values (129,'Спасский пр.',1);
insert  into `route`(`id`,`name`,`country_id`) values (130,'Триумфальная ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (131,'Щелковское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (132,'Остафьевская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (133,'Р-152',1);
insert  into `route`(`id`,`name`,`country_id`) values (134,'Пионерская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (135,'ул. Герцена',1);
insert  into `route`(`id`,`name`,`country_id`) values (136,'Строгинское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (137,'Люблинская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (138,'Ilmeņa iela',3);
insert  into `route`(`id`,`name`,`country_id`) values (139,'Flotes iela',3);
insert  into `route`(`id`,`name`,`country_id`) values (140,'А-115',1);
insert  into `route`(`id`,`name`,`country_id`) values (141,'Р-116',1);
insert  into `route`(`id`,`name`,`country_id`) values (142,'Р-124',1);
insert  into `route`(`id`,`name`,`country_id`) values (143,'ул. Верхние Поля',1);
insert  into `route`(`id`,`name`,`country_id`) values (144,'ул. Академика Семенова',1);
insert  into `route`(`id`,`name`,`country_id`) values (145,'Новочеркасский бул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (146,'Волоколамское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (147,'1-й Гончарный пер.',1);
insert  into `route`(`id`,`name`,`country_id`) values (148,'H08',5);
insert  into `route`(`id`,`name`,`country_id`) values (149,'Узловая ул.',5);
insert  into `route`(`id`,`name`,`country_id`) values (150,'Ленина им. наб.',5);
insert  into `route`(`id`,`name`,`country_id`) values (151,'Avenida da Marginal',8);
insert  into `route`(`id`,`name`,`country_id`) values (152,'E22',3);
insert  into `route`(`id`,`name`,`country_id`) values (153,'Р-352',1);
insert  into `route`(`id`,`name`,`country_id`) values (154,'Краснобогатырская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (155,'Головинское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (156,'Марьинский бул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (157,'ул. Даля',1);
insert  into `route`(`id`,`name`,`country_id`) values (158,'просп. Гагарина',1);
insert  into `route`(`id`,`name`,`country_id`) values (159,'Республиканская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (160,'Полтавская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (161,'М-10, Россия',1);
insert  into `route`(`id`,`name`,`country_id`) values (162,'Рождественская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (163,'Бол. Печерская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (164,'Комсомольский просп.',1);
insert  into `route`(`id`,`name`,`country_id`) values (165,'Часовая ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (166,'Алтуфьевское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (167,'Городецкий пер.',1);
insert  into `route`(`id`,`name`,`country_id`) values (168,'Ананьевский пер.',1);
insert  into `route`(`id`,`name`,`country_id`) values (169,'ул. Чкалова',1);
insert  into `route`(`id`,`name`,`country_id`) values (170,'Школьная ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (171,'ул. Веденяпина',1);
insert  into `route`(`id`,`name`,`country_id`) values (172,'ул. Лескова',1);
insert  into `route`(`id`,`name`,`country_id`) values (173,'ул. Плотникова',1);
insert  into `route`(`id`,`name`,`country_id`) values (174,'просп. Октября',1);
insert  into `route`(`id`,`name`,`country_id`) values (175,'просп. Ленина',1);
insert  into `route`(`id`,`name`,`country_id`) values (176,'Смольная ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (177,'Братиславская ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (178,'Ленинградское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (179,'ул. Перерва',1);
insert  into `route`(`id`,`name`,`country_id`) values (180,'H21',5);
insert  into `route`(`id`,`name`,`country_id`) values (181,'Рублево-Успенское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (182,'D695',9);
insert  into `route`(`id`,`name`,`country_id`) values (183,'Р-85',1);
insert  into `route`(`id`,`name`,`country_id`) values (184,'Промышленный пр.',1);
insert  into `route`(`id`,`name`,`country_id`) values (185,'Промышленная ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (186,'Malahviantie',6);
insert  into `route`(`id`,`name`,`country_id`) values (187,'Набережная ул.',1);
insert  into `route`(`id`,`name`,`country_id`) values (188,'ул. Есенина',1);
insert  into `route`(`id`,`name`,`country_id`) values (189,'Р-108',1);
insert  into `route`(`id`,`name`,`country_id`) values (190,'М-9',1);
insert  into `route`(`id`,`name`,`country_id`) values (191,'Варшавское ш.',1);
insert  into `route`(`id`,`name`,`country_id`) values (192,'Русановская наб.',5);
insert  into `route`(`id`,`name`,`country_id`) values (193,'Р-110',1);
insert  into `route`(`id`,`name`,`country_id`) values (194,'ул. Горки Киовские',1);
insert  into `route`(`id`,`name`,`country_id`) values (195,'Поречная ул.',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=cp1251;

/*Data for the table `sf_guard_remember_key` */

insert  into `sf_guard_remember_key`(`id`,`user_id`,`remember_key`,`ip_address`,`created_at`,`updated_at`) values (10,1,'c19jc5hcalcg4cwcw44ogcocs0o40c','127.0.0.1','2011-05-03 21:01:38','2011-05-03 21:01:38');
insert  into `sf_guard_remember_key`(`id`,`user_id`,`remember_key`,`ip_address`,`created_at`,`updated_at`) values (12,3,'rn6cfcbm0o0ks8s0wwckg0kkskckwwg','127.0.0.1','2011-05-03 21:50:46','2011-05-03 21:50:46');
insert  into `sf_guard_remember_key`(`id`,`user_id`,`remember_key`,`ip_address`,`created_at`,`updated_at`) values (13,7,'n1215sf8n2sosgggo0ws88gswwccw4s','127.0.0.1','2011-05-03 21:53:09','2011-05-03 21:53:09');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=cp1251;

/*Data for the table `sf_guard_user` */

insert  into `sf_guard_user`(`id`,`first_name`,`last_name`,`email_address`,`username`,`algorithm`,`salt`,`password`,`is_active`,`is_super_admin`,`last_login`,`created_at`,`updated_at`) values (1,'','','uberlov@gmail.com','uberlov','PasswordKeeper::generate','93b8926afa3c763923dc904682439337','93b8926afa3c763923dc904682439337qweqwe123',1,0,'2011-05-03 21:01:38','2011-03-11 20:52:17','2011-05-03 21:10:11');
insert  into `sf_guard_user`(`id`,`first_name`,`last_name`,`email_address`,`username`,`algorithm`,`salt`,`password`,`is_active`,`is_super_admin`,`last_login`,`created_at`,`updated_at`) values (2,'','','spamer@uberlov.ru','spamer','PasswordKeeper::generate','8c65d6733a4dd32a5510ab6d3793d3d9','8c65d6733a4dd32a5510ab6d3793d3d9qweqwe123',1,0,'2010-05-22 18:29:11','2011-03-11 20:52:31','2010-05-22 18:29:11');
insert  into `sf_guard_user`(`id`,`first_name`,`last_name`,`email_address`,`username`,`algorithm`,`salt`,`password`,`is_active`,`is_super_admin`,`last_login`,`created_at`,`updated_at`) values (3,'','','admin@uberlov.ru','admin','PasswordKeeper::generate','884f9de044df99d54aedf354eded1a32','884f9de044df99d54aedf354eded1a32qweqwe123',1,0,'2011-05-03 21:50:46','2011-03-11 20:52:47','2011-05-03 21:52:25');
insert  into `sf_guard_user`(`id`,`first_name`,`last_name`,`email_address`,`username`,`algorithm`,`salt`,`password`,`is_active`,`is_super_admin`,`last_login`,`created_at`,`updated_at`) values (7,'Сергей','Белов','limitium@gmail.com','limitium','PasswordKeeper::generate','df4ec620183da5af8c2df4d1c60f9c53','df4ec620183da5af8c2df4d1c60f9c53qweqwe123',1,0,'2011-05-04 02:08:20','2011-03-31 12:26:05','2011-05-04 02:08:20');

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
  `city_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `user_id_unique_idx` (`user_id`),
  UNIQUE KEY `email_new` (`email_new`),
  KEY `city_id_idx` (`city_id`),
  CONSTRAINT `sf_guard_user_profile_city_id_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `sf_guard_user_profile_user_id_sf_guard_user_id` FOREIGN KEY (`user_id`) REFERENCES `sf_guard_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `sf_guard_user_profile` */

insert  into `sf_guard_user_profile`(`user_id`,`email_new`,`validate_at`,`validate`,`id`,`sex`,`birth_date`,`userpic`,`description`,`city_id`,`created_at`,`updated_at`) values (1,NULL,'0000-00-00 00:00:00','',1,1,'2011-05-03','45843c7ab484e9cdfe293949a1448b72.png','',123,'2011-03-11 20:52:18','2011-05-03 21:24:15');
insert  into `sf_guard_user_profile`(`user_id`,`email_new`,`validate_at`,`validate`,`id`,`sex`,`birth_date`,`userpic`,`description`,`city_id`,`created_at`,`updated_at`) values (2,NULL,'0000-00-00 00:00:00','',2,1,NULL,NULL,NULL,456,'2011-03-11 20:52:31','2011-03-11 20:52:31');
insert  into `sf_guard_user_profile`(`user_id`,`email_new`,`validate_at`,`validate`,`id`,`sex`,`birth_date`,`userpic`,`description`,`city_id`,`created_at`,`updated_at`) values (3,NULL,'0000-00-00 00:00:00','',3,1,NULL,'b44abf69be64d1141dff6561ce6d4eb7.png','',213,'2011-03-11 20:52:47','2011-05-03 21:51:57');
insert  into `sf_guard_user_profile`(`user_id`,`email_new`,`validate_at`,`validate`,`id`,`sex`,`birth_date`,`userpic`,`description`,`city_id`,`created_at`,`updated_at`) values (7,NULL,'0000-00-00 00:00:00','',7,1,NULL,'00958ac0a61fa928c0d26d97bb7a93af.gif','',1782,'2011-03-31 12:26:06','2011-05-03 20:33:43');

/*Table structure for table `style` */

DROP TABLE IF EXISTS `style`;

CREATE TABLE `style` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `style` */

insert  into `style`(`id`,`name`) values (2,'Спининг');
insert  into `style`(`id`,`name`) values (1,'Тролинг');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=cp1251;

/*Data for the table `tag` */

insert  into `tag`(`id`,`name`,`is_triple`,`triple_namespace`,`triple_key`,`triple_value`) values (1,'qwe',0,NULL,NULL,NULL);
insert  into `tag`(`id`,`name`,`is_triple`,`triple_namespace`,`triple_key`,`triple_value`) values (2,'asd',0,NULL,NULL,NULL);
insert  into `tag`(`id`,`name`,`is_triple`,`triple_namespace`,`triple_key`,`triple_value`) values (3,'zxc',0,NULL,NULL,NULL);
insert  into `tag`(`id`,`name`,`is_triple`,`triple_namespace`,`triple_key`,`triple_value`) values (4,'aaaa',0,NULL,NULL,NULL);
insert  into `tag`(`id`,`name`,`is_triple`,`triple_namespace`,`triple_key`,`triple_value`) values (5,'aassss',0,NULL,NULL,NULL);
insert  into `tag`(`id`,`name`,`is_triple`,`triple_namespace`,`triple_key`,`triple_value`) values (6,'aaaaassss',0,NULL,NULL,NULL);
insert  into `tag`(`id`,`name`,`is_triple`,`triple_namespace`,`triple_key`,`triple_value`) values (7,'aassss',0,NULL,NULL,NULL);
insert  into `tag`(`id`,`name`,`is_triple`,`triple_namespace`,`triple_key`,`triple_value`) values (8,'assss',0,NULL,NULL,NULL);
insert  into `tag`(`id`,`name`,`is_triple`,`triple_namespace`,`triple_key`,`triple_value`) values (9,'aaaaaaaaaa',0,NULL,NULL,NULL);
insert  into `tag`(`id`,`name`,`is_triple`,`triple_namespace`,`triple_key`,`triple_value`) values (10,'aaasssssss',0,NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;

/*Data for the table `tagging` */

insert  into `tagging`(`id`,`tag_id`,`taggable_model`,`taggable_id`) values (1,1,'Talk',1);
insert  into `tagging`(`id`,`tag_id`,`taggable_model`,`taggable_id`) values (2,2,'Talk',1);
insert  into `tagging`(`id`,`tag_id`,`taggable_model`,`taggable_id`) values (3,3,'Talk',1);

/*Table structure for table `talk` */

DROP TABLE IF EXISTS `talk`;

CREATE TABLE `talk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `message` text,
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `talk_section` */

insert  into `talk_section`(`id`,`parent`,`name`,`lft`,`rgt`,`level`) values (13,NULL,'root',1,14,0);
insert  into `talk_section`(`id`,`parent`,`name`,`lft`,`rgt`,`level`) values (14,13,'a',2,9,1);
insert  into `talk_section`(`id`,`parent`,`name`,`lft`,`rgt`,`level`) values (15,14,'a1',3,4,2);
insert  into `talk_section`(`id`,`parent`,`name`,`lft`,`rgt`,`level`) values (16,13,'b',10,13,1);
insert  into `talk_section`(`id`,`parent`,`name`,`lft`,`rgt`,`level`) values (17,16,'b1',11,12,2);
insert  into `talk_section`(`id`,`parent`,`name`,`lft`,`rgt`,`level`) values (18,14,'a2',5,8,2);
insert  into `talk_section`(`id`,`parent`,`name`,`lft`,`rgt`,`level`) values (19,18,'a21',6,7,3);

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
  `photo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vote_toward_idx` (`toward`),
  KEY `voter_idx` (`voter`),
  KEY `vote_comment_id_comment_id` (`comment_id`),
  KEY `vote_fish_event_id_fish_event_id` (`fish_event_id`),
  KEY `vote_location_id_location_id` (`location_id`),
  KEY `vote_photo_id_photo_id` (`photo_id`),
  KEY `vote_profile_id_sf_guard_user_profile_id` (`profile_id`),
  KEY `vote_profit_id_profit_id` (`profit_id`),
  KEY `vote_talk_id_talk_id` (`talk_id`),
  CONSTRAINT `vote_talk_id_talk_id` FOREIGN KEY (`talk_id`) REFERENCES `talk` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vote_comment_id_comment_id` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vote_fish_event_id_fish_event_id` FOREIGN KEY (`fish_event_id`) REFERENCES `fish_event` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vote_location_id_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vote_photo_id_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`id`),
  CONSTRAINT `vote_profile_id_sf_guard_user_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `sf_guard_user_profile` (`id`),
  CONSTRAINT `vote_profit_id_profit_id` FOREIGN KEY (`profit_id`) REFERENCES `profit` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vote_voter_sf_guard_user_profile_id` FOREIGN KEY (`voter`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `vote` */

insert  into `vote`(`id`,`value`,`voter`,`toward`,`location_id`,`comment_id`,`profit_id`,`profile_id`,`talk_id`,`fish_event_id`,`photo_id`) values (24,1,1,'profile',NULL,NULL,NULL,1,NULL,NULL,NULL);
insert  into `vote`(`id`,`value`,`voter`,`toward`,`location_id`,`comment_id`,`profit_id`,`profile_id`,`talk_id`,`fish_event_id`,`photo_id`) values (37,1,2,'profile',NULL,NULL,NULL,1,NULL,NULL,NULL);
insert  into `vote`(`id`,`value`,`voter`,`toward`,`location_id`,`comment_id`,`profit_id`,`profile_id`,`talk_id`,`fish_event_id`,`photo_id`) values (38,1,2,'profile',NULL,NULL,NULL,3,NULL,NULL,NULL);
insert  into `vote`(`id`,`value`,`voter`,`toward`,`location_id`,`comment_id`,`profit_id`,`profile_id`,`talk_id`,`fish_event_id`,`photo_id`) values (39,-1,1,'profile',NULL,NULL,NULL,2,NULL,NULL,NULL);
insert  into `vote`(`id`,`value`,`voter`,`toward`,`location_id`,`comment_id`,`profit_id`,`profile_id`,`talk_id`,`fish_event_id`,`photo_id`) values (41,-1,1,'profile',NULL,NULL,NULL,3,NULL,NULL,NULL);

/*Table structure for table `wish_list` */

DROP TABLE IF EXISTS `wish_list`;

CREATE TABLE `wish_list` (
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`profile_id`,`location_id`),
  KEY `wish_list_location_id_location_id` (`location_id`),
  CONSTRAINT `wish_list_location_id_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wish_list_profile_id_sf_guard_user_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `sf_guard_user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wish_list` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
