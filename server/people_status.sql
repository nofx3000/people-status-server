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

 Date: 02/12/2024 10:14:23
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Menus
-- ----------------------------
BEGIN;
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (1, '首页', '/summary', 'AreaChartOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (2, '重点人员一览表', '/list', 'OrderedListOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (5, '重点人信息', '/basicinfo', 'WarningOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (6, '骨干信息', '/responsible', 'TeamOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (7, '心理咨询专家', '/specialist', 'HeartOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (8, '全屏显示', '/fullscreen', 'FullscreenOutlined', 'Menu', NULL);
INSERT INTO `Menus` (`id`, `label`, `path`, `icon`, `type`, `parent_id`) VALUES (9, '退出登陆', '/login', 'LogoutOutlined', 'Menu', NULL);
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
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `unit_id` (`unit_id`) USING BTREE,
  KEY `responsible_id` (`responsible_id`),
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_ibfk_26` FOREIGN KEY (`unit_id`) REFERENCES `Units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_ibfk_27` FOREIGN KEY (`responsible_id`) REFERENCES `Responsibles` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of People
-- ----------------------------
BEGIN;
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (1, '王一', 0, 0, 1, '/1722858922927avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (2, '王二', 1, 1, 2, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (3, '王三', 2, 0, 3, '/1722266382061avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (4, '王四', 1, 1, 3, '/1722266389256avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (5, '王五', 1, 0, 2, '/1722392288656avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (6, '王六', 2, 1, 1, '/1722266353792avatar.jpeg', 2, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (7, '王七', 0, 0, 1, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (8, '王九', 1, 1, 2, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (9, '王十', 1, 1, 2, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (10, '王十一', 0, 1, 3, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (11, '李一', 0, 0, 3, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (12, '李二', 2, 0, 2, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (13, '李三', 1, 1, 1, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (14, '李四', 0, 0, 3, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (15, '李五', 2, 1, 1, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (16, '李六', 0, 1, 2, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (17, '李七', 1, 0, 3, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (18, '李八', 2, 0, 3, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (19, '李九', 2, 0, 2, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (20, '李十', 1, 1, 1, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (21, '张一', 0, 1, 2, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (22, '张二', 0, 0, 1, '/1722266353792avatar.jpeg', 2, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (23, '张三', 2, 0, 1, '/1722266353792avatar.jpeg', 2, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (24, '张四', 1, 0, 2, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (25, '张五', 1, 1, 3, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (26, '张六', 2, 0, 3, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (27, '张七', 1, 1, 1, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (28, '张八', 2, 0, 2, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (29, '张九', 0, 1, 3, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (30, '张十', 0, 0, 1, '/1722266353792avatar.jpeg', NULL, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (35, 'test1', 0, 1, 1, '/1722996202097avatar.jpeg', 2, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (36, '11', 0, 1, 1, '/1723960895535avatar.jpeg', 2, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (37, 'dd', 0, 0, 1, '/1723960956234avatar.jpeg', 2, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (41, '11', 0, 1, 1, '', 2, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (42, 'qq', 1, 1, 0, '', 3, '2024-11-02 18:46:45', '2024-11-02 18:46:45');
INSERT INTO `People` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`, `responsible_id`, `createdAt`, `updatedAt`) VALUES (43, '123', 0, 1, 1, '', 2, '2024-11-02 19:35:35', '2024-11-02 19:35:35');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of RecordDevelopments
-- ----------------------------
BEGIN;
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (1, '11无', 1, 1, '谁说无', '无', '2024-07-18 17:42:30', '2024-07-20 17:42:38');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (2, '无', 2, 6, '无', '无', '2024-08-07 15:18:00', '2024-08-07 15:18:01');
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
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (17, 'ffff', 0, 78, 'fff', 'fff', '2024-08-14 07:55:28', '2024-08-14 07:55:28');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (18, 'sss', 1, 78, 'sss', 'sss', '2024-08-18 07:41:28', '2024-08-18 07:41:28');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (19, '111111', 0, 82, '111', '1', '2024-11-01 08:57:28', '2024-11-01 08:57:28');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (32, '1', 1, 82, '1', '1', '2024-11-02 07:16:26', '2024-11-02 07:16:26');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (33, '1', 2, 82, '1', '1', '2024-11-02 07:18:56', '2024-11-02 07:18:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (34, '2', 1, 83, '2', '2', '2024-11-02 07:29:57', '2024-11-02 07:29:57');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (35, '1', 0, 83, '1', '1', '2024-11-02 07:34:55', '2024-11-02 07:34:55');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (37, '1', 0, 85, '1', '1', '2024-11-02 23:04:36', '2024-11-02 23:04:36');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (38, '1', 0, 86, '1', '1', '2024-11-02 23:11:56', '2024-11-02 23:11:56');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (39, '2', 1, 86, '2', '2', '2024-11-02 23:12:02', '2024-11-02 23:12:02');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (40, '1', 0, 8, '1', '1', '2024-11-02 23:12:24', '2024-11-02 23:12:24');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (41, '1', 2, 84, '1', '1', '2024-11-02 23:13:01', '2024-11-02 23:13:01');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (42, '2', 1, 13, '2', '2', '2024-11-02 23:13:07', '2024-11-02 23:13:07');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (43, '111', 0, 15, '11', '11', '2024-11-02 23:24:50', '2024-11-02 23:24:50');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (44, '22', 1, 73, '22', '22', '2024-11-02 23:35:42', '2024-11-02 23:35:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (45, '1', 2, 86, '1', '1', '2024-11-03 13:33:42', '2024-11-03 13:33:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (46, '1', 0, 27, '1', '1', '2024-11-03 13:36:45', '2024-11-03 13:36:45');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (47, '1', 0, 23, '1', '1', '2024-11-03 14:27:06', '2024-11-03 14:27:06');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (48, '111', 0, 23, '111', '111', '2024-11-03 14:28:51', '2024-11-03 14:28:51');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (49, '222', 1, 27, '22', '2', '2024-11-03 14:33:23', '2024-11-03 14:33:23');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (50, '1', 0, 30, '1', '1', '2024-11-03 14:35:59', '2024-11-03 14:35:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (51, '2', 1, 30, '2', '2', '2024-11-03 14:47:33', '2024-11-03 14:47:33');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (52, '1', 0, 21, '1', '1', '2024-11-03 14:57:57', '2024-11-03 14:57:57');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (53, '2', 1, 5, '2', '2', '2024-11-03 14:58:07', '2024-11-03 14:58:07');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (54, '1', 0, 73, '1', '1', '2024-11-03 15:30:04', '2024-11-03 15:30:04');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (55, '1', 0, 4, '1', '1', '2024-11-03 15:30:19', '2024-11-03 15:30:19');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (56, '2', 1, 4, '2', '2', '2024-11-03 15:30:22', '2024-11-03 15:30:22');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (57, '3', 2, 11, '3', '3', '2024-11-03 15:30:31', '2024-11-03 15:30:31');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (58, '1', 0, 11, '1', '1', '2024-11-03 15:30:34', '2024-11-03 15:30:34');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (59, '2', 1, 4, '2', '2', '2024-11-03 15:31:46', '2024-11-03 15:31:46');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (61, '1', 0, 18, '1', '1', '2024-11-03 15:32:08', '2024-11-03 15:32:08');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (62, '1', 0, 79, '1', '1', '2024-11-03 16:47:36', '2024-11-03 16:47:36');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (63, '3', 2, 83, '3', '3', '2024-11-03 16:47:47', '2024-11-03 16:47:47');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (64, '2', 1, 21, '2', '2', '2024-11-03 16:49:02', '2024-11-03 16:49:02');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (65, '1', 0, 87, '1', '1', '2024-11-03 16:49:13', '2024-11-03 16:49:13');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (66, '供屏幕阅读器识别的通知内容语义，默认为 alert。此情况下屏幕阅读器会立即打断当前正在阅读的其他内容，转而阅读通知内容	alert | status', 1, 23, '供屏幕阅读器识别的通知内容语义，默认为 alert。此情况下屏幕阅读器会立即打断当前正在阅读的其他内容，转而阅读通知内容	alert | status', '供屏幕阅读器识别的通知内容语义，默认为 alert。此情况下屏幕阅读器会立即打断当前正在阅读的其他内容，转而阅读通知内容	alert | status', '2024-11-03 16:50:25', '2024-11-03 16:50:25');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (67, '供屏幕阅读器识别的通知内容语义，默认为 alert。此情况下屏幕阅读器会立即打断当前正在阅读的其他内容，转而阅读通知内容	alert | status', 0, 88, '供屏幕阅读器识别的通知内容语义，默认为 alert。此情况下屏幕阅读器会立即打断当前正在阅读的其他内容，转而阅读通知内容	alert | status', '供屏幕阅读器识别的通知内容语义，默认为 alert。此情况下屏幕阅读器会立即打断当前正在阅读的其他内容，转而阅读通知内容	alert | status', '2024-11-03 16:50:35', '2024-11-03 16:50:35');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (68, '2', 1, 86, '2', '2', '2024-11-03 16:52:09', '2024-11-03 16:52:09');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (69, '1', 0, 89, '1', '1', '2024-11-03 16:52:17', '2024-11-03 16:52:17');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (70, '2', 1, 89, '2', '2', '2024-11-03 21:56:15', '2024-11-03 21:56:15');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (71, '1', 0, 9, '1', '1', '2024-11-03 21:58:30', '2024-11-03 21:58:30');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (72, '2', 1, 18, '2', '2', '2024-11-03 21:59:42', '2024-11-03 21:59:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (73, '2', 1, 11, '2', '2', '2024-11-03 22:00:16', '2024-11-03 22:00:16');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (74, '1', 0, 88, '1', '1', '2024-11-03 22:00:59', '2024-11-03 22:00:59');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (75, '1', 0, 25, '1', '1', '2024-11-03 22:07:27', '2024-11-03 22:07:27');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (76, '赵同学，男，吉林人，管理专业，母亲因病去世单亲家庭，由自己的父亲拉扯大。但是其父亲身体不好，家庭经济状况比较困难。他上大学的费用是依靠助学贷款和他的父亲务农赚钱来支付的。该生性格内向，不善言谈，在班级感觉没有存在感，自己也实在不想再读下去了，想早点进入社会赚钱，经常在校外做兼职。', 2, 3, '1. 提供心理健康支持与咨询，帮助赵同学调整心态，增强自信心。\n2. 推荐职业规划和就业指导课程，提高其职场竞争力和就业机会。\n3. 申请学校提供的经济援助或奖学金，减轻家庭经济负担。\n4. 联系社会公益组织或基金会，为他寻求外部资金支持。\n5. 组织同学和老师给予更多关注和支持，增加他在班级的归属感。', '无', '2024-11-04 22:06:02', '2024-11-04 22:06:02');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (77, '赵同学，男，吉林人，管理专业，母亲因病去世单亲家庭，由自己的父亲拉扯大。但是其父亲身体不好，家庭经济状况比较困难。他上大学的费用是依靠助学贷款和他的父亲务农赚钱来支付的。该生性格内向，不善言谈，在班级感觉没有存在感，自己也实在不想再读下去了，想早点进入社会赚钱，经常在校外做兼职。', 2, 22, '解决或缓解赵同学困难的措施：\n\n1. 申请国家奖学金、助学金，以及各种社会捐赠基金。\n2. 寻找高校提供的勤工俭学岗位，帮助减轻经济负担。\n3. 参加学校组织的心理辅导和社交技巧培训课程，增强自信心与人际交往能力。\n4. 向学校申请延期还款或减免部分助学贷款利息的政策支持。\n5. 建立校友资源网络，寻求社会人士的帮助和支持。', '无', '2024-11-04 22:08:03', '2024-11-04 22:08:03');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (78, '赵同学，男，吉林人，管理专业，母亲因病去世单亲家庭，由自己的父亲拉扯大。但是其父亲身体不好，家庭经济状况比较困难。他上大学的费用是依靠助学贷款和他的父亲务农赚钱来支付的。该生性格内向，不善言谈，在班级感觉没有存在感，自己也实在不想再读下去了，想早点进入社会赚钱，经常在校外做兼职。', 2, 22, '1. 提供心理健康支持，帮助赵同学调整心态，增强自信心。\n2. 建议申请学校的经济援助项目，如奖学金、助学金等，减轻经济负担。\n3. 推荐参加学校或社区组织的社交活动，以改善他在班级中的存在感，培养社交技能。\n4. 提供职业规划指导和就业咨询服务，帮助他更有效地找到合适的兼职工作或全职机会。\n5. 引导其寻求专业金融顾问的帮助，合理规划助学贷款使用及还款计划。', '无', '2024-11-04 22:20:10', '2024-11-04 22:20:10');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (79, '3', 2, 13, '3', '3', '2024-11-06 15:58:37', '2024-11-06 15:58:37');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (80, '赵同学，男，吉林人，管理专业，母亲因病去世单亲家庭，由自己的父亲拉扯大。但是其父亲身体不好，家庭经济状况比较困难。他上大学的费用是依靠助学贷款和他的父亲务农赚钱来支付的。该生性格内向，不善言谈，在班级感觉没有存在感，自己也实在不想再读下去了，想早点进入社会赚钱，经常在校外做兼职。', 2, 13, '1. **提供心理健康支持**：建议赵同学接受心理咨询，帮助他调整心态，增强自信心和自我价值感。\n2. **寻求经济援助**：鼓励赵同学申请奖学金、助学金或其他形式的经济补助，减轻家庭负担。\n3. **安排学工结合项目**：学校可以为赵同学提供校内工作机会或者实习岗位，既能增加实践经验又能分担学费压力。\n4. **开展团队建设活动**：组织班级活动或兴趣小组，增强同学间的互动与理解，帮助赵同学融入集体。\n5. **法律援助和社会资源连接**：帮助联系政府和社会公益机构提供的单亲家庭援助项目、医疗补助等。', '无', '2024-11-06 22:22:04', '2024-11-06 22:22:04');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (81, '赵同学，男，吉林人，管理专业，母亲因病去世单亲家庭，由自己的父亲拉扯大。但是其父亲身体不好，家庭经济状况比较困难。他上大学的费用是依靠助学贷款和他的父亲务农赚钱来支付的。该生性格内向，不善言谈，在班级感觉没有存在感，自己也实在不想再读下去了，想早点进入社会赚钱，经常在校外做兼职。', 2, 84, '1. 提供心理健康支持，鼓励其参与校园心理咨询。\n2. 建议申请学校提供的经济援助、奖学金或助学金等资源缓解经济压力。\n3. 组织同学和老师对其展开帮助活动，营造温暖的集体氛围。\n4. 引导其加入兴趣小组或社团，提高社交能力及班级存在感。\n5. 推荐职业规划指导与技能培训课程，助其提升就业竞争力。', '无', '2024-11-06 22:22:42', '2024-11-06 22:22:42');
INSERT INTO `RecordDevelopments` (`id`, `detail`, `risk_level`, `record_id`, `measure`, `comment`, `createdAt`, `updatedAt`) VALUES (82, '赵同学，男，吉林人，管理专业，母亲因病去世单亲家庭，由自己的父亲拉扯大。但是其父亲身体不好，家庭经济状况比较困难。他上大学的费用是依靠助学贷款和他的父亲务农赚钱来支付的。该生性格内向，不善言谈，在班级感觉没有存在感，自己也实在不想再读下去了，想早点进入社会赚钱，经常在校外做兼职。', 2, 22, '1. 提供心理健康支持与咨询服务。\n2. 申请国家或学校提供的贫困补助和奖学金。\n3. 推荐其参加学校的就业指导或职业规划课程。\n4. 建议联系当地的社会福利机构寻求经济援助。\n5. 鼓励参与校园社团活动，增强社交技能及团队合作意识。', '无', '2024-11-06 22:23:56', '2024-11-06 22:23:56');
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
  `updated_bar` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `person_id` (`person_id`) USING BTREE,
  KEY `problem_id` (`problem_id`) USING BTREE,
  CONSTRAINT `records_ibfk_27` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `records_ibfk_28` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `records_ibfk_64` FOREIGN KEY (`person_id`) REFERENCES `People` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `records_ibfk_65` FOREIGN KEY (`problem_id`) REFERENCES `Problems` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Records
-- ----------------------------
BEGIN;
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (1, 1, 1, '2024-06-28 10:56:24', '2024-09-28 10:56:31', 1, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (2, 2, 2, '2024-07-28 10:56:43', '2024-07-28 10:56:57', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (3, 3, 3, '2024-07-28 10:57:11', '2024-11-04 22:06:02', 0, '2024-11-04 22:06:02');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (4, 4, 4, '2024-07-28 10:57:31', '2024-11-03 15:31:46', 0, '2024-11-03 15:31:46');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (5, 5, 5, '2024-07-28 10:57:53', '2024-11-03 14:58:07', 0, '2024-11-03 14:58:07');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (6, 6, 6, '2024-07-29 10:58:18', '2024-07-29 10:58:11', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (7, 7, 7, '2024-07-29 10:58:27', '2024-08-18 05:51:29', 1, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (8, 8, 8, '2024-07-29 10:58:49', '2024-11-02 23:12:24', 0, '2024-11-02 23:12:24');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (9, 9, 9, '2024-07-29 10:58:57', '2024-11-03 21:58:30', 0, '2024-11-03 21:58:30');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (10, 10, 10, '2024-07-29 10:59:20', '2024-07-29 10:59:13', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (11, 11, 11, '2024-07-29 11:08:36', '2024-11-03 22:00:16', 0, '2024-11-03 22:00:16');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (12, 12, 12, '2024-07-29 11:08:59', '2024-07-29 11:09:06', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (13, 13, 12, '2024-07-29 11:13:33', '2024-11-06 22:22:04', 0, '2024-11-06 22:22:04');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (14, 14, 11, '2024-07-29 11:19:49', '2024-07-29 11:20:00', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (15, 15, 1, '2024-07-29 11:20:08', '2024-11-02 23:24:53', 1, '2024-11-02 23:24:50');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (16, 16, 2, '2024-07-29 11:20:22', '2024-07-29 11:20:38', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (17, 17, 3, '2024-07-30 11:20:45', '2024-07-30 11:20:51', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (18, 18, 4, '2024-07-30 11:21:54', '2024-11-03 21:59:42', 0, '2024-11-03 21:59:42');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (19, 19, 1, '2024-07-30 11:22:25', '2024-08-09 12:57:06', 1, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (20, 20, 5, '2024-07-30 11:22:32', '2024-08-12 15:17:26', 1, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (21, 21, 10, '2024-07-30 11:22:53', '2024-11-03 16:49:02', 0, '2024-11-03 16:49:02');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (22, 22, 12, '2024-07-30 11:23:01', '2024-11-06 22:23:56', 0, '2024-11-06 22:23:56');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (23, 23, 6, '2024-07-30 11:23:26', '2024-11-03 16:50:25', 0, '2024-11-03 16:50:25');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (24, 24, 7, '2024-07-31 11:23:35', '2024-07-31 11:23:41', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (25, 25, 8, '2024-07-31 11:24:00', '2024-11-03 22:07:27', 0, '2024-11-03 22:07:27');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (26, 26, 4, '2024-07-31 11:24:10', '2024-07-31 11:24:18', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (27, 27, 9, '2024-07-31 11:24:32', '2024-11-03 14:33:23', 0, '2024-11-03 14:33:23');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (28, 28, 2, '2024-08-01 11:24:39', '2024-08-01 11:24:46', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (29, 29, 5, '2024-08-01 11:24:51', '2024-08-01 11:24:55', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (30, 30, 7, '2024-08-01 11:25:03', '2024-11-03 14:47:33', 0, '2024-11-03 14:47:33');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (73, 20, 2, '2024-08-02 01:09:34', '2024-11-03 15:30:04', 0, '2024-11-03 15:30:04');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (74, 6, 2, '2024-08-07 04:20:00', '2024-08-08 07:40:11', 1, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (75, 6, 2, '2024-08-08 07:25:11', '2024-08-08 07:39:38', 1, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (76, 6, 6, '2024-08-12 13:40:28', '2024-08-12 13:40:28', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (77, 6, 13, '2024-08-13 14:38:07', '2024-08-18 07:41:49', 1, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (78, 6, 8, '2024-08-14 07:55:04', '2024-08-14 07:55:04', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (79, 41, 2, '2024-08-20 06:45:04', '2024-11-03 16:47:36', 0, '2024-11-03 16:47:36');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (80, 42, 1, '2024-10-31 13:12:01', '2024-10-31 13:12:09', 1, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (81, 2, 2, '2024-11-01 08:44:48', '2024-11-01 08:54:48', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (82, 41, 2, '2024-11-01 08:57:02', '2024-11-02 07:11:40', 0, NULL);
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (83, 41, 2, '2024-11-02 07:29:38', '2024-11-03 16:47:47', 0, '2024-11-03 16:47:47');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (84, 13, 1, '2024-11-02 23:00:51', '2024-11-06 22:22:42', 0, '2024-11-06 22:22:42');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (85, 20, 5, '2024-11-02 23:02:33', '2024-11-02 23:04:36', 0, '2024-11-02 23:04:36');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (86, 15, 1, '2024-11-02 23:04:21', '2024-11-03 16:52:09', 0, '2024-11-03 16:52:09');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (87, 21, 1, '2024-11-03 16:49:09', '2024-11-03 16:49:13', 0, '2024-11-03 16:49:13');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (88, 23, 1, '2024-11-03 16:50:30', '2024-11-03 22:00:59', 0, '2024-11-03 22:00:59');
INSERT INTO `Records` (`id`, `person_id`, `problem_id`, `createdAt`, `updatedAt`, `is_closed`, `updated_bar`) VALUES (89, 15, 1, '2024-11-03 16:52:13', '2024-11-03 21:56:15', 0, '2024-11-03 21:56:15');
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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`),
  KEY `id_2` (`id`)
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
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `unit_id` (`unit_id`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `Units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Users
-- ----------------------------
BEGIN;
INSERT INTO `Users` (`id`, `username`, `password`, `role`, `unit_id`, `last_login`) VALUES (1, '111', '111', 'user', 1, '2024-11-03 14:28:41');
INSERT INTO `Users` (`id`, `username`, `password`, `role`, `unit_id`, `last_login`) VALUES (2, '222', '222', 'user', 2, '2024-11-02 23:12:15');
INSERT INTO `Users` (`id`, `username`, `password`, `role`, `unit_id`, `last_login`) VALUES (3, '333', '333', 'user', 3, NULL);
INSERT INTO `Users` (`id`, `username`, `password`, `role`, `unit_id`, `last_login`) VALUES (8, '000', '000', 'admin', 0, '2024-11-06 22:24:01');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
