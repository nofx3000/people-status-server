/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80300
 Source Host           : localhost:3306
 Source Schema         : people_status

 Target Server Type    : MySQL
 Target Server Version : 80300
 File Encoding         : 65001

 Date: 13/08/2024 23:26:45
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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `Menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Menus
-- ----------------------------
BEGIN;
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (1, '首页', '/summary', 'AreaChartOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (2, '重点人员一览表', '/list', 'OrderedListOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (5, '重点人信息', '/basicinfo', 'TeamOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (6, '思想骨干信息', '/responsible', 'HeartOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (7, '退出登陆', '/login', 'LogoutOutlined', 'Menu', NULL);
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
  `unit_id` int DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `responsible_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `unit_id` (`unit_id`) USING BTREE,
  KEY `responsible_id` (`responsible_id`),
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_ibfk_14` FOREIGN KEY (`unit_id`) REFERENCES `Units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_ibfk_15` FOREIGN KEY (`responsible_id`) REFERENCES `Responsibles` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of People
-- ----------------------------
BEGIN;
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (1, '王一', 0, 0, 1, '/1722858922927avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (2, '王二', 1, 1, 2, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (3, '王三', 2, 0, 3, '/1722266382061avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (4, '王四', 1, 1, 3, '/1722266389256avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (5, '王五', 1, 0, 2, '/1722392288656avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (6, '王六', 2, 1, 1, '/1722266353792avatar.jpeg', 2);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (7, '王七', 0, 0, 1, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (8, '王九', 1, 1, 2, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (9, '王十', 1, 1, 2, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (10, '王十一', 0, 1, 3, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (11, '李一', 0, 0, 3, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (12, '李二', 2, 0, 2, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (13, '李三', 1, 1, 1, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (14, '李四', 0, 0, 3, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (15, '李五', 2, 1, 1, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (16, '李六', 0, 1, 2, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (17, '李七', 1, 0, 3, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (18, '李八', 2, 0, 3, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (19, '李九', 2, 0, 2, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (20, '李十', 1, 1, 1, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (21, '张一', 0, 1, 2, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (22, '张二', 0, 0, 1, '/1722266353792avatar.jpeg', 2);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (23, '张三', 2, 0, 1, '/1722266353792avatar.jpeg', 2);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (24, '张四', 1, 0, 2, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (25, '张五', 1, 1, 3, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (26, '张六', 2, 0, 3, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (27, '张七', 1, 1, 1, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (28, '张八', 2, 0, 2, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (29, '张九', 0, 1, 3, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (30, '张十', 0, 0, 1, '/1722266353792avatar.jpeg', NULL);
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`) VALUES (35, 'test1', 0, 1, 1, '/1722996202097avatar.jpeg', 2);
COMMIT;

-- ----------------------------
-- Table structure for Problems
-- ----------------------------
DROP TABLE IF EXISTS `Problems`;
CREATE TABLE `Problems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of RecordDevelopments
-- ----------------------------
BEGIN;
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (1, '11无', 1, 1, '谁说无', '无', '2024-07-18 17:42:30', '2024-07-20 17:42:38');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (2, '无', 2, 6, '无', '无', '2024-08-07 15:18:00', '2024-08-07 15:18:01');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (3, '1', 0, 6, '1', '1', '2024-08-07 12:25:02', '2024-08-07 12:25:02');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (4, 'dd', 1, 6, 'dd', 'dd', '2024-08-07 12:25:20', '2024-08-07 12:25:20');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (7, 'aaa', 2, 74, 'aaa', 'aa', '2024-08-08 07:19:32', '2024-08-08 07:19:32');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (8, 'ss', 1, 1, 'ss', 'ss', '2024-08-08 11:41:51', '2024-08-08 11:41:51');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (9, 'kkk', 1, 76, 'kkk', 'kkk', '2024-08-12 13:40:43', '2024-08-12 13:40:43');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (10, 'mmm', 1, 22, 'mmm', 'mmm', '2024-08-12 13:41:08', '2024-08-12 13:41:08');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (11, '22', 0, 13, '22', '22', '2024-08-12 15:14:05', '2024-08-12 15:14:05');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (12, 'zz', 0, 20, 'sss', 'sss', '2024-08-12 15:14:25', '2024-08-12 15:14:25');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (13, '111', 2, 2, '111', '111', '2024-08-13 11:33:20', '2024-08-13 11:33:20');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (14, '11', 0, 5, '11', '11', '2024-08-13 11:33:40', '2024-08-13 11:33:40');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (15, '1', 2, 8, '1', '1', '2024-08-13 11:35:56', '2024-08-13 11:35:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (16, 'll', 2, 6, 'll', 's', '2024-08-13 14:47:05', '2024-08-13 14:47:05');
COMMIT;

-- ----------------------------
-- Table structure for Records
-- ----------------------------
DROP TABLE IF EXISTS `Records`;
CREATE TABLE `Records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_id` int DEFAULT NULL,
  `problem_id` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `is_closed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `person_id` (`person_id`) USING BTREE,
  KEY `problem_id` (`problem_id`) USING BTREE,
  CONSTRAINT `records_ibfk_27` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `records_ibfk_28` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `records_ibfk_54` FOREIGN KEY (`person_id`) REFERENCES `People` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `records_ibfk_55` FOREIGN KEY (`problem_id`) REFERENCES `Problems` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Records
-- ----------------------------
BEGIN;
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (1, 1, 1, '2024-06-28 10:56:24', '2024-09-28 10:56:31', 1);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (2, 2, 2, '2024-07-28 10:56:43', '2024-07-28 10:56:57', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (3, 3, 3, '2024-07-28 10:57:11', '2024-07-28 10:57:20', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (4, 4, 4, '2024-07-28 10:57:31', '2024-07-28 10:57:39', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (5, 5, 5, '2024-07-28 10:57:53', '2024-07-28 10:58:01', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (6, 6, 6, '2024-07-29 10:58:18', '2024-07-29 10:58:11', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (7, 7, 7, '2024-07-29 10:58:27', '2024-07-29 10:58:35', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (8, 8, 8, '2024-07-29 10:58:49', '2024-07-29 10:58:43', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (9, 9, 9, '2024-07-29 10:58:57', '2024-07-29 10:59:05', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (10, 10, 10, '2024-07-29 10:59:20', '2024-07-29 10:59:13', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (11, 11, 11, '2024-07-29 11:08:36', '2024-07-29 11:08:44', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (12, 12, 12, '2024-07-29 11:08:59', '2024-07-29 11:09:06', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (13, 13, 12, '2024-07-29 11:13:33', '2024-07-29 11:13:39', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (14, 14, 11, '2024-07-29 11:19:49', '2024-07-29 11:20:00', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (15, 15, 1, '2024-07-29 11:20:08', '2024-07-29 11:20:14', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (16, 16, 2, '2024-07-29 11:20:22', '2024-07-29 11:20:38', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (17, 17, 3, '2024-07-30 11:20:45', '2024-07-30 11:20:51', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (18, 18, 4, '2024-07-30 11:21:54', '2024-07-30 11:22:07', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (19, 19, 1, '2024-07-30 11:22:25', '2024-08-09 12:57:06', 1);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (20, 20, 5, '2024-07-30 11:22:32', '2024-08-12 15:17:26', 1);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (21, 21, 10, '2024-07-30 11:22:53', '2024-07-30 11:22:47', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (22, 22, 12, '2024-07-30 11:23:01', '2024-07-30 11:23:12', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (23, 23, 6, '2024-07-30 11:23:26', '2024-07-30 11:23:19', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (24, 24, 7, '2024-07-31 11:23:35', '2024-07-31 11:23:41', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (25, 25, 8, '2024-07-31 11:24:00', '2024-07-31 11:23:48', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (26, 26, 4, '2024-07-31 11:24:10', '2024-07-31 11:24:18', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (27, 27, 9, '2024-07-31 11:24:32', '2024-07-31 11:24:25', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (28, 28, 2, '2024-08-01 11:24:39', '2024-08-01 11:24:46', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (29, 29, 5, '2024-08-01 11:24:51', '2024-08-01 11:24:55', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (30, 30, 7, '2024-08-01 11:25:03', '2024-08-01 11:25:00', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (73, 20, 2, '2024-08-02 01:09:34', '2024-08-02 01:09:34', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (74, 6, 2, '2024-08-07 04:20:00', '2024-08-08 07:40:11', 1);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (75, 6, 2, '2024-08-08 07:25:11', '2024-08-08 07:39:38', 1);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (76, 6, 6, '2024-08-12 13:40:28', '2024-08-12 13:40:28', 0);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`) VALUES (77, 6, 13, '2024-08-13 14:38:07', '2024-08-13 14:38:07', 0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Responsibles
-- ----------------------------
BEGIN;
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (2, 'test1', 'test1', '/1722994196899avatar.jpeg', 1);
INSERT INTO `Responsibles` (`id`, `name`, `description`, `avatar`, `unit_id`) VALUES (3, 'ii u', 'stupid', '', 2);
COMMIT;

-- ----------------------------
-- Table structure for Units
-- ----------------------------
DROP TABLE IF EXISTS `Units`;
CREATE TABLE `Units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `isCommand` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Units
-- ----------------------------
BEGIN;
INSERT INTO `Units` (`id`, `name`, `isCommand`) VALUES (0, '大队总览', 1);
INSERT INTO `Units` (`id`, `name`, `isCommand`) VALUES (1, '1y', 0);
INSERT INTO `Units` (`id`, `name`, `isCommand`) VALUES (2, '2y', 0);
INSERT INTO `Units` (`id`, `name`, `isCommand`) VALUES (3, '3y', 0);
COMMIT;

-- ----------------------------
-- Table structure for Users
-- ----------------------------
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT 'user',
  `unit_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `unit_id` (`unit_id`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `Units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Users
-- ----------------------------
BEGIN;
INSERT INTO `Users` (`id`, `username`, `password`, `role`, `unit_id`) VALUES (1, '111', '111', 'user', 1);
INSERT INTO `Users` (`id`, `username`, `password`, `role`, `unit_id`) VALUES (2, '222', '222', 'user', 2);
INSERT INTO `Users` (`id`, `username`, `password`, `role`, `unit_id`) VALUES (3, '333', '333', 'user', 3);
INSERT INTO `Users` (`id`, `username`, `password`, `role`, `unit_id`) VALUES (8, '000', '000', 'admin', 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
