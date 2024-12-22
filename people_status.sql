/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 90001 (9.0.1)
 Source Host           : localhost:3306
 Source Schema         : people_status

 Target Server Type    : MySQL
 Target Server Version : 90001 (9.0.1)
 File Encoding         : 65001

 Date: 17/12/2024 12:37:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Menus
-- ----------------------------
DROP TABLE IF EXISTS `Menus`;
CREATE TABLE `Menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT '<AppstoreOutlined />',
  `type` varchar(255) DEFAULT 'Menu',
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `Menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Menus
-- ----------------------------
BEGIN;
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (1, '首页', '/summary', 'AreaChartOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (2, '重点人员一览表', '/list', 'OrderedListOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (5, '重点人信息', '/basicinfo', 'TeamOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (6, '思想骨干信息', '/responsible', 'HeartOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (7, '全屏显示', '/fullscreen', 'FullscreenOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (8, '退出登陆', '/login', 'LogoutOutlined', 'Menu', NULL);
COMMIT;

-- ----------------------------
-- Table structure for People
-- ----------------------------
DROP TABLE IF EXISTS `People`;
CREATE TABLE `People` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `catagory` int DEFAULT NULL,
  `married` tinyint(1) DEFAULT '1',
  `avatar` varchar(255) DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `responsible_id` int DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  KEY `responsible_id` (`responsible_id`),
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `Units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_ibfk_2` FOREIGN KEY (`responsible_id`) REFERENCES `Responsibles` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of People
-- ----------------------------
BEGIN;
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (1, '赵光', 0, 0, '/17240291117501722266353792avatar.jpeg', 1, 4, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (2, '王鑫然', 0, 0, '/1722266353792avatar.jpeg', 2, 3, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (3, '张钟艺', 2, 0, '/1722266382061avatar.jpeg', 3, 18, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (4, '王自强', 1, 1, '/1722266389256avatar.jpeg', 3, 19, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (5, '陈丽丽', 2, 1, '/1722392288656avatar.jpeg', 2, 11, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (6, '王航', 2, 1, '/1722266353792avatar.jpeg', 1, 5, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (7, '王君弦', 1, 0, '/1722266353792avatar.jpeg', 1, 5, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (8, '沈佳航', 1, 1, '/1722266353792avatar.jpeg', 2, 12, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (9, '许旭', 1, 0, '/1722266353792avatar.jpeg', 2, 13, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (10, '马小力', 0, 0, '/1722266353792avatar.jpeg', 3, 17, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (11, '原奥', 2, 0, '/1722266353792avatar.jpeg', 3, 20, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (12, '李一鸣', 0, 0, '/1722266353792avatar.jpeg', 2, 14, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (13, '李思', 1, 0, '/1722266353792avatar.jpeg', 1, 8, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (14, '王振宇', 0, 1, '/1722266353792avatar.jpeg', 3, 24, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (15, '杨鑫', 0, 0, '/1722266353792avatar.jpeg', 1, 6, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (16, '赵玉生', 0, 1, '/1722266353792avatar.jpeg', 2, 15, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (17, '梁佳乐', 1, 0, '/1722266353792avatar.jpeg', 3, 23, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (18, '李昆权', 2, 0, '/1722266353792avatar.jpeg', 3, 23, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (19, '李栋', 2, 1, '/1722266353792avatar.jpeg', 2, 16, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (20, '李明丽', 0, 1, '/1722266353792avatar.jpeg', 1, 10, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (21, '张建增', 1, 1, '/1722266353792avatar.jpeg', 2, 3, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (22, '董小洁', 2, 1, '/1722266353792avatar.jpeg', 1, 9, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (23, '张亚清', 2, 0, '/1722266353792avatar.jpeg', 1, 7, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (24, '陈子健', 1, 0, '/1722266353792avatar.jpeg', 2, 11, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (25, '张琪', 1, 1, '/1722266353792avatar.jpeg', 3, 21, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (26, '宋宇豪', 0, 1, '/1722266353792avatar.jpeg', 3, 19, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (27, '张柏树', 0, 1, '/1722266353792avatar.jpeg', 1, 2, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (28, '刘乐', 2, 0, '/1722266353792avatar.jpeg', 2, 13, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (29, '王孟达', 1, 1, '/1722266353792avatar.jpeg', 3, 22, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (30, '王思思', 2, 0, '/1722266353792avatar.jpeg', 1, 10, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (35, '胡晓丽', 0, 1, '/17240291368091722266353792avatar.jpeg', 1, 7, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (36, '孙航', 1, 0, '/17240291368091722266353792avatar.jpeg', 1, 10, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (37, '高冰', 2, 1, '/17240291368091722266353792avatar.jpeg', 1, 8, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (38, '董文硕', 1, 1, '/17240291368091722266353792avatar.jpeg', 1, 9, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (39, '李润宣', 2, 0, '/17240291368091722266353792avatar.jpeg', 1, 7, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (40, '张宇航', 1, 0, '/17240291368091722266353792avatar.jpeg', 1, 10, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (41, '范伟', 1, 1, '/17240291368091722266353792avatar.jpeg', 2, 14, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (42, '徐子航', 1, 1, '/17240291368091722266353792avatar.jpeg', 2, 15, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (43, '郭浩', 1, 0, '/17240291368091722266353792avatar.jpeg', 2, 16, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (44, '马闻尚', 0, 1, '/17240291368091722266353792avatar.jpeg', 2, 12, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (45, '郑乐翔', 2, 1, '/17240291368091722266353792avatar.jpeg', 2, 13, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (46, '邓思栗', 1, 0, '/17240291368091722266353792avatar.jpeg', 2, 11, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (47, '吴懂懂', 1, 0, '/17240291368091722266353792avatar.jpeg', 3, 17, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (48, '徐浩', 2, 1, '/17240291368091722266353792avatar.jpeg', 3, 18, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (49, '张宇', 2, 0, '/17240291368091722266353792avatar.jpeg', 3, 20, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (50, '丁建超', 0, 0, '/17240291368091722266353792avatar.jpeg', 3, 24, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (51, '张航', 2, 1, '/17240291368091722266353792avatar.jpeg', 3, 18, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (52, '贺泽宇', 2, 0, '/17240291368091722266353792avatar.jpeg', 3, 21, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (53, '李青峰', 0, 0, '/17240291368091722266353792avatar.jpeg', 3, 19, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (54, '赵一帆', 2, 0, '/17240291368091722266353792avatar.jpeg', 3, 17, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (55, '孟涛', 2, 0, '/17240291368091722266353792avatar.jpeg', 3, 23, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (56, '马明坤', 1, 0, '/17240291368091722266353792avatar.jpeg', 1, 7, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (57, '张尚斌', 0, 0, '/17240291368091722266353792avatar.jpeg', 1, 8, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (58, '胡文君', 2, 1, '/17240291368091722266353792avatar.jpeg', 1, 9, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (59, '翟强', 1, 0, '/17240291368091722266353792avatar.jpeg', 1, 6, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (60, '孙力', 1, 0, '/17240291368091722266353792avatar.jpeg', 4, 25, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (61, '赵强', 2, 0, '/17240291368091722266353792avatar.jpeg', 4, 26, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (62, '唐棠', 2, 1, '/17240291368091722266353792avatar.jpeg', 4, 26, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (63, '鲁斯杰', 0, 0, '/17240291368091722266353792avatar.jpeg', 4, 27, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (64, '孔令', 1, 0, '/17240291368091722266353792avatar.jpeg', 4, 26, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (65, '章雨杰', 2, 0, '/17240291368091722266353792avatar.jpeg', 4, 27, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (66, '苗航', 0, 1, '/17240291368091722266353792avatar.jpeg', 4, 29, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (67, '冯雨禾', 2, 0, '/17240291368091722266353792avatar.jpeg', 4, 28, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (68, '王鑫然', 1, 0, '/17240291368091722266353792avatar.jpeg', 4, 31, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (69, '任飞', 1, 0, '/17240291368091722266353792avatar.jpeg', 4, 30, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (70, '石寒', 2, 1, '/17240291368091722266353792avatar.jpeg', 4, 30, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (71, '黄正国', 0, 1, '/17240291368091722266353792avatar.jpeg', 4, 29, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (72, '袁圆杰', 1, 0, '/17240291368091722266353792avatar.jpeg', 4, 27, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (73, '周建国', 1, 1, '/17240291368091722266353792avatar.jpeg', 4, 24, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (74, '石松', 2, 0, '/17240291368091722266353792avatar.jpeg', 4, 23, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (75, '戴行', 1, 0, '/17240291368091722266353792avatar.jpeg', 4, 22, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (76, '李聪', 1, 0, '/17240291368091722266353792avatar.jpeg', 4, 21, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (77, '张一名', 0, 0, '/17240291368091722266353792avatar.jpeg', 4, 20, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (78, '郭刚', 2, 1, '/17240291368091722266353792avatar.jpeg', 4, 18, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (79, '姚天明', 1, 0, '/17240291368091722266353792avatar.jpeg', 4, 17, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (80, '赵翔羽', 1, 0, '/17240291368091722266353792avatar.jpeg', 4, 19, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (81, '李敏', 2, 1, '/17240291368091722266353792avatar.jpeg', 5, 32, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (82, '王力', 0, 1, '/17240291368091722266353792avatar.jpeg', 5, 33, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (83, '郭建', 2, 0, '/17240291368091722266353792avatar.jpeg', 5, 34, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (84, '赵明', 0, 1, '/17240291368091722266353792avatar.jpeg', 5, 35, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (85, '林叶', 1, 0, '/17240291368091722266353792avatar.jpeg', 5, 36, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (86, '何捷', 2, 1, '/17240291368091722266353792avatar.jpeg', 5, 37, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (87, '郭德捷', 1, 1, '/17240291368091722266353792avatar.jpeg', 5, 38, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (88, '赵静', 2, 0, '/17240291368091722266353792avatar.jpeg', 5, 39, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (89, '徐佳航', 0, 0, '/17240291368091722266353792avatar.jpeg', 5, 32, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (90, '许力', 1, 1, '/17240291368091722266353792avatar.jpeg', 5, 33, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (91, '王阳雨', 2, 0, '/17240291368091722266353792avatar.jpeg', 5, 34, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (92, '孙明明', 0, 1, '/17240291368091722266353792avatar.jpeg', 5, 35, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (93, '赵浩', 1, 0, '/17240291368091722266353792avatar.jpeg', 5, 36, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (94, '李俊', 2, 1, '/17240291368091722266353792avatar.jpeg', 5, 37, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (95, '卓全', 0, 0, '/17240291368091722266353792avatar.jpeg', 5, 38, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (96, '郭思涵', 2, 1, '/17240291368091722266353792avatar.jpeg', 5, 39, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (97, '刘大壮', 0, 0, '/17240291368091722266353792avatar.jpeg', 5, 32, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (98, '张凯舟', 2, 0, '/17240291368091722266353792avatar.jpeg', 5, 32, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (99, '李友', 1, 1, '/17240291368091722266353792avatar.jpeg', 5, 39, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (100, '萧浩泽', 1, 1, '/17240291368091722266353792avatar.jpeg', 5, 38, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (101, '赵哲山', 2, 0, '/17240291368091722266353792avatar.jpeg', 5, 35, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (102, '王雨杰', 0, 0, '/17240291368091722266353792avatar.jpeg', 6, 40, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (103, '李怡然', 1, 1, '/17240291368091722266353792avatar.jpeg', 6, 41, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (104, '郭海峰', 0, 1, '/17240291368091722266353792avatar.jpeg', 6, 42, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (105, '朱易山', 2, 0, '/17240291368091722266353792avatar.jpeg', 6, 43, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (106, '徐凯山', 1, 0, '/17240291368091722266353792avatar.jpeg', 6, 47, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (107, '高森', 1, 1, '/17240291368091722266353792avatar.jpeg', 6, 44, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (108, '安静', 2, 0, '/17240291368091722266353792avatar.jpeg', 6, 45, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (109, '鲁佳', 1, 1, '/17240291368091722266353792avatar.jpeg', 6, 45, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (110, '周刚', 0, 0, '/17240291368091722266353792avatar.jpeg', 6, 46, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (112, '方宇', 2, 1, '/17240291368091722266353792avatar.jpeg', 6, 47, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (113, '赵嘉佳', 0, 0, '/17240291368091722266353792avatar.jpeg', 6, 44, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (121, '柳楷', 1, 0, '/17240291368091722266353792avatar.jpeg', 7, 48, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (122, '王柱', 2, 1, '/17240291368091722266353792avatar.jpeg', 7, 49, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (123, '韦初', 0, 1, '/17240291368091722266353792avatar.jpeg', 7, 50, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (124, '郭琪', 2, 0, '/17240291368091722266353792avatar.jpeg', 7, 51, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (125, '赵乐', 1, 1, '/17240291368091722266353792avatar.jpeg', 7, 52, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (126, '林霖', 1, 0, '/17240291368091722266353792avatar.jpeg', 7, 53, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (127, '杜浩', 2, 0, '/17240291368091722266353792avatar.jpeg', 7, 54, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (128, '徐诺', 1, 1, '/17240291368091722266353792avatar.jpeg', 7, 53, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (129, '池凯', 1, 0, '/17240291368091722266353792avatar.jpeg', 7, 51, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (130, '钱金', 2, 1, '/17240291368091722266353792avatar.jpeg', 7, 48, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (131, '周子宸', 1, 0, '/17240291368091722266353792avatar.jpeg', 7, 49, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (132, '李沐源', 0, 0, '/17240291368091722266353792avatar.jpeg', 7, 50, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (133, '王东', 2, 0, '/17240291368091722266353792avatar.jpeg', 7, 48, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (134, '许屹', 1, 1, '/17240291368091722266353792avatar.jpeg', 7, 54, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `avatar`, `unit_id`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (146, '王晨曦', 0, 1, '/1724051518156avatar.jpeg', 3, 17, '2024-12-17 12:34:39', '2024-12-17 12:34:39');
COMMIT;

-- ----------------------------
-- Table structure for Problems
-- ----------------------------
DROP TABLE IF EXISTS `Problems`;
CREATE TABLE `Problems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Problems
-- ----------------------------
BEGIN;
INSERT INTO `Problems` (`id`, `name`) VALUES (1, '身患重大疾病');
INSERT INTO `Problems` (`id`, `name`) VALUES (2, '阶段现实诉求强烈');
INSERT INTO `Problems` (`id`, `name`) VALUES (3, '涉及职级调整人员');
INSERT INTO `Problems` (`id`, `name`) VALUES (4, '立功受奖愿望强烈人员');
INSERT INTO `Problems` (`id`, `name`) VALUES (5, '拟晋升高级士官人员');
INSERT INTO `Problems` (`id`, `name`) VALUES (6, '涉网、涉黄问题倾向人员');
INSERT INTO `Problems` (`id`, `name`) VALUES (7, '长期在外执行任务人员');
INSERT INTO `Problems` (`id`, `name`) VALUES (8, '转业待移交人员');
INSERT INTO `Problems` (`id`, `name`) VALUES (9, '退休涉嫌违规兼职人员');
INSERT INTO `Problems` (`id`, `name`) VALUES (10, '专业技术力量整合人员');
INSERT INTO `Problems` (`id`, `name`) VALUES (11, '新入职、入伍人员');
INSERT INTO `Problems` (`id`, `name`) VALUES (12, '重点敏感岗位人员');
INSERT INTO `Problems` (`id`, `name`) VALUES (13, '在外探亲休假人员');
COMMIT;

-- ----------------------------
-- Table structure for RecordDevelopments
-- ----------------------------
DROP TABLE IF EXISTS `RecordDevelopments`;
CREATE TABLE `RecordDevelopments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) DEFAULT '无',
  `risk_level` int DEFAULT NULL,
  `record_id` int DEFAULT NULL,
  `measure` varchar(255) DEFAULT '无',
  `comment` varchar(255) DEFAULT '无',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `record_id` (`record_id`),
  CONSTRAINT `recorddevelopments_ibfk_1` FOREIGN KEY (`record_id`) REFERENCES `Records` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of RecordDevelopments
-- ----------------------------
BEGIN;
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (11, '长期在外执行任务', 0, 13, '沟通与协调', '无', '2024-08-12 15:14:05', '2024-01-01 15:14:05');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (13, '远距离在外执行任务人员', 2, 2, '建立协作机制', '无', '2024-08-13 11:33:20', '2024-07-01 11:33:20');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (15, '在外休假', 2, 8, '加强思想教育落实', '无', '2024-08-13 11:35:56', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (17, '长期在外执行任务', 0, 79, '沟通与协调', '无', '2024-08-17 05:21:50', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (18, '远距离在外执行任务人员', 1, 79, '建立协作机制', '无', '2024-08-17 05:22:59', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (19, '在外休假', 0, 77, '加强沟通管理', '无', '2024-08-17 05:24:11', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (20, '在外休假', 0, 77, '加强思想教育落实', '无', '2024-08-17 05:24:42', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (21, '涉网问题', 1, 76, '加强安全教育', '无', '2024-08-17 05:25:42', '2024-07-01 05:25:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (22, '涉网问题', 2, 76, '加强保密工作教育', '无', '2024-08-17 05:26:12', '2024-07-01 05:26:12');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (23, '涉网问题', 0, 6, '加强安全教育', '无', '2024-08-17 05:27:14', '2024-04-01 05:27:14');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (24, '涉网问题', 0, 6, '加强教育工作', '无', '2024-08-17 05:27:34', '2024-05-01 05:27:34');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (25, '涉网问题', 2, 6, '加强网络泄密教育', '无', '2024-08-17 05:27:57', '2024-04-01 05:27:57');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (26, '生活方面问题', 0, 80, '加强组织关心', '无', '2024-08-17 05:29:38', '2024-03-01 05:29:38');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (27, '子女教育问题', 1, 80, '尽量协调', '无', '2024-08-17 05:30:15', '2024-04-01 05:30:15');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (28, '长期在外执行任务人员', 1, 30, '加强政治教育', '无', '2024-08-17 05:31:01', '2024-06-01 05:31:01');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (29, '长期在外执行任务人员', 2, 30, '加强教育', '无', '2024-08-17 05:31:17', '2024-05-01 05:31:17');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (30, '手续问题', 2, 81, '积极帮助', '无', '2024-08-17 05:32:27', '2024-02-01 05:32:27');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (31, '退休涉嫌违规兼职', 2, 82, '加强互帮互助', '无', '2024-08-17 05:33:16', '2024-07-17 05:33:16');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (32, '身患重大疾病', 2, 83, '增强团结', '无', '2024-08-17 05:36:05', '2024-07-17 05:36:05');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (33, '生活方面', 1, 84, '加强沟通协调', '无', '2024-08-17 05:36:44', '2024-07-17 05:36:44');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (34, '生活方面', 0, 84, '加强沟通协调', '无', '2024-08-17 05:37:18', '2024-01-01 15:14:05');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (35, '拟晋升高级士官', 1, 73, '落实制度', '无', '2024-08-17 05:37:59', '2024-07-01 11:33:20');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (36, '阶段现实诉求强烈', 2, 73, '落实制度', '无', '2024-08-17 05:38:18', '2024-08-13 11:33:40');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (37, '专业技术力量整合', 0, 85, '沟通交流', '无', '2024-08-17 05:39:02', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (38, '阶段现实诉求强烈', 1, 85, '沟通', '无', '2024-08-17 05:39:15', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (39, '问题突出', 0, 86, '加强沟通交流', '无 ', '2024-08-17 05:40:00', '2024-07-17 05:40:00');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (40, '职级调整', 2, 87, '加强制度落实', '无', '2024-08-17 05:40:20', '2024-07-17 05:40:20');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (41, '职级调整', 2, 87, '职级调整', '无', '2024-08-17 05:40:37', '2024-07-17 05:40:37');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (42, '长期在外执行任务人员', 0, 88, '加强思想教育', '无', '2024-08-17 05:41:02', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (43, '长期在外执行任务人员', 0, 88, '加强保密教育', '无', '2024-08-17 05:41:32', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (44, '立功受奖愿望', 0, 89, '增加机会', '无', '2024-08-17 05:42:22', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (45, '职级调整', 0, 91, '职级调整', '无', '2024-08-17 05:54:41', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (46, '职级调整', 0, 91, '加强落实', '无', '2024-08-17 05:55:00', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (47, '工伤', 0, 15, '尽快落实制度', '无', '2024-08-17 05:56:07', '2024-08-17 05:56:07');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (48, '工伤', 0, 15, '加强沟通协调', '无', '2024-08-17 05:56:30', '2024-08-17 05:56:30');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (49, '重点敏感岗位人员', 1, 22, '加强保密教育', '无', '2024-08-17 05:57:17', '2024-08-17 05:57:17');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (50, '敏感岗位', 1, 22, '加强保密教育', '无', '2024-08-17 05:57:36', '2024-08-17 05:57:36');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (51, '生活方面问题', 1, 92, '协调沟通', '无', '2024-08-17 05:58:51', '2024-07-17 05:58:51');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (52, '居住方面问题', 1, 92, '尽量协调解决', '无', '2024-08-17 05:59:22', '2024-08-17 05:59:22');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (53, '重点敏感岗位', 2, 93, '加强网络泄密教育', '无', '2024-08-17 06:00:00', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (54, '融入问题', 1, 94, '加强沟通协调', '无', '2024-08-17 06:00:40', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (55, '团结协调问题', 1, 94, '加强团队工作', '无', '2024-08-17 06:01:05', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (56, '身患重大疾病', 0, 95, '就医', '无', '2024-08-17 06:01:58', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (57, '身患重大疾病', 1, 95, '解决医疗问题', '无', '2024-08-17 06:02:25', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (58, '生活方面问题', 0, 96, '加强沟通', '无', '2024-08-17 06:02:55', '2024-08-17 06:02:55');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (59, '1', 0, 2, '2', '3', '2024-08-17 06:03:48', '2024-08-17 06:03:48');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (60, '居住方面问题', 0, 97, '加强沟通协调', '无', '2024-08-17 06:04:09', '2024-08-17 06:04:09');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (61, '生活方面问题', 1, 97, '落实制度', '无', '2024-08-17 06:04:35', '2024-07-17 06:04:35');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (62, '长期在外执行任务', 2, 98, '加强安全教育', '无', '2024-08-17 06:05:03', '2024-07-17 06:05:03');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (63, '长期在外执行任务', 1, 98, '加强沟通协调', '无', '2024-08-17 06:05:18', '2024-07-17 06:05:18');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (64, '长期远距离在外', 1, 98, '建立协作机制', '无', '2024-08-17 06:05:49', '2024-07-17 06:05:49');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (65, '立功受奖愿望强烈', 0, 99, '增加机会', '无', '2024-08-17 06:06:13', '2024-07-01 06:06:13');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (66, '受奖愿望强烈', 1, 99, '加强沟通协调', '无', '2024-08-17 06:06:32', '2024-08-17 06:06:32');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (67, '立功受奖愿望强烈', 1, 100, '加强沟通协调', '无', '2024-08-17 06:07:00', '2024-08-17 06:07:00');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (68, '立功受奖愿望强烈', 1, 100, '增加机会', '无', '2024-08-17 06:07:13', '2024-08-17 06:07:13');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (69, '拟晋升高级', 0, 101, '增加机会', '无', '2024-08-17 06:07:33', '2024-08-17 06:07:33');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (70, '在外探亲休假', 0, 102, '加强思想教育', '无', '2024-08-17 06:08:03', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (71, '在外探亲休假人员', 0, 102, '沟通与协调', '无', '2024-08-17 06:08:17', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (72, '涉网问题', 0, 103, '加强网络泄密教育', '无', '2024-08-17 06:08:37', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (73, '生活方面问题', 1, 104, '沟通与协调', '无', '2024-08-17 06:09:05', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (74, '居住方面问题', 1, 105, '加强沟通协调，落实制度', '无', '2024-08-17 06:09:57', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (75, '阶段现实诉求强烈', 0, 105, '加强沟通协调', '无', '2024-08-17 06:10:18', '2024-08-17 06:10:18');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (76, '拟晋升高级士官', 1, 5, '落实制度', '无', '2024-08-17 06:10:44', '2024-07-17 06:10:44');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (77, '立功受奖愿望强烈', 0, 106, '增加机会', '无', '2024-08-17 06:11:22', '2024-07-17 06:11:22');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (78, '在外探亲休假', 0, 107, '加强保密教育\n加强安全教育\n', '无', '2024-08-17 06:11:54', '2024-01-01 06:11:54');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (79, '在外探亲', 0, 107, '加强网络泄密教育', '无', '2024-08-17 06:12:05', '2024-08-17 06:12:05');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (80, '在外探亲休假', 2, 3, '加强思想教育', '无', '2024-08-17 06:14:21', '2024-02-01 06:14:21');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (81, '在外探亲休假人员', 0, 108, '沟通与协调', '无', '2024-08-17 06:14:32', '2024-04-01 06:14:32');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (82, '涉网问题', 0, 108, '加强网络泄密教育', '无', '2024-08-17 06:14:38', '2024-07-17 06:14:38');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (85, '阶段现实诉求强烈', 1, 4, '加强沟通协调', '无', '2024-08-17 06:15:04', '2024-07-17 06:15:04');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (86, '拟晋升高级士官', 1, 4, '落实制度', '无', '2024-08-17 06:15:08', '2024-08-17 06:15:08');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (87, '立功受奖愿望强烈', 0, 110, '增加机会', '无', '2024-08-17 06:15:18', '2024-08-17 06:15:18');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (88, '在外探亲休假', 0, 111, '加强保密教育\n加强安全教育\n', '无', '2024-08-17 06:15:27', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (89, '在外探亲', 0, 10, '加强网络泄密教育', '无', '2024-08-17 06:15:36', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (90, '居住方面问题', 1, 112, '加强沟通协调', '无', '2024-08-17 06:15:44', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (91, '生活方面问题', 0, 112, '落实制度', '无', '2024-08-17 06:15:50', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (92, '长期在外执行任务', 0, 113, '加强安全教育', '无', '2024-08-17 06:16:01', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (93, '长期在外执行任务', 0, 113, '加强沟通协调', '无', '2024-08-17 06:16:06', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (94, '长期远距离在外', 0, 11, '建立协作机制', '无', '2024-08-17 06:16:14', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (95, '立功受奖愿望强烈', 1, 114, '增加机会', '无', '2024-08-17 06:16:23', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (96, '受奖愿望强烈', 0, 114, '加强沟通协调', '无', '2024-08-17 06:16:27', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (97, '立功受奖愿望强烈', 0, 11, '加强沟通协调', '无', '2024-08-17 06:16:34', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (98, '立功受奖愿望强烈', 0, 14, '增加机会', '无', '2024-08-17 06:16:42', '2024-05-01 07:01:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (99, '拟晋升高级', 1, 115, '增加机会', '无', '2024-08-17 06:16:49', '2024-01-17 07:01:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (101, '在外探亲休假人员', 0, 17, '沟通与协调', '无', '2024-08-17 06:17:07', '2024-08-17 06:17:07');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (102, '涉网问题', 0, 117, '加强网络泄密教育', '无', '2024-08-17 06:17:17', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (103, '生活方面问题', 0, 118, '沟通与协调', '无', '2024-08-17 06:17:26', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (104, '居住方面问题', 0, 118, '加强沟通协调，落实制度', '无', '2024-08-17 06:17:31', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (105, '阶段现实诉求强烈', 0, 118, '加强沟通协调', '无', '2024-08-17 06:17:36', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (106, '拟晋升高级士官', 0, 18, '落实制度', '无', '2024-08-17 06:17:57', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (107, '立功受奖愿望强烈', 0, 119, '增加机会', '无', '2024-08-17 06:18:07', '2024-08-17 06:18:07');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (108, '在外探亲休假', 1, 119, '加强保密教育\n加强安全教育\n', '无', '2024-08-17 06:18:13', '2024-08-17 06:18:13');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (109, '在外探亲', 1, 25, '加强网络泄密教育', '无', '2024-08-17 06:18:22', '2024-08-17 06:18:22');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (110, '在外探亲休假', 1, 25, '加强思想教育', '无', '2024-08-17 06:18:31', '2024-08-17 06:18:31');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (111, '在外探亲休假人员', 0, 26, '沟通与协调', '无', '2024-08-17 06:18:42', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (112, '涉网问题', 0, 120, '加强网络泄密教育', '无', '2024-08-17 06:19:01', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (113, '在外探亲休假', 1, 124, '加强网络泄密教育', '无', '2024-08-17 06:20:46', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (114, '长期在外执行任务', 2, 123, '加强保密教育', '无', '2024-08-17 06:21:07', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (115, '在外探亲休假', 0, 124, '加强保密教育', '无', '2024-08-17 06:21:26', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (116, '重点敏感岗位', 0, 125, '加强保密教育\n加强安全教育\n', '无', '2024-08-17 06:21:54', '2024-08-17 06:21:54');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (117, '重点敏感岗位人员', 1, 125, '加强政治教育', '无', '2024-08-17 06:22:39', '2024-08-17 06:22:39');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (118, '涉及职级调整', 1, 126, '落实制度', '无', '2024-08-17 06:23:04', '2024-08-17 06:23:04');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (119, '涉及职级调整', 0, 126, '职级调整', '无', '2024-08-17 06:23:19', '2024-08-17 06:23:19');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (120, '新入职人员', 0, 127, '增加机会\n加强互帮互助\n', '无', '2024-08-17 06:23:48', '2024-08-17 06:23:48');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (121, '新入职', 1, 127, '加强保密教育', '无', '2024-08-17 06:24:04', '2024-08-17 06:24:04');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (122, '专业技术力量整合人员', 1, 128, '加强思想教育', '无', '2024-08-17 06:24:37', '2024-08-17 06:24:37');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (123, '专业技术力量整合', 0, 128, '建立协作机制', '无', '2024-08-17 06:24:50', '2024-08-17 06:24:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (124, '身患重大疾病', 0, 129, '落实制度', '无', '2024-08-17 06:25:12', '2024-08-17 06:25:12');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (125, '重点敏感岗位', 1, 130, '加强保密教育', '无', '2024-08-17 06:25:32', '2024-08-17 06:25:32');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (126, '在外探亲休假', 1, 131, '加强沟通协调', '无', '2024-08-17 06:25:57', '2024-05-01 06:25:57');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (127, '在外探亲休假', 2, 131, '沟通与协调\n加强网络泄密教育', '无', '2024-08-17 06:26:24', '2024-08-17 06:26:24');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (129, '身患重大疾病', 1, 78, '加强互帮互助', '无', '2024-08-17 06:27:37', '2024-08-17 06:27:37');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (130, '生活方面问题', 1, 132, '沟通与协调', '无', '2024-08-17 06:27:57', '2024-08-17 06:27:57');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (131, '居住方面问题', 1, 132, '落实制度', '无', '2024-08-17 06:28:12', '2024-08-17 06:28:12');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (132, '居住方面问题', 2, 132, '协调', '无', '2024-08-17 06:28:32', '2024-08-17 06:28:32');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (133, '涉及职级调整人员', 1, 133, '职级调整\n增加机会\n', '无', '2024-08-17 06:28:54', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (134, '涉及职级调整', 1, 133, '落实制度', '无', '2024-08-17 06:29:20', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (135, '立功受奖愿望强烈', 1, 134, '增加机会', '无', '2024-08-17 06:29:41', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (136, '立功受奖愿望强烈', 0, 134, '落实制度', '无', '2024-08-17 06:29:55', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (137, '拟晋升高级士官', 0, 135, '加强沟通协调', '无', '2024-08-17 06:30:24', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (138, '拟晋升高级士官人员', 1, 135, '落实制度', '无', '2024-08-17 06:30:35', '2024-08-17 06:30:35');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (139, '长期在外执行任务', 0, 136, '加强网络泄密教育', '无', '2024-08-17 06:30:57', '2024-08-17 06:30:57');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (140, '长期在外执行任务', 1, 136, '加强思想教育', '无', '2024-08-17 06:31:10', '2024-08-17 06:31:10');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (141, '长期在外执行任务', 2, 136, '建立协作机制', '无', '2024-08-17 06:31:27', '2024-08-17 06:31:27');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (142, '探亲', 1, 137, '加强保密教育', '无', '2024-08-17 06:32:01', '2024-08-17 06:32:01');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (143, '在外探亲休假', 1, 137, '加强沟通协调', '无', '2024-08-17 06:32:16', '2024-08-17 06:32:16');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (144, '重点敏感岗位人员', 2, 138, '加强保密教育', '无', '2024-08-17 06:32:40', '2024-08-17 06:32:40');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (145, '专业技术力量整合人员', 0, 139, '增加机会\n加强互帮互助\n', '无', '2024-08-17 06:33:03', '2024-08-17 06:33:03');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (146, '专业技术力量整合', 1, 139, '加强沟通协调', '无', '2024-08-17 06:33:15', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (147, '退休涉嫌违规兼职', 0, 140, '加强沟通协调', '无', '2024-08-17 06:33:48', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (148, '退休涉嫌违规兼职', 1, 140, '加强保密教育', '无', '2024-08-17 06:34:05', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (149, '转业待移交', 0, 141, '落实制度', '无', '2024-08-17 06:34:41', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (150, '生活方面问题', 1, 143, '沟通与协调', '无', '2024-08-17 06:35:07', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (151, '阶段现实诉求强烈', 0, 143, '建立协作机制', '无', '2024-08-17 06:35:23', '2024-08-17 06:35:23');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (152, '身患重大疾病', 1, 142, '沟通与协调', '无', '2024-08-17 06:35:57', '2024-08-17 06:35:57');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (153, '重点敏感岗位', 1, 144, '加强保密教育', '无', '2024-08-17 06:36:23', '2024-08-17 06:36:23');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (154, '重点敏感岗位', 0, 144, '加强保密教育', '无', '2024-08-17 06:36:35', '2024-08-17 06:36:35');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (155, '转业待移交人员', 0, 145, '无', '无', '2024-08-17 06:36:58', '2024-08-17 06:36:58');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (156, '转业待移交', 1, 145, '落实制度', '无', '2024-08-17 06:37:08', '2024-08-17 06:37:08');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (157, '专业技术力量整合', 1, 146, '落实制度', '无', '2024-08-17 06:37:40', '2024-08-17 06:37:40');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (158, '专业技术力量整合人员', 2, 146, '加强互帮互助', '无', '2024-08-17 06:37:53', '2024-08-17 06:37:53');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (159, '长期远距离在外', 1, 147, '沟通与协调，确保心理健康', '无', '2024-08-17 06:38:13', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (160, '拟晋升高级士官', 0, 148, '增加机会', '无', '2024-08-17 06:38:30', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (161, '涉网、涉黄问题倾向', 0, 149, '加强思想教育', '无', '2024-08-17 06:38:58', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (162, '患重大疾病', 0, 150, '沟通与协调，确保心理健康', '无', '2024-08-17 06:39:14', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (163, '新入职、入伍人员', 0, 151, '建立协作机制', '无', '2024-08-17 06:39:40', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (164, '新入职、入伍人员', 1, 151, '增加机会\n加强互帮互助\n', '无', '2024-08-17 06:39:53', '2024-08-17 06:39:53');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (165, '专业技术力量整合', 1, 152, '增加机会\n加强互帮互助\n', '无', '2024-08-17 06:40:15', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (166, '专业技术力量整合', 0, 152, '职级调整', '无', '2024-08-17 06:40:27', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (167, '阶段现实诉求强烈', 0, 153, '沟通与协调', '无', '2024-08-17 06:40:51', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (168, '转业待移交人员', 1, 154, '落实制度', '无', '2024-08-17 06:41:10', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (169, '新入职', 0, 155, '加强互帮互助', '无', '2024-08-17 06:41:38', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (170, '新入职、入伍人员', 1, 155, '建立协作机制', '无', '2024-08-17 06:41:50', '2024-05-01 07:01:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (171, '身患重大疾病', 1, 156, '落实制度', '无', '2024-08-17 06:44:18', '2024-01-17 07:01:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (172, '患重大疾病', 1, 156, '加强沟通协调', '无', '2024-08-17 06:44:33', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (173, '在外探亲', 0, 157, '加强思想教育', '无', '2024-08-17 06:45:09', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (174, '重点敏感岗位人员', 0, 158, '加强网络泄密教育', '无', '2024-08-17 06:45:35', '2024-08-17 06:45:35');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (175, '重点敏感岗位人员', 1, 158, '加强网络泄密教育', '无', '2024-08-17 06:45:44', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (176, '阶段现实诉求强烈', 0, 159, '落实制度', '无', '2024-08-17 06:45:58', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (177, '涉及职级调整', 1, 160, '落实制度', '无', '2024-08-17 06:46:19', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (178, '涉及职级调整人员', 2, 160, '职级调整', '无', '2024-08-17 06:46:29', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (179, '长期在外执行任务', 1, 161, '沟通与协调，确保心理健康', '无', '2024-08-17 06:46:53', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (180, '长期在外执行任务人员', 0, 161, '加强思想教育', '无', '2024-08-17 06:47:13', '2024-05-01 07:01:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (181, '转业待移交', 1, 162, '加强沟通协调', '无', '2024-08-17 06:47:47', '2024-01-17 07:01:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (182, '转业待移交', 2, 162, '落实制度', '无', '2024-08-17 06:48:09', '2024-08-17 06:48:09');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (183, '身患重大疾病', 0, 163, '增加机会\n加强互帮互助\n', '无', '2024-08-17 06:48:32', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (184, '无', 2, 164, '沟通与协调，确保心理健康', '无', '2024-08-17 06:48:59', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (185, '在外探亲', 1, 164, '加强保密教育', '无', '2024-08-17 06:49:12', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (186, '涉网、涉黄问题倾向', 0, 165, '加强保密教育', '无', '2024-08-17 06:49:39', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (187, '涉网', 2, 165, '加强沟通协调，加强保密教育', '无', '2024-08-17 06:50:06', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (188, '身患重大疾病', 0, 166, '加强互帮互助', '无', '2024-08-17 06:50:27', '2024-05-01 07:01:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (189, '拟晋升高级士官', 2, 167, '增加机会', '无', '2024-08-17 06:50:47', '2024-01-17 07:01:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (190, '新入职', 1, 168, '加强互帮互助', '无', '2024-08-17 06:51:20', '2024-08-17 06:51:20');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (191, '新入职、入伍人员', 1, 169, '加强保密教育', '无', '2024-08-17 06:51:43', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (192, '新入职、入伍人员', 0, 169, '增加机会', '无', '2024-08-17 06:51:59', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (193, '居住方面问题', 1, 170, '落实制度', '无', '2024-08-17 06:52:24', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (194, '长期在外执行任务', 0, 171, '建立协作机制', '无', '2024-08-17 06:53:08', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (195, '长期在外执行任务', 1, 171, '加强保密教育', '无', '2024-08-17 06:53:28', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (196, '在外探亲', 1, 172, '加强保密教育', '无', '2024-08-17 06:54:16', '2024-05-01 07:01:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (197, '涉网、涉黄问题倾向', 0, 172, '加强保密教育', '无', '2024-08-17 06:54:21', '2024-01-17 07:01:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (198, '涉网', 0, 173, '加强沟通协调，加强保密教育', '无', '2024-08-17 06:54:28', '2024-08-17 06:54:28');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (199, '身患重大疾病', 1, 174, '加强互帮互助', '无', '2024-08-17 06:54:37', '2024-08-17 06:54:37');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (200, '专业技术力量整合', 0, 175, '落实制度', '无', '2024-08-17 06:55:12', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (201, '专业技术力量整合人员', 1, 175, '加强沟通协调', '无', '2024-08-17 06:55:27', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (202, '拟晋升高级士官', 0, 176, '落实制度', '无', '2024-08-17 06:55:47', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (203, '在外探亲休假', 0, 177, '加强保密教育', '无', '2024-08-17 06:56:16', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (204, '立功受奖愿望强烈', 1, 178, '落实制度', '无', '2024-08-17 06:56:48', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (205, '立功受奖愿望强烈', 0, 178, '无', '无', '2024-08-17 06:56:56', '2024-05-01 07:01:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (206, '长期在外执行任务', 0, 179, '加强互帮互助', '无', '2024-08-17 06:57:15', '2024-01-17 07:01:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (207, '退休涉嫌违规兼职', 2, 180, '加强沟通协调', '无', '2024-08-17 06:57:46', '2024-08-17 06:57:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (208, '在外探亲休假人员', 0, 181, '加强思想教育', '无', '2024-08-17 06:58:19', '2024-08-17 06:58:19');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (209, '涉及职级调整', 0, 182, '职级调整', '无', '2024-08-17 06:58:43', '2024-08-17 06:58:43');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (210, '涉网、涉黄问题倾向人员', 1, 183, '沟通与协调，确保心理健康', '无', '2024-08-17 06:59:09', '2024-08-17 06:59:09');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (211, '专业技术力量整合', 0, 184, '职级调整\n', '无', '2024-08-17 06:59:42', '2024-08-17 06:59:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (212, '专业技术力量整合', 1, 184, '增加机会', '无', '2024-08-17 06:59:54', '2024-08-17 06:59:54');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (213, '新入职、入伍人员', 0, 185, '加强沟通协调', '无', '2024-08-17 07:00:22', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (214, '新入职、入伍人员', 0, 185, '加强互帮互助', '无', '2024-08-17 07:00:33', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (215, '长期远距离在外', 2, 186, '落实制度', '无', '2024-08-17 07:01:01', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (216, '阶段现实诉求强烈', 1, 186, '沟通与协调，确保心理健康', '无', '2024-08-17 07:01:21', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (217, '拟晋升高级士官', 0, 187, '落实制度', '无', '2024-08-17 07:01:41', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (218, '在外探亲休假', 1, 187, '加强保密教育', '无', '2024-08-17 07:01:46', '2024-05-01 07:01:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (219, '立功受奖愿望强烈', 2, 187, '落实制度', '无', '2024-08-17 07:01:50', '2024-01-17 07:01:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (220, '立功受奖愿望强烈', 0, 188, '无', '无', '2024-08-17 07:01:59', '2024-08-17 07:01:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (221, '长期在外执行任务', 1, 188, '加强互帮互助', '无', '2024-08-17 07:02:04', '2024-08-17 07:02:04');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (222, '拟晋升高级士官', 0, 189, '职级调整', '无', '2024-08-17 07:02:32', '2024-08-17 07:02:32');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (223, '立功受奖愿望强烈', 0, 190, '增加机会', '无', '2024-08-17 07:02:54', '2024-08-17 07:02:54');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (224, '阶段现实诉求强烈', 0, 191, '加强沟通协调', '无', '2024-08-17 09:14:35', '2024-08-17 09:14:35');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (225, '涉及职级调整', 1, 192, '职级调整', '无', '2024-08-17 09:14:56', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (226, '职级调整', 0, 192, '增加机会', '无', '2024-08-17 09:15:20', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (227, '立功受奖愿望强烈', 0, 193, '增加机会', '无', '2024-08-17 09:16:39', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (228, '受奖愿望强烈', 1, 193, '加强沟通协调', '无', '2024-08-17 09:16:52', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (229, '晋升高级', 1, 195, '增加机会', '无', '2024-08-17 09:23:54', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (230, '涉网', 1, 195, '加强网络泄密教育', '无', '2024-08-17 09:24:35', '2024-05-01 07:01:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (231, '长期远距离在外', 0, 196, '加强互帮互助', '无', '2024-08-17 09:25:23', '2024-01-17 07:01:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (232, '长期在外执行任务', 1, 196, '加强网络泄密教育', '无', '2024-08-17 09:25:38', '2024-08-17 09:25:38');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (233, '专业技术力量整合', 0, 197, '无', '无', '2024-08-17 09:25:59', '2024-08-17 09:25:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (234, '专业技术力量整合人', 1, 197, '增加机会', '无', '2024-08-17 09:26:11', '2024-08-17 09:26:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (235, '转业待移交', 0, 198, '落实制度', '无', '2024-08-17 09:26:45', '2024-08-17 09:26:45');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (236, '涉及职级调整', 1, 199, '落实制度', '无', '2024-08-17 09:27:10', '2024-08-17 09:27:10');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (237, '无', 0, 199, '加强沟通协调', '无', '2024-08-17 09:27:27', '2024-08-17 09:27:27');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (238, '无', 0, 200, '无', '无', '2024-08-17 09:27:46', '2024-08-17 09:27:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (239, '重点敏感岗位', 1, 201, '加强保密教育', '无', '2024-08-17 09:28:16', '2024-08-17 09:28:16');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (240, '敏感岗位', 2, 201, '加强安全教育\n加强政治教育\n', '无', '2024-08-17 09:28:31', '2024-08-17 09:28:31');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (241, '在外探亲', 0, 202, '加强沟通协调', '无', '2024-08-17 09:28:56', '2024-08-17 09:28:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (242, '身患重大疾病', 2, 203, '落实制度，加强沟通协调', '无', '2024-08-17 09:29:29', '2024-08-17 09:29:29');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (243, '转业待移交', 0, 204, '无', '无', '2024-08-17 09:29:52', '2024-08-17 09:29:52');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (262, '在外探亲休假', 0, 217, '加强思想教育', '无', '2024-08-17 09:34:23', '2024-08-17 09:34:23');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (263, '立功受奖愿望强烈', 1, 217, '增加机会', '无', '2024-08-17 09:34:26', '2024-08-17 09:34:26');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (264, '立功受奖愿望强烈', 0, 218, '职级调整', '无', '2024-08-17 09:34:34', '2024-08-17 09:34:34');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (265, '新入职', 2, 218, '加强互帮互助', '无', '2024-08-17 09:34:38', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (266, '长期在外执行任务', 0, 219, '加强互帮互助', '无', '2024-08-17 09:34:47', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (267, '受奖愿望强烈', 0, 220, '增加机会', '无', '2024-08-17 09:34:55', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (268, '立功受奖愿望强烈', 0, 221, '增加机会', '无', '2024-08-17 09:35:10', '2024-02-01 05:24:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (269, '立功受奖愿望强烈', 0, 222, '职级调整', '无', '2024-08-17 09:35:20', '2024-07-01 05:24:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (270, '新入职', 1, 222, '加强互帮互助', '无', '2024-08-17 09:35:24', '2024-05-01 07:01:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (271, '长期在外执行任务', 0, 223, '加强互帮互助', '无', '2024-08-17 09:35:39', '2024-01-17 07:01:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (272, '受奖愿望强烈', 2, 224, '增加机会', '无', '2024-08-17 09:35:51', '2024-08-17 09:35:51');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (273, '生活方面问题', 0, 224, '落实制度', '无', '2024-08-17 09:35:57', '2024-08-17 09:35:57');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (274, '涉及职级调整', 0, 225, '落实制度', '无', '2024-08-17 09:36:09', '2024-08-17 09:36:09');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (275, '立功受奖愿望强烈', 1, 225, '无', '无', '2024-08-17 09:36:13', '2024-08-17 09:36:13');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (276, '新入职、', 0, 226, '建立协作机制', '无', '2024-08-17 09:36:26', '2024-08-17 09:36:26');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (277, '在外探亲休假', 0, 227, '加强思想教育', '无', '2024-08-17 09:36:46', '2024-08-17 09:36:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (278, '立功受奖愿望强烈', 0, 228, '增加机会', '无', '2024-08-17 09:37:05', '2024-08-17 09:37:05');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (279, '立功受奖愿望强烈', 1, 228, '职级调整', '无', '2024-08-17 09:37:10', '2024-08-17 09:37:10');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (280, '新入职', 0, 229, '加强互帮互助', '无', '2024-08-17 09:37:23', '2024-08-17 09:37:23');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (281, '长期在外执行任务', 1, 229, '加强互帮互助', '无', '2024-08-17 09:37:29', '2024-08-17 09:37:29');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (282, '受奖愿望强烈', 0, 230, '增加机会', '无', '2024-08-17 09:37:41', '2024-08-17 09:37:41');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (283, '立功受奖愿望强烈', 1, 231, '增加机会', '无', '2024-08-17 09:38:02', '2024-08-17 09:38:02');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (284, '立功受奖愿望强烈', 0, 231, '职级调整', '无', '2024-08-17 09:38:20', '2024-08-17 09:38:20');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (285, '新入职', 0, 232, '加强互帮互助', '无', '2024-08-17 09:38:46', '2024-08-17 09:38:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (286, '长期在外执行任务', 0, 233, '加强互帮互助', '无', '2024-08-17 09:39:07', '2024-08-17 09:39:07');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (287, '受奖愿望强烈', 0, 233, '增加机会', '无', '2024-08-17 09:39:14', '2024-08-17 09:39:14');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (288, '生活方面问题', 0, 234, '落实制度', '无', '2024-08-17 09:39:24', '2024-08-17 09:39:24');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (289, '涉及职级调整', 1, 234, '落实制度', '无', '2024-08-17 09:39:28', '2024-06-01 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (290, '立功受奖愿望强烈', 0, 235, '无', '无', '2024-08-17 09:39:43', '2024-04-01 05:21:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (291, '新入职、', 0, 236, '建立协作机制', '无', '2024-08-17 09:39:55', '2024-03-01 05:22:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (307, '长期在外执行任务', 0, 131, '加强互帮互助', '无', '2024-08-19 02:54:29', '2024-08-19 02:54:29');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (309, '涉及四季度职级调整，调整意愿强烈', 2, 250, '定期谈话了解心理动态', '四季按期调整', '2024-08-19 07:12:29', '2024-08-19 07:12:29');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (310, '生活方面', 0, 84, '加强沟通协调', '无', '2024-09-12 01:22:18', '2024-09-12 01:22:18');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (311, '身患重大疾病', 1, 83, '增强团结', '无', '2024-09-12 01:22:40', '2024-09-12 01:22:40');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (312, '重点敏感岗位', 0, 93, '加强网络泄密教育', '无', '2024-09-12 01:23:20', '2024-09-12 01:23:20');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (313, '新入职', 0, 251, '加强互帮互助', '无', '2024-09-12 01:24:47', '2024-09-12 01:24:47');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (314, '长期在外执行任务', 1, 251, '加强互帮互助', '无', '2024-09-12 01:24:55', '2024-09-12 01:24:55');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (315, '受奖愿望强烈', 0, 252, '增加机会', '无', '2024-09-12 01:25:17', '2024-09-12 01:25:17');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (316, '立功受奖愿望强烈', 1, 252, '增加机会', '无', '2024-09-12 01:25:25', '2024-09-12 01:25:25');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (317, '立功受奖愿望强烈', 0, 82, '职级调整', '无', '2024-09-12 01:25:37', '2024-09-12 01:25:37');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (318, '新入职', 0, 253, '加强互帮互助', '无', '2024-09-12 01:26:48', '2024-09-12 01:26:48');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (319, '长期在外执行任务', 0, 254, '加强互帮互助', '无', '2024-09-12 01:27:09', '2024-09-12 01:27:09');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (320, '受奖愿望强烈', 0, 255, '增加机会', '无', '2024-09-12 01:27:30', '2024-09-12 01:27:30');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (321, '生活方面问题', 0, 12, '落实制度', '无', '2024-09-12 01:27:56', '2024-09-12 01:27:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (322, '涉及职级调整', 1, 256, '落实制度', '无', '2024-09-12 01:28:17', '2024-09-12 01:28:17');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (323, '立功受奖愿望强烈', 2, 257, '无', '无', '2024-09-12 01:28:40', '2024-09-12 01:28:40');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (324, '重点敏感岗位', 0, 9, '增加机会', '无', '2024-09-12 01:29:14', '2024-09-12 01:29:14');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (325, '敏感岗位', 2, 258, '职级调整', '无', '2024-09-12 01:29:42', '2024-09-12 01:29:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (326, '在外探亲', 2, 259, '加强互帮互助', '无', '2024-09-12 01:30:14', '2024-09-12 01:30:14');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (327, '身患重大疾病', 0, 28, '加强互帮互助', '无', '2024-09-12 01:30:21', '2024-09-12 01:30:21');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (328, '转业待移交', 1, 108, '增加机会', '无', '2024-09-12 01:31:00', '2024-09-12 01:31:00');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (329, '在外探亲休假', 0, 260, '增加机会', '无', '2024-09-12 01:31:20', '2024-09-12 01:31:20');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (330, '立功受奖愿望强烈', 1, 111, '职级调整', '无', '2024-09-12 01:31:39', '2024-09-12 01:31:39');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (331, '立功受奖愿望强烈', 0, 261, '加强互帮互助', '无', '2024-09-12 01:31:51', '2024-09-12 01:31:51');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (332, '新入职', 0, 114, '加强互帮互助', '无', '2024-09-12 01:32:18', '2024-09-12 01:32:18');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (333, '长期在外执行任务', 0, 262, '增加机会', '无', '2024-09-12 01:32:32', '2024-09-12 01:32:32');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (334, '受奖愿望强烈', 2, 263, '落实制度', '无', '2024-09-12 01:33:09', '2024-09-12 01:33:09');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (335, '长期在外执行任务', 2, 126, '沟通与协调', '无', '2024-09-12 01:33:53', '2024-09-12 01:33:53');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (336, '远距离在外执行任务人员', 0, 264, '建立协作机制', '无', '2024-09-12 01:34:42', '2024-09-12 01:34:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (337, '在外休假', 1, 264, '加强思想教育落实', '无', '2024-09-12 01:34:49', '2024-09-12 01:34:49');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (338, '长期在外执行任务', 0, 265, '沟通与协调', '无', '2024-09-12 01:35:19', '2024-09-12 01:35:19');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (339, '远距离在外执行任务人员', 2, 133, '建立协作机制', '无', '2024-09-12 01:35:42', '2024-09-12 01:35:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (340, '在外休假', 0, 266, '加强沟通管理', '无', '2024-09-12 01:36:10', '2024-09-12 01:36:10');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (341, '在外休假', 2, 266, '加强思想教育落实', '无', '2024-09-12 01:36:20', '2024-09-12 01:36:20');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (342, '涉网问题', 1, 267, '加强安全教育', '无', '2024-09-12 01:36:52', '2024-09-12 01:36:52');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (343, '涉网问题', 0, 268, '加强保密工作教育', '无', '2024-09-12 01:37:49', '2024-09-12 01:37:49');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (344, '涉网问题', 0, 269, '加强安全教育', '无', '2024-09-12 01:38:09', '2024-09-12 01:38:09');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (345, '涉网问题', 1, 180, '加强教育工作', '无', '2024-09-12 01:38:40', '2024-09-12 01:38:40');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (346, '涉网问题', 1, 270, '加强网络泄密教育', '无', '2024-09-12 01:38:59', '2024-09-12 01:38:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (347, '生活方面问题', 0, 271, '加强组织关心', '无', '2024-09-12 01:40:32', '2024-09-12 01:40:32');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (348, '子女教育问题', 1, 271, '尽量协调', '无', '2024-09-12 01:40:45', '2024-09-12 01:40:45');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (349, '长期在外执行任务人员', 0, 272, '加强政治教育', '无', '2024-09-12 01:41:11', '2024-09-12 01:41:11');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (350, '长期在外执行任务人员', 0, 273, '加强教育', '无', '2024-09-12 01:41:39', '2024-09-12 01:41:39');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (351, '手续问题', 0, 274, '积极帮助', '无', '2024-09-12 01:41:56', '2024-09-12 01:41:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (352, '退休涉嫌违规兼职', 1, 275, '加强互帮互助', '无', '2024-09-12 01:42:31', '2024-09-12 01:42:31');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (353, '身患重大疾病', 2, 276, '增强团结', '无', '2024-09-12 01:42:54', '2024-09-12 01:42:54');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (354, '生活方面', 1, 277, '加强沟通协调', '无', '2024-09-12 01:44:10', '2024-09-12 01:44:10');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (355, '生活方面', 2, 277, '加强沟通协调', '无', '2024-09-12 01:44:17', '2024-09-12 01:44:17');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (356, '远距离在外执行任务人员', 0, 278, '建立协作机制', '无', '2024-09-12 01:45:22', '2024-09-12 01:45:22');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (357, '在外休假', 1, 278, '加强思想教育落实', '无', '2024-09-12 01:45:46', '2024-09-12 01:45:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (358, '长期在外执行任务', 0, 279, '沟通与协调', '无', '2024-09-12 01:46:26', '2024-09-12 01:46:26');
COMMIT;

-- ----------------------------
-- Table structure for Records
-- ----------------------------
DROP TABLE IF EXISTS `Records`;
CREATE TABLE `Records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_id` int DEFAULT NULL,
  `problem_id` int DEFAULT NULL,
  `is_closed` tinyint(1) DEFAULT '0',
  `updated_bar` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`),
  KEY `problem_id` (`problem_id`),
  CONSTRAINT `records_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `People` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `records_ibfk_2` FOREIGN KEY (`problem_id`) REFERENCES `Problems` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Records
-- ----------------------------
BEGIN;
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (1, 1, 1, 1, NULL, '2024-06-28 10:56:24', '2024-09-28 10:56:31');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (2, 2, 2, 0, NULL, '2024-07-28 10:56:43', '2024-07-28 10:56:57');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (3, 3, 3, 0, NULL, '2024-07-28 10:57:11', '2024-07-28 10:57:20');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (4, 4, 4, 0, NULL, '2024-07-28 10:57:31', '2024-07-28 10:57:39');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (5, 5, 5, 0, NULL, '2024-07-28 10:57:53', '2024-07-28 10:58:01');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (6, 6, 6, 0, NULL, '2024-07-29 10:58:18', '2024-07-29 10:58:11');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (7, 7, 7, 0, NULL, '2024-07-29 10:58:27', '2024-07-29 10:58:35');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (8, 8, 8, 0, NULL, '2024-07-29 10:58:49', '2024-07-29 10:58:43');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (9, 9, 9, 0, NULL, '2024-07-29 10:58:57', '2024-07-29 10:59:05');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (10, 10, 10, 0, NULL, '2024-07-29 10:59:20', '2024-07-29 10:59:13');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (11, 11, 11, 0, NULL, '2024-07-29 11:08:36', '2024-07-29 11:08:44');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (12, 12, 12, 0, NULL, '2024-07-29 11:08:59', '2024-07-29 11:09:06');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (13, 13, 12, 0, NULL, '2024-07-29 11:13:33', '2024-07-29 11:13:39');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (14, 14, 11, 0, NULL, '2024-07-29 11:19:49', '2024-07-29 11:20:00');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (15, 15, 1, 0, NULL, '2024-07-29 11:20:08', '2024-07-29 11:20:14');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (16, 16, 2, 1, NULL, '2024-07-29 11:20:22', '2024-08-19 00:57:02');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (17, 17, 3, 0, NULL, '2024-07-30 11:20:45', '2024-07-30 11:20:51');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (18, 18, 4, 0, NULL, '2024-07-30 11:21:54', '2024-07-30 11:22:07');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (19, 19, 1, 1, NULL, '2024-07-30 11:22:25', '2024-08-09 12:57:06');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (20, 20, 5, 1, NULL, '2024-07-30 11:22:32', '2024-08-12 15:17:26');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (21, 21, 10, 0, NULL, '2024-07-30 11:22:53', '2024-07-30 11:22:47');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (22, 22, 12, 0, NULL, '2024-07-30 11:23:01', '2024-07-30 11:23:12');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (23, 23, 6, 0, NULL, '2024-07-30 11:23:26', '2024-07-30 11:23:19');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (24, 24, 7, 1, NULL, '2024-07-31 11:23:35', '2024-08-19 00:57:41');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (25, 25, 8, 0, NULL, '2024-07-31 11:24:00', '2024-07-31 11:23:48');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (26, 26, 4, 0, NULL, '2024-07-31 11:24:10', '2024-07-31 11:24:18');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (27, 27, 9, 0, NULL, '2024-07-31 11:24:32', '2024-07-31 11:24:25');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (28, 28, 2, 0, NULL, '2024-08-01 11:24:39', '2024-08-01 11:24:46');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (29, 29, 5, 0, NULL, '2024-08-01 11:24:51', '2024-08-01 11:24:55');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (30, 30, 7, 0, NULL, '2024-08-01 11:25:03', '2024-08-01 11:25:00');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (73, 20, 2, 0, NULL, '2024-08-02 01:09:34', '2024-08-02 01:09:34');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (74, 6, 2, 1, NULL, '2024-08-07 04:20:00', '2024-08-08 07:40:11');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (75, 6, 2, 1, NULL, '2024-08-08 07:25:11', '2024-08-08 07:39:38');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (76, 6, 6, 0, NULL, '2024-08-12 13:40:28', '2024-08-12 13:40:28');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (77, 6, 13, 0, NULL, '2024-08-13 14:38:07', '2024-08-13 14:38:07');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (78, 60, 1, 0, NULL, '2024-08-17 05:15:40', '2024-08-17 05:15:40');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (79, 1, 7, 0, NULL, '2024-08-17 05:18:36', '2024-08-17 05:18:36');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (80, 35, 2, 0, NULL, '2024-08-17 05:28:47', '2024-08-17 05:28:47');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (81, 59, 8, 0, NULL, '2024-08-17 05:31:54', '2024-08-17 05:31:54');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (82, 59, 9, 0, NULL, '2024-08-17 05:32:44', '2024-08-17 05:32:44');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (83, 36, 1, 0, NULL, '2024-08-17 05:35:14', '2024-08-17 05:35:14');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (84, 36, 2, 0, NULL, '2024-08-17 05:36:20', '2024-08-17 05:36:20');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (85, 39, 10, 0, NULL, '2024-08-17 05:38:37', '2024-08-17 05:38:37');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (86, 39, 2, 0, NULL, '2024-08-17 05:39:22', '2024-08-17 05:39:22');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (87, 40, 3, 0, NULL, '2024-08-17 05:40:13', '2024-08-17 05:40:13');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (88, 40, 7, 0, NULL, '2024-08-17 05:40:42', '2024-08-17 05:40:42');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (89, 58, 4, 0, NULL, '2024-08-17 05:42:01', '2024-08-17 05:42:01');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (90, 57, 2, 0, NULL, '2024-08-17 05:43:36', '2024-08-17 05:43:36');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (91, 30, 3, 0, NULL, '2024-08-17 05:47:22', '2024-08-17 05:47:22');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (92, 37, 2, 0, NULL, '2024-08-17 05:58:05', '2024-08-17 05:58:05');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (93, 37, 12, 0, NULL, '2024-08-17 05:59:40', '2024-08-17 05:59:40');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (94, 56, 11, 0, NULL, '2024-08-17 06:00:19', '2024-08-17 06:00:19');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (95, 38, 1, 0, NULL, '2024-08-17 06:01:43', '2024-08-17 06:01:43');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (96, 38, 2, 0, NULL, '2024-08-17 06:02:31', '2024-08-17 06:02:31');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (97, 2, 2, 0, NULL, '2024-08-17 06:03:52', '2024-08-17 06:03:52');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (98, 46, 7, 0, NULL, '2024-08-17 06:04:45', '2024-08-17 06:04:45');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (99, 45, 4, 0, NULL, '2024-08-17 06:06:02', '2024-08-17 06:06:02');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (100, 44, 4, 0, NULL, '2024-08-17 06:06:49', '2024-08-17 06:06:49');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (101, 44, 5, 0, NULL, '2024-08-17 06:07:20', '2024-08-17 06:07:20');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (102, 43, 13, 0, NULL, '2024-08-17 06:07:49', '2024-08-17 06:07:49');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (103, 43, 6, 0, NULL, '2024-08-17 06:08:23', '2024-08-17 06:08:23');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (104, 19, 2, 0, NULL, '2024-08-17 06:08:52', '2024-08-17 06:08:52');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (105, 8, 2, 0, NULL, '2024-08-17 06:09:26', '2024-08-17 06:09:26');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (106, 5, 4, 0, NULL, '2024-08-17 06:10:51', '2024-08-17 06:10:51');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (107, 21, 13, 0, NULL, '2024-08-17 06:11:41', '2024-08-17 06:11:41');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (108, 3, 2, 0, NULL, '2024-08-17 06:14:27', '2024-08-17 06:14:27');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (109, 3, 5, 1, NULL, '2024-08-17 06:14:43', '2024-08-19 01:09:39');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (110, 4, 3, 0, NULL, '2024-08-17 06:15:12', '2024-08-17 06:15:12');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (111, 4, 1, 0, NULL, '2024-08-17 06:15:23', '2024-08-17 06:15:23');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (112, 10, 6, 0, NULL, '2024-08-17 06:15:39', '2024-08-17 06:15:39');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (113, 10, 11, 0, NULL, '2024-08-17 06:15:55', '2024-08-17 06:15:55');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (114, 11, 11, 0, NULL, '2024-08-17 06:16:19', '2024-08-17 06:16:19');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (115, 14, 2, 0, NULL, '2024-08-17 06:16:45', '2024-08-17 06:16:45');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (116, 14, 7, 0, NULL, '2024-08-17 06:16:53', '2024-08-17 06:16:53');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (117, 17, 2, 0, NULL, '2024-08-17 06:17:11', '2024-08-17 06:17:11');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (118, 17, 7, 0, NULL, '2024-08-17 06:17:21', '2024-08-17 06:17:21');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (119, 18, 3, 0, NULL, '2024-08-17 06:18:02', '2024-08-17 06:18:02');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (120, 26, 13, 0, NULL, '2024-08-17 06:18:52', '2024-08-17 06:18:52');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (121, 29, 8, 0, NULL, '2024-08-17 06:19:14', '2024-08-17 06:19:14');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (122, 47, 7, 0, NULL, '2024-08-17 06:19:29', '2024-08-17 06:19:29');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (123, 48, 7, 0, NULL, '2024-08-17 06:19:51', '2024-08-17 06:19:51');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (124, 48, 13, 0, NULL, '2024-08-17 06:19:55', '2024-08-17 06:19:55');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (125, 49, 12, 0, NULL, '2024-08-17 06:21:38', '2024-08-17 06:21:38');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (126, 50, 3, 0, NULL, '2024-08-17 06:22:52', '2024-08-17 06:22:52');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (127, 51, 11, 0, NULL, '2024-08-17 06:23:32', '2024-08-17 06:23:32');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (128, 52, 10, 0, NULL, '2024-08-17 06:24:20', '2024-08-17 06:24:20');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (129, 53, 1, 0, NULL, '2024-08-17 06:25:01', '2024-08-17 06:25:01');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (130, 54, 12, 0, NULL, '2024-08-17 06:25:21', '2024-08-17 06:25:21');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (131, 55, 13, 1, NULL, '2024-08-17 06:25:41', '2024-08-19 02:54:34');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (132, 61, 2, 0, NULL, '2024-08-17 06:27:43', '2024-08-17 06:27:43');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (133, 62, 3, 0, NULL, '2024-08-17 06:28:38', '2024-08-17 06:28:38');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (134, 63, 4, 0, NULL, '2024-08-17 06:29:29', '2024-08-17 06:29:29');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (135, 64, 5, 1, NULL, '2024-08-17 06:30:06', '2024-08-19 01:12:49');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (136, 65, 7, 1, NULL, '2024-08-17 06:30:43', '2024-08-19 01:12:17');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (137, 66, 13, 0, NULL, '2024-08-17 06:31:38', '2024-08-17 06:31:38');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (138, 66, 12, 1, NULL, '2024-08-17 06:32:25', '2024-08-19 01:13:55');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (139, 67, 10, 0, NULL, '2024-08-17 06:32:49', '2024-08-17 06:32:49');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (140, 68, 9, 0, NULL, '2024-08-17 06:33:26', '2024-08-17 06:33:26');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (141, 69, 8, 0, NULL, '2024-08-17 06:34:27', '2024-08-17 06:34:27');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (142, 70, 1, 0, NULL, '2024-08-17 06:34:48', '2024-08-17 06:34:48');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (143, 70, 2, 0, NULL, '2024-08-17 06:34:51', '2024-08-17 06:34:51');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (144, 71, 12, 0, NULL, '2024-08-17 06:36:10', '2024-08-17 06:36:10');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (145, 72, 8, 1, NULL, '2024-08-17 06:36:51', '2024-08-19 01:13:04');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (146, 73, 10, 0, NULL, '2024-08-17 06:37:20', '2024-08-17 06:37:20');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (147, 74, 7, 0, NULL, '2024-08-17 06:38:00', '2024-08-17 06:38:00');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (148, 74, 5, 0, NULL, '2024-08-17 06:38:19', '2024-08-17 06:38:19');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (149, 75, 6, 0, NULL, '2024-08-17 06:38:43', '2024-08-17 06:38:43');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (150, 75, 1, 0, NULL, '2024-08-17 06:39:01', '2024-08-17 06:39:01');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (151, 76, 11, 0, NULL, '2024-08-17 06:39:27', '2024-08-17 06:39:27');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (152, 77, 10, 0, NULL, '2024-08-17 06:40:05', '2024-08-17 06:40:05');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (153, 78, 2, 0, NULL, '2024-08-17 06:40:35', '2024-08-17 06:40:35');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (154, 79, 8, 0, NULL, '2024-08-17 06:41:00', '2024-08-17 06:41:00');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (155, 80, 11, 0, NULL, '2024-08-17 06:41:24', '2024-08-17 06:41:24');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (156, 81, 1, 0, NULL, '2024-08-17 06:44:04', '2024-08-17 06:44:04');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (157, 81, 13, 0, NULL, '2024-08-17 06:44:43', '2024-08-17 06:44:43');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (158, 82, 12, 0, NULL, '2024-08-17 06:45:24', '2024-08-17 06:45:24');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (159, 82, 2, 0, NULL, '2024-08-17 06:45:48', '2024-08-17 06:45:48');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (160, 83, 3, 0, NULL, '2024-08-17 06:46:06', '2024-08-17 06:46:06');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (161, 84, 7, 0, NULL, '2024-08-17 06:46:40', '2024-08-17 06:46:40');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (162, 85, 8, 0, NULL, '2024-08-17 06:47:23', '2024-08-17 06:47:23');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (163, 86, 1, 0, NULL, '2024-08-17 06:48:17', '2024-08-17 06:48:17');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (164, 86, 13, 0, NULL, '2024-08-17 06:48:38', '2024-08-17 06:48:38');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (165, 87, 6, 0, NULL, '2024-08-17 06:49:25', '2024-08-17 06:49:25');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (166, 87, 1, 0, NULL, '2024-08-17 06:50:12', '2024-08-17 06:50:12');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (167, 87, 5, 0, NULL, '2024-08-17 06:50:31', '2024-08-17 06:50:31');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (168, 88, 11, 0, NULL, '2024-08-17 06:51:08', '2024-08-17 06:51:08');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (169, 88, 11, 0, NULL, '2024-08-17 06:51:28', '2024-08-17 06:51:28');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (170, 88, 2, 0, NULL, '2024-08-17 06:52:04', '2024-08-17 06:52:04');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (171, 89, 7, 0, NULL, '2024-08-17 06:52:54', '2024-08-17 06:52:54');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (172, 90, 1, 0, NULL, '2024-08-17 06:54:11', '2024-08-17 06:54:11');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (173, 90, 2, 0, NULL, '2024-08-17 06:54:24', '2024-08-17 06:54:24');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (174, 90, 3, 0, NULL, '2024-08-17 06:54:33', '2024-08-17 06:54:33');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (175, 91, 10, 0, NULL, '2024-08-17 06:55:00', '2024-08-17 06:55:00');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (176, 91, 5, 0, NULL, '2024-08-17 06:55:34', '2024-08-17 06:55:34');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (177, 91, 13, 0, NULL, '2024-08-17 06:55:53', '2024-08-17 06:55:53');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (178, 92, 4, 0, NULL, '2024-08-17 06:56:35', '2024-08-17 06:56:35');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (179, 92, 7, 0, NULL, '2024-08-17 06:57:01', '2024-08-17 06:57:01');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (180, 93, 9, 0, NULL, '2024-08-17 06:57:29', '2024-08-17 06:57:29');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (181, 94, 13, 0, NULL, '2024-08-17 06:57:55', '2024-08-17 06:57:55');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (182, 95, 3, 0, NULL, '2024-08-17 06:58:30', '2024-08-17 06:58:30');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (183, 96, 6, 0, NULL, '2024-08-17 06:58:58', '2024-08-17 06:58:58');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (184, 97, 10, 0, NULL, '2024-08-17 06:59:26', '2024-08-17 06:59:26');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (185, 98, 11, 0, NULL, '2024-08-17 07:00:08', '2024-08-17 07:00:08');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (186, 99, 2, 0, NULL, '2024-08-17 07:00:44', '2024-08-17 07:00:44');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (187, 100, 1, 0, NULL, '2024-08-17 07:01:34', '2024-08-17 07:01:34');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (188, 100, 2, 0, NULL, '2024-08-17 07:01:54', '2024-08-17 07:01:54');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (189, 101, 5, 0, NULL, '2024-08-17 07:02:18', '2024-08-17 07:02:18');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (190, 101, 4, 0, NULL, '2024-08-17 07:02:38', '2024-08-17 07:02:38');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (191, 102, 2, 0, NULL, '2024-08-17 09:14:11', '2024-08-17 09:14:11');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (192, 102, 3, 0, NULL, '2024-08-17 09:14:39', '2024-08-17 09:14:39');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (193, 103, 4, 0, NULL, '2024-08-17 09:16:28', '2024-08-17 09:16:28');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (194, 104, 5, 0, NULL, '2024-08-17 09:17:25', '2024-08-17 09:17:25');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (195, 104, 6, 0, NULL, '2024-08-17 09:23:41', '2024-08-17 09:23:41');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (196, 105, 7, 0, NULL, '2024-08-17 09:24:50', '2024-08-17 09:24:50');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (197, 105, 10, 0, NULL, '2024-08-17 09:25:48', '2024-08-17 09:25:48');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (198, 106, 8, 0, NULL, '2024-08-17 09:26:32', '2024-08-17 09:26:32');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (199, 107, 3, 0, NULL, '2024-08-17 09:27:00', '2024-08-17 09:27:00');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (200, 108, 11, 0, NULL, '2024-08-17 09:27:37', '2024-08-17 09:27:37');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (201, 109, 12, 0, NULL, '2024-08-17 09:27:56', '2024-08-17 09:27:56');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (202, 110, 13, 0, NULL, '2024-08-17 09:28:44', '2024-08-17 09:28:44');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (203, 112, 1, 0, NULL, '2024-08-17 09:29:09', '2024-08-17 09:29:09');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (204, 113, 8, 0, NULL, '2024-08-17 09:29:40', '2024-08-17 09:29:40');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (217, 121, 1, 0, NULL, '2024-08-17 09:34:16', '2024-08-17 09:34:16');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (218, 121, 2, 0, NULL, '2024-08-17 09:34:29', '2024-08-17 09:34:29');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (219, 122, 3, 0, NULL, '2024-08-17 09:34:43', '2024-08-17 09:34:43');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (220, 122, 4, 0, NULL, '2024-08-17 09:34:51', '2024-08-17 09:34:51');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (221, 123, 4, 0, NULL, '2024-08-17 09:35:07', '2024-08-17 09:35:07');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (222, 123, 2, 0, NULL, '2024-08-17 09:35:16', '2024-08-17 09:35:16');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (223, 124, 6, 0, NULL, '2024-08-17 09:35:34', '2024-08-17 09:35:34');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (224, 125, 4, 0, NULL, '2024-08-17 09:35:48', '2024-08-17 09:35:48');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (225, 126, 7, 0, NULL, '2024-08-17 09:36:05', '2024-08-17 09:36:05');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (226, 126, 13, 0, NULL, '2024-08-17 09:36:22', '2024-08-17 09:36:22');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (227, 127, 13, 0, NULL, '2024-08-17 09:36:33', '2024-08-17 09:36:33');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (228, 128, 8, 0, NULL, '2024-08-17 09:36:58', '2024-08-17 09:36:58');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (229, 129, 7, 0, NULL, '2024-08-17 09:37:19', '2024-08-17 09:37:19');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (230, 130, 13, 0, NULL, '2024-08-17 09:37:37', '2024-08-17 09:37:37');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (231, 130, 4, 0, NULL, '2024-08-17 09:37:45', '2024-08-17 09:37:45');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (232, 131, 11, 0, NULL, '2024-08-17 09:38:34', '2024-08-17 09:38:34');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (233, 132, 12, 0, NULL, '2024-08-17 09:39:01', '2024-08-17 09:39:01');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (234, 132, 6, 0, NULL, '2024-08-17 09:39:18', '2024-08-17 09:39:18');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (235, 133, 10, 0, NULL, '2024-08-17 09:39:38', '2024-08-17 09:39:38');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (236, 134, 5, 0, NULL, '2024-08-17 09:39:51', '2024-08-17 09:39:51');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (250, 146, 3, 1, NULL, '2024-08-19 07:12:07', '2024-08-19 07:12:57');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (251, 40, 2, 0, NULL, '2024-09-12 01:24:39', '2024-09-12 01:24:39');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (252, 59, 6, 0, NULL, '2024-09-12 01:25:12', '2024-09-12 01:25:12');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (253, 2, 3, 0, NULL, '2024-09-12 01:26:41', '2024-09-12 01:26:41');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (254, 8, 5, 0, NULL, '2024-09-12 01:27:03', '2024-09-12 01:27:03');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (255, 46, 8, 0, NULL, '2024-09-12 01:27:23', '2024-09-12 01:27:23');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (256, 19, 13, 0, NULL, '2024-09-12 01:28:11', '2024-09-12 01:28:11');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (257, 44, 12, 0, NULL, '2024-09-12 01:28:32', '2024-09-12 01:28:32');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (258, 5, 1, 0, NULL, '2024-09-12 01:29:27', '2024-09-12 01:29:27');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (259, 28, 4, 0, NULL, '2024-09-12 01:30:06', '2024-09-12 01:30:06');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (260, 3, 3, 0, NULL, '2024-09-12 01:31:09', '2024-09-12 01:31:09');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (261, 4, 3, 0, NULL, '2024-09-12 01:31:46', '2024-09-12 01:31:46');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (262, 11, 6, 0, NULL, '2024-09-12 01:32:27', '2024-09-12 01:32:27');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (263, 25, 7, 0, NULL, '2024-09-12 01:33:02', '2024-09-12 01:33:02');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (264, 66, 4, 0, NULL, '2024-09-12 01:34:31', '2024-09-12 01:34:31');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (265, 60, 5, 0, NULL, '2024-09-12 01:35:13', '2024-09-12 01:35:13');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (266, 70, 4, 0, NULL, '2024-09-12 01:36:01', '2024-09-12 01:36:01');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (267, 71, 3, 0, NULL, '2024-09-12 01:36:42', '2024-09-12 01:36:42');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (268, 86, 1, 0, NULL, '2024-09-12 01:37:41', '2024-09-12 01:37:41');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (269, 87, 2, 0, NULL, '2024-09-12 01:38:02', '2024-09-12 01:38:02');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (270, 90, 4, 0, NULL, '2024-09-12 01:38:53', '2024-09-12 01:38:53');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (271, 112, 2, 0, NULL, '2024-09-12 01:40:26', '2024-09-12 01:40:26');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (272, 104, 8, 0, NULL, '2024-09-12 01:41:03', '2024-09-12 01:41:03');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (273, 109, 4, 0, NULL, '2024-09-12 01:41:33', '2024-09-12 01:41:33');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (274, 105, 2, 0, NULL, '2024-09-12 01:41:50', '2024-09-12 01:41:50');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (275, 108, 2, 0, NULL, '2024-09-12 01:42:23', '2024-09-12 01:42:23');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (276, 110, 4, 0, NULL, '2024-09-12 01:42:46', '2024-09-12 01:42:46');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (277, 122, 7, 0, NULL, '2024-09-12 01:44:02', '2024-09-12 01:44:02');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (278, 121, 3, 0, NULL, '2024-09-12 01:45:10', '2024-09-12 01:45:10');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `is_closed`, `updated_bar`, `createdAt`, `updatedAt`) VALUES (279, 121, 2, 0, NULL, '2024-09-12 01:46:21', '2024-09-12 01:46:21');
COMMIT;

-- ----------------------------
-- Table structure for Responsibles
-- ----------------------------
DROP TABLE IF EXISTS `Responsibles`;
CREATE TABLE `Responsibles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `responsibles_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `Units` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Responsibles
-- ----------------------------
BEGIN;
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (2, '岳斯阳', '善于解决家庭矛盾', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (3, '郭松超', '乐观积极', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (4, '刘振起', '具有医疗知识', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (5, '李淼', '心理咨询师', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (6, '张岩', '业务骨干，了解业务人员心理', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (7, '王帆', '执行力强，善于观察细节', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (8, '王川林', '执着、坚持不懈', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (9, '李康杰', '随和、无私奉献', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (10, '徐子航', '聪明正直', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (11, '宗亚伟', '精密强干', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (12, '杨亚明', '乐于助人', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (13, '邓晓丽', '认真善良', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (14, '赵柯', '开朗大方，工作认真', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (15, '高尖峰', '兢兢业业，踏踏实实', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (16, '吴子昂', '乐于助人', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (17, '李瑶', '乐观向上', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (18, '王淼', '踏实肯干', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (19, '陈曦奥', '吃苦耐劳', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (20, '李佳恩', '积极乐观', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (21, '马杰', '勤勤恳恳，乐观积极', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (22, '刘凯基', '聪明好学，团结礼貌', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (23, '何亚杰', '认真仔细，兢兢业业', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (24, '张玉龙', '活泼开朗', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (25, '胡宁', '工作积极', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (26, '杨思', '兢兢业业', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (27, '赵金刚', '乐观积极', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (28, '王虎', '乐于助人', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (29, '李力', '乐观上进', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (30, '张厚启', '踏实乐观', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (31, '韩雨寒', '工作踏实，聪明善良', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (32, '李富贵', '吃苦耐劳，团结友爱', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (33, '刘军', '业务能力强，乐于助人，热爱工作', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (34, '沈坤', '兢兢业业', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (35, '王标', '积极向上，踏实认真', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (36, '李宁', '热爱工作', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (37, '王思明', '踏实工作', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (38, '王玉龙', '乐观积极', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (39, '文天杰', '聪明能干', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (40, '谷亦全', '业务能力强', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (41, '王芳', '乐观积极', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (42, '苏智新', '团队能力强', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (43, '姚屹卓', '乐于助人', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (44, '郭鼎', '乐观积极', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (45, '赵军润', '善于沟通，乐于助人', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (46, '虞柯仁', '积极向上，理解能力强', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (47, '郭迪', '团结友爱', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (48, '曹庆', '亲和力强，善于合作', '/17240291827851722266353792avatar.jpeg', 7);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (49, '裴宇哲', '善于反思，细心周到', '/17240291827851722266353792avatar.jpeg', 7);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (50, '易艺涵', '创新力强，善于合作', '/17240291827851722266353792avatar.jpeg', 7);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (51, '杜子桓', '开朗活泼，善于表达', '/17240291827851722266353792avatar.jpeg', 7);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (52, '叶文浩', '目标明确，有领导力', '/17240291827851722266353792avatar.jpeg', 7);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (53, '周瑞', '充满好奇心', '/17240291827851722266353792avatar.jpeg', 7);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (54, '陆霖', '诚实守信，果断决策', '/17240291827851722266353792avatar.jpeg', 7);
COMMIT;

-- ----------------------------
-- Table structure for Units
-- ----------------------------
DROP TABLE IF EXISTS `Units`;
CREATE TABLE `Units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `isCommand` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Units
-- ----------------------------
BEGIN;
INSERT INTO `Units` (`id`, `name`, `isCommand`) VALUES (1, '一营', 0);
INSERT INTO `Units` (`id`, `name`, `isCommand`) VALUES (2, '二营', 0);
INSERT INTO `Units` (`id`, `name`, `isCommand`) VALUES (3, '三营', 0);
INSERT INTO `Units` (`id`, `name`, `isCommand`) VALUES (4, '四营', 0);
INSERT INTO `Units` (`id`, `name`, `isCommand`) VALUES (5, '支援', 0);
INSERT INTO `Units` (`id`, `name`, `isCommand`) VALUES (6, '战勘', 0);
INSERT INTO `Units` (`id`, `name`, `isCommand`) VALUES (7, '保障', 0);
INSERT INTO `Units` (`id`, `name`, `isCommand`) VALUES (9, '大队总览', 1);
COMMIT;

-- ----------------------------
-- Table structure for Users
-- ----------------------------
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `unit_id` int DEFAULT NULL,
  `role` varchar(255) DEFAULT 'user',
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `Units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Users
-- ----------------------------
BEGIN;
INSERT INTO `Users` (`id`, `username`, `password`, `unit_id`, `role`, `last_login`) VALUES (1, '111', '111', 1, 'user', NULL);
INSERT INTO `Users` (`id`, `username`, `password`, `unit_id`, `role`, `last_login`) VALUES (2, '222', '222', 2, 'user', NULL);
INSERT INTO `Users` (`id`, `username`, `password`, `unit_id`, `role`, `last_login`) VALUES (3, '333', '333', 3, 'user', NULL);
INSERT INTO `Users` (`id`, `username`, `password`, `unit_id`, `role`, `last_login`) VALUES (4, '444', '444', 4, 'user', NULL);
INSERT INTO `Users` (`id`, `username`, `password`, `unit_id`, `role`, `last_login`) VALUES (5, '555', '555', 5, 'user', NULL);
INSERT INTO `Users` (`id`, `username`, `password`, `unit_id`, `role`, `last_login`) VALUES (6, '666', '666', 6, 'user', NULL);
INSERT INTO `Users` (`id`, `username`, `password`, `unit_id`, `role`, `last_login`) VALUES (7, '777', '777', 7, 'user', NULL);
INSERT INTO `Users` (`id`, `username`, `password`, `unit_id`, `role`, `last_login`) VALUES (8, '000', '000', 0, 'admin', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
