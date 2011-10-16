SET FOREIGN_KEY_CHECKS=0;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS address;
CREATE TABLE IF NOT EXISTS address (
  id int(11) NOT NULL auto_increment,
  country_id int(11) default NULL,
  area_low_id int(11) default NULL,
  area_high_id int(11) default NULL,
  locality_id int(11) default NULL,
  route_id int(11) default NULL,
  PRIMARY KEY  (id),
  KEY country_id_idx (country_id),
  KEY area_low_id_idx (area_low_id),
  KEY area_high_id_idx (area_high_id),
  KEY locality_id_idx (locality_id),
  KEY route_id_idx (route_id)
) TYPE=InnoDB ;

INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(1, 1, 5, NULL, NULL, 1);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(2, 1, 3, 12, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(3, 1, 3, 12, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(4, 1, 3, 13, 8, 4);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(5, 1, 6, NULL, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(6, 1, 3, 7, NULL, 6);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(7, 1, 3, 14, NULL, 7);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(8, 1, 3, NULL, NULL, 8);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(9, 1, 7, 15, NULL, 9);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(10, 1, 7, 15, NULL, 9);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(11, 2, 8, NULL, NULL, 10);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(12, 1, 3, 14, NULL, 7);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(13, 1, 3, 16, NULL, 11);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(14, 1, 3, 16, 9, 12);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(15, 3, NULL, 17, 10, 13);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(16, 1, 3, 18, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(17, 1, 3, 19, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(18, 1, 3, 20, 11, 15);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(19, 1, 3, 13, 8, 4);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(20, 1, 6, NULL, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(21, 1, 3, 21, NULL, 16);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(22, 1, 5, 22, NULL, 1);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(23, 1, 3, 21, NULL, 16);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(24, 1, 7, 15, NULL, 9);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(25, 1, 7, 15, NULL, 9);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(26, 1, 3, NULL, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(27, 1, 3, 12, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(28, 1, 3, 19, NULL, 17);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(29, 1, 3, 12, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(30, 1, 3, 19, NULL, 17);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(31, 4, 9, 23, NULL, 18);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(32, 1, 3, 24, 12, 19);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(33, 1, 3, 19, 13, 20);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(34, 1, 3, 12, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(35, 1, 3, 19, NULL, 17);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(36, 4, 9, 23, NULL, 18);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(37, 1, 3, 24, 12, 19);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(38, 1, 3, 19, 13, 20);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(39, 1, 3, 25, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(40, 1, 10, 26, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(41, 1, 6, 27, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(42, 1, 11, 28, 14, 21);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(43, 1, 6, NULL, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(44, 1, 6, 29, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(45, 1, NULL, NULL, NULL, 22);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(46, 1, 12, NULL, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(47, 1, 12, NULL, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(48, 1, 13, NULL, NULL, 23);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(49, 1, 14, 30, NULL, 24);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(50, 1, 3, 4, NULL, 25);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(51, 1, 3, 31, 15, 26);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(52, 1, 3, 25, NULL, 27);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(53, 1, 3, 32, 16, 28);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(54, 1, 3, 33, 17, 29);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(55, 1, 3, 33, 17, 30);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(56, 1, 3, 33, 17, 31);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(57, 1, 3, 33, 17, 32);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(58, 1, 15, 34, NULL, 33);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(59, 5, 16, 35, NULL, 34);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(60, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(61, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(62, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(63, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(64, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(65, 6, NULL, 37, 18, 36);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(66, 4, 17, NULL, 19, 37);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(67, 4, 17, 38, 20, 38);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(68, 4, 18, 39, NULL, 39);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(69, 4, 9, NULL, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(70, 1, 11, 40, 14, 40);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(71, 1, 3, 41, 21, 41);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(72, 1, 3, 41, NULL, 41);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(73, 1, 12, NULL, 22, 42);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(74, 1, 19, 42, 23, 43);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(75, 1, 3, 43, 24, 44);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(76, 1, 3, 44, NULL, 45);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(77, 1, 20, 45, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(78, 1, 3, 18, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(79, 1, 21, 46, NULL, 46);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(80, 1, 19, 47, 23, 47);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(81, 1, 22, NULL, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(82, 1, 23, 48, NULL, 49);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(83, 1, 24, 49, NULL, 50);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(84, 1, 22, 50, 25, 51);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(85, 1, 25, 51, 26, 52);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(86, 1, 25, 52, 27, 53);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(87, 1, 12, NULL, 22, 54);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(88, 1, 26, 53, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(89, 1, 27, 54, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(90, 1, 3, 21, NULL, 16);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(91, 6, NULL, 55, 28, 55);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(92, 6, NULL, 55, 28, 56);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(93, 5, 28, 56, NULL, 57);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(94, 1, 24, 57, NULL, 58);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(95, 1, 29, 58, NULL, 59);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(96, 1, 30, 59, NULL, 60);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(97, 1, 24, 60, 29, 61);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(98, 1, 20, 61, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(99, 1, 22, 62, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(100, 1, 25, 52, 27, 62);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(101, 1, 22, 50, 25, 63);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(102, 1, 3, 63, 30, 64);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(103, 1, 11, 64, 14, 65);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(104, 1, 19, 65, 23, 66);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(105, 1, 11, 66, 31, 67);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(106, 1, 11, 67, 14, 68);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(107, 1, 31, 68, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(108, 5, 32, 69, NULL, 69);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(109, 1, 25, 52, 27, 70);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(110, 1, 11, 70, 14, 68);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(111, 1, 23, 71, 32, 71);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(112, 1, 19, 42, 23, 27);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(113, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(114, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(115, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(116, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(117, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(118, 1, 6, 29, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(119, 1, 33, NULL, 33, 72);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(120, 1, 3, 4, NULL, 73);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(121, 1, 3, 4, NULL, 73);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(122, 1, 7, 73, NULL, 74);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(123, 1, 25, 52, 27, 75);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(124, 5, 34, 74, NULL, 76);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(125, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(126, 1, 35, 75, NULL, 49);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(127, 1, 3, 16, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(128, 1, 3, 14, NULL, 78);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(129, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(130, 1, 36, NULL, NULL, 79);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(131, 1, 3, 31, NULL, 8);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(132, 1, 22, 76, NULL, 80);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(133, 1, 37, 77, NULL, 81);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(134, 1, 23, 78, NULL, 49);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(135, 1, 23, 79, 32, 82);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(136, 1, NULL, NULL, NULL, 83);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(137, 1, NULL, NULL, NULL, 83);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(138, 1, 25, 52, 27, 84);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(139, 1, 25, 80, NULL, 85);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(140, 1, 25, 81, 34, 86);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(141, 1, 25, 52, 27, 70);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(142, 1, 3, NULL, NULL, 27);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(143, 1, 19, 42, 23, 87);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(144, 1, 12, NULL, 22, 88);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(145, 1, 12, NULL, 22, 89);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(146, 1, 12, NULL, 22, 90);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(147, 1, 19, 82, 23, 91);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(148, 1, 19, 83, 23, 92);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(149, 1, NULL, NULL, NULL, 93);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(150, 1, 31, NULL, NULL, 94);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(151, 1, 38, 16, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(152, 1, 3, 14, NULL, 78);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(153, 1, 3, 4, NULL, 73);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(154, 1, 23, NULL, NULL, 95);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(155, 1, 23, 79, 32, 96);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(156, 1, 23, 84, NULL, 97);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(157, 1, 23, 71, NULL, 97);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(158, 1, 3, 85, NULL, 98);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(159, 1, 24, 49, NULL, 50);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(160, 1, 24, 49, NULL, 50);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(161, 1, 3, 86, NULL, 99);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(162, 1, 3, 86, NULL, 99);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(163, 1, 31, 87, NULL, 100);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(164, 1, 3, 18, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(165, 1, 39, 88, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(166, 1, 3, NULL, NULL, 27);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(167, 1, 23, 71, NULL, 97);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(168, 1, 23, NULL, NULL, 101);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(169, 1, 23, NULL, NULL, 49);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(170, 1, 3, 89, 35, 102);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(171, 1, 40, 90, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(172, 1, 3, 19, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(173, 1, 21, 91, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(174, 1, 6, 92, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(175, 1, 3, NULL, NULL, 103);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(176, 1, 27, NULL, 36, 104);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(177, 1, NULL, NULL, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(178, 1, 24, 57, NULL, 58);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(179, 1, 6, NULL, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(180, 1, 41, 93, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(181, 1, 21, 91, NULL, 105);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(182, 1, 21, 94, NULL, 106);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(183, 1, 35, NULL, NULL, 107);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(184, 1, 4, NULL, NULL, 108);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(185, 1, 3, 95, NULL, 109);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(186, 1, 19, 96, 23, 110);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(187, 1, 15, 97, NULL, 33);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(188, 1, 19, 98, 23, 111);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(189, 1, 6, 29, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(190, 1, 3, NULL, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(191, 1, 3, 99, NULL, 73);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(192, 1, 5, 100, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(193, 1, 42, 101, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(194, 1, 15, 97, NULL, 33);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(195, 1, 15, 97, NULL, 33);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(196, 1, 3, 18, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(197, 1, 3, NULL, NULL, 113);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(198, 1, 3, NULL, NULL, 113);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(199, 1, 3, 18, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(200, 1, 3, NULL, NULL, 113);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(201, 1, 31, 68, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(202, 1, 3, NULL, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(203, 1, 5, 100, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(204, 1, 5, 102, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(205, 1, 4, 103, NULL, 114);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(206, 1, 3, 104, NULL, 115);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(207, 1, 5, 102, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(208, 1, 3, 105, 37, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(209, 1, 3, 86, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(210, 1, 43, NULL, NULL, 116);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(211, 1, 3, 19, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(212, 1, 3, 12, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(213, 1, 3, 19, NULL, 17);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(214, 4, 9, 23, NULL, 18);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(215, 1, 3, 24, 12, 19);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(216, 1, 3, 19, 13, 20);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(217, 1, 3, 25, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(218, 1, 10, 26, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(219, 1, 6, 27, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(220, 1, 11, 28, 14, 21);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(221, 1, 6, NULL, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(222, 1, 6, 29, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(223, 1, NULL, NULL, NULL, 22);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(224, 1, 12, NULL, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(225, 1, 12, NULL, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(226, 1, 13, NULL, NULL, 23);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(227, 1, 14, 30, NULL, 24);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(228, 1, 3, 4, NULL, 25);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(229, 1, 3, 31, 15, 26);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(230, 1, 3, 25, NULL, 27);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(231, 1, 3, 32, 16, 28);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(232, 1, 3, 33, 17, 29);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(233, 1, 3, 33, 17, 30);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(234, 1, 3, 33, 17, 31);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(235, 1, 3, 33, 17, 32);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(236, 1, 15, 34, NULL, 33);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(237, 5, 16, 35, NULL, 34);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(238, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(239, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(240, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(241, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(242, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(243, 6, NULL, 37, 18, 36);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(244, 4, 17, NULL, 19, 37);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(245, 4, 17, 38, 20, 38);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(246, 4, 18, 39, NULL, 39);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(247, 4, 9, NULL, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(248, 1, 11, 40, 14, 40);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(249, 1, 3, 41, 21, 41);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(250, 1, 3, 41, NULL, 41);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(251, 1, 12, NULL, 22, 42);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(252, 1, 19, 42, 23, 43);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(253, 1, 3, 43, 24, 44);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(254, 1, 3, 44, NULL, 45);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(255, 1, 20, 45, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(256, 1, 3, 18, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(257, 1, 21, 46, NULL, 46);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(258, 1, 19, 47, 23, 47);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(259, 1, 22, NULL, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(260, 1, 23, 48, NULL, 49);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(261, 1, 24, 49, NULL, 50);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(262, 1, 22, 50, 25, 51);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(263, 1, 25, 51, 26, 52);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(264, 1, 25, 52, 27, 53);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(265, 1, 12, NULL, 22, 54);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(266, 1, 26, 53, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(267, 1, 3, 12, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(268, 1, 3, 19, NULL, 17);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(269, 4, 9, 23, NULL, 18);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(270, 1, 3, 24, 12, 19);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(271, 1, 3, 19, 13, 20);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(272, 1, 3, 25, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(273, 1, 10, 26, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(274, 1, 6, 27, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(275, 1, 11, 28, 14, 21);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(276, 1, 6, NULL, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(277, 1, 6, 29, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(278, 1, NULL, NULL, NULL, 22);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(279, 1, 12, NULL, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(280, 1, 12, NULL, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(281, 1, 13, NULL, NULL, 23);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(282, 1, 14, 30, NULL, 24);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(283, 1, 3, 4, NULL, 25);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(284, 1, 3, 31, 15, 26);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(285, 1, 3, 25, NULL, 27);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(286, 1, 3, 32, 16, 28);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(287, 1, 3, 33, 17, 29);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(288, 1, 3, 33, 17, 30);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(289, 1, 3, 33, 17, 31);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(290, 1, 3, 33, 17, 32);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(291, 1, 15, 34, NULL, 33);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(292, 5, 16, 35, NULL, 34);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(293, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(294, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(295, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(296, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(297, 1, 13, 36, NULL, 35);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(298, 6, NULL, 37, 18, 36);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(299, 4, 17, NULL, 19, 37);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(300, 4, 17, 38, 20, 38);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(301, 4, 18, 39, NULL, 39);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(302, 4, 9, NULL, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(303, 1, 11, 40, 14, 40);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(304, 1, 3, 41, 21, 41);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(305, 1, 3, 41, NULL, 41);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(306, 1, 12, NULL, 22, 42);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(307, 1, 19, 42, 23, 43);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(308, 1, 3, 43, 24, 44);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(309, 1, 3, 44, NULL, 45);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(310, 1, 20, 45, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(311, 1, 3, 18, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(312, 1, 21, 46, NULL, 46);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(313, 1, 19, 47, 23, 47);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(314, 1, 22, NULL, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(315, 1, 23, 48, NULL, 49);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(316, 1, 24, 49, NULL, 50);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(317, 1, 22, 50, 25, 51);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(318, 1, 25, 51, 26, 52);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(319, 1, 25, 52, 27, 53);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(320, 1, 12, NULL, 22, 54);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(321, 1, 26, 53, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(322, 1, 27, 54, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(323, 1, 3, 21, NULL, 16);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(324, 6, NULL, 55, 28, 55);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(325, 6, NULL, 55, 28, 56);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(326, 5, 28, 56, NULL, 57);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(327, 1, 24, 57, NULL, 58);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(328, 1, 29, 58, NULL, 59);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(329, 1, 30, 59, NULL, 60);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(330, 1, 24, 60, 29, 61);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(331, 1, 20, 61, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(332, 1, 22, 62, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(333, 1, 25, 52, 27, 62);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(334, 1, 22, 50, 25, 63);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(335, 1, 3, 63, 30, 64);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(336, 1, 11, 64, 14, 65);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(337, 1, 19, 65, 23, 66);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(338, 1, 11, 66, 31, 67);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(339, 1, 11, 67, 14, 68);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(340, 1, 31, 68, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(341, 5, 32, 69, NULL, 69);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(342, 1, 25, 52, 27, 70);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(343, 1, 11, 70, 14, 68);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(344, 1, 23, 71, 32, 71);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(345, 1, 19, 42, 23, 27);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(346, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(347, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(348, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(349, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(350, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(351, 1, 6, 29, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(352, 1, 33, NULL, 33, 72);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(353, 1, 3, 4, NULL, 73);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(354, 1, 3, 4, NULL, 73);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(355, 1, 7, 73, NULL, 74);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(356, 1, 25, 52, 27, 75);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(357, 5, 34, 74, NULL, 76);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(358, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(359, 1, 35, 75, NULL, 49);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(360, 1, 3, 16, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(361, 1, 3, 14, NULL, 78);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(362, 1, 22, 72, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(363, 1, 36, NULL, NULL, 79);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(364, 1, 3, 31, NULL, 8);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(365, 1, 22, 76, NULL, 80);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(366, 1, 37, 77, NULL, 81);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(367, 1, 23, 78, NULL, 49);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(368, 1, 23, 79, 32, 82);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(369, 1, NULL, NULL, NULL, 83);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(370, 1, NULL, NULL, NULL, 83);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(371, 1, 25, 52, 27, 84);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(372, 1, 25, 80, NULL, 85);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(373, 1, 25, 81, 34, 86);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(374, 1, 25, 52, 27, 70);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(375, 1, 3, NULL, NULL, 27);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(376, 1, 19, 42, 23, 87);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(377, 1, 12, NULL, 22, 88);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(378, 1, 12, NULL, 22, 89);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(379, 1, 12, NULL, 22, 90);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(380, 1, 19, 82, 23, 91);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(381, 1, 19, 83, 23, 92);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(382, 1, NULL, NULL, NULL, 93);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(383, 1, 31, NULL, NULL, 94);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(384, 1, 38, 16, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(385, 1, 3, 14, NULL, 78);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(386, 1, 3, 4, NULL, 73);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(387, 1, 23, NULL, NULL, 95);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(388, 1, 23, 79, 32, 96);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(389, 1, 23, 84, NULL, 97);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(390, 1, 23, 71, NULL, 97);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(391, 1, 3, 85, NULL, 98);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(392, 1, 24, 49, NULL, 50);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(393, 1, 24, 49, NULL, 50);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(394, 1, 3, 86, NULL, 99);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(395, 1, 3, 86, NULL, 99);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(396, 1, 31, 87, NULL, 100);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(397, 1, 3, 18, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(398, 1, 39, 88, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(399, 1, 3, NULL, NULL, 27);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(400, 1, 23, 71, NULL, 97);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(401, 1, 23, NULL, NULL, 101);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(402, 1, 23, NULL, NULL, 49);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(403, 1, 3, 89, 35, 102);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(404, 1, 40, 90, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(405, 1, 3, 19, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(406, 1, 21, 91, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(407, 1, 6, 92, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(408, 1, 3, NULL, NULL, 103);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(409, 1, 27, NULL, 36, 104);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(410, 1, NULL, NULL, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(411, 1, 24, 57, NULL, 58);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(412, 1, 6, NULL, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(413, 1, 41, 93, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(414, 1, 21, 91, NULL, 105);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(415, 1, 21, 94, NULL, 106);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(416, 1, 35, NULL, NULL, 107);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(417, 1, 4, NULL, NULL, 108);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(418, 1, 3, 95, NULL, 109);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(419, 1, 19, 96, 23, 110);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(420, 1, 15, 97, NULL, 33);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(421, 1, 19, 98, 23, 111);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(422, 1, 6, 29, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(423, 1, 3, NULL, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(424, 1, 3, 99, NULL, 73);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(425, 1, 5, 100, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(426, 1, 42, 101, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(427, 1, 15, 97, NULL, 33);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(428, 1, 15, 97, NULL, 33);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(429, 1, 3, 18, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(430, 1, 3, NULL, NULL, 113);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(431, 1, 3, NULL, NULL, 113);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(432, 1, 3, 18, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(433, 1, 3, NULL, NULL, 113);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(434, 1, 31, 68, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(435, 1, 3, NULL, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(436, 1, 5, 100, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(437, 1, 5, 102, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(438, 1, 4, 103, NULL, 114);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(439, 1, 3, 104, NULL, 115);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(440, 1, 5, 102, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(441, 1, 3, 105, 37, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(442, 1, 3, 86, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(443, 1, 43, NULL, NULL, 116);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(444, 1, 3, 19, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(445, 1, 3, 86, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(446, 1, 3, NULL, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(447, 1, 6, 29, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(448, 1, 3, 86, NULL, 117);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(449, 1, 3, 19, 38, 118);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(450, 6, NULL, 106, 39, 119);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(451, 6, NULL, 106, 39, 120);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(452, 6, NULL, 106, 39, 121);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(453, 1, 3, 18, 40, 122);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(454, 1, 3, 14, NULL, 78);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(455, 1, 3, 63, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(456, 1, 3, 14, NULL, 7);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(457, 1, 3, 107, NULL, 123);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(458, 1, 21, 108, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(459, 1, 3, 25, 41, 124);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(460, 1, 3, 25, NULL, 27);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(461, 1, 3, 86, NULL, 117);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(462, 1, 3, 86, 42, 125);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(463, 1, 44, 109, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(464, 1, 19, 98, 23, 126);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(465, 1, 3, 19, NULL, 31);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(466, 7, NULL, 110, 43, 127);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(467, 1, 3, 41, NULL, 78);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(468, 1, 3, NULL, NULL, 6);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(469, 1, 3, 4, NULL, 25);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(470, 1, 3, 14, NULL, 78);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(471, 1, 3, NULL, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(472, 1, 3, 111, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(473, 1, 19, 96, 23, 128);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(474, 1, 3, 20, 11, 15);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(475, 1, 3, 16, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(476, 1, 3, 16, 9, 129);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(477, 1, 3, 19, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(478, 1, 3, 19, NULL, 118);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(479, 1, 3, 25, 41, 130);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(480, 1, 3, 112, 44, 4);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(481, 1, 3, 9, 45, 6);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(482, 1, 3, 113, NULL, 131);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(483, 1, 6, NULL, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(484, 1, 3, 63, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(485, 1, 3, 19, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(486, 1, 3, 18, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(487, 1, 19, 96, 23, 132);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(488, 1, 3, NULL, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(489, 1, 15, NULL, NULL, 93);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(490, 1, 15, NULL, NULL, 133);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(491, 1, 3, 16, 9, 134);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(492, 1, 3, 86, NULL, 135);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(493, 1, 3, NULL, NULL, 117);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(494, 1, 19, 47, 23, 136);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(495, 1, 19, 98, 23, 137);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(496, 3, NULL, 17, 10, 138);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(497, 3, NULL, 17, 10, 139);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(498, 3, NULL, 17, 10, 13);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(499, 3, NULL, 17, 10, 139);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(500, 1, 30, 114, NULL, 140);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(501, 1, 24, 115, NULL, 141);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(502, 1, 24, 57, NULL, 58);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(503, 1, 15, NULL, NULL, 133);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(504, 1, 15, NULL, NULL, 133);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(505, 1, 45, 116, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(506, 1, 3, NULL, NULL, 115);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(507, 1, 3, NULL, NULL, 113);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(508, 1, 44, NULL, NULL, 142);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(509, 1, 42, 117, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(510, 1, 42, 117, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(511, 1, 42, 117, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(512, 1, 3, 16, 9, 12);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(513, 1, 44, 118, NULL, 118);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(514, 1, 46, 119, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(515, 1, 3, 120, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(516, 1, 3, 121, 46, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(517, 1, 3, NULL, NULL, 3);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(518, 1, 3, 111, NULL, 27);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(519, 1, 20, 122, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(520, 1, 6, 123, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(521, 1, 20, 122, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(522, 1, 5, 100, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(523, 1, 3, 16, NULL, 11);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(524, 1, 44, 124, NULL, 142);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(525, 1, 19, 98, 23, 143);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(526, 1, 19, 96, 47, 144);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(527, 1, 19, 98, 23, 145);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(528, 1, 3, 3, 5, 131);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(529, 1, 3, 31, 48, 146);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(530, 1, 19, 82, 23, 147);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(531, 5, 47, 125, NULL, 148);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(532, 5, 47, 125, NULL, 148);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(533, 5, 48, NULL, 49, 149);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(534, 1, NULL, NULL, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(535, 5, 49, NULL, 50, 150);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(536, 8, 50, NULL, 51, 151);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(537, 1, 19, 42, 23, 43);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(538, 1, 3, 21, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(539, 6, NULL, 126, 52, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(540, 3, NULL, 127, 53, 152);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(541, 1, 13, 128, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(542, 1, 3, 86, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(543, 1, 51, NULL, NULL, 153);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(544, 1, 19, 83, 23, 154);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(545, 1, 19, 129, 23, 155);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(546, 1, 19, 98, 23, 156);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(547, 1, 22, 50, 25, 157);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(548, 1, 22, 50, 25, 158);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(549, 1, 22, 50, 25, 158);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(550, 1, 22, 50, 25, 159);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(551, 1, 22, 50, 25, 160);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(552, 1, 24, NULL, NULL, 161);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(553, 1, 22, 50, 25, 162);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(554, 1, 22, 50, 25, 163);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(555, 1, 19, 82, 23, 164);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(556, 1, 19, 129, 23, 165);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(557, 1, 19, 130, 23, 166);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(558, 1, 22, 50, 25, 167);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(559, 1, 19, 82, 23, 168);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(560, 1, 22, 50, 25, 169);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(561, 1, 22, 50, 25, 170);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(562, 1, 22, 50, 25, 171);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(563, 1, 22, 50, 25, 172);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(564, 1, 22, 50, 25, 173);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(565, 1, 22, 50, 25, 174);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(566, 1, 22, 50, 25, 175);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(567, 1, 22, 50, 25, 175);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(568, 1, 19, 129, 23, 176);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(569, 1, 19, 98, 23, 177);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(570, 1, 3, 14, NULL, 178);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(571, 1, 3, 14, NULL, 7);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(572, 1, 19, 98, 23, 179);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(573, 1, 3, 16, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(574, 2, 8, NULL, NULL, 10);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(575, 5, 52, NULL, NULL, 180);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(576, 1, 7, 15, NULL, 9);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(577, 1, 7, NULL, NULL, 9);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(578, 1, 3, 4, NULL, 181);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(579, 1, 3, 25, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(580, 1, 3, 20, NULL, 15);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(581, 9, 53, 131, NULL, 182);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(582, 1, 3, 132, 54, 26);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(583, 1, 3, 86, NULL, 117);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(584, 1, 3, 132, NULL, 100);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(585, 1, 3, 25, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(586, 1, 24, NULL, NULL, 183);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(587, 1, 24, NULL, NULL, 183);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(588, 1, 7, 15, NULL, 9);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(589, 1, 3, 14, NULL, 78);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(590, 1, 22, 50, 25, 175);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(591, 1, 22, NULL, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(592, 1, 30, 133, NULL, 60);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(593, 1, 3, 132, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(594, 1, 3, 104, NULL, 115);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(595, 1, 24, 134, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(596, 1, 3, 89, NULL, 184);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(597, 1, 3, 63, NULL, 113);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(598, 1, 3, NULL, NULL, 8);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(599, 1, 3, 25, 41, 185);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(600, 1, 3, 21, NULL, 16);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(601, 6, NULL, 135, 55, 186);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(602, 1, 39, NULL, 56, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(603, 1, 5, 22, NULL, 1);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(604, 1, 3, 136, 57, 187);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(605, 1, 5, 22, NULL, 1);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(606, 1, 44, 137, 58, 188);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(607, 1, 3, 18, NULL, 14);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(608, 1, 3, 7, NULL, 189);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(609, 1, 3, 14, NULL, 78);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(610, 1, 3, 7, NULL, 190);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(611, 1, 19, 96, 23, 191);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(612, 5, 54, 138, 59, 192);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(613, 1, 55, 139, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(614, 1, 3, 86, NULL, 117);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(615, 1, 3, 14, NULL, 7);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(616, 1, 3, 21, NULL, 16);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(617, 1, 3, 14, NULL, 7);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(618, 1, 3, 14, NULL, 7);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(619, 1, 3, 14, NULL, 7);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(620, 1, 3, 14, NULL, 7);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(621, 1, 3, 132, NULL, 106);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(622, 1, 3, 21, NULL, 16);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(623, 1, 3, 32, NULL, 28);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(624, 1, 3, 140, NULL, 131);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(625, 1, 3, 132, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(626, 1, 3, 7, NULL, 6);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(627, 1, 31, 141, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(628, 1, 3, 16, 60, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(629, 1, 3, 16, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(630, 1, 6, 27, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(631, 1, 6, NULL, NULL, 5);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(632, 1, 3, 14, NULL, 178);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(633, 1, 3, 7, NULL, 6);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(634, 1, 3, 113, NULL, 193);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(635, 1, 3, 142, 61, 194);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(636, 1, 19, 98, 23, 195);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(637, 1, 3, 13, 8, 4);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(638, 1, 5, 22, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(639, 1, 5, 6, NULL, 15);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(640, 1, 5, 22, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(641, 1, 5, 6, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(642, 1, 5, 146, 64, 15);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(643, 1, 5, 102, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(644, 1, 6, NULL, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(645, 1, 3, 33, 17, 196);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(646, 1, 3, 33, 17, 197);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(647, 1, 5, 102, NULL, 112);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(648, 1, 5, 6, NULL, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(649, 1, 5, 102, NULL, 15);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(650, 1, 3, 147, 65, 198);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(651, 1, 3, 147, 65, 198);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(652, 1, 5, 148, 64, NULL);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(653, 1, 5, 22, NULL, 1);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(654, 1, 5, 22, NULL, 77);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(655, 1, 19, 98, 23, 199);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(656, 1, 3, 25, NULL, 27);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(657, 1, 22, 149, NULL, 48);
INSERT INTO address (id, country_id, area_low_id, area_high_id, locality_id, route_id) VALUES(658, 1, 5, NULL, NULL, 200);

DROP TABLE IF EXISTS area_high;
CREATE TABLE IF NOT EXISTS area_high (
  id int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  area_low_id int(11) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY `name` (`name`),
  KEY area_low_id_idx (area_low_id)
) TYPE=InnoDB ;

INSERT INTO area_high (id, `name`, area_low_id) VALUES(1, 'Боровский р-н', 1);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(2, 'Подольский р-н', 2);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(3, 'городской округ город Балашиха', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(4, 'Одинцовский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(5, 'Угранский район', 4);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(6, 'Малоярославецкий район', 5);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(7, 'Волоколамский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(8, 'Лотошинский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(9, 'Клинский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(10, 'Перемышльский район', 5);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(11, 'Дзержинский район', 5);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(12, 'Коломенский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(13, 'Чеховский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(14, 'Солнечногорский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(15, 'Рыльский район', 7);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(16, 'Ленинский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(17, 'Рига', NULL);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(18, 'Подольский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(19, 'Раменский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(20, 'Наро-Фоминский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(21, 'Дмитровский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(22, 'Юхновский район', 5);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(23, 'Илийский район', 9);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(24, 'городской округ город Жуковский', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(25, 'городской округ город Домодедово', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(26, 'Демянский район', 10);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(27, 'Енотаевский район', 6);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(28, 'Кировский Адм. район', 11);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(29, 'Камызякский район', 6);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(30, 'Новосибирский район', 14);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(31, 'Истринский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(32, 'Серебряно-Прудский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(33, 'городской округ город Коломна', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(34, 'Пучежский район', 15);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(35, 'Корсунь-Шевченковский', 16);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(36, 'Темрюкский район', 13);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(37, 'Южное Саво', NULL);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(38, 'Enbekshilder', 17);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(39, 'Павлодар', 18);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(40, 'Центральный Адм. район', 11);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(41, 'Красногорский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(42, 'АО Южный', 19);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(43, 'городской округ город Котельники', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(44, 'Павлово-Посадский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(45, 'Ловозерский район', 20);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(46, 'Вытегорский район', 21);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(47, 'АО Северо-Западный', 19);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(48, 'Чаплыгинский район', 23);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(49, 'Осташковский район', 24);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(50, 'городской округ Нижний Новгород', 22);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(51, 'Гурьевский район', 25);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(52, 'Калининград', 25);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(53, 'Тернейский район', 26);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(54, 'Полтавский район', 27);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(55, 'Lapland', NULL);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(56, 'Заречненский', 28);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(57, 'Весьегонский район', 24);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(58, 'Новозыбковский район', 29);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(59, 'Выборгский район', 30);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(60, 'городской округ город Тверь', 24);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(61, 'Терский район', 20);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(62, 'Кстовский район', 22);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(63, 'Серпуховский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(64, 'Красногвардейский Адм. район', 11);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(65, 'АО Западный', 19);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(66, 'Красносельский Адм. район', 11);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(67, 'Адмиралтейский Адм. район', 11);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(68, 'Рыбинский район', 31);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(69, 'Волчанский', 32);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(70, 'Московский Адм. район', 11);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(71, 'Липецкий район', 23);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(72, 'Воротынский район', 22);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(73, 'Тимский район', 7);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(74, 'Килийский', 34);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(75, 'Ефремовский район', 35);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(76, 'Дальнеконстантиновский район', 22);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(77, 'Лаишевский район', 37);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(78, 'Лев-Толстовский район', 23);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(79, 'Грязинский район', 23);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(80, 'Гвардейский раон', 25);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(81, 'Зеленоградский район', 25);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(82, 'АО Центральный', 19);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(83, 'АО Восточный', 19);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(84, 'Хлевенский район', 23);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(85, 'Орехово-Зуевский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(86, 'Ногинский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(87, 'Переславский район', 31);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(88, 'Лоухский район', 39);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(89, 'городской округ город Протвино', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(90, 'Собинский район', 40);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(91, 'Шекснинский район', 21);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(92, 'Харабалинский район', 6);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(93, 'Чебоксарский район', 41);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(94, 'Череповецкий район', 21);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(95, 'Озерский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(96, 'АО Юго-Западный', 19);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(97, 'Юрьевецкий район', 15);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(98, 'АО Юго-Восточный', 19);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(99, 'Можайский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(100, 'Медынский район', 5);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(101, 'Староюрьевский район', 42);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(102, 'Боровский район', 5);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(103, 'Сычевский район', 4);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(104, 'Шаховской район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(105, 'Люберецкий район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(106, 'Kymenlaakso', NULL);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(107, 'Мытищинский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(108, 'Кичменгско-Городецкий район', 21);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(109, 'Шиловский район', 44);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(110, 'Lääne-Virumaa', NULL);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(111, 'Ступинский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(112, 'городской округ город Железнодорожный', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(113, 'Щелковский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(114, 'Волховский район', 30);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(115, 'Кимрский район', 24);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(116, 'Еткульский район', 45);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(117, 'Бондарский район', 42);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(118, 'Клепиковский район', 44);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(119, 'Ногликский район', 46);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(120, 'Зарайский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(121, 'Луховицкий район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(122, 'Кольский район', 20);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(123, 'Ахтубинский район', 6);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(124, 'Касимовский район', 44);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(125, 'Солонянский', 47);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(126, 'Åland', NULL);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(127, 'Aizkraukles District', NULL);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(128, 'Приморско-Ахтарский район', 13);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(129, 'АО Северный', 19);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(130, 'АО Северо-Восточный', 19);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(131, 'Манавгат', 53);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(132, 'Сергиево-Посадский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(133, 'Приозерский район', 30);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(134, 'Бологовский район', 24);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(135, 'Кайнуу', NULL);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(136, 'городской округ город Лыткарино', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(137, 'городской округ город Рязань', 44);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(138, 'Киев', 54);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(139, 'Иркутский район', 55);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(140, 'городской округ город Черноголовка', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(141, 'Некоузский район', 31);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(142, 'городской округ город Лобня', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(146, 'городской округ город Обнинск', 5);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(147, 'Пушкинский район', 3);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(148, 'Жуковский район', 5);
INSERT INTO area_high (id, `name`, area_low_id) VALUES(149, 'Лысковский район', 22);

DROP TABLE IF EXISTS area_low;
CREATE TABLE IF NOT EXISTS area_low (
  id int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  country_id int(11) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY `name` (`name`),
  KEY country_id_idx (country_id)
) TYPE=InnoDB ;

INSERT INTO area_low (id, `name`, country_id) VALUES(1, 'Калужская обл', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(2, 'Московская обл', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(3, 'Московская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(4, 'Смоленская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(5, 'Калужская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(6, 'Астраханская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(7, 'Курская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(8, 'Гродненская область', 2);
INSERT INTO area_low (id, `name`, country_id) VALUES(9, 'Алматинская область', 4);
INSERT INTO area_low (id, `name`, country_id) VALUES(10, 'Новгородская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(11, 'город Санкт-Петербург', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(12, 'Пермский край', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(13, 'Краснодарский край', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(14, 'Новосибирская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(15, 'Ивановская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(16, 'Черкасская область', 5);
INSERT INTO area_low (id, `name`, country_id) VALUES(17, 'Акмолинская область', 4);
INSERT INTO area_low (id, `name`, country_id) VALUES(18, 'Павлодарская область', 4);
INSERT INTO area_low (id, `name`, country_id) VALUES(19, 'Москва', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(20, 'Мурманская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(21, 'Вологодская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(22, 'Нижегородская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(23, 'Липецкая область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(24, 'Тверская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(25, 'Калининградская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(26, 'Приморский край', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(27, 'Омская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(28, 'Ровенская область', 5);
INSERT INTO area_low (id, `name`, country_id) VALUES(29, 'Брянская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(30, 'Ленинградская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(31, 'Ярославская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(32, 'Харьковская область', 5);
INSERT INTO area_low (id, `name`, country_id) VALUES(33, 'Самарская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(34, 'Одесская область', 5);
INSERT INTO area_low (id, `name`, country_id) VALUES(35, 'Тульская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(36, 'Алтайский край', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(37, 'республика Татарстан', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(38, 'Волгоградская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(39, 'республика Карелия', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(40, 'Владимирская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(41, 'республика Чувашия', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(42, 'Тамбовская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(43, 'Тюменская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(44, 'Рязанская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(45, 'Челябинская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(46, 'Сахалинская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(47, 'Днепропетровская область', 5);
INSERT INTO area_low (id, `name`, country_id) VALUES(48, 'Запорожская область', 5);
INSERT INTO area_low (id, `name`, country_id) VALUES(49, 'Автономная Pеспублика Крым', 5);
INSERT INTO area_low (id, `name`, country_id) VALUES(50, 'Maputo City', 8);
INSERT INTO area_low (id, `name`, country_id) VALUES(51, 'Свердловская область', 1);
INSERT INTO area_low (id, `name`, country_id) VALUES(52, 'Луганская область', 5);
INSERT INTO area_low (id, `name`, country_id) VALUES(53, 'Анталия', 9);
INSERT INTO area_low (id, `name`, country_id) VALUES(54, 'Киев', 5);
INSERT INTO area_low (id, `name`, country_id) VALUES(55, 'Иркутская область', 1);

DROP TABLE IF EXISTS city;
CREATE TABLE IF NOT EXISTS city (
  id int(11) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  region_id int(11) default NULL,
  weight int(11) NOT NULL default '0',
  PRIMARY KEY  (id),
  UNIQUE KEY uniq_city_idx (region_id,`name`),
  KEY region_id_idx (region_id)
) TYPE=InnoDB ;

INSERT INTO city (id, `name`, region_id, weight) VALUES(1, 'Абаза', 1, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2, 'Абакан', 1, 164000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(3, 'Аскиз', 1, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(4, 'Белый Яр', 1, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(5, 'Бея', 1, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(6, 'Боград', 1, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(7, 'Копьево', 1, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(8, 'Саяногорск', 1, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(9, 'Сорск', 1, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(10, 'Таштып', 1, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(11, 'Усть-Абакан', 1, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(12, 'Черногорск', 1, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(13, 'Шира', 1, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(14, 'Абан', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(15, 'Агинское', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(16, 'Ачинск', 2, 110000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(17, 'Балахта', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(18, 'Березовка', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(19, 'Бирюлюсы', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(20, 'Боготол', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(21, 'Богучаны', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(22, 'Большая Мурта', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(23, 'Большой Улуй', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(24, 'Бородино', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(25, 'Дзержинск', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(26, 'Дивногорск', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(27, 'Дудинка', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(28, 'Емельяново', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(29, 'Енисейск', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(30, 'Ермаковское', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(31, 'Железногорск', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(32, 'Заозерный', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(33, 'Зеленогорск', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(34, 'Идринское', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(35, 'Иланский', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(36, 'Ирбейское', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(37, 'Казачинское', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(38, 'Канск', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(39, 'Каратузское', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(40, 'Кедровый', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(41, 'Кодинск', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(42, 'Козулька', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(43, 'Краснотуранск', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(44, 'Красноярск', 2, 972000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(45, 'Курагино', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(46, 'Лесосибирск', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(47, 'Минусинск', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(48, 'Назарово', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(49, 'Нижний Ингаш', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(50, 'Новобирилюссы', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(51, 'Новоселово', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(52, 'Норильск', 2, 202000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(53, 'Партизанское', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(54, 'Пировское', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(55, 'Рыбинск', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(56, 'Сосновоборск', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(57, 'Сухобузимское', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(58, 'Таилтып', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(59, 'Тасеево', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(60, 'Тюхтет', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(61, 'Ужур', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(62, 'Уяр', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(63, 'Шалинское', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(64, 'Шарыпово', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(65, 'Шушенское', 2, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(66, 'Абатский', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(67, 'Армизонское', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(68, 'Аромашево', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(69, 'Бердюжье', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(70, 'Большое Сорокино', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(71, 'Вагай', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(72, 'Викулово', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(73, 'Голышманово', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(74, 'Губкинский', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(75, 'Заводоуковск', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(76, 'Исетское', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(77, 'Ишим', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(78, 'Казанское', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(79, 'Междуреченский', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(80, 'Муравленко', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(81, 'Нижняя Тавда', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(82, 'Ноябрьск', 3, 111000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(83, 'Омутинский', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(84, 'Сладково', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(85, 'Тарко-сале', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(86, 'Тобольск', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(87, 'Тюмень', 3, 580000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(88, 'Уват', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(89, 'Упорово', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(90, 'Юргинское', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(91, 'Ялуторовск', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(92, 'Ярково', 3, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(93, 'Абдулино', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(94, 'Адамовка', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(95, 'Акбулак', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(96, 'Александровка', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(97, 'Асекеево', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(98, 'Беляевка', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(99, 'Бугуруслан', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(100, 'Бузулук', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(101, 'Гай', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(102, 'Грачевка', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(103, 'Домбаровский', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(104, 'Илек', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(105, 'Кваркено', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(106, 'Кувандык', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(107, 'Курманаевка', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(108, 'Матвеевка', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(109, 'Медногорск', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(110, 'Новоорск', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(111, 'Новосергиевка', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(112, 'Новотроицк', 4, 101000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(113, 'Октябрьское', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(114, 'Оренбург', 4, 526000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(115, 'Орск', 4, 245000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(116, 'Первомайский', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(117, 'Переволоцкий', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(118, 'Плешаново', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(119, 'Пономаревка', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(120, 'Сакмара', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(121, 'Саракташ', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(122, 'Светлый', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(123, 'Северное', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(124, 'Соль-Илецк', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(125, 'Сорочинск', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(126, 'Ташла', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(127, 'Тоцкое', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(128, 'Тюльган', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(129, 'Шарлык', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(130, 'Ясный', 4, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(131, 'Абинск', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(132, 'Адлер', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(133, 'Анапа', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(134, 'Апшеронск', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(135, 'Армавир', 5, 188000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(136, 'Аше', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(137, 'Белая Глина', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(138, 'Белореченск', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(139, 'Брюховецкая', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(140, 'Вардане', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(141, 'Выселки', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(142, 'Геленджик', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(143, 'Горячий Ключ', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(144, 'Гулькевичи', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(145, 'Динская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(146, 'Ейск', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(147, 'Кавказская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(148, 'Калининская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(149, 'Каневская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(150, 'Кореновск', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(151, 'Красноармейская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(152, 'Краснодар', 5, 713000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(153, 'Кропоткин', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(154, 'Крыловская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(155, 'Крымск', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(156, 'Кудепста', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(157, 'Курганинск', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(158, 'Кущевская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(159, 'Лабинск', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(160, 'Ленинградская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(161, 'Лоо', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(162, 'Мостовской', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(163, 'Новокубанск', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(164, 'Новопокровская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(165, 'Новороссийск', 5, 229000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(166, 'Отрадная', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(167, 'Павловская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(168, 'Приморско-Ахтарск', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(169, 'Приморье', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(170, 'Северская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(171, 'Славянск-на-Кубани', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(172, 'Сочи', 5, 342000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(173, 'Староминская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(174, 'Старощербиновская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(175, 'Тбилисская', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(176, 'Темрюк', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(177, 'Тимашевск', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(178, 'Тихорецк', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(179, 'Туапсе', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(180, 'Успенское', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(181, 'Усть-Лабинск', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(182, 'Хоста', 5, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(183, 'Авангардное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(184, 'Акулово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(185, 'Алеевка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(186, 'Александровка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(187, 'Алексеевка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(188, 'Бабушкино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(189, 'Багратионово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(190, 'Багратионовск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(191, 'Балтийск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(192, 'Бекенево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(193, 'Белкино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(194, 'Белый яр', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(195, 'Береговое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(196, 'Березовка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(199, 'Ближнее', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(200, 'Богатово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(201, 'Большаково', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(202, 'Большая Поляна', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(203, 'Большие Горки', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(204, 'Большое село', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(205, 'Борское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(206, 'Брянское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(207, 'Бычково', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(208, 'Васильково', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(209, 'Великолукское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(210, 'Верний бисер', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(211, 'Весново', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(212, 'Взморье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(213, 'Вишневка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(214, 'Вишневое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(215, 'Вишневское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(216, 'Вишневый', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(217, 'Владимирово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(218, 'Володаровка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(219, 'Волочаевское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(220, 'Вольное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(221, 'Воробьево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(222, 'Восод', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(223, 'Высокое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(225, 'Гаврилово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(226, 'Гастеллово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(227, 'Гвардейск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(228, 'Гвардейское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(229, 'Георгиевское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(230, 'Глушково', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(231, 'Головкино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(232, 'Гончарово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(233, 'Гордое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(234, 'Грачевка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(235, 'Грибки', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(236, 'Громово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(237, 'Гурьевск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(238, 'Гусев', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(239, 'Гусево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(240, 'Дальнее', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(243, 'Дворкино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(244, 'Демидово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(245, 'Дивное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(247, 'Доброволец', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(248, 'Добровольск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(249, 'Доваторовка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(250, 'Долгоруково', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(251, 'Домново', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(252, 'Дорожное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(253, 'Дружба', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(254, 'Дубровка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(255, 'Дунаевка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(256, 'Еловое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(257, 'Ельники', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(258, 'Ельняки', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(259, 'Ермаково', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(260, 'Ершово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(261, 'Жаворонково', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(262, 'Железнодорожный', 6, 129000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(263, 'Желудево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(264, 'Жилино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(265, 'Журавлевка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(266, 'Забарье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(267, 'Загородный', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(268, 'Загорское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(269, 'Зайцево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(270, 'Залесье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(271, 'Заливино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(272, 'Заливное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(273, 'Заовражное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(274, 'Заозерье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(275, 'Заостровье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(276, 'Западный', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(277, 'Заповедное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(278, 'Заречное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(279, 'Заречье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(281, 'Звеньевое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(282, 'Зверево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(283, 'Зеленоградск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(284, 'Зеленое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(285, 'Знаменка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(286, 'Знаменск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(287, 'Зорино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(288, 'Извилино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(289, 'Изобильное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(290, 'Ильичевка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(292, 'Илюшино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(293, 'Исаково', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(294, 'Истровка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(295, 'Калининград', 6, 419000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(296, 'Калинино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(297, 'Калининское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(298, 'Калинково', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(299, 'Калиновка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(300, 'Калужское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(301, 'Каменка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(302, 'Каменское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(303, 'Канаш', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(304, 'Карамышево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(305, 'Каштановка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(306, 'Каштаново', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(308, 'Кирова', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(309, 'Кленовое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(310, 'Климовка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(311, 'Коврово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(312, 'Колосовка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(313, 'Комсомольск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(314, 'Константиновка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(315, 'Корнево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(316, 'Короленково', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(317, 'Кострово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(318, 'Костромино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(319, 'Костюковка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(320, 'Красногорское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(321, 'Красное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(322, 'Краснознаменск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(323, 'Краснолесье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(324, 'Красноолмский', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(325, 'Краснополье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(326, 'Краснополянское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(327, 'Красноторовка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(328, 'Краснофлотское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(329, 'Красноярское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(330, 'Красный бор', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(332, 'Красный Яр', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(333, 'Кромы', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(334, 'Кругловка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(335, 'Крылово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(336, 'Кубановка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(337, 'Куйбышевское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(338, 'Кумачово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(339, 'Курортное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(340, 'Ладушкин', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(341, 'Левобережное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(342, 'Лермонтово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(343, 'Лесное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(346, 'Линево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(347, 'Липняки', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(348, 'Липовка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(349, 'Липово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(350, 'Ломово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(351, 'Ломоносовка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(352, 'Луговое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(355, 'Луговское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(356, 'Лужки', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(357, 'Лунино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(359, 'Львовское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(360, 'Маевка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(361, 'Майское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(363, 'Малиники', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(364, 'Малиновка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(366, 'Маломожайское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(367, 'Малые Горки', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(368, 'Мальцево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(369, 'Мамоново', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(370, 'Маршальское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(371, 'Марьино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(372, 'Матросово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(373, 'Маяковское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(374, 'Медовое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(375, 'Междуречье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(376, 'Мельниково', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(377, 'Менделеево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(378, 'Миайлово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(379, 'Мичуринский', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(380, 'Мозырь', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(381, 'Моргуново', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(382, 'Мордовское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(383, 'Муромское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(384, 'Мысовка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(385, 'Нагорное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(386, 'Надеждино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(387, 'Наимово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(388, 'Невское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(389, 'Некрасово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(391, 'Неман', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(392, 'Неманское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(393, 'Нестеров', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(394, 'Нива', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(395, 'Нивенское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(396, 'Низовье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(397, 'Нилово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(398, 'Новая деревня', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(399, 'Новобобруйск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(400, 'Новогурьевское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(401, 'Новоколозное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(402, 'Новомосковский', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(403, 'Новомосковское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(404, 'Новоселово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(405, 'Новостроево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(407, 'Новостройка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(408, 'Овражье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(409, 'Озерки', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(411, 'Озерск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(412, 'Олеово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(413, 'Ольоватка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(414, 'Ольовка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(415, 'Оотное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(416, 'Ореовка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(417, 'Орловка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(418, 'Осиновка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(419, 'Островское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(420, 'Острогожское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(421, 'Отрадное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(422, 'Партизанское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(423, 'Пеньки', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(424, 'Первомайское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(426, 'Переславское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(427, 'Песочное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(428, 'Петино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(429, 'Петрово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(430, 'Пионерский', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(431, 'Победино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(432, 'Поваровка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(433, 'Пограничный', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(434, 'Подгорное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(435, 'Подгоровка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(436, 'Поддубное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(438, 'Поддубы', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(439, 'Поддубье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(440, 'Подлипово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(441, 'Покровское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(443, 'Покрышкино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(444, 'Полесск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(445, 'Полтавское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(446, 'Поречье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(447, 'Правдино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(448, 'Правдинск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(449, 'Прибрежное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(450, 'Привольное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(451, 'Пригородное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(453, 'Придорожное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(455, 'Приморск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(456, 'Приморье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(457, 'Приозерное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(459, 'Проладное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(460, 'Прооровка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(461, 'Прудное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(462, 'Пруды', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(463, 'Пятидорожное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(464, 'Разино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(465, 'Ракитино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(466, 'Рассвет', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(467, 'Ржевское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(468, 'Ровное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(469, 'Родники', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(470, 'Романово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(471, 'Россия', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(472, 'Рощино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(474, 'Ручьи', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(475, 'Рыбачий', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(476, 'Рыбкино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(477, 'Рябиновка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(478, 'Садовое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(480, 'Саранское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(481, 'Светлогорск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(482, 'Светлый', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(483, 'Свобода', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(484, 'Северный', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(486, 'Севское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(487, 'Семеново', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(488, 'Славинск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(489, 'Славск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(490, 'Славское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(491, 'Славяновка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(492, 'Славянское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(493, 'Советск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(494, 'Совозное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(495, 'Совозный', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(496, 'Сокольники', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(497, 'Солдатово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(499, 'Соловьево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(500, 'Солонцы', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(501, 'Сопкино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(502, 'Сосновка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(505, 'Стройный', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(506, 'Суворовка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(507, 'Суворово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(508, 'Талпаки', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(509, 'Тимирязево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(510, 'Тимофеевка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(511, 'Тимофеево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(512, 'Тишино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(513, 'Тростники', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(514, 'Тумановка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(515, 'Тургенево', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(516, 'Тюленино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(517, 'Узловое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(518, 'Ульяново', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(519, 'Ушаковка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(520, 'Ушаково', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(521, 'Февральское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(522, 'Федотово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(523, 'Филипповка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(524, 'Фрунзенское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(525, 'Фурмановка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(526, 'Фурманово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(527, 'Хлебниково', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(528, 'Холмогоровка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(529, 'Холмогорье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(530, 'Холмы', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(531, 'Чайкино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(532, 'Чеово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(533, 'Черемуино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(534, 'Чернышевское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(535, 'Черняховск', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(536, 'Чистополье', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(537, 'Чистые пруды', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(538, 'Шевченко', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(539, 'Широкое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(540, 'Шолоово', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(541, 'Шоссейный', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(542, 'Щегловка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(543, 'Щеглы', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(544, 'Юдино', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(545, 'Южный', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(546, 'Яблоневка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(548, 'Яблоновка', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(549, 'Ягодное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(550, 'Янтарный', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(551, 'Ярки', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(552, 'Яровое', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(553, 'Ярославское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(554, 'Ясеньское', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(555, 'Ясная поляна', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(556, 'Ясное', 6, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(557, 'Агаповка', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(558, 'Аргаяш', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(559, 'Аша', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(560, 'Бреды', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(561, 'Варна', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(562, 'Верхнеуральск', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(563, 'Верхний Уфалей', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(564, 'Долгодеревенское', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(565, 'Еманжелинск', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(566, 'Еткуль', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(567, 'Златоуст', 7, 187000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(568, 'Карабаш', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(569, 'Карталы', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(570, 'Касли', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(571, 'Катав-Ивановск', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(572, 'Кизильское', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(573, 'Копейск', 7, 137000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(574, 'Коркино', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(575, 'Кунашак', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(576, 'Куса', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(577, 'Кыштым', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(578, 'Магнитогорск', 7, 410000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(579, 'Миасское', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(580, 'Миасс', 7, 152000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(581, 'Миньяр', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(582, 'Нязепетровск', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(583, 'Озерск', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(584, 'Октябрьское', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(585, 'Пласт', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(586, 'Сатка', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(587, 'Снежинск', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(588, 'Солнечная Долина', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(589, 'Трехгорный', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(590, 'Троицк', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(591, 'Увельский', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(592, 'Уйское', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(593, 'Усть-Катав', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(594, 'Фершампенуаз', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(595, 'Чебаркуль', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(596, 'Челябинск', 7, 1096000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(598, 'Чесма', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(599, 'Южноуральск', 7, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(600, 'Агрыз', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(601, 'Азнакаево', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(602, 'Аксубаево', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(603, 'Актаныш', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(604, 'Алексеевское', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(605, 'Алькеево', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(606, 'Альметьевск', 8, 142000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(607, 'Апастово', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(608, 'Арск', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(609, 'Атня', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(610, 'Бавлы', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(611, 'Балтаси', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(612, 'Богатые Сабы', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(613, 'Болгар', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(614, 'Бугульма', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(615, 'Буинск', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(616, 'Васильево', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(617, 'Верхний Услон', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(618, 'Высокая Гора', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(619, 'Дрожжаное', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(620, 'Елабуга', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(621, 'Заинск', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(622, 'Зеленодольск', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(623, 'Казань', 8, 1137000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(624, 'Кайбицы', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(625, 'Камское Устье', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(626, 'Кукмор', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(627, 'Лаишево', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(628, 'Лениногорск', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(629, 'Мамадыш', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(630, 'Менделеевск', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(631, 'Мензелинск', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(632, 'Муслюмово', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(633, 'Набережные Челны', 8, 510000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(634, 'Нижнекамск', 8, 227000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(635, 'Новошешминск', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(636, 'Нурлаты', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(637, 'Пестрецы', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(638, 'Рыбная Слобода', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(639, 'Сарманово', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(640, 'Спасск', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(641, 'Тетюши', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(642, 'Тюлячи', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(643, 'Уруссу', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(644, 'Черемшаны', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(645, 'Чистополь', 8, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(646, 'Адреаполь', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(647, 'Бежецк', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(648, 'Белый', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(649, 'Бологое', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(650, 'Вышний Волочек', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(651, 'Западная Двина', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(652, 'Зубцов', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(653, 'Калязин', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(654, 'Кашин', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(655, 'Кимры', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(656, 'Конаково', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(657, 'Красный Холм', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(658, 'Кувшиново', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(659, 'Лесное', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(660, 'Лихославль', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(661, 'Максатиха', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(662, 'Нелидово', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(663, 'Оленино', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(664, 'Осташков', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(665, 'Пено', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(666, 'Рамешки', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(667, 'Ржев', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(668, 'Сандово', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(669, 'Сонково', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(670, 'Старица', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(671, 'Тверь', 9, 410000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(672, 'Торжок', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(673, 'Торопец', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(674, 'Удомля', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(675, 'Фирово', 9, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(676, 'Адыгейск', 10, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(677, 'Гиагинская', 10, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(678, 'Кошехабль', 10, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(679, 'Красногвардейск', 10, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(680, 'Майкоп', 10, 155000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(681, 'Тахтамукай', 10, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(682, 'Тульский', 10, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(683, 'Хакуринохабль', 10, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(684, 'Шовгеновский', 10, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(685, 'Адыге-Хабль', 11, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(686, 'Зеленчукская', 11, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(687, 'Преградная', 11, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(688, 'Усть-Джегута', 11, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(689, 'Учкекен', 11, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(690, 'Черкесск', 11, 116500);
INSERT INTO city (id, `name`, region_id, weight) VALUES(691, 'Азово', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(692, 'Большеречье', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(693, 'Большие Уки', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(694, 'Горьковское', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(695, 'Знаменское', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(696, 'Исилькуль', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(697, 'Калачинск', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(698, 'Колосовка', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(699, 'Кормиловка', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(700, 'Крутинка', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(701, 'Любинский', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(702, 'Марьяновка', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(703, 'Москаленки', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(704, 'Муромцево', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(705, 'Называевск', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(706, 'Нижняя Омка', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(707, 'Нововаршавка', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(708, 'Одесское', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(709, 'Оконешниково', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(710, 'Омск', 12, 1128000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(711, 'Павлоградка', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(712, 'Полтавка', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(713, 'Русская Поляна', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(714, 'Саргатское', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(715, 'Седельниково', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(716, 'Таврическое', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(717, 'Тара', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(718, 'Тевриз', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(719, 'Тюкалинск', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(720, 'Усть-Ишим', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(721, 'Черлак', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(722, 'Шербакуль', 12, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(723, 'Азов', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(724, 'Аксай', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(725, 'Багаевский', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(726, 'Батайск', 13, 104000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(727, 'Белая Калитва', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(728, 'Боковская', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(729, 'Большая Мартыновка', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(730, 'Веселый', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(731, 'Вешенская', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(732, 'Волгодонск', 13, 169000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(733, 'Гуково', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(734, 'Донецк', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(735, 'Дубовское', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(736, 'Егорлыкская', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(737, 'Заветное', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(738, 'Зерноград', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(739, 'Зимовники', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(740, 'Кагальницкая', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(741, 'Каменоломни', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(742, 'Каменск- Шахтинский', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(743, 'Кашары', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(744, 'Константиновск', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(745, 'Красный Сулин', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(746, 'Куйбышево', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(747, 'Мартыновка', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(748, 'Матвеев Курган', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(749, 'Миллерово', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(750, 'Милютинская', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(751, 'Морозовск', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(752, 'Новочеркасск', 13, 177000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(753, 'Новошахтинск', 13, 113000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(754, 'Обливская', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(755, 'Октябрьск', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(756, 'Орловский', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(757, 'Песчанокопск', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(758, 'Покровское', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(759, 'Пролетарск', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(760, 'Ремонтное', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(761, 'Родионово-Несветайская', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(762, 'Романовская', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(763, 'Ростов', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(764, 'Сальск', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(765, 'Семикаракорск', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(766, 'Таганрог', 13, 255000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(767, 'Тарасовский', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(768, 'Тацинский', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(769, 'Усть-Донецкий', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(770, 'Целина', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(771, 'Цимлянск', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(772, 'Чалтырь', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(773, 'Чертково', 13, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(774, 'Шахты', 13, 245000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(775, 'Айкино', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(776, 'Акбулак', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(777, 'Визинга', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(778, 'Воркута', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(779, 'Вуктыл', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(780, 'Выльгорт', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(781, 'Выльногорск', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(782, 'Емва', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(783, 'Ижма', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(784, 'Инта', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(785, 'Койгородок', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(786, 'Корткерос', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(787, 'Обьячево', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(788, 'Печора', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(789, 'Сосногорск', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(790, 'Сыктывкар', 14, 236000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(791, 'Троицко-Печорск', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(792, 'Усинск', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(793, 'Усогорск', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(794, 'Усть-Кулом', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(795, 'Усть-Цильма', 14, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(796, 'Ухта', 14, 103700);
INSERT INTO city (id, `name`, region_id, weight) VALUES(797, 'Аксарка', 15, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(798, 'Красноселькуп', 15, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(799, 'Лабытнанги', 15, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(800, 'Мужи', 15, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(801, 'Надым', 15, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(802, 'Новый Уренгой', 15, 119600);
INSERT INTO city (id, `name`, region_id, weight) VALUES(803, 'Салехард', 15, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(804, 'Тазовский', 15, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(805, 'Харп', 15, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(806, 'Яр-сале', 15, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(807, 'Акша', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(808, 'Ачинское', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(809, 'Белебей', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(810, 'Борзя', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(811, 'Верх-Усугли', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(812, 'Дульдурга', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(813, 'Забайкальск', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(814, 'Калга', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(815, 'Кара', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(816, 'Карымская', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(817, 'Красной Чикой', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(818, 'Краснокаменск', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(819, 'Могайтуй', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(820, 'Нерчинск', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(821, 'Первомайский', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(822, 'Приаргунск', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(823, 'Сретенск', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(824, 'Старая Чара', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(825, 'Улеты', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(826, 'Хилок', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(827, 'Чернышевск', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(828, 'Чита', 16, 309000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(829, 'Шелопугино', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(830, 'Шилка', 16, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(831, 'Акъяр', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(832, 'Архангельское', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(833, 'Аскарово', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(834, 'Аскино', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(835, 'Баймак', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(836, 'Бакалы', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(837, 'Белебей', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(838, 'Белорецк', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(839, 'Бижбуляк', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(840, 'Бирск', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(841, 'Благовещенск', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(842, 'Большеустьикинское', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(843, 'Буздяк', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(844, 'Бураево', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(845, 'Верхнеяркеево', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(846, 'Верхние Киги', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(847, 'Давлеканово', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(848, 'Дюртюли', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(849, 'Ермекеево', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(850, 'Ермолаево', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(851, 'Зилаир', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(852, 'Иглино', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(853, 'Исянгулово', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(854, 'Ишимбай', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(855, 'Калтасы', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(856, 'Караидель', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(857, 'Кармаскалы', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(858, 'Киргиз-Мияки', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(859, 'Красная Горка', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(860, 'Красноусольский', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(861, 'Кумертау', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(862, 'Кушнаренково', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(863, 'Малояз', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(864, 'Мелеуз', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(865, 'Месягутово', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(866, 'Мишкино', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(867, 'Мраково', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(868, 'Нефтекамск', 17, 119500);
INSERT INTO city (id, `name`, region_id, weight) VALUES(869, 'Николо-Березовка', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(870, 'Новобелокатай', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(871, 'Октябрьский', 17, 109700);
INSERT INTO city (id, `name`, region_id, weight) VALUES(872, 'Раевский', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(873, 'Салават', 17, 156000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(874, 'Сибай', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(875, 'Стерлибашево', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(876, 'Стерлитамак', 17, 272000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(877, 'Толбазы', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(878, 'Туймазы', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(879, 'Уфа', 17, 1031000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(880, 'Учалы', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(881, 'Федоровка', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(882, 'Чекмагуш', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(883, 'Чишмы', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(884, 'Шаран', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(885, 'Языково', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(886, 'Янаул', 17, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(887, 'Алагир', 18, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(888, 'Ардон', 18, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(889, 'Архонская', 18, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(890, 'Беслан', 18, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(891, 'Владикавказ', 18, 312000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(892, 'Дигора', 18, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(893, 'Моздок', 18, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(894, 'Октябрьское', 18, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(895, 'Чикола', 18, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(896, 'Эльхотово', 18, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(897, 'Алапаевск', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(898, 'Артемовский', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(899, 'Арти', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(900, 'Асбест', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(901, 'Ачит', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(902, 'Байкалово', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(903, 'Белоярский', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(904, 'Березовский', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(905, 'Богданович', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(906, 'Верхняя Пышма', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(907, 'Верхняя Салда', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(908, 'Верхотурье', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(909, 'Екатеринбург', 19, 1344000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(911, 'Заречный', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(912, 'Ивдель', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(913, 'Ирбит', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(914, 'Каменск-Уральский', 19, 179000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(915, 'Камышлов', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(916, 'Карпинск', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(917, 'Качканар', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(918, 'Кировград', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(919, 'Краснотурьинск', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(920, 'Красноуральск', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(921, 'Красноуфимск', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(922, 'Кушва', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(923, 'Невьянск', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(924, 'Нижние Серги', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(925, 'Нижний Тагил', 19, 373000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(926, 'Нижняя Салда', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(927, 'Нижняя Тура', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(928, 'Новая Ляля', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(929, 'Новоуральск', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(930, 'Первоуральск', 19, 134000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(931, 'Полевский', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(932, 'Пышма', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(933, 'Ревда', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(934, 'Реж', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(935, 'Североуральск', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(936, 'Серов', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(937, 'Сухой Лог', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(938, 'Сысерть', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(939, 'Таборы', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(940, 'Тавда', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(941, 'Талица', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(942, 'Тугулым', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(943, 'Туринская Слобода', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(944, 'Туринск', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(945, 'Шаля', 19, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(946, 'Алатырь', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(947, 'Аликово', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(948, 'Батырево', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(949, 'Вурнары', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(950, 'Ибреси', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(951, 'Канаш', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(952, 'Козловка', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(953, 'Комсомольское', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(954, 'Красноармейское', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(955, 'Красные Четаи', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(956, 'Кугеси', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(957, 'Мариинский Посад', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(958, 'Моргауши', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(959, 'Порецкое', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(960, 'Урмары', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(961, 'Цивильск', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(962, 'Чебоксары', 20, 448000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(963, 'Шемурша', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(964, 'Шумерля', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(965, 'Ядрин', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(966, 'Яльчики', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(967, 'Янтиково', 20, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(968, 'Алдан', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(969, 'Амга', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(970, 'Батагай-Алыта', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(971, 'Бердигестях', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(972, 'Борогонцы', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(973, 'Верхневилюйск', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(974, 'Вилюйск', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(975, 'Ленск', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(976, 'Майя', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(977, 'Мирный', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(978, 'Намцы', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(979, 'Нерюнгри', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(980, 'Нюрба', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(981, 'Олекминск', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(982, 'Покровск', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(983, 'Сангар', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(984, 'Сунтар', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(985, 'Тикси', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(986, 'Усть-Мая', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(987, 'Хандыга', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(988, 'Чурапча', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(989, 'Ытык-Кюель', 21, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(990, 'Якутск', 21, 268000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(991, 'Алейск', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(992, 'Алтайское', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(993, 'Баево', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(994, 'Барнаул', 22, 598000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(995, 'Белокуриха', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(996, 'Бийск', 22, 220000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(997, 'Благовещенка', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(998, 'Бурла', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(999, 'Быстрый Исток', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1000, 'Волчиха', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1001, 'Гальбштадт', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1002, 'Горняк', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1003, 'Ельцовка', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1004, 'Завьялово', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1005, 'Залесово', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1006, 'Заринск', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1007, 'Змеиногорск', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1008, 'Зональное', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1009, 'Калманка', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1010, 'Камень-на-Оби', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1011, 'Ключи', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1012, 'Косиха', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1013, 'Кош-Агач', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1014, 'Красногорское', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1015, 'Краснощеково', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1016, 'Крутиха', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1017, 'Кулунда', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1018, 'Курья', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1019, 'Кытманово', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1020, 'Мамонтово', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1021, 'Михайловка', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1022, 'Новичиха', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1023, 'Новоалтайск', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1024, 'Новоегорьевское', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1025, 'Павловск', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1026, 'Панкрушиха', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1027, 'Петропавловское', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1028, 'Поспелиха', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1029, 'Ребриха', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1030, 'Родино', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1031, 'Романово', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1032, 'Рубцовск', 22, 155000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1033, 'Славгород', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1034, 'Смоленское', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1035, 'Советское', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1036, 'Солонешное', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1037, 'Солтон', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1038, 'Староалейское', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1039, 'Табуны', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1040, 'Тальменка', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1041, 'Тогул', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1042, 'Топчиха', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1043, 'Троицкое', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1044, 'Тюменцево', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1045, 'Угловское', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1046, 'Усть-Калманка', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1047, 'Усть-Пристань', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1048, 'Хабары', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1049, 'Целинное', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1050, 'Чарышское', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1051, 'Шелаболиха', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1052, 'Шипуново', 22, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1053, 'Александров', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1054, 'Владимир', 23, 338000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1055, 'Гороховец', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1056, 'Гусь Хрустальный', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1057, 'Камешково', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1058, 'Киржач', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1059, 'Ковров', 23, 148000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1060, 'Кольчугино', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1061, 'Красная Горбатка', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1062, 'Меленки', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1063, 'Муром', 23, 117000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1064, 'Петушки', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1065, 'Радужный', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1066, 'Собинка', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1067, 'Судогда', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1068, 'Суздаль', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1069, 'Юрьев- Польский', 23, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1070, 'Александров Гай', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1071, 'Аркадак', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1072, 'Аткарск', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1073, 'Базарный Карабулак', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1074, 'Балаково', 24, 197000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1075, 'Балашов', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1076, 'Балтай', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1077, 'Вольск', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1078, 'Воскресенское', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1079, 'Горный', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1080, 'Дергачи', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1081, 'Духовницкое', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1082, 'Екатериновка', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1083, 'Ершов', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1084, 'Ивантеевка', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1085, 'Калининск', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1086, 'Красноармейск', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1087, 'Красный Кут', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1088, 'Лысые Горы', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1089, 'Маркс', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1090, 'Мокроус', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1091, 'Новоузенск', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1092, 'Новые Бурасы', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1093, 'Озинки', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1094, 'Перелюб', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1095, 'Петровск', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1096, 'Питерка', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1097, 'Пугачев', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1098, 'Ровное', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1099, 'Романовка', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1100, 'Ртищево', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1101, 'Самойловка', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1102, 'Саратов', 24, 827000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1103, 'Степное', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1104, 'Татищево', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1105, 'Турки', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1106, 'Хвалынск', 24, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1107, 'Энгельс', 24, 209000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1108, 'Александровское', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1109, 'Арзгир', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1110, 'Благодарный', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1111, 'Буденновск', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1112, 'Георгиевск', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1113, 'Грачевка', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1114, 'Дивное', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1115, 'Ессентуки', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1116, 'Железноводск', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1117, 'Зеленокумск', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1118, 'Изобильный', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1119, 'Ипатово', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1120, 'Кисловодск', 25, 129000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1121, 'Красногвардейское', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1122, 'Курсавка', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1123, 'Левокумское', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1124, 'Лермонтов', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1125, 'Летняя Ставка', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1126, 'Минеральные Воды', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1127, 'Невинномысск', 25, 128000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1128, 'Нефтекумск', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1129, 'Новоалександровск', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1130, 'Новопавловск', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1131, 'Новоселицкое', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1132, 'Пятигорск', 25, 143000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1133, 'Светлоград', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1134, 'Ставрополь', 25, 369000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1135, 'Степное', 25, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1136, 'Александровское', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1137, 'Асино', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1138, 'Бакчар', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1139, 'Белый Яр', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1140, 'Зырянское', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1141, 'Каргасок', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1142, 'Кожевниково', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1143, 'Колпашево', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1144, 'Кривошеино', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1145, 'Мельниково', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1146, 'Молчаново', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1147, 'Парабель', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1148, 'Первомайское', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1149, 'Подгорное', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1150, 'Северск', 26, 107000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1151, 'Стрежевой', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1152, 'Тегульдет', 26, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1153, 'Томск', 26, 509000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1154, 'Александровск', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1155, 'Барда', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1156, 'Березники', 27, 164000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1157, 'Березовка', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1158, 'Большая Соснова', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1159, 'Верещагино', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1160, 'Горнозаводск', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1161, 'Гремячинск', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1162, 'Губаха', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1163, 'Добрянка', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1164, 'Елово', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1165, 'Звездный', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1166, 'Ильинский', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1167, 'Карагай', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1168, 'Кизел', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1169, 'Красновишерск', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1170, 'Краснокамск', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1171, 'Кудымкар', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1172, 'Куеда', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1173, 'Кунгур', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1174, 'Лысьва', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1175, 'Нытва', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1176, 'Октябрьский', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1177, 'Орда', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1178, 'Оса', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1179, 'Оханск', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1180, 'Очер', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1181, 'Пермь', 27, 987000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1182, 'Сива', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1183, 'Соликамск', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1184, 'Суксун', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1185, 'Уинское', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1186, 'Усолье', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1187, 'Усть-Кишерть', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1188, 'Чайковский', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1189, 'Частые', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1190, 'Чердынь', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1191, 'Чернушка', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1192, 'Чусовой', 27, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1193, 'Александро-Невский', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1194, 'Ермишь', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1195, 'Кадом', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1196, 'Караблино', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1197, 'Касимов', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1198, 'Милославское', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1199, 'Михайлов', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1200, 'Новомичуринск', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1201, 'Пителино', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1202, 'Пронск', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1203, 'Путятино', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1204, 'Рыбное', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1205, 'Ряжск', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1206, 'Рязань', 28, 509000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1207, 'Сапожок', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1208, 'Сасово', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1209, 'Скопин', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1210, 'Солотча', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1211, 'Спас-Клепики', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1212, 'Спасск-Рязанский', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1213, 'Старожилово', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1214, 'Ухолово', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1215, 'Чучково', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1216, 'Шацк', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1217, 'Шилово', 28, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1218, 'Алексеевка', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1219, 'Белгород', 29, 363000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1220, 'Борисовка', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1221, 'Валуйки', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1222, 'Вейделевка', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1223, 'Волоконовка', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1224, 'Грайворон', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1225, 'Губкин', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1226, 'Ивня', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1227, 'Короча', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1228, 'Красногвардейское', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1229, 'Красное', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1230, 'Новый Оскол', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1231, 'Прохоровка', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1232, 'Ракитное', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1233, 'Ровеньки', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1234, 'Старый Оскол', 29, 222000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1235, 'Строитель', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1236, 'Чернянка', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1237, 'Шебекино', 29, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1238, 'Алексеевка', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1239, 'Безенчук', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1240, 'Большая Глушица', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1241, 'Большая Черниговка', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1242, 'Борское', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1243, 'Жигулевск', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1244, 'Исаклы', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1245, 'Кинель', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1246, 'Кинель-Черкасы', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1247, 'Клявлино', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1248, 'Кошки', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1249, 'Красноармейское', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1250, 'Красный Яр', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1251, 'Нефтегорск', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1252, 'Новокуйбышевск', 30, 110400);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1253, 'Октябрьск', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1254, 'Отрадный', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1255, 'Пестровка', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1256, 'Похвистнево', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1257, 'Приволжье', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1258, 'Самара', 30, 1134000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1272, 'Сергиевск', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1273, 'Сызрань', 30, 179000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1274, 'Тольятти', 30, 722000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1275, 'Чапаевск', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1276, 'Челно-Вершины', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1277, 'Шентала', 30, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1278, 'Алексеевская', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1279, 'Быково', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1280, 'Волгоград', 31, 980000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1281, 'Волжский', 31, 305000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1282, 'Городище', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1283, 'Даниловка', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1284, 'Дубовка', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1285, 'Елань', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1286, 'Жирновск', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1287, 'Иловля', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1288, 'Калач-на-дону', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1289, 'Камышин', 31, 116000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1290, 'Киквидзе', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1291, 'Клетский', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1292, 'Котельниково', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1293, 'Котово', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1294, 'Кумылженская', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1295, 'Ленинск', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1296, 'Михайловка', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1297, 'Нехаевский', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1298, 'Николаевск', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1299, 'Новоаннинский', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1300, 'Новониколаевский', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1301, 'Октябрьский', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1302, 'Ольховка', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1303, 'Палласовка', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1304, 'Преображенская', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1305, 'Рудня', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1306, 'Светлый Яр', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1307, 'Серафимович', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1308, 'Средняя Ахтуба', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1309, 'Старая Полтавка', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1310, 'Суровикино', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1311, 'Урюпинск', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1312, 'Фролово', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1313, 'Чернышковский', 31, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1314, 'Алексин', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1315, 'Арсеньево', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1316, 'Архангельское', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1317, 'Белев', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1318, 'Богородицк', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1319, 'Венев', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1320, 'Волово', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1321, 'Донской', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1322, 'Дубна', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1323, 'Ефремов', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1324, 'Заокский', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1325, 'Кимовск', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1326, 'Киреевск', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1327, 'Куркино', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1328, 'Ленинский', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1329, 'Новомосковск', 32, 131000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1330, 'Одоев', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1331, 'Плавск', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1332, 'Суворов', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1333, 'Теплое', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1334, 'Тула', 32, 492000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1335, 'Узловая', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1336, 'Чернь', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1337, 'Щекино', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1338, 'Ясногорск', 32, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1339, 'Алнаши', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1340, 'Балезино', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1341, 'Вавож', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1342, 'Воткинск', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1343, 'Глазов', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1344, 'Грахово', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1345, 'Дебесы', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1346, 'Завьялово', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1347, 'Игра', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1348, 'Ижевск', 33, 611000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1349, 'Камбарка', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1350, 'Каракулино', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1351, 'Кез', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1352, 'Кизнер', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1353, 'Киясово', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1354, 'Красногорское', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1355, 'Малая Пурга', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1356, 'Можга', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1357, 'Сарапул', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1358, 'Селты', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1359, 'Сюмси', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1360, 'Ува', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1361, 'Шаркан', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1362, 'Юкаменское', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1363, 'Якшур-бодья', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1364, 'Яр', 33, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1365, 'Альменево', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1366, 'Белозерское', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1367, 'Варгаши', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1368, 'Глядянское', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1369, 'Далматово', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1370, 'Звериноголовское', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1371, 'Каргаполье', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1372, 'Катайск', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1373, 'Кетово', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1374, 'Курган', 34, 322000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1375, 'Куртамыш', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1376, 'Лебяжье', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1377, 'Макушино', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1378, 'Мишкино', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1379, 'Мокроусово', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1380, 'Петухово', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1381, 'Половинное', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1382, 'Сафакулево', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1383, 'Целинное', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1384, 'Частоозерье', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1385, 'Шадринск', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1386, 'Шатрово', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1387, 'Шумиха', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1388, 'Щучье', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1389, 'Юргамыш', 34, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1390, 'Амурск', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1391, 'Аян', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1392, 'Бикин', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1393, 'Богородское', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1394, 'Ванино', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1395, 'Вяземский', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1396, 'Комсомольск-на-Амуре', 35, 270000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1397, 'Николаевск-на-Амуре', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1398, 'Охотск', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1399, 'Переяславка', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1400, 'Полина Осипенко', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1401, 'Советская Гавань', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1402, 'Солнечный', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1403, 'Троицкое', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1404, 'Хабаровск', 35, 581000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1405, 'Чегдомын', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1406, 'Чумикан', 35, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1407, 'Анадырь', 36, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1408, 'Ангарск', 37, 241000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1409, 'Братск', 37, 250000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1410, 'Железногорск-Илимский', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1411, 'Залари', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1412, 'Зима', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1413, 'Иркутск', 37, 581000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1414, 'Казачинское', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1415, 'Киренск', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1416, 'Новонукутский', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1417, 'Тайшет', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1418, 'Усолье-Сибирское', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1419, 'Усть-Илимск', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1420, 'Усть-Кут', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1421, 'Усть-Уда', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1422, 'Черемхово', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1423, 'Чунский', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1424, 'Шелехов', 37, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1425, 'Анжеро-Судженск', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1426, 'Белово', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1427, 'Березовский', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1428, 'Верх-Чебула', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1429, 'Гурьевск', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1430, 'Ижморский', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1431, 'Кемерово', 38, 521000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1432, 'Киселевск', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1433, 'Крапивинский', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1434, 'Ленинск-Кузнецкий', 38, 104600);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1435, 'Мариинск', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1436, 'Междуреченск', 38, 104000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1437, 'Мыски', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1438, 'Новокузнецк', 38, 564000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1439, 'Осинники', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1440, 'Прокопьевск', 38, 211000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1441, 'Промышленная', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1442, 'Тайга', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1443, 'Таштагол', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1444, 'Тисуль', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1445, 'Топки', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1446, 'Тяжинский', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1447, 'Юрга', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1448, 'Яшкино', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1449, 'Яя', 38, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1450, 'Анна', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1451, 'Бобров', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1452, 'Богучар', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1453, 'Борисоглебск', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1454, 'Бутурлиновка', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1455, 'Верхний Мамон', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1456, 'Верхняя Хава', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1457, 'Воробьевка', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1458, 'Воронеж', 39, 848000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1459, 'Грибановский', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1460, 'Калач', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1461, 'Каменка', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1462, 'Кантемировка', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1463, 'Каширское', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1464, 'Лиски', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1465, 'Нижнедевицк', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1466, 'Новая Усмань', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1467, 'Нововоронеж', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1468, 'Новохоперск', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1469, 'Ольховатка', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1470, 'Острогожск', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1471, 'Павловск', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1472, 'Панино', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1473, 'Петропавловка', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1474, 'Поворино', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1475, 'Подгоренский', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1476, 'Рамонь', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1477, 'Репьевка', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1478, 'Россия - федеральные сотовые н', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1479, 'Семилуки', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1480, 'Таловая', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1481, 'Терновка', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1482, 'Хохольский', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1483, 'Эртиль', 39, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1484, 'Антропово', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1485, 'Боговарово', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1486, 'Буй', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1487, 'Волгореченск', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1488, 'Вохма', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1489, 'Галич', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1490, 'Георгиевское', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1491, 'Кадый', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1492, 'Кологрив', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1493, 'Кострома', 40, 270000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1494, 'Красное-на-Волге', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1495, 'Макарьев', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1496, 'Мантурово', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1497, 'Нерехта', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1498, 'Нея', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1499, 'Островское', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1500, 'Павино', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1501, 'Парфеньево', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1502, 'Поназырево', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1503, 'Пыщуг', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1504, 'Солигалич', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1505, 'Судиславль', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1506, 'Сусанино', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1507, 'Чухлома', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1508, 'Шарья', 40, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1509, 'Анучино', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1510, 'Арсеньев', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1511, 'Артем', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1512, 'Большой Камень', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1513, 'Владивосток', 41, 617000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1514, 'Владимиро-Александровское', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1515, 'Вольно-Надеждинское', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1516, 'Дальнегорск', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1517, 'Дальнереченск', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1518, 'Кавалерово', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1519, 'Камень-Рыболов', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1520, 'Кировский', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1521, 'Лазо', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1522, 'Лесозаводск', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1523, 'Лучегорск', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1524, 'Михайловка', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1525, 'Находка', 41, 166000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1526, 'Ольга', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1527, 'Партизанск', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1528, 'Пограничный', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1529, 'Покровка', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1530, 'Славянка', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1531, 'Спасск-Дальний', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1532, 'Терней', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1533, 'Уссурийск', 41, 153000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1534, 'Фокино', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1535, 'Хороль', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1536, 'Черниговка', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1537, 'Чугуевка', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1538, 'Яковлевка', 41, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1539, 'Апатиты', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1540, 'Заозерск', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1541, 'Заполярный', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1542, 'Кандалакша', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1543, 'Кировск', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1544, 'Ковдор', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1545, 'Кола', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1546, 'Ловозеро', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1547, 'Мончегорск', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1548, 'Мурманск', 42, 309000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1549, 'Никель', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1550, 'Оленегорск', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1551, 'Полярные Зори', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1552, 'Полярный', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1553, 'Североморск', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1554, 'Скалистый', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1555, 'Снежногрск', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1556, 'Умба', 42, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1557, 'Арбаж', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1558, 'Белая Холуница', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1559, 'Богородское', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1560, 'Верхошижемье', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1561, 'Вятские Поляны', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1562, 'Даровский', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1563, 'Зуевка', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1564, 'Кикнур', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1565, 'Кильмезь', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1566, 'Киров', 43, 464000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1567, 'Кирово-Чепецк', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1568, 'Кирс', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1569, 'Котельнич', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1570, 'Кумены', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1571, 'Лебяжье', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1572, 'Ленинское', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1573, 'Луза', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1574, 'Малмыж', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1575, 'Мураши', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1576, 'Нагорск', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1577, 'Нема', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1578, 'Нолинск', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1579, 'Омутнинск', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1580, 'Опарино', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1581, 'Оричи', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1582, 'Орлов', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1583, 'Пижанка', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1584, 'Подосиновец', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1585, 'Санчурск', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1586, 'Свеча', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1587, 'Слободской', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1588, 'Советск', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1589, 'Суна', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1590, 'Тужа', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1591, 'Уни', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1592, 'Уржум', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1593, 'Фаленки', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1594, 'Юрья', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1595, 'Яранск', 43, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1596, 'Аргун', 44, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1597, 'Ачхой-Мартан', 44, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1598, 'Ведено', 44, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1599, 'Грозный', 44, 251000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1600, 'Гудермес', 44, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1601, 'Знаменское', 44, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1602, 'Малгобек', 44, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1603, 'Ножай-Юрт', 44, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1604, 'Урус-Мартан', 44, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1605, 'Шали', 44, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1606, 'Шатой', 44, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1607, 'Ардатов', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1608, 'Атюрьево', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1609, 'Атяшево', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1610, 'Большие Березняки', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1611, 'Большое Игнатово', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1612, 'Дубенки', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1613, 'Ельники', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1614, 'Зубова Поляна', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1615, 'Инсар', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1616, 'Кадошкино', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1617, 'Кемля', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1618, 'Ковылкино', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1619, 'Кочкурово', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1620, 'Краснослободск', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1621, 'Лямбирь', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1622, 'Ромоданово', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1623, 'Рузаевка', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1624, 'Саранск', 45, 296000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1625, 'Старое Шайгово', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1626, 'Темников', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1627, 'Теньгушево', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1628, 'Торбеево', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1629, 'Чамзинка', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1630, 'Явас', 45, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1631, 'Ардатов', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1632, 'Арзамас', 46, 105300);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1633, 'Балахна', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1634, 'Богородск', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1635, 'Большое Болдино', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1636, 'Большое Мурашкино', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1637, 'Бор', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1638, 'Бутурлино', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1639, 'Вад', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1640, 'Варнавино', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1641, 'Вача', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1642, 'Ветлуга', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1643, 'Вознесенское', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1644, 'Воротынец', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1645, 'Воскресенское', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1646, 'Выкса', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1647, 'Гагино', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1648, 'Городец', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1649, 'Дальнее Константиново', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1650, 'Дзержинск', 46, 244000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1651, 'Дивеево', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1652, 'Заволжье', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1653, 'Княгинино', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1654, 'Ковернино', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1655, 'Красные Баки', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1656, 'Кстово', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1657, 'Кулебаки', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1658, 'Лукоянов', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1659, 'Лысково', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1660, 'Навашино', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1661, 'Нижний Новгород', 46, 1271000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1665, 'Павлово', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1666, 'Первомайск', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1667, 'Перевоз', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1668, 'Пильна', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1669, 'Починки', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1670, 'Саров', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1671, 'Семенов', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1672, 'Сергач', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1673, 'Сеченово', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1674, 'Сосновское', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1675, 'Спасское', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1676, 'Тонкино', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1677, 'Уразовка', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1678, 'Урень', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1679, 'Чкаловск', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1680, 'Шаранга', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1681, 'Шатки', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1682, 'Шахунья', 46, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1683, 'Архангельск', 47, 348000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1684, 'Березник', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1685, 'Вельск', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1686, 'Верхняя Тойма', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1687, 'Ильинско-Подомское', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1688, 'Каргополь', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1689, 'Карпогоры', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1690, 'Коноша', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1691, 'Коряжма', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1692, 'Котлас', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1693, 'Красноборск', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1694, 'Лешуконское', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1695, 'Мезень', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1696, 'Мирный', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1697, 'Нарьян-Мар', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1698, 'Новодвинск', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1699, 'Няндома', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1700, 'Октябрьский', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1701, 'Онега', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1702, 'о.Соловки', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1703, 'Плесецк', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1704, 'Северодвинск', 47, 187000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1705, 'Холмогоры', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1706, 'Шенкурск', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1707, 'Яренск', 47, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1708, 'Астрахань', 48, 506000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1709, 'Ахтубинск', 48, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1710, 'Володарский', 48, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1711, 'Енотаевка', 48, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1712, 'Знаменск', 48, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1713, 'Икряное', 48, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1714, 'Камызяк', 48, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1715, 'Красный Яр', 48, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1716, 'Лиман', 48, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1717, 'Нариманов', 48, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1718, 'Началово', 48, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1719, 'Харабали', 48, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1720, 'Черный Яр', 48, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1721, 'Ачайваям', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1722, 'Вилючинск-3', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1723, 'Вилючинск', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1724, 'Елизово', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1725, 'Каменское', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1726, 'Ключи', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1727, 'Корф', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1728, 'Мильково', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1729, 'Оссора', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1730, 'Палана', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1731, 'Пахачи', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1732, 'Петропавловск-Камчатский', 49, 194000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1733, 'Соболево', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1734, 'Средние Пахачи', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1735, 'Тигиль', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1736, 'Тиличики', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1737, 'Усть-Большерецк', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1738, 'Усть-Камчатск', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1739, 'Усть-Хайрюзово', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1740, 'Эссо', 49, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1741, 'Бабаево', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1742, 'Белозерск', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1743, 'Великий Устюг', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1744, 'Верховажье', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1745, 'Вожега', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1746, 'Вологда', 50, 286000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1747, 'Вытегра', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1748, 'Грязовец', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1749, 'Кадуй', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1750, 'Кириллов', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1751, 'Кичменгский Городок', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1752, 'Липин Бор', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1753, 'Никольск', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1754, 'Нюксеница', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1755, 'Село Им. Бабушкина', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1756, 'Сокол', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1757, 'Сямжа', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1758, 'Тарногский Городок', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1759, 'Тотьма', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1760, 'Устье', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1761, 'Устюжна', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1762, 'Харовск', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1763, 'Чагода', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1764, 'Череповец', 50, 310000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1765, 'Шексна', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1766, 'Шуйское', 50, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1767, 'Бабынино', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1768, 'Балабаново', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1769, 'Боровск', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1770, 'Думиничи', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1771, 'Жиздра', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1772, 'Жуково', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1773, 'Калуга', 51, 328000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1774, 'Киров', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1775, 'Козельск', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1776, 'Кондрово', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1777, 'Людиново', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1778, 'Малоярославец', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1779, 'Медынь', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1780, 'Мещовск', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1781, 'Мосальск', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1782, 'Обнинск', 51, 105600);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1783, 'Перемышль', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1784, 'Спас-Деменск', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1785, 'Сухиничи', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1786, 'Таруса', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1787, 'Ульяново', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1788, 'Ферзиково', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1789, 'Хвастовичи', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1790, 'Юхнов', 51, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1791, 'Баган', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1792, 'Барабинск', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1793, 'Бердск', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1794, 'Болотное', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1795, 'Венгерово', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1796, 'Довольное', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1797, 'Здвинск', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1798, 'Искитим', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1799, 'Карасук', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1800, 'Каргат', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1801, 'Колывань', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1802, 'Коченево', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1803, 'Кочки', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1804, 'Краснозерское', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1805, 'Куйбышев', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1806, 'Купино', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1807, 'Кыштовка', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1808, 'Маслянино', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1809, 'Мошково', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1810, 'Новосибирск', 52, 1409000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1812, 'Обь', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1813, 'Ордынское', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1814, 'Северное', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1815, 'Сузун', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1816, 'Татарск', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1817, 'Тогучин', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1818, 'Убинское', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1819, 'Усть-Тарка', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1820, 'Чаны', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1821, 'Черепаново', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1822, 'Чистоозерное', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1823, 'Чулым', 52, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1824, 'Базарный Сызган', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1825, 'Барыш', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1826, 'Большое Нагаткино', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1827, 'Вешкайма', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1828, 'Димитровград', 53, 127500);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1829, 'Инза', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1830, 'Ишеевка', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1831, 'Карсун', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1832, 'Кузоватово', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1833, 'Майна', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1834, 'Николаевка', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1835, 'Новая Малыкла', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1836, 'Новоспасское', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1837, 'Новоульяновск', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1838, 'Павловка', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1839, 'Радищево', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1840, 'Сенгилей', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1841, 'Старая Кулатка', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1842, 'Старая Майна', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1843, 'Сурское', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1844, 'Тереньга', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1845, 'Ульяновск', 53, 603000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1846, 'Чердаклы', 53, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1847, 'Байконур', 54, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1848, 'Горно-Алтайск', 54, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1849, 'Майма', 54, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1850, 'Онгудай', 54, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1851, 'Турочак', 54, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1852, 'Усть-Кан', 54, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1853, 'Чоя', 54, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1854, 'Шебалино', 54, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1855, 'Баксан', 55, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1856, 'Залукокоаже', 55, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1857, 'Кошхатау', 55, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1858, 'Майский', 55, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1859, 'Нальчик', 55, 269000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1860, 'Нарткала', 55, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1861, 'Прохладный', 55, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1862, 'Советское', 55, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1863, 'Терек', 55, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1864, 'Терскол', 55, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1865, 'Тырныауз', 55, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1866, 'Чегем Первый', 55, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1867, 'Баргузин', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1868, 'Бичура', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1869, 'Гусиноозерск', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1870, 'Закаменск', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1871, 'Иволгинск', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1872, 'Кижинга', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1873, 'Курумкан', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1874, 'Кяхта', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1875, 'Мухоршибирь', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1876, 'Петропавловка', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1877, 'Северобайкальск', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1878, 'Сосново-Озерское', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1879, 'Тарбагатай', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1880, 'Турунтаево', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1881, 'Улан-Удэ', 56, 377000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1882, 'Хоринск', 56, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1883, 'Батецкий', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1884, 'Боровичи', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1885, 'Валдай', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1886, 'Великий Новгород', 57, 215000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1887, 'Волот', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1888, 'Демянск', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1889, 'Крестцы', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1890, 'Любытино', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1891, 'Малая Вишера', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1892, 'Марево', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1893, 'Мошенское', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1894, 'Окуловка', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1895, 'Парфино', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1896, 'Пестово', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1897, 'Поддорье', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1898, 'Сольцы', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1899, 'Старая Русса', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1900, 'Хвойная', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1901, 'Холм', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1902, 'Чудово', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1903, 'Шимск', 57, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1904, 'Башмаково', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1905, 'Беднодемьяновск', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1906, 'Беково', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1907, 'Белинский', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1908, 'Бессоновка', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1909, 'Вадинск', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1910, 'Городище', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1911, 'Земетчино', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1912, 'Исса', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1913, 'Каменка', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1914, 'Колышлей', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1915, 'Кондоль', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1916, 'Кузнецк', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1917, 'Лопатино', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1918, 'Лунино', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1919, 'Малая Сердоба', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1920, 'Мокшан', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1921, 'Наровчат', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1922, 'Неверкино', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1923, 'Нижний Ломов', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1924, 'Никольск', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1925, 'Пачелма', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1926, 'Пенза', 58, 506000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1927, 'Русский Камешкир', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1928, 'Сердобск', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1929, 'Сосновоборск', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1930, 'Тамала', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1931, 'Шемышейка', 58, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1932, 'Бежаницы', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1933, 'Великие Луки', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1934, 'Гдов', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1935, 'Дедовичи', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1936, 'Дно', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1937, 'Красногородское', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1938, 'Кунья', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1939, 'Локня', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1940, 'Невель', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1941, 'Новоржев', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1942, 'Новосокольники', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1943, 'Опочка', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1944, 'Остров', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1945, 'Палкино', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1946, 'Печоры', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1947, 'Плюсса', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1948, 'Порхов', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1949, 'Псков', 59, 192000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1950, 'Пустошка', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1951, 'Пушкинские Горы', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1952, 'Пыталово', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1953, 'Себеж', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1954, 'Струги- Красные', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1955, 'Усвяты', 59, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1956, 'Белая', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1957, 'Большое Солдатское', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1958, 'Глушково', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1959, 'Горшечное', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1960, 'Дмитриев-Льговский', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1961, 'Железногорск', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1962, 'Золотухино', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1963, 'Касторное', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1964, 'Конышевка', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1965, 'Коренево', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1966, 'Курск', 60, 414000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1967, 'Курчатов', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1968, 'Кшенский', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1969, 'Льгов', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1970, 'Мантурово', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1971, 'Медвенка', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1972, 'Обоянь', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1973, 'Поныри', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1974, 'Пристень', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1975, 'Прямицыно', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1976, 'Рыльск', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1977, 'Солнцево', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1978, 'Суджа', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1979, 'Тим', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1980, 'Фатеж', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1981, 'Хомутивка', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1982, 'Черемисиново', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1983, 'Щигры', 60, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1984, 'Белогорск', 61, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1985, 'Благовещенск', 61, 206000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1986, 'Завитинск', 61, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1987, 'Зея', 61, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1988, 'Ивановка', 61, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1989, 'Константиновка', 61, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1990, 'Новокиевский Увал', 61, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1991, 'Райчихинск', 61, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1992, 'Свободный', 61, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1993, 'Серышево', 61, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1994, 'Сковородино', 61, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1995, 'Тында', 61, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1996, 'Шимановск', 61, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1997, 'Беломорск', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1998, 'Калевала', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(1999, 'Кемь', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2000, 'Кондопога', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2001, 'Костомукша', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2002, 'Лахденпохья', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2003, 'Лоухи', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2004, 'Медвежьегорск', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2005, 'Муезерский', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2006, 'Олонец', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2007, 'Петрозаводск', 62, 271000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2008, 'Питкяранта', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2009, 'Пряжа', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2010, 'Пудож', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2011, 'Сегежа', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2012, 'Сортавала', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2013, 'Суоярви', 62, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2014, 'Белоярский', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2015, 'Березово', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2016, 'Когалым', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2017, 'Кондинское', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2018, 'Лангепас', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2019, 'Лянтор', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2020, 'Мегион', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2021, 'Междуреченский', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2022, 'Нефтеюганск', 63, 119000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2023, 'Нижневартовск', 63, 250000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2024, 'Нягань', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2025, 'Октябрьское', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2026, 'Пыть-ях', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2027, 'Радужный', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2028, 'Советский', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2029, 'Сургут', 63, 302000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2030, 'Урай', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2031, 'Ханты-мансийск', 63, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2032, 'Биробиджан', 64, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2033, 'Бокситогорск', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2034, 'Волосово', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2035, 'Волхов', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2036, 'Всеволожск', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2037, 'Выборг', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2038, 'Гатчина', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2039, 'Кингесепп', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2040, 'Кириши', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2041, 'Кировск', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2042, 'Лодейное Поле', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2043, 'Ломоносов', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2044, 'Луга', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2045, 'Пикалево', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2046, 'Подпорожье', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2047, 'Приозерск', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2048, 'Санкт-Петербург', 65, 4600000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2049, 'Сланцы', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2050, 'Сосновый Бор', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2051, 'Тихвин', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2052, 'Тосно', 65, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2053, 'Болхов', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2054, 'Верховье', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2055, 'Глазуновка', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2056, 'Дмитровск-Орловский', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2057, 'Залегощь', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2058, 'Змиевка', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2059, 'Знаменское', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2060, 'Колпна', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2061, 'Кромы', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2062, 'Ливны', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2063, 'Малоархангельское', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2064, 'Мценск', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2065, 'Нарышкино', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2066, 'Орел', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2067, 'Покровское', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2068, 'Тросна', 66, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2069, 'Большое Село', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2070, 'Борисоглебский', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2071, 'Брейтово', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2072, 'Гаврилов-ям', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2073, 'Данилов', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2074, 'Любим', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2075, 'Мышкин', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2076, 'Некрасовское', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2077, 'Новый Некоуз', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2078, 'Переяславль-Залесский', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2079, 'Пошехонье', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2080, 'Пречистое', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2081, 'Ростов', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2082, 'Рыбинск', 67, 207000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2083, 'Тугаев', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2084, 'Углич', 67, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2085, 'Ярославль', 67, 607000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2086, 'Большой Царын', 68, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2087, 'Городовиковск', 68, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2088, 'Ики-Бурул', 68, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2089, 'Каспийский', 68, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2090, 'Кетченеры', 68, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2091, 'Комсомольский', 68, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2092, 'Приютное', 68, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2093, 'Садовое', 68, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2094, 'Троицкое', 68, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2095, 'Цаган Аман', 68, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2096, 'Элиста', 68, 103000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2097, 'Яшалта', 68, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2098, 'Яшкуль', 68, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2099, 'Бондари', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2100, 'Гавриловка-2', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2101, 'Дмитриевка', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2102, 'Жердевка', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2103, 'Знаменка', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2104, 'Инжавино', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2105, 'Кирсанов', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2106, 'Котовск', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2107, 'Мичуринск', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2108, 'Мордово', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2109, 'Моршанск', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2110, 'Мучкапский', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2111, 'Первомайский', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2112, 'Петровское', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2113, 'Пичаево', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2114, 'Рассказово', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2115, 'Ржакса', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2116, 'Сатинка', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2117, 'Сосновка', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2118, 'Староюрьево', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2119, 'Тамбов', 69, 278000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2120, 'Токаревка', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2121, 'Уварово', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2122, 'Умет', 69, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2123, 'Брянск', 70, 409000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2124, 'Выгоничи', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2125, 'Гордеевка', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2126, 'Дубровка', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2127, 'Дятьково', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2128, 'Жиратино', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2129, 'Жуковка', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2130, 'Злынка', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2131, 'Карачев', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2132, 'Клетня', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2133, 'Климово', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2134, 'Клинцы', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2135, 'Комаричи', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2136, 'Красная Горка', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2137, 'Локоть', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2138, 'Мглин', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2139, 'Навля', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2140, 'Новозыбков', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2141, 'Погар', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2142, 'Почеп', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2143, 'Рогнедино', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2144, 'Севск', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2145, 'Стародуб', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2146, 'Суземка', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2147, 'Сураж', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2148, 'Трубачевск', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2149, 'Унеча', 70, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2150, 'Велиж', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2151, 'Вязяма', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2152, 'Гагарин', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2153, 'Глинка', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2154, 'Демидов', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2155, 'Десногорск', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2156, 'Дорогобуж', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2157, 'Духовщина', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2158, 'Ельня', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2159, 'Ершичи', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2160, 'Кардымово', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2161, 'Красный', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2162, 'Монастырщина', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2163, 'Новодугино', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2164, 'Починок', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2165, 'Рославль', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2166, 'Рудня', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2167, 'Сафоново', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2168, 'Смоленск', 71, 314000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2169, 'Сычевка', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2170, 'Темкино', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2171, 'Угра', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2172, 'Хиславичи', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2173, 'Холм-Жирковский', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2174, 'Шумячи', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2175, 'Ярцево', 71, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2176, 'Верхний Ландех', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2177, 'Вичуга', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2178, 'Гаврилов Посад', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2179, 'Иваново', 72, 403000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2180, 'Ильинское-Хованское', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2181, 'Кинешма', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2182, 'Комсомольск', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2183, 'Лежнево', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2184, 'Палех', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2185, 'Пестяки', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2186, 'Приволжск', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2187, 'Пучеж', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2188, 'Родники', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2189, 'Савино', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2190, 'Тейково', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2191, 'Фурманов', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2192, 'Шуя', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2193, 'Южа', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2194, 'Юрьевич', 72, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2195, 'Волжск', 73, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2196, 'Звенигово', 73, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2197, 'Йошкар-ола', 73, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2198, 'Килемары', 73, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2199, 'Козьмодемьянск', 73, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2200, 'Куженер', 73, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2201, 'Морки', 73, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2202, 'Новый Торъял', 73, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2203, 'Оршанка', 73, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2204, 'Параньга', 73, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2205, 'Сернур', 73, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2206, 'Советский', 73, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2207, 'Юрино', 73, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2208, 'Волово', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2209, 'Грязи', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2210, 'Данков', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2211, 'Добринка', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2212, 'Доброе', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2213, 'Долгоруково', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2214, 'Елец', 74, 110400);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2215, 'Задонск', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2216, 'Измалково', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2217, 'Красное', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2218, 'Лебедянь', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2219, 'Лев Толстой', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2220, 'Липецк', 74, 502000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2221, 'Становое', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2222, 'Тербуны', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2223, 'Усмань', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2224, 'Хлевное', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2225, 'Чаплыгин', 74, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2226, 'Волоколамск', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2227, 'Воскресенск', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2228, 'Голицыно', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2229, 'Дмитров', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2230, 'Домодедово', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2231, 'Дубна', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2232, 'Егорьевск', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2233, 'Жуковский', 75, 105000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2234, 'Зарайск', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2235, 'Звенигород', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2236, 'Истра', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2237, 'Клин', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2238, 'Коломна', 75, 148000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2239, 'Лотошино', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2240, 'Луховицы', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2241, 'Можайск', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2242, 'Москва', 75, 10563000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2243, 'Наро-Фоминск', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2244, 'Ногинск', 75, 116000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2245, 'Озеры', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2246, 'Орехово-Зуево', 75, 121000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2247, 'Павловский Посад', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2248, 'Подольск', 75, 183000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2249, 'Пушкино', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2250, 'Раменское', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2251, 'Руза', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2252, 'Сергиев Посад', 75, 106000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2253, 'Серебрянные Пруды', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2254, 'Серпухов', 75, 123000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2255, 'Солнечногорск', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2256, 'Ступино', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2257, 'Талдом', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2258, 'Троицк', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2259, 'Черноголовка', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2260, 'Чехов', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2261, 'Шатура', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2262, 'Шаховская', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2263, 'Щелково', 75, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2264, 'Электросталь', 75, 146000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2265, 'Дербент', 76, 112500);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2266, 'Касумкент', 76, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2267, 'Кизляр', 76, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2268, 'Курах', 76, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2269, 'Махачкала', 76, 469000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2270, 'Кызыл', 77, 110000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2271, 'Магадан', 78, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2272, 'Омсукчан', 78, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2273, 'Палатка', 78, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2274, 'Сеймчан', 78, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2275, 'Сусуман', 78, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2276, 'Усть-Омчуг', 78, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2277, 'Макаров', 79, 1);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2278, 'Южно-Сахалинск', 79, 175000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2279, 'Назрань', 80, 139000);
INSERT INTO city (id, `name`, region_id, weight) VALUES(2280, 'Усть-Ордынский', 81, 1);

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  id int(11) NOT NULL auto_increment,
  parent int(11) default NULL,
  message text NOT NULL,
  toward varchar(255) default NULL,
  location_id int(11) default NULL,
  profit_id int(11) default NULL,
  inbox_id int(11) default NULL,
  talk_id int(11) default NULL,
  fish_event_id int(11) default NULL,
  created_by int(11) NOT NULL,
  updated_by int(11) NOT NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  root_id bigint(20) default NULL,
  lft int(11) default NULL,
  rgt int(11) default NULL,
  `level` smallint(6) default NULL,
  PRIMARY KEY  (id),
  KEY comment_toward_idx (toward),
  KEY created_by_idx (created_by),
  KEY updated_by_idx (updated_by),
  KEY comment_fish_event_id_fish_event_id (fish_event_id),
  KEY comment_inbox_id_inbox_id (inbox_id),
  KEY comment_location_id_location_id (location_id),
  KEY comment_profit_id_profit_id (profit_id),
  KEY comment_talk_id_talk_id (talk_id)
) TYPE=InnoDB ;

INSERT INTO `comment` (id, parent, message, toward, location_id, profit_id, inbox_id, talk_id, fish_event_id, created_by, updated_by, created_at, updated_at, root_id, lft, rgt, `level`) VALUES(1, NULL, 'root', 'Inbox', NULL, NULL, 1, NULL, NULL, 10, 10, '2011-06-07 00:09:08', '2011-06-07 00:09:08', 1, 1, 6, 0);
INSERT INTO `comment` (id, parent, message, toward, location_id, profit_id, inbox_id, talk_id, fish_event_id, created_by, updated_by, created_at, updated_at, root_id, lft, rgt, `level`) VALUES(2, 1, '<p>и что каменты таки работают?</p>', 'Inbox', NULL, NULL, 1, NULL, NULL, 10, 10, '2011-06-07 00:09:08', '2011-06-07 00:09:08', 1, 2, 5, 1);
INSERT INTO `comment` (id, parent, message, toward, location_id, profit_id, inbox_id, talk_id, fish_event_id, created_by, updated_by, created_at, updated_at, root_id, lft, rgt, `level`) VALUES(3, NULL, 'root', 'profit', NULL, 3, NULL, NULL, NULL, 1, 1, '2011-06-08 02:28:01', '2011-06-08 02:28:02', 3, 1, 6, 0);
INSERT INTO `comment` (id, parent, message, toward, location_id, profit_id, inbox_id, talk_id, fish_event_id, created_by, updated_by, created_at, updated_at, root_id, lft, rgt, `level`) VALUES(4, 3, '<p>Почему у ПХ?</p>', 'profit', NULL, 3, NULL, NULL, NULL, 8, 8, '2011-06-08 02:28:02', '2011-06-08 02:28:02', 3, 2, 5, 1);
INSERT INTO `comment` (id, parent, message, toward, location_id, profit_id, inbox_id, talk_id, fish_event_id, created_by, updated_by, created_at, updated_at, root_id, lft, rgt, `level`) VALUES(5, 2, '<p>А что твоя еврейская рожа сомнивается? А где втоя аватрка с евреем?</p>', 'Inbox', NULL, NULL, 1, NULL, NULL, 7, 7, '2011-06-08 02:29:55', '2011-06-08 02:29:55', 1, 3, 4, 2);
INSERT INTO `comment` (id, parent, message, toward, location_id, profit_id, inbox_id, talk_id, fish_event_id, created_by, updated_by, created_at, updated_at, root_id, lft, rgt, `level`) VALUES(6, 4, '<p>А потому что рядом Пустые Холмы проводят в этом году. Уже голожопые носятся и строят себе хижины</p>', 'profit', NULL, 3, NULL, NULL, NULL, 7, 7, '2011-06-08 11:59:49', '2011-06-08 11:59:49', 3, 3, 4, 2);
INSERT INTO `comment` (id, parent, message, toward, location_id, profit_id, inbox_id, talk_id, fish_event_id, created_by, updated_by, created_at, updated_at, root_id, lft, rgt, `level`) VALUES(7, NULL, 'root', 'location', 305, NULL, NULL, NULL, NULL, 12, 12, '2011-06-17 20:44:38', '2011-06-17 20:44:38', 7, 1, 4, 0);
INSERT INTO `comment` (id, parent, message, toward, location_id, profit_id, inbox_id, talk_id, fish_event_id, created_by, updated_by, created_at, updated_at, root_id, lft, rgt, `level`) VALUES(8, 7, '<p>Привет! пруд, как и речка называется Желёма. Водица там карась, плотва, окунь, мной был пойман экземпляр весом 400 грамм. небыл там года два. говорят, что зделали, или хотят зделать платник.</p>', 'location', 305, NULL, NULL, NULL, NULL, 12, 12, '2011-06-17 20:44:38', '2011-06-17 20:44:38', 7, 2, 3, 1);
INSERT INTO `comment` (id, parent, message, toward, location_id, profit_id, inbox_id, talk_id, fish_event_id, created_by, updated_by, created_at, updated_at, root_id, lft, rgt, `level`) VALUES(9, NULL, 'root', 'location', 697, NULL, NULL, NULL, NULL, 9, 9, '2011-09-28 14:10:20', '2011-09-28 14:10:20', 9, 1, 4, 0);
INSERT INTO `comment` (id, parent, message, toward, location_id, profit_id, inbox_id, talk_id, fish_event_id, created_by, updated_by, created_at, updated_at, root_id, lft, rgt, `level`) VALUES(10, 9, '<p>Самый лучший ЯЗЬ тут!!!:&nbsp;</p>\n<p>http://www.youtube.com/watch?v=DKJ2SejHUrY&amp;feature=feedlik</p>', 'location', 697, NULL, NULL, NULL, NULL, 9, 9, '2011-09-28 14:10:20', '2011-09-28 14:10:21', 9, 2, 3, 1);
INSERT INTO `comment` (id, parent, message, toward, location_id, profit_id, inbox_id, talk_id, fish_event_id, created_by, updated_by, created_at, updated_at, root_id, lft, rgt, `level`) VALUES(11, NULL, 'root', 'talk', NULL, NULL, NULL, 1, NULL, 9, 9, '2011-09-28 14:13:15', '2011-09-28 14:13:15', 11, 1, 4, 0);
INSERT INTO `comment` (id, parent, message, toward, location_id, profit_id, inbox_id, talk_id, fish_event_id, created_by, updated_by, created_at, updated_at, root_id, lft, rgt, `level`) VALUES(12, 11, '<p>ЯЗЬ!!!!</p>\n<p>http://www.youtube.com/watch?v=DKJ2SejHUrY&amp;feature=feedlik</p>', 'talk', NULL, NULL, NULL, 1, NULL, 9, 9, '2011-09-28 14:13:15', '2011-09-28 14:13:15', 11, 2, 3, 1);

DROP TABLE IF EXISTS country;
CREATE TABLE IF NOT EXISTS country (
  id int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY `name` (`name`)
) TYPE=InnoDB ;

INSERT INTO country (id, `name`) VALUES(2, 'Беларусь');
INSERT INTO country (id, `name`) VALUES(4, 'Казахстан');
INSERT INTO country (id, `name`) VALUES(3, 'Латвия');
INSERT INTO country (id, `name`) VALUES(8, 'Мозамбик');
INSERT INTO country (id, `name`) VALUES(1, 'Россия');
INSERT INTO country (id, `name`) VALUES(9, 'Турция');
INSERT INTO country (id, `name`) VALUES(5, 'Украина');
INSERT INTO country (id, `name`) VALUES(6, 'Финляндия');
INSERT INTO country (id, `name`) VALUES(7, 'Эстония');

DROP TABLE IF EXISTS fish;
CREATE TABLE IF NOT EXISTS fish (
  id int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY `name` (`name`)
) TYPE=InnoDB ;

INSERT INTO fish (id, `name`) VALUES(89, 'Амур');
INSERT INTO fish (id, `name`) VALUES(74, 'Белуга');
INSERT INTO fish (id, `name`) VALUES(91, 'Буффало ');
INSERT INTO fish (id, `name`) VALUES(76, 'Вьюн');
INSERT INTO fish (id, `name`) VALUES(56, 'Голавль');
INSERT INTO fish (id, `name`) VALUES(77, 'Голец');
INSERT INTO fish (id, `name`) VALUES(79, 'Гольян');
INSERT INTO fish (id, `name`) VALUES(59, 'Губан');
INSERT INTO fish (id, `name`) VALUES(81, 'Густера');
INSERT INTO fish (id, `name`) VALUES(42, 'Елец');
INSERT INTO fish (id, `name`) VALUES(66, 'Жерех');
INSERT INTO fish (id, `name`) VALUES(61, 'Камбала');
INSERT INTO fish (id, `name`) VALUES(63, 'Кантар');
INSERT INTO fish (id, `name`) VALUES(3, 'Карась');
INSERT INTO fish (id, `name`) VALUES(4, 'Карп');
INSERT INTO fish (id, `name`) VALUES(52, 'Катран');
INSERT INTO fish (id, `name`) VALUES(83, 'Кета');
INSERT INTO fish (id, `name`) VALUES(50, 'Кефаль');
INSERT INTO fish (id, `name`) VALUES(69, 'Крап');
INSERT INTO fish (id, `name`) VALUES(55, 'Красноперка');
INSERT INTO fish (id, `name`) VALUES(57, 'Кумажа');
INSERT INTO fish (id, `name`) VALUES(68, 'Ленок');
INSERT INTO fish (id, `name`) VALUES(9, 'Лещ');
INSERT INTO fish (id, `name`) VALUES(48, 'Лиманда');
INSERT INTO fish (id, `name`) VALUES(53, 'Линь');
INSERT INTO fish (id, `name`) VALUES(84, 'Лобан');
INSERT INTO fish (id, `name`) VALUES(62, 'Макрель');
INSERT INTO fish (id, `name`) VALUES(41, 'Марена');
INSERT INTO fish (id, `name`) VALUES(87, 'Минога');
INSERT INTO fish (id, `name`) VALUES(47, 'Налим');
INSERT INTO fish (id, `name`) VALUES(88, 'Нерка');
INSERT INTO fish (id, `name`) VALUES(1, 'Окунь');
INSERT INTO fish (id, `name`) VALUES(51, 'Палтус');
INSERT INTO fish (id, `name`) VALUES(86, 'Пелядь');
INSERT INTO fish (id, `name`) VALUES(64, 'Пескарь');
INSERT INTO fish (id, `name`) VALUES(11, 'Плотва');
INSERT INTO fish (id, `name`) VALUES(65, 'Подлещик');
INSERT INTO fish (id, `name`) VALUES(75, 'Ротан');
INSERT INTO fish (id, `name`) VALUES(90, 'Сазан');
INSERT INTO fish (id, `name`) VALUES(49, 'Сайда');
INSERT INTO fish (id, `name`) VALUES(58, 'Сарган');
INSERT INTO fish (id, `name`) VALUES(43, 'Семга');
INSERT INTO fish (id, `name`) VALUES(13, 'Сом');
INSERT INTO fish (id, `name`) VALUES(85, 'Ставрида');
INSERT INTO fish (id, `name`) VALUES(10, 'Судак');
INSERT INTO fish (id, `name`) VALUES(67, 'Таймень');
INSERT INTO fish (id, `name`) VALUES(78, 'Толстолобик');
INSERT INTO fish (id, `name`) VALUES(46, 'Треска');
INSERT INTO fish (id, `name`) VALUES(45, 'Угорь');
INSERT INTO fish (id, `name`) VALUES(82, 'Уклейка');
INSERT INTO fish (id, `name`) VALUES(12, 'Форель');
INSERT INTO fish (id, `name`) VALUES(44, 'Хариус');
INSERT INTO fish (id, `name`) VALUES(80, 'Чехонь');
INSERT INTO fish (id, `name`) VALUES(2, 'Щука');
INSERT INTO fish (id, `name`) VALUES(72, 'Язь');

DROP TABLE IF EXISTS fish_event;
CREATE TABLE IF NOT EXISTS fish_event (
  id int(11) NOT NULL auto_increment,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  description text,
  schedule text,
  price text,
  contact text,
  rules text,
  users text,
  location_id int(11) NOT NULL,
  fish_event_type_id int(11) NOT NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  created_by int(11) NOT NULL,
  updated_by int(11) NOT NULL,
  PRIMARY KEY  (id),
  KEY location_id_idx (location_id),
  KEY fish_event_type_id_idx (fish_event_type_id),
  KEY created_by_idx (created_by),
  KEY updated_by_idx (updated_by)
) TYPE=InnoDB ;

INSERT INTO fish_event (id, `date`, `name`, description, schedule, price, contact, rules, users, location_id, fish_event_type_id, created_at, updated_at, created_by, updated_by) VALUES(1, '2011-07-02', 'ВОЛЖСКИЙ ТРОФЕЙ 2011', '<div align="center">\r\n<div align="center"><span style="font-size: small;"><span style="color: black;"><span style="font-family: Verdana;">В период </span><span style="font-family: Verdana;">с 2 по 9 июля 2011г.</span></span></span><br /> <span style="font-size: small;"><span style="color: black;"><span style="font-family: Verdana;">Пройдёт </span><span style="font-family: Verdana;">рыболовный Фестиваль </span></span></span><br /> <span style="font-family: Comic Sans MS;"><span style="font-size: medium;"><span style="color: red;"><strong>&laquo;В<img class="inlineimg" title="Улыбка" src="http://www.rusfishing.ru/forum/images/smilies/smil.gif" alt="" border="0" />ЛЖСКИЙ ТР<img class="inlineimg" title="Киваем" src="http://www.rusfishing.ru/forum/images/smilies/yes.gif" alt="" border="0" />ФЕЙ 2011&raquo;</strong></span></span></span><br /> <span style="font-family: Verdana;"><span style="font-size: small;"><span style="color: black;">Организатор Фестиваля &ndash;</span></span></span><br /> <span style="font-family: Verdana;"><span style="font-size: small;"><span style="color: blue;">Рыболовный клуб &rdquo;Русфишинг&rdquo;<br /><br /></span></span></span></div>\r\n<span style="font-size: medium;"><span style="color: red;">Уважаемые Друзья!</span></span><img class="inlineimg" title="Друзья" src="http://www.rusfishing.ru/forum/images/smilies/friends.gif" alt="" border="0" /><br /> <span style="color: blue;">Главной целью Фестиваля является дружеское общение </span><span style="color: blue;">и обмен опытом рыболовов из разных городов и регионов России, </span><span style="color: blue;">а также популяризация любительского </span><span style="color: blue;">рыболовства и пропаганда ответственного отношения к водоемам и их обитателям.<br /><br /></span>Информационная поддержка: <br /> <br /> -Центральный Форум Рыбаков. МОО Центральный рыболовный клуб <span style="color: blue;"><span style="text-decoration: underline;">"RUSFISHING"</span></span><br /> <br /> Форма проведения соревнований: <br /> -Соревнования проводятся в личном зачёте.<br /><br /><span style="color: red;"><span style="text-decoration: underline;">Дополнительная информация. </span></span><br /> <br /> <span style="font-family: Times New Roman;">В период проведения Фестиваля приглашаем всех участников на мастер-класс <img class="inlineimg" title="Тащу" src="http://www.rusfishing.ru/forum/images/smilies/5.gif" alt="" border="0" /></span><br /> <span style="color: red;"><span style="font-family: Times New Roman;">&ldquo;</span><span style="font-family: Verdana;">ОСНОВЫ УСПЕШНОЙ ЛОВЛИ СОМА!&rdquo;</span></span><br /> <br /> <span style="color: black;"><span style="font-family: Verdana;">ЦЕЛИ И ЗАДАЧИ ПРОВЕДЕНИЯ</span></span><span style="color: black;"><span style="font-family: Verdana;">&hellip;..</span></span><br /> <br /> <span style="color: black;"><span style="font-family: Verdana;">-РАЗРУШИТЬ СТЕРЕОТИП О СЛОЖНОСТИ ПОЗНАНИЙ ТЕХНОЛОГИИ ЛОВЛИ СОМА.</span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">-ОБСУДИТЬ ПОДХОДЫ И РЕШЕНИЯ.</span></span><br /> <span style="color: black;"><span style="font-family: Times New Roman;">- </span></span><span style="color: black;"><span style="font-family: Verdana;">НАУЧИТЬ УЧАСТНИКА САМОСТОЯТЕЛЬНО ПРИГОТОВИТЬ СНАСТИ.</span></span><br /> <br /> <span style="font-family: Times New Roman;">В программе мастер-класса&hellip;&hellip;..</span><br /> <br /> <span style="font-family: Times New Roman;">-Общие рекомендации в подборе снастей для ловли сома с квоком.</span><br /> <span style="font-family: Times New Roman;">-Общие рекомендации по ловле сома донной снастью.</span><br /> <span style="font-family: Times New Roman;">-Советы по выбору удилища,катушки,лески.</span><br /> <span style="font-family: Times New Roman;">-Подходы в выборе монтажа (применяемые грузила и крючки).</span><br /> <span style="font-family: Times New Roman;">-Работа квока. Теория и демонстрация мастеров!</span><br /> <span style="font-family: Times New Roman;">-Правильное вываживание сома.</span><br /> <span style="font-family: Times New Roman;">-Как найти место и на что ловить?</span><br /> <span style="font-family: Times New Roman;">-И ещё много интересного и увлекательного&hellip;&hellip;.</span><br /> <br /> <span style="font-family: Times New Roman;">Мастер класс сотоится сразу после торжественного открытия Фестиваля. Проведёт мастер-класс известный егерь-сомятник, настоящий мастер своего дела</span><br /> <span style="font-family: Times New Roman;"><span style="color: red;">Владимир Велявин.</span></span><br /><br />\r\n<div align="center"><span style="color: red;"><span style="font-family: Verdana;">Место сбора и отправления автобуса;</span></span><br /> <span style="text-decoration: underline;"><span style="font-family: Verdana;"><span style="color: #22229c;"><a href="http://maps.yandex.ru/moscow?upoint=77094167669f" target="_blank">http://maps.yandex.ru/moscow?upoint=77094167669f</a></span></span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">м.ОРЕХОВО(метро-посл.вагон из центра, </span><span style="font-family: Verdana;">выход к площадке автобусного круга</span><span style="font-family: Verdana;">.</span><span style="font-family: Verdana;">ВНИМАНИЕ!</span><span style="font-family: Verdana;"> м.Орехово-2выхода)</span><span style="font-family: Verdana;">. </span></span><br /> <span style="font-size: small;"><span style="color: black;"><span style="font-family: Verdana;"><span style="color: red;">Сбор к </span></span><span style="font-family: Verdana;"><span style="color: red;">21.00 час</span> (<span style="color: red;">01.07.11</span>) </span></span></span><br /> <span style="font-size: small;"><span style="color: red;"><span style="font-family: Verdana;">Старт 22.00 часов</span></span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">Возвращение в Москву(на место старта)10.07.11 (прибытие примерно в</span><span style="font-family: Verdana;"> 15.00час.)</span></span></div>\r\n</div>', '<div align="left"><span style="text-decoration: underline;">1-й день</span> (02.07.) Заезд на базу.........<br /> С 14.00 часов (<span style="color: red;">личный транспорт</span>), размещение, отдых.<br /> В 21.00 часов (<span style="color: red;">автобус</span>), размещение, отдых.</div>\r\n<p><br /> <span style="text-decoration: underline;">2-й день</span> (03.07.) &ndash; с 5.00 &ndash; Получение лодок, инструктаж по технике безопасности, знакомство с акваторией.<span style="color: red;">15:00 &ndash;Торжественное Открытие Фестиваля! Старт Фестиваля!</span><br /> <br /> <span style="text-decoration: underline;">3-й день</span> (04.07.) &ndash; Фестивалим!!!<img class="inlineimg" title="Тащу" src="http://www.rusfishing.ru/forum/images/smilies/5.gif" alt="" border="0" /> <img class="inlineimg" title="Друзья" src="http://www.rusfishing.ru/forum/images/smilies/friends.gif" alt="" border="0" /><img class="inlineimg" title="Клево" src="http://www.rusfishing.ru/forum/images/smilies/victory.gif" alt="" border="0" /><br /> (рыбалка, отдых, общение единомышленников)<br /> <br /> <span style="text-decoration: underline;">4-й день</span> (05.07.) &ndash; продолжаем Фестивалить<img class="inlineimg" title="Друзья" src="http://www.rusfishing.ru/forum/images/smilies/friends.gif" alt="" border="0" /><img class="inlineimg" title="Клево" src="http://www.rusfishing.ru/forum/images/smilies/victory.gif" alt="" border="0" /><img class="inlineimg" title="Тащу" src="http://www.rusfishing.ru/forum/images/smilies/5.gif" alt="" border="0" /> <img class="inlineimg" title="Улыбка" src="http://www.rusfishing.ru/forum/images/smilies/smil.gif" alt="" border="0" />!<br /> <br /> <span style="text-decoration: underline;">5-й день</span> (06.07.) &ndash; продолжение Рыболовного Праздника<img class="inlineimg" title="Тащу" src="http://www.rusfishing.ru/forum/images/smilies/5.gif" alt="" border="0" /><img class="inlineimg" title="Друзья" src="http://www.rusfishing.ru/forum/images/smilies/friends.gif" alt="" border="0" />!<br /> <br /> <span style="text-decoration: underline;">6-й день</span> (07.07.) &ndash; продолжение Рыболовного Праздника<img class="inlineimg" title="Тащу" src="http://www.rusfishing.ru/forum/images/smilies/5.gif" alt="" border="0" /><img class="inlineimg" title="Друзья" src="http://www.rusfishing.ru/forum/images/smilies/friends.gif" alt="" border="0" />!<br /> <br /> <span style="text-decoration: underline;">7-й день</span> (08.07.) - последний день рыболовного турнира до 20.00 час.<br /> <span style="color: #ff0000;">21.00 &ndash; подведение итогов Закрытие Фестиваля! </span><br /> <span style="color: #ff0000;">Торжественое </span><span style="color: #ff0000;">награждение победителей!!! 22.00 банкет!</span><br /> <br /> <span style="text-decoration: underline;">8-й день</span> (09.07.) - свободный режим, отдых, рыбалка. <span style="color: red;">В 12.00 выезд с базы.</span></p>', '<p>&nbsp;</p>\r\n<div align="center"><span style="font-family: Verdana;"><span style="font-size: small;"><span style="color: red;">Вариант №1</span></span></span></div>\r\n<p><br /> <span style="font-family: Verdana;"><span style="color: black;">Приезд на базу на личном транспорте;</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">(Заезд на базу 02.07 после 14.00 час., выезд с базы 09.07 в 12.00 час.)</span></span><br /> <br /> <span style="font-family: Verdana;"><span style="color: black;">Стоимость участия :</span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">-<span style="color: red;">8000</span></span><span style="font-family: Verdana;"><span style="color: red;"> рублей</span></span><span style="font-family: Verdana;"> (проживание на базе в период проведения Фестиваля = 7 суток ) </span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">-</span><span style="font-family: Verdana;"><span style="color: red;">500 рублей</span></span><span style="font-family: Verdana;"> Регистрационный взнос Фестиваля с участника </span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">(Участие в мероприятии организованным клубом. Праздничный фуршет посвящённый закрытию Фестиваля!)</span></span><br /> <span style="font-family: Verdana;"><span style="color: red;">От регистрационных взносов(500 руб) освобождаются:</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Дети до 16 лет.</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Ветераны ВОВ.</span></span><br /> Дети до 12 лет проживание на базе на дополнительном месте-<span style="text-decoration: underline;"><span style="color: red;">БЕСПЛАТНО</span></span></p>\r\n<div align="center"><span style="font-family: Verdana;"><span style="font-size: small;"><span style="color: red;">Вариант №2</span></span></span></div>\r\n<p><br /> <span style="color: black;"><span style="font-family: Verdana;">Традиционный </span><span style="font-family: Verdana;"><span style="color: red;">Клубный Автобус!</span></span><span style="font-family: Verdana;"> (Доставка участников Москва-База-Москва)</span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">Кол-во мест в автобусе = </span><span style="font-family: Verdana;">45 человек</span><span style="font-family: Verdana;">.</span></span><br /> <br /> <span style="font-family: Verdana;"><span style="color: black;">Стоимость участия :</span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">-</span><span style="font-family: Verdana;"><span style="color: red;">10500 рублей</span></span><span style="font-family: Verdana;"> ( проезд в автобусе туда и обратно, проживание на базе в период проведения Фестиваля)</span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">-</span><span style="font-family: Verdana;"><span style="color: red;">500 рублей</span></span><span style="font-family: Verdana;"> Регистрационный взнос Фестиваля с участника </span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">(Участие в мероприятии организованным клубом. Праздничный фуршет посвящённый закрытию Фестиваля!)</span></span><br /> <span style="font-family: Verdana;"><span style="color: red;">От регистрационных взносов(500 руб) освобождаются:</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Дети до 16 лет.</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Ветераны ВОВ.</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">-Дети до 12 лет Скидка 80% (проезд в автобусе на основном месте, проживание на базе на дополнительном месте)</span></span></p>\r\n<p><span style="font-family: Verdana;"><span style="color: black;"><br /></span></span></p>\r\n<p><span style="color: red;">На территории Базы организован песчанный пляж для купания и отдыха, прокат шезлонгов, зонтиков, бесплатная "таблетка" для катания на воде, бесплатный теннисный стол и многое другое, что позволит отлично провести Ваш отдых в летний период!</span><br /> <span style="font-family: Verdana;"><span style="color: black;">Питание в кафе круглосуточное!</span></span><br /> <span style="color: black;"><span style="font-family: Times New Roman;"><span style="font-size: small;">На территории Базы работает кафе, где Вас ждет теплая, уютная обстановка, улыбки персонала и </span></span><span style="font-family: Verdana;">большой ассортимент</span><span style="font-family: Times New Roman;"><span style="font-size: small;"> вкусных и любимых блюд: горячие и холодные закуски, первые и вторые блюда, десерты. выпечка, мороженое. </span></span><span style="font-family: Verdana;">Средняя цена за полноценное 3-х разовое питание от 700 рублей. В</span><span style="font-family: Verdana;">т.ч.завтрак -</span><span style="font-family: Verdana;">ок.150руб, обед - ок.250-300руб., ужин ок.250руб.</span><span style="font-family: Times New Roman;"><span style="font-size: small;">В кафе представлен </span></span><span style="font-family: Verdana;">широкий выбор</span><span style="font-family: Times New Roman;"><span style="font-size: small;"> напитков, разнообразных сортов пива, сигарет, соков и пр. По вашему желанию повара приготовят практически любое </span></span><span style="font-family: Verdana;">блюдо на</span><span style="font-family: Verdana;">заказ</span><span style="font-size: small;"><span style="font-family: Times New Roman;">, в том числе и </span></span><span style="font-family: Verdana;">из Ваших трофеев. </span></span><br /> <span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="color: black;">Дополнительные услуги;</span></span></span><br /> <span style="font-family: Times New Roman;"><span style="font-size: small;"><span style="color: black;">Баня, бильярд, коптильни (холодного и горячего копчения). Рыболовный отдел по продаже и аренде рыболовных снастей!</span></span></span><br /> <br /> <span style="font-family: Times New Roman;"><span style="font-size: small;"><span style="color: blue;">ЛОДКИ <span style="font-size: x-small;">(оплата за 6 дней)</span></span></span></span><br /> <br /> <span style="font-family: Times New Roman;"><span style="color: black;"><span style="text-decoration: underline;">С мотором 15 л.с.: </span>стоимость </span><span style="color: red;">800 руб/ световой день</span></span><br /> <br /> <span style="font-family: Times New Roman;"><span style="color: black;">Сава 420К пластик 8штук</span></span><br /> <span style="font-family: Times New Roman;"><span style="color: black;">Сава 425 пластик 6 штук</span></span><br /> <span style="font-family: Times New Roman;"><span style="color: black;">Крым 5 штук</span></span><br /> <span style="font-family: Times New Roman;"><span style="color: black;">Прогресс 2М 4 штуки</span></span><br /> <span style="font-family: Times New Roman;"><span style="color: black;">Казанка 5М 2штуки</span></span><br /> <br /> <span style="font-family: Times New Roman;"><span style="color: black;"><span style="text-decoration: underline;">С мотором 40 л.с. и эхолотом</span> стоимость 1500 руб/ световой день</span></span><br /> <br /> <span style="font-family: Times New Roman;"><span style="color: black;">Казанка 5М4 3 штуки</span></span><br /> <br /> <span style="font-family: Times New Roman;"><span style="color: red;">Лодки бронируются мин.на два человека. При бронировании места , бронируйте лодку с указанием мотора!</span></span></p>', '<p><span style="font-family: Times New Roman;"><span style="font-size: medium;"><span style="color: blue;">для бронирования мест:</span></span></span><br /> <span style="color: darkred;"><span style="font-family: Verdana;">Денисов Андрей Александрович </span><span style="font-family: Verdana;">(МАРЛИН)</span></span><br /> <span style="font-family: Verdana;"><span style="color: darkgreen;">8.903-142-30*42</span></span><br /> <span style="color: darkred;"><span style="font-family: Verdana;">Микожанс Эрикс Владимирович </span><span style="font-family: Verdana;">(ZHANS)</span></span><br /> <span style="font-family: Verdana;"><span style="color: darkgreen;">8.905-598-34*63</span></span></p>', '<p><br /> 1. Турнир проводится по следующим номинациям (личный зачёт);<br /> <br /> <strong><span style="color: blue;">&middot;</span></strong> <span style="font-size: small;"><span style="color: darkgreen;">&laquo;Самая крупная стайная рыба&raquo; <span style="color: red;">1,2,3 место</span></span></span><br /> <span style="font-size: small;"><span style="color: darkgreen;"><strong>&middot; </strong>&laquo;Самая крупная хищная рыба&raquo; </span><span style="color: red;">1,2,3 место</span></span><br /> <span style="font-size: small;"><span style="color: darkgreen;"><strong>&middot; </strong>&laquo;Усатый гигант&raquo; </span><span style="color: red;">1,2,3 место</span></span><br /> <span style="font-size: small;"><span style="color: darkgreen;"><strong>&middot;</strong> &laquo;Золотой Сазан&raquo; </span><span style="color: red;">1,2,3 место</span></span><br /> <strong><span style="color: #0000ff;">&middot;</span></strong><span style="font-size: medium;"><span style="color: green;">&laquo;Мой Волжский Трофей!&raquo;</span></span> <span style="color: red;">Детская номинация</span> <img class="inlineimg" title="Малыш" src="http://www.rusfishing.ru/forum/images/smilies/sosa.gif" alt="" border="0" /><br /> Проигравших у детей нет(в зачёт принемается вся рыба)<img class="inlineimg" title="Улыбка" src="http://www.rusfishing.ru/forum/images/smilies/smil.gif" alt="" border="0" /><br /> <br /> 2. Один участник может принять участие во всех номинациях одновременно, но только на одно призовое место в каждой.<br /> 3. Победитель выявляется по наибольшему весу (на личное усмотрение) самой крупной рыбы. В случае если вес одинаковый у нескольких участников, победитель определяется по самому большому второму (третьему) экземпляру, предоставленному судейской бригаде (на взвешивание предоставляется до трёх рыб).<br /> 4. Регистрация улова возможна сразу по ходу проведения соревнований- 03, 04, 05<span style="color: black;">, 06,07 и <span style="text-decoration: underline;"><span style="color: red;">08</span></span> </span>с 12.00 &ndash; 13.00 и с 21.30 - 22.30 кафе базы.<br /> 5. В зачет принимаются:<br /> -&laquo;Самая большая хищная рыба&raquo;: судак, щука, жерех, берш, язь, окунь. <span style="color: red;">(за исключением сома)</span><br /> -&laquo;Самая крупная стайная рыба&raquo;: вся "белая" рыба: лещ, плотва, краснопёрка, густера, буфало, чехонь, и т.д<span style="color: red;">.(сазан в зачёт не идёт!)</span><br /> -&laquo;Усатый гигант&raquo;: сом<br /> -&laquo;Золотой Сазан&raquo;: сазан <span style="color: red;">(буфало в зачёт не идёт!).</span><br /> <br /> 6. В соревнованиях по &laquo;Стайной рыбе&raquo; можно использовать: поплавочные и донные снасти всех типов, количество прикормки не ограничено.<br /> 7. В соревнованиях по &laquo;Хищнику&raquo; - можно использовать блёсна всех типов, воблеры, снасточки, кружки, лов на дорожку (троллинг) с применением мускульной силы и мотора с использованием не более двух искусственных приманок.<br /> 8. В соревнованиях по &laquo;Усатому гиганту&raquo;- можно использовать снасти предусмотренные в п.6, п.7., и лов "на квок".<br /> 9. Места лова, в зависимости от предпочтения самого участника.<br /> 10. Все спорные вопросы решаются судейской бригадой.<br /> 11. <span style="color: red;">Минимальный размер рыбы принимаемой в зачет (см.)</span><br /> <span style="color: blue;">Жерех </span><span style="color: blue;">32</span><br /> <span style="color: blue;">Судак 40</span><br /> <span style="color: blue;">Лещ 24</span><br /> <span style="color: blue;">Щука 32</span><br /> <span style="color: blue;">Сазан 40</span><br /> <span style="color: blue;">Сом пресноводный 60</span><br /> <span style="color: blue;">Вобла, плотва 17</span><br /> <span style="color: blue;">Красноперка 17</span><br /> <span style="color: blue;">Чехонь 22</span><br /> <span style="color: blue;">Линь 22</span></p>', '', 682, 5, '2011-05-19 01:16:59', '2011-05-20 01:02:47', 1, 1);
INSERT INTO fish_event (id, `date`, `name`, description, schedule, price, contact, rules, users, location_id, fish_event_type_id, created_at, updated_at, created_by, updated_by) VALUES(2, '2011-09-03', 'Золотой трофей 2011', '<p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="font-size: x-small;"><span style="color: #00cc66;"><span style="color: #00cc66;"><span style="font-size: medium;">Рыболовный Фестиваль "Золотой трофей 2011" </span></span></span></span></p>\r\n<p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="color: #00cc66;"><span style="font-size: x-small;"><span style="font-size: medium;">Организатор фестиваля рыболовный клуб "РУСФИШИНГ"</span></span></span></p>\r\n<p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="color: #00cc66;"><span style="font-size: x-small;"><span style="font-size: medium;">Анонс и запись на участие будет открыта 01 марта 2011г.</span></span></span></p>', '', '<div align="center"><span style="font-family: Verdana;"><span style="font-size: small;"><span style="color: red;">Вариант №1</span></span></span></div>\r\n<p><br /> <span style="font-family: Verdana;"><span style="color: black;">Приезд на базу на личном транспорте;</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">(Заезд на базу 03.09 после 14.00 час., выезд с базы 10.09 в 12.00 час.)</span></span><br /> <br /> <span style="font-family: Verdana;"><span style="color: black;">Стоимость участия :</span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">-<span style="color: red;">8000</span></span><span style="font-family: Verdana;"><span style="color: red;"> рублей</span></span><span style="font-family: Verdana;"> (проживание на базе в период проведения Фестиваля = 7 суток ) </span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">-</span><span style="font-family: Verdana;"><span style="color: red;">500 рублей</span></span><span style="font-family: Verdana;"> Регистрационный взнос Фестиваля с участника </span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">(Участие в мероприятии организованным клубом. Праздничный фуршет посвящённый закрытию Фестиваля!)</span></span><br /> <span style="font-family: Verdana;"><span style="color: red;">От регистрационных взносов(500 руб) освобождаются:</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Дети до 16 лет.</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Ветераны ВОВ.</span></span><br /> Дети до 12 лет проживание на базе на дополнительном месте-<span style="text-decoration: underline;"><span style="color: red;">БЕСПЛАТНО</span></span></p>\r\n<div align="center"><span style="font-family: Verdana;"><span style="font-size: small;"><span style="color: red;">Вариант №2</span></span></span></div>\r\n<p><br /> <span style="color: black;"><span style="font-family: Verdana;">Традиционный </span><span style="font-family: Verdana;"><span style="color: red;">Клубный Автобус!</span></span><span style="font-family: Verdana;"> (Доставка участников Москва-База-Москва)</span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">Кол-во мест в автобусе = </span><span style="font-family: Verdana;">45 человек</span><span style="font-family: Verdana;">.</span></span><br /> <br /> <span style="font-family: Verdana;"><span style="color: black;">Стоимость участия :</span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">-</span><span style="font-family: Verdana;"><span style="color: red;">10500 рублей</span></span><span style="font-family: Verdana;"> ( проезд в автобусе туда и обратно, проживание на базе в период проведения Фестиваля)</span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">-</span><span style="font-family: Verdana;"><span style="color: red;">500 рублей</span></span><span style="font-family: Verdana;"> Регистрационный взнос Фестиваля с участника </span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">(Участие в мероприятии организованным клубом. Праздничный фуршет посвящённый закрытию Фестиваля!)</span></span><br /> <span style="font-family: Verdana;"><span style="color: red;">От регистрационных взносов(500 руб) освобождаются:</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Дети до 16 лет.</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Ветераны ВОВ.</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">-Дети до 12 лет Скидка 80% (проезд в автобусе на основном месте, проживание на базе на дополнительном месте)</span></span></p>', '<p><span style="font-size: 13.5pt;"><span style="font-size: 14pt;"><span style="font-size: x-small;"><span style="font-size: medium;">Денисов Андрей Александрович (МАРЛИН) <span style="color: #00cc66;">8.903-142-30*42<br /></span>Микожанс Эрикс Владимирович (ZHANS) <span style="color: #00cc66;">8.905-598-34*63</span></span></span></span></span></p>', '', '', 682, 5, '2011-06-14 11:52:44', '2011-06-14 18:52:15', 1, 1);
INSERT INTO fish_event (id, `date`, `name`, description, schedule, price, contact, rules, users, location_id, fish_event_type_id, created_at, updated_at, created_by, updated_by) VALUES(3, '2011-10-15', 'Осенний трофей 2011', '<p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="color: #00cc66;"><span style="font-size: x-small;"><span style="font-size: medium;"><span style="font-size: medium;">Рыболовный Фестиваль "Осенний трофей 2011"</span></span></span></span></p>\r\n<p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="color: #00cc66;"><span style="font-size: x-small;"><span style="font-size: medium;">Организатор фестиваля рыболовный клуб "РУСФИШИНГ"</span></span></span></p>\r\n<p class="MsoNormal" style="text-align: center; margin: 0cm 0cm 0pt;" align="center"><span style="color: #00cc66;"><span style="font-size: x-small;"><span style="font-size: medium;">Анонс и запись на участие будет открыта 01 марта 2011г.</span></span></span></p>', '', '<div align="center"><span style="font-family: Verdana;"><span style="font-size: small;"><span style="color: red;">Вариант №1</span></span></span></div>\r\n<p><br /> <span style="font-family: Verdana;"><span style="color: black;">Приезд на базу на личном транспорте;</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">(Заезд на базу 15 октября после 14.00 час., выезд с базы 22 октября до 12.00 час.)</span></span><br /> <br /> <span style="font-family: Verdana;"><span style="color: black;">Стоимость участия :</span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">-<span style="color: red;">8000</span></span><span style="font-family: Verdana;"><span style="color: red;"> рублей</span></span><span style="font-family: Verdana;"> (проживание на базе в период проведения Фестиваля = 7 суток ) </span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">-</span><span style="font-family: Verdana;"><span style="color: red;">500 рублей</span></span><span style="font-family: Verdana;"> Регистрационный взнос Фестиваля с участника </span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">(Участие в мероприятии организованным клубом. Праздничный фуршет посвящённый закрытию Фестиваля!)</span></span><br /> <span style="font-family: Verdana;"><span style="color: red;">От регистрационных взносов(500 руб) освобождаются:</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Дети до 16 лет.</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Ветераны ВОВ.</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Женщины 50% скидка.</span></span><br /> Дети до 12 лет проживание на базе на дополнительном месте-<span style="text-decoration: underline;"><span style="color: red;">БЕСПЛАТНО</span></span></p>\r\n<div align="center"><span style="font-family: Verdana;"><span style="font-size: small;"><span style="color: red;">Вариант №2</span></span></span></div>\r\n<p><br /> <span style="color: black;"><span style="font-family: Verdana;">Традиционный </span><span style="font-family: Verdana;"><span style="color: red;">Клубный Автобус!</span></span><span style="font-family: Verdana;"> (Доставка участников Москва-База-Москва)</span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">Кол-во мест в автобусе = </span><span style="font-family: Verdana;">45 человек</span><span style="font-family: Verdana;">.</span></span><br /> <br /> <span style="font-family: Verdana;"><span style="color: black;">Стоимость участия :</span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">-</span><span style="font-family: Verdana;"><span style="color: red;">10500 рублей</span></span><span style="font-family: Verdana;"> ( проезд в автобусе туда и обратно, проживание на базе в период проведения Фестиваля)</span></span><br /> <span style="color: black;"><span style="font-family: Verdana;">-</span><span style="font-family: Verdana;"><span style="color: red;">500 рублей</span></span><span style="font-family: Verdana;"> Регистрационный взнос Фестиваля с участника </span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">(Участие в мероприятии организованным клубом. Праздничный фуршет посвящённый закрытию Фестиваля!)</span></span><br /> <span style="font-family: Verdana;"><span style="color: red;">От регистрационных взносов(500 руб) освобождаются:</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Дети до 16 лет.</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Ветераны ВОВ.</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">- Женщины 50% скидка.</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;">-Дети до 12 лет Скидка 80% (проезд в автобусе на основном месте, проживание на базе на дополнительном месте)</span></span></p>', '<p><span style="font-size: 14pt;"><span style="font-size: x-small;"><span style="font-size: medium;">Денисов Андрей Александрович (МАРЛИН) <span style="color: #00cc66;">8.903-142-30*42<br /></span>Микожанс Эрикс Владимирович (ZHANS) <span style="color: #00cc66;">8.905-598-34*63</span></span></span></span></p>', '', '', 682, 5, '2011-06-14 11:54:56', '2011-06-14 18:53:25', 1, 1);
INSERT INTO fish_event (id, `date`, `name`, description, schedule, price, contact, rules, users, location_id, fish_event_type_id, created_at, updated_at, created_by, updated_by) VALUES(4, '2011-07-30', 'РАСКАТЫ 2011', '<div align="center"><span style="font-size: medium;"><span style="color: red;">Уважаемые Друзья!</span></span><img class="inlineimg" title="Друзья" src="http://www.rusfishing.ru/forum/images/smilies/friends.gif" alt="" border="0" /><br /> <span style="color: blue;">Главной целью Фестиваля является дружеское общение </span><span style="color: blue;">и обмен опытом рыболовов из разных городов и регионов России, </span><span style="color: blue;">а также популяризация любительского </span><span style="color: blue;">рыболовства и пропаганда ответственного отношения к водоемам и их обитателям.</span></div>', '<p><span style="text-decoration: underline;">1-й день</span> (30.07.) Заезд на базу.........</p>\r\n<div align="left">С 14.00 часов (<span style="color: red;">личный транспорт</span>), размещение, отдых.<br /> В 21.00 Общий сбор участников в центральной беседке базы!</div>\r\n<p><br /> <span style="text-decoration: underline;">2-й день</span> (31.07.) &ndash; с 6.00 &ndash; Получение лодок, инструктаж по технике безопасности, знакомство с акваторией.<br /> <span style="color: red;">15:00 &ndash;Торжественное Открытие Фестиваля! Старт Фестиваля!</span><br /> <br /> <span style="text-decoration: underline;">3-й день</span> (01.08.) &ndash; Фестивалим!!!<img class="inlineimg" title="Тащу" src="http://www.rusfishing.ru/forum/images/smilies/5.gif" alt="" border="0" /> <img class="inlineimg" title="Друзья" src="http://www.rusfishing.ru/forum/images/smilies/friends.gif" alt="" border="0" /><img class="inlineimg" title="Клево" src="http://www.rusfishing.ru/forum/images/smilies/victory.gif" alt="" border="0" /><br /> (рыбалка, отдых, общение единомышленников)<br /> <br /> <span style="text-decoration: underline;">4-й день</span> (02.08.) &ndash; продолжаем Фестивалить<img class="inlineimg" title="Друзья" src="http://www.rusfishing.ru/forum/images/smilies/friends.gif" alt="" border="0" /><img class="inlineimg" title="Клево" src="http://www.rusfishing.ru/forum/images/smilies/victory.gif" alt="" border="0" /><img class="inlineimg" title="Тащу" src="http://www.rusfishing.ru/forum/images/smilies/5.gif" alt="" border="0" /> <img class="inlineimg" title="Улыбка" src="http://www.rusfishing.ru/forum/images/smilies/smil.gif" alt="" border="0" />!<br /> <br /> <span style="text-decoration: underline;">5-й день</span> (03.08.) &ndash; продолжение Рыболовного Праздника<img class="inlineimg" title="Тащу" src="http://www.rusfishing.ru/forum/images/smilies/5.gif" alt="" border="0" /><img class="inlineimg" title="Друзья" src="http://www.rusfishing.ru/forum/images/smilies/friends.gif" alt="" border="0" />!<br /> <br /> <span style="text-decoration: underline;">6-й день</span> (04.08.) &ndash; продолжение Рыболовного Праздника<img class="inlineimg" title="Тащу" src="http://www.rusfishing.ru/forum/images/smilies/5.gif" alt="" border="0" /><img class="inlineimg" title="Друзья" src="http://www.rusfishing.ru/forum/images/smilies/friends.gif" alt="" border="0" />!<br /> <br /> <span style="text-decoration: underline;">7-й день</span> (05.08.) - последний день рыболовного турнира до 20.00 час.<br /> <span style="color: #ff0000;">21.00 &ndash; подведение итогов Закрытие Фестиваля! </span><br /> <span style="color: #ff0000;">Торжественое </span><span style="color: #ff0000;">награждение победителей!!! </span><br /> <span style="color: #ff0000;">22.00 Фуршет, посвящённый закрытию Фестиваля! Баран-пати на вертеле<img class="inlineimg" title="Хорошо" src="http://www.rusfishing.ru/forum/images/smilies/thumbup1.gif" alt="" border="0" /></span><br /> <br /> <span style="text-decoration: underline;">8-й день</span> (06.08.) - свободный режим, отдых, рыбалка. <span style="color: red;">В 12.00 выезд с базы.</span><br /> <br /> Информационная поддержка: <br /> <br /> -Центральный Форум Рыбаков. МОО Центральный рыболовный клуб <span style="color: blue;"><span style="text-decoration: underline;">"RUSFISHING"</span></span><br /> <br /> Форма проведения соревнований: <br /> -Соревнования проводятся в <span style="color: red;"><span style="color: blue;"><strong>командном зачёте</strong></span>(<strong>экипаж-2 участника</strong><img class="inlineimg" title="Друзья" src="http://www.rusfishing.ru/forum/images/smilies/friends.gif" alt="" border="0" />)</span>.</p>', '<div align="center"><span style="color: red;">Вариант №1 </span><br /> (проживание в домике <span style="font-family: ''Times New Roman'';"><span style="color: blue;"><a href="http://www.protoka.ru/foto/econom/" target="_blank"><strong>Эконом</strong></a></span></span>) <span style="color: red;">4850 рублей</span><br /> Составляющие части.....<br /> 3850 рублей(проживание на базе на время проведения Фестиваля) 1000 рублей(регистрационный взнос на проведение мероприятия и коллективный фуршет <span style="color: #8b0000;">"баран-пати"</span> на зыкрытии Фестиваля)</div>\r\n<p>&nbsp;</p>\r\n<div align="center"><span style="color: red;">Вариант №2 </span><br /> (проживание в домике <span style="font-family: ''Times New Roman'';"><span style="color: blue;"><a href="http://www.protoka.ru/foto/comfort/" target="_blank"><strong>Комфорт</strong></a></span></span>) <span style="color: red;">9400 </span><span style="color: red;">рублей</span><br /> Составляющие части.....</div>\r\n<p>&nbsp;</p>\r\n<div align="center">8400 рублей(проживание на базе на время проведения Фестиваля) 1000 рублей(регистрационный взнос на проведение мероприятия и коллективный фуршет <span style="color: #8b0000;">"баран-пати"</span> на зыкрытии Фестиваля)</div>\r\n<p><br /> </p>\r\n<div align="center"><span style="color: red;">Вариант №3</span><br /> (проживание в домике <span style="font-family: ''Times New Roman'';"><span style="color: blue;"><a href="http://www.protoka.ru/foto/comfort/" target="_blank"><strong>Комфорт - Плюс</strong></a></span></span>) <span style="color: red;">10100 </span><span style="color: red;">рублей</span><br /> Составляющие части.....</div>\r\n<p>&nbsp;</p>\r\n<div align="center">9100 рублей(проживание на базе на время проведения Фестиваля) 1000 рублей(регистрационный взнос на проведение мероприятия и коллективный фуршет <span style="color: #8b0000;">"баран-пати"</span> на зыкрытии Фестиваля)</div>\r\n<p><br /> </p>\r\n<div align="center"><span style="color: red;">Вариант №4</span><br /> (проживание <strong><span style="font-family: ''Times New Roman'';"><span style="color: blue;">Коттедж с кухней</span></span></strong>) <span style="color: red;">86</span><span style="color: red;">00 </span><span style="color: red;">рублей</span><br /> Составляющие части.....</div>\r\n<p>&nbsp;</p>\r\n<div align="center">7600 рублей(проживание на базе на время проведения Фестиваля) 1000 рублей(регистрационный взнос на проведение мероприятия и коллективный фуршет <span style="color: #8b0000;">"баран-пати"</span> на зыкрытии Фестиваля)</div>\r\n<p><br /> </p>\r\n<div align="center"><span style="font-family: Verdana;"><span style="color: red;">От регистрационного взноса освобождаются дети до 14 лет:</span></span><br /> Дети до 7 лет <br /> проживание на базе на дополнительном месте <span style="color: #ff0000;">бесплатно</span><br /> <span style="color: #ff0000;"><span style="color: black;">Дети от 7 до 12 лет</span> </span><br /> <span style="color: #000000;">проживание на базе на дополнительном месте <span style="color: red;">50 % от стоимости</span></span></div>', '<div align="center"><span style="color: #8b0000;"><span style="font-family: Verdana;">Денисов Андрей Александрович </span><span style="font-family: Verdana;">(МАРЛИН)</span></span><br /> <span style="font-family: Verdana;"><span style="color: #006400;">8.903-142-30*42</span></span><br /> <span style="color: #8b0000;"><span style="font-family: Verdana;">Микожанс Эрикс Владимирович </span><span style="font-family: Verdana;">(ZHANS) </span></span><br /> <span style="font-family: Verdana;"><span style="color: #006400;">8.905-598-34*63</span></span></div>', '<p>1. Турнир проводится по следующим номинациям (<strong><span style="color: red;">ЛУЧШИЙ ЭКИПАЖ</span></strong><img class="inlineimg" title="Друзья" src="http://www.rusfishing.ru/forum/images/smilies/friends.gif" alt="" border="0" />); <span style="color: red;">Каждому участнику экипажа Победителя вручается кубок Фестиваля + Приз от спонсоров!</span><br /> <br /> <strong><span style="color: blue;">&middot;</span></strong> <img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /> <span style="font-size: small;"><span style="color: #006400;"><strong>&laquo;Краснопёрка&raquo;</strong> <span style="color: blue;">Чемпион-</span><span style="color: red;">1 место</span></span></span><br /> <span style="font-size: small;"><span style="color: #006400;"><strong>&middot; <img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /> &laquo;Окунь&raquo;</strong> <span style="color: #0000ff;">Чемпион-</span><span style="color: red;">1 место</span></span></span><br /> <span style="font-size: small;"><span style="color: red;"><span style="color: #0000ff;"><strong>&middot; <img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /> </strong></span><span style="font-size: small;"><span style="color: #006400;"><strong>&laquo;Жерех&raquo;</strong> <span style="color: #0000ff;">Чемпион-</span><span style="color: red;">1 место</span></span></span></span></span><br /> <span style="font-size: small;"><span style="color: #006400;"><strong>&middot; <img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /> &laquo;Щука&raquo;</strong> <span style="color: #0000ff;">Чемпион-</span><span style="color: red;">1 место</span></span></span><br /> <span style="font-size: small;"><span style="color: #ff0000;"><span style="font-size: small;"><span style="color: #006400;"><strong>&middot; <img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /></strong> <strong>&laquo;Сом&raquo;</strong> <span style="color: #0000ff;">Чемпион-</span><span style="color: red;">1 место</span></span></span><br /> <span style="font-size: small;"><span style="color: #006400;"><strong>&middot; <img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /> &laquo;Карась&raquo;</strong> <span style="color: #0000ff;">Чемпион-</span><span style="color: red;">1 место</span></span></span><br /> </span></span><span style="font-size: small;"><span style="color: #006400;"><strong>&middot;</strong> <img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /> <strong>&laquo;Золотой Сазан&raquo;</strong> <span style="color: #0000ff;">Чемпион-</span><span style="color: red;">1 место</span></span></span><br /> <br /> 2. Один экипаж может принять участие во всех номинациях одновременно!<br /> 3. Победитель выявляется по наибольшему весу (на личное усмотрение экипажа) самой крупной рыбы. В случае если вес одинаковый у нескольких экипажей, победитель определяется по самому большому второму (третьему) экземпляру, предоставленному судейской бригаде (на взвешивание предоставляется до трёх рыб).<br /> 4. Регистрация улова возможна сразу по ходу проведения соревнований- 31, 01, 02<span style="color: black;">, 03,04 и <span style="text-decoration: underline;"><span style="color: red;">05</span></span> в течении всего светового дня в </span>кафе базы.<br /> 5. В зачет принимаются:<br /> -Вся рыба согласно утверждённых номинаций, <span style="color: red;">соответствующая правил установленного Законодательства.</span><br /> <br /> 6. В соревнованиях по &laquo;Стайной рыбе&raquo; можно использовать: поплавочные и донные снасти всех типов, количество прикормки не ограничено.<br /> 7. В соревнованиях по &laquo;Хищнику&raquo; - можно использовать блёсна всех типов, воблеры, снасточки, кружки, лов на дорожку (троллинг) с применением мускульной силы и мотора с использованием не более двух искусственных приманок.<br /> 8. В соревнованиях по &laquo;Сом&raquo;- можно использовать снасти предусмотренные в п.6, п.7., и лов "на квок".<br /> 9. Места лова, в зависимости от предпочтения самого участника.<br /> 10. Все спорные вопросы решаются судейской бригадой.<br /> 11. <span style="color: red;">Минимальный размер рыбы принимаемой в зачет (см.)</span><br /> <span style="color: green;">Жерех 32</span><br /> <span style="color: green;">Красноперка 17<br /> </span><span style="color: green;">Щука 32</span><br /> <span style="color: green;">Сазан 40</span><br /> <span style="color: green;">Сом пресноводный 60</span><br /> <span style="color: blue;">Судак 40</span><br /> <span style="color: blue;">Лещ 24</span><br /> <span style="color: blue;">Вобла, плотва 17</span><br /> <span style="color: blue;">Красноперка 17</span><br /> <span style="color: blue;">Чехонь 22</span><br /> <span style="color: blue;">Линь 22</span></p>', '', 485, 5, '2011-06-14 18:56:14', '2011-06-14 18:56:14', 1, 1);
INSERT INTO fish_event (id, `date`, `name`, description, schedule, price, contact, rules, users, location_id, fish_event_type_id, created_at, updated_at, created_by, updated_by) VALUES(5, '2011-07-30', '3 этап турнира РУСФИШИНГА 2011 г.', '<p>1. Статус соревнований<br /> <br /> 1.1. Открытые соревнования по спортивной ловле рыбы донной удочкой.<br /> <br /> 2. Цели и задачи<br /> <br /> 2.1. Популяризация рыболовного спорта, повышение мастерства любителей и спортсменов,пропаганда спортивных принципов в ловле на фидер.<br /> 2.2. Выявление сильнейших и удачливых рыбаков среди участников.<br /> <br /> 3. Руководство соревнования<br /> <br /> 3.1. Подготовка соревнований возлагается на Оргкомитет, сформированный "ФС РФ".<br /> 3.2. Непосредственное проведение соревнований возлагается на Оргкомитет и Главную судейскую коллегию.</p>', '<p>30 июля 2011 г.<br /> 6:00 - 7:00 Регистрация участников соревнования.<br /> 7:00 - 7:30 Жеребьевка<br /> 7:30 - 8:00 Время на доставку снастей, прикормки и насадки в секторы.<br /> 8:00 - Первый сигнал, вход в зону, начало подготовки.<br /> 09:30 - Второй сигнал, старт.<br /> 14:30 - Третий сигнал, финиш<br /> 14:30 - 15:30 Взвешивание.</p>', '<p>Расходы спортсменов, связанные с проездом и оплатой вступительного взноса,несут сами участники соревнований.<br />Вступительный взнос на соревнование составляет 500 р.,за тур.</p>', '<p><a href="mailto:omigo@list.ru">omigo@list.ru</a></p>', '<p>1. Соревнования проводятся в соответствии с Правилами МФРС. <br /> 2. Соревнования проводятся в 1 тур, продолжительностью 5 часов, в соответствии с регламентом (п.9).<br /> 3. При количеств участников более 20 ,будет произведена разбивка на зоны,в зоне не может быть менее 8 спортсменов. Ширина сектора &ndash; 10 метров. <br /> 4. Имеются ограничения по прикормке и насадке. Один спортсмен,в одном туре,имеет право использовать не более 5 кг сухой смеси, включая грунты и балласты, не более 1,1 кг мотыля,включая насадочного, 1 литра опарыша и не более 1 кг прочих живых компонентов, разрешенных Правилами МФРС. Приготовление прикормки разрешается до сигнала &laquo;вход в зону&raquo; в любом месте, кроме секторов, в которых будут располагаться спортсмены, после сигнала &laquo;вход в зону&raquo; - исключительно в своем секторе.По требованию судьи участник соревнований обязан предъявить к осмотру всю находящуюся в секторе прикормку, насадку и снасти. Проверка судейской бригадой прикормки и насадки должна быть завершена в течение первой половины времени, отведенного спортсменам на подготовку.<br /> 5. В процессе ловли запрещается дополнительный замес прикормки,внесение в нее сухих ароматизаторов,увеличивающие ее объем.В процессе ловли запрещено перемешивать прикормку при помощи электрошуруповертов. Доувлажнять прикормку разрешено только при помощи пульверизатора. Использование жидких ароматизаторов разрешено.<br /> 6. Минимальная разрешенная длина садка, сетка которого изготовлена из естественной или искусственной нити &ndash; 2 метра. Применение металлического садка запрещено.<br /> 7. В зачет идет любая рыба, пойманная и извлечённая из воды до сигнала "Финиш" кроме рыбы, занесенной в Красную книгу(чехонь) и рыбы пойманной (рыбы всплывшей при вываживании) в чужом секторе.<br /> 8. Пробные рыбалки разрешены в любой день, за исключением дня, предшествующего соревнованиям. За нарушение данного пункта спортсмены не будут допускаться к регистрации. <br /> 9. После сигнала &laquo;Финиш&raquo; спортсмену запрещается покидать свой сектор до сигнала &laquo;взвешивание окончено&raquo;.<br /> <br /> Подведение результатов и награждение<br /> <br /> 1. Участники,занявшие призовые места, награждаются Кубком, медалью, грамотой.<br /> 2. Участник, поймавший самую крупную рыбу, награждается специальным ценным подарком. <br /> 4. Возможно учреждение дополнительных призов от спонсоров.</p>', '', 690, 4, '2011-07-30 11:33:04', '2011-07-30 11:33:04', 1, 1);
INSERT INTO fish_event (id, `date`, `name`, description, schedule, price, contact, rules, users, location_id, fish_event_type_id, created_at, updated_at, created_by, updated_by) VALUES(6, '2011-08-21', '4 этап "Чемпионата Русфишинга по ловле фидером 2011г." Среди любителей. ', '<p>&nbsp;Открытые соревнования по спортивной ловле рыбы донной удочкой.&nbsp;Подготовка соревнований возлагается на Оргкомитет, сформированный "ФС РФ".&nbsp;Непосредственное проведение соревнований возлагается на Оргкомитет и Главную судейскую коллегию.</p>', '<p>20 августа 2011 г.<br /> 05:30 - 06:00 Регистрация участников соревнования.<br /> 06:00 - 06:10 Жеребьевка<br /> 06:10 - 06:30 Время на доставку снастей, прикормки и насадки в секторы.<br /> 06:30 - Первый сигнал, вход в зону, начало подготовки.<br /> 08:00 - Второй сигнал, старт.<br /> 13:00 - Третий сигнал, финиш<br /> 13:00 - 13:30 Взвешивание,подведение итогов.</p>', '<p>Расходы спортсменов, связанные с проездом и оплатой вступительного взноса,несут сами участники соревнований.<br />Вступительный взнос на соревнование составляет 1000 р.,за тур.</p>', '<p>Предварительная регистрация в обязательном порядке проводится посредством отправки e-mail <a href="mailto:omigo@list.ru">omigo@list.ru</a></p>', '<p>Соревнования проводятся в соответствии с Правилами МФРС. <br />Соревнования проводятся в 1 тур, продолжительностью 5 часов, в соответствии с регламентом (п.9).<br />При количеств участников более 20 ,будет произведена разбивка на зоны,в зоне не может быть менее 8 спортсменов. Ширина сектора &ndash; 10 метров. <br />Имеются ограничения по прикормке и насадке. Один спортсмен,в одном туре,имеет право использовать не более 5 кг сухой смеси, включая грунты и балласты, не более 1,1 кг мотыля,включая насадочного, 1 литра опарыша и не более 1 кг прочих живых компонентов, разрешенных Правилами МФРС. Приготовление прикормки разрешается до сигнала &laquo;вход в зону&raquo; в любом месте, кроме секторов, в которых будут располагаться спортсмены, после сигнала &laquo;вход в зону&raquo; - исключительно в своем секторе.По требованию судьи участник соревнований обязан предъявить к осмотру всю находящуюся в секторе прикормку, насадку и снасти. Проверка судейской бригадой прикормки и насадки должна быть завершена в течение первой половины времени, отведенного спортсменам на подготовку.<br />В процессе ловли запрещается дополнительный замес прикормки,внесение в нее сухих ароматизаторов,увеличивающие ее объем.В процессе ловли запрещено перемешивать прикормку при помощи электрошуруповертов. Доувлажнять прикормку разрешено только при помощи пульверизатора. Использование жидких ароматизаторов разрешено.<br />Минимальная разрешенная длина садка, сетка которого изготовлена из естественной или искусственной нити &ndash; 2 метра. Применение металлического садка запрещено.<br />В зачет идет любая рыба, пойманная и извлечённая из воды до сигнала "Финиш" кроме рыбы, занесенной в Красную книгу и рыбы пойманной (рыбы всплывшей при вываживании) в чужом секторе.<br />Пробные рыбалки разрешены в любой день, за исключением дня, предшествующего соревнованиям. За нарушение данного пункта спортсмены не будут допускаться к регистрации. <br />После сигнала &laquo;Финиш&raquo; спортсмену запрещается покидать свой сектор до сигнала &laquo;взвешивание окончено&raquo;.<br />По окончании соревнования,вся рыба выпускается обратно.<br /> <br />Подведение результатов и награждение<br /> <br />Участники,занявшие призовые места, награждаются Кубком, медалью, грамотой.<br />Участник, поймавший самую крупную рыбу, награждается специальным ценным подарком. <br />Возможно учреждение дополнительных призов от спонсоров.</p>', '', 694, 4, '2011-08-19 10:32:29', '2011-08-19 10:32:29', 1, 1);
INSERT INTO fish_event (id, `date`, `name`, description, schedule, price, contact, rules, users, location_id, fish_event_type_id, created_at, updated_at, created_by, updated_by) VALUES(7, '2011-08-27', 'ЩУЧЬИ ЗАБАВЫ 2011', '<p><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">К участию допускаются </span></span></span><span style="color: blue;"><span style="font-family: Verdana;">ВСЕ ЖЕЛАЮЩИЕ</span></span><span style="color: black;"><span style="font-family: Verdana;">, достигшие совершеннолетнего возраста с 18 лет!</span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;"> Вы так же можете привезти с собой детей, возраст бесплатного лова для которых будет определен правилами КРХ на котором проводятся соревнование.&nbsp;<br /><span style="color: #0000ff;"><strong>Если оценить стоимость снастей и подарков предоставленных спонсорами<br /> общий призовой фонд составляет - </strong><strong><span style="font-size: small;"><span style="color: red;">60.000-65.000 руб.</span></span>!</strong></span>&nbsp;</span></span></span></span></span></p>', '<p><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">- Регистрация <span style="color: red;">05</span></span></span></span><span style="color: red;"><span style="font-family: Verdana;">:00</span></span> <span style="color: black;"><span style="font-family: Verdana;">&ndash; <span style="color: red;">05</span></span></span><span style="color: red;"><span style="font-family: Verdana;">:45 </span></span><br /> <span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">- Торжественное открытие <span style="color: red;">05</span></span></span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: red;"><span style="font-family: Verdana;">:45</span></span> <span style="color: black;"><span style="font-family: Verdana;">&ndash; </span></span><span style="color: red;"><span style="font-family: Verdana;">06:00</span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><br /> <span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">- СТАРТ в <span style="color: red;">06</span></span></span></span><span style="color: red;"><span style="font-family: Verdana;">:00</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">- ФИНИШ в </span></span></span><span style="color: red;"><span style="font-family: Verdana;">11:00</span></span><br /> <span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">- Определение победителей и награждение </span></span></span><span style="color: red;"><span style="font-family: Verdana;">11:00 </span></span><span style="color: black;"><span style="font-family: Verdana;">&ndash; <span style="color: red;">12</span></span></span><span style="color: red;"><span style="font-family: Verdana;">:30</span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><br /></span></span></p>', '<p><span style="color: #0000ff;"><span style="color: black;">Регистрационный взнос составляет <span style="color: black;">2000 руб.</span> с участника.</span><br /> <span style="color: black;">В эту сумму <strong>включено безлимитное количество пойманной щуки</strong>.</span></span></p>', '<p><strong><span style="color: #ff0000;"><span style="font-size: small;">8 (495) 589-8979</span></span></strong></p>', '<p><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">ПО ПРИЕЗДУ на место проведения соревнования, каждому участнику необходимо зарегистрироваться в точке сбора, и получить на руки номер участника. Никаких документов удостоверяющих личность для этого </span></span></span><span style="color: black;"><span style="font-family: Verdana;">НЕ ТРЕБУЕТСЯ</span></span> <span style="color: black;"><span style="font-family: Verdana;">. Для получения номера просто назовите судье свою фамилию и имя. После получения номера участника, необходимо оставаться в точке сбора до процедуры сверки часов и объявления старта. <span style="color: red;">По завершению соревнования и награждения победителей вы при желании сможете продолжить ловлю</span>.</span></span></span></span><br /> <span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;"> <br /></span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: blue;"><span style="font-family: Verdana;">СНАСТИ</span></span> <span style="color: black;"><span style="font-family: Verdana;">для ловли разрешены ЛЮБЫЕ (кроме запрещенных правилами любительского рыболовства). <br /> <br /></span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: blue;"><span style="font-family: Verdana;">СПОСОБ ЛОВЛИ</span></span> <span style="color: black;"><span style="font-family: Verdana;">любой. Спиннинг, нахлыст, бомбарда, джерки и т.п. Только одна любая снасть закинутая в воду. Количество запасных снастей на берегу не ограничено.<br /> <br /></span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">Расстояние при лове должно быть не менее 5-и метров от другого участника. Если на вас поступят жалобы от других участников, за это нарушение следует предупреждение, в случае повторной жалобы дисквалификация. Но за всю историю проводимых нами соревнований ни одной жалобы зафиксировано не было, так как все мероприятия Русфишинга направлены на сплочение коллектива участников.<br /> <br /></span></span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">Организаторы не несут ответственности за безопасность участников. Будьте пожалуйста внимательны при использовании снастей.<br /> <br /></span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;">Лицам, прибывшим на соревнование в состоянии сильного алкогольного опьянения, в регистрации будет отказано.<br /> <br /></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">В зачет идет только щука. Призёры будут определяться по весу самой крупной пойманной щуки</span></span></span>.<br /><br /><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><strong><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: red;"><strong>Награждение будет проходить в двух зачетах!!!:</strong></span></span><br /> <span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><strong><span style="color: blue;">Основной зачет:</span><br /> <img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /></strong></span></span></span><span style="color: black;"><span style="font-family: Verdana;"> 1-е место <span style="text-decoration: underline;">по крупной рыбе</span></span> <span style="font-family: Verdana;">- кубок, медаль + призы от спонсоров</span> </span><br /> </span></span></strong></span></span></span></span></span><strong><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><strong><img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /></strong></span></span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;"> 2-е </span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">место <span style="text-decoration: underline;">по крупной рыбе</span></span> <span style="font-family: Verdana;">- </span></span></span></span></strong><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><strong><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">кубок, </span></span></span></span></strong></span></span></span></span></span><span style="font-family: Verdana;"><strong><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">медаль + призы от спонсоров</span></span><br /> </span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><strong><img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /></strong></span></span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;"> 3-е </span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">место <span style="text-decoration: underline;">по крупной рыбе</span></span> <span style="font-family: Verdana;">- </span></span></span></span></strong></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><strong><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">кубок, </span></span></span></span></strong></span></span></span></span></span><span style="font-family: Verdana;"><strong><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">медаль + призы от спонсоров</span> </span></span></span><br /> </strong></span><strong><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><strong><img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /></strong></span></span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;"> 4-е </span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">место <span style="text-decoration: underline;">по крупной рыбе</span></span> <span style="font-family: Verdana;">-</span></span></span></span></strong><span style="font-family: Verdana;"><strong><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;"> призы от спонсоров</span></span><br /> </span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><strong><img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /></strong></span></span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;"> 5-е </span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">место <span style="text-decoration: underline;">по крупной рыбе</span></span> <span style="font-family: Verdana;">- </span></span></span></span></strong></span><span style="font-family: Verdana;"><strong><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">призы от спонсоров</span> </span></span></span></strong></span><br /> <span style="font-family: Verdana;"><strong> <br /> <span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: red;"><strong>Так же учреждены номинации!!!:<br /> <br /> </strong></span></span></span></span> <span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><strong><img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /></strong></span></span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;"> <span style="text-decoration: underline;">Наибольшее кол-во пойманной рыбы</span></span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"> <span style="font-family: Verdana;">- </span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;">Кубок + призы от спонсоров</span> </span></span></span><br /> <span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><strong><img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /></strong></span></span></span><span style="color: black;"><span style="font-family: Verdana;"> <span style="text-decoration: underline;">Самая Крупная рыба пойманная женщин</span></span><span style="text-decoration: underline;">ами</span> <span style="font-family: Verdana;">- приз от спонсоров</span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><span style="font-family: Verdana;"><br /> </span></span></span></span><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="font-family: Verdana;"><span style="color: black;"><strong><img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" /></strong></span></span></span><span style="color: black;"><span style="font-family: Verdana;"> <span style="text-decoration: underline;">Номинация "Сюрприз"</span></span> <span style="font-family: Verdana;">- приз от спонсоров</span></span></span></span></strong></span>&nbsp;</span></span></p>', '', 695, 4, '2011-08-19 10:48:23', '2011-08-19 10:48:23', 1, 1);
INSERT INTO fish_event (id, `date`, `name`, description, schedule, price, contact, rules, users, location_id, fish_event_type_id, created_at, updated_at, created_by, updated_by) VALUES(8, '2011-09-03', '"Золотая рыбка-2011" 4-ой этап (спиннинг,личный зачёт)', '<p>Предварительные заявки на участие в соревнованиях подаются в произвольной форме личным сообщением, по телефону или на странице, посвященной 4-ому этапу "Золотой рыбки" <a href="http://www.rusfishing.ru/forum/showthread.php?t=38637" target="_blank">http://www.rusfishing.ru/forum/showthread.php?t=38637</a>.<br /> Заявка должна содержать следующую обязательную информацию:<br /> - фамилия, имя и отчество участника;<br /> - год рождения;<br /> - место жительства(наименование населенного пункта);<br /> - способ прибытия на соревнования. Огромная просьба к тем, кто прибывает на личном транспорте, в заявке указывайте возможность взять с собой пассажира (количество)</p>', '<p>- 7.00&ndash;8.45 - прибытие, регистрация; <br /> - 8.30- 8.45 &ndash; построение, инструктаж;<br /> - 8.45 -9.00 &ndash; развод участников по зонам акватории соревнований;<br /> - 9.00 - старт 1 тура;<br /> - 11.30 - конец 1-тура; <br /> - 12.10 -12.15- построение, инструктаж;<br /> - 12.15 -12.30 &ndash; смена зон, развод участников по зонам акватории соревнований;<br /> - 12.30 - старт 2 тура;<br /> - 15.00 &ndash;финиш<br /> - 15.00-16.30 подведение итогов, награждение победителей.</p>', '<p>Взнос с участника составляет 450 руб. От уплаты взносов освобождаются рыболовы младше 17 (включительно) и старше 60 (включительно) лет, при предоставлении документа, удостоверяющего личность.<br /> Рыболовы до 17 (включительно) лет могут быть допущены к участию только при сопровождении взрослого.</p>', '<p>Сыченко Игорь Владимирович (Harris) (926)138-60-0 два<br /> Бурлин Борис Викторович (boxter72) (962)941-41-6 два</p>', '<p>Порядок учета пойманной участниками соревнований рыбы.<br /> <br />После поимки рыбы спортсмен должен максимально быстро предоставить для взвешивания пойманную рыбу, подозвав для этого ближайшего судью; <br />При отсутствии в непосредственной близости судьи, до его подхода, спортсмен должен принять все меры для сохранения в живом виде пойманного экземпляра;<br />Вид, вес и время поимки, каждой пойманной участником соревнований зачетной рыбы, фиксируются линейным, либо главным судьей, в личной карточке участника соревнований; <br />Линейный, либо главный судья дублирует все записи, сделанные им в личных карточках участников соревнований, в своем личном судейском протоколе;<br />Любая запись, произведенная судьей, как в личной карточке участника соревнований, так и в личном судейском протоколе, в обязательном порядке, подлежит заверению подписью данного судьи, и подписью участника соревнований, в личную карточку которого, была произведена данная запись.<br />Каждая пойманная участниками соревнований рыба, после замера и взвешивания, подлежит изъятию у участников соревнований и поступает в распоряжение судьи, производившего фиксацию поимки данной рыбы.<br />В свою очередь, судья сразу после фиксации каждой пойманной участниками соревнований рыбы, обязан либо ее отпустить, либо если рыба не подает признаков жизни, положить ее в заранее подготовленную емкость, которую следует передать, после окончания текущего тура, главному судье для последующей утилизации. <br /> <br />Ловля производится спиннинговой снастью любого типа на одну приманку. Разрешается иметь при себе несколько оснащенных удилищ.<br /> <br />Участникам соревнований запрещается:<br /> <br />производить ловлю рыбы до сигнала "Старт" и после сигнала "Финиш";<br />производить ловлю рыбы, находясь вне акватории соревнований;<br />осуществлять ловлю рыбы в течении первых тридцати минут в иной зоне, нежели была установлена по итогам жеребьёвки;<br />распивать спиртные напитки и находиться в зоне соревнований в нетрезвом виде;<br />ловить на приманки животного происхождения;<br />целенаправленно ловить рыбу в отвес;<br />одновременно использовать две и более приманки, оснащенные крючками;<br />получать помощь от других спортсменов и посторонних лиц, кроме случаев, связанных с оказанием первой помощи, а так же с предотвращением угрозы здоровью и жизни участников соревнований;<br />покидать акваторию во время соревнований без разрешения линейного судьи.<br /> <br />Участник может быть снят с соревнований:<br />за нарушение порядка и правил проведения соревнований, изложенных в данном Положении;<br />за поведение, оскорбляющее нравственное и человеческое достоинство.<br /> <br />Все спорные моменты во время соревнований решаются линейными судьями. В случае несогласия участник вправе обратиться к Главному судье соревнований, чье решение является окончательным.</p>', '', 635, 4, '2011-08-19 10:55:06', '2011-08-19 10:55:06', 1, 1);
INSERT INTO fish_event (id, `date`, `name`, description, schedule, price, contact, rules, users, location_id, fish_event_type_id, created_at, updated_at, created_by, updated_by) VALUES(9, '2011-09-15', 'По ЩУЧЬЕМУ велению', '<p><span style="color: red;"><strong>ыезд открытый</strong></span><span style="color: black;">.</span><span style="color: #8b0000;"> Принять участие в выезде могут не только члены Клуба, но и Ваши родственники, друзья, знакомые, а также все желающие согласные с Правилами выездов.</span></p>', '<p><em><span style="color: red;"><span style="color: #0000ff;">День 1-й </span></span></em></p>\r\n<div align="left"><em><span style="color: red;"><span style="text-decoration: underline;">15 сентября (четверг)</span> </span></em><br /> <em><span style="color: black;">06.00 - Заезд на базу. Размещение.</span></em><br /> <span style="color: black;"><em>06.30 - 07.00 Завтрак. Получение лодок.</em></span><br /> <em>07.30 - 19.00 Рыбалка, отдых!</em><br /> <em>19.00 -Ужин</em><br /> <em><span style="color: #0000ff;">День 2-й</span></em><br /> <em><span style="color: red;"><span style="text-decoration: underline;">16 сентября (пятница)</span></span></em><br /> <em><span style="color: black;">06.30 - 07.00 Завтрак.</span></em><br /> <em><span style="color: black;">13.00- Открытие Фестиваля! </span></em><br /> <em>13.00-19.00 Фестивалим-РЫБАЛКА!</em><br /> <em><span style="color: black;">19.00 - Ужин. </span></em><br /> <em>21.00 <span style="color: #006400;">Взвешивание уловов!</span></em><br /> <em><span style="color: #0000ff;">День 3-й</span></em><br /> <em><span style="color: red;"><span style="text-decoration: underline;">17 сентября (суббота) </span></span></em><br /> <em><span style="color: black;">06.30 - 07.00 Завтрак.</span></em><br /> <em>07.00-19.00 Фестивалим-РЫБАЛКА!</em><br /> <em><span style="color: black;">19.00 - Ужин.</span></em><br /> <em><span style="color: black;">21.00 </span><span style="color: #006400;">Взвешивание уловов!</span></em><br /> <em><span style="color: #0000ff;">День 4-й</span></em><br /> <em><em><span style="color: red;"><span style="text-decoration: underline;">17 сентября (воскресенье)</span> </span></em></em><br /> <em><em><span style="color: black;">06.30 - 07.00 Завтрак.</span></em></em><br /> <em><em>07.00-15.00 Фестивалим-РЫБАЛКА!</em></em><br /> <em><em><span style="color: black;">14.00 - <span style="color: #006400;">Взвешивание уловов!</span></span></em></em><br /> <em><em><span style="color: black;">14.30 -Торжественное закрытие Фестиваля! </span></em></em><br /> <em>15.00 - Обед. Выезд с базы.</em></div>', '<div align="center"><span style="color: #ff6600;"><span style="color: #006400;"><strong>Стоимость участия</strong> (личный транспорт)</span> </span><span style="color: red;">6000</span><span style="color: red;">рублей</span></div>\r\n<p>&nbsp;</p>\r\n<div align="center"><span style="color: blue;">В стоимость входит:</span> <br /> <span style="color: black;">-Участие в Фестивале</span><br /> <span style="color: black;">-Проживание на базе в период с 15 по 18 сентября</span><br /> <span style="color: black;">-Питание (4 завтрака, 4 ужина) </span></div>\r\n<p>&nbsp;</p>\r\n<div align="center"><span style="color: blue;">Дополнительно!</span><br /> <span style="color: black;">- А<span style="color: #006400;">ренда лодки с мотором (без егеря)</span>=</span> 1300 рублей световой день <br /> на 2-3 человека. ГСМ оплачивается по факту)<br /> <span style="color: black;">- А<span style="color: #006400;">ренда лодки с мотором (с егерем)</span> =</span> 2300 рублей световой день <br /> на 2-3 человека. ГСМ оплачивается по факту)<br /> <span style="color: red;">Для личных плавсредств, стоянка и охрана бесплатно!</span></div>\r\n<p>&nbsp;</p>\r\n<div align="center"><span style="color: blue;">Дополнительно!</span><br /> <span style="color: black;">- баня</span><br /> <span style="color: black;">-бильярд</span></div>', '', '<p><span style="color: black;"><span style="font-family: Verdana;">Турнир проводится только по <strong><span style="color: red;">ЩУКЕ!</span></strong></span></span><br /> <strong><span style="color: blue;"><span style="font-family: Verdana;"><img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" />1 место</span></span></strong><br /> <strong><span style="color: blue;"><span style="font-family: Verdana;"><img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" />2 место</span></span></strong><br /> <strong><span style="color: blue;"><span style="font-family: Verdana;"><img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" />3 место</span></span></strong><br /> <br /><span style="font-family: Verdana;"><span style="color: black;">Победитель выявляется по наибольшему весу (на личное усмотрение) самой крупной щуки. В случае если вес одинаковый у нескольких участников, победитель определяется по самому большому второму (третьему) экземпляру, предоставленному судейской бригаде (на взвешивание предоставляется до трёх рыб).</span></span><br /><span style="font-family: Verdana;"><span style="color: black;">Регистрация улова с 21.00 в кафе базы. (17 сентября с 14.00 до 14.30)</span></span><br /><span style="font-family: Verdana;"><span style="color: black;">В зачет принимаются щука от 40 см.</span></span><br /><span style="font-family: Verdana;"><span style="color: black;">В соревнованиях можно использовать блёсна всех типов, воблеры, снасточки, кружки, лов на дорожку (троллинг) с применением мускульной силы и мотора с использованием не более двух искусственных приманок.</span></span><br /><span style="font-family: Verdana;"><span style="color: black;">Места лова, в зависимости от предпочтения самого участника.</span></span><br /><span style="font-family: Verdana;"><span style="color: black;">Все спорные вопросы решаются судейской бригадой.</span></span><br /><span style="font-size: small;"><span style="color: red;"><span style="color: blue;">Оргкомитет вправе учредить <span style="text-decoration: underline;">дополнительные призы</span></span> <img class="inlineimg" title="Кубок" src="http://www.rusfishing.ru/forum/images/smilies/4.gif" alt="" border="0" />за крупную рыбу других видов, в том числе очень распространённого в этих местах <span style="color: blue;">СУДАК</span>а и <span style="color: blue;">БЕРШ</span>а. </span></span><br /> <span style="font-size: small;"><span style="color: red;"><span style="color: #006400;">Приносите на взвешивание</span><img class="inlineimg" title="Улыбка" src="http://www.rusfishing.ru/forum/images/smilies/smil.gif" alt="" border="0" /></span></span></p>', '', 696, 5, '2011-08-19 11:10:33', '2011-08-19 11:10:33', 1, 1);
INSERT INTO fish_event (id, `date`, `name`, description, schedule, price, contact, rules, users, location_id, fish_event_type_id, created_at, updated_at, created_by, updated_by) VALUES(10, '2011-09-17', '7-й тур Чемпионата Русфишинга по ловле Карповых "ЛКЛ 2011"', '<p>Организация и руководство проведением соревнования возлагается на оргкомитет, сформированный "Культурным Рыболовным Хозяйством Ба!Рыбина - далее (КРХ Ба!Рыбина)" и "Межрегиональной Общественной организацией Центральным Рыболовным Клубом "Русфишинг" - далее (МОО ЦРК "Русфишинг")". <br />Заезд участников и судей на место проведения Чемпионата 17 сентября 2011 года, к 05:15.</p>', '<ul>\r\n<li>С <span style="color: blue;">05:15 до 05:50</span> - регистрация и жеребьевка</li>\r\n<li>С <span style="color: blue;">05:50 до 06:05</span> - общее построение, <span style="text-decoration: underline;">всем участникам</span> необходимо присутствовать на построении. <span style="color: red;">Всем участникам необходимо присутствовать на построении!</span></li>\r\n<li>С <span style="color: blue;">06:05 до 07:00</span> - размещение участников по пронумерованным секторам согласно результатам жеребьевки, подготовка снастей, прикармливание. Прикармливать можно на протяжении всего тура, включая время размещения участников с <span style="color: black;">06:05 до 07:00</span>. Количество прикормки не ограничено. Разрешено пользоваться как базовыми, так и самодельными прикормками и насадками. Бросать прикормку в чужой сектор категорически запрещается. Так же разрешены замеры глубин, использование маркеров и ракет.</li>\r\n<li>В <span style="color: blue;">07:00</span> - сигнал на старт и начало ловли.</li>\r\n<li>В <span style="color: blue;">12:00</span> - сигнал на финиш (после сигнала &lt;финиш&gt; поклёвки не регистрируются). <span style="text-decoration: underline;">Снасти необходимо вытащить из воды</span>.</li>\r\n<li>С <span style="color: blue;">12:00 до 13:00</span> - сбор снастей, все участники остаются на своих местах и ждут судей для взвешивания улова, после взвешивания перемещаются к точке старта (лагерю организаторов).</li>\r\n<li>С <span style="color: blue;">13:00 до 13:40</span> - награждение и вручение призов. <span style="text-decoration: underline;">Всем участникам</span> необходимо присутствовать на награждении. Если вам необходимо уехать до награждения, необходимо сообщить об этом организаторам. Если Вы уедите до награждения не предупредив об этом организаторов, все баллы вашего рейтинга полученные за данный тур будут обнулены.</li>\r\n</ul>', '<p>Регистрационный сбор <span style="text-decoration: underline;">с команды</span> составляет 3000 руб.<br />Расходы по организации и изготовлению наградной атрибутики несут организаторы и спонсоры кубка.&nbsp;</p>', '<p>Заявки на участие в Кубке принимаются в личные сообщения Антонову Александру:<br /> <span style="color: red;"><a href="http://www.rusfishing.ru/forum/private.php?do=newpm&amp;u=29" target="_blank"><span style="color: blue;">http://www.rusfishing.ru/forum/private.php?do=newpm&amp;u=29</span></a></span></p>', '<p>К зачёту на взвешивание принимается карп, сазан, линь, амур, карась и плотва. <br />В конце соревнований, после взвешивания улова судьёй, 8 кг. на команду, улова можно забрать с собой, остальную рыбу необходимо отпустить. Карася, плотву и окуня можно забирать с собой без ограничения по весу. <span style="color: red;">Металлические садки запрещены!</span><br />Для ловли команда может одновременно использовать две разные или одинаковые снасти на выбор (удочки, штекер, классические донки, фидеры). Максимальное количество крючков - строго не более 2 шт. на каждую снасть, в сумме не более 4 шт. на две снасти. Строго по одной снасти на участника. Количество запасных снастей "не заброшенных в воду" размещённых в секторе на берегу неограниченно. <br />В случае уличения команды в использовании более двух снастей или в использовании более четырёх крючков, команда дисквалифицируется, взнос не возвращается. <br />Перемещение участников между секторами без разрешения судей во время соревнований запрещено. Исключение составляет поход в М/Ж.<br />Зрителям запрещается помогать участникам во время ловли, подсачивать рыбу, держать в руках снасти и т.д. Находится рядом с участниками не создавая шума и проблем окружающим можно.<br />Употребление участниками крепких спиртных напитков во время соревнования строго запрещено.<br />Оргкомитет имеет право отказать в регистрации участнику находящемуся в состоянии сильного алкогольного опьянения (определяется организаторами на месте).<br /><span style="color: black;">Запрещено использовать кислую (прокисшую) прикормку. В случае обнаружения судьёй такой прикормки, она будет изъята.</span> Кормить самодельными кашами разрешено.<br /><span style="color: black;">Запрещено входить в сектор другого участника при вываживании. (отход от берега в рамках границ своего сектора не ограничен).</span><br /><span style="color: black;">Запрещено использование снастей именуемых - "резинка" и "соска". А так же, устанавливать на одну снасть более 2-х крючков.</span><br /><span style="color: black;"><strong>Запрещено использование металлических садков во избежании травмирования рыбы</strong>.</span><br /><span style="color: black;">При вываживании разрешено заходить в воду в рамках своего сектора на глубину не далее чем по колено, не производя при заходе громких всплесков.</span><br />Уход из сектора раньше времени установленного регламентом без оповещения судей будет расцениваться как неучастие,что в итоге повлияет на рейтинг команды.</p>', '', 695, 4, '2011-08-19 11:14:16', '2011-08-19 11:14:16', 1, 1);

DROP TABLE IF EXISTS fish_event_type;
CREATE TABLE IF NOT EXISTS fish_event_type (
  id int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  weight bigint(20) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB ;

INSERT INTO fish_event_type (id, `name`, weight) VALUES(1, 'Встреча', NULL);
INSERT INTO fish_event_type (id, `name`, weight) VALUES(2, 'Выезд', NULL);
INSERT INTO fish_event_type (id, `name`, weight) VALUES(3, 'Экспедиция', NULL);
INSERT INTO fish_event_type (id, `name`, weight) VALUES(4, 'Соревнование', NULL);
INSERT INTO fish_event_type (id, `name`, weight) VALUES(5, 'Фестиваль', NULL);

DROP TABLE IF EXISTS friend;
CREATE TABLE IF NOT EXISTS friend (
  requester_id int(11) NOT NULL default '0',
  accepter_id int(11) NOT NULL default '0',
  accepted tinyint(1) default '0',
  PRIMARY KEY  (requester_id,accepter_id),
  KEY friend_accepter_id_sf_guard_user_profile_id (accepter_id)
) TYPE=InnoDB;

INSERT INTO friend (requester_id, accepter_id, accepted) VALUES(1, 7, 1);
INSERT INTO friend (requester_id, accepter_id, accepted) VALUES(10, 7, 1);

DROP TABLE IF EXISTS inbox;
CREATE TABLE IF NOT EXISTS inbox (
  id int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  message text NOT NULL,
  created_by int(11) NOT NULL,
  updated_by int(11) NOT NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  PRIMARY KEY  (id),
  KEY created_by_idx (created_by),
  KEY updated_by_idx (updated_by)
) TYPE=InnoDB ;

INSERT INTO inbox (id, `name`, message, created_by, updated_by, created_at, updated_at) VALUES(1, 'фир оф зе дарк!', '<p>Первый инбоксе уиииииии</p>', 7, 7, '2011-06-02 13:22:59', '2011-06-02 13:22:59');

DROP TABLE IF EXISTS inboxed;
CREATE TABLE IF NOT EXISTS inboxed (
  inbox_id int(11) NOT NULL default '0',
  profile_id int(11) NOT NULL default '0',
  PRIMARY KEY  (inbox_id,profile_id),
  KEY inboxed_profile_id_sf_guard_user_profile_id (profile_id)
) TYPE=InnoDB;

INSERT INTO inboxed (inbox_id, profile_id) VALUES(1, 8);
INSERT INTO inboxed (inbox_id, profile_id) VALUES(1, 10);

DROP TABLE IF EXISTS locality;
CREATE TABLE IF NOT EXISTS locality (
  id int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  area_high_id int(11) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY `name` (`name`),
  KEY area_high_id_idx (area_high_id)
) TYPE=InnoDB ;

INSERT INTO locality (id, `name`, area_high_id) VALUES(1, 'Роща', 1);
INSERT INTO locality (id, `name`, area_high_id) VALUES(2, 'Боровск', 1);
INSERT INTO locality (id, `name`, area_high_id) VALUES(3, 'Сатино', 1);
INSERT INTO locality (id, `name`, area_high_id) VALUES(4, 'Подольск', 2);
INSERT INTO locality (id, `name`, area_high_id) VALUES(5, 'город Балашиха', 3);
INSERT INTO locality (id, `name`, area_high_id) VALUES(6, 'село Немчиновка', 4);
INSERT INTO locality (id, `name`, area_high_id) VALUES(7, 'село Спас-Заулок', 9);
INSERT INTO locality (id, `name`, area_high_id) VALUES(8, 'город Чехов', 13);
INSERT INTO locality (id, `name`, area_high_id) VALUES(9, 'город Видное', 16);
INSERT INTO locality (id, `name`, area_high_id) VALUES(10, 'Рига', 17);
INSERT INTO locality (id, `name`, area_high_id) VALUES(11, 'город Наро-Фоминск', 20);
INSERT INTO locality (id, `name`, area_high_id) VALUES(12, 'город Жуковский', 24);
INSERT INTO locality (id, `name`, area_high_id) VALUES(13, 'город Раменское', 19);
INSERT INTO locality (id, `name`, area_high_id) VALUES(14, 'город Санкт-Петербург', 28);
INSERT INTO locality (id, `name`, area_high_id) VALUES(15, 'город Истра', 31);
INSERT INTO locality (id, `name`, area_high_id) VALUES(16, 'пос. Серебряные Пруды', 32);
INSERT INTO locality (id, `name`, area_high_id) VALUES(17, 'город Коломна', 33);
INSERT INTO locality (id, `name`, area_high_id) VALUES(18, 'Mäntyharju', 37);
INSERT INTO locality (id, `name`, area_high_id) VALUES(19, 'Вячеславка', NULL);
INSERT INTO locality (id, `name`, area_high_id) VALUES(20, 'Астана', 38);
INSERT INTO locality (id, `name`, area_high_id) VALUES(21, 'село Ильинское', 41);
INSERT INTO locality (id, `name`, area_high_id) VALUES(22, 'город Пермь', NULL);
INSERT INTO locality (id, `name`, area_high_id) VALUES(23, 'город Москва', 42);
INSERT INTO locality (id, `name`, area_high_id) VALUES(24, 'город Котельники', 43);
INSERT INTO locality (id, `name`, area_high_id) VALUES(25, 'город Нижний Новгород', 50);
INSERT INTO locality (id, `name`, area_high_id) VALUES(26, 'Родники', 51);
INSERT INTO locality (id, `name`, area_high_id) VALUES(27, 'Калининград', 52);
INSERT INTO locality (id, `name`, area_high_id) VALUES(28, 'Kittilä', 55);
INSERT INTO locality (id, `name`, area_high_id) VALUES(29, 'город Тверь', 60);
INSERT INTO locality (id, `name`, area_high_id) VALUES(30, 'пос. Большевик', 63);
INSERT INTO locality (id, `name`, area_high_id) VALUES(31, 'пос. Торики', 66);
INSERT INTO locality (id, `name`, area_high_id) VALUES(32, 'город Липецк', 71);
INSERT INTO locality (id, `name`, area_high_id) VALUES(33, 'город Самара', NULL);
INSERT INTO locality (id, `name`, area_high_id) VALUES(34, 'Зеленоградск', 81);
INSERT INTO locality (id, `name`, area_high_id) VALUES(35, 'город Протвино', 89);
INSERT INTO locality (id, `name`, area_high_id) VALUES(36, 'город Омск', NULL);
INSERT INTO locality (id, `name`, area_high_id) VALUES(37, 'город Люберцы', 105);
INSERT INTO locality (id, `name`, area_high_id) VALUES(38, 'деревня Донино', 19);
INSERT INTO locality (id, `name`, area_high_id) VALUES(39, 'Котка', 106);
INSERT INTO locality (id, `name`, area_high_id) VALUES(40, 'пос. Знамя Октября', 18);
INSERT INTO locality (id, `name`, area_high_id) VALUES(41, 'город Домодедово', 25);
INSERT INTO locality (id, `name`, area_high_id) VALUES(42, 'город Ногинск', 86);
INSERT INTO locality (id, `name`, area_high_id) VALUES(43, 'Tapa vald', 110);
INSERT INTO locality (id, `name`, area_high_id) VALUES(44, 'город Железнодорожный', 112);
INSERT INTO locality (id, `name`, area_high_id) VALUES(45, 'город Высоковск', 9);
INSERT INTO locality (id, `name`, area_high_id) VALUES(46, 'город Луховицы', 121);
INSERT INTO locality (id, `name`, area_high_id) VALUES(47, 'пос. Потапово', 96);
INSERT INTO locality (id, `name`, area_high_id) VALUES(48, 'город Дедовск', 31);
INSERT INTO locality (id, `name`, area_high_id) VALUES(49, 'Запорожье', NULL);
INSERT INTO locality (id, `name`, area_high_id) VALUES(50, 'Ялта', NULL);
INSERT INTO locality (id, `name`, area_high_id) VALUES(51, 'Мапуто', NULL);
INSERT INTO locality (id, `name`, area_high_id) VALUES(52, 'Брандё', 126);
INSERT INTO locality (id, `name`, area_high_id) VALUES(53, 'Klintaine', 127);
INSERT INTO locality (id, `name`, area_high_id) VALUES(54, 'город Сергиев Посад', 132);
INSERT INTO locality (id, `name`, area_high_id) VALUES(55, 'Suomussalmi', 135);
INSERT INTO locality (id, `name`, area_high_id) VALUES(56, 'город Костомукша', NULL);
INSERT INTO locality (id, `name`, area_high_id) VALUES(57, 'город Лыткарино', 136);
INSERT INTO locality (id, `name`, area_high_id) VALUES(58, 'город Рязань', 137);
INSERT INTO locality (id, `name`, area_high_id) VALUES(59, 'Киев', 138);
INSERT INTO locality (id, `name`, area_high_id) VALUES(60, 'деревня Сосенки', 16);
INSERT INTO locality (id, `name`, area_high_id) VALUES(61, 'город Лобня', 142);
INSERT INTO locality (id, `name`, area_high_id) VALUES(62, 'деревня Шумятино', 6);
INSERT INTO locality (id, `name`, area_high_id) VALUES(64, 'город Обнинск', 146);
INSERT INTO locality (id, `name`, area_high_id) VALUES(65, 'город Пушкино', 147);

DROP TABLE IF EXISTS location;
CREATE TABLE IF NOT EXISTS location (
  id int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  description text,
  depth float(18,2) default NULL,
  is_free tinyint(1) default '1',
  price text,
  location_flow_id int(11) default NULL,
  location_fundus_id int(11) default NULL,
  location_relief_id int(11) default NULL,
  location_type_id int(11) default NULL,
  location_scope_id int(11) default NULL,
  address_id int(11) default NULL,
  created_by int(11) NOT NULL,
  updated_by int(11) NOT NULL,
  slug varchar(255) default NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  latitude double(18,15) default NULL,
  longitude double(18,15) default NULL,
  version bigint(20) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY location_sluggable_idx (slug),
  KEY location_flow_id_idx (location_flow_id),
  KEY location_fundus_id_idx (location_fundus_id),
  KEY location_relief_id_idx (location_relief_id),
  KEY location_type_id_idx (location_type_id),
  KEY location_scope_id_idx (location_scope_id),
  KEY address_id_idx (address_id),
  KEY created_by_idx (created_by),
  KEY updated_by_idx (updated_by)
) TYPE=InnoDB ;

INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(305, 'Небольшое но симпатичное место и сбросов загрязняющих нет, кто пробовал раскажите?', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 267, 1, 1, '', '2011-05-02 19:55:04', '2011-05-02 19:55:04', 55.115888187800003, 38.878383636499997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(306, 'Река Пехорка', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 268, 1, 1, '1', '2011-05-02 19:55:07', '2011-05-02 19:55:07', 55.603953962599995, 38.036384582499998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(307, 'Река Или', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 269, 1, 1, '2', '2011-05-02 19:55:10', '2011-05-02 19:55:10', 44.138855767599999, 76.953735351600002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(308, 'Верея -Жуковский', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 270, 1, 1, '3', '2011-05-02 19:55:12', '2011-05-02 19:55:13', 55.606984259299999, 38.058786392200027, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(309, 'Гжельский рыбхоз', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 271, 1, 1, '4', '2011-05-02 19:55:15', '2011-05-02 19:55:15', 55.557185007200019, 38.322715759300003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(310, 'Ждановское', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 272, 1, 1, '5', '2011-05-02 19:55:18', '2011-05-02 19:55:18', 55.429476124799997, 37.965188026400000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(311, 'Озеро Вельё. Рыбалка. Рыбы много - щука, окунь и пр.', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 273, 1, 1, '6', '2011-05-02 19:55:21', '2011-05-02 19:55:21', 57.655320827499963, 33.036575317400001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(312, 'Дом рыбака Щукари', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 274, 1, 1, '7', '2011-05-02 19:55:24', '2011-05-02 19:55:24', 47.007884597000000, 47.493553161599998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(313, 'Магазин «Всё для рыбалки»', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 275, 1, 1, '8', '2011-05-02 19:55:26', '2011-05-02 19:55:26', 59.867001686800002, 30.261465311099990, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(314, 'база" Седьмое небо"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 276, 1, 1, '9', '2011-05-02 19:55:29', '2011-05-02 19:55:29', 46.974059485900000, 47.591722011599998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(315, 'Частный гостевой дом в дельте Волги на о.Станья', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 277, 1, 1, '10', '2011-05-02 19:55:32', '2011-05-02 19:55:32', 45.819324979999998, 48.102607727100001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(316, 'Кордон Кузьмича', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 278, 1, 1, '11', '2011-05-02 19:55:35', '2011-05-02 19:55:35', 60.559304045200001, 28.647537231399998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(317, 'Воткинская ГЭС - Краны', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 279, 1, 1, '12', '2011-05-02 19:55:38', '2011-05-02 19:55:38', 56.780542058100004, 54.070930480999998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(318, 'Воткинская ГЭС', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 280, 1, 1, '13', '2011-05-02 19:55:40', '2011-05-02 19:55:40', 56.786884805600010, 54.086304902999998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(319, 'Ловля Тарани', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 281, 1, 1, '14', '2011-05-02 19:55:43', '2011-05-02 19:55:43', 46.647963159199996, 38.890399932900017, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(320, 'Новосибирское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 282, 1, 1, '15', '2011-05-02 19:55:46', '2011-05-02 19:55:46', 54.702407731000001, 82.842407226600002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(321, 'Портновские пруды', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 283, 1, 1, '16', '2011-05-02 19:55:49', '2011-05-02 19:55:49', 55.582808099300003, 36.735534668000000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(322, 'Все для рыбалки и отдыха', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 284, 1, 1, '17', '2011-05-02 19:55:52', '2011-05-02 19:55:52', 55.907596860399998, 36.881618499799998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(323, 'р.Северка', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 285, 1, 1, '18', '2011-05-02 19:55:54', '2011-05-02 19:55:54', 55.234387508199980, 37.802238464399998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(324, 'рыбхоз', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 286, 1, 1, '19', '2011-05-02 19:55:57', '2011-05-02 19:55:57', 54.460998599100002, 38.738479614299997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(325, 'Магазин «Рыболов»', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 287, 1, 1, '20', '2011-05-02 19:56:00', '2011-05-02 19:56:00', 55.081950800800001, 38.802273273499999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(326, 'река Москва', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 288, 1, 1, '21', '2011-05-02 19:56:03', '2011-05-02 19:56:03', 55.080823869000000, 38.835811614999997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(327, 'Остров', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 289, 1, 1, '22', '2011-05-02 19:56:06', '2011-05-02 19:56:06', 55.071235988599987, 38.832850456200028, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(328, 'Ока', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 290, 1, 1, '23', '2011-05-02 19:56:08', '2011-05-02 19:56:08', 55.069902962300027, 38.808270692799994, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(329, '2капитана', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 291, 1, 1, '2-1', '2011-05-02 19:56:11', '2011-05-02 19:56:11', 57.044465295400002, 43.179187774699997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(330, 'Турбаза "Рось"', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 292, 1, 1, '24', '2011-05-02 19:56:14', '2011-05-02 19:56:14', 49.458272527399998, 31.047191619900001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(331, 'база Войсковая 1', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 293, 1, 1, '1-1', '2011-05-02 19:56:17', '2011-05-02 19:56:17', 45.368967251400001, 37.506058216099980, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(332, 'Труженик моря 1', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 294, 1, 1, '1-2', '2011-05-02 19:56:20', '2011-05-02 19:56:20', 45.315361862200000, 37.386903762800010, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(333, 'Платная автодорога', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 295, 1, 1, '25', '2011-05-02 19:56:22', '2011-05-02 19:56:22', 45.317383768600010, 37.384972572300001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(334, 'Труженик моря 2', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 296, 1, 1, '2-2', '2011-05-02 19:56:25', '2011-05-02 19:56:25', 45.321849813600018, 37.408318519599995, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(335, 'Темрючанка', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 297, 1, 1, '26', '2011-05-02 19:56:28', '2011-05-02 19:56:28', 45.346165474899998, 37.452135086100000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(336, 'Lahnavesi', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 298, 1, 1, 'lahnavesi', '2011-05-02 19:56:31', '2011-05-02 19:56:31', 61.454767214999997, 26.653003692600016, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(337, 'Вячеславское водохранилище1', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 299, 1, 1, '1-3', '2011-05-02 19:56:33', '2011-05-02 19:56:33', 50.983937635700002, 72.162666320800000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(338, 'Камал', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 300, 1, 1, '27', '2011-05-02 19:56:36', '2011-05-02 19:56:36', 51.177964181200011, 71.411025524099998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(339, 'Павлодарская область1', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 301, 1, 1, '1-4', '2011-05-02 19:56:39', '2011-05-02 19:56:39', 52.827045573700026, 76.540331840500002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(340, 'Баканас1', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 302, 1, 1, '1-5', '2011-05-02 19:56:42', '2011-05-02 19:56:42', 44.811526935899998, 76.234002113299994, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(341, 'Окунь', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 303, 1, 1, '28', '2011-05-02 19:56:45', '2011-05-02 19:56:45', 59.921627070699998, 30.353076160000001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(342, 'пос. Ильинское ', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 304, 1, 1, '29', '2011-05-02 19:56:47', '2011-05-02 19:56:47', 55.754167897800002, 37.233524322500010, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(343, 'Озеро Глухая яма', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 305, 1, 1, '30', '2011-05-02 19:56:50', '2011-05-02 19:56:50', 55.767786337799997, 37.279872894299999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(344, 'Моё место', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 306, 1, 1, '31', '2011-05-02 19:56:53', '2011-05-02 19:56:53', 58.150009779599998, 56.475992202799986, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(346, 'Белодачинский пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 308, 1, 1, '33', '2011-05-02 19:56:58', '2011-05-02 19:56:58', 55.659286609699997, 37.851676940899999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(347, 'карьер Фатеево', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 309, 1, 1, '34', '2011-05-02 19:57:01', '2011-05-02 19:57:01', 55.750042793500000, 38.639087676999999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(348, 'ruslaplandia.ru Турбаза Русская Лапландия', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 310, 1, 1, 'ruslaplandia-ru', '2011-05-02 19:57:04', '2011-05-02 19:57:04', 67.779349420900004, 35.075225830100003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(349, 'Мансурово пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 311, 1, 1, '35', '2011-05-02 19:57:07', '2011-05-02 19:57:07', 55.208067354799994, 37.753486633300000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(350, '10 озёр', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 312, 1, 1, '10-1', '2011-05-02 19:57:09', '2011-05-02 19:57:09', 60.892877688300011, 35.715007782000001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(351, 'Строгино , Большой карьер', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 313, 1, 1, '36', '2011-05-02 19:57:12', '2011-05-02 19:57:12', 55.792902774300003, 37.418231964100002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(352, '"Барм фишинг"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 314, 1, 1, '37', '2011-05-02 19:57:15', '2011-05-02 19:57:15', 56.122591449200002, 45.520477294899997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(353, 'Островок', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 315, 1, 1, '38', '2011-05-02 19:57:18', '2011-05-02 19:57:18', 53.186441866800003, 39.980964660599987, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(354, 'Ботово база отдыха', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 316, 1, 1, '39', '2011-05-02 19:57:20', '2011-05-02 19:57:21', 57.154064106199996, 32.987480163599997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(355, 'Турист', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 317, 1, 1, '40', '2011-05-02 19:57:23', '2011-05-02 19:57:23', 56.260932774899999, 43.980953693399996, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(356, 'преголя ', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 318, 1, 1, '41', '2011-05-02 19:57:26', '2011-05-02 19:57:26', 54.698340739300001, 20.671420097400009, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(357, 'голубые озёра', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 319, 1, 1, '42', '2011-05-02 19:57:29', '2011-05-02 19:57:29', 54.650696842700000, 20.358180999799988, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(358, 'ГЭС', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 320, 1, 1, '43', '2011-05-02 19:57:32', '2011-05-02 19:57:32', 58.113281187399998, 56.324501037600001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(359, 'иман', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 321, 1, 1, '44', '2011-05-02 19:57:34', '2011-05-02 19:57:35', 47.863299737399998, 137.856445312000005, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(360, 'оз. Кадал', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 322, 1, 1, '45', '2011-05-02 19:57:37', '2011-05-02 19:57:37', 54.328537239699997, 71.442718505900004, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(361, 'озеро Круглое', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 323, 1, 1, '46', '2011-05-02 19:57:40', '2011-05-02 19:57:40', 56.053371407200011, 37.353858947799999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(362, 'Kapsajoki river', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 324, 1, 1, 'kapsajoki-river', '2011-05-02 19:57:43', '2011-05-02 19:57:43', 67.865712311799996, 25.066337585399999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(363, 'Ounasjoki river', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 325, 1, 1, 'ounasjoki-river', '2011-05-02 19:57:46', '2011-05-02 19:57:46', 67.797830755500001, 24.912528991699997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(364, 'Фиш и Чиж', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 326, 1, 1, '47', '2011-05-02 19:57:49', '2011-05-02 19:57:49', 51.870979847299999, 25.767059326200005, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(365, 'МОЛОГА-ФИШ', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 327, 1, 1, '48', '2011-05-02 19:57:52', '2011-05-02 19:57:52', 58.724203014200000, 37.168121337899997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(366, 'новозыбковский пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 328, 1, 1, '49', '2011-05-02 19:57:55', '2011-05-02 19:57:55', 52.536064211800010, 31.941032409700000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(367, 'Озеро «Монетка»', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 329, 1, 1, '50', '2011-05-02 19:57:58', '2011-05-02 19:57:58', 60.388449943900000, 29.702396392800001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(368, 'Рыболовный интернет магазин www.hot-fishing.ru лучшие цены', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 330, 1, 1, 'www-hot-fishing-ru', '2011-05-02 19:58:01', '2011-05-02 19:58:01', 56.854960576099998, 35.942738056200000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(369, 'Chapoma.ru', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 331, 1, 1, 'chapoma-ru', '2011-05-02 19:58:04', '2011-05-02 19:58:04', 66.372755002500000, 37.441406250000000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(370, 'прокошево', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 332, 1, 1, '51', '2011-05-02 19:58:06', '2011-05-02 19:58:07', 55.881040340499979, 44.511537551899998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(371, 'канал', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 333, 1, 1, '52', '2011-05-02 19:58:09', '2011-05-02 19:58:09', 54.694943000700000, 20.527160167699993, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(372, 'рыбалка', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 334, 1, 1, '53', '2011-05-02 19:58:13', '2011-05-02 19:58:13', 56.308967243299996, 44.017345905299997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(373, 'Ока (Калиновские выселки)', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 335, 1, 1, '54', '2011-05-02 19:58:15', '2011-05-02 19:58:16', 54.875572092799999, 37.320449352299988, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(374, 'РыбаКлюй', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 336, 1, 1, '55', '2011-05-02 19:58:18', '2011-05-02 19:58:18', 59.945232303700010, 30.414190292399997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(376, 'Гореловское озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 338, 1, 1, '57', '2011-05-02 19:58:24', '2011-05-02 19:58:24', 59.782297656800026, 30.117816925000000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(377, 'Рыболов', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 339, 1, 1, '58', '2011-05-02 19:58:27', '2011-05-02 19:58:27', 59.909324623300002, 30.306569337799999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(378, 'Гостевой домик на Рыбинском водохранилище', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 340, 1, 1, '59', '2011-05-02 19:58:30', '2011-05-02 19:58:30', 58.122869166799994, 38.394470214800002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(379, 'рубежное', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 341, 1, 1, '60', '2011-05-02 19:58:33', '2011-05-02 19:58:33', 50.177777596100000, 36.841707229599997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(380, 'карась с моста', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 342, 1, 1, '61', '2011-05-02 19:58:36', '2011-05-02 19:58:36', 54.720666969100002, 20.462100505799999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(381, 'Сервис центр рыбака', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 343, 1, 1, '62', '2011-05-02 19:58:39', '2011-05-02 19:58:39', 59.908506987599978, 30.321664810199998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(382, 'Пады', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 344, 1, 1, '63', '2011-05-02 19:58:42', '2011-05-02 19:58:42', 52.506191341999994, 39.541168212899997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(384, 'Волга (Сомовка)', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 346, 1, 1, '65', '2011-05-02 19:58:47', '2011-05-02 19:58:47', 56.153390360100012, 45.705528259300003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(385, 'р. Волга (Разнежье)', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 347, 1, 1, '66', '2011-05-02 19:58:50', '2011-05-02 19:58:50', 56.190660358599999, 45.631027221700002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(386, 'разнежье', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 348, 1, 1, '67', '2011-05-02 19:58:53', '2011-05-02 19:58:53', 56.179769792999998, 45.680465698200003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(387, 'Рыболовный магазин в Разнежье', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 349, 1, 1, '68', '2011-05-02 19:58:56', '2011-05-02 19:58:56', 56.185693115499987, 45.682525634800001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(388, 'р. Волга (Разнежье)', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 350, 1, 1, '69', '2011-05-02 19:58:59', '2011-05-02 19:58:59', 56.175183367099997, 45.648536682100001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(389, 'Алексей Комаров (Астрахань)', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 351, 1, 1, '70', '2011-05-02 19:59:02', '2011-05-02 19:59:02', 45.928229509300003, 48.317871093800001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(390, 'Черновское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 352, 1, 1, '71', '2011-05-02 19:59:05', '2011-05-02 19:59:05', 53.252068805900009, 50.141601562500000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(391, 'Рыболов 24, минское ш. 43км', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 353, 1, 1, '24-43', '2011-05-02 19:59:08', '2011-05-02 19:59:08', 55.618933466900003, 37.113597392999999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(392, 'Рыболов, минское ш. 47км', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 354, 1, 1, '47-1', '2011-05-02 19:59:11', '2011-05-02 19:59:11', 55.603250900299997, 37.002854347199971, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(393, 'леженьки', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 355, 1, 1, '72', '2011-05-02 19:59:14', '2011-05-02 19:59:14', 51.750892616900003, 37.058601379400002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(394, 'рыболовный магазин', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 356, 1, 1, '73', '2011-05-02 19:59:17', '2011-05-02 19:59:17', 54.724911404799997, 20.468355417300000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(395, 'На Дунае', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 357, 1, 1, '74', '2011-05-02 19:59:20', '2011-05-02 19:59:20', 45.440380888300027, 29.539146423299989, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(396, 'Жили -Были', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 358, 1, 1, '75', '2011-05-02 19:59:23', '2011-05-02 19:59:23', 56.164288409299999, 45.809211730999998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(397, 'Красивая Меча', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 359, 1, 1, '76', '2011-05-02 19:59:25', '2011-05-02 19:59:26', 53.132271551599999, 38.140411377000000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(398, 'карась плотва окунь щука', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 360, 1, 1, '77', '2011-05-02 19:59:28', '2011-05-02 19:59:28', 55.591539423999997, 37.434024810799997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(399, 'Истринское водохранилище. д Пятница.', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 361, 1, 1, '78', '2011-05-02 19:59:31', '2011-05-02 19:59:31', 56.095310956300011, 36.790380477900001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(400, 'Васильсурская слобода', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 362, 1, 1, '79', '2011-05-02 19:59:34', '2011-05-02 19:59:34', 56.137515741900003, 45.930404663099999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(401, 'оз. Зимари', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 363, 1, 1, '80', '2011-05-02 19:59:37', '2011-05-02 19:59:37', 53.180629784700002, 83.479099273700001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(402, 'пруд у стадиона', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 364, 1, 1, '81', '2011-05-02 19:59:40', '2011-05-02 19:59:40', 55.844506281999998, 37.164816856400002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(403, 'инютино нижегородская область', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 365, 1, 1, '82', '2011-05-02 19:59:43', '2011-05-02 19:59:43', 55.927971155100003, 43.917846679699998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(404, 'р. Волга / Кама (Рождествено)', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 366, 1, 1, '83', '2011-05-02 19:59:46', '2011-05-02 19:59:46', 55.434857336400000, 49.346466064500000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(405, 'Вишенки', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 367, 1, 1, '84', '2011-05-02 19:59:49', '2011-05-02 19:59:49', 53.182378635600003, 39.597816467299999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(406, 'Николаевка', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 368, 1, 1, '85', '2011-05-02 19:59:52', '2011-05-02 19:59:52', 52.703226747699986, 39.916419982900003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(407, 'Доброе р.Воронеж', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 369, 1, 1, '86', '2011-05-02 19:59:54', '2011-05-02 19:59:55', 52.861875632599997, 39.844150543200001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(408, 'Каликино', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 370, 1, 1, '87', '2011-05-02 19:59:57', '2011-05-02 19:59:57', 52.961047854399979, 39.767761230499971, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(409, 'преголя', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 371, 1, 1, '88', '2011-05-02 20:00:00', '2011-05-02 20:00:00', 54.692165075999995, 20.396804809599999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(410, 'воронье озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 372, 1, 1, '89', '2011-05-02 20:00:03', '2011-05-02 20:00:03', 54.653080365299999, 20.855827331499999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(411, 'караси', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 373, 1, 1, '90', '2011-05-02 20:00:06', '2011-05-02 20:00:06', 54.944048845700003, 20.485296249400001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(412, 'хлебное озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 374, 1, 1, '91', '2011-05-02 20:00:09', '2011-05-02 20:00:09', 54.720660772499997, 20.462636947600000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(413, 'Супер карп', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 375, 1, 1, '92', '2011-05-02 20:00:12', '2011-05-02 20:00:12', 55.510797737499999, 37.720441818200001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(415, 'р. Мулянка', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 377, 1, 1, '94', '2011-05-02 20:00:18', '2011-05-02 20:00:18', 57.985536054000001, 56.127777099600003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(416, 'р. Мулянка', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 378, 1, 1, '95', '2011-05-02 20:00:21', '2011-05-02 20:00:21', 58.002640611399997, 56.128463745099999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(417, 'Заостровка', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 379, 1, 1, '96', '2011-05-02 20:00:23', '2011-05-02 20:00:23', 58.016827553299997, 56.085205078100003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(420, 'Октябрьское озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 382, 1, 1, '99', '2011-05-02 20:00:32', '2011-05-02 20:00:32', 57.145325073499997, 40.322721004500011, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(421, 'оз. Вепревское', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 383, 1, 1, '100', '2011-05-02 20:00:35', '2011-05-02 20:00:35', 56.913149235999995, 39.155015945400002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(422, 'По Щучьему Велению', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 384, 1, 1, '101', '2011-05-02 20:00:41', '2011-05-02 20:00:41', 48.618952585599999, 45.518932342500001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(423, 'истра', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 385, 1, 1, '102', '2011-05-02 20:00:44', '2011-05-02 20:00:44', 56.033979007500001, 36.817932128899997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(424, 'Нарские пруды', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 386, 1, 1, '103', '2011-05-02 20:00:46', '2011-05-02 20:00:47', 55.539019130600003, 36.615720391300002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(425, 'Донское', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 387, 1, 1, '104', '2011-05-02 20:00:49', '2011-05-02 20:00:50', 52.617751637300003, 38.961113691299971, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(426, 'Водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 388, 1, 1, '105', '2011-05-02 20:00:53', '2011-05-02 20:00:53', 52.593246399700000, 39.743385314900017, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(427, 'Вербилово', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 389, 1, 1, '106', '2011-05-02 20:00:55', '2011-05-02 20:00:56', 52.287902570999996, 39.412765502899994, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(428, 'Грязное', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 390, 1, 1, '107', '2011-05-02 20:00:58', '2011-05-02 20:00:58', 52.358828590099996, 39.417572021500000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(429, 'Саввино', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 391, 1, 1, '108', '2011-05-02 20:01:01', '2011-05-02 20:01:01', 55.420635710099980, 39.203681945800000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(430, 'База Верхневолжье', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 392, 1, 1, '109', '2011-05-02 20:01:04', '2011-05-02 20:01:04', 57.082004442899994, 32.698230743400003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(431, 'Залив Бронежа', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 393, 1, 1, '110', '2011-05-02 20:01:07', '2011-05-02 20:01:07', 57.062315591299999, 32.652482986499997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(432, 'Карповый', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 394, 1, 1, '111', '2011-05-02 20:01:10', '2011-05-02 20:01:10', 55.792017325499998, 38.129253387499979, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(433, 'Министерский', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 395, 1, 1, '112', '2011-05-02 20:01:13', '2011-05-02 20:01:13', 55.792789380099997, 38.119983673100002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(434, 'Плещеево озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 396, 1, 1, '113', '2011-05-02 20:01:16', '2011-05-02 20:01:16', 56.768079123699998, 38.777618408199999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(435, 'Золотой Сазан', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 397, 1, 1, '114', '2011-05-02 20:01:19', '2011-05-02 20:01:19', 55.417566673699987, 37.248544692999978, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(436, 'База "Зелёный дом" коттедж "Простор".', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 398, 1, 1, '115', '2011-05-02 20:01:22', '2011-05-02 20:01:22', 66.197997287400000, 33.354063034100001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(437, 'Похра, Белеутово', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 399, 1, 1, '116', '2011-05-02 20:01:25', '2011-05-02 20:01:25', 55.494483625100003, 37.743616104099999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(438, 'с.Мокрое', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 400, 1, 1, '117', '2011-05-02 20:01:27', '2011-05-02 20:01:27', 52.438013595299971, 39.401779174799998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(439, 'Юшинский затон', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 401, 1, 1, '118', '2011-05-02 20:01:30', '2011-05-02 20:01:30', 52.544834202699995, 39.822864532499999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(440, 'Делиховое', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 402, 1, 1, '119', '2011-05-02 20:01:33', '2011-05-02 20:01:33', 53.043380391199996, 39.817199706999986, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(441, 'Ока - Дракино', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 403, 1, 1, '120', '2011-05-02 20:01:36', '2011-05-02 20:01:36', 54.836409621900017, 37.260818481399987, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(442, 'Елец на Поле', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 404, 1, 1, '121', '2011-05-02 20:01:39', '2011-05-02 20:01:39', 55.818451484000001, 39.854192733799998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(443, 'р. Москва, Сельцо', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 405, 1, 1, '122', '2011-05-02 20:01:42', '2011-05-02 20:01:42', 55.561524637900000, 38.026084899899999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(444, 'Рыболовная база "Трофейная"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 406, 1, 1, '123', '2011-05-02 20:01:45', '2011-05-02 20:01:45', 59.506280713999999, 38.516693115199999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(445, 'Ahtuba-club.ru', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 407, 1, 1, 'ahtuba-club-ru', '2011-05-02 20:01:48', '2011-05-02 20:01:48', 47.112593267599998, 47.398452758799998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(446, 'Озеро Долгое', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 408, 1, 1, '124', '2011-05-02 20:01:51', '2011-05-02 20:01:51', 56.513669536799995, 37.361068725599999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(447, '"Клёвое озеро"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 409, 1, 1, '125', '2011-05-02 20:01:54', '2011-05-02 20:01:54', 54.999816697000000, 73.472968339900007, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(448, 'Рыболовно - охотничий клуб "Мария" ', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 410, 1, 1, '126', '2011-05-02 20:01:57', '2011-05-02 20:01:57', 47.586975945799999, 46.752233505199996, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(449, 'Рыболовно-охотничья гостиница "ВЕСЬ"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 411, 1, 1, '127', '2011-05-02 20:01:59', '2011-05-02 20:01:59', 58.649226445899998, 37.279357910199998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(450, 'Плавучая гостиница "Гусиный остров"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 412, 1, 1, '128', '2011-05-02 20:02:02', '2011-05-02 20:02:02', 46.848639699000003, 47.698516845699999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(451, 'Река Волга', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 413, 1, 1, '129', '2011-05-02 20:02:05', '2011-05-02 20:02:05', 56.163944307100003, 47.080535888699998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(452, 'Большой Юг', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 414, 1, 1, '130', '2011-05-02 20:02:08', '2011-05-02 20:02:08', 59.073124816000004, 38.302803039600001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(453, 'Рыбинка. Вичелово.', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 415, 1, 1, '131', '2011-05-02 20:02:11', '2011-05-02 20:02:11', 59.002030770300003, 37.969779968299996, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(454, 'Советск', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 416, 1, 1, '132', '2011-05-02 20:02:14', '2011-05-02 20:02:14', 53.931351817400000, 37.647399902299988, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(455, 'река Вопь', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 417, 1, 1, '133', '2011-05-02 20:02:17', '2011-05-02 20:02:17', 55.224323672899999, 32.853927612299998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(456, 'р. Ока (Озёры)', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 418, 1, 1, '134', '2011-05-02 20:02:20', '2011-05-02 20:02:20', 54.852856907800003, 38.590807914699987, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(458, 'МАМШИН ОСТРОВ', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 420, 1, 1, '135', '2011-05-02 20:02:26', '2011-05-02 20:02:26', 57.364682060400000, 43.067436218299996, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(460, 'Дом рыбака Ахтуба Тур', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 422, 1, 1, '136', '2011-05-02 20:02:31', '2011-05-02 20:02:32', 45.845621229000002, 47.964173555400002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(461, 'Тростенское озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 423, 1, 1, '137', '2011-05-02 20:02:34', '2011-05-02 20:02:34', 55.866912452699999, 36.488342285199998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(462, 'Крюково', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 424, 1, 1, '138', '2011-05-02 20:02:37', '2011-05-02 20:02:37', 55.270979598799997, 35.937309265099998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(463, 'Дылдино', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 425, 1, 1, '139', '2011-05-02 20:02:40', '2011-05-02 20:02:40', 55.129905302700010, 36.047172546399999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(464, 'Шушпанское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 426, 1, 1, '140', '2011-05-02 20:02:43', '2011-05-02 20:02:43', 53.382017764799997, 40.737304687500000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(465, 'Быковские острова', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 427, 1, 1, '141', '2011-05-02 20:02:46', '2011-05-02 20:02:46', 57.361904697500002, 42.964096069300027, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(466, 'Демидовка', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 428, 1, 1, '142', '2011-05-02 20:02:49', '2011-05-02 20:02:49', 57.355423366399997, 42.998085021999998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(467, 'Юдановка', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 429, 1, 1, '143', '2011-05-02 20:02:52', '2011-05-02 20:02:52', 55.321722199000000, 37.200393676799997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(468, 'Зыбино', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 430, 1, 1, '144', '2011-05-02 20:02:55', '2011-05-02 20:02:55', 55.299056329999999, 37.378921508799998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(469, 'Богоявление', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 431, 1, 1, '145', '2011-05-02 20:02:58', '2011-05-02 20:02:58', 55.252511654000003, 37.180480957000000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(470, 'Покровское', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 432, 1, 1, '146', '2011-05-02 20:03:01', '2011-05-02 20:03:01', 55.337687994100001, 37.220563888500010, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(471, 'Коротыгино', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 433, 1, 1, '147', '2011-05-02 20:03:03', '2011-05-02 20:03:04', 55.312159172799994, 37.249789237999998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(472, 'Биг ФишЪ www.big-fish.ru', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 434, 1, 1, 'www-big-fish-ru', '2011-05-02 20:03:06', '2011-05-02 20:03:06', 58.111988992999997, 38.358078002900001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(473, 'Пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 435, 1, 1, '148', '2011-05-02 20:03:09', '2011-05-02 20:03:09', 55.421824288399996, 36.303291320800000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(474, 'Бывший карповый пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 436, 1, 1, '149', '2011-05-02 20:03:12', '2011-05-02 20:03:12', 55.212964534999998, 35.757751464800002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(475, 'Карасёвый пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 437, 1, 1, '150', '2011-05-02 20:03:15', '2011-05-02 20:03:15', 55.153373933799998, 36.093521118200002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(476, 'База на Вазузе', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 438, 1, 1, '151', '2011-05-02 20:03:18', '2011-05-02 20:03:18', 55.926393927800000, 34.559898376500001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(477, 'Рыболовная База', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 439, 1, 1, '152', '2011-05-02 20:03:21', '2011-05-02 20:03:21', 55.931702401599999, 35.419235229500003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(478, '"Зеленая Долина"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 440, 1, 1, '153', '2011-05-02 20:03:24', '2011-05-02 20:03:24', 55.261927661999998, 36.445212364200003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(480, 'Иванисово', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 442, 1, 1, '155', '2011-05-02 20:03:30', '2011-05-02 20:03:30', 55.739759531700003, 38.454015255000002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(481, 'Криводанова', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 443, 1, 1, '156', '2011-05-02 20:03:33', '2011-05-02 20:03:33', 57.100825051199998, 66.207733154300001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(482, 'Татаринцево', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 444, 1, 1, '157', '2011-05-02 20:03:35', '2011-05-02 20:03:36', 55.356282230200001, 38.321084976199998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(483, 'пожарный пруд в Храпуново', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 445, 1, 1, '158', '2011-05-02 20:03:38', '2011-05-02 20:03:38', 55.723359164900018, 38.357906341600000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(484, 'пушкино', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 446, 1, 1, '159', '2011-05-02 20:03:41', '2011-05-02 20:03:41', 55.450047386500003, 38.709640502900001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(485, 'Рыболовно-охотничья база ПРОТОКА', '', NULL, 0, '<table class="MsoNormalTable" width="100%" border="1" cellpadding="0">\r\n<tbody>\r\n<tr style="height: 7.6pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 7.6pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">Сруб</span></strong></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 7.6pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">Размещение</span></strong></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 7.6pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">Стоимость, руб.</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr style="height: 26.25pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt;"><a href="http://www.protoka.ru/foto/econom/"><strong><span style="color: #e7993a;">Эконом</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">(1 комната)</span></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">2-х местное</span></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 26.25pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">550</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">(сутки на 1 человека)</span></p>\r\n</td>\r\n</tr>\r\n<tr style="height: 26.25pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt;"><a href="http://www.protoka.ru/foto/comfort/"><strong><span style="color: #e7993a;">Комфорт</span></strong></a> <br />(все дома оборудованы санузлом)</span></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">дом 4-х местный<br />номера 3-х местные <br /> номера 2-х местные </span></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 26.25pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">1200 <br />1100<br />1100<br />(сутки на 1 человека) </span></p>\r\n</td>\r\n</tr>\r\n<tr style="height: 26.25pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt;"><a href="http://www.protoka.ru/foto/comfort/"><strong><span style="color: #e7993a;">Комфорт - Плюс</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">(3 комнаты и санузел)</span></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">4-х местное</span></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 26.25pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">1300</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">(сутки на 1 человека)</span></p>\r\n</td>\r\n</tr>\r\n<tr style="height: 26.25pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">Коттедж с кухней</span></strong></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">(3 комнаты, кухня и санузел)</span></strong></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">до 6 человек (плюс 1 дополнительное место)</span></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 26.25pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">6500</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">(коттедж полностью в сутки)</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, 1, 5, 447, 1, 1, '160', '2011-05-02 20:03:44', '2011-06-14 18:54:20', 45.864074329600001, 48.141231536900001, 4);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(486, 'пос. им. Воровского', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 448, 1, 1, '161', '2011-05-02 20:03:47', '2011-05-02 20:03:47', 55.734572183499999, 38.300571441699987, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(487, 'Храпуново', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 449, 1, 1, '162', '2011-05-02 20:03:50', '2011-05-02 20:03:50', 55.726969915299996, 38.326406478899997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(488, 'Рыбалка на реке Kумийоки', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 450, 1, 1, 'k', '2011-05-02 20:03:53', '2011-05-02 20:03:53', 60.530265872999998, 26.907920837399999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(489, 'рыбалка в Финляндии', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 451, 1, 1, '163', '2011-05-02 20:03:56', '2011-05-02 20:03:56', 60.460264753899978, 26.948089599599989, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(490, 'ЛОВЛЯ НА СПИННИНГ И «ТРОЛЛИНГ» У БЕРЕГОВОЙ ЛИНИИ МОРЯ.', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 452, 1, 1, '164', '2011-05-02 20:03:59', '2011-05-02 20:03:59', 60.459926217400003, 26.954956054699998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(491, 'тарасово,пруд', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 453, 1, 1, '165', '2011-05-02 20:04:02', '2011-05-02 20:04:02', 55.476469975299999, 37.477369308500002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(492, 'Брехово', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 454, 1, 1, '166', '2011-05-02 20:04:05', '2011-05-02 20:04:05', 55.939442620700000, 37.194042205799995, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(493, 'Горнево', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 455, 1, 1, '167', '2011-05-02 20:04:08', '2011-05-02 20:04:08', 55.197928277400003, 37.095766067500001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(494, 'Сенеж дамба', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 456, 1, 1, '168', '2011-05-02 20:04:11', '2011-05-02 20:04:11', 56.216727837199997, 36.999206543000000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(495, 'Пироговское водохранилище', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 457, 1, 1, '169', '2011-05-02 20:04:14', '2011-05-02 20:04:14', 55.980483184900002, 37.676239013699998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(496, 'Река Юг Вологодская обл.', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 458, 1, 1, '170', '2011-05-02 20:04:17', '2011-05-02 20:04:17', 60.109611483899997, 46.470794677699999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(497, 'река Пахра', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 459, 1, 1, '171', '2011-05-02 20:04:19', '2011-05-02 20:04:20', 55.493637596200003, 37.848243713399995, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(498, 'Голубино', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 460, 1, 1, '172', '2011-05-02 20:04:22', '2011-05-02 20:04:22', 55.234602855500000, 37.801809310899998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(499, 'Пожарный прудик пос. им. Воровского', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 461, 1, 1, '173', '2011-05-02 20:04:25', '2011-05-02 20:04:25', 55.728995076200000, 38.299326896699995, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(500, 'Рыболов-спортсмен', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 462, 1, 1, '174', '2011-05-02 20:04:28', '2011-05-02 20:04:28', 55.853901971299997, 38.443855047199996, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(501, 'База отдыха "Ока"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 463, 1, 1, '175', '2011-05-02 20:04:31', '2011-05-02 20:04:31', 54.611646770000000, 41.040973663300001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(503, 'река Отра', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 465, 1, 1, '177', '2011-05-02 20:04:37', '2011-05-02 20:04:37', 55.355696718099999, 38.310699462899997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(504, 'V?ike-Kalaj?rv', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 466, 1, 1, 'v-ike-kalaj-rv', '2011-05-02 20:04:40', '2011-05-02 20:04:40', 59.196790372899997, 25.515747070300005, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(505, 'СВЕТЛЫЕ ГОРЫ', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 467, 1, 1, '178', '2011-05-02 20:04:43', '2011-05-02 20:04:43', 55.898108287600010, 37.294464111300002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(506, 'ЛЬВОВСКИЕ ПРУДЫ', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 468, 1, 1, '179', '2011-05-02 20:04:46', '2011-05-02 20:04:46', 56.102185547099999, 35.727195739700001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(507, 'Брехово', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 469, 1, 1, '180', '2011-05-02 20:04:49', '2011-05-02 20:04:49', 55.635942079599999, 36.845226287800003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(508, 'Истринское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 470, 1, 1, '181', '2011-05-02 20:04:52', '2011-05-02 20:04:52', 56.016489927300000, 36.818801164600004, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(509, 'Фуньково', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 471, 1, 1, '182', '2011-05-02 20:04:55', '2011-05-02 20:04:55', 55.786709035599998, 36.862049102800000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(510, 'Зевалово', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 472, 1, 1, '183', '2011-05-02 20:04:58', '2011-05-02 20:04:58', 55.170142798399979, 38.404598236100000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(512, 'голохвастово', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 474, 1, 1, '185', '2011-05-02 20:05:03', '2011-05-02 20:05:03', 55.382036190299999, 36.954574585000003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(513, 'хованское.', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 475, 1, 1, '186', '2011-05-02 20:05:06', '2011-05-02 20:05:06', 55.596825782000003, 37.457370758099998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(514, 'суханово', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 476, 1, 1, '187', '2011-05-02 20:05:09', '2011-05-02 20:05:10', 55.522703354500003, 37.656755447399995, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(515, 'Поддубье', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 477, 1, 1, '188', '2011-05-02 20:05:12', '2011-05-02 20:05:12', 55.321331517899999, 38.425369262699995, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(516, 'лесное', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 478, 1, 1, '189', '2011-05-02 20:05:15', '2011-05-02 20:05:15', 55.639672326499998, 38.311085701000003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(517, 'Река Рожайка', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 479, 1, 1, '190', '2011-05-02 20:05:18', '2011-05-02 20:05:18', 55.394468180799997, 37.729969024699997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(518, 'Бисерово озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 480, 1, 1, '191', '2011-05-02 20:05:21', '2011-05-02 20:05:21', 55.761798673399987, 38.111400604200000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(519, 'Шипулино', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 481, 1, 1, '192', '2011-05-02 20:05:24', '2011-05-02 20:05:24', 56.328340210300027, 36.521644592299999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(520, 'Медвежьи озера', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 482, 1, 1, '193', '2011-05-02 20:05:27', '2011-05-02 20:05:27', 55.865294208300000, 37.996902465799998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(521, 'Никольский яр', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 483, 1, 1, '194', '2011-05-02 20:05:30', '2011-05-02 20:05:30', 47.792688413400001, 46.339302062999977, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(522, 'ильино', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 484, 1, 1, '195', '2011-05-02 20:05:33', '2011-05-02 20:05:33', 55.176711132800001, 37.039375305200011, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(523, 'салтыково', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 485, 1, 1, '196', '2011-05-02 20:05:36', '2011-05-02 20:05:36', 55.388862080700001, 38.119812011699970, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(524, 'Щеглятьево', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 486, 1, 1, '197', '2011-05-02 20:05:39', '2011-05-02 20:05:39', 55.163573381700026, 37.689285278299998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(525, 'Бутовские пруды', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 487, 1, 1, '198', '2011-05-02 20:05:42', '2011-05-02 20:05:42', 55.530998710900001, 37.507903575900002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(526, 'Супонево', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 488, 1, 1, '199', '2011-05-02 20:05:45', '2011-05-02 20:05:45', 55.753056964199999, 36.872391700699993, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(527, 'Лесниковский карьер', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 489, 1, 1, '200', '2011-05-02 20:05:48', '2011-05-02 20:05:48', 57.089308122599995, 40.420761108399979, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(528, 'Щуково', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 490, 1, 1, '201', '2011-05-02 20:05:51', '2011-05-02 20:05:51', 57.056136177699997, 40.188846588099999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(529, 'Булатниковский пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 491, 1, 1, '202', '2011-05-02 20:05:53', '2011-05-02 20:05:53', 55.554078041799997, 37.655296325700000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(530, 'Лесное озеро Луковое', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 492, 1, 1, '203', '2011-05-02 20:05:56', '2011-05-02 20:05:56', 55.929202124600010, 38.540039062500000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(531, 'Песчанный карьер Аборино', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 493, 1, 1, '204', '2011-05-02 20:05:59', '2011-05-02 20:05:59', 55.857201969199998, 38.256454467799998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(532, 'р. Москва (Строгино)', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 494, 1, 1, '205', '2011-05-02 20:06:02', '2011-05-02 20:06:02', 55.804706032100000, 37.445354461699999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(533, 'Марьино', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 495, 1, 1, '206', '2011-05-02 20:06:05', '2011-05-02 20:06:05', 55.640931810200001, 37.746577262899997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(534, 'bullupe (pri4al torpednix katerov biv6ii )', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 496, 1, 1, 'bullupe-pri4al-torpednix-katerov-biv6ii', '2011-05-02 20:06:08', '2011-05-02 20:06:08', 57.009804514300001, 23.975987434399997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(535, 'bullupe (okolo mosta)', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 497, 1, 1, 'bullupe-okolo-mosta', '2011-05-02 20:06:11', '2011-05-02 20:06:11', 57.038488383800001, 24.038944244399993, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(536, 'ziemelupe', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 498, 1, 1, 'ziemelupe', '2011-05-02 20:06:14', '2011-05-02 20:06:14', 57.027687814499998, 24.009504318200001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(537, 'ozer4o', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 499, 1, 1, 'ozer4o', '2011-05-02 20:06:17', '2011-05-02 20:06:17', 57.044091766599998, 24.013710022000001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(538, 'шальдиха', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 500, 1, 1, '207', '2011-05-02 20:06:20', '2011-05-02 20:06:20', 60.141504734799994, 32.365722656199999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(539, 'Пруд в Губеном углу', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 501, 1, 1, '208', '2011-05-02 20:06:23', '2011-05-02 20:06:23', 56.820846559200000, 37.205114364600000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(540, 'База "Главкосмос"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 502, 1, 1, '209', '2011-05-02 20:06:25', '2011-05-02 20:06:26', 58.650512507299979, 37.275238037100003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(541, 'марковские карьеры', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 503, 1, 1, '210', '2011-05-02 20:06:28', '2011-05-02 20:06:28', 57.040729838399997, 40.486335754399995, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(542, 'Марковские болота', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 504, 1, 1, '211', '2011-05-02 20:06:31', '2011-05-02 20:06:31', 57.023448463100003, 40.488395690899999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(543, 'оз.Аткуль', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 505, 1, 1, '212', '2011-05-02 20:06:34', '2011-05-02 20:06:34', 54.911356424199980, 61.921691894500000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(544, 'Лотошинский рыбхоз', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 506, 1, 1, '213', '2011-05-02 20:06:37', '2011-05-02 20:06:37', 56.133306912400002, 35.584716796899997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(545, 'Золотой сазан', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 507, 1, 1, '214', '2011-05-02 20:06:40', '2011-05-02 20:06:40', 55.385936843399996, 37.617530822799999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(546, 'Кистенево', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 508, 1, 1, '215', '2011-05-02 20:06:43', '2011-05-02 20:06:43', 54.255498091699998, 41.546516418500019, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(547, 'п Граждановка', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 509, 1, 1, '216', '2011-05-02 20:06:46', '2011-05-02 20:06:46', 52.976994605599998, 42.274575233499995, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(548, 'пруды п. Озерный частный', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 510, 1, 1, '217', '2011-05-02 20:06:49', '2011-05-02 20:06:49', 52.877289134999977, 42.192091941800001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(549, 'Пруды п.Озерный', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 511, 1, 1, '218', '2011-05-02 20:06:52', '2011-05-02 20:06:52', 52.861823813300035, 42.156429290799998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(550, 'Рыбалка у Бородина', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 512, 1, 1, '219', '2011-05-02 20:06:55', '2011-05-02 20:06:55', 55.550630964699998, 37.770996093800001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(551, 'Колча', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 513, 1, 1, '220', '2011-05-02 20:06:58', '2011-05-02 20:06:58', 55.206598083300001, 40.103702545199980, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(552, 'Сахалин', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 514, 1, 1, '221', '2011-05-02 20:07:01', '2011-05-02 20:07:01', 51.944264879000002, 142.734375000000000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(553, 'Пруд Печерники', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 515, 1, 1, '222', '2011-05-02 20:07:04', '2011-05-02 20:07:04', 54.649207069999996, 39.218444824200027, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(554, 'Рыб хоз', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 516, 1, 1, '223', '2011-05-02 20:07:07', '2011-05-02 20:07:07', 54.936610156600018, 38.895721435499979, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(555, 'Рыбхоз "Осенка"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 517, 1, 1, '224', '2011-05-02 20:07:10', '2011-05-02 20:07:10', 55.176907185899978, 38.530769348099980, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(556, 'Прудно. Хатунь', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 518, 1, 1, '225', '2011-05-02 20:07:12', '2011-05-02 20:07:12', 55.007698986000001, 37.817516326899998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(557, 'База отдыха "Колвица"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 519, 1, 1, '226', '2011-05-02 20:07:15', '2011-05-02 20:07:15', 67.086421938100003, 33.207206726099997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(558, 'По щучьему велению', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 520, 1, 1, '227', '2011-05-02 20:07:18', '2011-05-02 20:07:18', 48.283192895500001, 46.933593750000000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(559, 'Рыбалка на Кольском полуострове. База отдыха "Вува"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 521, 1, 1, '228', '2011-05-02 20:07:21', '2011-05-02 20:07:21', 68.087787198100003, 30.801029205299994, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(560, 'Арсенал', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 522, 1, 1, '229', '2011-05-02 20:07:24', '2011-05-02 20:07:24', 55.207479652699995, 35.677928924600003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(561, 'Саби', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 523, 1, 1, '230', '2011-05-02 20:07:27', '2011-05-02 20:07:27', 55.574851201300000, 37.814769744899998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(562, 'Касимов', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 524, 1, 1, '231', '2011-05-02 20:07:30', '2011-05-02 20:07:30', 54.950019755199996, 41.142253875700000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(564, 'Десна ниже Расторопово', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 526, 1, 1, '233', '2011-05-02 20:07:36', '2011-05-02 20:07:36', 55.489844828000003, 37.456684112500000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(567, 'ЧИСТЫЕ РОДНИКИ', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 529, 1, 1, '236', '2011-05-02 20:07:45', '2011-05-02 20:07:45', 55.896437203200001, 37.151416540100001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(569, 'Бурсиловский порог (Амиакопровод)', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 531, 1, 1, '238', '2011-05-02 20:07:51', '2011-05-02 20:07:51', 48.121814547999996, 35.067329406699997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(570, 'Залив', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 532, 1, 1, '239', '2011-05-02 20:07:54', '2011-05-02 20:07:54', 48.095967461900017, 35.019264221199997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(571, 'Остров Таволжан', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 533, 1, 1, '240', '2011-05-02 20:07:56', '2011-05-02 20:07:56', 48.076759992400000, 35.081233978299998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(572, 'Раскаты волги', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 534, 1, 1, '241', '2011-05-02 20:08:00', '2011-05-02 20:08:00', 45.854151738699997, 48.398895263699998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(573, 'Рыбалка в Ялте', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 535, 1, 1, '242', '2011-05-02 20:08:02', '2011-05-02 20:08:02', 44.490597065700001, 34.163875579799999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(574, 'рыбалка в Мозамбике', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 536, 1, 1, '243', '2011-05-02 20:08:05', '2011-05-02 20:08:05', -25.978464447199990, 32.595781087900001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(575, 'Борисовские пруды', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 537, 1, 1, '244', '2011-05-02 20:08:08', '2011-05-02 20:08:08', 55.631775410000003, 37.713489532499999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(576, 'Канал им. Москвы', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 538, 1, 1, '245', '2011-05-02 20:08:11', '2011-05-02 20:08:11', 56.117998193899986, 37.608432769799997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(577, 'Torsholma', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 539, 1, 1, 'torsholma', '2011-05-02 20:08:14', '2011-05-02 20:08:14', 60.361431791599998, 21.075897216800001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(578, 'Клинтане.', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 540, 1, 1, '246', '2011-05-02 20:08:17', '2011-05-02 20:08:17', 56.600799058500002, 25.662431716899992, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(579, 'Кресты', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 541, 1, 1, '247', '2011-05-02 20:08:20', '2011-05-02 20:08:20', 45.937728505899997, 38.080565929400002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(580, 'Совхоз Фрязево', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 542, 1, 1, '248', '2011-05-02 20:08:23', '2011-05-02 20:08:23', 55.727375922600018, 38.492231369000002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(581, 'Аятский пруд', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 543, 1, 1, '249', '2011-05-02 20:08:26', '2011-05-02 20:08:26', 57.373938418700000, 60.534667968800001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(585, 'м-н "Мир рыболова"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 547, 1, 1, '253', '2011-05-02 20:08:38', '2011-05-02 20:08:38', 56.319868721499979, 43.946170806900000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(586, 'м-н "РыболовСпортЦентр"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 548, 1, 1, '254', '2011-05-02 20:08:41', '2011-05-02 20:08:41', 56.299634248799997, 43.985309600800001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(587, 'м-н "Рыболов"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 549, 1, 1, '255', '2011-05-02 20:08:44', '2011-05-02 20:08:44', 56.276911260500000, 43.980331420900001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(588, 'м-н "Специалист"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 550, 1, 1, '256', '2011-05-02 20:08:47', '2011-05-02 20:08:47', 56.310633609500002, 44.021487235999999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(589, 'м-н "Мир рыболова"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 551, 1, 1, '257', '2011-05-02 20:08:50', '2011-05-02 20:08:50', 56.317893356900001, 44.023118019100011, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(590, 'Волжанка', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 552, 1, 1, '258', '2011-05-02 20:08:53', '2011-05-02 20:08:53', 56.782545146999986, 36.289730071999998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(591, 'м-н "Рыбалка"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 553, 1, 1, '259', '2011-05-02 20:08:56', '2011-05-02 20:08:56', 56.329577461400000, 43.992819786100000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(592, 'м-н "Поплавок"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 554, 1, 1, '260', '2011-05-02 20:08:59', '2011-05-02 20:08:59', 56.322438922300002, 44.035177230799995, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(596, ' м-н "Дельта"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 558, 1, 1, '264', '2011-05-02 20:09:11', '2011-05-02 20:09:11', 56.327983303399996, 43.984665870699978, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(598, 'м-н «Охота на рыбалку»', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 560, 1, 1, '266', '2011-05-02 20:09:16', '2011-05-02 20:09:17', 56.317798156100011, 43.943896293600027, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(599, 'м-н "СпортКультУра"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 561, 1, 1, '267', '2011-05-02 20:09:19', '2011-05-02 20:09:19', 56.249311117299996, 43.854761123700001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(600, 'м-н "СпортМаг"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 562, 1, 1, '268', '2011-05-02 20:09:22', '2011-05-02 20:09:22', 56.236147564900001, 43.868150711100000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(601, 'м-н "Охотник-Рыболов"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 563, 1, 1, '269', '2011-05-02 20:09:25', '2011-05-02 20:09:25', 56.236576882500010, 43.866949081400001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(602, 'м-н "Семейный"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 564, 1, 1, '270', '2011-05-02 20:09:28', '2011-05-02 20:09:28', 56.259609871899997, 43.856735229500003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(603, '"Дом Рыбака"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 565, 1, 1, '271', '2011-05-02 20:09:31', '2011-05-02 20:09:31', 56.247165194700003, 43.865404128999998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(604, 'м-н "Мир рыболова"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 566, 1, 1, '272', '2011-05-02 20:09:34', '2011-05-02 20:09:34', 56.265640031899999, 43.913340568500011, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(605, 'м-н "Снаряжение"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 567, 1, 1, '273', '2011-05-02 20:09:37', '2011-05-02 20:09:37', 56.265449369499997, 43.913683891299996, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(608, 'ПОДСКАЖИТЕ', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 570, 1, 1, '276', '2011-05-02 20:09:46', '2011-05-02 20:09:46', 56.235813647800001, 36.948738098100002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(609, 'Сенеж', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 571, 1, 1, '277', '2011-05-02 20:09:48', '2011-05-02 20:09:48', 56.211191173800010, 36.989078521700002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(611, 'РЫБНАДЗОР', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 573, 1, 1, '279', '2011-05-02 20:09:54', '2011-05-02 20:09:54', 55.600244560800000, 37.457542419399999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(612, 'Соколово', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 574, 1, 1, '280', '2011-05-02 20:09:57', '2011-05-02 20:09:57', 53.058755129000012, 25.207443237299998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(613, 'Счастье', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 575, 1, 1, '281', '2011-05-02 20:10:00', '2011-05-02 20:10:00', 48.729813169399996, 39.178276061999995, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(614, 'Щекино', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 576, 1, 1, '282', '2011-05-02 20:10:03', '2011-05-02 20:10:03', 51.547829565999997, 34.479217529300001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(615, 'Стремоуховка', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 577, 1, 1, '283', '2011-05-02 20:10:06', '2011-05-02 20:10:06', 51.598400712399979, 35.080032348600000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(616, 'Уборы', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 578, 1, 1, '284', '2011-05-02 20:10:09', '2011-05-02 20:10:09', 55.723696327699997, 37.108082771299998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(617, 'Шебанцево', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 579, 1, 1, '285', '2011-05-02 20:10:12', '2011-05-02 20:10:12', 55.264165164399998, 37.750815153100000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(618, '«Чаша»', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 580, 1, 1, '286', '2011-05-02 20:10:15', '2011-05-02 20:10:15', 55.537373893999998, 37.135677337600001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(619, 'Green canyon', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 581, 1, 1, 'green-canyon', '2011-05-02 20:10:18', '2011-05-02 20:10:18', 36.900729348399999, 31.577796935999988, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(620, 'Озеро Горелое', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 582, 1, 1, '287', '2011-05-02 20:10:21', '2011-05-02 20:10:21', 56.239248084200000, 37.847557067899970, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(621, 'Песчанный карьер г. Электроугли МО', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 583, 1, 1, '288', '2011-05-02 20:10:24', '2011-05-02 20:10:24', 55.773676529499987, 38.186416626000003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(622, 'Морозовский пруд', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 584, 1, 1, '289', '2011-05-02 20:10:27', '2011-05-02 20:10:27', 56.237435503400000, 38.065567016599978, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(623, 'Яковлевское', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 585, 1, 1, '290', '2011-05-02 20:10:30', '2011-05-02 20:10:30', 55.444205751500000, 37.962570190399987, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(624, 'р. Малога', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 586, 1, 1, '291', '2011-05-02 20:10:33', '2011-05-02 20:10:33', 57.811205972899998, 35.988292694099997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(625, 'р. Малога', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 587, 1, 1, '292', '2011-05-02 20:10:35', '2011-05-02 20:10:36', 57.933763241500010, 36.363458633400001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(626, 'Капыстичи', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 588, 1, 1, '293', '2011-05-02 20:10:38', '2011-05-02 20:10:38', 51.680858005100028, 34.825973510700003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(627, 'Лыткино', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 589, 1, 1, '294', '2011-05-02 20:10:41', '2011-05-02 20:10:41', 56.022324498300001, 36.993713378899997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(628, 'м-н "Серебрянный ручей"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 590, 1, 1, '295', '2011-05-02 20:10:44', '2011-05-02 20:10:44', 56.264901209599998, 43.912696838400002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(629, 'г.Лысково, Волга', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 591, 1, 1, '296', '2011-05-02 20:10:47', '2011-05-02 20:10:47', 56.062165487500010, 45.041284561199980, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(630, 'Озеро Охотничье', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 592, 1, 1, '297', '2011-05-02 20:10:50', '2011-05-02 20:10:50', 60.531279271199999, 29.902038574199999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(631, 'ООО "РОСС"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 593, 1, 1, '298', '2011-05-02 20:10:53', '2011-05-02 20:10:53', 56.425295020999997, 37.995185852100001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(632, 'Яузское водохран. База', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 594, 1, 1, '299', '2011-05-02 20:10:56', '2011-05-02 20:10:56', 55.885036049299998, 35.112476348900003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(633, 'оз.Кафтино', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 595, 1, 1, '300', '2011-05-02 20:10:59', '2011-05-02 20:10:59', 57.968787511300000, 34.230308532700001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(634, 'Река Ока', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 596, 1, 1, '301', '2011-05-02 20:11:02', '2011-05-02 20:11:02', 54.814733252399996, 37.237472534200002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(635, 'Река Ока', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 597, 1, 1, '302', '2011-05-02 20:11:05', '2011-05-02 20:11:05', 54.863962939899970, 37.521743774399987, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(636, 'Сычевское водохранилище', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 598, 1, 1, '303', '2011-05-02 20:11:08', '2011-05-02 20:11:08', 55.979177017200001, 36.230163574199999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(637, 'Река Пахра', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 599, 1, 1, '304', '2011-05-02 20:11:11', '2011-05-02 20:11:11', 55.484580541400000, 37.817870378499997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(638, 'Алешинский пруд', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 600, 1, 1, '305', '2011-05-02 20:11:14', '2011-05-02 20:11:14', 56.421497518599978, 37.169837951700018, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(639, 'Каба', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 601, 1, 1, '306', '2011-05-02 20:11:17', '2011-05-02 20:11:17', 64.878395817200001, 29.980316162099999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(640, 'Порог над форелевым', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 602, 1, 1, '307', '2011-05-02 20:11:20', '2011-05-02 20:11:20', 64.865274706100010, 30.513153076199998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(641, 'Река Угра', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 603, 1, 1, '308', '2011-05-02 20:11:22', '2011-05-02 20:11:23', 54.699779112199998, 35.616474151600002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(642, 'п. Коробово', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 604, 1, 1, '309', '2011-05-02 20:11:25', '2011-05-02 20:11:25', 55.538636664800002, 37.821292877200001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(643, 'Река Угра', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 605, 1, 1, '310', '2011-05-02 20:11:28', '2011-05-02 20:11:28', 54.694471759000002, 35.586090087899997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(644, 'Место лова судака', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 606, 1, 1, '311', '2011-05-02 20:11:31', '2011-05-02 20:11:31', 54.658343482500001, 39.842605590799998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(645, 'Песье', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 607, 1, 1, '312', '2011-05-02 20:11:34', '2011-05-02 20:11:34', 55.405141947299988, 37.371025085399999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(646, 'Таболово', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 608, 1, 1, '313', '2011-05-02 20:11:37', '2011-05-02 20:11:37', 55.917756490099997, 36.050434112500000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(647, 'Истра река', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 609, 1, 1, '314', '2011-05-02 20:11:40', '2011-05-02 20:11:40', 56.119505416299987, 36.928567886399996, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(648, 'Зубово', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 610, 1, 1, '315', '2011-05-02 20:11:43', '2011-05-02 20:11:43', 56.017575356100011, 35.824871063200000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(649, 'ВИЛАР', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 611, 1, 1, '316', '2011-05-02 20:11:46', '2011-05-02 20:11:46', 55.564174781100000, 37.593240737899997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(650, 'Русановка', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 612, 1, 1, '317', '2011-05-02 20:11:49', '2011-05-02 20:11:49', 50.446027359399999, 30.590744018599999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(651, 'Отель "Анастасия"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 613, 1, 1, '318', '2011-05-02 20:11:52', '2011-05-02 20:11:52', 51.867694048600001, 104.832057953000003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(652, 'ООО "Двенди"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 614, 1, 1, '319', '2011-05-02 20:11:55', '2011-05-02 20:11:55', 55.732656049099980, 38.326320648199996, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(653, 'Небольшой прудик', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 615, 1, 1, '320', '2011-05-02 20:11:58', '2011-05-02 20:11:58', 56.223886130200000, 37.032852172900000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(654, 'Пруд в Тараканово', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 616, 1, 1, '321', '2011-05-02 20:12:01', '2011-05-02 20:12:01', 56.337475888599997, 37.031478881799998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(655, 'Карьер в Толстяково', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 617, 1, 1, '322', '2011-05-02 20:12:04', '2011-05-02 20:12:04', 56.279198461699998, 36.987791061400003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(656, '"Бездонка"', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 618, 1, 1, '323', '2011-05-02 20:12:07', '2011-05-02 20:12:07', 56.241966794600003, 36.973114013699998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(657, 'Рыбхоз "Сенеж"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 619, 1, 1, '324', '2011-05-02 20:12:10', '2011-05-02 20:12:10', 56.221762642800002, 37.010622024499995, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(658, 'Сенеж, Малиновые острова', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 620, 1, 1, '325', '2011-05-02 20:12:13', '2011-05-02 20:12:13', 56.208231594700003, 37.021865844699995, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(659, 'Полубарское', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 621, 1, 1, '326', '2011-05-02 20:12:16', '2011-05-02 20:12:16', 56.698097106900001, 38.146247863799999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(660, 'Эколенд (закрыт)', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 622, 1, 1, '327', '2011-05-02 20:12:19', '2011-05-02 20:12:19', 56.375802850500001, 37.153701782200002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(661, 'р. Осётр', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 623, 1, 1, '328', '2011-05-02 20:12:22', '2011-05-02 20:12:22', 54.486294827899997, 38.637199401899998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(662, 'Боровково', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 624, 1, 1, '329', '2011-05-02 20:12:25', '2011-05-02 20:12:25', 55.981385955500002, 38.541927337600001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(663, 'Торбеевское озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 625, 1, 1, '330', '2011-05-02 20:12:28', '2011-05-02 20:12:28', 56.327198096699995, 38.267784118700000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(664, 'Клинский рыбхоз (Дятлово)', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 626, 1, 1, '331', '2011-05-02 20:12:31', '2011-05-02 20:12:31', 56.272717702900017, 36.256256103500000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(665, '"Рыбинка"', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 627, 1, 1, '332', '2011-05-02 20:12:34', '2011-05-02 20:12:34', 58.053541960899970, 38.251647949199999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(666, 'Сосенки', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 628, 1, 1, '333', '2011-05-02 20:12:37', '2011-05-02 20:12:37', 55.557670448300001, 37.444667816199996, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(667, 'Станиславские пруды', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 629, 1, 1, '334', '2011-05-02 20:12:40', '2011-05-02 20:12:40', 55.520419699000001, 37.361497878999998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(668, 'Шамбай-97', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 630, 1, 1, '97-1', '2011-05-02 20:12:43', '2011-05-02 20:12:43', 46.980018122600001, 47.533721923800002, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(669, 'База 77-99', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 631, 1, 1, '77-99', '2011-05-02 20:12:45', '2011-05-02 20:12:46', 46.831777837899999, 47.681694030800003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(670, 'Дурыкино', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 632, 1, 1, '335', '2011-05-02 20:12:48', '2011-05-02 20:12:48', 56.044335617900003, 37.147521972699998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(671, 'Теряевские пруды', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 633, 1, 1, '336', '2011-05-02 20:12:51', '2011-05-02 20:12:51', 56.173511096300011, 36.107339859000000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(672, 'Литвиново', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 634, 1, 1, '337', '2011-05-02 20:12:54', '2011-05-02 20:12:54', 56.022756209499995, 38.133544921899997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(673, 'ВНИИ кормов (Лобня)', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 635, 1, 1, '338', '2011-05-02 20:12:57', '2011-05-02 20:12:57', 56.043400760200001, 37.465481758099997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(674, 'Марьино', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 636, 1, 1, '339', '2011-05-02 20:13:00', '2011-05-02 20:13:00', 55.647470786000000, 37.769193649300000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(675, 'Фанни фишинг', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 637, 1, 1, '340', '2011-05-02 20:13:03', '2011-05-02 20:13:03', 55.075222516499998, 37.316780090300000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(676, 'Отмель на угре', '<p>Удобный спуск, чистая вода, да и просто красивое место</p>', 1.00, 1, '', 3, 3, 1, 1, 5, 638, 7, 7, '32', '2011-05-03 23:03:26', '2011-06-02 01:00:11', 54.830381617699999, 35.025039370300000, 4);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(677, 'Мурзино', '<p>Небольшой частный пруд,ловля в основном с берега (есть пару мостков),можно договориться и о лодке. Из рыбы: карась с ладошку,но как из пулемёта,и карп,тоже мелкий в основном до 1кг.,но есть и экземпляры за 3 кг.Хозяин мудаг редкостный,пойманаю рыбу отпускать нельзя,поэтому будте готовы наловить кучу мелкого карпа и оплатить его по нефиговой цене.</p>', 2.00, 0, '<p>Оплата только за вес, 270руб.-Карп; 80руб.-Карась; 100руб.-парковка.</p>', 1, 2, 1, 3, 5, 639, 8, 8, '56', '2011-06-02 00:44:25', '2011-06-02 00:51:31', 54.949169879899998, 36.338653932200003, 3);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(678, 'Ресса', 'Спуститься тяжело все заросшее.', 1.00, 1, '', 4, 3, 2, 1, 5, 640, 7, 7, '64', '2011-06-06 18:44:34', '2011-06-06 18:44:34', 54.674322237299997, 35.051389391699999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(679, 'Плиты на протве', '<p>Давно заброшеный брод</p>', 1.00, 1, '', 4, 3, 1, 1, 5, 641, 7, 7, '93', '2011-06-07 21:10:05', '2011-06-08 01:27:05', 55.090084433800001, 36.560469010399999, 3);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(680, 'Родник на протве', '', 3.00, 1, '', 2, 3, 1, 1, 5, 642, 7, 7, '97', '2011-06-07 21:30:59', '2011-06-08 01:28:02', 55.097880351299999, 36.579110363100000, 3);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(681, 'Песчаная коса на протве', '', 1.00, 1, '', 3, 1, 1, 1, 5, 643, 7, 7, '98', '2011-06-07 21:32:16', '2011-06-08 01:28:29', 55.151004943700002, 36.550670900900002, 3);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(682, 'База Золотые пески', 'База Золотые пески расположена на правом берегу Волги в Енотаевском районе Астраханской области, близ села Замьяны. НА 1321 км.  ФЕДЕРАЛЬНОЙ ТРАССЫ М-6. Трофейная ловля - сома, сазана, жереха, судака, щуки, окуня, леща, линя и буфало.', NULL, 0, '<p><strong>Жилье</strong></p>\r\n<p>1200 руб. с человека в сутки на основном месте.</p>\r\n<p>700 руб с человека в сутки на дополнительном месте.</p>\r\n<p><strong>Лодки и моторы</strong> ( цена при предварительной оплате / цена при оплате на базе) за световой день</p>\r\n<p>Лодка КАЗАНКА 5М4 с эхолотом и мотором Меркурий 40 1500/2000руб.</p>\r\n<p>Пластиковая лодка SAVA с мотором Меркурий 15 800/ 1000руб.</p>\r\n<p>Лодка Крым и другие с мотором Меркурий 15 800/ 1000руб.</p>\r\n<p>Лодка без мотора 300/ 400руб. Цены на лодки и моторы указаны без учета ГСМ и услуг егеря.</p>\r\n<p>Цена 1литра ГСМ (бензин с маслом) 30-35руб.&nbsp;</p>\r\n<p><strong>Еда</strong></p>\r\n<p>На территории Базы работает кафе, где Вас ждет теплая, уютная обстановка, улыбки персонала и большой ассортимент вкусных и любимых блюд: горячие и холодные закуски, первые и вторые блюда, десерты, выпечка, мороженое.Средняя цена за полноценное 3-х разовое питание 650-730 рублей . В т.ч.завтрак - ок.140руб, обед - ок.300руб., ужин ок.270руб.</p>', NULL, NULL, NULL, 1, 5, 644, 1, 1, '154', '2011-06-08 01:55:10', '2011-06-08 02:14:00', 46.823242071400003, 47.608944828799999, 4);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(683, ' Цильма', ' Основная рыба хариус, встречается щука, сиг. Ловил сколько унести можно. Основная проблема-тяжело добраться до водоема)))', 1.00, 1, '', 3, 3, 2, 1, 3, NULL, 13, 13, '176', '2011-06-18 18:06:57', '2011-06-18 18:06:57', 65.298606655399993, 49.434571633899999, 1);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(684, 'здесь можно наловить карасиков для живца', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 645, 12, 12, '184', '2011-06-18 20:02:35', '2011-06-18 20:02:35', 55.071433138499998, 38.778347609199997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(685, 'Рыболовный магазин', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 646, 12, 12, '232', '2011-06-18 20:03:54', '2011-06-18 20:03:54', 55.083606790200001, 38.803923813300003, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(686, 'Уваровский пруд', 'Удобный подъезд, спуски. Есть кафешка-магазинчик.', NULL, 0, 'Путевка стоит 1000р в нее включено 4кг карпа и 3кг сома, есть еще форель и толстолобик, но судя по всему редкость', 1, NULL, NULL, 3, 5, 647, 7, 7, '234', '2011-06-18 22:11:45', '2011-06-18 22:11:45', 55.165234621700002, 36.475204268100001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(687, 'Платник рядом с Детчино', '<p>Небольшой частный пруд недалеко от Детчино.Рыба:карась,карп,белый амур.В основном клюёт карп (если клюёт,частенько бывает полный ОП),попадаются экземпляры за 4 кг.Ловля с мостков и с берега,по выходным частенько негде сесть,после дождей проблематично проехать на легковой машине( дорога откровенное г..). P.S. Лучше ехать,предварительно узнав про клев,а то можно просидеть весь день в пустую,очень своеобразное место по клёву,рыбы вроде много,но поклевок частенько не увидишь за весь день.</p>', 2.50, 0, '<p>Цена светового дня 600 руб.,нормы вылова нет.</p>', 1, 2, 1, 3, 5, 648, 8, 8, '235', '2011-06-19 12:06:31', '2011-06-19 15:17:07', 54.786223705300003, 36.344018350200002, 3);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(688, 'Пруд у Победы', 'Оставшееся от совка рыбхозяйство, сейчас уже не зарыбливают, но есть остатки былой радости.', NULL, 0, 'За день оплата 500р в нее включено 5кг карпа. Можно дать 1000р и ловить сколько влезет.', 1, 2, 1, 3, 5, 649, 7, 7, '237', '2011-06-19 15:01:57', '2011-06-19 15:01:57', 55.177373206900000, 36.765639224600001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(689, 'Пяловское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, 4, 5, 650, 1, 1, '250', '2011-07-30 11:23:51', '2011-07-30 11:23:51', 56.036544835699999, 37.667322793600000, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(690, 'канал им. Москвы', 'Судоходный «канал им. Москвы» имеет переменное по направлению и силе течение, в зависимости от работы шлюзов, дно каменистое с наличием растительности. Берег усилен бетонными плитами, с уклоном от 20 до 40 градусов, глубина в зоне ловли до 6 м.\nВиды рыб, обитающих в водоеме: плотва, окунь, уклея, карась, лещ, густера, чехонь и другие.', 6.00, 1, '', NULL, 3, NULL, NULL, 5, 651, 1, 1, '251', '2011-07-30 11:29:19', '2011-07-30 11:29:19', 56.022672656399997, 37.637306192499999, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(691, 'Пруд в писково', '', NULL, 1, '', 1, NULL, NULL, 3, 5, 652, 7, 7, '252', '2011-07-31 15:02:12', '2011-07-31 15:02:47', 55.085048563599997, 36.469178254900001, 3);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(692, 'Щелкановский пруд', '', 1.00, 1, '', 1, 2, 1, 3, 5, 653, 7, 7, '261', '2011-08-15 22:20:46', '2011-08-15 22:20:46', 54.580582355499999, 35.409142430099998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(693, 'Ресса рядом с Гороховкой', '', 1.00, 1, '', 3, 1, 2, 1, 5, 654, 7, 7, '262', '2011-08-15 22:26:46', '2011-08-15 22:27:24', 54.662490128000002, 35.079509670999997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(694, 'Пруд рядом с Машково', 'Виды рыб, обитающих в водоеме:карп,карась.', 3.00, 0, '1000р будни-1200 р вых\nтелефон 8-985-151-27-84 ', 1, NULL, NULL, 3, 5, 655, 1, 1, '263', '2011-08-19 10:28:14', '2011-08-19 10:28:14', 55.682896613300002, 37.965416367300001, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(695, 'КРХ "Ба! Рыбина!", Школьные пруды', 'Пруды «Школьные» находятся в Домодедовском районе Московской области на окраине поселка Барыбино, и представляют собой систему из трех прудов, два из которых образуют каскад и разделены плотиной. Наше рыболовное хозяйство «Ба! Рыбина» расположено на верхнем пруду, так как он имеет наиболее удобный подъезд и условия для развития комфортной инфраструктуры.', 1.50, 0, 'ариф «ДНЕВНОЙ» с 5.00 до 21.00.\nСтоимость - 2000 руб.\n(норма вылова на 2000 руб. по существующим расценкам на рыбу)\n\nТариф «ПОЛДЕНЬ» с 12.00 до 21.00.\nСтоимость - 1500 руб.\n(норма вылова на 1500 руб. по существующим расценкам на рыбу)\n\nТариф «ВЕЧЕРНИЙ» с 17.00 до 21.00.\nСтоимость - 1000 руб.\n(норма вылова на 1000 руб. по существующим расценкам на рыбу)\n\nНочная рыбалка на водоёме возможна только при оплате текущего и последующего тарифа, то есть минимальная оплата за ночную рыбалку – 3000 руб. (в этом случае рыболов оплачивает вечернюю и дневную путёвки и может продолжать рыбалку с 17.00 текущего дня до 21.00 следующего дня).\nТакже если рыболов планирует посетить нас в ночное время (до 5.00), то ему придётся оплатить вечернюю и дневную путёвки.\n\nЖЕНЩИНЫ И ДЕТИ ДО 14 ЛЕТ ЛОВЯТ РЫБУ НА ВОДОЁМЕ БЕСПЛАТНО, ОПЛАЧИВАЯ УЛОВ ПО ФАКТУ.\n\nВСЕ МУЖЧИНЫ, НАХОДЯЩИЕСЯ НА ТЕРРИТОРИИ КЛУБА, ОПЛАЧИВАЮТ ПОЛНУЮ СТОИМОСТЬ ПУТЁВКИ ПО СУЩЕСТВУЮЩИМ ТАРИФАМ НА РЫБАЛКУ.\n\nГостевые путёвки продаются только при корпоративных заявках и оплате аренды беседок и юрт. Наличие гостевой путёвки не даёт мужчине право на рыбалку, а также не позволяет ловить рыбу снастями ваших товарищей оплативших путёвки.\n\nСтоимость гостевой путёвки – 500 руб.\n\nУЛОВ, ПРЕВЫСИВШИЙ НОРМУ, ОПЛАЧИВАЕТСЯ ДОПОЛНИТЕЛЬНО, ПО СУЩЕСТВУЮЩИМ РАСЦЕНКАМ НА РЫБУ:\n\nФОРЕЛЬ – 400 р/кг.\n\nЩУКА, СОМ ЕВРОПЕЙСКИЙ, СОМ КАНАЛЬНЫЙ -300 р/кг.\n\nКАРП, САЗАН, БЕЛЫЙ АМУР – 200 р/кг.\n\nОСЁТР – 800 р/кг.\n\nОСОБИ ЛУБОГО ВИДА НАВЕСКОЙ БОЛЕЕ 5-ти кг. – 400 р/кг.', 1, 2, 5, 3, 5, 656, 1, 1, '265', '2011-08-19 10:41:35', '2011-08-19 10:41:35', 55.255533518800000, 37.872204239699997, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(696, 'База отдыха «Щукино» на Волге', 'аза отдыха «ЩУКИНО» расположена в Воротынском районе 130км от Н.Новгорода по Борской стороне на левом берегу Волги на окраине села Каменка. Эта местность с незапамятных времен славится среди рыбаков и просто отдыхающих, своими неповторимыми заводями, протоками и островами, изобилующими рыбой и птицей.\n \nРазмещение в двух этажном корпусе, в комфортабельных двухместных номерах с туалетом и душем. На базе организовано качественное 3-х разовое питание, входящее в стоимость проживания. Представлены русская, европейская и восточная кухни, способные удовлетворить самые изысканные пристрастия отдыхающих, так же наш повар приготовит для вас блюда по индивидуальному заказу.', NULL, 0, 'Цена отдыха за сутки с одного отдыхающего (с учетом трехразового питания ):\nНомера 	В будние дни 	В выходные дни\nДвухместный номер (первый этаж) 	1200 рублей 	1600 рублей\nДвухместный номер (второй этаж) 	1400 рублей 	1800 рублей\nНомера класса люкс (сдается как двухместный номер) 	3600 рублей 	5000 рублей\n\n \n\n \n\n \n\n \n\n \n\n \n\nПримечание: Будние дни – с понедельника до 15 часов пятницы. Выходные дни – с 17 часов пятницы по 15 часов понедельника.\n\nУслуги русской бани:\n  	Будние дни 	Пятница 	Суббота 	Воскресенье\nЦена за 1 час, руб. 	500 	800 	1000 	500\n\n \n\n\n\nНа базе отдыха «Щукино» для отдыхающих приготовлено:\n\n   1. 18 двухместных номеров\n   2. Два номера люкс (двухкомнатные)\n', NULL, NULL, NULL, 1, 5, 657, 1, 1, '274', '2011-08-19 11:07:15', '2011-08-19 11:07:15', 56.175292002799999, 45.567333157299998, 2);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(697, 'Ока', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, NULL, 12, 12, '275', '2011-08-26 06:39:42', '2011-08-26 06:39:42', 54.909827846799999, 39.579701138300003, 1);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(698, 'Пруд у Хотьково', '', NULL, 0, '', NULL, NULL, NULL, 3, 5, NULL, 1, 1, '278', '2011-09-12 23:09:13', '2011-09-12 23:09:13', 53.761879827100003, 35.224881806900001, 1);
INSERT INTO location (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(699, 'Пруд у Григорьевки', '', NULL, 1, '', NULL, NULL, NULL, 3, 5, 658, 1, 1, '341', '2011-09-12 23:13:45', '2011-09-12 23:13:48', 54.132922573400002, 33.850383780000001, 2);

DROP TABLE IF EXISTS location_flow;
CREATE TABLE IF NOT EXISTS location_flow (
  id int(11) NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  weight bigint(20) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB;

INSERT INTO location_flow (id, `name`, weight) VALUES(1, 'Отсутствует', NULL);
INSERT INTO location_flow (id, `name`, weight) VALUES(2, 'Медленное', NULL);
INSERT INTO location_flow (id, `name`, weight) VALUES(3, 'Среднее', NULL);
INSERT INTO location_flow (id, `name`, weight) VALUES(4, 'Быстрое', NULL);

DROP TABLE IF EXISTS location_fundus;
CREATE TABLE IF NOT EXISTS location_fundus (
  id int(11) NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  weight bigint(20) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB;

INSERT INTO location_fundus (id, `name`, weight) VALUES(1, 'Песчаное', NULL);
INSERT INTO location_fundus (id, `name`, weight) VALUES(2, 'Илистое', NULL);
INSERT INTO location_fundus (id, `name`, weight) VALUES(3, 'Каменистое', NULL);
INSERT INTO location_fundus (id, `name`, weight) VALUES(4, 'Заросшее', NULL);
INSERT INTO location_fundus (id, `name`, weight) VALUES(5, 'Коряжник', NULL);

DROP TABLE IF EXISTS location_relief;
CREATE TABLE IF NOT EXISTS location_relief (
  id int(11) NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  weight bigint(20) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB;

INSERT INTO location_relief (id, `name`, weight) VALUES(1, 'Равномерный', NULL);
INSERT INTO location_relief (id, `name`, weight) VALUES(2, 'Перекаты', NULL);
INSERT INTO location_relief (id, `name`, weight) VALUES(3, 'Ямы', NULL);
INSERT INTO location_relief (id, `name`, weight) VALUES(4, 'Бровки', NULL);
INSERT INTO location_relief (id, `name`, weight) VALUES(5, 'Свал', NULL);

DROP TABLE IF EXISTS location_scope;
CREATE TABLE IF NOT EXISTS location_scope (
  id int(11) NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  weight bigint(20) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY `name` (`name`)
) TYPE=InnoDB;

INSERT INTO location_scope (id, `name`, weight) VALUES(1, 'Мне', NULL);
INSERT INTO location_scope (id, `name`, weight) VALUES(2, 'Друзьям', NULL);
INSERT INTO location_scope (id, `name`, weight) VALUES(3, 'Зарегистрированным', NULL);
INSERT INTO location_scope (id, `name`, weight) VALUES(5, 'Всем', NULL);

DROP TABLE IF EXISTS location_show;
CREATE TABLE IF NOT EXISTS location_show (
  id bigint(20) NOT NULL auto_increment,
  shows bigint(20) NOT NULL,
  location_id int(11) NOT NULL,
  PRIMARY KEY  (id),
  KEY location_id_idx (location_id)
) TYPE=InnoDB ;

INSERT INTO location_show (id, shows, location_id) VALUES(1, 85, 676);
INSERT INTO location_show (id, shows, location_id) VALUES(2, 65, 677);
INSERT INTO location_show (id, shows, location_id) VALUES(3, 104, 678);
INSERT INTO location_show (id, shows, location_id) VALUES(4, 12, 372);
INSERT INTO location_show (id, shows, location_id) VALUES(5, 10, 427);
INSERT INTO location_show (id, shows, location_id) VALUES(6, 40, 679);
INSERT INTO location_show (id, shows, location_id) VALUES(7, 50, 681);
INSERT INTO location_show (id, shows, location_id) VALUES(8, 33, 680);
INSERT INTO location_show (id, shows, location_id) VALUES(9, 52, 682);
INSERT INTO location_show (id, shows, location_id) VALUES(10, 31, 485);
INSERT INTO location_show (id, shows, location_id) VALUES(11, 7, 402);
INSERT INTO location_show (id, shows, location_id) VALUES(12, 10, 532);
INSERT INTO location_show (id, shows, location_id) VALUES(13, 6, 567);
INSERT INTO location_show (id, shows, location_id) VALUES(14, 6, 542);
INSERT INTO location_show (id, shows, location_id) VALUES(15, 5, 659);
INSERT INTO location_show (id, shows, location_id) VALUES(16, 7, 631);
INSERT INTO location_show (id, shows, location_id) VALUES(17, 7, 432);
INSERT INTO location_show (id, shows, location_id) VALUES(18, 15, 376);
INSERT INTO location_show (id, shows, location_id) VALUES(19, 9, 374);
INSERT INTO location_show (id, shows, location_id) VALUES(20, 10, 307);
INSERT INTO location_show (id, shows, location_id) VALUES(21, 13, 328);
INSERT INTO location_show (id, shows, location_id) VALUES(22, 12, 325);
INSERT INTO location_show (id, shows, location_id) VALUES(23, 5, 456);
INSERT INTO location_show (id, shows, location_id) VALUES(24, 6, 512);
INSERT INTO location_show (id, shows, location_id) VALUES(25, 6, 503);
INSERT INTO location_show (id, shows, location_id) VALUES(26, 7, 482);
INSERT INTO location_show (id, shows, location_id) VALUES(27, 12, 635);
INSERT INTO location_show (id, shows, location_id) VALUES(28, 4, 556);
INSERT INTO location_show (id, shows, location_id) VALUES(29, 5, 590);
INSERT INTO location_show (id, shows, location_id) VALUES(30, 13, 445);
INSERT INTO location_show (id, shows, location_id) VALUES(31, 10, 531);
INSERT INTO location_show (id, shows, location_id) VALUES(32, 8, 551);
INSERT INTO location_show (id, shows, location_id) VALUES(33, 5, 640);
INSERT INTO location_show (id, shows, location_id) VALUES(34, 2, 639);
INSERT INTO location_show (id, shows, location_id) VALUES(35, 10, 350);
INSERT INTO location_show (id, shows, location_id) VALUES(36, 15, 632);
INSERT INTO location_show (id, shows, location_id) VALUES(37, 13, 672);
INSERT INTO location_show (id, shows, location_id) VALUES(38, 10, 520);
INSERT INTO location_show (id, shows, location_id) VALUES(39, 3, 516);
INSERT INTO location_show (id, shows, location_id) VALUES(40, 7, 523);
INSERT INTO location_show (id, shows, location_id) VALUES(41, 12, 324);
INSERT INTO location_show (id, shows, location_id) VALUES(42, 4, 661);
INSERT INTO location_show (id, shows, location_id) VALUES(43, 12, 327);
INSERT INTO location_show (id, shows, location_id) VALUES(44, 2, 650);
INSERT INTO location_show (id, shows, location_id) VALUES(45, 11, 477);
INSERT INTO location_show (id, shows, location_id) VALUES(46, 4, 662);
INSERT INTO location_show (id, shows, location_id) VALUES(47, 10, 322);
INSERT INTO location_show (id, shows, location_id) VALUES(48, 19, 478);
INSERT INTO location_show (id, shows, location_id) VALUES(49, 4, 510);
INSERT INTO location_show (id, shows, location_id) VALUES(50, 8, 421);
INSERT INTO location_show (id, shows, location_id) VALUES(51, 6, 518);
INSERT INTO location_show (id, shows, location_id) VALUES(52, 4, 621);
INSERT INTO location_show (id, shows, location_id) VALUES(53, 4, 455);
INSERT INTO location_show (id, shows, location_id) VALUES(54, 12, 644);
INSERT INTO location_show (id, shows, location_id) VALUES(55, 13, 669);
INSERT INTO location_show (id, shows, location_id) VALUES(56, 14, 668);
INSERT INTO location_show (id, shows, location_id) VALUES(57, 5, 491);
INSERT INTO location_show (id, shows, location_id) VALUES(58, 2, 600);
INSERT INTO location_show (id, shows, location_id) VALUES(59, 4, 530);
INSERT INTO location_show (id, shows, location_id) VALUES(60, 4, 663);
INSERT INTO location_show (id, shows, location_id) VALUES(61, 4, 620);
INSERT INTO location_show (id, shows, location_id) VALUES(62, 6, 576);
INSERT INTO location_show (id, shows, location_id) VALUES(63, 4, 519);
INSERT INTO location_show (id, shows, location_id) VALUES(64, 6, 484);
INSERT INTO location_show (id, shows, location_id) VALUES(65, 4, 429);
INSERT INTO location_show (id, shows, location_id) VALUES(66, 7, 580);
INSERT INTO location_show (id, shows, location_id) VALUES(67, 3, 480);
INSERT INTO location_show (id, shows, location_id) VALUES(68, 13, 347);
INSERT INTO location_show (id, shows, location_id) VALUES(69, 12, 450);
INSERT INTO location_show (id, shows, location_id) VALUES(70, 16, 475);
INSERT INTO location_show (id, shows, location_id) VALUES(71, 10, 367);
INSERT INTO location_show (id, shows, location_id) VALUES(72, 6, 630);
INSERT INTO location_show (id, shows, location_id) VALUES(73, 10, 341);
INSERT INTO location_show (id, shows, location_id) VALUES(74, 3, 622);
INSERT INTO location_show (id, shows, location_id) VALUES(75, 5, 493);
INSERT INTO location_show (id, shows, location_id) VALUES(76, 7, 390);
INSERT INTO location_show (id, shows, location_id) VALUES(77, 21, 305);
INSERT INTO location_show (id, shows, location_id) VALUES(78, 13, 306);
INSERT INTO location_show (id, shows, location_id) VALUES(79, 11, 308);
INSERT INTO location_show (id, shows, location_id) VALUES(80, 21, 309);
INSERT INTO location_show (id, shows, location_id) VALUES(81, 14, 310);
INSERT INTO location_show (id, shows, location_id) VALUES(82, 20, 311);
INSERT INTO location_show (id, shows, location_id) VALUES(83, 12, 312);
INSERT INTO location_show (id, shows, location_id) VALUES(84, 11, 313);
INSERT INTO location_show (id, shows, location_id) VALUES(85, 18, 314);
INSERT INTO location_show (id, shows, location_id) VALUES(86, 14, 315);
INSERT INTO location_show (id, shows, location_id) VALUES(87, 11, 316);
INSERT INTO location_show (id, shows, location_id) VALUES(88, 10, 317);
INSERT INTO location_show (id, shows, location_id) VALUES(89, 9, 318);
INSERT INTO location_show (id, shows, location_id) VALUES(90, 9, 319);
INSERT INTO location_show (id, shows, location_id) VALUES(91, 12, 320);
INSERT INTO location_show (id, shows, location_id) VALUES(92, 13, 321);
INSERT INTO location_show (id, shows, location_id) VALUES(93, 9, 323);
INSERT INTO location_show (id, shows, location_id) VALUES(94, 9, 329);
INSERT INTO location_show (id, shows, location_id) VALUES(95, 9, 331);
INSERT INTO location_show (id, shows, location_id) VALUES(96, 9, 332);
INSERT INTO location_show (id, shows, location_id) VALUES(97, 9, 333);
INSERT INTO location_show (id, shows, location_id) VALUES(98, 9, 334);
INSERT INTO location_show (id, shows, location_id) VALUES(99, 9, 335);
INSERT INTO location_show (id, shows, location_id) VALUES(100, 10, 342);
INSERT INTO location_show (id, shows, location_id) VALUES(101, 13, 343);
INSERT INTO location_show (id, shows, location_id) VALUES(102, 9, 344);
INSERT INTO location_show (id, shows, location_id) VALUES(103, 9, 346);
INSERT INTO location_show (id, shows, location_id) VALUES(104, 11, 348);
INSERT INTO location_show (id, shows, location_id) VALUES(105, 9, 349);
INSERT INTO location_show (id, shows, location_id) VALUES(106, 10, 351);
INSERT INTO location_show (id, shows, location_id) VALUES(107, 8, 352);
INSERT INTO location_show (id, shows, location_id) VALUES(108, 10, 353);
INSERT INTO location_show (id, shows, location_id) VALUES(109, 8, 354);
INSERT INTO location_show (id, shows, location_id) VALUES(110, 8, 355);
INSERT INTO location_show (id, shows, location_id) VALUES(111, 8, 356);
INSERT INTO location_show (id, shows, location_id) VALUES(112, 8, 357);
INSERT INTO location_show (id, shows, location_id) VALUES(113, 9, 358);
INSERT INTO location_show (id, shows, location_id) VALUES(114, 9, 359);
INSERT INTO location_show (id, shows, location_id) VALUES(115, 12, 360);
INSERT INTO location_show (id, shows, location_id) VALUES(116, 8, 361);
INSERT INTO location_show (id, shows, location_id) VALUES(117, 7, 365);
INSERT INTO location_show (id, shows, location_id) VALUES(118, 8, 366);
INSERT INTO location_show (id, shows, location_id) VALUES(119, 7, 368);
INSERT INTO location_show (id, shows, location_id) VALUES(120, 7, 369);
INSERT INTO location_show (id, shows, location_id) VALUES(121, 14, 370);
INSERT INTO location_show (id, shows, location_id) VALUES(122, 7, 371);
INSERT INTO location_show (id, shows, location_id) VALUES(123, 10, 373);
INSERT INTO location_show (id, shows, location_id) VALUES(124, 7, 377);
INSERT INTO location_show (id, shows, location_id) VALUES(125, 6, 378);
INSERT INTO location_show (id, shows, location_id) VALUES(126, 6, 380);
INSERT INTO location_show (id, shows, location_id) VALUES(127, 5, 381);
INSERT INTO location_show (id, shows, location_id) VALUES(128, 5, 382);
INSERT INTO location_show (id, shows, location_id) VALUES(129, 6, 384);
INSERT INTO location_show (id, shows, location_id) VALUES(130, 5, 385);
INSERT INTO location_show (id, shows, location_id) VALUES(131, 5, 386);
INSERT INTO location_show (id, shows, location_id) VALUES(132, 5, 387);
INSERT INTO location_show (id, shows, location_id) VALUES(133, 5, 388);
INSERT INTO location_show (id, shows, location_id) VALUES(134, 13, 389);
INSERT INTO location_show (id, shows, location_id) VALUES(135, 5, 391);
INSERT INTO location_show (id, shows, location_id) VALUES(136, 8, 392);
INSERT INTO location_show (id, shows, location_id) VALUES(137, 6, 393);
INSERT INTO location_show (id, shows, location_id) VALUES(138, 5, 394);
INSERT INTO location_show (id, shows, location_id) VALUES(139, 5, 396);
INSERT INTO location_show (id, shows, location_id) VALUES(140, 9, 397);
INSERT INTO location_show (id, shows, location_id) VALUES(141, 8, 398);
INSERT INTO location_show (id, shows, location_id) VALUES(142, 5, 399);
INSERT INTO location_show (id, shows, location_id) VALUES(143, 7, 400);
INSERT INTO location_show (id, shows, location_id) VALUES(144, 12, 401);
INSERT INTO location_show (id, shows, location_id) VALUES(145, 9, 403);
INSERT INTO location_show (id, shows, location_id) VALUES(146, 11, 404);
INSERT INTO location_show (id, shows, location_id) VALUES(147, 6, 405);
INSERT INTO location_show (id, shows, location_id) VALUES(148, 5, 406);
INSERT INTO location_show (id, shows, location_id) VALUES(149, 5, 407);
INSERT INTO location_show (id, shows, location_id) VALUES(150, 6, 408);
INSERT INTO location_show (id, shows, location_id) VALUES(151, 5, 409);
INSERT INTO location_show (id, shows, location_id) VALUES(152, 6, 410);
INSERT INTO location_show (id, shows, location_id) VALUES(153, 5, 411);
INSERT INTO location_show (id, shows, location_id) VALUES(154, 5, 412);
INSERT INTO location_show (id, shows, location_id) VALUES(155, 8, 413);
INSERT INTO location_show (id, shows, location_id) VALUES(156, 5, 415);
INSERT INTO location_show (id, shows, location_id) VALUES(157, 5, 416);
INSERT INTO location_show (id, shows, location_id) VALUES(158, 5, 417);
INSERT INTO location_show (id, shows, location_id) VALUES(159, 6, 420);
INSERT INTO location_show (id, shows, location_id) VALUES(160, 5, 422);
INSERT INTO location_show (id, shows, location_id) VALUES(161, 5, 425);
INSERT INTO location_show (id, shows, location_id) VALUES(162, 5, 426);
INSERT INTO location_show (id, shows, location_id) VALUES(163, 4, 428);
INSERT INTO location_show (id, shows, location_id) VALUES(164, 4, 430);
INSERT INTO location_show (id, shows, location_id) VALUES(165, 4, 431);
INSERT INTO location_show (id, shows, location_id) VALUES(166, 4, 434);
INSERT INTO location_show (id, shows, location_id) VALUES(167, 4, 436);
INSERT INTO location_show (id, shows, location_id) VALUES(168, 3, 438);
INSERT INTO location_show (id, shows, location_id) VALUES(169, 10, 439);
INSERT INTO location_show (id, shows, location_id) VALUES(170, 4, 442);
INSERT INTO location_show (id, shows, location_id) VALUES(171, 4, 444);
INSERT INTO location_show (id, shows, location_id) VALUES(172, 5, 447);
INSERT INTO location_show (id, shows, location_id) VALUES(173, 4, 449);
INSERT INTO location_show (id, shows, location_id) VALUES(174, 8, 451);
INSERT INTO location_show (id, shows, location_id) VALUES(175, 4, 452);
INSERT INTO location_show (id, shows, location_id) VALUES(176, 4, 453);
INSERT INTO location_show (id, shows, location_id) VALUES(177, 3, 454);
INSERT INTO location_show (id, shows, location_id) VALUES(178, 3, 458);
INSERT INTO location_show (id, shows, location_id) VALUES(179, 12, 460);
INSERT INTO location_show (id, shows, location_id) VALUES(180, 29, 463);
INSERT INTO location_show (id, shows, location_id) VALUES(181, 8, 464);
INSERT INTO location_show (id, shows, location_id) VALUES(182, 3, 465);
INSERT INTO location_show (id, shows, location_id) VALUES(183, 3, 466);
INSERT INTO location_show (id, shows, location_id) VALUES(184, 3, 472);
INSERT INTO location_show (id, shows, location_id) VALUES(185, 9, 474);
INSERT INTO location_show (id, shows, location_id) VALUES(186, 7, 476);
INSERT INTO location_show (id, shows, location_id) VALUES(187, 5, 481);
INSERT INTO location_show (id, shows, location_id) VALUES(188, 3, 496);
INSERT INTO location_show (id, shows, location_id) VALUES(189, 4, 501);
INSERT INTO location_show (id, shows, location_id) VALUES(190, 13, 521);
INSERT INTO location_show (id, shows, location_id) VALUES(191, 6, 525);
INSERT INTO location_show (id, shows, location_id) VALUES(192, 3, 527);
INSERT INTO location_show (id, shows, location_id) VALUES(193, 3, 528);
INSERT INTO location_show (id, shows, location_id) VALUES(194, 5, 533);
INSERT INTO location_show (id, shows, location_id) VALUES(195, 5, 538);
INSERT INTO location_show (id, shows, location_id) VALUES(196, 7, 539);
INSERT INTO location_show (id, shows, location_id) VALUES(197, 3, 540);
INSERT INTO location_show (id, shows, location_id) VALUES(198, 3, 541);
INSERT INTO location_show (id, shows, location_id) VALUES(199, 13, 543);
INSERT INTO location_show (id, shows, location_id) VALUES(200, 3, 546);
INSERT INTO location_show (id, shows, location_id) VALUES(201, 3, 547);
INSERT INTO location_show (id, shows, location_id) VALUES(202, 3, 548);
INSERT INTO location_show (id, shows, location_id) VALUES(203, 3, 549);
INSERT INTO location_show (id, shows, location_id) VALUES(204, 4, 550);
INSERT INTO location_show (id, shows, location_id) VALUES(205, 3, 552);
INSERT INTO location_show (id, shows, location_id) VALUES(206, 6, 553);
INSERT INTO location_show (id, shows, location_id) VALUES(207, 3, 554);
INSERT INTO location_show (id, shows, location_id) VALUES(208, 3, 555);
INSERT INTO location_show (id, shows, location_id) VALUES(209, 10, 558);
INSERT INTO location_show (id, shows, location_id) VALUES(210, 9, 560);
INSERT INTO location_show (id, shows, location_id) VALUES(211, 6, 562);
INSERT INTO location_show (id, shows, location_id) VALUES(212, 3, 564);
INSERT INTO location_show (id, shows, location_id) VALUES(213, 3, 575);
INSERT INTO location_show (id, shows, location_id) VALUES(214, 3, 579);
INSERT INTO location_show (id, shows, location_id) VALUES(215, 6, 581);
INSERT INTO location_show (id, shows, location_id) VALUES(216, 2, 614);
INSERT INTO location_show (id, shows, location_id) VALUES(217, 8, 615);
INSERT INTO location_show (id, shows, location_id) VALUES(218, 3, 624);
INSERT INTO location_show (id, shows, location_id) VALUES(219, 2, 626);
INSERT INTO location_show (id, shows, location_id) VALUES(220, 17, 641);
INSERT INTO location_show (id, shows, location_id) VALUES(221, 19, 643);
INSERT INTO location_show (id, shows, location_id) VALUES(222, 4, 649);
INSERT INTO location_show (id, shows, location_id) VALUES(223, 2, 651);
INSERT INTO location_show (id, shows, location_id) VALUES(224, 5, 665);
INSERT INTO location_show (id, shows, location_id) VALUES(225, 3, 674);
INSERT INTO location_show (id, shows, location_id) VALUES(226, 5, 634);
INSERT INTO location_show (id, shows, location_id) VALUES(227, 7, 522);
INSERT INTO location_show (id, shows, location_id) VALUES(228, 4, 526);
INSERT INTO location_show (id, shows, location_id) VALUES(229, 10, 326);
INSERT INTO location_show (id, shows, location_id) VALUES(230, 3, 500);
INSERT INTO location_show (id, shows, location_id) VALUES(231, 10, 467);
INSERT INTO location_show (id, shows, location_id) VALUES(232, 2, 598);
INSERT INTO location_show (id, shows, location_id) VALUES(233, 5, 654);
INSERT INTO location_show (id, shows, location_id) VALUES(234, 5, 655);
INSERT INTO location_show (id, shows, location_id) VALUES(235, 4, 658);
INSERT INTO location_show (id, shows, location_id) VALUES(236, 2, 653);
INSERT INTO location_show (id, shows, location_id) VALUES(237, 4, 683);
INSERT INTO location_show (id, shows, location_id) VALUES(238, 5, 545);
INSERT INTO location_show (id, shows, location_id) VALUES(239, 18, 685);
INSERT INTO location_show (id, shows, location_id) VALUES(240, 77, 687);
INSERT INTO location_show (id, shows, location_id) VALUES(241, 25, 684);
INSERT INTO location_show (id, shows, location_id) VALUES(242, 3, 660);
INSERT INTO location_show (id, shows, location_id) VALUES(243, 7, 586);
INSERT INTO location_show (id, shows, location_id) VALUES(244, 3, 515);
INSERT INTO location_show (id, shows, location_id) VALUES(245, 35, 688);
INSERT INTO location_show (id, shows, location_id) VALUES(246, 84, 686);
INSERT INTO location_show (id, shows, location_id) VALUES(247, 11, 338);
INSERT INTO location_show (id, shows, location_id) VALUES(248, 2, 671);
INSERT INTO location_show (id, shows, location_id) VALUES(249, 8, 664);
INSERT INTO location_show (id, shows, location_id) VALUES(250, 3, 544);
INSERT INTO location_show (id, shows, location_id) VALUES(251, 3, 646);
INSERT INTO location_show (id, shows, location_id) VALUES(252, 6, 495);
INSERT INTO location_show (id, shows, location_id) VALUES(253, 8, 469);
INSERT INTO location_show (id, shows, location_id) VALUES(254, 3, 675);
INSERT INTO location_show (id, shows, location_id) VALUES(255, 6, 509);
INSERT INTO location_show (id, shows, location_id) VALUES(256, 6, 424);
INSERT INTO location_show (id, shows, location_id) VALUES(257, 5, 462);
INSERT INTO location_show (id, shows, location_id) VALUES(258, 5, 433);
INSERT INTO location_show (id, shows, location_id) VALUES(259, 4, 514);
INSERT INTO location_show (id, shows, location_id) VALUES(260, 3, 529);
INSERT INTO location_show (id, shows, location_id) VALUES(261, 4, 437);
INSERT INTO location_show (id, shows, location_id) VALUES(262, 2, 637);
INSERT INTO location_show (id, shows, location_id) VALUES(263, 3, 497);
INSERT INTO location_show (id, shows, location_id) VALUES(264, 3, 446);
INSERT INTO location_show (id, shows, location_id) VALUES(265, 2, 638);
INSERT INTO location_show (id, shows, location_id) VALUES(266, 11, 524);
INSERT INTO location_show (id, shows, location_id) VALUES(267, 2, 667);
INSERT INTO location_show (id, shows, location_id) VALUES(268, 2, 666);
INSERT INTO location_show (id, shows, location_id) VALUES(269, 4, 513);
INSERT INTO location_show (id, shows, location_id) VALUES(270, 9, 507);
INSERT INTO location_show (id, shows, location_id) VALUES(271, 8, 473);
INSERT INTO location_show (id, shows, location_id) VALUES(272, 6, 571);
INSERT INTO location_show (id, shows, location_id) VALUES(273, 1, 613);
INSERT INTO location_show (id, shows, location_id) VALUES(274, 8, 339);
INSERT INTO location_show (id, shows, location_id) VALUES(275, 3, 574);
INSERT INTO location_show (id, shows, location_id) VALUES(276, 1, 619);
INSERT INTO location_show (id, shows, location_id) VALUES(277, 12, 330);
INSERT INTO location_show (id, shows, location_id) VALUES(278, 5, 379);
INSERT INTO location_show (id, shows, location_id) VALUES(279, 7, 364);
INSERT INTO location_show (id, shows, location_id) VALUES(280, 2, 573);
INSERT INTO location_show (id, shows, location_id) VALUES(281, 8, 340);
INSERT INTO location_show (id, shows, location_id) VALUES(282, 2, 587);
INSERT INTO location_show (id, shows, location_id) VALUES(283, 1, 628);
INSERT INTO location_show (id, shows, location_id) VALUES(284, 1, 609);
INSERT INTO location_show (id, shows, location_id) VALUES(285, 1, 605);
INSERT INTO location_show (id, shows, location_id) VALUES(286, 1, 599);
INSERT INTO location_show (id, shows, location_id) VALUES(287, 2, 535);
INSERT INTO location_show (id, shows, location_id) VALUES(288, 2, 487);
INSERT INTO location_show (id, shows, location_id) VALUES(289, 5, 633);
INSERT INTO location_show (id, shows, location_id) VALUES(290, 2, 578);
INSERT INTO location_show (id, shows, location_id) VALUES(291, 1, 602);
INSERT INTO location_show (id, shows, location_id) VALUES(292, 1, 629);
INSERT INTO location_show (id, shows, location_id) VALUES(293, 2, 591);
INSERT INTO location_show (id, shows, location_id) VALUES(294, 3, 656);
INSERT INTO location_show (id, shows, location_id) VALUES(295, 2, 489);
INSERT INTO location_show (id, shows, location_id) VALUES(296, 2, 589);
INSERT INTO location_show (id, shows, location_id) VALUES(297, 2, 483);
INSERT INTO location_show (id, shows, location_id) VALUES(298, 2, 488);
INSERT INTO location_show (id, shows, location_id) VALUES(299, 2, 506);
INSERT INTO location_show (id, shows, location_id) VALUES(300, 2, 534);
INSERT INTO location_show (id, shows, location_id) VALUES(301, 2, 588);
INSERT INTO location_show (id, shows, location_id) VALUES(302, 1, 623);
INSERT INTO location_show (id, shows, location_id) VALUES(303, 2, 508);
INSERT INTO location_show (id, shows, location_id) VALUES(304, 2, 577);
INSERT INTO location_show (id, shows, location_id) VALUES(305, 1, 603);
INSERT INTO location_show (id, shows, location_id) VALUES(306, 2, 517);
INSERT INTO location_show (id, shows, location_id) VALUES(307, 1, 648);
INSERT INTO location_show (id, shows, location_id) VALUES(308, 2, 499);
INSERT INTO location_show (id, shows, location_id) VALUES(309, 5, 617);
INSERT INTO location_show (id, shows, location_id) VALUES(310, 3, 572);
INSERT INTO location_show (id, shows, location_id) VALUES(311, 2, 585);
INSERT INTO location_show (id, shows, location_id) VALUES(312, 6, 423);
INSERT INTO location_show (id, shows, location_id) VALUES(313, 5, 435);
INSERT INTO location_show (id, shows, location_id) VALUES(314, 2, 627);
INSERT INTO location_show (id, shows, location_id) VALUES(315, 1, 652);
INSERT INTO location_show (id, shows, location_id) VALUES(316, 7, 395);
INSERT INTO location_show (id, shows, location_id) VALUES(317, 2, 636);
INSERT INTO location_show (id, shows, location_id) VALUES(318, 2, 537);
INSERT INTO location_show (id, shows, location_id) VALUES(319, 1, 612);
INSERT INTO location_show (id, shows, location_id) VALUES(320, 3, 557);
INSERT INTO location_show (id, shows, location_id) VALUES(321, 2, 504);
INSERT INTO location_show (id, shows, location_id) VALUES(322, 3, 505);
INSERT INTO location_show (id, shows, location_id) VALUES(323, 8, 336);
INSERT INTO location_show (id, shows, location_id) VALUES(324, 1, 611);
INSERT INTO location_show (id, shows, location_id) VALUES(325, 2, 592);
INSERT INTO location_show (id, shows, location_id) VALUES(326, 1, 616);
INSERT INTO location_show (id, shows, location_id) VALUES(327, 2, 536);
INSERT INTO location_show (id, shows, location_id) VALUES(328, 2, 604);
INSERT INTO location_show (id, shows, location_id) VALUES(329, 3, 618);
INSERT INTO location_show (id, shows, location_id) VALUES(330, 2, 673);
INSERT INTO location_show (id, shows, location_id) VALUES(331, 9, 337);
INSERT INTO location_show (id, shows, location_id) VALUES(332, 1, 647);
INSERT INTO location_show (id, shows, location_id) VALUES(333, 2, 559);
INSERT INTO location_show (id, shows, location_id) VALUES(334, 2, 498);
INSERT INTO location_show (id, shows, location_id) VALUES(335, 1, 596);
INSERT INTO location_show (id, shows, location_id) VALUES(336, 1, 657);
INSERT INTO location_show (id, shows, location_id) VALUES(337, 1, 645);
INSERT INTO location_show (id, shows, location_id) VALUES(338, 2, 625);
INSERT INTO location_show (id, shows, location_id) VALUES(339, 1, 642);
INSERT INTO location_show (id, shows, location_id) VALUES(340, 2, 440);
INSERT INTO location_show (id, shows, location_id) VALUES(341, 2, 569);
INSERT INTO location_show (id, shows, location_id) VALUES(342, 2, 492);
INSERT INTO location_show (id, shows, location_id) VALUES(343, 3, 441);
INSERT INTO location_show (id, shows, location_id) VALUES(344, 7, 363);
INSERT INTO location_show (id, shows, location_id) VALUES(345, 6, 461);
INSERT INTO location_show (id, shows, location_id) VALUES(346, 7, 362);
INSERT INTO location_show (id, shows, location_id) VALUES(347, 2, 494);
INSERT INTO location_show (id, shows, location_id) VALUES(348, 2, 570);
INSERT INTO location_show (id, shows, location_id) VALUES(349, 3, 490);
INSERT INTO location_show (id, shows, location_id) VALUES(350, 6, 468);
INSERT INTO location_show (id, shows, location_id) VALUES(351, 2, 470);
INSERT INTO location_show (id, shows, location_id) VALUES(352, 3, 471);
INSERT INTO location_show (id, shows, location_id) VALUES(353, 2, 448);
INSERT INTO location_show (id, shows, location_id) VALUES(354, 3, 443);
INSERT INTO location_show (id, shows, location_id) VALUES(355, 1, 670);
INSERT INTO location_show (id, shows, location_id) VALUES(356, 1, 608);
INSERT INTO location_show (id, shows, location_id) VALUES(357, 1, 601);
INSERT INTO location_show (id, shows, location_id) VALUES(358, 2, 486);
INSERT INTO location_show (id, shows, location_id) VALUES(359, 2, 561);
INSERT INTO location_show (id, shows, location_id) VALUES(360, 12, 689);
INSERT INTO location_show (id, shows, location_id) VALUES(361, 13, 690);
INSERT INTO location_show (id, shows, location_id) VALUES(362, 45, 691);
INSERT INTO location_show (id, shows, location_id) VALUES(363, 52, 692);
INSERT INTO location_show (id, shows, location_id) VALUES(364, 41, 693);
INSERT INTO location_show (id, shows, location_id) VALUES(365, 65, 695);
INSERT INTO location_show (id, shows, location_id) VALUES(366, 21, 696);
INSERT INTO location_show (id, shows, location_id) VALUES(367, 10, 694);
INSERT INTO location_show (id, shows, location_id) VALUES(368, 20, 697);
INSERT INTO location_show (id, shows, location_id) VALUES(369, 14, 698);
INSERT INTO location_show (id, shows, location_id) VALUES(370, 11, 699);

DROP TABLE IF EXISTS location_type;
CREATE TABLE IF NOT EXISTS location_type (
  id int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  weight bigint(20) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY `name` (`name`)
) TYPE=InnoDB ;

INSERT INTO location_type (id, `name`, weight) VALUES(1, 'Река', NULL);
INSERT INTO location_type (id, `name`, weight) VALUES(2, 'Озеро', NULL);
INSERT INTO location_type (id, `name`, weight) VALUES(3, 'Пруд', NULL);
INSERT INTO location_type (id, `name`, weight) VALUES(4, 'Водохранилище', NULL);

DROP TABLE IF EXISTS location_version;
CREATE TABLE IF NOT EXISTS location_version (
  id int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  description text,
  depth float(18,2) default NULL,
  is_free tinyint(1) default '1',
  price text,
  location_flow_id int(11) default NULL,
  location_fundus_id int(11) default NULL,
  location_relief_id int(11) default NULL,
  location_type_id int(11) default NULL,
  location_scope_id int(11) default NULL,
  address_id int(11) default NULL,
  created_by int(11) NOT NULL,
  updated_by int(11) NOT NULL,
  slug varchar(255) default NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  latitude double(18,15) default NULL,
  longitude double(18,15) default NULL,
  version bigint(20) NOT NULL default '0',
  PRIMARY KEY  (id,version)
) TYPE=InnoDB;

INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(305, 'Небольшое но симпатичное место и сбросов загрязняющих нет, кто пробовал раскажите?', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '', '2011-05-02 19:55:04', '2011-05-02 19:55:04', 55.115888187800003, 38.878383636499997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(305, 'Небольшое но симпатичное место и сбросов загрязняющих нет, кто пробовал раскажите?', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 267, 1, 1, '', '2011-05-02 19:55:04', '2011-05-02 19:55:04', 55.115888187800003, 38.878383636499997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(306, 'Река Пехорка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '1', '2011-05-02 19:55:07', '2011-05-02 19:55:07', 55.603953962599995, 38.036384582499998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(306, 'Река Пехорка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 268, 1, 1, '1', '2011-05-02 19:55:07', '2011-05-02 19:55:07', 55.603953962599995, 38.036384582499998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(307, 'Река Или', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2', '2011-05-02 19:55:10', '2011-05-02 19:55:10', 44.138855767599999, 76.953735351600002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(307, 'Река Или', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 269, 1, 1, '2', '2011-05-02 19:55:10', '2011-05-02 19:55:10', 44.138855767599999, 76.953735351600002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(308, 'Верея -Жуковский', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '3', '2011-05-02 19:55:12', '2011-05-02 19:55:12', 55.606984259299999, 38.058786392200027, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(308, 'Верея -Жуковский', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 270, 1, 1, '3', '2011-05-02 19:55:12', '2011-05-02 19:55:13', 55.606984259299999, 38.058786392200027, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(309, 'Гжельский рыбхоз', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '4', '2011-05-02 19:55:15', '2011-05-02 19:55:15', 55.557185007200019, 38.322715759300003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(309, 'Гжельский рыбхоз', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 271, 1, 1, '4', '2011-05-02 19:55:15', '2011-05-02 19:55:15', 55.557185007200019, 38.322715759300003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(310, 'Ждановское', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '5', '2011-05-02 19:55:18', '2011-05-02 19:55:18', 55.429476124799997, 37.965188026400000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(310, 'Ждановское', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 272, 1, 1, '5', '2011-05-02 19:55:18', '2011-05-02 19:55:18', 55.429476124799997, 37.965188026400000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(311, 'Озеро Вельё. Рыбалка. Рыбы много - щука, окунь и пр.', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '6', '2011-05-02 19:55:21', '2011-05-02 19:55:21', 57.655320827499963, 33.036575317400001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(311, 'Озеро Вельё. Рыбалка. Рыбы много - щука, окунь и пр.', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 273, 1, 1, '6', '2011-05-02 19:55:21', '2011-05-02 19:55:21', 57.655320827499963, 33.036575317400001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(312, 'Дом рыбака Щукари', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '7', '2011-05-02 19:55:24', '2011-05-02 19:55:24', 47.007884597000000, 47.493553161599998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(312, 'Дом рыбака Щукари', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 274, 1, 1, '7', '2011-05-02 19:55:24', '2011-05-02 19:55:24', 47.007884597000000, 47.493553161599998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(313, 'Магазин «Всё для рыбалки»', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '8', '2011-05-02 19:55:26', '2011-05-02 19:55:26', 59.867001686800002, 30.261465311099990, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(313, 'Магазин «Всё для рыбалки»', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 275, 1, 1, '8', '2011-05-02 19:55:26', '2011-05-02 19:55:26', 59.867001686800002, 30.261465311099990, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(314, 'база" Седьмое небо"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '9', '2011-05-02 19:55:29', '2011-05-02 19:55:29', 46.974059485900000, 47.591722011599998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(314, 'база" Седьмое небо"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 276, 1, 1, '9', '2011-05-02 19:55:29', '2011-05-02 19:55:29', 46.974059485900000, 47.591722011599998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(315, 'Частный гостевой дом в дельте Волги на о.Станья', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '10', '2011-05-02 19:55:32', '2011-05-02 19:55:32', 45.819324979999998, 48.102607727100001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(315, 'Частный гостевой дом в дельте Волги на о.Станья', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 277, 1, 1, '10', '2011-05-02 19:55:32', '2011-05-02 19:55:32', 45.819324979999998, 48.102607727100001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(316, 'Кордон Кузьмича', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '11', '2011-05-02 19:55:35', '2011-05-02 19:55:35', 60.559304045200001, 28.647537231399998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(316, 'Кордон Кузьмича', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 278, 1, 1, '11', '2011-05-02 19:55:35', '2011-05-02 19:55:35', 60.559304045200001, 28.647537231399998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(317, 'Воткинская ГЭС - Краны', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '12', '2011-05-02 19:55:38', '2011-05-02 19:55:38', 56.780542058100004, 54.070930480999998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(317, 'Воткинская ГЭС - Краны', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 279, 1, 1, '12', '2011-05-02 19:55:38', '2011-05-02 19:55:38', 56.780542058100004, 54.070930480999998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(318, 'Воткинская ГЭС', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '13', '2011-05-02 19:55:40', '2011-05-02 19:55:40', 56.786884805600010, 54.086304902999998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(318, 'Воткинская ГЭС', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 280, 1, 1, '13', '2011-05-02 19:55:40', '2011-05-02 19:55:40', 56.786884805600010, 54.086304902999998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(319, 'Ловля Тарани', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '14', '2011-05-02 19:55:43', '2011-05-02 19:55:43', 46.647963159199996, 38.890399932900017, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(319, 'Ловля Тарани', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 281, 1, 1, '14', '2011-05-02 19:55:43', '2011-05-02 19:55:43', 46.647963159199996, 38.890399932900017, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(320, 'Новосибирское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '15', '2011-05-02 19:55:46', '2011-05-02 19:55:46', 54.702407731000001, 82.842407226600002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(320, 'Новосибирское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 282, 1, 1, '15', '2011-05-02 19:55:46', '2011-05-02 19:55:46', 54.702407731000001, 82.842407226600002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(321, 'Портновские пруды', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '16', '2011-05-02 19:55:49', '2011-05-02 19:55:49', 55.582808099300003, 36.735534668000000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(321, 'Портновские пруды', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 283, 1, 1, '16', '2011-05-02 19:55:49', '2011-05-02 19:55:49', 55.582808099300003, 36.735534668000000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(322, 'Все для рыбалки и отдыха', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '17', '2011-05-02 19:55:52', '2011-05-02 19:55:52', 55.907596860399998, 36.881618499799998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(322, 'Все для рыбалки и отдыха', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 284, 1, 1, '17', '2011-05-02 19:55:52', '2011-05-02 19:55:52', 55.907596860399998, 36.881618499799998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(323, 'р.Северка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '18', '2011-05-02 19:55:54', '2011-05-02 19:55:54', 55.234387508199980, 37.802238464399998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(323, 'р.Северка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 285, 1, 1, '18', '2011-05-02 19:55:54', '2011-05-02 19:55:54', 55.234387508199980, 37.802238464399998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(324, 'рыбхоз', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '19', '2011-05-02 19:55:57', '2011-05-02 19:55:57', 54.460998599100002, 38.738479614299997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(324, 'рыбхоз', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 286, 1, 1, '19', '2011-05-02 19:55:57', '2011-05-02 19:55:57', 54.460998599100002, 38.738479614299997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(325, 'Магазин «Рыболов»', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '20', '2011-05-02 19:56:00', '2011-05-02 19:56:00', 55.081950800800001, 38.802273273499999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(325, 'Магазин «Рыболов»', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 287, 1, 1, '20', '2011-05-02 19:56:00', '2011-05-02 19:56:00', 55.081950800800001, 38.802273273499999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(326, 'река Москва', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '21', '2011-05-02 19:56:03', '2011-05-02 19:56:03', 55.080823869000000, 38.835811614999997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(326, 'река Москва', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 288, 1, 1, '21', '2011-05-02 19:56:03', '2011-05-02 19:56:03', 55.080823869000000, 38.835811614999997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(327, 'Остров', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '22', '2011-05-02 19:56:06', '2011-05-02 19:56:06', 55.071235988599987, 38.832850456200028, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(327, 'Остров', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 289, 1, 1, '22', '2011-05-02 19:56:06', '2011-05-02 19:56:06', 55.071235988599987, 38.832850456200028, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(328, 'Ока', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '23', '2011-05-02 19:56:08', '2011-05-02 19:56:08', 55.069902962300027, 38.808270692799994, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(328, 'Ока', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 290, 1, 1, '23', '2011-05-02 19:56:08', '2011-05-02 19:56:08', 55.069902962300027, 38.808270692799994, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(329, '2капитана', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2-1', '2011-05-02 19:56:11', '2011-05-02 19:56:11', 57.044465295400002, 43.179187774699997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(329, '2капитана', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 291, 1, 1, '2-1', '2011-05-02 19:56:11', '2011-05-02 19:56:11', 57.044465295400002, 43.179187774699997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(330, 'Турбаза "Рось"', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '24', '2011-05-02 19:56:14', '2011-05-02 19:56:14', 49.458272527399998, 31.047191619900001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(330, 'Турбаза "Рось"', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 292, 1, 1, '24', '2011-05-02 19:56:14', '2011-05-02 19:56:14', 49.458272527399998, 31.047191619900001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(331, 'база Войсковая 1', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '1-1', '2011-05-02 19:56:17', '2011-05-02 19:56:17', 45.368967251400001, 37.506058216099980, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(331, 'база Войсковая 1', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 293, 1, 1, '1-1', '2011-05-02 19:56:17', '2011-05-02 19:56:17', 45.368967251400001, 37.506058216099980, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(332, 'Труженик моря 1', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '1-2', '2011-05-02 19:56:20', '2011-05-02 19:56:20', 45.315361862200000, 37.386903762800010, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(332, 'Труженик моря 1', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 294, 1, 1, '1-2', '2011-05-02 19:56:20', '2011-05-02 19:56:20', 45.315361862200000, 37.386903762800010, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(333, 'Платная автодорога', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '25', '2011-05-02 19:56:22', '2011-05-02 19:56:22', 45.317383768600010, 37.384972572300001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(333, 'Платная автодорога', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 295, 1, 1, '25', '2011-05-02 19:56:22', '2011-05-02 19:56:22', 45.317383768600010, 37.384972572300001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(334, 'Труженик моря 2', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2-2', '2011-05-02 19:56:25', '2011-05-02 19:56:25', 45.321849813600018, 37.408318519599995, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(334, 'Труженик моря 2', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 296, 1, 1, '2-2', '2011-05-02 19:56:25', '2011-05-02 19:56:25', 45.321849813600018, 37.408318519599995, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(335, 'Темрючанка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '26', '2011-05-02 19:56:28', '2011-05-02 19:56:28', 45.346165474899998, 37.452135086100000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(335, 'Темрючанка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 297, 1, 1, '26', '2011-05-02 19:56:28', '2011-05-02 19:56:28', 45.346165474899998, 37.452135086100000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(336, 'Lahnavesi', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'lahnavesi', '2011-05-02 19:56:31', '2011-05-02 19:56:31', 61.454767214999997, 26.653003692600016, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(336, 'Lahnavesi', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 298, 1, 1, 'lahnavesi', '2011-05-02 19:56:31', '2011-05-02 19:56:31', 61.454767214999997, 26.653003692600016, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(337, 'Вячеславское водохранилище1', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '1-3', '2011-05-02 19:56:33', '2011-05-02 19:56:33', 50.983937635700002, 72.162666320800000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(337, 'Вячеславское водохранилище1', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 299, 1, 1, '1-3', '2011-05-02 19:56:33', '2011-05-02 19:56:33', 50.983937635700002, 72.162666320800000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(338, 'Камал', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '27', '2011-05-02 19:56:36', '2011-05-02 19:56:36', 51.177964181200011, 71.411025524099998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(338, 'Камал', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 300, 1, 1, '27', '2011-05-02 19:56:36', '2011-05-02 19:56:36', 51.177964181200011, 71.411025524099998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(339, 'Павлодарская область1', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '1-4', '2011-05-02 19:56:39', '2011-05-02 19:56:39', 52.827045573700026, 76.540331840500002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(339, 'Павлодарская область1', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 301, 1, 1, '1-4', '2011-05-02 19:56:39', '2011-05-02 19:56:39', 52.827045573700026, 76.540331840500002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(340, 'Баканас1', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '1-5', '2011-05-02 19:56:42', '2011-05-02 19:56:42', 44.811526935899998, 76.234002113299994, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(340, 'Баканас1', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 302, 1, 1, '1-5', '2011-05-02 19:56:42', '2011-05-02 19:56:42', 44.811526935899998, 76.234002113299994, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(341, 'Окунь', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '28', '2011-05-02 19:56:45', '2011-05-02 19:56:45', 59.921627070699998, 30.353076160000001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(341, 'Окунь', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 303, 1, 1, '28', '2011-05-02 19:56:45', '2011-05-02 19:56:45', 59.921627070699998, 30.353076160000001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(342, 'пос. Ильинское ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '29', '2011-05-02 19:56:47', '2011-05-02 19:56:47', 55.754167897800002, 37.233524322500010, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(342, 'пос. Ильинское ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 304, 1, 1, '29', '2011-05-02 19:56:47', '2011-05-02 19:56:47', 55.754167897800002, 37.233524322500010, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(343, 'Озеро Глухая яма', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '30', '2011-05-02 19:56:50', '2011-05-02 19:56:50', 55.767786337799997, 37.279872894299999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(343, 'Озеро Глухая яма', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 305, 1, 1, '30', '2011-05-02 19:56:50', '2011-05-02 19:56:50', 55.767786337799997, 37.279872894299999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(344, 'Моё место', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '31', '2011-05-02 19:56:53', '2011-05-02 19:56:53', 58.150009779599998, 56.475992202799986, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(344, 'Моё место', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 306, 1, 1, '31', '2011-05-02 19:56:53', '2011-05-02 19:56:53', 58.150009779599998, 56.475992202799986, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(346, 'Белодачинский пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '33', '2011-05-02 19:56:58', '2011-05-02 19:56:58', 55.659286609699997, 37.851676940899999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(346, 'Белодачинский пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 308, 1, 1, '33', '2011-05-02 19:56:58', '2011-05-02 19:56:58', 55.659286609699997, 37.851676940899999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(347, 'карьер Фатеево', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '34', '2011-05-02 19:57:01', '2011-05-02 19:57:01', 55.750042793500000, 38.639087676999999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(347, 'карьер Фатеево', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 309, 1, 1, '34', '2011-05-02 19:57:01', '2011-05-02 19:57:01', 55.750042793500000, 38.639087676999999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(348, 'ruslaplandia.ru Турбаза Русская Лапландия', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'ruslaplandia-ru', '2011-05-02 19:57:04', '2011-05-02 19:57:04', 67.779349420900004, 35.075225830100003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(348, 'ruslaplandia.ru Турбаза Русская Лапландия', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 310, 1, 1, 'ruslaplandia-ru', '2011-05-02 19:57:04', '2011-05-02 19:57:04', 67.779349420900004, 35.075225830100003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(349, 'Мансурово пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '35', '2011-05-02 19:57:07', '2011-05-02 19:57:07', 55.208067354799994, 37.753486633300000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(349, 'Мансурово пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 311, 1, 1, '35', '2011-05-02 19:57:07', '2011-05-02 19:57:07', 55.208067354799994, 37.753486633300000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(350, '10 озёр', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '10-1', '2011-05-02 19:57:09', '2011-05-02 19:57:09', 60.892877688300011, 35.715007782000001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(350, '10 озёр', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 312, 1, 1, '10-1', '2011-05-02 19:57:09', '2011-05-02 19:57:09', 60.892877688300011, 35.715007782000001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(351, 'Строгино , Большой карьер', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '36', '2011-05-02 19:57:12', '2011-05-02 19:57:12', 55.792902774300003, 37.418231964100002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(351, 'Строгино , Большой карьер', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 313, 1, 1, '36', '2011-05-02 19:57:12', '2011-05-02 19:57:12', 55.792902774300003, 37.418231964100002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(352, '"Барм фишинг"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '37', '2011-05-02 19:57:15', '2011-05-02 19:57:15', 56.122591449200002, 45.520477294899997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(352, '"Барм фишинг"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 314, 1, 1, '37', '2011-05-02 19:57:15', '2011-05-02 19:57:15', 56.122591449200002, 45.520477294899997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(353, 'Островок', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '38', '2011-05-02 19:57:18', '2011-05-02 19:57:18', 53.186441866800003, 39.980964660599987, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(353, 'Островок', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 315, 1, 1, '38', '2011-05-02 19:57:18', '2011-05-02 19:57:18', 53.186441866800003, 39.980964660599987, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(354, 'Ботово база отдыха', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '39', '2011-05-02 19:57:20', '2011-05-02 19:57:20', 57.154064106199996, 32.987480163599997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(354, 'Ботово база отдыха', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 316, 1, 1, '39', '2011-05-02 19:57:20', '2011-05-02 19:57:21', 57.154064106199996, 32.987480163599997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(355, 'Турист', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '40', '2011-05-02 19:57:23', '2011-05-02 19:57:23', 56.260932774899999, 43.980953693399996, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(355, 'Турист', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 317, 1, 1, '40', '2011-05-02 19:57:23', '2011-05-02 19:57:23', 56.260932774899999, 43.980953693399996, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(356, 'преголя ', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '41', '2011-05-02 19:57:26', '2011-05-02 19:57:26', 54.698340739300001, 20.671420097400009, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(356, 'преголя ', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 318, 1, 1, '41', '2011-05-02 19:57:26', '2011-05-02 19:57:26', 54.698340739300001, 20.671420097400009, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(357, 'голубые озёра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '42', '2011-05-02 19:57:29', '2011-05-02 19:57:29', 54.650696842700000, 20.358180999799988, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(357, 'голубые озёра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 319, 1, 1, '42', '2011-05-02 19:57:29', '2011-05-02 19:57:29', 54.650696842700000, 20.358180999799988, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(358, 'ГЭС', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '43', '2011-05-02 19:57:32', '2011-05-02 19:57:32', 58.113281187399998, 56.324501037600001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(358, 'ГЭС', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 320, 1, 1, '43', '2011-05-02 19:57:32', '2011-05-02 19:57:32', 58.113281187399998, 56.324501037600001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(359, 'иман', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '44', '2011-05-02 19:57:34', '2011-05-02 19:57:34', 47.863299737399998, 137.856445312000005, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(359, 'иман', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 321, 1, 1, '44', '2011-05-02 19:57:34', '2011-05-02 19:57:35', 47.863299737399998, 137.856445312000005, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(360, 'оз. Кадал', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '45', '2011-05-02 19:57:37', '2011-05-02 19:57:37', 54.328537239699997, 71.442718505900004, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(360, 'оз. Кадал', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 322, 1, 1, '45', '2011-05-02 19:57:37', '2011-05-02 19:57:37', 54.328537239699997, 71.442718505900004, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(361, 'озеро Круглое', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '46', '2011-05-02 19:57:40', '2011-05-02 19:57:40', 56.053371407200011, 37.353858947799999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(361, 'озеро Круглое', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 323, 1, 1, '46', '2011-05-02 19:57:40', '2011-05-02 19:57:40', 56.053371407200011, 37.353858947799999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(362, 'Kapsajoki river', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'kapsajoki-river', '2011-05-02 19:57:43', '2011-05-02 19:57:43', 67.865712311799996, 25.066337585399999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(362, 'Kapsajoki river', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 324, 1, 1, 'kapsajoki-river', '2011-05-02 19:57:43', '2011-05-02 19:57:43', 67.865712311799996, 25.066337585399999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(363, 'Ounasjoki river', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'ounasjoki-river', '2011-05-02 19:57:46', '2011-05-02 19:57:46', 67.797830755500001, 24.912528991699997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(363, 'Ounasjoki river', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 325, 1, 1, 'ounasjoki-river', '2011-05-02 19:57:46', '2011-05-02 19:57:46', 67.797830755500001, 24.912528991699997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(364, 'Фиш и Чиж', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '47', '2011-05-02 19:57:49', '2011-05-02 19:57:49', 51.870979847299999, 25.767059326200005, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(364, 'Фиш и Чиж', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 326, 1, 1, '47', '2011-05-02 19:57:49', '2011-05-02 19:57:49', 51.870979847299999, 25.767059326200005, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(365, 'МОЛОГА-ФИШ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '48', '2011-05-02 19:57:52', '2011-05-02 19:57:52', 58.724203014200000, 37.168121337899997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(365, 'МОЛОГА-ФИШ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 327, 1, 1, '48', '2011-05-02 19:57:52', '2011-05-02 19:57:52', 58.724203014200000, 37.168121337899997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(366, 'новозыбковский пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '49', '2011-05-02 19:57:55', '2011-05-02 19:57:55', 52.536064211800010, 31.941032409700000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(366, 'новозыбковский пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 328, 1, 1, '49', '2011-05-02 19:57:55', '2011-05-02 19:57:55', 52.536064211800010, 31.941032409700000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(367, 'Озеро «Монетка»', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '50', '2011-05-02 19:57:58', '2011-05-02 19:57:58', 60.388449943900000, 29.702396392800001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(367, 'Озеро «Монетка»', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 329, 1, 1, '50', '2011-05-02 19:57:58', '2011-05-02 19:57:58', 60.388449943900000, 29.702396392800001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(368, 'Рыболовный интернет магазин www.hot-fishing.ru лучшие цены', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'www-hot-fishing-ru', '2011-05-02 19:58:01', '2011-05-02 19:58:01', 56.854960576099998, 35.942738056200000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(368, 'Рыболовный интернет магазин www.hot-fishing.ru лучшие цены', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 330, 1, 1, 'www-hot-fishing-ru', '2011-05-02 19:58:01', '2011-05-02 19:58:01', 56.854960576099998, 35.942738056200000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(369, 'Chapoma.ru', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'chapoma-ru', '2011-05-02 19:58:04', '2011-05-02 19:58:04', 66.372755002500000, 37.441406250000000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(369, 'Chapoma.ru', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 331, 1, 1, 'chapoma-ru', '2011-05-02 19:58:04', '2011-05-02 19:58:04', 66.372755002500000, 37.441406250000000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(370, 'прокошево', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '51', '2011-05-02 19:58:06', '2011-05-02 19:58:06', 55.881040340499979, 44.511537551899998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(370, 'прокошево', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 332, 1, 1, '51', '2011-05-02 19:58:06', '2011-05-02 19:58:07', 55.881040340499979, 44.511537551899998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(371, 'канал', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '52', '2011-05-02 19:58:09', '2011-05-02 19:58:09', 54.694943000700000, 20.527160167699993, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(371, 'канал', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 333, 1, 1, '52', '2011-05-02 19:58:09', '2011-05-02 19:58:09', 54.694943000700000, 20.527160167699993, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(372, 'рыбалка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '53', '2011-05-02 19:58:13', '2011-05-02 19:58:13', 56.308967243299996, 44.017345905299997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(372, 'рыбалка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 334, 1, 1, '53', '2011-05-02 19:58:13', '2011-05-02 19:58:13', 56.308967243299996, 44.017345905299997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(373, 'Ока (Калиновские выселки)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '54', '2011-05-02 19:58:15', '2011-05-02 19:58:15', 54.875572092799999, 37.320449352299988, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(373, 'Ока (Калиновские выселки)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 335, 1, 1, '54', '2011-05-02 19:58:15', '2011-05-02 19:58:16', 54.875572092799999, 37.320449352299988, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(374, 'РыбаКлюй', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '55', '2011-05-02 19:58:18', '2011-05-02 19:58:18', 59.945232303700010, 30.414190292399997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(374, 'РыбаКлюй', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 336, 1, 1, '55', '2011-05-02 19:58:18', '2011-05-02 19:58:18', 59.945232303700010, 30.414190292399997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(376, 'Гореловское озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '57', '2011-05-02 19:58:24', '2011-05-02 19:58:24', 59.782297656800026, 30.117816925000000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(376, 'Гореловское озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 338, 1, 1, '57', '2011-05-02 19:58:24', '2011-05-02 19:58:24', 59.782297656800026, 30.117816925000000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(377, 'Рыболов', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '58', '2011-05-02 19:58:27', '2011-05-02 19:58:27', 59.909324623300002, 30.306569337799999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(377, 'Рыболов', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 339, 1, 1, '58', '2011-05-02 19:58:27', '2011-05-02 19:58:27', 59.909324623300002, 30.306569337799999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(378, 'Гостевой домик на Рыбинском водохранилище', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '59', '2011-05-02 19:58:30', '2011-05-02 19:58:30', 58.122869166799994, 38.394470214800002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(378, 'Гостевой домик на Рыбинском водохранилище', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 340, 1, 1, '59', '2011-05-02 19:58:30', '2011-05-02 19:58:30', 58.122869166799994, 38.394470214800002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(379, 'рубежное', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '60', '2011-05-02 19:58:33', '2011-05-02 19:58:33', 50.177777596100000, 36.841707229599997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(379, 'рубежное', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 341, 1, 1, '60', '2011-05-02 19:58:33', '2011-05-02 19:58:33', 50.177777596100000, 36.841707229599997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(380, 'карась с моста', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '61', '2011-05-02 19:58:36', '2011-05-02 19:58:36', 54.720666969100002, 20.462100505799999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(380, 'карась с моста', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 342, 1, 1, '61', '2011-05-02 19:58:36', '2011-05-02 19:58:36', 54.720666969100002, 20.462100505799999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(381, 'Сервис центр рыбака', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '62', '2011-05-02 19:58:39', '2011-05-02 19:58:39', 59.908506987599978, 30.321664810199998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(381, 'Сервис центр рыбака', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 343, 1, 1, '62', '2011-05-02 19:58:39', '2011-05-02 19:58:39', 59.908506987599978, 30.321664810199998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(382, 'Пады', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '63', '2011-05-02 19:58:42', '2011-05-02 19:58:42', 52.506191341999994, 39.541168212899997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(382, 'Пады', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 344, 1, 1, '63', '2011-05-02 19:58:42', '2011-05-02 19:58:42', 52.506191341999994, 39.541168212899997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(384, 'Волга (Сомовка)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '65', '2011-05-02 19:58:47', '2011-05-02 19:58:47', 56.153390360100012, 45.705528259300003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(384, 'Волга (Сомовка)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 346, 1, 1, '65', '2011-05-02 19:58:47', '2011-05-02 19:58:47', 56.153390360100012, 45.705528259300003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(385, 'р. Волга (Разнежье)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '66', '2011-05-02 19:58:50', '2011-05-02 19:58:50', 56.190660358599999, 45.631027221700002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(385, 'р. Волга (Разнежье)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 347, 1, 1, '66', '2011-05-02 19:58:50', '2011-05-02 19:58:50', 56.190660358599999, 45.631027221700002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(386, 'разнежье', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '67', '2011-05-02 19:58:53', '2011-05-02 19:58:53', 56.179769792999998, 45.680465698200003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(386, 'разнежье', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 348, 1, 1, '67', '2011-05-02 19:58:53', '2011-05-02 19:58:53', 56.179769792999998, 45.680465698200003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(387, 'Рыболовный магазин в Разнежье', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '68', '2011-05-02 19:58:56', '2011-05-02 19:58:56', 56.185693115499987, 45.682525634800001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(387, 'Рыболовный магазин в Разнежье', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 349, 1, 1, '68', '2011-05-02 19:58:56', '2011-05-02 19:58:56', 56.185693115499987, 45.682525634800001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(388, 'р. Волга (Разнежье)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '69', '2011-05-02 19:58:59', '2011-05-02 19:58:59', 56.175183367099997, 45.648536682100001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(388, 'р. Волга (Разнежье)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 350, 1, 1, '69', '2011-05-02 19:58:59', '2011-05-02 19:58:59', 56.175183367099997, 45.648536682100001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(389, 'Алексей Комаров (Астрахань)', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '70', '2011-05-02 19:59:02', '2011-05-02 19:59:02', 45.928229509300003, 48.317871093800001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(389, 'Алексей Комаров (Астрахань)', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 351, 1, 1, '70', '2011-05-02 19:59:02', '2011-05-02 19:59:02', 45.928229509300003, 48.317871093800001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(390, 'Черновское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '71', '2011-05-02 19:59:05', '2011-05-02 19:59:05', 53.252068805900009, 50.141601562500000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(390, 'Черновское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 352, 1, 1, '71', '2011-05-02 19:59:05', '2011-05-02 19:59:05', 53.252068805900009, 50.141601562500000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(391, 'Рыболов 24, минское ш. 43км', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '24-43', '2011-05-02 19:59:08', '2011-05-02 19:59:08', 55.618933466900003, 37.113597392999999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(391, 'Рыболов 24, минское ш. 43км', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 353, 1, 1, '24-43', '2011-05-02 19:59:08', '2011-05-02 19:59:08', 55.618933466900003, 37.113597392999999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(392, 'Рыболов, минское ш. 47км', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '47-1', '2011-05-02 19:59:11', '2011-05-02 19:59:11', 55.603250900299997, 37.002854347199971, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(392, 'Рыболов, минское ш. 47км', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 354, 1, 1, '47-1', '2011-05-02 19:59:11', '2011-05-02 19:59:11', 55.603250900299997, 37.002854347199971, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(393, 'леженьки', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '72', '2011-05-02 19:59:14', '2011-05-02 19:59:14', 51.750892616900003, 37.058601379400002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(393, 'леженьки', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 355, 1, 1, '72', '2011-05-02 19:59:14', '2011-05-02 19:59:14', 51.750892616900003, 37.058601379400002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(394, 'рыболовный магазин', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '73', '2011-05-02 19:59:17', '2011-05-02 19:59:17', 54.724911404799997, 20.468355417300000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(394, 'рыболовный магазин', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 356, 1, 1, '73', '2011-05-02 19:59:17', '2011-05-02 19:59:17', 54.724911404799997, 20.468355417300000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(395, 'На Дунае', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '74', '2011-05-02 19:59:20', '2011-05-02 19:59:20', 45.440380888300027, 29.539146423299989, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(395, 'На Дунае', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 357, 1, 1, '74', '2011-05-02 19:59:20', '2011-05-02 19:59:20', 45.440380888300027, 29.539146423299989, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(396, 'Жили -Были', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '75', '2011-05-02 19:59:23', '2011-05-02 19:59:23', 56.164288409299999, 45.809211730999998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(396, 'Жили -Были', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 358, 1, 1, '75', '2011-05-02 19:59:23', '2011-05-02 19:59:23', 56.164288409299999, 45.809211730999998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(397, 'Красивая Меча', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '76', '2011-05-02 19:59:25', '2011-05-02 19:59:25', 53.132271551599999, 38.140411377000000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(397, 'Красивая Меча', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 359, 1, 1, '76', '2011-05-02 19:59:25', '2011-05-02 19:59:26', 53.132271551599999, 38.140411377000000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(398, 'карась плотва окунь щука', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '77', '2011-05-02 19:59:28', '2011-05-02 19:59:28', 55.591539423999997, 37.434024810799997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(398, 'карась плотва окунь щука', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 360, 1, 1, '77', '2011-05-02 19:59:28', '2011-05-02 19:59:28', 55.591539423999997, 37.434024810799997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(399, 'Истринское водохранилище. д Пятница.', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '78', '2011-05-02 19:59:31', '2011-05-02 19:59:31', 56.095310956300011, 36.790380477900001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(399, 'Истринское водохранилище. д Пятница.', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 361, 1, 1, '78', '2011-05-02 19:59:31', '2011-05-02 19:59:31', 56.095310956300011, 36.790380477900001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(400, 'Васильсурская слобода', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '79', '2011-05-02 19:59:34', '2011-05-02 19:59:34', 56.137515741900003, 45.930404663099999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(400, 'Васильсурская слобода', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 362, 1, 1, '79', '2011-05-02 19:59:34', '2011-05-02 19:59:34', 56.137515741900003, 45.930404663099999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(401, 'оз. Зимари', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '80', '2011-05-02 19:59:37', '2011-05-02 19:59:37', 53.180629784700002, 83.479099273700001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(401, 'оз. Зимари', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 363, 1, 1, '80', '2011-05-02 19:59:37', '2011-05-02 19:59:37', 53.180629784700002, 83.479099273700001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(402, 'пруд у стадиона', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '81', '2011-05-02 19:59:40', '2011-05-02 19:59:40', 55.844506281999998, 37.164816856400002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(402, 'пруд у стадиона', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 364, 1, 1, '81', '2011-05-02 19:59:40', '2011-05-02 19:59:40', 55.844506281999998, 37.164816856400002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(403, 'инютино нижегородская область', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '82', '2011-05-02 19:59:43', '2011-05-02 19:59:43', 55.927971155100003, 43.917846679699998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(403, 'инютино нижегородская область', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 365, 1, 1, '82', '2011-05-02 19:59:43', '2011-05-02 19:59:43', 55.927971155100003, 43.917846679699998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(404, 'р. Волга / Кама (Рождествено)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '83', '2011-05-02 19:59:46', '2011-05-02 19:59:46', 55.434857336400000, 49.346466064500000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(404, 'р. Волга / Кама (Рождествено)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 366, 1, 1, '83', '2011-05-02 19:59:46', '2011-05-02 19:59:46', 55.434857336400000, 49.346466064500000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(405, 'Вишенки', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '84', '2011-05-02 19:59:49', '2011-05-02 19:59:49', 53.182378635600003, 39.597816467299999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(405, 'Вишенки', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 367, 1, 1, '84', '2011-05-02 19:59:49', '2011-05-02 19:59:49', 53.182378635600003, 39.597816467299999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(406, 'Николаевка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '85', '2011-05-02 19:59:52', '2011-05-02 19:59:52', 52.703226747699986, 39.916419982900003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(406, 'Николаевка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 368, 1, 1, '85', '2011-05-02 19:59:52', '2011-05-02 19:59:52', 52.703226747699986, 39.916419982900003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(407, 'Доброе р.Воронеж', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '86', '2011-05-02 19:59:54', '2011-05-02 19:59:54', 52.861875632599997, 39.844150543200001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(407, 'Доброе р.Воронеж', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 369, 1, 1, '86', '2011-05-02 19:59:54', '2011-05-02 19:59:55', 52.861875632599997, 39.844150543200001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(408, 'Каликино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '87', '2011-05-02 19:59:57', '2011-05-02 19:59:57', 52.961047854399979, 39.767761230499971, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(408, 'Каликино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 370, 1, 1, '87', '2011-05-02 19:59:57', '2011-05-02 19:59:57', 52.961047854399979, 39.767761230499971, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(409, 'преголя', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '88', '2011-05-02 20:00:00', '2011-05-02 20:00:00', 54.692165075999995, 20.396804809599999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(409, 'преголя', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 371, 1, 1, '88', '2011-05-02 20:00:00', '2011-05-02 20:00:00', 54.692165075999995, 20.396804809599999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(410, 'воронье озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '89', '2011-05-02 20:00:03', '2011-05-02 20:00:03', 54.653080365299999, 20.855827331499999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(410, 'воронье озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 372, 1, 1, '89', '2011-05-02 20:00:03', '2011-05-02 20:00:03', 54.653080365299999, 20.855827331499999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(411, 'караси', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '90', '2011-05-02 20:00:06', '2011-05-02 20:00:06', 54.944048845700003, 20.485296249400001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(411, 'караси', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 373, 1, 1, '90', '2011-05-02 20:00:06', '2011-05-02 20:00:06', 54.944048845700003, 20.485296249400001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(412, 'хлебное озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '91', '2011-05-02 20:00:09', '2011-05-02 20:00:09', 54.720660772499997, 20.462636947600000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(412, 'хлебное озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 374, 1, 1, '91', '2011-05-02 20:00:09', '2011-05-02 20:00:09', 54.720660772499997, 20.462636947600000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(413, 'Супер карп', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '92', '2011-05-02 20:00:12', '2011-05-02 20:00:12', 55.510797737499999, 37.720441818200001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(413, 'Супер карп', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 375, 1, 1, '92', '2011-05-02 20:00:12', '2011-05-02 20:00:12', 55.510797737499999, 37.720441818200001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(415, 'р. Мулянка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '94', '2011-05-02 20:00:18', '2011-05-02 20:00:18', 57.985536054000001, 56.127777099600003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(415, 'р. Мулянка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 377, 1, 1, '94', '2011-05-02 20:00:18', '2011-05-02 20:00:18', 57.985536054000001, 56.127777099600003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(416, 'р. Мулянка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '95', '2011-05-02 20:00:21', '2011-05-02 20:00:21', 58.002640611399997, 56.128463745099999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(416, 'р. Мулянка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 378, 1, 1, '95', '2011-05-02 20:00:21', '2011-05-02 20:00:21', 58.002640611399997, 56.128463745099999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(417, 'Заостровка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '96', '2011-05-02 20:00:23', '2011-05-02 20:00:23', 58.016827553299997, 56.085205078100003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(417, 'Заостровка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 379, 1, 1, '96', '2011-05-02 20:00:23', '2011-05-02 20:00:23', 58.016827553299997, 56.085205078100003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(420, 'Октябрьское озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '99', '2011-05-02 20:00:32', '2011-05-02 20:00:32', 57.145325073499997, 40.322721004500011, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(420, 'Октябрьское озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 382, 1, 1, '99', '2011-05-02 20:00:32', '2011-05-02 20:00:32', 57.145325073499997, 40.322721004500011, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(421, 'оз. Вепревское', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '100', '2011-05-02 20:00:35', '2011-05-02 20:00:35', 56.913149235999995, 39.155015945400002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(421, 'оз. Вепревское', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 383, 1, 1, '100', '2011-05-02 20:00:35', '2011-05-02 20:00:35', 56.913149235999995, 39.155015945400002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(422, 'По Щучьему Велению', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '101', '2011-05-02 20:00:41', '2011-05-02 20:00:41', 48.618952585599999, 45.518932342500001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(422, 'По Щучьему Велению', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 384, 1, 1, '101', '2011-05-02 20:00:41', '2011-05-02 20:00:41', 48.618952585599999, 45.518932342500001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(423, 'истра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '102', '2011-05-02 20:00:44', '2011-05-02 20:00:44', 56.033979007500001, 36.817932128899997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(423, 'истра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 385, 1, 1, '102', '2011-05-02 20:00:44', '2011-05-02 20:00:44', 56.033979007500001, 36.817932128899997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(424, 'Нарские пруды', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '103', '2011-05-02 20:00:46', '2011-05-02 20:00:46', 55.539019130600003, 36.615720391300002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(424, 'Нарские пруды', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 386, 1, 1, '103', '2011-05-02 20:00:46', '2011-05-02 20:00:47', 55.539019130600003, 36.615720391300002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(425, 'Донское', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '104', '2011-05-02 20:00:49', '2011-05-02 20:00:49', 52.617751637300003, 38.961113691299971, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(425, 'Донское', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 387, 1, 1, '104', '2011-05-02 20:00:49', '2011-05-02 20:00:50', 52.617751637300003, 38.961113691299971, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(426, 'Водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '105', '2011-05-02 20:00:53', '2011-05-02 20:00:53', 52.593246399700000, 39.743385314900017, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(426, 'Водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 388, 1, 1, '105', '2011-05-02 20:00:53', '2011-05-02 20:00:53', 52.593246399700000, 39.743385314900017, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(427, 'Вербилово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '106', '2011-05-02 20:00:55', '2011-05-02 20:00:55', 52.287902570999996, 39.412765502899994, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(427, 'Вербилово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 389, 1, 1, '106', '2011-05-02 20:00:55', '2011-05-02 20:00:56', 52.287902570999996, 39.412765502899994, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(428, 'Грязное', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '107', '2011-05-02 20:00:58', '2011-05-02 20:00:58', 52.358828590099996, 39.417572021500000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(428, 'Грязное', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 390, 1, 1, '107', '2011-05-02 20:00:58', '2011-05-02 20:00:58', 52.358828590099996, 39.417572021500000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(429, 'Саввино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '108', '2011-05-02 20:01:01', '2011-05-02 20:01:01', 55.420635710099980, 39.203681945800000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(429, 'Саввино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 391, 1, 1, '108', '2011-05-02 20:01:01', '2011-05-02 20:01:01', 55.420635710099980, 39.203681945800000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(430, 'База Верхневолжье', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '109', '2011-05-02 20:01:04', '2011-05-02 20:01:04', 57.082004442899994, 32.698230743400003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(430, 'База Верхневолжье', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 392, 1, 1, '109', '2011-05-02 20:01:04', '2011-05-02 20:01:04', 57.082004442899994, 32.698230743400003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(431, 'Залив Бронежа', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '110', '2011-05-02 20:01:07', '2011-05-02 20:01:07', 57.062315591299999, 32.652482986499997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(431, 'Залив Бронежа', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 393, 1, 1, '110', '2011-05-02 20:01:07', '2011-05-02 20:01:07', 57.062315591299999, 32.652482986499997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(432, 'Карповый', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '111', '2011-05-02 20:01:10', '2011-05-02 20:01:10', 55.792017325499998, 38.129253387499979, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(432, 'Карповый', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 394, 1, 1, '111', '2011-05-02 20:01:10', '2011-05-02 20:01:10', 55.792017325499998, 38.129253387499979, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(433, 'Министерский', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '112', '2011-05-02 20:01:13', '2011-05-02 20:01:13', 55.792789380099997, 38.119983673100002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(433, 'Министерский', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 395, 1, 1, '112', '2011-05-02 20:01:13', '2011-05-02 20:01:13', 55.792789380099997, 38.119983673100002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(434, 'Плещеево озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '113', '2011-05-02 20:01:16', '2011-05-02 20:01:16', 56.768079123699998, 38.777618408199999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(434, 'Плещеево озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 396, 1, 1, '113', '2011-05-02 20:01:16', '2011-05-02 20:01:16', 56.768079123699998, 38.777618408199999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(435, 'Золотой Сазан', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '114', '2011-05-02 20:01:19', '2011-05-02 20:01:19', 55.417566673699987, 37.248544692999978, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(435, 'Золотой Сазан', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 397, 1, 1, '114', '2011-05-02 20:01:19', '2011-05-02 20:01:19', 55.417566673699987, 37.248544692999978, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(436, 'База "Зелёный дом" коттедж "Простор".', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '115', '2011-05-02 20:01:22', '2011-05-02 20:01:22', 66.197997287400000, 33.354063034100001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(436, 'База "Зелёный дом" коттедж "Простор".', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 398, 1, 1, '115', '2011-05-02 20:01:22', '2011-05-02 20:01:22', 66.197997287400000, 33.354063034100001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(437, 'Похра, Белеутово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '116', '2011-05-02 20:01:25', '2011-05-02 20:01:25', 55.494483625100003, 37.743616104099999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(437, 'Похра, Белеутово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 399, 1, 1, '116', '2011-05-02 20:01:25', '2011-05-02 20:01:25', 55.494483625100003, 37.743616104099999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(438, 'с.Мокрое', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '117', '2011-05-02 20:01:27', '2011-05-02 20:01:27', 52.438013595299971, 39.401779174799998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(438, 'с.Мокрое', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 400, 1, 1, '117', '2011-05-02 20:01:27', '2011-05-02 20:01:27', 52.438013595299971, 39.401779174799998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(439, 'Юшинский затон', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '118', '2011-05-02 20:01:30', '2011-05-02 20:01:30', 52.544834202699995, 39.822864532499999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(439, 'Юшинский затон', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 401, 1, 1, '118', '2011-05-02 20:01:30', '2011-05-02 20:01:30', 52.544834202699995, 39.822864532499999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(440, 'Делиховое', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '119', '2011-05-02 20:01:33', '2011-05-02 20:01:33', 53.043380391199996, 39.817199706999986, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(440, 'Делиховое', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 402, 1, 1, '119', '2011-05-02 20:01:33', '2011-05-02 20:01:33', 53.043380391199996, 39.817199706999986, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(441, 'Ока - Дракино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '120', '2011-05-02 20:01:36', '2011-05-02 20:01:36', 54.836409621900017, 37.260818481399987, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(441, 'Ока - Дракино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 403, 1, 1, '120', '2011-05-02 20:01:36', '2011-05-02 20:01:36', 54.836409621900017, 37.260818481399987, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(442, 'Елец на Поле', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '121', '2011-05-02 20:01:39', '2011-05-02 20:01:39', 55.818451484000001, 39.854192733799998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(442, 'Елец на Поле', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 404, 1, 1, '121', '2011-05-02 20:01:39', '2011-05-02 20:01:39', 55.818451484000001, 39.854192733799998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(443, 'р. Москва, Сельцо', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '122', '2011-05-02 20:01:42', '2011-05-02 20:01:42', 55.561524637900000, 38.026084899899999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(443, 'р. Москва, Сельцо', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 405, 1, 1, '122', '2011-05-02 20:01:42', '2011-05-02 20:01:42', 55.561524637900000, 38.026084899899999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(444, 'Рыболовная база "Трофейная"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '123', '2011-05-02 20:01:45', '2011-05-02 20:01:45', 59.506280713999999, 38.516693115199999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(444, 'Рыболовная база "Трофейная"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 406, 1, 1, '123', '2011-05-02 20:01:45', '2011-05-02 20:01:45', 59.506280713999999, 38.516693115199999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(445, 'Ahtuba-club.ru', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'ahtuba-club-ru', '2011-05-02 20:01:48', '2011-05-02 20:01:48', 47.112593267599998, 47.398452758799998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(445, 'Ahtuba-club.ru', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 407, 1, 1, 'ahtuba-club-ru', '2011-05-02 20:01:48', '2011-05-02 20:01:48', 47.112593267599998, 47.398452758799998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(446, 'Озеро Долгое', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '124', '2011-05-02 20:01:51', '2011-05-02 20:01:51', 56.513669536799995, 37.361068725599999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(446, 'Озеро Долгое', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 408, 1, 1, '124', '2011-05-02 20:01:51', '2011-05-02 20:01:51', 56.513669536799995, 37.361068725599999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(447, '"Клёвое озеро"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '125', '2011-05-02 20:01:54', '2011-05-02 20:01:54', 54.999816697000000, 73.472968339900007, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(447, '"Клёвое озеро"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 409, 1, 1, '125', '2011-05-02 20:01:54', '2011-05-02 20:01:54', 54.999816697000000, 73.472968339900007, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(448, 'Рыболовно - охотничий клуб "Мария" ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '126', '2011-05-02 20:01:57', '2011-05-02 20:01:57', 47.586975945799999, 46.752233505199996, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(448, 'Рыболовно - охотничий клуб "Мария" ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 410, 1, 1, '126', '2011-05-02 20:01:57', '2011-05-02 20:01:57', 47.586975945799999, 46.752233505199996, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(449, 'Рыболовно-охотничья гостиница "ВЕСЬ"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '127', '2011-05-02 20:01:59', '2011-05-02 20:01:59', 58.649226445899998, 37.279357910199998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(449, 'Рыболовно-охотничья гостиница "ВЕСЬ"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 411, 1, 1, '127', '2011-05-02 20:01:59', '2011-05-02 20:01:59', 58.649226445899998, 37.279357910199998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(450, 'Плавучая гостиница "Гусиный остров"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '128', '2011-05-02 20:02:02', '2011-05-02 20:02:02', 46.848639699000003, 47.698516845699999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(450, 'Плавучая гостиница "Гусиный остров"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 412, 1, 1, '128', '2011-05-02 20:02:02', '2011-05-02 20:02:02', 46.848639699000003, 47.698516845699999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(451, 'Река Волга', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '129', '2011-05-02 20:02:05', '2011-05-02 20:02:05', 56.163944307100003, 47.080535888699998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(451, 'Река Волга', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 413, 1, 1, '129', '2011-05-02 20:02:05', '2011-05-02 20:02:05', 56.163944307100003, 47.080535888699998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(452, 'Большой Юг', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '130', '2011-05-02 20:02:08', '2011-05-02 20:02:08', 59.073124816000004, 38.302803039600001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(452, 'Большой Юг', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 414, 1, 1, '130', '2011-05-02 20:02:08', '2011-05-02 20:02:08', 59.073124816000004, 38.302803039600001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(453, 'Рыбинка. Вичелово.', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '131', '2011-05-02 20:02:11', '2011-05-02 20:02:11', 59.002030770300003, 37.969779968299996, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(453, 'Рыбинка. Вичелово.', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 415, 1, 1, '131', '2011-05-02 20:02:11', '2011-05-02 20:02:11', 59.002030770300003, 37.969779968299996, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(454, 'Советск', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '132', '2011-05-02 20:02:14', '2011-05-02 20:02:14', 53.931351817400000, 37.647399902299988, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(454, 'Советск', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 416, 1, 1, '132', '2011-05-02 20:02:14', '2011-05-02 20:02:14', 53.931351817400000, 37.647399902299988, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(455, 'река Вопь', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '133', '2011-05-02 20:02:17', '2011-05-02 20:02:17', 55.224323672899999, 32.853927612299998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(455, 'река Вопь', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 417, 1, 1, '133', '2011-05-02 20:02:17', '2011-05-02 20:02:17', 55.224323672899999, 32.853927612299998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(456, 'р. Ока (Озёры)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '134', '2011-05-02 20:02:20', '2011-05-02 20:02:20', 54.852856907800003, 38.590807914699987, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(456, 'р. Ока (Озёры)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 418, 1, 1, '134', '2011-05-02 20:02:20', '2011-05-02 20:02:20', 54.852856907800003, 38.590807914699987, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(458, 'МАМШИН ОСТРОВ', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '135', '2011-05-02 20:02:26', '2011-05-02 20:02:26', 57.364682060400000, 43.067436218299996, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(458, 'МАМШИН ОСТРОВ', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 420, 1, 1, '135', '2011-05-02 20:02:26', '2011-05-02 20:02:26', 57.364682060400000, 43.067436218299996, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(460, 'Дом рыбака Ахтуба Тур', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '136', '2011-05-02 20:02:31', '2011-05-02 20:02:31', 45.845621229000002, 47.964173555400002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(460, 'Дом рыбака Ахтуба Тур', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 422, 1, 1, '136', '2011-05-02 20:02:31', '2011-05-02 20:02:32', 45.845621229000002, 47.964173555400002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(461, 'Тростенское озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '137', '2011-05-02 20:02:34', '2011-05-02 20:02:34', 55.866912452699999, 36.488342285199998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(461, 'Тростенское озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 423, 1, 1, '137', '2011-05-02 20:02:34', '2011-05-02 20:02:34', 55.866912452699999, 36.488342285199998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(462, 'Крюково', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '138', '2011-05-02 20:02:37', '2011-05-02 20:02:37', 55.270979598799997, 35.937309265099998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(462, 'Крюково', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 424, 1, 1, '138', '2011-05-02 20:02:37', '2011-05-02 20:02:37', 55.270979598799997, 35.937309265099998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(463, 'Дылдино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '139', '2011-05-02 20:02:40', '2011-05-02 20:02:40', 55.129905302700010, 36.047172546399999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(463, 'Дылдино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 425, 1, 1, '139', '2011-05-02 20:02:40', '2011-05-02 20:02:40', 55.129905302700010, 36.047172546399999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(464, 'Шушпанское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '140', '2011-05-02 20:02:43', '2011-05-02 20:02:43', 53.382017764799997, 40.737304687500000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(464, 'Шушпанское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 426, 1, 1, '140', '2011-05-02 20:02:43', '2011-05-02 20:02:43', 53.382017764799997, 40.737304687500000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(465, 'Быковские острова', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '141', '2011-05-02 20:02:46', '2011-05-02 20:02:46', 57.361904697500002, 42.964096069300027, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(465, 'Быковские острова', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 427, 1, 1, '141', '2011-05-02 20:02:46', '2011-05-02 20:02:46', 57.361904697500002, 42.964096069300027, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(466, 'Демидовка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '142', '2011-05-02 20:02:49', '2011-05-02 20:02:49', 57.355423366399997, 42.998085021999998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(466, 'Демидовка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 428, 1, 1, '142', '2011-05-02 20:02:49', '2011-05-02 20:02:49', 57.355423366399997, 42.998085021999998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(467, 'Юдановка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '143', '2011-05-02 20:02:52', '2011-05-02 20:02:52', 55.321722199000000, 37.200393676799997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(467, 'Юдановка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 429, 1, 1, '143', '2011-05-02 20:02:52', '2011-05-02 20:02:52', 55.321722199000000, 37.200393676799997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(468, 'Зыбино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '144', '2011-05-02 20:02:55', '2011-05-02 20:02:55', 55.299056329999999, 37.378921508799998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(468, 'Зыбино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 430, 1, 1, '144', '2011-05-02 20:02:55', '2011-05-02 20:02:55', 55.299056329999999, 37.378921508799998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(469, 'Богоявление', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '145', '2011-05-02 20:02:58', '2011-05-02 20:02:58', 55.252511654000003, 37.180480957000000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(469, 'Богоявление', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 431, 1, 1, '145', '2011-05-02 20:02:58', '2011-05-02 20:02:58', 55.252511654000003, 37.180480957000000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(470, 'Покровское', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '146', '2011-05-02 20:03:01', '2011-05-02 20:03:01', 55.337687994100001, 37.220563888500010, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(470, 'Покровское', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 432, 1, 1, '146', '2011-05-02 20:03:01', '2011-05-02 20:03:01', 55.337687994100001, 37.220563888500010, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(471, 'Коротыгино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '147', '2011-05-02 20:03:03', '2011-05-02 20:03:03', 55.312159172799994, 37.249789237999998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(471, 'Коротыгино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 433, 1, 1, '147', '2011-05-02 20:03:03', '2011-05-02 20:03:04', 55.312159172799994, 37.249789237999998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(472, 'Биг ФишЪ www.big-fish.ru', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'www-big-fish-ru', '2011-05-02 20:03:06', '2011-05-02 20:03:06', 58.111988992999997, 38.358078002900001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(472, 'Биг ФишЪ www.big-fish.ru', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 434, 1, 1, 'www-big-fish-ru', '2011-05-02 20:03:06', '2011-05-02 20:03:06', 58.111988992999997, 38.358078002900001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(473, 'Пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '148', '2011-05-02 20:03:09', '2011-05-02 20:03:09', 55.421824288399996, 36.303291320800000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(473, 'Пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 435, 1, 1, '148', '2011-05-02 20:03:09', '2011-05-02 20:03:09', 55.421824288399996, 36.303291320800000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(474, 'Бывший карповый пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '149', '2011-05-02 20:03:12', '2011-05-02 20:03:12', 55.212964534999998, 35.757751464800002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(474, 'Бывший карповый пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 436, 1, 1, '149', '2011-05-02 20:03:12', '2011-05-02 20:03:12', 55.212964534999998, 35.757751464800002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(475, 'Карасёвый пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '150', '2011-05-02 20:03:15', '2011-05-02 20:03:15', 55.153373933799998, 36.093521118200002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(475, 'Карасёвый пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 437, 1, 1, '150', '2011-05-02 20:03:15', '2011-05-02 20:03:15', 55.153373933799998, 36.093521118200002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(476, 'База на Вазузе', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '151', '2011-05-02 20:03:18', '2011-05-02 20:03:18', 55.926393927800000, 34.559898376500001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(476, 'База на Вазузе', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 438, 1, 1, '151', '2011-05-02 20:03:18', '2011-05-02 20:03:18', 55.926393927800000, 34.559898376500001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(477, 'Рыболовная База', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '152', '2011-05-02 20:03:21', '2011-05-02 20:03:21', 55.931702401599999, 35.419235229500003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(477, 'Рыболовная База', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 439, 1, 1, '152', '2011-05-02 20:03:21', '2011-05-02 20:03:21', 55.931702401599999, 35.419235229500003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(478, '"Зеленая Долина"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '153', '2011-05-02 20:03:24', '2011-05-02 20:03:24', 55.261927661999998, 36.445212364200003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(478, '"Зеленая Долина"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 440, 1, 1, '153', '2011-05-02 20:03:24', '2011-05-02 20:03:24', 55.261927661999998, 36.445212364200003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(480, 'Иванисово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '155', '2011-05-02 20:03:30', '2011-05-02 20:03:30', 55.739759531700003, 38.454015255000002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(480, 'Иванисово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 442, 1, 1, '155', '2011-05-02 20:03:30', '2011-05-02 20:03:30', 55.739759531700003, 38.454015255000002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(481, 'Криводанова', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '156', '2011-05-02 20:03:33', '2011-05-02 20:03:33', 57.100825051199998, 66.207733154300001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(481, 'Криводанова', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 443, 1, 1, '156', '2011-05-02 20:03:33', '2011-05-02 20:03:33', 57.100825051199998, 66.207733154300001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(482, 'Татаринцево', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '157', '2011-05-02 20:03:35', '2011-05-02 20:03:35', 55.356282230200001, 38.321084976199998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(482, 'Татаринцево', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 444, 1, 1, '157', '2011-05-02 20:03:35', '2011-05-02 20:03:36', 55.356282230200001, 38.321084976199998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(483, 'пожарный пруд в Храпуново', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '158', '2011-05-02 20:03:38', '2011-05-02 20:03:38', 55.723359164900018, 38.357906341600000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(483, 'пожарный пруд в Храпуново', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 445, 1, 1, '158', '2011-05-02 20:03:38', '2011-05-02 20:03:38', 55.723359164900018, 38.357906341600000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(484, 'пушкино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '159', '2011-05-02 20:03:41', '2011-05-02 20:03:41', 55.450047386500003, 38.709640502900001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(484, 'пушкино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 446, 1, 1, '159', '2011-05-02 20:03:41', '2011-05-02 20:03:41', 55.450047386500003, 38.709640502900001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(485, 'Рыболовно-охотничья база ПРОТОКА', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '160', '2011-05-02 20:03:44', '2011-05-02 20:03:44', 45.864074329600001, 48.141231536900001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(485, 'Рыболовно-охотничья база ПРОТОКА', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 447, 1, 1, '160', '2011-05-02 20:03:44', '2011-05-02 20:03:44', 45.864074329600001, 48.141231536900001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(485, 'Рыболовно-охотничья база ПРОТОКА', '<p>Услуги предоставляемые базой Протока своим гостям:<br /> - рыбалка<br /> - подводная охота<br /> - охота &laquo;по перу&raquo;<br /> - семейный отдых с выездом на лотосовые поля (июль, август)<br /> - аренда катеров с егерем<br /> - прокат лодок <br /> - прокат водных лыж<br /> - катание на "банане" <br /> - детский бассейн (457 см*91 см) <br /> - отличная баня &ndash; сауна <br /> - бесплатный бильярд <br /> - бесплатная охраняемая стоянка <br /> - качели, шезлонги, зонтики<br /> - настольный теннис<br /> - спортивная площадка</p>', NULL, 0, '<table class="MsoNormalTable" width="100%" border="1" cellpadding="0">\r\n<tbody>\r\n<tr style="height: 7.6pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 7.6pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">Сруб</span></strong></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 7.6pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">Размещение</span></strong></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 7.6pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">Стоимость, руб.</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr style="height: 26.25pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt;"><a href="http://www.protoka.ru/foto/econom/"><strong><span style="color: #e7993a;">Эконом</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">(1 комната)</span></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">2-х местное</span></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 26.25pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">550</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">(сутки на 1 человека)</span></p>\r\n</td>\r\n</tr>\r\n<tr style="height: 26.25pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt;"><a href="http://www.protoka.ru/foto/comfort/"><strong><span style="color: #e7993a;">Комфорт</span></strong></a> <br />(все дома оборудованы санузлом)</span></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">дом 4-х местный<br />номера 3-х местные <br /> номера 2-х местные </span></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 26.25pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">1200 <br />1100<br />1100<br />(сутки на 1 человека) </span></p>\r\n</td>\r\n</tr>\r\n<tr style="height: 26.25pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt;"><a href="http://www.protoka.ru/foto/comfort/"><strong><span style="color: #e7993a;">Комфорт - Плюс</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">(3 комнаты и санузел)</span></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">4-х местное</span></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 26.25pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">1300</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">(сутки на 1 человека)</span></p>\r\n</td>\r\n</tr>\r\n<tr style="height: 26.25pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">Коттедж с кухней</span></strong></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">(3 комнаты, кухня и санузел)</span></strong></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">до 6 человек (плюс 1 дополнительное место)</span></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 26.25pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">6500</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">(коттедж полностью в сутки)</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, 1, 5, 447, 1, 1, '160', '2011-05-02 20:03:44', '2011-06-14 12:08:38', 45.864074329600001, 48.141231536900001, 3);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(485, 'Рыболовно-охотничья база ПРОТОКА', '', NULL, 0, '<table class="MsoNormalTable" width="100%" border="1" cellpadding="0">\r\n<tbody>\r\n<tr style="height: 7.6pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 7.6pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">Сруб</span></strong></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 7.6pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">Размещение</span></strong></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 7.6pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">Стоимость, руб.</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr style="height: 26.25pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt;"><a href="http://www.protoka.ru/foto/econom/"><strong><span style="color: #e7993a;">Эконом</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">(1 комната)</span></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">2-х местное</span></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 26.25pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">550</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">(сутки на 1 человека)</span></p>\r\n</td>\r\n</tr>\r\n<tr style="height: 26.25pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt;"><a href="http://www.protoka.ru/foto/comfort/"><strong><span style="color: #e7993a;">Комфорт</span></strong></a> <br />(все дома оборудованы санузлом)</span></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">дом 4-х местный<br />номера 3-х местные <br /> номера 2-х местные </span></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 26.25pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">1200 <br />1100<br />1100<br />(сутки на 1 человека) </span></p>\r\n</td>\r\n</tr>\r\n<tr style="height: 26.25pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt;"><a href="http://www.protoka.ru/foto/comfort/"><strong><span style="color: #e7993a;">Комфорт - Плюс</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">(3 комнаты и санузел)</span></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">4-х местное</span></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 26.25pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">1300</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">(сутки на 1 человека)</span></p>\r\n</td>\r\n</tr>\r\n<tr style="height: 26.25pt;">\r\n<td style="width: 32.66%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">Коттедж с кухней</span></strong></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 10pt; color: #e7993a;">(3 комнаты, кухня и санузел)</span></strong></p>\r\n</td>\r\n<td style="width: 32.64%; padding: 0.75pt; height: 26.25pt;" width="32%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: #e7993a;">до 6 человек (плюс 1 дополнительное место)</span></p>\r\n</td>\r\n<td style="width: 33.32%; padding: 0.75pt; height: 26.25pt;" width="33%">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">6500</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 10pt; color: red;">(коттедж полностью в сутки)</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, 1, 5, 447, 1, 1, '160', '2011-05-02 20:03:44', '2011-06-14 18:54:20', 45.864074329600001, 48.141231536900001, 4);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(486, 'пос. им. Воровского', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '161', '2011-05-02 20:03:47', '2011-05-02 20:03:47', 55.734572183499999, 38.300571441699987, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(486, 'пос. им. Воровского', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 448, 1, 1, '161', '2011-05-02 20:03:47', '2011-05-02 20:03:47', 55.734572183499999, 38.300571441699987, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(487, 'Храпуново', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '162', '2011-05-02 20:03:50', '2011-05-02 20:03:50', 55.726969915299996, 38.326406478899997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(487, 'Храпуново', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 449, 1, 1, '162', '2011-05-02 20:03:50', '2011-05-02 20:03:50', 55.726969915299996, 38.326406478899997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(488, 'Рыбалка на реке Kумийоки', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'k', '2011-05-02 20:03:53', '2011-05-02 20:03:53', 60.530265872999998, 26.907920837399999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(488, 'Рыбалка на реке Kумийоки', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 450, 1, 1, 'k', '2011-05-02 20:03:53', '2011-05-02 20:03:53', 60.530265872999998, 26.907920837399999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(489, 'рыбалка в Финляндии', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '163', '2011-05-02 20:03:56', '2011-05-02 20:03:56', 60.460264753899978, 26.948089599599989, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(489, 'рыбалка в Финляндии', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 451, 1, 1, '163', '2011-05-02 20:03:56', '2011-05-02 20:03:56', 60.460264753899978, 26.948089599599989, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(490, 'ЛОВЛЯ НА СПИННИНГ И «ТРОЛЛИНГ» У БЕРЕГОВОЙ ЛИНИИ МОРЯ.', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '164', '2011-05-02 20:03:59', '2011-05-02 20:03:59', 60.459926217400003, 26.954956054699998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(490, 'ЛОВЛЯ НА СПИННИНГ И «ТРОЛЛИНГ» У БЕРЕГОВОЙ ЛИНИИ МОРЯ.', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 452, 1, 1, '164', '2011-05-02 20:03:59', '2011-05-02 20:03:59', 60.459926217400003, 26.954956054699998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(491, 'тарасово,пруд', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '165', '2011-05-02 20:04:02', '2011-05-02 20:04:02', 55.476469975299999, 37.477369308500002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(491, 'тарасово,пруд', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 453, 1, 1, '165', '2011-05-02 20:04:02', '2011-05-02 20:04:02', 55.476469975299999, 37.477369308500002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(492, 'Брехово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '166', '2011-05-02 20:04:05', '2011-05-02 20:04:05', 55.939442620700000, 37.194042205799995, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(492, 'Брехово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 454, 1, 1, '166', '2011-05-02 20:04:05', '2011-05-02 20:04:05', 55.939442620700000, 37.194042205799995, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(493, 'Горнево', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '167', '2011-05-02 20:04:08', '2011-05-02 20:04:08', 55.197928277400003, 37.095766067500001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(493, 'Горнево', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 455, 1, 1, '167', '2011-05-02 20:04:08', '2011-05-02 20:04:08', 55.197928277400003, 37.095766067500001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(494, 'Сенеж дамба', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '168', '2011-05-02 20:04:11', '2011-05-02 20:04:11', 56.216727837199997, 36.999206543000000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(494, 'Сенеж дамба', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 456, 1, 1, '168', '2011-05-02 20:04:11', '2011-05-02 20:04:11', 56.216727837199997, 36.999206543000000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(495, 'Пироговское водохранилище', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '169', '2011-05-02 20:04:14', '2011-05-02 20:04:14', 55.980483184900002, 37.676239013699998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(495, 'Пироговское водохранилище', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 457, 1, 1, '169', '2011-05-02 20:04:14', '2011-05-02 20:04:14', 55.980483184900002, 37.676239013699998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(496, 'Река Юг Вологодская обл.', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '170', '2011-05-02 20:04:17', '2011-05-02 20:04:17', 60.109611483899997, 46.470794677699999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(496, 'Река Юг Вологодская обл.', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 458, 1, 1, '170', '2011-05-02 20:04:17', '2011-05-02 20:04:17', 60.109611483899997, 46.470794677699999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(497, 'река Пахра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '171', '2011-05-02 20:04:19', '2011-05-02 20:04:19', 55.493637596200003, 37.848243713399995, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(497, 'река Пахра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 459, 1, 1, '171', '2011-05-02 20:04:19', '2011-05-02 20:04:20', 55.493637596200003, 37.848243713399995, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(498, 'Голубино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '172', '2011-05-02 20:04:22', '2011-05-02 20:04:22', 55.234602855500000, 37.801809310899998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(498, 'Голубино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 460, 1, 1, '172', '2011-05-02 20:04:22', '2011-05-02 20:04:22', 55.234602855500000, 37.801809310899998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(499, 'Пожарный прудик пос. им. Воровского', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '173', '2011-05-02 20:04:25', '2011-05-02 20:04:25', 55.728995076200000, 38.299326896699995, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(499, 'Пожарный прудик пос. им. Воровского', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 461, 1, 1, '173', '2011-05-02 20:04:25', '2011-05-02 20:04:25', 55.728995076200000, 38.299326896699995, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(500, 'Рыболов-спортсмен', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '174', '2011-05-02 20:04:28', '2011-05-02 20:04:28', 55.853901971299997, 38.443855047199996, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(500, 'Рыболов-спортсмен', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 462, 1, 1, '174', '2011-05-02 20:04:28', '2011-05-02 20:04:28', 55.853901971299997, 38.443855047199996, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(501, 'База отдыха "Ока"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '175', '2011-05-02 20:04:31', '2011-05-02 20:04:31', 54.611646770000000, 41.040973663300001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(501, 'База отдыха "Ока"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 463, 1, 1, '175', '2011-05-02 20:04:31', '2011-05-02 20:04:31', 54.611646770000000, 41.040973663300001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(503, 'река Отра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '177', '2011-05-02 20:04:37', '2011-05-02 20:04:37', 55.355696718099999, 38.310699462899997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(503, 'река Отра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 465, 1, 1, '177', '2011-05-02 20:04:37', '2011-05-02 20:04:37', 55.355696718099999, 38.310699462899997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(504, 'V?ike-Kalaj?rv', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'v-ike-kalaj-rv', '2011-05-02 20:04:40', '2011-05-02 20:04:40', 59.196790372899997, 25.515747070300005, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(504, 'V?ike-Kalaj?rv', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 466, 1, 1, 'v-ike-kalaj-rv', '2011-05-02 20:04:40', '2011-05-02 20:04:40', 59.196790372899997, 25.515747070300005, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(505, 'СВЕТЛЫЕ ГОРЫ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '178', '2011-05-02 20:04:43', '2011-05-02 20:04:43', 55.898108287600010, 37.294464111300002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(505, 'СВЕТЛЫЕ ГОРЫ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 467, 1, 1, '178', '2011-05-02 20:04:43', '2011-05-02 20:04:43', 55.898108287600010, 37.294464111300002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(506, 'ЛЬВОВСКИЕ ПРУДЫ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '179', '2011-05-02 20:04:46', '2011-05-02 20:04:46', 56.102185547099999, 35.727195739700001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(506, 'ЛЬВОВСКИЕ ПРУДЫ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 468, 1, 1, '179', '2011-05-02 20:04:46', '2011-05-02 20:04:46', 56.102185547099999, 35.727195739700001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(507, 'Брехово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '180', '2011-05-02 20:04:49', '2011-05-02 20:04:49', 55.635942079599999, 36.845226287800003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(507, 'Брехово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 469, 1, 1, '180', '2011-05-02 20:04:49', '2011-05-02 20:04:49', 55.635942079599999, 36.845226287800003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(508, 'Истринское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '181', '2011-05-02 20:04:52', '2011-05-02 20:04:52', 56.016489927300000, 36.818801164600004, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(508, 'Истринское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 470, 1, 1, '181', '2011-05-02 20:04:52', '2011-05-02 20:04:52', 56.016489927300000, 36.818801164600004, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(509, 'Фуньково', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '182', '2011-05-02 20:04:55', '2011-05-02 20:04:55', 55.786709035599998, 36.862049102800000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(509, 'Фуньково', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 471, 1, 1, '182', '2011-05-02 20:04:55', '2011-05-02 20:04:55', 55.786709035599998, 36.862049102800000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(510, 'Зевалово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '183', '2011-05-02 20:04:58', '2011-05-02 20:04:58', 55.170142798399979, 38.404598236100000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(510, 'Зевалово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 472, 1, 1, '183', '2011-05-02 20:04:58', '2011-05-02 20:04:58', 55.170142798399979, 38.404598236100000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(512, 'голохвастово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '185', '2011-05-02 20:05:03', '2011-05-02 20:05:03', 55.382036190299999, 36.954574585000003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(512, 'голохвастово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 474, 1, 1, '185', '2011-05-02 20:05:03', '2011-05-02 20:05:03', 55.382036190299999, 36.954574585000003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(513, 'хованское.', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '186', '2011-05-02 20:05:06', '2011-05-02 20:05:06', 55.596825782000003, 37.457370758099998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(513, 'хованское.', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 475, 1, 1, '186', '2011-05-02 20:05:06', '2011-05-02 20:05:06', 55.596825782000003, 37.457370758099998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(514, 'суханово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '187', '2011-05-02 20:05:09', '2011-05-02 20:05:09', 55.522703354500003, 37.656755447399995, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(514, 'суханово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 476, 1, 1, '187', '2011-05-02 20:05:09', '2011-05-02 20:05:10', 55.522703354500003, 37.656755447399995, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(515, 'Поддубье', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '188', '2011-05-02 20:05:12', '2011-05-02 20:05:12', 55.321331517899999, 38.425369262699995, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(515, 'Поддубье', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 477, 1, 1, '188', '2011-05-02 20:05:12', '2011-05-02 20:05:12', 55.321331517899999, 38.425369262699995, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(516, 'лесное', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '189', '2011-05-02 20:05:15', '2011-05-02 20:05:15', 55.639672326499998, 38.311085701000003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(516, 'лесное', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 478, 1, 1, '189', '2011-05-02 20:05:15', '2011-05-02 20:05:15', 55.639672326499998, 38.311085701000003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(517, 'Река Рожайка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '190', '2011-05-02 20:05:18', '2011-05-02 20:05:18', 55.394468180799997, 37.729969024699997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(517, 'Река Рожайка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 479, 1, 1, '190', '2011-05-02 20:05:18', '2011-05-02 20:05:18', 55.394468180799997, 37.729969024699997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(518, 'Бисерово озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '191', '2011-05-02 20:05:21', '2011-05-02 20:05:21', 55.761798673399987, 38.111400604200000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(518, 'Бисерово озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 480, 1, 1, '191', '2011-05-02 20:05:21', '2011-05-02 20:05:21', 55.761798673399987, 38.111400604200000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(519, 'Шипулино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '192', '2011-05-02 20:05:24', '2011-05-02 20:05:24', 56.328340210300027, 36.521644592299999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(519, 'Шипулино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 481, 1, 1, '192', '2011-05-02 20:05:24', '2011-05-02 20:05:24', 56.328340210300027, 36.521644592299999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(520, 'Медвежьи озера', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '193', '2011-05-02 20:05:27', '2011-05-02 20:05:27', 55.865294208300000, 37.996902465799998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(520, 'Медвежьи озера', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 482, 1, 1, '193', '2011-05-02 20:05:27', '2011-05-02 20:05:27', 55.865294208300000, 37.996902465799998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(521, 'Никольский яр', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '194', '2011-05-02 20:05:30', '2011-05-02 20:05:30', 47.792688413400001, 46.339302062999977, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(521, 'Никольский яр', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 483, 1, 1, '194', '2011-05-02 20:05:30', '2011-05-02 20:05:30', 47.792688413400001, 46.339302062999977, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(522, 'ильино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '195', '2011-05-02 20:05:33', '2011-05-02 20:05:33', 55.176711132800001, 37.039375305200011, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(522, 'ильино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 484, 1, 1, '195', '2011-05-02 20:05:33', '2011-05-02 20:05:33', 55.176711132800001, 37.039375305200011, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(523, 'салтыково', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '196', '2011-05-02 20:05:36', '2011-05-02 20:05:36', 55.388862080700001, 38.119812011699970, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(523, 'салтыково', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 485, 1, 1, '196', '2011-05-02 20:05:36', '2011-05-02 20:05:36', 55.388862080700001, 38.119812011699970, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(524, 'Щеглятьево', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '197', '2011-05-02 20:05:39', '2011-05-02 20:05:39', 55.163573381700026, 37.689285278299998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(524, 'Щеглятьево', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 486, 1, 1, '197', '2011-05-02 20:05:39', '2011-05-02 20:05:39', 55.163573381700026, 37.689285278299998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(525, 'Бутовские пруды', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '198', '2011-05-02 20:05:42', '2011-05-02 20:05:42', 55.530998710900001, 37.507903575900002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(525, 'Бутовские пруды', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 487, 1, 1, '198', '2011-05-02 20:05:42', '2011-05-02 20:05:42', 55.530998710900001, 37.507903575900002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(526, 'Супонево', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '199', '2011-05-02 20:05:45', '2011-05-02 20:05:45', 55.753056964199999, 36.872391700699993, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(526, 'Супонево', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 488, 1, 1, '199', '2011-05-02 20:05:45', '2011-05-02 20:05:45', 55.753056964199999, 36.872391700699993, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(527, 'Лесниковский карьер', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '200', '2011-05-02 20:05:48', '2011-05-02 20:05:48', 57.089308122599995, 40.420761108399979, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(527, 'Лесниковский карьер', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 489, 1, 1, '200', '2011-05-02 20:05:48', '2011-05-02 20:05:48', 57.089308122599995, 40.420761108399979, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(528, 'Щуково', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '201', '2011-05-02 20:05:51', '2011-05-02 20:05:51', 57.056136177699997, 40.188846588099999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(528, 'Щуково', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 490, 1, 1, '201', '2011-05-02 20:05:51', '2011-05-02 20:05:51', 57.056136177699997, 40.188846588099999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(529, 'Булатниковский пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '202', '2011-05-02 20:05:53', '2011-05-02 20:05:53', 55.554078041799997, 37.655296325700000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(529, 'Булатниковский пруд', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 491, 1, 1, '202', '2011-05-02 20:05:53', '2011-05-02 20:05:53', 55.554078041799997, 37.655296325700000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(530, 'Лесное озеро Луковое', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '203', '2011-05-02 20:05:56', '2011-05-02 20:05:56', 55.929202124600010, 38.540039062500000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(530, 'Лесное озеро Луковое', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 492, 1, 1, '203', '2011-05-02 20:05:56', '2011-05-02 20:05:56', 55.929202124600010, 38.540039062500000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(531, 'Песчанный карьер Аборино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '204', '2011-05-02 20:05:59', '2011-05-02 20:05:59', 55.857201969199998, 38.256454467799998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(531, 'Песчанный карьер Аборино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 493, 1, 1, '204', '2011-05-02 20:05:59', '2011-05-02 20:05:59', 55.857201969199998, 38.256454467799998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(532, 'р. Москва (Строгино)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '205', '2011-05-02 20:06:02', '2011-05-02 20:06:02', 55.804706032100000, 37.445354461699999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(532, 'р. Москва (Строгино)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 494, 1, 1, '205', '2011-05-02 20:06:02', '2011-05-02 20:06:02', 55.804706032100000, 37.445354461699999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(533, 'Марьино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '206', '2011-05-02 20:06:05', '2011-05-02 20:06:05', 55.640931810200001, 37.746577262899997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(533, 'Марьино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 495, 1, 1, '206', '2011-05-02 20:06:05', '2011-05-02 20:06:05', 55.640931810200001, 37.746577262899997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(534, 'bullupe (pri4al torpednix katerov biv6ii )', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'bullupe-pri4al-torpednix-katerov-biv6ii', '2011-05-02 20:06:08', '2011-05-02 20:06:08', 57.009804514300001, 23.975987434399997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(534, 'bullupe (pri4al torpednix katerov biv6ii )', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 496, 1, 1, 'bullupe-pri4al-torpednix-katerov-biv6ii', '2011-05-02 20:06:08', '2011-05-02 20:06:08', 57.009804514300001, 23.975987434399997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(535, 'bullupe (okolo mosta)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'bullupe-okolo-mosta', '2011-05-02 20:06:11', '2011-05-02 20:06:11', 57.038488383800001, 24.038944244399993, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(535, 'bullupe (okolo mosta)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 497, 1, 1, 'bullupe-okolo-mosta', '2011-05-02 20:06:11', '2011-05-02 20:06:11', 57.038488383800001, 24.038944244399993, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(536, 'ziemelupe', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'ziemelupe', '2011-05-02 20:06:14', '2011-05-02 20:06:14', 57.027687814499998, 24.009504318200001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(536, 'ziemelupe', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 498, 1, 1, 'ziemelupe', '2011-05-02 20:06:14', '2011-05-02 20:06:14', 57.027687814499998, 24.009504318200001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(537, 'ozer4o', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'ozer4o', '2011-05-02 20:06:17', '2011-05-02 20:06:17', 57.044091766599998, 24.013710022000001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(537, 'ozer4o', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 499, 1, 1, 'ozer4o', '2011-05-02 20:06:17', '2011-05-02 20:06:17', 57.044091766599998, 24.013710022000001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(538, 'шальдиха', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '207', '2011-05-02 20:06:20', '2011-05-02 20:06:20', 60.141504734799994, 32.365722656199999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(538, 'шальдиха', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 500, 1, 1, '207', '2011-05-02 20:06:20', '2011-05-02 20:06:20', 60.141504734799994, 32.365722656199999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(539, 'Пруд в Губеном углу', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '208', '2011-05-02 20:06:23', '2011-05-02 20:06:23', 56.820846559200000, 37.205114364600000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(539, 'Пруд в Губеном углу', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 501, 1, 1, '208', '2011-05-02 20:06:23', '2011-05-02 20:06:23', 56.820846559200000, 37.205114364600000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(540, 'База "Главкосмос"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '209', '2011-05-02 20:06:25', '2011-05-02 20:06:25', 58.650512507299979, 37.275238037100003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(540, 'База "Главкосмос"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 502, 1, 1, '209', '2011-05-02 20:06:25', '2011-05-02 20:06:26', 58.650512507299979, 37.275238037100003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(541, 'марковские карьеры', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '210', '2011-05-02 20:06:28', '2011-05-02 20:06:28', 57.040729838399997, 40.486335754399995, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(541, 'марковские карьеры', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 503, 1, 1, '210', '2011-05-02 20:06:28', '2011-05-02 20:06:28', 57.040729838399997, 40.486335754399995, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(542, 'Марковские болота', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '211', '2011-05-02 20:06:31', '2011-05-02 20:06:31', 57.023448463100003, 40.488395690899999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(542, 'Марковские болота', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 504, 1, 1, '211', '2011-05-02 20:06:31', '2011-05-02 20:06:31', 57.023448463100003, 40.488395690899999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(543, 'оз.Аткуль', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '212', '2011-05-02 20:06:34', '2011-05-02 20:06:34', 54.911356424199980, 61.921691894500000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(543, 'оз.Аткуль', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 505, 1, 1, '212', '2011-05-02 20:06:34', '2011-05-02 20:06:34', 54.911356424199980, 61.921691894500000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(544, 'Лотошинский рыбхоз', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '213', '2011-05-02 20:06:37', '2011-05-02 20:06:37', 56.133306912400002, 35.584716796899997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(544, 'Лотошинский рыбхоз', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 506, 1, 1, '213', '2011-05-02 20:06:37', '2011-05-02 20:06:37', 56.133306912400002, 35.584716796899997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(545, 'Золотой сазан', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '214', '2011-05-02 20:06:40', '2011-05-02 20:06:40', 55.385936843399996, 37.617530822799999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(545, 'Золотой сазан', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 507, 1, 1, '214', '2011-05-02 20:06:40', '2011-05-02 20:06:40', 55.385936843399996, 37.617530822799999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(546, 'Кистенево', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '215', '2011-05-02 20:06:43', '2011-05-02 20:06:43', 54.255498091699998, 41.546516418500019, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(546, 'Кистенево', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 508, 1, 1, '215', '2011-05-02 20:06:43', '2011-05-02 20:06:43', 54.255498091699998, 41.546516418500019, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(547, 'п Граждановка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '216', '2011-05-02 20:06:46', '2011-05-02 20:06:46', 52.976994605599998, 42.274575233499995, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(547, 'п Граждановка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 509, 1, 1, '216', '2011-05-02 20:06:46', '2011-05-02 20:06:46', 52.976994605599998, 42.274575233499995, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(548, 'пруды п. Озерный частный', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '217', '2011-05-02 20:06:49', '2011-05-02 20:06:49', 52.877289134999977, 42.192091941800001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(548, 'пруды п. Озерный частный', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 510, 1, 1, '217', '2011-05-02 20:06:49', '2011-05-02 20:06:49', 52.877289134999977, 42.192091941800001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(549, 'Пруды п.Озерный', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '218', '2011-05-02 20:06:52', '2011-05-02 20:06:52', 52.861823813300035, 42.156429290799998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(549, 'Пруды п.Озерный', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 511, 1, 1, '218', '2011-05-02 20:06:52', '2011-05-02 20:06:52', 52.861823813300035, 42.156429290799998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(550, 'Рыбалка у Бородина', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '219', '2011-05-02 20:06:55', '2011-05-02 20:06:55', 55.550630964699998, 37.770996093800001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(550, 'Рыбалка у Бородина', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 512, 1, 1, '219', '2011-05-02 20:06:55', '2011-05-02 20:06:55', 55.550630964699998, 37.770996093800001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(551, 'Колча', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '220', '2011-05-02 20:06:58', '2011-05-02 20:06:58', 55.206598083300001, 40.103702545199980, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(551, 'Колча', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 513, 1, 1, '220', '2011-05-02 20:06:58', '2011-05-02 20:06:58', 55.206598083300001, 40.103702545199980, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(552, 'Сахалин', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '221', '2011-05-02 20:07:01', '2011-05-02 20:07:01', 51.944264879000002, 142.734375000000000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(552, 'Сахалин', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 514, 1, 1, '221', '2011-05-02 20:07:01', '2011-05-02 20:07:01', 51.944264879000002, 142.734375000000000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(553, 'Пруд Печерники', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '222', '2011-05-02 20:07:04', '2011-05-02 20:07:04', 54.649207069999996, 39.218444824200027, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(553, 'Пруд Печерники', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 515, 1, 1, '222', '2011-05-02 20:07:04', '2011-05-02 20:07:04', 54.649207069999996, 39.218444824200027, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(554, 'Рыб хоз', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '223', '2011-05-02 20:07:07', '2011-05-02 20:07:07', 54.936610156600018, 38.895721435499979, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(554, 'Рыб хоз', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 516, 1, 1, '223', '2011-05-02 20:07:07', '2011-05-02 20:07:07', 54.936610156600018, 38.895721435499979, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(555, 'Рыбхоз "Осенка"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '224', '2011-05-02 20:07:10', '2011-05-02 20:07:10', 55.176907185899978, 38.530769348099980, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(555, 'Рыбхоз "Осенка"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 517, 1, 1, '224', '2011-05-02 20:07:10', '2011-05-02 20:07:10', 55.176907185899978, 38.530769348099980, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(556, 'Прудно. Хатунь', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '225', '2011-05-02 20:07:12', '2011-05-02 20:07:12', 55.007698986000001, 37.817516326899998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(556, 'Прудно. Хатунь', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 518, 1, 1, '225', '2011-05-02 20:07:12', '2011-05-02 20:07:12', 55.007698986000001, 37.817516326899998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(557, 'База отдыха "Колвица"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '226', '2011-05-02 20:07:15', '2011-05-02 20:07:15', 67.086421938100003, 33.207206726099997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(557, 'База отдыха "Колвица"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 519, 1, 1, '226', '2011-05-02 20:07:15', '2011-05-02 20:07:15', 67.086421938100003, 33.207206726099997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(558, 'По щучьему велению', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '227', '2011-05-02 20:07:18', '2011-05-02 20:07:18', 48.283192895500001, 46.933593750000000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(558, 'По щучьему велению', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 520, 1, 1, '227', '2011-05-02 20:07:18', '2011-05-02 20:07:18', 48.283192895500001, 46.933593750000000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(559, 'Рыбалка на Кольском полуострове. База отдыха "Вува"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '228', '2011-05-02 20:07:21', '2011-05-02 20:07:21', 68.087787198100003, 30.801029205299994, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(559, 'Рыбалка на Кольском полуострове. База отдыха "Вува"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 521, 1, 1, '228', '2011-05-02 20:07:21', '2011-05-02 20:07:21', 68.087787198100003, 30.801029205299994, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(560, 'Арсенал', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '229', '2011-05-02 20:07:24', '2011-05-02 20:07:24', 55.207479652699995, 35.677928924600003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(560, 'Арсенал', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 522, 1, 1, '229', '2011-05-02 20:07:24', '2011-05-02 20:07:24', 55.207479652699995, 35.677928924600003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(561, 'Саби', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '230', '2011-05-02 20:07:27', '2011-05-02 20:07:27', 55.574851201300000, 37.814769744899998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(561, 'Саби', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 523, 1, 1, '230', '2011-05-02 20:07:27', '2011-05-02 20:07:27', 55.574851201300000, 37.814769744899998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(562, 'Касимов', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '231', '2011-05-02 20:07:30', '2011-05-02 20:07:30', 54.950019755199996, 41.142253875700000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(562, 'Касимов', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 524, 1, 1, '231', '2011-05-02 20:07:30', '2011-05-02 20:07:30', 54.950019755199996, 41.142253875700000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(564, 'Десна ниже Расторопово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '233', '2011-05-02 20:07:36', '2011-05-02 20:07:36', 55.489844828000003, 37.456684112500000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(564, 'Десна ниже Расторопово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 526, 1, 1, '233', '2011-05-02 20:07:36', '2011-05-02 20:07:36', 55.489844828000003, 37.456684112500000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(567, 'ЧИСТЫЕ РОДНИКИ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '236', '2011-05-02 20:07:45', '2011-05-02 20:07:45', 55.896437203200001, 37.151416540100001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(567, 'ЧИСТЫЕ РОДНИКИ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 529, 1, 1, '236', '2011-05-02 20:07:45', '2011-05-02 20:07:45', 55.896437203200001, 37.151416540100001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(569, 'Бурсиловский порог (Амиакопровод)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '238', '2011-05-02 20:07:51', '2011-05-02 20:07:51', 48.121814547999996, 35.067329406699997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(569, 'Бурсиловский порог (Амиакопровод)', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 531, 1, 1, '238', '2011-05-02 20:07:51', '2011-05-02 20:07:51', 48.121814547999996, 35.067329406699997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(570, 'Залив', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '239', '2011-05-02 20:07:54', '2011-05-02 20:07:54', 48.095967461900017, 35.019264221199997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(570, 'Залив', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 532, 1, 1, '239', '2011-05-02 20:07:54', '2011-05-02 20:07:54', 48.095967461900017, 35.019264221199997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(571, 'Остров Таволжан', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '240', '2011-05-02 20:07:56', '2011-05-02 20:07:56', 48.076759992400000, 35.081233978299998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(571, 'Остров Таволжан', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 533, 1, 1, '240', '2011-05-02 20:07:56', '2011-05-02 20:07:56', 48.076759992400000, 35.081233978299998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(572, 'Раскаты волги', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '241', '2011-05-02 20:08:00', '2011-05-02 20:08:00', 45.854151738699997, 48.398895263699998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(572, 'Раскаты волги', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 534, 1, 1, '241', '2011-05-02 20:08:00', '2011-05-02 20:08:00', 45.854151738699997, 48.398895263699998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(573, 'Рыбалка в Ялте', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '242', '2011-05-02 20:08:02', '2011-05-02 20:08:02', 44.490597065700001, 34.163875579799999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(573, 'Рыбалка в Ялте', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 535, 1, 1, '242', '2011-05-02 20:08:02', '2011-05-02 20:08:02', 44.490597065700001, 34.163875579799999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(574, 'рыбалка в Мозамбике', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '243', '2011-05-02 20:08:05', '2011-05-02 20:08:05', -25.978464447199990, 32.595781087900001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(574, 'рыбалка в Мозамбике', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 536, 1, 1, '243', '2011-05-02 20:08:05', '2011-05-02 20:08:05', -25.978464447199990, 32.595781087900001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(575, 'Борисовские пруды', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '244', '2011-05-02 20:08:08', '2011-05-02 20:08:08', 55.631775410000003, 37.713489532499999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(575, 'Борисовские пруды', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 537, 1, 1, '244', '2011-05-02 20:08:08', '2011-05-02 20:08:08', 55.631775410000003, 37.713489532499999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(576, 'Канал им. Москвы', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '245', '2011-05-02 20:08:11', '2011-05-02 20:08:11', 56.117998193899986, 37.608432769799997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(576, 'Канал им. Москвы', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 538, 1, 1, '245', '2011-05-02 20:08:11', '2011-05-02 20:08:11', 56.117998193899986, 37.608432769799997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(577, 'Torsholma', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'torsholma', '2011-05-02 20:08:14', '2011-05-02 20:08:14', 60.361431791599998, 21.075897216800001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(577, 'Torsholma', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 539, 1, 1, 'torsholma', '2011-05-02 20:08:14', '2011-05-02 20:08:14', 60.361431791599998, 21.075897216800001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(578, 'Клинтане.', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '246', '2011-05-02 20:08:17', '2011-05-02 20:08:17', 56.600799058500002, 25.662431716899992, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(578, 'Клинтане.', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 540, 1, 1, '246', '2011-05-02 20:08:17', '2011-05-02 20:08:17', 56.600799058500002, 25.662431716899992, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(579, 'Кресты', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '247', '2011-05-02 20:08:20', '2011-05-02 20:08:20', 45.937728505899997, 38.080565929400002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(579, 'Кресты', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 541, 1, 1, '247', '2011-05-02 20:08:20', '2011-05-02 20:08:20', 45.937728505899997, 38.080565929400002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(580, 'Совхоз Фрязево', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '248', '2011-05-02 20:08:23', '2011-05-02 20:08:23', 55.727375922600018, 38.492231369000002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(580, 'Совхоз Фрязево', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 542, 1, 1, '248', '2011-05-02 20:08:23', '2011-05-02 20:08:23', 55.727375922600018, 38.492231369000002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(581, 'Аятский пруд', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '249', '2011-05-02 20:08:26', '2011-05-02 20:08:26', 57.373938418700000, 60.534667968800001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(581, 'Аятский пруд', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 543, 1, 1, '249', '2011-05-02 20:08:26', '2011-05-02 20:08:26', 57.373938418700000, 60.534667968800001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(585, 'м-н "Мир рыболова"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '253', '2011-05-02 20:08:38', '2011-05-02 20:08:38', 56.319868721499979, 43.946170806900000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(585, 'м-н "Мир рыболова"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 547, 1, 1, '253', '2011-05-02 20:08:38', '2011-05-02 20:08:38', 56.319868721499979, 43.946170806900000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(586, 'м-н "РыболовСпортЦентр"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '254', '2011-05-02 20:08:41', '2011-05-02 20:08:41', 56.299634248799997, 43.985309600800001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(586, 'м-н "РыболовСпортЦентр"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 548, 1, 1, '254', '2011-05-02 20:08:41', '2011-05-02 20:08:41', 56.299634248799997, 43.985309600800001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(587, 'м-н "Рыболов"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '255', '2011-05-02 20:08:44', '2011-05-02 20:08:44', 56.276911260500000, 43.980331420900001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(587, 'м-н "Рыболов"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 549, 1, 1, '255', '2011-05-02 20:08:44', '2011-05-02 20:08:44', 56.276911260500000, 43.980331420900001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(588, 'м-н "Специалист"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '256', '2011-05-02 20:08:47', '2011-05-02 20:08:47', 56.310633609500002, 44.021487235999999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(588, 'м-н "Специалист"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 550, 1, 1, '256', '2011-05-02 20:08:47', '2011-05-02 20:08:47', 56.310633609500002, 44.021487235999999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(589, 'м-н "Мир рыболова"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '257', '2011-05-02 20:08:50', '2011-05-02 20:08:50', 56.317893356900001, 44.023118019100011, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(589, 'м-н "Мир рыболова"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 551, 1, 1, '257', '2011-05-02 20:08:50', '2011-05-02 20:08:50', 56.317893356900001, 44.023118019100011, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(590, 'Волжанка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '258', '2011-05-02 20:08:53', '2011-05-02 20:08:53', 56.782545146999986, 36.289730071999998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(590, 'Волжанка', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 552, 1, 1, '258', '2011-05-02 20:08:53', '2011-05-02 20:08:53', 56.782545146999986, 36.289730071999998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(591, 'м-н "Рыбалка"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '259', '2011-05-02 20:08:56', '2011-05-02 20:08:56', 56.329577461400000, 43.992819786100000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(591, 'м-н "Рыбалка"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 553, 1, 1, '259', '2011-05-02 20:08:56', '2011-05-02 20:08:56', 56.329577461400000, 43.992819786100000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(592, 'м-н "Поплавок"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '260', '2011-05-02 20:08:59', '2011-05-02 20:08:59', 56.322438922300002, 44.035177230799995, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(592, 'м-н "Поплавок"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 554, 1, 1, '260', '2011-05-02 20:08:59', '2011-05-02 20:08:59', 56.322438922300002, 44.035177230799995, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(596, ' м-н "Дельта"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '264', '2011-05-02 20:09:11', '2011-05-02 20:09:11', 56.327983303399996, 43.984665870699978, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(596, ' м-н "Дельта"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 558, 1, 1, '264', '2011-05-02 20:09:11', '2011-05-02 20:09:11', 56.327983303399996, 43.984665870699978, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(598, 'м-н «Охота на рыбалку»', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '266', '2011-05-02 20:09:16', '2011-05-02 20:09:16', 56.317798156100011, 43.943896293600027, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(598, 'м-н «Охота на рыбалку»', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 560, 1, 1, '266', '2011-05-02 20:09:16', '2011-05-02 20:09:17', 56.317798156100011, 43.943896293600027, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(599, 'м-н "СпортКультУра"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '267', '2011-05-02 20:09:19', '2011-05-02 20:09:19', 56.249311117299996, 43.854761123700001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(599, 'м-н "СпортКультУра"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 561, 1, 1, '267', '2011-05-02 20:09:19', '2011-05-02 20:09:19', 56.249311117299996, 43.854761123700001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(600, 'м-н "СпортМаг"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '268', '2011-05-02 20:09:22', '2011-05-02 20:09:22', 56.236147564900001, 43.868150711100000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(600, 'м-н "СпортМаг"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 562, 1, 1, '268', '2011-05-02 20:09:22', '2011-05-02 20:09:22', 56.236147564900001, 43.868150711100000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(601, 'м-н "Охотник-Рыболов"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '269', '2011-05-02 20:09:25', '2011-05-02 20:09:25', 56.236576882500010, 43.866949081400001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(601, 'м-н "Охотник-Рыболов"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 563, 1, 1, '269', '2011-05-02 20:09:25', '2011-05-02 20:09:25', 56.236576882500010, 43.866949081400001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(602, 'м-н "Семейный"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '270', '2011-05-02 20:09:28', '2011-05-02 20:09:28', 56.259609871899997, 43.856735229500003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(602, 'м-н "Семейный"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 564, 1, 1, '270', '2011-05-02 20:09:28', '2011-05-02 20:09:28', 56.259609871899997, 43.856735229500003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(603, '"Дом Рыбака"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '271', '2011-05-02 20:09:31', '2011-05-02 20:09:31', 56.247165194700003, 43.865404128999998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(603, '"Дом Рыбака"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 565, 1, 1, '271', '2011-05-02 20:09:31', '2011-05-02 20:09:31', 56.247165194700003, 43.865404128999998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(604, 'м-н "Мир рыболова"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '272', '2011-05-02 20:09:34', '2011-05-02 20:09:34', 56.265640031899999, 43.913340568500011, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(604, 'м-н "Мир рыболова"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 566, 1, 1, '272', '2011-05-02 20:09:34', '2011-05-02 20:09:34', 56.265640031899999, 43.913340568500011, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(605, 'м-н "Снаряжение"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '273', '2011-05-02 20:09:37', '2011-05-02 20:09:37', 56.265449369499997, 43.913683891299996, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(605, 'м-н "Снаряжение"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 567, 1, 1, '273', '2011-05-02 20:09:37', '2011-05-02 20:09:37', 56.265449369499997, 43.913683891299996, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(608, 'ПОДСКАЖИТЕ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '276', '2011-05-02 20:09:46', '2011-05-02 20:09:46', 56.235813647800001, 36.948738098100002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(608, 'ПОДСКАЖИТЕ', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 570, 1, 1, '276', '2011-05-02 20:09:46', '2011-05-02 20:09:46', 56.235813647800001, 36.948738098100002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(609, 'Сенеж', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '277', '2011-05-02 20:09:48', '2011-05-02 20:09:48', 56.211191173800010, 36.989078521700002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(609, 'Сенеж', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 571, 1, 1, '277', '2011-05-02 20:09:48', '2011-05-02 20:09:48', 56.211191173800010, 36.989078521700002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(611, 'РЫБНАДЗОР', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '279', '2011-05-02 20:09:54', '2011-05-02 20:09:54', 55.600244560800000, 37.457542419399999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(611, 'РЫБНАДЗОР', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 573, 1, 1, '279', '2011-05-02 20:09:54', '2011-05-02 20:09:54', 55.600244560800000, 37.457542419399999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(612, 'Соколово', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '280', '2011-05-02 20:09:57', '2011-05-02 20:09:57', 53.058755129000012, 25.207443237299998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(612, 'Соколово', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 574, 1, 1, '280', '2011-05-02 20:09:57', '2011-05-02 20:09:57', 53.058755129000012, 25.207443237299998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(613, 'Счастье', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '281', '2011-05-02 20:10:00', '2011-05-02 20:10:00', 48.729813169399996, 39.178276061999995, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(613, 'Счастье', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 575, 1, 1, '281', '2011-05-02 20:10:00', '2011-05-02 20:10:00', 48.729813169399996, 39.178276061999995, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(614, 'Щекино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '282', '2011-05-02 20:10:03', '2011-05-02 20:10:03', 51.547829565999997, 34.479217529300001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(614, 'Щекино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 576, 1, 1, '282', '2011-05-02 20:10:03', '2011-05-02 20:10:03', 51.547829565999997, 34.479217529300001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(615, 'Стремоуховка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '283', '2011-05-02 20:10:06', '2011-05-02 20:10:06', 51.598400712399979, 35.080032348600000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(615, 'Стремоуховка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 577, 1, 1, '283', '2011-05-02 20:10:06', '2011-05-02 20:10:06', 51.598400712399979, 35.080032348600000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(616, 'Уборы', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '284', '2011-05-02 20:10:09', '2011-05-02 20:10:09', 55.723696327699997, 37.108082771299998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(616, 'Уборы', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 578, 1, 1, '284', '2011-05-02 20:10:09', '2011-05-02 20:10:09', 55.723696327699997, 37.108082771299998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(617, 'Шебанцево', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '285', '2011-05-02 20:10:12', '2011-05-02 20:10:12', 55.264165164399998, 37.750815153100000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(617, 'Шебанцево', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 579, 1, 1, '285', '2011-05-02 20:10:12', '2011-05-02 20:10:12', 55.264165164399998, 37.750815153100000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(618, '«Чаша»', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '286', '2011-05-02 20:10:15', '2011-05-02 20:10:15', 55.537373893999998, 37.135677337600001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(618, '«Чаша»', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 580, 1, 1, '286', '2011-05-02 20:10:15', '2011-05-02 20:10:15', 55.537373893999998, 37.135677337600001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(619, 'Green canyon', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'green-canyon', '2011-05-02 20:10:18', '2011-05-02 20:10:18', 36.900729348399999, 31.577796935999988, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(619, 'Green canyon', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 581, 1, 1, 'green-canyon', '2011-05-02 20:10:18', '2011-05-02 20:10:18', 36.900729348399999, 31.577796935999988, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(620, 'Озеро Горелое', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '287', '2011-05-02 20:10:21', '2011-05-02 20:10:21', 56.239248084200000, 37.847557067899970, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(620, 'Озеро Горелое', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 582, 1, 1, '287', '2011-05-02 20:10:21', '2011-05-02 20:10:21', 56.239248084200000, 37.847557067899970, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(621, 'Песчанный карьер г. Электроугли МО', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '288', '2011-05-02 20:10:24', '2011-05-02 20:10:24', 55.773676529499987, 38.186416626000003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(621, 'Песчанный карьер г. Электроугли МО', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 583, 1, 1, '288', '2011-05-02 20:10:24', '2011-05-02 20:10:24', 55.773676529499987, 38.186416626000003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(622, 'Морозовский пруд', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '289', '2011-05-02 20:10:27', '2011-05-02 20:10:27', 56.237435503400000, 38.065567016599978, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(622, 'Морозовский пруд', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 584, 1, 1, '289', '2011-05-02 20:10:27', '2011-05-02 20:10:27', 56.237435503400000, 38.065567016599978, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(623, 'Яковлевское', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '290', '2011-05-02 20:10:30', '2011-05-02 20:10:30', 55.444205751500000, 37.962570190399987, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(623, 'Яковлевское', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 585, 1, 1, '290', '2011-05-02 20:10:30', '2011-05-02 20:10:30', 55.444205751500000, 37.962570190399987, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(624, 'р. Малога', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '291', '2011-05-02 20:10:33', '2011-05-02 20:10:33', 57.811205972899998, 35.988292694099997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(624, 'р. Малога', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 586, 1, 1, '291', '2011-05-02 20:10:33', '2011-05-02 20:10:33', 57.811205972899998, 35.988292694099997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(625, 'р. Малога', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '292', '2011-05-02 20:10:35', '2011-05-02 20:10:35', 57.933763241500010, 36.363458633400001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(625, 'р. Малога', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 587, 1, 1, '292', '2011-05-02 20:10:35', '2011-05-02 20:10:36', 57.933763241500010, 36.363458633400001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(626, 'Капыстичи', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '293', '2011-05-02 20:10:38', '2011-05-02 20:10:38', 51.680858005100028, 34.825973510700003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(626, 'Капыстичи', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 588, 1, 1, '293', '2011-05-02 20:10:38', '2011-05-02 20:10:38', 51.680858005100028, 34.825973510700003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(627, 'Лыткино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '294', '2011-05-02 20:10:41', '2011-05-02 20:10:41', 56.022324498300001, 36.993713378899997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(627, 'Лыткино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 589, 1, 1, '294', '2011-05-02 20:10:41', '2011-05-02 20:10:41', 56.022324498300001, 36.993713378899997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(628, 'м-н "Серебрянный ручей"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '295', '2011-05-02 20:10:44', '2011-05-02 20:10:44', 56.264901209599998, 43.912696838400002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(628, 'м-н "Серебрянный ручей"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 590, 1, 1, '295', '2011-05-02 20:10:44', '2011-05-02 20:10:44', 56.264901209599998, 43.912696838400002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(629, 'г.Лысково, Волга', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '296', '2011-05-02 20:10:47', '2011-05-02 20:10:47', 56.062165487500010, 45.041284561199980, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(629, 'г.Лысково, Волга', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 591, 1, 1, '296', '2011-05-02 20:10:47', '2011-05-02 20:10:47', 56.062165487500010, 45.041284561199980, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(630, 'Озеро Охотничье', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '297', '2011-05-02 20:10:50', '2011-05-02 20:10:50', 60.531279271199999, 29.902038574199999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(630, 'Озеро Охотничье', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 592, 1, 1, '297', '2011-05-02 20:10:50', '2011-05-02 20:10:50', 60.531279271199999, 29.902038574199999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(631, 'ООО "РОСС"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '298', '2011-05-02 20:10:53', '2011-05-02 20:10:53', 56.425295020999997, 37.995185852100001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(631, 'ООО "РОСС"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 593, 1, 1, '298', '2011-05-02 20:10:53', '2011-05-02 20:10:53', 56.425295020999997, 37.995185852100001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(632, 'Яузское водохран. База', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '299', '2011-05-02 20:10:56', '2011-05-02 20:10:56', 55.885036049299998, 35.112476348900003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(632, 'Яузское водохран. База', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 594, 1, 1, '299', '2011-05-02 20:10:56', '2011-05-02 20:10:56', 55.885036049299998, 35.112476348900003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(633, 'оз.Кафтино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '300', '2011-05-02 20:10:59', '2011-05-02 20:10:59', 57.968787511300000, 34.230308532700001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(633, 'оз.Кафтино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 595, 1, 1, '300', '2011-05-02 20:10:59', '2011-05-02 20:10:59', 57.968787511300000, 34.230308532700001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(634, 'Река Ока', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '301', '2011-05-02 20:11:02', '2011-05-02 20:11:02', 54.814733252399996, 37.237472534200002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(634, 'Река Ока', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 596, 1, 1, '301', '2011-05-02 20:11:02', '2011-05-02 20:11:02', 54.814733252399996, 37.237472534200002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(635, 'Река Ока', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '302', '2011-05-02 20:11:05', '2011-05-02 20:11:05', 54.863962939899970, 37.521743774399987, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(635, 'Река Ока', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 597, 1, 1, '302', '2011-05-02 20:11:05', '2011-05-02 20:11:05', 54.863962939899970, 37.521743774399987, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(636, 'Сычевское водохранилище', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '303', '2011-05-02 20:11:08', '2011-05-02 20:11:08', 55.979177017200001, 36.230163574199999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(636, 'Сычевское водохранилище', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 598, 1, 1, '303', '2011-05-02 20:11:08', '2011-05-02 20:11:08', 55.979177017200001, 36.230163574199999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(637, 'Река Пахра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '304', '2011-05-02 20:11:11', '2011-05-02 20:11:11', 55.484580541400000, 37.817870378499997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(637, 'Река Пахра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 599, 1, 1, '304', '2011-05-02 20:11:11', '2011-05-02 20:11:11', 55.484580541400000, 37.817870378499997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(638, 'Алешинский пруд', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '305', '2011-05-02 20:11:14', '2011-05-02 20:11:14', 56.421497518599978, 37.169837951700018, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(638, 'Алешинский пруд', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 600, 1, 1, '305', '2011-05-02 20:11:14', '2011-05-02 20:11:14', 56.421497518599978, 37.169837951700018, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(639, 'Каба', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '306', '2011-05-02 20:11:17', '2011-05-02 20:11:17', 64.878395817200001, 29.980316162099999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(639, 'Каба', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 601, 1, 1, '306', '2011-05-02 20:11:17', '2011-05-02 20:11:17', 64.878395817200001, 29.980316162099999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(640, 'Порог над форелевым', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '307', '2011-05-02 20:11:20', '2011-05-02 20:11:20', 64.865274706100010, 30.513153076199998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(640, 'Порог над форелевым', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 602, 1, 1, '307', '2011-05-02 20:11:20', '2011-05-02 20:11:20', 64.865274706100010, 30.513153076199998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(641, 'Река Угра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '308', '2011-05-02 20:11:22', '2011-05-02 20:11:22', 54.699779112199998, 35.616474151600002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(641, 'Река Угра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 603, 1, 1, '308', '2011-05-02 20:11:22', '2011-05-02 20:11:23', 54.699779112199998, 35.616474151600002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(642, 'п. Коробово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '309', '2011-05-02 20:11:25', '2011-05-02 20:11:25', 55.538636664800002, 37.821292877200001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(642, 'п. Коробово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 604, 1, 1, '309', '2011-05-02 20:11:25', '2011-05-02 20:11:25', 55.538636664800002, 37.821292877200001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(643, 'Река Угра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '310', '2011-05-02 20:11:28', '2011-05-02 20:11:28', 54.694471759000002, 35.586090087899997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(643, 'Река Угра', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 605, 1, 1, '310', '2011-05-02 20:11:28', '2011-05-02 20:11:28', 54.694471759000002, 35.586090087899997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(644, 'Место лова судака', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '311', '2011-05-02 20:11:31', '2011-05-02 20:11:31', 54.658343482500001, 39.842605590799998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(644, 'Место лова судака', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 606, 1, 1, '311', '2011-05-02 20:11:31', '2011-05-02 20:11:31', 54.658343482500001, 39.842605590799998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(645, 'Песье', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '312', '2011-05-02 20:11:34', '2011-05-02 20:11:34', 55.405141947299988, 37.371025085399999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(645, 'Песье', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 607, 1, 1, '312', '2011-05-02 20:11:34', '2011-05-02 20:11:34', 55.405141947299988, 37.371025085399999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(646, 'Таболово', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '313', '2011-05-02 20:11:37', '2011-05-02 20:11:37', 55.917756490099997, 36.050434112500000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(646, 'Таболово', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 608, 1, 1, '313', '2011-05-02 20:11:37', '2011-05-02 20:11:37', 55.917756490099997, 36.050434112500000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(647, 'Истра река', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '314', '2011-05-02 20:11:40', '2011-05-02 20:11:40', 56.119505416299987, 36.928567886399996, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(647, 'Истра река', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 609, 1, 1, '314', '2011-05-02 20:11:40', '2011-05-02 20:11:40', 56.119505416299987, 36.928567886399996, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(648, 'Зубово', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '315', '2011-05-02 20:11:43', '2011-05-02 20:11:43', 56.017575356100011, 35.824871063200000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(648, 'Зубово', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 610, 1, 1, '315', '2011-05-02 20:11:43', '2011-05-02 20:11:43', 56.017575356100011, 35.824871063200000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(649, 'ВИЛАР', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '316', '2011-05-02 20:11:46', '2011-05-02 20:11:46', 55.564174781100000, 37.593240737899997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(649, 'ВИЛАР', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 611, 1, 1, '316', '2011-05-02 20:11:46', '2011-05-02 20:11:46', 55.564174781100000, 37.593240737899997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(650, 'Русановка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '317', '2011-05-02 20:11:49', '2011-05-02 20:11:49', 50.446027359399999, 30.590744018599999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(650, 'Русановка', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 612, 1, 1, '317', '2011-05-02 20:11:49', '2011-05-02 20:11:49', 50.446027359399999, 30.590744018599999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(651, 'Отель "Анастасия"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '318', '2011-05-02 20:11:52', '2011-05-02 20:11:52', 51.867694048600001, 104.832057953000003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(651, 'Отель "Анастасия"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 613, 1, 1, '318', '2011-05-02 20:11:52', '2011-05-02 20:11:52', 51.867694048600001, 104.832057953000003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(652, 'ООО "Двенди"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '319', '2011-05-02 20:11:55', '2011-05-02 20:11:55', 55.732656049099980, 38.326320648199996, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(652, 'ООО "Двенди"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 614, 1, 1, '319', '2011-05-02 20:11:55', '2011-05-02 20:11:55', 55.732656049099980, 38.326320648199996, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(653, 'Небольшой прудик', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '320', '2011-05-02 20:11:58', '2011-05-02 20:11:58', 56.223886130200000, 37.032852172900000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(653, 'Небольшой прудик', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 615, 1, 1, '320', '2011-05-02 20:11:58', '2011-05-02 20:11:58', 56.223886130200000, 37.032852172900000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(654, 'Пруд в Тараканово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '321', '2011-05-02 20:12:01', '2011-05-02 20:12:01', 56.337475888599997, 37.031478881799998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(654, 'Пруд в Тараканово', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 616, 1, 1, '321', '2011-05-02 20:12:01', '2011-05-02 20:12:01', 56.337475888599997, 37.031478881799998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(655, 'Карьер в Толстяково', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '322', '2011-05-02 20:12:04', '2011-05-02 20:12:04', 56.279198461699998, 36.987791061400003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(655, 'Карьер в Толстяково', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 617, 1, 1, '322', '2011-05-02 20:12:04', '2011-05-02 20:12:04', 56.279198461699998, 36.987791061400003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(656, '"Бездонка"', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '323', '2011-05-02 20:12:07', '2011-05-02 20:12:07', 56.241966794600003, 36.973114013699998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(656, '"Бездонка"', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 618, 1, 1, '323', '2011-05-02 20:12:07', '2011-05-02 20:12:07', 56.241966794600003, 36.973114013699998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(657, 'Рыбхоз "Сенеж"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '324', '2011-05-02 20:12:10', '2011-05-02 20:12:10', 56.221762642800002, 37.010622024499995, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(657, 'Рыбхоз "Сенеж"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 619, 1, 1, '324', '2011-05-02 20:12:10', '2011-05-02 20:12:10', 56.221762642800002, 37.010622024499995, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(658, 'Сенеж, Малиновые острова', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '325', '2011-05-02 20:12:13', '2011-05-02 20:12:13', 56.208231594700003, 37.021865844699995, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(658, 'Сенеж, Малиновые острова', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 620, 1, 1, '325', '2011-05-02 20:12:13', '2011-05-02 20:12:13', 56.208231594700003, 37.021865844699995, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(659, 'Полубарское', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '326', '2011-05-02 20:12:16', '2011-05-02 20:12:16', 56.698097106900001, 38.146247863799999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(659, 'Полубарское', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 621, 1, 1, '326', '2011-05-02 20:12:16', '2011-05-02 20:12:16', 56.698097106900001, 38.146247863799999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(660, 'Эколенд (закрыт)', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '327', '2011-05-02 20:12:19', '2011-05-02 20:12:19', 56.375802850500001, 37.153701782200002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(660, 'Эколенд (закрыт)', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 622, 1, 1, '327', '2011-05-02 20:12:19', '2011-05-02 20:12:19', 56.375802850500001, 37.153701782200002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(661, 'р. Осётр', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '328', '2011-05-02 20:12:22', '2011-05-02 20:12:22', 54.486294827899997, 38.637199401899998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(661, 'р. Осётр', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 623, 1, 1, '328', '2011-05-02 20:12:22', '2011-05-02 20:12:22', 54.486294827899997, 38.637199401899998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(662, 'Боровково', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '329', '2011-05-02 20:12:25', '2011-05-02 20:12:25', 55.981385955500002, 38.541927337600001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(662, 'Боровково', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 624, 1, 1, '329', '2011-05-02 20:12:25', '2011-05-02 20:12:25', 55.981385955500002, 38.541927337600001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(663, 'Торбеевское озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '330', '2011-05-02 20:12:28', '2011-05-02 20:12:28', 56.327198096699995, 38.267784118700000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(663, 'Торбеевское озеро', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 625, 1, 1, '330', '2011-05-02 20:12:28', '2011-05-02 20:12:28', 56.327198096699995, 38.267784118700000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(664, 'Клинский рыбхоз (Дятлово)', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '331', '2011-05-02 20:12:31', '2011-05-02 20:12:31', 56.272717702900017, 36.256256103500000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(664, 'Клинский рыбхоз (Дятлово)', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 626, 1, 1, '331', '2011-05-02 20:12:31', '2011-05-02 20:12:31', 56.272717702900017, 36.256256103500000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(665, '"Рыбинка"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '332', '2011-05-02 20:12:34', '2011-05-02 20:12:34', 58.053541960899970, 38.251647949199999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(665, '"Рыбинка"', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 627, 1, 1, '332', '2011-05-02 20:12:34', '2011-05-02 20:12:34', 58.053541960899970, 38.251647949199999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(666, 'Сосенки', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '333', '2011-05-02 20:12:37', '2011-05-02 20:12:37', 55.557670448300001, 37.444667816199996, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(666, 'Сосенки', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 628, 1, 1, '333', '2011-05-02 20:12:37', '2011-05-02 20:12:37', 55.557670448300001, 37.444667816199996, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(667, 'Станиславские пруды', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '334', '2011-05-02 20:12:40', '2011-05-02 20:12:40', 55.520419699000001, 37.361497878999998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(667, 'Станиславские пруды', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 629, 1, 1, '334', '2011-05-02 20:12:40', '2011-05-02 20:12:40', 55.520419699000001, 37.361497878999998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(668, 'Шамбай-97', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '97-1', '2011-05-02 20:12:43', '2011-05-02 20:12:43', 46.980018122600001, 47.533721923800002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(668, 'Шамбай-97', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 630, 1, 1, '97-1', '2011-05-02 20:12:43', '2011-05-02 20:12:43', 46.980018122600001, 47.533721923800002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(669, 'База 77-99', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '77-99', '2011-05-02 20:12:45', '2011-05-02 20:12:45', 46.831777837899999, 47.681694030800003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(669, 'База 77-99', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 631, 1, 1, '77-99', '2011-05-02 20:12:45', '2011-05-02 20:12:46', 46.831777837899999, 47.681694030800003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(670, 'Дурыкино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '335', '2011-05-02 20:12:48', '2011-05-02 20:12:48', 56.044335617900003, 37.147521972699998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(670, 'Дурыкино', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 632, 1, 1, '335', '2011-05-02 20:12:48', '2011-05-02 20:12:48', 56.044335617900003, 37.147521972699998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(671, 'Теряевские пруды', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '336', '2011-05-02 20:12:51', '2011-05-02 20:12:51', 56.173511096300011, 36.107339859000000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(671, 'Теряевские пруды', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 633, 1, 1, '336', '2011-05-02 20:12:51', '2011-05-02 20:12:51', 56.173511096300011, 36.107339859000000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(672, 'Литвиново', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '337', '2011-05-02 20:12:54', '2011-05-02 20:12:54', 56.022756209499995, 38.133544921899997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(672, 'Литвиново', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 634, 1, 1, '337', '2011-05-02 20:12:54', '2011-05-02 20:12:54', 56.022756209499995, 38.133544921899997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(673, 'ВНИИ кормов (Лобня)', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '338', '2011-05-02 20:12:57', '2011-05-02 20:12:57', 56.043400760200001, 37.465481758099997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(673, 'ВНИИ кормов (Лобня)', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 635, 1, 1, '338', '2011-05-02 20:12:57', '2011-05-02 20:12:57', 56.043400760200001, 37.465481758099997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(674, 'Марьино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '339', '2011-05-02 20:13:00', '2011-05-02 20:13:00', 55.647470786000000, 37.769193649300000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(674, 'Марьино', '', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 636, 1, 1, '339', '2011-05-02 20:13:00', '2011-05-02 20:13:00', 55.647470786000000, 37.769193649300000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(675, 'Фанни фишинг', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '340', '2011-05-02 20:13:03', '2011-05-02 20:13:03', 55.075222516499998, 37.316780090300000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(675, 'Фанни фишинг', '', NULL, 0, '', NULL, NULL, NULL, NULL, NULL, 637, 1, 1, '340', '2011-05-02 20:13:03', '2011-05-02 20:13:03', 55.075222516499998, 37.316780090300000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(676, 'Отмель на угре', '', 1.00, 1, '', 3, 3, 1, 1, 5, NULL, 7, 7, '32', '2011-05-03 23:03:26', '2011-05-03 23:03:26', 54.830381617699999, 35.025039370300000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(676, 'Отмель на угре', '', 1.00, 1, '', 3, 3, 1, 1, 5, 638, 7, 7, '32', '2011-05-03 23:03:26', '2011-05-03 23:03:26', 54.830381617699999, 35.025039370300000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(676, 'Отмель на угре', '', 1.00, 1, '', 3, 3, 1, 1, 5, 638, 7, 7, '32', '2011-05-03 23:03:26', '2011-05-03 23:22:10', 54.830381617699999, 35.025039370300000, 3);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(676, 'Отмель на угре', '<p>Удобный спуск, чистая вода, да и просто красивое место</p>', 1.00, 1, '', 3, 3, 1, 1, 5, 638, 7, 7, '32', '2011-05-03 23:03:26', '2011-06-02 01:00:11', 54.830381617699999, 35.025039370300000, 4);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(677, 'Мурзино', 'Небольшой частный пруд,ловля в основном с берега (есть пару мостков),можно договориться и о лодке.\nИз рыбы: карась с ладошку,но как из пулемёта,и карп,тоже мелкий в основном до 1кг.,но есть и экземпляры за 3 кг.Хозяин мудаг редкостный,пойманаю рыбу отпускать нельзя,поэтому будте готовы наловить кучу мелкого карпа и оплатить его по нефиговой цене.', 2.00, 1, 'Оплата только за вес,270руб.-Карп;80руб.-Карась;100руб.-парковка.', 1, 2, 1, 3, 5, NULL, 8, 8, '56', '2011-06-02 00:44:25', '2011-06-02 00:44:25', 54.957228447200002, 36.348567376699997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(677, 'Мурзино', 'Небольшой частный пруд,ловля в основном с берега (есть пару мостков),можно договориться и о лодке.\nИз рыбы: карась с ладошку,но как из пулемёта,и карп,тоже мелкий в основном до 1кг.,но есть и экземпляры за 3 кг.Хозяин мудаг редкостный,пойманаю рыбу отпускать нельзя,поэтому будте готовы наловить кучу мелкого карпа и оплатить его по нефиговой цене.', 2.00, 1, 'Оплата только за вес,270руб.-Карп;80руб.-Карась;100руб.-парковка.', 1, 2, 1, 3, 5, 639, 8, 8, '56', '2011-06-02 00:44:25', '2011-06-02 00:44:25', 54.957228447200002, 36.348567376699997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(677, 'Мурзино', '<p>Небольшой частный пруд,ловля в основном с берега (есть пару мостков),можно договориться и о лодке. Из рыбы: карась с ладошку,но как из пулемёта,и карп,тоже мелкий в основном до 1кг.,но есть и экземпляры за 3 кг.Хозяин мудаг редкостный,пойманаю рыбу отпускать нельзя,поэтому будте готовы наловить кучу мелкого карпа и оплатить его по нефиговой цене.</p>', 2.00, 1, '<p>Оплата только за вес,270руб.-Карп;80руб.-Карась;100руб.-парковка.</p>', 1, 2, 1, 3, 5, 639, 8, 8, '56', '2011-06-02 00:44:25', '2011-06-02 00:51:31', 54.949169879899998, 36.338653932200003, 3);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(678, 'Ресса', 'Спуститься тяжело все заросшее.', 1.00, 1, '', 4, 3, 2, 1, 5, NULL, 7, 7, '64', '2011-06-06 18:44:34', '2011-06-06 18:44:34', 54.674322237299997, 35.051389391699999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(678, 'Ресса', 'Спуститься тяжело все заросшее.', 1.00, 1, '', 4, 3, 2, 1, 5, 640, 7, 7, '64', '2011-06-06 18:44:34', '2011-06-06 18:44:34', 54.674322237299997, 35.051389391699999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(679, 'Плиты на протве', 'Давно заброшеный брод', 1.00, 1, '', 4, 3, 1, 1, 5, NULL, 7, 7, '93', '2011-06-07 21:10:05', '2011-06-07 21:10:05', 55.090099783799999, 36.560428777299997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(679, 'Плиты на протве', 'Давно заброшеный брод', 1.00, 1, '', 4, 3, 1, 1, 5, 641, 7, 7, '93', '2011-06-07 21:10:05', '2011-06-07 21:10:06', 55.090099783799999, 36.560428777299997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(679, 'Плиты на протве', '<p>Давно заброшеный брод</p>', 1.00, 1, '', 4, 3, 1, 1, 5, 641, 7, 7, '93', '2011-06-07 21:10:05', '2011-06-08 01:27:05', 55.090084433800001, 36.560469010399999, 3);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(680, 'Родник на протве', '', 3.00, 1, '', 2, 3, 1, 1, 5, NULL, 7, 7, '97', '2011-06-07 21:30:59', '2011-06-07 21:30:59', 55.097884955399998, 36.579096952100002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(680, 'Родник на протве', '', 3.00, 1, '', 2, 3, 1, 1, 5, 642, 7, 7, '97', '2011-06-07 21:30:59', '2011-06-07 21:30:59', 55.097884955399998, 36.579096952100002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(680, 'Родник на протве', '', 3.00, 1, '', 2, 3, 1, 1, 5, 642, 7, 7, '97', '2011-06-07 21:30:59', '2011-06-08 01:28:02', 55.097880351299999, 36.579110363100000, 3);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(681, 'Песчаная коса на протве', '', 1.00, 1, '', 3, 1, 1, 1, 5, NULL, 7, 7, '98', '2011-06-07 21:32:16', '2011-06-07 21:32:16', 55.151009541699999, 36.550678947500003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(681, 'Песчаная коса на протве', '', 1.00, 1, '', 3, 1, 1, 1, 5, 643, 7, 7, '98', '2011-06-07 21:32:16', '2011-06-07 21:32:17', 55.151009541699999, 36.550678947500003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(681, 'Песчаная коса на протве', '', 1.00, 1, '', 3, 1, 1, 1, 5, 643, 7, 7, '98', '2011-06-07 21:32:16', '2011-06-08 01:28:29', 55.151004943700002, 36.550670900900002, 3);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(682, 'База Золотые пески', '', NULL, 0, '1200 руб. с человека в сутки на основном месте.\n\n700 руб с человека в сутки на дополнительном месте.\n\nЛодки и моторы\n( цена при предварительной оплате /  цена при оплате на базе) за световой день\n\nЛодка КАЗАНКА 5М4 с эхолотом и мотором Меркурий 40\n	1500/2000руб.\nПластиковая лодка SAVA с мотором Меркурий 15 	800/ 1000руб.\nЛодка Крым и другие с мотором Меркурий 15 	800/ 1000руб.\nЛодка без мотора 	300/ 400руб.\n\nЦены на лодки и моторы указаны без учета ГСМ и услуг егеря.\n\nЦена 1литра ГСМ (бензин с маслом) 30-35руб.\n\nНа территории Базы  работает кафе, где Вас ждет теплая, уютная обстановка, улыбки персонала и большой ассортимент вкусных и любимых блюд: горячие и холодные закуски, первые и вторые блюда, десерты, выпечка, мороженое.Средняя цена за полноценное 3-х разовое питание 650-730 рублей . В т.ч.завтрак - ок.140руб, обед - ок.300руб., ужин ок.270руб.', NULL, NULL, NULL, 1, 5, NULL, 1, 1, '154', '2011-06-08 01:55:10', '2011-06-08 01:55:10', 46.823242071400003, 47.608944828799999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(682, 'База Золотые пески', '', NULL, 0, '1200 руб. с человека в сутки на основном месте.\n\n700 руб с человека в сутки на дополнительном месте.\n\nЛодки и моторы\n( цена при предварительной оплате /  цена при оплате на базе) за световой день\n\nЛодка КАЗАНКА 5М4 с эхолотом и мотором Меркурий 40\n	1500/2000руб.\nПластиковая лодка SAVA с мотором Меркурий 15 	800/ 1000руб.\nЛодка Крым и другие с мотором Меркурий 15 	800/ 1000руб.\nЛодка без мотора 	300/ 400руб.\n\nЦены на лодки и моторы указаны без учета ГСМ и услуг егеря.\n\nЦена 1литра ГСМ (бензин с маслом) 30-35руб.\n\nНа территории Базы  работает кафе, где Вас ждет теплая, уютная обстановка, улыбки персонала и большой ассортимент вкусных и любимых блюд: горячие и холодные закуски, первые и вторые блюда, десерты, выпечка, мороженое.Средняя цена за полноценное 3-х разовое питание 650-730 рублей . В т.ч.завтрак - ок.140руб, обед - ок.300руб., ужин ок.270руб.', NULL, NULL, NULL, 1, 5, 644, 1, 1, '154', '2011-06-08 01:55:10', '2011-06-08 01:55:11', 46.823242071400003, 47.608944828799999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(682, 'База Золотые пески', '', NULL, 0, '<p><strong>Жилье</strong></p>\r\n<p>1200 руб. с человека в сутки на основном месте. </p>\r\n<p>700 руб с человека в сутки на дополнительном месте. </p>\r\n<p><strong>Лодки и моторы</strong> ( цена при предварительной оплате / цена при оплате на базе) за световой день </p>\r\n<p>Лодка КАЗАНКА 5М4 с эхолотом и мотором Меркурий 40 1500/2000руб. </p>\r\n<p>Пластиковая лодка SAVA с мотором Меркурий 15 800/ 1000руб. </p>\r\n<p>Лодка Крым и другие с мотором Меркурий 15 800/ 1000руб. </p>\r\n<p>Лодка без мотора 300/ 400руб. Цены на лодки и моторы указаны без учета ГСМ и услуг егеря. </p>\r\n<p>Цена 1литра ГСМ (бензин с маслом) 30-35руб.&nbsp;</p>\r\n<p><strong>Еда</strong></p>\r\n<p>На территории Базы работает кафе, где Вас ждет теплая, уютная обстановка, улыбки персонала и большой ассортимент вкусных и любимых блюд: горячие и холодные закуски, первые и вторые блюда, десерты, выпечка, мороженое.Средняя цена за полноценное 3-х разовое питание 650-730 рублей . В т.ч.завтрак - ок.140руб, обед - ок.300руб., ужин ок.270руб.</p>', NULL, NULL, NULL, 1, 5, 644, 1, 1, '154', '2011-06-08 01:55:10', '2011-06-08 02:03:30', 46.823242071400003, 47.608944828799999, 3);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(682, 'База Золотые пески', '<p><span style="color: black;"><span style="font-family: Verdana;">База Золотые пески</span><span style="font-family: Verdana;"> <span style="font-family: Verdana;">расположена</span> <span style="font-family: Verdana;">на правом берегу Волги</span> <span style="font-family: Verdana;">в Енотаевском районе Астраханской области, близ села Замьяны.</span> <span style="font-family: Verdana;">НА 1321 км.</span><span style="font-family: Verdana;"> ФЕДЕРАЛЬНОЙ ТРАССЫ</span> <span style="font-family: Verdana;">М-6.</span> </span></span><span style="font-family: Verdana;"><span style="color: black;">Трофейная ловля &ndash; сома, сазана, жереха, судака, щуки, окуня, леща, линя и буфало. </span></span></p>', NULL, 0, '<p><strong>Жилье</strong></p>\r\n<p>1200 руб. с человека в сутки на основном месте.</p>\r\n<p>700 руб с человека в сутки на дополнительном месте.</p>\r\n<p><strong>Лодки и моторы</strong> ( цена при предварительной оплате / цена при оплате на базе) за световой день</p>\r\n<p>Лодка КАЗАНКА 5М4 с эхолотом и мотором Меркурий 40 1500/2000руб.</p>\r\n<p>Пластиковая лодка SAVA с мотором Меркурий 15 800/ 1000руб.</p>\r\n<p>Лодка Крым и другие с мотором Меркурий 15 800/ 1000руб.</p>\r\n<p>Лодка без мотора 300/ 400руб. Цены на лодки и моторы указаны без учета ГСМ и услуг егеря.</p>\r\n<p>Цена 1литра ГСМ (бензин с маслом) 30-35руб.&nbsp;</p>\r\n<p><strong>Еда</strong></p>\r\n<p>На территории Базы работает кафе, где Вас ждет теплая, уютная обстановка, улыбки персонала и большой ассортимент вкусных и любимых блюд: горячие и холодные закуски, первые и вторые блюда, десерты, выпечка, мороженое.Средняя цена за полноценное 3-х разовое питание 650-730 рублей . В т.ч.завтрак - ок.140руб, обед - ок.300руб., ужин ок.270руб.</p>', NULL, NULL, NULL, 1, 5, 644, 1, 1, '154', '2011-06-08 01:55:10', '2011-06-08 02:14:00', 46.823242071400003, 47.608944828799999, 4);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(683, ' Цильма', ' Основная рыба хариус, встречается щука, сиг. Ловил сколько унести можно. Основная проблема-тяжело добраться до водоема)))', 1.00, 1, '', 3, 3, 2, 1, 3, NULL, 13, 13, '176', '2011-06-18 18:06:57', '2011-06-18 18:06:57', 65.298606655399993, 49.434571633899999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(684, 'здесь можно наловить карасиков для живца', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, NULL, 12, 12, '184', '2011-06-18 20:02:35', '2011-06-18 20:02:35', 55.071433138499998, 38.778347609199997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(684, 'здесь можно наловить карасиков для живца', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, 645, 12, 12, '184', '2011-06-18 20:02:35', '2011-06-18 20:02:35', 55.071433138499998, 38.778347609199997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(685, 'Рыболовный магазин', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, NULL, 12, 12, '232', '2011-06-18 20:03:54', '2011-06-18 20:03:54', 55.083606790200001, 38.803923813300003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(685, 'Рыболовный магазин', '', NULL, 0, '', NULL, NULL, NULL, NULL, 5, 646, 12, 12, '232', '2011-06-18 20:03:54', '2011-06-18 20:03:54', 55.083606790200001, 38.803923813300003, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(686, 'Уваровский пруд', 'Удобный подъезд, спуски. Есть кафешка-магазинчик.', NULL, 0, 'Путевка стоит 1000р в нее включено 4кг карпа и 3кг сома, есть еще форель и толстолобик, но судя по всему редкость', 1, NULL, NULL, 3, 5, NULL, 7, 7, '234', '2011-06-18 22:11:45', '2011-06-18 22:11:45', 55.165234621700002, 36.475204268100001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(686, 'Уваровский пруд', 'Удобный подъезд, спуски. Есть кафешка-магазинчик.', NULL, 0, 'Путевка стоит 1000р в нее включено 4кг карпа и 3кг сома, есть еще форель и толстолобик, но судя по всему редкость', 1, NULL, NULL, 3, 5, 647, 7, 7, '234', '2011-06-18 22:11:45', '2011-06-18 22:11:45', 55.165234621700002, 36.475204268100001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(687, 'Платник рядом с Детчино', 'Небольшой частный пруд недалеко от Детчино.Рыба:карась,карп,белый амур.В основном клюёт карп (если клюёт,частенько бывает полный ОП),попадаются экземпляры за 4 кг.Ловля с мостков и с берега,по выходным частенько негде сесть,после дождей проблематично проехать на легковой машине( дорога откровенное г..).\nP.S. Лучше ехать,предварительно узнав про клев,а то можно просидеть весь день в пустую,очень своеобразное место по клёву,рыбы вроде много,но поклевок частенько не увидишь за весь день.', 2.50, 1, 'Цена светового дня 600 руб.,нормы вылова нет.', 1, 2, 1, 3, 5, NULL, 8, 8, '235', '2011-06-19 12:06:31', '2011-06-19 12:06:31', 54.786223705300003, 36.344018350200002, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(687, 'Платник рядом с Детчино', 'Небольшой частный пруд недалеко от Детчино.Рыба:карась,карп,белый амур.В основном клюёт карп (если клюёт,частенько бывает полный ОП),попадаются экземпляры за 4 кг.Ловля с мостков и с берега,по выходным частенько негде сесть,после дождей проблематично проехать на легковой машине( дорога откровенное г..).\nP.S. Лучше ехать,предварительно узнав про клев,а то можно просидеть весь день в пустую,очень своеобразное место по клёву,рыбы вроде много,но поклевок частенько не увидишь за весь день.', 2.50, 1, 'Цена светового дня 600 руб.,нормы вылова нет.', 1, 2, 1, 3, 5, 648, 8, 8, '235', '2011-06-19 12:06:31', '2011-06-19 12:06:31', 54.786223705300003, 36.344018350200002, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(687, 'Платник рядом с Детчино', '<p>Небольшой частный пруд недалеко от Детчино.Рыба:карась,карп,белый амур.В основном клюёт карп (если клюёт,частенько бывает полный ОП),попадаются экземпляры за 4 кг.Ловля с мостков и с берега,по выходным частенько негде сесть,после дождей проблематично проехать на легковой машине( дорога откровенное г..). P.S. Лучше ехать,предварительно узнав про клев,а то можно просидеть весь день в пустую,очень своеобразное место по клёву,рыбы вроде много,но поклевок частенько не увидишь за весь день.</p>', 2.50, 0, '<p>Цена светового дня 600 руб.,нормы вылова нет.</p>', 1, 2, 1, 3, 5, 648, 8, 8, '235', '2011-06-19 12:06:31', '2011-06-19 15:17:07', 54.786223705300003, 36.344018350200002, 3);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(688, 'Пруд у Победы', 'Оставшееся от совка рыбхозяйство, сейчас уже не зарыбливают, но есть остатки былой радости.', NULL, 0, 'За день оплата 500р в нее включено 5кг карпа. Можно дать 1000р и ловить сколько влезет.', 1, 2, 1, 3, 5, NULL, 7, 7, '237', '2011-06-19 15:01:57', '2011-06-19 15:01:57', 55.177373206900000, 36.765639224600001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(688, 'Пруд у Победы', 'Оставшееся от совка рыбхозяйство, сейчас уже не зарыбливают, но есть остатки былой радости.', NULL, 0, 'За день оплата 500р в нее включено 5кг карпа. Можно дать 1000р и ловить сколько влезет.', 1, 2, 1, 3, 5, 649, 7, 7, '237', '2011-06-19 15:01:57', '2011-06-19 15:01:57', 55.177373206900000, 36.765639224600001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(689, 'Пяловское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, 4, 5, NULL, 1, 1, '250', '2011-07-30 11:23:51', '2011-07-30 11:23:51', 56.036544835699999, 37.667322793600000, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(689, 'Пяловское водохранилище', '', NULL, 1, '', NULL, NULL, NULL, 4, 5, 650, 1, 1, '250', '2011-07-30 11:23:51', '2011-07-30 11:23:51', 56.036544835699999, 37.667322793600000, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(690, 'канал им. Москвы', 'Судоходный «канал им. Москвы» имеет переменное по направлению и силе течение, в зависимости от работы шлюзов, дно каменистое с наличием растительности. Берег усилен бетонными плитами, с уклоном от 20 до 40 градусов, глубина в зоне ловли до 6 м.\nВиды рыб, обитающих в водоеме: плотва, окунь, уклея, карась, лещ, густера, чехонь и другие.', 6.00, 1, '', NULL, 3, NULL, NULL, 5, NULL, 1, 1, '251', '2011-07-30 11:29:19', '2011-07-30 11:29:19', 56.022672656399997, 37.637306192499999, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(690, 'канал им. Москвы', 'Судоходный «канал им. Москвы» имеет переменное по направлению и силе течение, в зависимости от работы шлюзов, дно каменистое с наличием растительности. Берег усилен бетонными плитами, с уклоном от 20 до 40 градусов, глубина в зоне ловли до 6 м.\nВиды рыб, обитающих в водоеме: плотва, окунь, уклея, карась, лещ, густера, чехонь и другие.', 6.00, 1, '', NULL, 3, NULL, NULL, 5, 651, 1, 1, '251', '2011-07-30 11:29:19', '2011-07-30 11:29:19', 56.022672656399997, 37.637306192499999, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(691, 'Пруд в писково', '', NULL, 1, '', 2, NULL, NULL, 3, 5, NULL, 7, 7, '252', '2011-07-31 15:02:12', '2011-07-31 15:02:12', 55.085048563599997, 36.469178254900001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(691, 'Пруд в писково', '', NULL, 1, '', 2, NULL, NULL, 3, 5, 652, 7, 7, '252', '2011-07-31 15:02:12', '2011-07-31 15:02:12', 55.085048563599997, 36.469178254900001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(691, 'Пруд в писково', '', NULL, 1, '', 1, NULL, NULL, 3, 5, 652, 7, 7, '252', '2011-07-31 15:02:12', '2011-07-31 15:02:47', 55.085048563599997, 36.469178254900001, 3);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(692, 'Щелкановский пруд', '', 1.00, 1, '', 1, 2, 1, 3, 5, NULL, 7, 7, '261', '2011-08-15 22:20:46', '2011-08-15 22:20:46', 54.580582355499999, 35.409142430099998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(692, 'Щелкановский пруд', '', 1.00, 1, '', 1, 2, 1, 3, 5, 653, 7, 7, '261', '2011-08-15 22:20:46', '2011-08-15 22:20:46', 54.580582355499999, 35.409142430099998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(693, 'Ресса рядом с Гороховкой', '', 1.00, 1, '', 3, 1, 2, 1, 5, NULL, 7, 7, '262', '2011-08-15 22:26:46', '2011-08-15 22:26:46', 54.662490128000002, 35.079509670999997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(693, 'Ресса рядом с Гороховкой', '', 1.00, 1, '', 3, 1, 2, 1, 5, 654, 7, 7, '262', '2011-08-15 22:26:46', '2011-08-15 22:27:24', 54.662490128000002, 35.079509670999997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(694, 'Пруд рядом с Машково', 'Виды рыб, обитающих в водоеме:карп,карась.', 3.00, 0, '1000р будни-1200 р вых\nтелефон 8-985-151-27-84 ', 1, NULL, NULL, 3, 5, NULL, 1, 1, '263', '2011-08-19 10:28:14', '2011-08-19 10:28:14', 55.682896613300002, 37.965416367300001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(694, 'Пруд рядом с Машково', 'Виды рыб, обитающих в водоеме:карп,карась.', 3.00, 0, '1000р будни-1200 р вых\nтелефон 8-985-151-27-84 ', 1, NULL, NULL, 3, 5, 655, 1, 1, '263', '2011-08-19 10:28:14', '2011-08-19 10:28:14', 55.682896613300002, 37.965416367300001, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(695, 'КРХ "Ба! Рыбина!", Школьные пруды', 'Пруды «Школьные» находятся в Домодедовском районе Московской области на окраине поселка Барыбино, и представляют собой систему из трех прудов, два из которых образуют каскад и разделены плотиной. Наше рыболовное хозяйство «Ба! Рыбина» расположено на верхнем пруду, так как он имеет наиболее удобный подъезд и условия для развития комфортной инфраструктуры.', 1.50, 0, 'ариф «ДНЕВНОЙ» с 5.00 до 21.00.\nСтоимость - 2000 руб.\n(норма вылова на 2000 руб. по существующим расценкам на рыбу)\n\nТариф «ПОЛДЕНЬ» с 12.00 до 21.00.\nСтоимость - 1500 руб.\n(норма вылова на 1500 руб. по существующим расценкам на рыбу)\n\nТариф «ВЕЧЕРНИЙ» с 17.00 до 21.00.\nСтоимость - 1000 руб.\n(норма вылова на 1000 руб. по существующим расценкам на рыбу)\n\nНочная рыбалка на водоёме возможна только при оплате текущего и последующего тарифа, то есть минимальная оплата за ночную рыбалку – 3000 руб. (в этом случае рыболов оплачивает вечернюю и дневную путёвки и может продолжать рыбалку с 17.00 текущего дня до 21.00 следующего дня).\nТакже если рыболов планирует посетить нас в ночное время (до 5.00), то ему придётся оплатить вечернюю и дневную путёвки.\n\nЖЕНЩИНЫ И ДЕТИ ДО 14 ЛЕТ ЛОВЯТ РЫБУ НА ВОДОЁМЕ БЕСПЛАТНО, ОПЛАЧИВАЯ УЛОВ ПО ФАКТУ.\n\nВСЕ МУЖЧИНЫ, НАХОДЯЩИЕСЯ НА ТЕРРИТОРИИ КЛУБА, ОПЛАЧИВАЮТ ПОЛНУЮ СТОИМОСТЬ ПУТЁВКИ ПО СУЩЕСТВУЮЩИМ ТАРИФАМ НА РЫБАЛКУ.\n\nГостевые путёвки продаются только при корпоративных заявках и оплате аренды беседок и юрт. Наличие гостевой путёвки не даёт мужчине право на рыбалку, а также не позволяет ловить рыбу снастями ваших товарищей оплативших путёвки.\n\nСтоимость гостевой путёвки – 500 руб.\n\nУЛОВ, ПРЕВЫСИВШИЙ НОРМУ, ОПЛАЧИВАЕТСЯ ДОПОЛНИТЕЛЬНО, ПО СУЩЕСТВУЮЩИМ РАСЦЕНКАМ НА РЫБУ:\n\nФОРЕЛЬ – 400 р/кг.\n\nЩУКА, СОМ ЕВРОПЕЙСКИЙ, СОМ КАНАЛЬНЫЙ -300 р/кг.\n\nКАРП, САЗАН, БЕЛЫЙ АМУР – 200 р/кг.\n\nОСЁТР – 800 р/кг.\n\nОСОБИ ЛУБОГО ВИДА НАВЕСКОЙ БОЛЕЕ 5-ти кг. – 400 р/кг.', 1, 2, 5, 3, 5, NULL, 1, 1, '265', '2011-08-19 10:41:35', '2011-08-19 10:41:35', 55.255533518800000, 37.872204239699997, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(695, 'КРХ "Ба! Рыбина!", Школьные пруды', 'Пруды «Школьные» находятся в Домодедовском районе Московской области на окраине поселка Барыбино, и представляют собой систему из трех прудов, два из которых образуют каскад и разделены плотиной. Наше рыболовное хозяйство «Ба! Рыбина» расположено на верхнем пруду, так как он имеет наиболее удобный подъезд и условия для развития комфортной инфраструктуры.', 1.50, 0, 'ариф «ДНЕВНОЙ» с 5.00 до 21.00.\nСтоимость - 2000 руб.\n(норма вылова на 2000 руб. по существующим расценкам на рыбу)\n\nТариф «ПОЛДЕНЬ» с 12.00 до 21.00.\nСтоимость - 1500 руб.\n(норма вылова на 1500 руб. по существующим расценкам на рыбу)\n\nТариф «ВЕЧЕРНИЙ» с 17.00 до 21.00.\nСтоимость - 1000 руб.\n(норма вылова на 1000 руб. по существующим расценкам на рыбу)\n\nНочная рыбалка на водоёме возможна только при оплате текущего и последующего тарифа, то есть минимальная оплата за ночную рыбалку – 3000 руб. (в этом случае рыболов оплачивает вечернюю и дневную путёвки и может продолжать рыбалку с 17.00 текущего дня до 21.00 следующего дня).\nТакже если рыболов планирует посетить нас в ночное время (до 5.00), то ему придётся оплатить вечернюю и дневную путёвки.\n\nЖЕНЩИНЫ И ДЕТИ ДО 14 ЛЕТ ЛОВЯТ РЫБУ НА ВОДОЁМЕ БЕСПЛАТНО, ОПЛАЧИВАЯ УЛОВ ПО ФАКТУ.\n\nВСЕ МУЖЧИНЫ, НАХОДЯЩИЕСЯ НА ТЕРРИТОРИИ КЛУБА, ОПЛАЧИВАЮТ ПОЛНУЮ СТОИМОСТЬ ПУТЁВКИ ПО СУЩЕСТВУЮЩИМ ТАРИФАМ НА РЫБАЛКУ.\n\nГостевые путёвки продаются только при корпоративных заявках и оплате аренды беседок и юрт. Наличие гостевой путёвки не даёт мужчине право на рыбалку, а также не позволяет ловить рыбу снастями ваших товарищей оплативших путёвки.\n\nСтоимость гостевой путёвки – 500 руб.\n\nУЛОВ, ПРЕВЫСИВШИЙ НОРМУ, ОПЛАЧИВАЕТСЯ ДОПОЛНИТЕЛЬНО, ПО СУЩЕСТВУЮЩИМ РАСЦЕНКАМ НА РЫБУ:\n\nФОРЕЛЬ – 400 р/кг.\n\nЩУКА, СОМ ЕВРОПЕЙСКИЙ, СОМ КАНАЛЬНЫЙ -300 р/кг.\n\nКАРП, САЗАН, БЕЛЫЙ АМУР – 200 р/кг.\n\nОСЁТР – 800 р/кг.\n\nОСОБИ ЛУБОГО ВИДА НАВЕСКОЙ БОЛЕЕ 5-ти кг. – 400 р/кг.', 1, 2, 5, 3, 5, 656, 1, 1, '265', '2011-08-19 10:41:35', '2011-08-19 10:41:35', 55.255533518800000, 37.872204239699997, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(696, 'База отдыха «Щукино» на Волге', 'аза отдыха «ЩУКИНО» расположена в Воротынском районе 130км от Н.Новгорода по Борской стороне на левом берегу Волги на окраине села Каменка. Эта местность с незапамятных времен славится среди рыбаков и просто отдыхающих, своими неповторимыми заводями, протоками и островами, изобилующими рыбой и птицей.\n \nРазмещение в двух этажном корпусе, в комфортабельных двухместных номерах с туалетом и душем. На базе организовано качественное 3-х разовое питание, входящее в стоимость проживания. Представлены русская, европейская и восточная кухни, способные удовлетворить самые изысканные пристрастия отдыхающих, так же наш повар приготовит для вас блюда по индивидуальному заказу.', NULL, 0, 'Цена отдыха за сутки с одного отдыхающего (с учетом трехразового питания ):\nНомера 	В будние дни 	В выходные дни\nДвухместный номер (первый этаж) 	1200 рублей 	1600 рублей\nДвухместный номер (второй этаж) 	1400 рублей 	1800 рублей\nНомера класса люкс (сдается как двухместный номер) 	3600 рублей 	5000 рублей\n\n \n\n \n\n \n\n \n\n \n\n \n\nПримечание: Будние дни – с понедельника до 15 часов пятницы. Выходные дни – с 17 часов пятницы по 15 часов понедельника.\n\nУслуги русской бани:\n  	Будние дни 	Пятница 	Суббота 	Воскресенье\nЦена за 1 час, руб. 	500 	800 	1000 	500\n\n \n\n\n\nНа базе отдыха «Щукино» для отдыхающих приготовлено:\n\n   1. 18 двухместных номеров\n   2. Два номера люкс (двухкомнатные)\n', NULL, NULL, NULL, 1, 5, NULL, 1, 1, '274', '2011-08-19 11:07:15', '2011-08-19 11:07:15', 56.175292002799999, 45.567333157299998, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(696, 'База отдыха «Щукино» на Волге', 'аза отдыха «ЩУКИНО» расположена в Воротынском районе 130км от Н.Новгорода по Борской стороне на левом берегу Волги на окраине села Каменка. Эта местность с незапамятных времен славится среди рыбаков и просто отдыхающих, своими неповторимыми заводями, протоками и островами, изобилующими рыбой и птицей.\n \nРазмещение в двух этажном корпусе, в комфортабельных двухместных номерах с туалетом и душем. На базе организовано качественное 3-х разовое питание, входящее в стоимость проживания. Представлены русская, европейская и восточная кухни, способные удовлетворить самые изысканные пристрастия отдыхающих, так же наш повар приготовит для вас блюда по индивидуальному заказу.', NULL, 0, 'Цена отдыха за сутки с одного отдыхающего (с учетом трехразового питания ):\nНомера 	В будние дни 	В выходные дни\nДвухместный номер (первый этаж) 	1200 рублей 	1600 рублей\nДвухместный номер (второй этаж) 	1400 рублей 	1800 рублей\nНомера класса люкс (сдается как двухместный номер) 	3600 рублей 	5000 рублей\n\n \n\n \n\n \n\n \n\n \n\n \n\nПримечание: Будние дни – с понедельника до 15 часов пятницы. Выходные дни – с 17 часов пятницы по 15 часов понедельника.\n\nУслуги русской бани:\n  	Будние дни 	Пятница 	Суббота 	Воскресенье\nЦена за 1 час, руб. 	500 	800 	1000 	500\n\n \n\n\n\nНа базе отдыха «Щукино» для отдыхающих приготовлено:\n\n   1. 18 двухместных номеров\n   2. Два номера люкс (двухкомнатные)\n', NULL, NULL, NULL, 1, 5, 657, 1, 1, '274', '2011-08-19 11:07:15', '2011-08-19 11:07:15', 56.175292002799999, 45.567333157299998, 2);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(697, 'Ока', '', NULL, 1, '', NULL, NULL, NULL, NULL, 5, NULL, 12, 12, '275', '2011-08-26 06:39:42', '2011-08-26 06:39:42', 54.909827846799999, 39.579701138300003, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(698, 'Пруд у Хотьково', '', NULL, 0, '', NULL, NULL, NULL, 3, 5, NULL, 1, 1, '278', '2011-09-12 23:09:13', '2011-09-12 23:09:13', 53.761879827100003, 35.224881806900001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(699, 'Пруд у Григорьевки', '', NULL, 1, '', NULL, NULL, NULL, 3, 5, NULL, 1, 1, '341', '2011-09-12 23:13:45', '2011-09-12 23:13:45', 54.132922573400002, 33.850383780000001, 1);
INSERT INTO location_version (id, `name`, description, depth, is_free, price, location_flow_id, location_fundus_id, location_relief_id, location_type_id, location_scope_id, address_id, created_by, updated_by, slug, created_at, updated_at, latitude, longitude, version) VALUES(699, 'Пруд у Григорьевки', '', NULL, 1, '', NULL, NULL, NULL, 3, 5, 658, 1, 1, '341', '2011-09-12 23:13:45', '2011-09-12 23:13:48', 54.132922573400002, 33.850383780000001, 2);

DROP TABLE IF EXISTS photo;
CREATE TABLE IF NOT EXISTS photo (
  id int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  thumb varchar(100) NOT NULL,
  toward varchar(255) default NULL,
  location_id int(11) default NULL,
  profit_id int(11) default NULL,
  created_by int(11) NOT NULL,
  updated_by int(11) NOT NULL,
  version bigint(20) default NULL,
  PRIMARY KEY  (id),
  KEY photo_toward_idx (toward),
  KEY created_by_idx (created_by),
  KEY updated_by_idx (updated_by),
  KEY photo_location_id_location_id (location_id),
  KEY photo_profit_id_profit_id (profit_id)
) TYPE=InnoDB ;

INSERT INTO photo (id, `name`, thumb, toward, location_id, profit_id, created_by, updated_by, version) VALUES(1, 'http://img846.imageshack.us/img846/186/php10e3.jpg', 'http://img846.imageshack.us/img846/186/php10e3.th.jpg', 'location', 676, NULL, 7, 7, 1);
INSERT INTO photo (id, `name`, thumb, toward, location_id, profit_id, created_by, updated_by, version) VALUES(2, 'http://img696.imageshack.us/img696/7894/php10e7.jpg', 'http://img696.imageshack.us/img696/7894/php10e7.th.jpg', 'location', 676, NULL, 7, 7, 1);
INSERT INTO photo (id, `name`, thumb, toward, location_id, profit_id, created_by, updated_by, version) VALUES(3, 'http://img841.imageshack.us/img841/2065/php10e8.jpg', 'http://img841.imageshack.us/img841/2065/php10e8.th.jpg', 'location', 676, NULL, 7, 7, 1);
INSERT INTO photo (id, `name`, thumb, toward, location_id, profit_id, created_by, updated_by, version) VALUES(4, 'http://img43.imageshack.us/img43/5893/php10ea.jpg', 'http://img43.imageshack.us/img43/5893/php10ea.th.jpg', 'location', 676, NULL, 7, 7, 1);
INSERT INTO photo (id, `name`, thumb, toward, location_id, profit_id, created_by, updated_by, version) VALUES(9, 'http://img847.imageshack.us/img847/9985/72345890.jpg', 'http://img847.imageshack.us/img847/9985/72345890.th.jpg', NULL, NULL, NULL, 1, 1, 1);

DROP TABLE IF EXISTS photo_location_version;
CREATE TABLE IF NOT EXISTS photo_location_version (
  id int(11) NOT NULL default '0',
  `name` varchar(100) NOT NULL,
  thumb varchar(100) NOT NULL,
  toward varchar(255) default NULL,
  location_id int(11) default NULL,
  profit_id int(11) default NULL,
  created_by int(11) NOT NULL,
  updated_by int(11) NOT NULL,
  version bigint(20) NOT NULL default '0',
  PRIMARY KEY  (id,version)
) TYPE=InnoDB;


DROP TABLE IF EXISTS photo_profit_version;
CREATE TABLE IF NOT EXISTS photo_profit_version (
  id int(11) NOT NULL default '0',
  `name` varchar(100) NOT NULL,
  thumb varchar(100) NOT NULL,
  toward varchar(255) default NULL,
  location_id int(11) default NULL,
  profit_id int(11) default NULL,
  created_by int(11) NOT NULL,
  updated_by int(11) NOT NULL,
  version bigint(20) NOT NULL default '0',
  PRIMARY KEY  (id,version)
) TYPE=InnoDB;


DROP TABLE IF EXISTS photo_version;
CREATE TABLE IF NOT EXISTS photo_version (
  id int(11) NOT NULL default '0',
  `name` varchar(100) NOT NULL,
  thumb varchar(100) NOT NULL,
  toward varchar(255) default NULL,
  location_id int(11) default NULL,
  profit_id int(11) default NULL,
  created_by int(11) NOT NULL,
  updated_by int(11) NOT NULL,
  version bigint(20) NOT NULL default '0',
  PRIMARY KEY  (id,version)
) TYPE=InnoDB;

INSERT INTO photo_version (id, `name`, thumb, toward, location_id, profit_id, created_by, updated_by, version) VALUES(1, 'http://img846.imageshack.us/img846/186/php10e3.jpg', 'http://img846.imageshack.us/img846/186/php10e3.th.jpg', NULL, NULL, NULL, 7, 7, 1);
INSERT INTO photo_version (id, `name`, thumb, toward, location_id, profit_id, created_by, updated_by, version) VALUES(2, 'http://img696.imageshack.us/img696/7894/php10e7.jpg', 'http://img696.imageshack.us/img696/7894/php10e7.th.jpg', NULL, NULL, NULL, 7, 7, 1);
INSERT INTO photo_version (id, `name`, thumb, toward, location_id, profit_id, created_by, updated_by, version) VALUES(3, 'http://img841.imageshack.us/img841/2065/php10e8.jpg', 'http://img841.imageshack.us/img841/2065/php10e8.th.jpg', NULL, NULL, NULL, 7, 7, 1);
INSERT INTO photo_version (id, `name`, thumb, toward, location_id, profit_id, created_by, updated_by, version) VALUES(4, 'http://img43.imageshack.us/img43/5893/php10ea.jpg', 'http://img43.imageshack.us/img43/5893/php10ea.th.jpg', NULL, NULL, NULL, 7, 7, 1);
INSERT INTO photo_version (id, `name`, thumb, toward, location_id, profit_id, created_by, updated_by, version) VALUES(9, 'http://img847.imageshack.us/img847/9985/72345890.jpg', 'http://img847.imageshack.us/img847/9985/72345890.th.jpg', NULL, NULL, NULL, 1, 1, 1);

DROP TABLE IF EXISTS profit;
CREATE TABLE IF NOT EXISTS profit (
  id int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  location_id int(11) default NULL,
  `date` date NOT NULL,
  cordage text,
  description text,
  fish_id int(11) default NULL,
  weight float(18,2) default NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  created_by int(11) NOT NULL,
  updated_by int(11) NOT NULL,
  PRIMARY KEY  (id),
  KEY location_id_idx (location_id),
  KEY fish_id_idx (fish_id),
  KEY created_by_idx (created_by),
  KEY updated_by_idx (updated_by)
) TYPE=InnoDB ;

INSERT INTO profit (id, `name`, location_id, `date`, cordage, description, fish_id, weight, created_at, updated_at, created_by, updated_by) VALUES(1, 'Ловля на спиниг', 676, '2010-06-14', '<p>Пара синингов</p>', '<p>Ездили на сутки, но клевало как то не очен. Было жарко</p>', 2, 0.45, '2011-05-04 13:38:58', '2011-05-04 13:38:58', 7, 7);
INSERT INTO profit (id, `name`, location_id, `date`, cordage, description, fish_id, weight, created_at, updated_at, created_by, updated_by) VALUES(2, 'Половил вечерком', 677, '2011-06-06', '<p>Карася на червя ловил, карпа на кукурузу.</p>', '<p>Тепло и безветренно было, хорошо в целом.</p>', 4, 1.70, '2011-06-06 20:56:08', '2011-06-19 12:11:29', 8, 8);
INSERT INTO profit (id, `name`, location_id, `date`, cordage, description, fish_id, weight, created_at, updated_at, created_by, updated_by) VALUES(3, 'Рыбалка у ПХ', 678, '2011-06-06', '<p>Вертушка красная на спининге, пшено, манная каша, перловка в качестве прикормки.</p>', '', 56, 0.80, '2011-06-06 22:13:43', '2011-06-06 22:13:43', 7, 7);
INSERT INTO profit (id, `name`, location_id, `date`, cordage, description, fish_id, weight, created_at, updated_at, created_by, updated_by) VALUES(4, 'Вечером в писково', 691, '2011-07-18', '<p>Ловили на червя, тесто, кукурузу</p>', '', 3, 0.17, '2011-07-31 15:05:15', '2011-07-31 15:05:15', 7, 7);
INSERT INTO profit (id, `name`, location_id, `date`, cordage, description, fish_id, weight, created_at, updated_at, created_by, updated_by) VALUES(5, 'Опять писково', 691, '2011-07-19', '<p>Тесто и червь</p>', '<p>Карасики небольшие. Ротанов в этот раз не брали.</p>', NULL, NULL, '2011-07-31 15:07:09', '2011-07-31 15:07:09', 7, 7);
INSERT INTO profit (id, `name`, location_id, `date`, cordage, description, fish_id, weight, created_at, updated_at, created_by, updated_by) VALUES(6, 'Заезд за карасями', 692, '2011-07-31', '<p>Все на поплавочную удочку. В качестве прикормки и приманки использовалась перловая каша.</p>', '', 3, 0.20, '2011-08-15 22:23:45', '2011-08-15 22:23:45', 7, 7);
INSERT INTO profit (id, `name`, location_id, `date`, cordage, description, fish_id, weight, created_at, updated_at, created_by, updated_by) VALUES(7, 'Заезад на Рессу', 693, '2011-07-24', '<p>Ловили проводкой, спинингом и попловочной удочкой. Ловили на перловку, червей и кузнечиков.</p>', '<p>На спининг нифига не поймали</p>', 56, 0.50, '2011-08-15 22:36:56', '2011-08-15 22:36:56', 7, 7);
INSERT INTO profit (id, `name`, location_id, `date`, cordage, description, fish_id, weight, created_at, updated_at, created_by, updated_by) VALUES(8, 'Вечерком в Писково', 691, '2011-08-15', '<p>Преловка, тесто, червь</p>', '<p>Нифига абсолютно! Даже ни одной поклевки не было!</p>', NULL, NULL, '2011-08-15 22:38:24', '2011-08-15 22:38:24', 7, 7);
INSERT INTO profit (id, `name`, location_id, `date`, cordage, description, fish_id, weight, created_at, updated_at, created_by, updated_by) VALUES(9, 'За карасем с утреца', 692, '2011-08-28', '<p>Ловили на червя и перловку, как обычно.</p>', '', 3, 0.20, '2011-09-07 19:11:45', '2011-09-07 19:11:45', 7, 7);

DROP TABLE IF EXISTS profit_detail;
CREATE TABLE IF NOT EXISTS profit_detail (
  id bigint(20) NOT NULL auto_increment,
  profit_id int(11) default NULL,
  style_id int(11) default NULL,
  fish_id int(11) default NULL,
  qty float(18,2) NOT NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY unique_fish_style_per_profit_idx (profit_id,style_id,fish_id),
  KEY profit_id_idx (profit_id),
  KEY style_id_idx (style_id),
  KEY fish_id_idx (fish_id)
) TYPE=InnoDB ;

INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(1, 1, 2, 1, 1.00);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(2, 1, 2, 2, 1.50);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(3, 2, 12, 4, 3.00);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(4, 2, 3, 4, 2.00);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(5, 2, 3, 3, 2.00);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(6, 3, 3, 11, 2.00);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(7, 3, 2, 2, 1.50);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(8, 3, 2, 56, 0.80);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(9, 3, 3, 55, 0.50);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(10, 3, 2, 66, 0.70);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(11, 4, 3, 3, 2.00);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(12, 4, 3, 75, 2.00);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(13, 5, 3, 3, 2.00);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(14, 6, 3, 3, 8.00);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(15, 7, 3, 11, 2.00);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(16, 7, 3, 81, 1.00);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(17, 7, 3, 1, 0.50);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(18, 7, 16, 56, 1.00);
INSERT INTO profit_detail (id, profit_id, style_id, fish_id, qty) VALUES(19, 9, 3, 3, 3.00);

DROP TABLE IF EXISTS read_comment;
CREATE TABLE IF NOT EXISTS read_comment (
  profile_id int(11) NOT NULL default '0',
  comment_id int(11) NOT NULL default '0',
  PRIMARY KEY  (profile_id,comment_id),
  KEY read_comment_comment_id_comment_id (comment_id)
) TYPE=InnoDB;


DROP TABLE IF EXISTS region;
CREATE TABLE IF NOT EXISTS region (
  id int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  country_id int(11) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY `name` (`name`),
  KEY country_id_idx (country_id)
) TYPE=InnoDB ;

INSERT INTO region (id, `name`, country_id) VALUES(1, 'Хакасия', 1);
INSERT INTO region (id, `name`, country_id) VALUES(2, 'Красноярский край', 1);
INSERT INTO region (id, `name`, country_id) VALUES(3, 'Тюменская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(4, 'Оренбургская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(5, 'Краснодарский край', 1);
INSERT INTO region (id, `name`, country_id) VALUES(6, 'Калининградская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(7, 'Челябинская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(8, 'Татарстан', 1);
INSERT INTO region (id, `name`, country_id) VALUES(9, 'Тверская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(10, 'Адыгея', 1);
INSERT INTO region (id, `name`, country_id) VALUES(11, 'Карачаево-Черкесия', 1);
INSERT INTO region (id, `name`, country_id) VALUES(12, 'Омская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(13, 'Ростовская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(14, 'Коми', 1);
INSERT INTO region (id, `name`, country_id) VALUES(15, 'Ямало-Ненецкий автономный округ', 1);
INSERT INTO region (id, `name`, country_id) VALUES(16, 'Читинская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(17, 'Башкортостан', 1);
INSERT INTO region (id, `name`, country_id) VALUES(18, 'Северная Осетия', 1);
INSERT INTO region (id, `name`, country_id) VALUES(19, 'Свердловская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(20, 'Чувашия', 1);
INSERT INTO region (id, `name`, country_id) VALUES(21, 'Саха-Якутия', 1);
INSERT INTO region (id, `name`, country_id) VALUES(22, 'Алтайский край', 1);
INSERT INTO region (id, `name`, country_id) VALUES(23, 'Владимирская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(24, 'Саратовская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(25, 'Ставропольский край', 1);
INSERT INTO region (id, `name`, country_id) VALUES(26, 'Томская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(27, 'Пермская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(28, 'Рязанская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(29, 'Белгородская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(30, 'Самарская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(31, 'Волгоградская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(32, 'Тульская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(33, 'Удмуртия', 1);
INSERT INTO region (id, `name`, country_id) VALUES(34, 'Курганская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(35, 'Хабаровский край', 1);
INSERT INTO region (id, `name`, country_id) VALUES(36, 'Чукотский автономный округ', 1);
INSERT INTO region (id, `name`, country_id) VALUES(37, 'Иркутская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(38, 'Кемеровская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(39, 'Воронежская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(40, 'Костромская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(41, 'Приморский край', 1);
INSERT INTO region (id, `name`, country_id) VALUES(42, 'Мурманская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(43, 'Кировская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(44, 'Чечня', 1);
INSERT INTO region (id, `name`, country_id) VALUES(45, 'Мордовия', 1);
INSERT INTO region (id, `name`, country_id) VALUES(46, 'Нижегородская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(47, 'Архангельская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(48, 'Астраханская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(49, 'Камчатка', 1);
INSERT INTO region (id, `name`, country_id) VALUES(50, 'Вологодская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(51, 'Калужская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(52, 'Новосибирская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(53, 'Ульяновская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(54, 'Алтай', 1);
INSERT INTO region (id, `name`, country_id) VALUES(55, 'Кабардино-Балкария', 1);
INSERT INTO region (id, `name`, country_id) VALUES(56, 'Бурятия', 1);
INSERT INTO region (id, `name`, country_id) VALUES(57, 'Новгородская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(58, 'Пензенская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(59, 'Псковская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(60, 'Курская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(61, 'Амурская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(62, 'Карелия', 1);
INSERT INTO region (id, `name`, country_id) VALUES(63, 'Ханты-Мансийский автономный округ', 1);
INSERT INTO region (id, `name`, country_id) VALUES(64, 'Еврейская автономная область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(65, 'Ленинградская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(66, 'Орловская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(67, 'Ярославская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(68, 'Калмыкия', 1);
INSERT INTO region (id, `name`, country_id) VALUES(69, 'Тамбовская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(70, 'Брянская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(71, 'Смоленская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(72, 'Ивановская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(73, 'Марий Эл', 1);
INSERT INTO region (id, `name`, country_id) VALUES(74, 'Липецкая область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(75, 'Московская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(76, 'Дагестан', 1);
INSERT INTO region (id, `name`, country_id) VALUES(77, 'Тыва', 1);
INSERT INTO region (id, `name`, country_id) VALUES(78, 'Магаданская область', 1);
INSERT INTO region (id, `name`, country_id) VALUES(79, 'Сахалин', 1);
INSERT INTO region (id, `name`, country_id) VALUES(80, 'Ингушетия', 1);
INSERT INTO region (id, `name`, country_id) VALUES(81, 'Усть-Ордынский автономный округ', 1);

DROP TABLE IF EXISTS route;
CREATE TABLE IF NOT EXISTS route (
  id int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  country_id int(11) default NULL,
  PRIMARY KEY  (id),
  KEY country_id_idx (country_id)
) TYPE=InnoDB ;

INSERT INTO route (id, `name`, country_id) VALUES(1, 'Р-132', 1);
INSERT INTO route (id, `name`, country_id) VALUES(2, 'Р-93', 1);
INSERT INTO route (id, `name`, country_id) VALUES(3, 'Новорязанское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(4, 'Советская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(5, 'М-6', 1);
INSERT INTO route (id, `name`, country_id) VALUES(6, 'Р-107', 1);
INSERT INTO route (id, `name`, country_id) VALUES(7, 'Тимоновское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(8, 'Новорижское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(9, 'Р-199', 1);
INSERT INTO route (id, `name`, country_id) VALUES(10, 'Р85', 2);
INSERT INTO route (id, `name`, country_id) VALUES(11, 'Докучаев пер.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(12, 'Центральная ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(13, 'Meža iela', 3);
INSERT INTO route (id, `name`, country_id) VALUES(14, 'Московское Малое Кольцо', 1);
INSERT INTO route (id, `name`, country_id) VALUES(15, 'Киевское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(16, 'Рогачевское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(17, 'А-102', 1);
INSERT INTO route (id, `name`, country_id) VALUES(18, 'A355', 4);
INSERT INTO route (id, `name`, country_id) VALUES(19, 'ул. Федотова', 1);
INSERT INTO route (id, `name`, country_id) VALUES(20, 'Красноармейская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(21, 'просп. Стачек', 1);
INSERT INTO route (id, `name`, country_id) VALUES(22, 'А-123', 1);
INSERT INTO route (id, `name`, country_id) VALUES(23, 'Р-250', 1);
INSERT INTO route (id, `name`, country_id) VALUES(24, 'Р-380', 1);
INSERT INTO route (id, `name`, country_id) VALUES(25, 'Можайское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(26, 'Московская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(27, 'Каширское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(28, 'Р-114', 1);
INSERT INTO route (id, `name`, country_id) VALUES(29, 'Окский просп.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(30, 'Голутвинская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(31, 'М-5', 1);
INSERT INTO route (id, `name`, country_id) VALUES(32, 'ул. Бочманово', 1);
INSERT INTO route (id, `name`, country_id) VALUES(33, 'Р-81', 1);
INSERT INTO route (id, `name`, country_id) VALUES(34, 'H01', 5);
INSERT INTO route (id, `name`, country_id) VALUES(35, 'Р-251', 1);
INSERT INTO route (id, `name`, country_id) VALUES(36, 'Ritarinrannantie', 6);
INSERT INTO route (id, `name`, country_id) VALUES(37, 'R-204', 4);
INSERT INTO route (id, `name`, country_id) VALUES(38, 'Победы просп.', 4);
INSERT INTO route (id, `name`, country_id) VALUES(39, 'E127', 4);
INSERT INTO route (id, `name`, country_id) VALUES(40, 'Разъезжая ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(41, 'Ильинское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(42, 'наб. ул. (м/р Голованово)', 1);
INSERT INTO route (id, `name`, country_id) VALUES(43, 'ул. Борисовские Пруды', 1);
INSERT INTO route (id, `name`, country_id) VALUES(44, 'Центральная ал.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(45, 'Лесная ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(46, 'Р-37', 1);
INSERT INTO route (id, `name`, country_id) VALUES(47, 'Таманская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(48, 'М-7', 1);
INSERT INTO route (id, `name`, country_id) VALUES(49, 'Р-126', 1);
INSERT INTO route (id, `name`, country_id) VALUES(50, 'Р-89', 1);
INSERT INTO route (id, `name`, country_id) VALUES(51, 'ул. 40 Лет Октября', 1);
INSERT INTO route (id, `name`, country_id) VALUES(52, 'A229', 1);
INSERT INTO route (id, `name`, country_id) VALUES(53, 'Заводской пер.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(54, 'ул. Карбышева', 1);
INSERT INTO route (id, `name`, country_id) VALUES(55, 'Vääräkäntie', 6);
INSERT INTO route (id, `name`, country_id) VALUES(56, 'Levin Ympärystie', 6);
INSERT INTO route (id, `name`, country_id) VALUES(57, 'T1805', 5);
INSERT INTO route (id, `name`, country_id) VALUES(58, 'Р-84', 1);
INSERT INTO route (id, `name`, country_id) VALUES(59, 'М-13', 1);
INSERT INTO route (id, `name`, country_id) VALUES(60, 'Р-34', 1);
INSERT INTO route (id, `name`, country_id) VALUES(61, 'ул. Маяковского', 1);
INSERT INTO route (id, `name`, country_id) VALUES(62, 'Водная ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(63, 'Ошарская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(64, 'Тракторный пер.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(65, 'Среднеохтинский просп.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(66, 'Бережковская наб.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(67, 'Аннинское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(68, 'наб. Обводного канала', 1);
INSERT INTO route (id, `name`, country_id) VALUES(69, 'T2104', 5);
INSERT INTO route (id, `name`, country_id) VALUES(70, 'Закавказская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(71, 'ул. Тюленина', 1);
INSERT INTO route (id, `name`, country_id) VALUES(72, '3-я ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(73, 'Минское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(74, 'А-144', 1);
INSERT INTO route (id, `name`, country_id) VALUES(75, 'Карла Маркса ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(76, 'T1607', 5);
INSERT INTO route (id, `name`, country_id) VALUES(77, 'Калужское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(78, 'Пятницкое ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(79, 'А-349', 1);
INSERT INTO route (id, `name`, country_id) VALUES(80, 'Р-158', 1);
INSERT INTO route (id, `name`, country_id) VALUES(81, 'Р-244', 1);
INSERT INTO route (id, `name`, country_id) VALUES(82, 'ул. Апраксина', 1);
INSERT INTO route (id, `name`, country_id) VALUES(83, 'Р-204', 1);
INSERT INTO route (id, `name`, country_id) VALUES(84, 'Правая наб.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(85, 'P508', 1);
INSERT INTO route (id, `name`, country_id) VALUES(86, 'A191', 1);
INSERT INTO route (id, `name`, country_id) VALUES(87, 'ул. Серпуховский Вал', 1);
INSERT INTO route (id, `name`, country_id) VALUES(88, 'Встречная ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(89, 'ул. Красина', 1);
INSERT INTO route (id, `name`, country_id) VALUES(90, 'Фоминская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(91, 'Комсомольская пл.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(92, 'Уральская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(93, 'Р-79', 1);
INSERT INTO route (id, `name`, country_id) VALUES(94, 'М-8', 1);
INSERT INTO route (id, `name`, country_id) VALUES(95, 'Р-119', 1);
INSERT INTO route (id, `name`, country_id) VALUES(96, 'Тепличная ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(97, 'М-4', 1);
INSERT INTO route (id, `name`, country_id) VALUES(98, 'Р-106', 1);
INSERT INTO route (id, `name`, country_id) VALUES(99, 'Горьковское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(100, 'Ярославское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(101, 'Р-203', 1);
INSERT INTO route (id, `name`, country_id) VALUES(102, 'просп. Академика Сахарова', 1);
INSERT INTO route (id, `name`, country_id) VALUES(103, 'А-104', 1);
INSERT INTO route (id, `name`, country_id) VALUES(104, 'М-51', 1);
INSERT INTO route (id, `name`, country_id) VALUES(105, 'А-114', 1);
INSERT INTO route (id, `name`, country_id) VALUES(106, 'Р-104', 1);
INSERT INTO route (id, `name`, country_id) VALUES(107, 'Р-140', 1);
INSERT INTO route (id, `name`, country_id) VALUES(108, 'Е30', 1);
INSERT INTO route (id, `name`, country_id) VALUES(109, 'Р-115', 1);
INSERT INTO route (id, `name`, country_id) VALUES(110, 'просп. Вернадского', 1);
INSERT INTO route (id, `name`, country_id) VALUES(111, 'Волжский бул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(112, 'Московское Большое Кольцо', 1);
INSERT INTO route (id, `name`, country_id) VALUES(113, 'Симферопольское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(114, 'Р-134', 1);
INSERT INTO route (id, `name`, country_id) VALUES(115, 'Р-90', 1);
INSERT INTO route (id, `name`, country_id) VALUES(116, 'Р-404', 1);
INSERT INTO route (id, `name`, country_id) VALUES(117, 'Р-109', 1);
INSERT INTO route (id, `name`, country_id) VALUES(118, 'Егорьевское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(119, 'Kymijoentie', 6);
INSERT INTO route (id, `name`, country_id) VALUES(120, 'Tallinnankatu', 6);
INSERT INTO route (id, `name`, country_id) VALUES(121, 'Ruotsinsalmenkatu', 6);
INSERT INTO route (id, `name`, country_id) VALUES(122, 'Рязановское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(123, 'Осташковское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(124, 'Комсомольская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(125, 'ул. Мал. Горького', 1);
INSERT INTO route (id, `name`, country_id) VALUES(126, 'просп. 40 лет Октября', 1);
INSERT INTO route (id, `name`, country_id) VALUES(127, '13', 7);
INSERT INTO route (id, `name`, country_id) VALUES(128, 'ул. Каховка', 1);
INSERT INTO route (id, `name`, country_id) VALUES(129, 'Спасский пр.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(130, 'Триумфальная ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(131, 'Щелковское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(132, 'Остафьевская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(133, 'Р-152', 1);
INSERT INTO route (id, `name`, country_id) VALUES(134, 'Пионерская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(135, 'ул. Герцена', 1);
INSERT INTO route (id, `name`, country_id) VALUES(136, 'Строгинское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(137, 'Люблинская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(138, 'Ilmeņa iela', 3);
INSERT INTO route (id, `name`, country_id) VALUES(139, 'Flotes iela', 3);
INSERT INTO route (id, `name`, country_id) VALUES(140, 'А-115', 1);
INSERT INTO route (id, `name`, country_id) VALUES(141, 'Р-116', 1);
INSERT INTO route (id, `name`, country_id) VALUES(142, 'Р-124', 1);
INSERT INTO route (id, `name`, country_id) VALUES(143, 'ул. Верхние Поля', 1);
INSERT INTO route (id, `name`, country_id) VALUES(144, 'ул. Академика Семенова', 1);
INSERT INTO route (id, `name`, country_id) VALUES(145, 'Новочеркасский бул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(146, 'Волоколамское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(147, '1-й Гончарный пер.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(148, 'H08', 5);
INSERT INTO route (id, `name`, country_id) VALUES(149, 'Узловая ул.', 5);
INSERT INTO route (id, `name`, country_id) VALUES(150, 'Ленина им. наб.', 5);
INSERT INTO route (id, `name`, country_id) VALUES(151, 'Avenida da Marginal', 8);
INSERT INTO route (id, `name`, country_id) VALUES(152, 'E22', 3);
INSERT INTO route (id, `name`, country_id) VALUES(153, 'Р-352', 1);
INSERT INTO route (id, `name`, country_id) VALUES(154, 'Краснобогатырская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(155, 'Головинское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(156, 'Марьинский бул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(157, 'ул. Даля', 1);
INSERT INTO route (id, `name`, country_id) VALUES(158, 'просп. Гагарина', 1);
INSERT INTO route (id, `name`, country_id) VALUES(159, 'Республиканская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(160, 'Полтавская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(161, 'М-10, Россия', 1);
INSERT INTO route (id, `name`, country_id) VALUES(162, 'Рождественская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(163, 'Бол. Печерская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(164, 'Комсомольский просп.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(165, 'Часовая ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(166, 'Алтуфьевское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(167, 'Городецкий пер.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(168, 'Ананьевский пер.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(169, 'ул. Чкалова', 1);
INSERT INTO route (id, `name`, country_id) VALUES(170, 'Школьная ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(171, 'ул. Веденяпина', 1);
INSERT INTO route (id, `name`, country_id) VALUES(172, 'ул. Лескова', 1);
INSERT INTO route (id, `name`, country_id) VALUES(173, 'ул. Плотникова', 1);
INSERT INTO route (id, `name`, country_id) VALUES(174, 'просп. Октября', 1);
INSERT INTO route (id, `name`, country_id) VALUES(175, 'просп. Ленина', 1);
INSERT INTO route (id, `name`, country_id) VALUES(176, 'Смольная ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(177, 'Братиславская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(178, 'Ленинградское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(179, 'ул. Перерва', 1);
INSERT INTO route (id, `name`, country_id) VALUES(180, 'H21', 5);
INSERT INTO route (id, `name`, country_id) VALUES(181, 'Рублево-Успенское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(182, 'D695', 9);
INSERT INTO route (id, `name`, country_id) VALUES(183, 'Р-85', 1);
INSERT INTO route (id, `name`, country_id) VALUES(184, 'Промышленный пр.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(185, 'Промышленная ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(186, 'Malahviantie', 6);
INSERT INTO route (id, `name`, country_id) VALUES(187, 'Набережная ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(188, 'ул. Есенина', 1);
INSERT INTO route (id, `name`, country_id) VALUES(189, 'Р-108', 1);
INSERT INTO route (id, `name`, country_id) VALUES(190, 'М-9', 1);
INSERT INTO route (id, `name`, country_id) VALUES(191, 'Варшавское ш.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(192, 'Русановская наб.', 5);
INSERT INTO route (id, `name`, country_id) VALUES(193, 'Р-110', 1);
INSERT INTO route (id, `name`, country_id) VALUES(194, 'ул. Горки Киовские', 1);
INSERT INTO route (id, `name`, country_id) VALUES(195, 'Поречная ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(196, 'пр. Станкостроителей', 1);
INSERT INTO route (id, `name`, country_id) VALUES(197, 'ул. Октябрьской Революции', 1);
INSERT INTO route (id, `name`, country_id) VALUES(198, 'ул. Дзержинского', 1);
INSERT INTO route (id, `name`, country_id) VALUES(199, '2-я Вольская ул.', 1);
INSERT INTO route (id, `name`, country_id) VALUES(200, 'А-101', 1);

DROP TABLE IF EXISTS sf_guard_forgot_password;
CREATE TABLE IF NOT EXISTS sf_guard_forgot_password (
  id bigint(20) NOT NULL auto_increment,
  user_id bigint(20) NOT NULL,
  unique_key varchar(255) default NULL,
  expires_at datetime NOT NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  PRIMARY KEY  (id),
  KEY user_id_idx (user_id)
) TYPE=InnoDB;


DROP TABLE IF EXISTS sf_guard_group;
CREATE TABLE IF NOT EXISTS sf_guard_group (
  id bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  description text,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY `name` (`name`)
) TYPE=InnoDB;


DROP TABLE IF EXISTS sf_guard_group_permission;
CREATE TABLE IF NOT EXISTS sf_guard_group_permission (
  group_id bigint(20) NOT NULL default '0',
  permission_id bigint(20) NOT NULL default '0',
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  PRIMARY KEY  (group_id,permission_id),
  KEY sf_guard_group_permission_permission_id_sf_guard_permission_id (permission_id)
) TYPE=InnoDB;


DROP TABLE IF EXISTS sf_guard_permission;
CREATE TABLE IF NOT EXISTS sf_guard_permission (
  id bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  description text,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY `name` (`name`)
) TYPE=InnoDB ;

INSERT INTO sf_guard_permission (id, `name`, description, created_at, updated_at) VALUES(1, 'admin', 'Пока все админы, потом поделим', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

DROP TABLE IF EXISTS sf_guard_remember_key;
CREATE TABLE IF NOT EXISTS sf_guard_remember_key (
  id bigint(20) NOT NULL auto_increment,
  user_id bigint(20) default NULL,
  remember_key varchar(32) default NULL,
  ip_address varchar(50) default NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  PRIMARY KEY  (id),
  KEY user_id_idx (user_id)
) TYPE=InnoDB ;

INSERT INTO sf_guard_remember_key (id, user_id, remember_key, ip_address, created_at, updated_at) VALUES(27, 7, 'mqjxfpwntuokkccs8ksock4ososkgks', '109.225.37.80', '2011-08-15 22:16:49', '2011-08-15 22:16:49');
INSERT INTO sf_guard_remember_key (id, user_id, remember_key, ip_address, created_at, updated_at) VALUES(28, 12, '9zjuqf84948o440kc4s4s80gc4s0c4k', '91.226.166.149', '2011-08-26 06:35:37', '2011-08-26 06:35:37');

DROP TABLE IF EXISTS sf_guard_user;
CREATE TABLE IF NOT EXISTS sf_guard_user (
  id bigint(20) NOT NULL auto_increment,
  first_name varchar(255) default NULL,
  last_name varchar(255) default NULL,
  email_address varchar(255) NOT NULL,
  username varchar(128) NOT NULL,
  `algorithm` varchar(128) NOT NULL default 'sha1',
  salt varchar(128) default NULL,
  `password` varchar(128) default NULL,
  is_active tinyint(1) default '1',
  is_super_admin tinyint(1) default '0',
  last_login datetime default NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY email_address (email_address),
  UNIQUE KEY username (username),
  KEY is_active_idx_idx (is_active)
) TYPE=InnoDB ;

INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(1, '', '', 'uberlov@gmail.com', 'uberlov', 'PasswordKeeper::generate', '93b8926afa3c763923dc904682439337', '93b8926afa3c763923dc904682439337qweqwe123', 1, 0, '2011-09-12 23:09:52', '2011-03-11 20:52:17', '2011-09-12 23:09:52');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(2, '', '', 'spamer@uberlov.ru', 'spamer', 'PasswordKeeper::generate', '8c65d6733a4dd32a5510ab6d3793d3d9', '8c65d6733a4dd32a5510ab6d3793d3d9qweqwe123', 1, 0, '2010-05-22 18:29:11', '2011-03-11 20:52:31', '2010-05-22 18:29:11');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(3, '', '', 'admin@uberlov.ru', 'admin', 'PasswordKeeper::generate', '884f9de044df99d54aedf354eded1a32', '884f9de044df99d54aedf354eded1a32qweqwe123', 1, 0, '2011-05-03 21:50:46', '2011-03-11 20:52:47', '2011-05-03 21:52:25');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(7, 'Сергей', 'Белов', 'limitium@gmail.com', 'limitium', 'PasswordKeeper::generate', 'df4ec620183da5af8c2df4d1c60f9c53', 'df4ec620183da5af8c2df4d1c60f9c53qweqwe123', 1, 0, '2011-09-07 20:02:05', '2011-03-31 12:26:05', '2011-09-07 20:02:05');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(8, NULL, NULL, 'strory@inbox.ru', 'Strory', 'PasswordKeeper::generate', '640adb09b1d4dd25742444cd8099f278', '640adb09b1d4dd25742444cd8099f2783101935', 1, 0, '2011-06-19 15:13:56', '2011-06-01 23:16:01', '2011-06-19 15:13:56');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(9, NULL, NULL, 'denis.samohvalov@gmail.com', 'Deni', 'PasswordKeeper::generate', '910e4a78e92445caa3737babd514af45', '910e4a78e92445caa3737babd514af45[ew[ew[ew', 1, 0, '2011-09-28 13:35:27', '2011-06-02 11:38:20', '2011-09-28 13:35:27');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(10, NULL, NULL, 'nail84@mail.ru', 'nail84', 'PasswordKeeper::generate', '4f474e8bef2ce86bb91c29a06e56b9c9', '4f474e8bef2ce86bb91c29a06e56b9c912qwaszx', 1, 0, '2011-06-06 23:55:54', '2011-06-02 13:19:15', '2011-06-06 23:55:54');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(11, NULL, NULL, 'bogdan1982@bk.ru', 'karas495', 'PasswordKeeper::generate', 'e991dc6f6e8e7ac3c1411c3c46bf2c29', 'e991dc6f6e8e7ac3c1411c3c46bf2c29messina', 1, 0, '2011-06-17 09:05:47', '2011-06-17 09:04:44', '2011-06-17 09:05:47');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(12, NULL, NULL, 'mopok122@rambler.ru', 'qwert7330', 'PasswordKeeper::generate', 'f95b91b3d6ac27c54d69ca0b6390fc72', 'f95b91b3d6ac27c54d69ca0b6390fc72rak-ch144wh', 1, 0, '2011-09-07 21:24:21', '2011-06-17 19:42:28', '2011-09-07 21:24:21');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(13, NULL, NULL, 'vintik717@mail.ru', 'vintik717', 'PasswordKeeper::generate', 'ac49f689e848613413e33f6dc09c703c', 'ac49f689e848613413e33f6dc09c703c09101973', 1, 0, '2011-06-18 19:05:09', '2011-06-18 17:52:32', '2011-06-18 19:05:09');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(14, NULL, NULL, 'ivagin@inbox.ru', 'Nov_v', 'PasswordKeeper::generate', '1686e45cd033eacf7215b5bc17fc4d1b', '1686e45cd033eacf7215b5bc17fc4d1b19770518', 1, 0, '2011-06-20 22:49:27', '2011-06-18 22:50:21', '2011-06-20 22:49:27');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(15, NULL, NULL, 'lia_okmando@mail.ru', 'Andrea', 'PasswordKeeper::generate', '0f1b5bf5d4f54feaa421c959f86c3231', '0f1b5bf5d4f54feaa421c959f86c3231Gjvbljh84', 1, 0, '2011-06-30 10:52:17', '2011-06-30 10:46:24', '2011-06-30 10:52:17');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(16, NULL, NULL, 'aislinna-alois@mail.ru', 'TrurlExerdelm', 'PasswordKeeper::generate', '4d71ad6fad2637c59f188c2e4f9b6d2d', '4d71ad6fad2637c59f188c2e4f9b6d2diz1pX8ds8Y', 0, 0, NULL, '2011-08-19 20:42:41', '2011-08-19 20:42:41');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(17, NULL, NULL, 'dalkot@yandex.ru', 'dallar', 'PasswordKeeper::generate', 'ce905927ab138b7ac1f5c3e9a8f69e07', 'ce905927ab138b7ac1f5c3e9a8f69e0710da73kt', 1, 0, '2011-08-21 23:22:10', '2011-08-21 23:14:20', '2011-08-21 23:22:10');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(18, NULL, NULL, 'sawizky89sergei@yandex.com', 'flootbit', 'PasswordKeeper::generate', 'e59f33aa47ddd3c5b3735f4543c7e090', 'e59f33aa47ddd3c5b3735f4543c7e0903rd3uvf4KL', 0, 0, NULL, '2011-09-10 04:57:37', '2011-09-10 04:57:37');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(19, NULL, NULL, 'sergeizhuk@mail.ru', 'sergeizhuk', 'PasswordKeeper::generate', 'c6470dd95767fb5d06da94ee24b4629a', 'c6470dd95767fb5d06da94ee24b4629asergii', 1, 0, '2011-09-13 10:04:39', '2011-09-13 09:51:33', '2011-09-13 10:04:39');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(20, NULL, NULL, 'ewro_09@mail.ru', 'bololos', 'PasswordKeeper::generate', '34955ccb7931f2040f8664d551cebe30', '34955ccb7931f2040f8664d551cebe30rfhfcm', 0, 0, NULL, '2011-09-13 16:06:28', '2011-09-13 16:06:28');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(21, NULL, NULL, 'klimov_aleksey@mail.ru', 'Lexa_Klim', 'PasswordKeeper::generate', '78508c435201fc1948dbd66282fbc4b3', '78508c435201fc1948dbd66282fbc4b3631984a', 1, 0, '2011-09-14 11:05:48', '2011-09-14 11:03:10', '2011-09-14 11:05:48');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(22, NULL, NULL, 'v.semenec@parrus-hotel.ru', 'Parus', 'PasswordKeeper::generate', '841e74959478f2b2de634176b03f8905', '841e74959478f2b2de634176b03f8905ctvtytw', 1, 0, '2011-09-19 13:08:54', '2011-09-19 13:05:49', '2011-09-19 13:08:54');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(23, NULL, NULL, 'Vitus-1971@yandex.ru', 'Vitus', 'PasswordKeeper::generate', '63c86d2880a613775751124a70031786', '63c86d2880a613775751124a70031786200771', 1, 0, '2011-09-23 16:12:41', '2011-09-23 15:42:57', '2011-09-23 16:12:41');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(24, NULL, NULL, 'hash38@gmail.com', 'Psylocib', 'PasswordKeeper::generate', 'aec469b52ba53904025061b3208640f0', 'aec469b52ba53904025061b3208640f0zazaza12', 1, 0, '2011-10-12 01:47:24', '2011-10-12 01:43:56', '2011-10-12 01:47:24');
INSERT INTO sf_guard_user (id, first_name, last_name, email_address, username, `algorithm`, salt, `password`, is_active, is_super_admin, last_login, created_at, updated_at) VALUES(25, NULL, NULL, 'medlowerm@mail.ru', 'BloolaScedBop', 'PasswordKeeper::generate', 'ec6269b289d768b52786fdd7871757e3', 'ec6269b289d768b52786fdd7871757e39cEv9lnl6I', 0, 0, NULL, '2011-10-12 16:53:36', '2011-10-12 16:53:36');

DROP TABLE IF EXISTS sf_guard_user_group;
CREATE TABLE IF NOT EXISTS sf_guard_user_group (
  user_id bigint(20) NOT NULL default '0',
  group_id bigint(20) NOT NULL default '0',
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  PRIMARY KEY  (user_id,group_id),
  KEY sf_guard_user_group_group_id_sf_guard_group_id (group_id)
) TYPE=InnoDB;


DROP TABLE IF EXISTS sf_guard_user_permission;
CREATE TABLE IF NOT EXISTS sf_guard_user_permission (
  user_id bigint(20) NOT NULL default '0',
  permission_id bigint(20) NOT NULL default '0',
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  PRIMARY KEY  (user_id,permission_id),
  KEY sf_guard_user_permission_permission_id_sf_guard_permission_id (permission_id)
) TYPE=InnoDB;

INSERT INTO sf_guard_user_permission (user_id, permission_id, created_at, updated_at) VALUES(1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO sf_guard_user_permission (user_id, permission_id, created_at, updated_at) VALUES(7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

DROP TABLE IF EXISTS sf_guard_user_profile;
CREATE TABLE IF NOT EXISTS sf_guard_user_profile (
  user_id bigint(20) NOT NULL,
  email_new varchar(255) default NULL,
  validate_at datetime default NULL,
  validate varchar(33) default NULL,
  id int(11) NOT NULL auto_increment,
  sex tinyint(1) NOT NULL default '1',
  birth_date date default NULL,
  userpic varchar(255) default NULL,
  description text,
  city_id int(11) default NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY user_id (user_id),
  UNIQUE KEY user_id_unique_idx (user_id),
  UNIQUE KEY email_new (email_new),
  KEY city_id_idx (city_id)
) TYPE=InnoDB ;

INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(1, NULL, '0000-00-00 00:00:00', '', 1, 1, '2011-05-03', '45843c7ab484e9cdfe293949a1448b72.png', '', 123, '2011-03-11 20:52:18', '2011-05-03 21:24:15');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(2, NULL, '0000-00-00 00:00:00', '', 2, 1, NULL, NULL, NULL, 456, '2011-03-11 20:52:31', '2011-03-11 20:52:31');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(3, NULL, '0000-00-00 00:00:00', '', 3, 1, NULL, 'b44abf69be64d1141dff6561ce6d4eb7.png', '', 213, '2011-03-11 20:52:47', '2011-05-03 21:51:57');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(7, NULL, '2011-06-02 00:04:14', 'rccf8ea89bba60d65ca35d1715f22c474', 7, 1, NULL, '00958ac0a61fa928c0d26d97bb7a93af.gif', '', 1782, '2011-03-31 12:26:06', '2011-06-02 00:04:14');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(8, NULL, NULL, NULL, 8, 1, NULL, NULL, NULL, NULL, '2011-06-01 23:16:02', '2011-06-02 00:28:59');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(9, NULL, NULL, NULL, 9, 1, NULL, NULL, NULL, NULL, '2011-06-02 11:38:22', '2011-09-28 13:35:00');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(10, NULL, NULL, NULL, 10, 1, NULL, NULL, NULL, NULL, '2011-06-02 13:19:15', '2011-06-02 13:20:17');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(11, NULL, NULL, NULL, 11, 1, NULL, NULL, NULL, NULL, '2011-06-17 09:04:44', '2011-06-17 09:05:47');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(12, NULL, NULL, NULL, 12, 1, NULL, NULL, NULL, NULL, '2011-06-17 19:42:29', '2011-06-17 20:37:25');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(13, NULL, NULL, NULL, 13, 1, NULL, NULL, NULL, NULL, '2011-06-18 17:52:41', '2011-06-18 17:57:35');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(14, NULL, NULL, NULL, 14, 1, NULL, NULL, NULL, NULL, '2011-06-18 22:50:21', '2011-06-20 22:49:27');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(15, NULL, NULL, NULL, 15, 1, NULL, NULL, NULL, NULL, '2011-06-30 10:46:24', '2011-06-30 10:52:17');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(16, NULL, '2011-08-19 20:42:40', 'nc050aefe129fd8d9afbb512ba41e6f37', 16, 1, NULL, NULL, NULL, NULL, '2011-08-19 20:42:41', '2011-08-19 20:42:41');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(17, NULL, NULL, NULL, 17, 1, NULL, NULL, NULL, NULL, '2011-08-21 23:14:20', '2011-08-21 23:22:09');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(18, NULL, '2011-09-10 04:57:37', 'n826e2bd3b0c36aea8f44b323c21f5cd8', 18, 1, NULL, NULL, NULL, NULL, '2011-09-10 04:57:37', '2011-09-10 04:57:37');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(19, NULL, NULL, NULL, 19, 1, NULL, NULL, NULL, NULL, '2011-09-13 09:51:34', '2011-09-13 10:04:38');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(20, NULL, '2011-09-13 16:06:25', 'nefb7d2cf382b30204292012cdcd47c07', 20, 1, NULL, NULL, NULL, NULL, '2011-09-13 16:06:30', '2011-09-13 16:06:30');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(21, NULL, NULL, NULL, 21, 1, NULL, NULL, NULL, NULL, '2011-09-14 11:03:11', '2011-09-14 11:05:48');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(22, NULL, NULL, NULL, 22, 1, NULL, NULL, NULL, NULL, '2011-09-19 13:05:49', '2011-09-19 13:08:53');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(23, NULL, NULL, NULL, 23, 1, NULL, NULL, NULL, NULL, '2011-09-23 15:42:58', '2011-09-23 16:12:41');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(24, NULL, NULL, NULL, 24, 1, NULL, NULL, NULL, NULL, '2011-10-12 01:43:56', '2011-10-12 01:47:23');
INSERT INTO sf_guard_user_profile (user_id, email_new, validate_at, validate, id, sex, birth_date, userpic, description, city_id, created_at, updated_at) VALUES(25, NULL, '2011-10-12 16:53:36', 'n12614b78ca5f1d830c217082d64f82f7', 25, 1, NULL, NULL, NULL, NULL, '2011-10-12 16:53:36', '2011-10-12 16:53:36');

DROP TABLE IF EXISTS style;
CREATE TABLE IF NOT EXISTS style (
  id int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY `name` (`name`)
) TYPE=InnoDB ;

INSERT INTO style (id, `name`) VALUES(12, 'Донная удочка(фидер)');
INSERT INTO style (id, `name`) VALUES(6, 'Дорожка(троллинг)');
INSERT INTO style (id, `name`) VALUES(9, 'Жерлица');
INSERT INTO style (id, `name`) VALUES(7, 'Кружки');
INSERT INTO style (id, `name`) VALUES(10, 'Мормышка');
INSERT INTO style (id, `name`) VALUES(14, 'Наплавом');
INSERT INTO style (id, `name`) VALUES(8, 'Нахлыст');
INSERT INTO style (id, `name`) VALUES(13, 'Невод и сети');
INSERT INTO style (id, `name`) VALUES(11, 'Переметы и подпуски');
INSERT INTO style (id, `name`) VALUES(15, 'Перетяжка и резинка');
INSERT INTO style (id, `name`) VALUES(3, 'Поплавочная удочка');
INSERT INTO style (id, `name`) VALUES(16, 'Проводка');
INSERT INTO style (id, `name`) VALUES(2, 'Спининг');

DROP TABLE IF EXISTS tag;
CREATE TABLE IF NOT EXISTS tag (
  id bigint(20) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  is_triple tinyint(1) default NULL,
  triple_namespace varchar(100) default NULL,
  triple_key varchar(100) default NULL,
  triple_value varchar(100) default NULL,
  PRIMARY KEY  (id),
  KEY name_idx (`name`),
  KEY triple1_idx (triple_namespace),
  KEY triple2_idx (triple_key),
  KEY triple3_idx (triple_value)
) TYPE=InnoDB ;

INSERT INTO tag (id, `name`, is_triple, triple_namespace, triple_key, triple_value) VALUES(11, 'уфимка', 0, NULL, NULL, NULL);
INSERT INTO tag (id, `name`, is_triple, triple_namespace, triple_key, triple_value) VALUES(12, 'электромотор', 0, NULL, NULL, NULL);

DROP TABLE IF EXISTS tagging;
CREATE TABLE IF NOT EXISTS tagging (
  id bigint(20) NOT NULL auto_increment,
  tag_id bigint(20) NOT NULL,
  taggable_model varchar(30) default NULL,
  taggable_id bigint(20) default NULL,
  PRIMARY KEY  (id),
  KEY tag_idx (tag_id),
  KEY taggable_idx (taggable_model,taggable_id)
) TYPE=InnoDB ;

INSERT INTO tagging (id, tag_id, taggable_model, taggable_id) VALUES(4, 11, 'Talk', 1);
INSERT INTO tagging (id, tag_id, taggable_model, taggable_id) VALUES(5, 12, 'Talk', 1);

DROP TABLE IF EXISTS talk;
CREATE TABLE IF NOT EXISTS talk (
  id int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  message text,
  talk_section_id int(11) default NULL,
  created_by int(11) NOT NULL,
  updated_by int(11) NOT NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  PRIMARY KEY  (id),
  KEY talk_section_id_idx (talk_section_id),
  KEY created_by_idx (created_by),
  KEY updated_by_idx (updated_by)
) TYPE=InnoDB ;

INSERT INTO talk (id, `name`, message, talk_section_id, created_by, updated_by, created_at, updated_at) VALUES(1, 'Мотор на Уфимку - 21', '<p>Есть Уфимка - 21 с надувным дном. Есть желание на нее заполучить електро мотор какие есть варианты?</p>', 41, 7, 7, '2011-06-28 17:26:40', '2011-06-28 17:26:40');

DROP TABLE IF EXISTS talk_section;
CREATE TABLE IF NOT EXISTS talk_section (
  id int(11) NOT NULL auto_increment,
  parent int(11) default NULL,
  `name` varchar(255) NOT NULL,
  lft int(11) default NULL,
  rgt int(11) default NULL,
  `level` smallint(6) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB ;

INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(20, NULL, 'root', 1, 64, 0);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(21, 20, 'Спининг', 2, 7, 1);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(22, 20, 'Донная рыбалка', 8, 13, 1);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(23, 21, 'Снасти', 3, 4, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(24, 21, 'Приманки', 5, 6, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(25, 22, 'Донки, Фидер, Пикер, Спутник, макушатник, кормак, фантомас.', 9, 10, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(26, 22, 'Приманки и прикормки', 11, 12, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(27, 20, 'Попловочная рыбалка', 14, 19, 1);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(28, 27, 'Снасти', 15, 16, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(29, 27, 'Приманки и прикормки', 17, 18, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(30, 20, 'Нахлыст', 20, 25, 1);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(31, 30, 'Снасти', 21, 22, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(32, 30, 'Приманки и прикормки', 23, 24, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(33, 20, 'Кастинговая рыбалка', 26, 33, 1);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(34, 33, 'Снасти', 27, 28, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(35, 33, 'Приманки и прикормки', 29, 30, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(36, 33, 'Теория и практика', 31, 32, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(37, 20, 'Морская рыбалка', 34, 39, 1);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(38, 37, 'Попловок', 35, 36, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(39, 37, 'Спининг', 37, 38, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(40, 20, 'Техника и снаряжение', 40, 47, 1);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(41, 40, 'Транспортные средства (внедорожники, снегоходы, лодки и моторы)', 41, 42, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(42, 40, 'Туристическое оборудование и снаряжение', 43, 44, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(43, 40, 'Навигационные приборы и эхолоты, рации ', 45, 46, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(44, 20, 'Брахолка', 48, 55, 1);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(45, 44, 'Продажа', 49, 50, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(46, 44, 'Покупка', 51, 52, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(47, 44, 'Услуги', 53, 54, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(48, 20, 'Обо всем', 56, 63, 1);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(49, 48, 'Нормативная база', 57, 58, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(50, 48, 'Своими руками', 59, 60, 2);
INSERT INTO talk_section (id, parent, `name`, lft, rgt, `level`) VALUES(51, 48, 'Рецепты', 61, 62, 2);

DROP TABLE IF EXISTS vote;
CREATE TABLE IF NOT EXISTS vote (
  id bigint(20) NOT NULL auto_increment,
  `value` int(11) NOT NULL,
  voter int(11) default NULL,
  toward varchar(255) default NULL,
  location_id int(11) default NULL,
  comment_id int(11) default NULL,
  profit_id int(11) default NULL,
  profile_id int(11) default NULL,
  talk_id int(11) default NULL,
  fish_event_id int(11) default NULL,
  photo_id int(11) default NULL,
  PRIMARY KEY  (id),
  KEY vote_toward_idx (toward),
  KEY voter_idx (voter),
  KEY vote_comment_id_comment_id (comment_id),
  KEY vote_fish_event_id_fish_event_id (fish_event_id),
  KEY vote_location_id_location_id (location_id),
  KEY vote_photo_id_photo_id (photo_id),
  KEY vote_profile_id_sf_guard_user_profile_id (profile_id),
  KEY vote_profit_id_profit_id (profit_id),
  KEY vote_talk_id_talk_id (talk_id)
) TYPE=InnoDB ;

INSERT INTO vote (id, `value`, voter, toward, location_id, comment_id, profit_id, profile_id, talk_id, fish_event_id, photo_id) VALUES(1, 1, 7, 'profile', NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO vote (id, `value`, voter, toward, location_id, comment_id, profit_id, profile_id, talk_id, fish_event_id, photo_id) VALUES(2, 1, 7, 'location', 687, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO vote (id, `value`, voter, toward, location_id, comment_id, profit_id, profile_id, talk_id, fish_event_id, photo_id) VALUES(3, 1, 7, 'location', 684, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO vote (id, `value`, voter, toward, location_id, comment_id, profit_id, profile_id, talk_id, fish_event_id, photo_id) VALUES(4, 1, 7, 'profit', NULL, NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO vote (id, `value`, voter, toward, location_id, comment_id, profit_id, profile_id, talk_id, fish_event_id, photo_id) VALUES(5, 1, 7, 'profile', NULL, NULL, NULL, 8, NULL, NULL, NULL);
INSERT INTO vote (id, `value`, voter, toward, location_id, comment_id, profit_id, profile_id, talk_id, fish_event_id, photo_id) VALUES(6, 1, 7, 'location', 677, NULL, NULL, NULL, NULL, NULL, NULL);

DROP TABLE IF EXISTS wish_list;
CREATE TABLE IF NOT EXISTS wish_list (
  profile_id int(11) NOT NULL default '0',
  location_id int(11) NOT NULL default '0',
  PRIMARY KEY  (profile_id,location_id),
  KEY wish_list_location_id_location_id (location_id)
) TYPE=InnoDB;



ALTER TABLE `address`
  ADD CONSTRAINT address_area_high_id_area_high_id FOREIGN KEY (area_high_id) REFERENCES area_high (id),
  ADD CONSTRAINT address_area_low_id_area_low_id FOREIGN KEY (area_low_id) REFERENCES area_low (id),
  ADD CONSTRAINT address_country_id_country_id FOREIGN KEY (country_id) REFERENCES country (id),
  ADD CONSTRAINT address_locality_id_locality_id FOREIGN KEY (locality_id) REFERENCES locality (id),
  ADD CONSTRAINT address_route_id_route_id FOREIGN KEY (route_id) REFERENCES route (id);

ALTER TABLE `area_high`
  ADD CONSTRAINT area_high_area_low_id_area_low_id FOREIGN KEY (area_low_id) REFERENCES area_low (id);

ALTER TABLE `area_low`
  ADD CONSTRAINT area_low_country_id_country_id FOREIGN KEY (country_id) REFERENCES country (id);

ALTER TABLE `city`
  ADD CONSTRAINT city_region_id_region_id FOREIGN KEY (region_id) REFERENCES region (id);

ALTER TABLE `comment`
  ADD CONSTRAINT comment_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile (id),
  ADD CONSTRAINT comment_fish_event_id_fish_event_id FOREIGN KEY (fish_event_id) REFERENCES fish_event (id) ON DELETE CASCADE,
  ADD CONSTRAINT comment_inbox_id_inbox_id FOREIGN KEY (inbox_id) REFERENCES inbox (id) ON DELETE CASCADE,
  ADD CONSTRAINT comment_location_id_location_id FOREIGN KEY (location_id) REFERENCES location (id) ON DELETE CASCADE,
  ADD CONSTRAINT comment_profit_id_profit_id FOREIGN KEY (profit_id) REFERENCES profit (id) ON DELETE CASCADE,
  ADD CONSTRAINT comment_talk_id_talk_id FOREIGN KEY (talk_id) REFERENCES talk (id) ON DELETE CASCADE,
  ADD CONSTRAINT comment_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile (id);

ALTER TABLE `fish_event`
  ADD CONSTRAINT fish_event_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile (id),
  ADD CONSTRAINT fish_event_fish_event_type_id_fish_event_type_id FOREIGN KEY (fish_event_type_id) REFERENCES fish_event_type (id),
  ADD CONSTRAINT fish_event_location_id_location_id FOREIGN KEY (location_id) REFERENCES location (id) ON DELETE CASCADE,
  ADD CONSTRAINT fish_event_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile (id);

ALTER TABLE `friend`
  ADD CONSTRAINT friend_accepter_id_sf_guard_user_profile_id FOREIGN KEY (accepter_id) REFERENCES sf_guard_user_profile (id),
  ADD CONSTRAINT friend_requester_id_sf_guard_user_profile_id FOREIGN KEY (requester_id) REFERENCES sf_guard_user_profile (id);

ALTER TABLE `inbox`
  ADD CONSTRAINT inbox_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile (id),
  ADD CONSTRAINT inbox_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile (id);

ALTER TABLE `inboxed`
  ADD CONSTRAINT inboxed_inbox_id_inbox_id FOREIGN KEY (inbox_id) REFERENCES inbox (id) ON DELETE CASCADE,
  ADD CONSTRAINT inboxed_profile_id_sf_guard_user_profile_id FOREIGN KEY (profile_id) REFERENCES sf_guard_user_profile (id);

ALTER TABLE `locality`
  ADD CONSTRAINT locality_area_high_id_area_high_id FOREIGN KEY (area_high_id) REFERENCES area_high (id);

ALTER TABLE `location`
  ADD CONSTRAINT location_address_id_address_id FOREIGN KEY (address_id) REFERENCES address (id),
  ADD CONSTRAINT location_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile (id),
  ADD CONSTRAINT location_location_flow_id_location_flow_id FOREIGN KEY (location_flow_id) REFERENCES location_flow (id),
  ADD CONSTRAINT location_location_fundus_id_location_fundus_id FOREIGN KEY (location_fundus_id) REFERENCES location_fundus (id),
  ADD CONSTRAINT location_location_relief_id_location_relief_id FOREIGN KEY (location_relief_id) REFERENCES location_relief (id),
  ADD CONSTRAINT location_location_scope_id_location_scope_id FOREIGN KEY (location_scope_id) REFERENCES location_scope (id),
  ADD CONSTRAINT location_location_type_id_location_type_id FOREIGN KEY (location_type_id) REFERENCES location_type (id),
  ADD CONSTRAINT location_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile (id);

ALTER TABLE `location_show`
  ADD CONSTRAINT location_show_location_id_location_id FOREIGN KEY (location_id) REFERENCES location (id) ON DELETE CASCADE;

ALTER TABLE `location_version`
  ADD CONSTRAINT location_version_id_location_id FOREIGN KEY (id) REFERENCES location (id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `photo`
  ADD CONSTRAINT photo_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile (id),
  ADD CONSTRAINT photo_location_id_location_id FOREIGN KEY (location_id) REFERENCES location (id) ON DELETE CASCADE,
  ADD CONSTRAINT photo_profit_id_profit_id FOREIGN KEY (profit_id) REFERENCES profit (id) ON DELETE CASCADE,
  ADD CONSTRAINT photo_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile (id);

ALTER TABLE `photo_location_version`
  ADD CONSTRAINT photo_location_version_id_photo_id FOREIGN KEY (id) REFERENCES photo (id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `photo_profit_version`
  ADD CONSTRAINT photo_profit_version_id_photo_id FOREIGN KEY (id) REFERENCES photo (id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `photo_version`
  ADD CONSTRAINT photo_version_id_photo_id FOREIGN KEY (id) REFERENCES photo (id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `profit`
  ADD CONSTRAINT profit_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile (id),
  ADD CONSTRAINT profit_fish_id_fish_id FOREIGN KEY (fish_id) REFERENCES fish (id),
  ADD CONSTRAINT profit_location_id_location_id FOREIGN KEY (location_id) REFERENCES location (id) ON DELETE CASCADE,
  ADD CONSTRAINT profit_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile (id);

ALTER TABLE `profit_detail`
  ADD CONSTRAINT profit_detail_fish_id_fish_id FOREIGN KEY (fish_id) REFERENCES fish (id),
  ADD CONSTRAINT profit_detail_profit_id_profit_id FOREIGN KEY (profit_id) REFERENCES profit (id) ON DELETE CASCADE,
  ADD CONSTRAINT profit_detail_style_id_style_id FOREIGN KEY (style_id) REFERENCES style (id);

ALTER TABLE `read_comment`
  ADD CONSTRAINT read_comment_comment_id_comment_id FOREIGN KEY (comment_id) REFERENCES `comment` (id),
  ADD CONSTRAINT read_comment_profile_id_sf_guard_user_profile_id FOREIGN KEY (profile_id) REFERENCES sf_guard_user_profile (id);

ALTER TABLE `region`
  ADD CONSTRAINT region_country_id_country_id FOREIGN KEY (country_id) REFERENCES country (id);

ALTER TABLE `route`
  ADD CONSTRAINT route_country_id_country_id FOREIGN KEY (country_id) REFERENCES country (id);

ALTER TABLE `sf_guard_forgot_password`
  ADD CONSTRAINT sf_guard_forgot_password_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user (id) ON DELETE CASCADE;

ALTER TABLE `sf_guard_group_permission`
  ADD CONSTRAINT sf_guard_group_permission_group_id_sf_guard_group_id FOREIGN KEY (group_id) REFERENCES sf_guard_group (id) ON DELETE CASCADE,
  ADD CONSTRAINT sf_guard_group_permission_permission_id_sf_guard_permission_id FOREIGN KEY (permission_id) REFERENCES sf_guard_permission (id) ON DELETE CASCADE;

ALTER TABLE `sf_guard_remember_key`
  ADD CONSTRAINT sf_guard_remember_key_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user (id) ON DELETE CASCADE;

ALTER TABLE `sf_guard_user_group`
  ADD CONSTRAINT sf_guard_user_group_group_id_sf_guard_group_id FOREIGN KEY (group_id) REFERENCES sf_guard_group (id) ON DELETE CASCADE,
  ADD CONSTRAINT sf_guard_user_group_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user (id) ON DELETE CASCADE;

ALTER TABLE `sf_guard_user_permission`
  ADD CONSTRAINT sf_guard_user_permission_permission_id_sf_guard_permission_id FOREIGN KEY (permission_id) REFERENCES sf_guard_permission (id) ON DELETE CASCADE,
  ADD CONSTRAINT sf_guard_user_permission_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user (id) ON DELETE CASCADE;

ALTER TABLE `sf_guard_user_profile`
  ADD CONSTRAINT sf_guard_user_profile_city_id_city_id FOREIGN KEY (city_id) REFERENCES city (id),
  ADD CONSTRAINT sf_guard_user_profile_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user (id);

ALTER TABLE `talk`
  ADD CONSTRAINT talk_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile (id),
  ADD CONSTRAINT talk_talk_section_id_talk_section_id FOREIGN KEY (talk_section_id) REFERENCES talk_section (id),
  ADD CONSTRAINT talk_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile (id);

ALTER TABLE `vote`
  ADD CONSTRAINT vote_comment_id_comment_id FOREIGN KEY (comment_id) REFERENCES `comment` (id) ON DELETE CASCADE,
  ADD CONSTRAINT vote_fish_event_id_fish_event_id FOREIGN KEY (fish_event_id) REFERENCES fish_event (id) ON DELETE CASCADE,
  ADD CONSTRAINT vote_location_id_location_id FOREIGN KEY (location_id) REFERENCES location (id) ON DELETE CASCADE,
  ADD CONSTRAINT vote_photo_id_photo_id FOREIGN KEY (photo_id) REFERENCES photo (id),
  ADD CONSTRAINT vote_profile_id_sf_guard_user_profile_id FOREIGN KEY (profile_id) REFERENCES sf_guard_user_profile (id),
  ADD CONSTRAINT vote_profit_id_profit_id FOREIGN KEY (profit_id) REFERENCES profit (id) ON DELETE CASCADE,
  ADD CONSTRAINT vote_talk_id_talk_id FOREIGN KEY (talk_id) REFERENCES talk (id) ON DELETE CASCADE,
  ADD CONSTRAINT vote_voter_sf_guard_user_profile_id FOREIGN KEY (voter) REFERENCES sf_guard_user_profile (id);

ALTER TABLE `wish_list`
  ADD CONSTRAINT wish_list_location_id_location_id FOREIGN KEY (location_id) REFERENCES location (id) ON DELETE CASCADE,
  ADD CONSTRAINT wish_list_profile_id_sf_guard_user_profile_id FOREIGN KEY (profile_id) REFERENCES sf_guard_user_profile (id);
SET FOREIGN_KEY_CHECKS=1;
