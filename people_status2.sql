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

 Date: 05/08/2024 19:51:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '<AppstoreOutlined />',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `children` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menus
-- ----------------------------
BEGIN;
INSERT INTO `menus` (`id`, `label`, `path`, `icon`, `type`, `children`) VALUES (1, '首页', '/summary', 'AreaChartOutlined', NULL, NULL);
INSERT INTO `menus` (`id`, `label`, `path`, `icon`, `type`, `children`) VALUES (2, '重点人员一览表', '/home', 'TeamOutlined', NULL, NULL);
INSERT INTO `menus` (`id`, `label`, `path`, `icon`, `type`, `children`) VALUES (3, '个人情况查看', '/status', 'UserOutlined', NULL, NULL);
INSERT INTO `menus` (`id`, `label`, `path`, `icon`, `type`, `children`) VALUES (4, '人员基本信息', '/basicinfo', 'AppstoreOutlined', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for people
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `catagory` int DEFAULT NULL,
  `married` tinyint(1) DEFAULT '1',
  `unit_id` int DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `unit_id` (`unit_id`) USING BTREE,
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of people
-- ----------------------------
BEGIN;
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (1, '王一', 0, 0, 1, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (2, '王二', 1, 1, 2, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (3, '王三', 2, 0, 3, '/1722266382061avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (4, '王四', 1, 1, 3, '/1722266389256avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (5, '王五', 1, 0, 2, '/1722392288656avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (6, '王六', 2, 1, 1, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (7, '王七', 0, 0, 1, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (8, '王九', 1, 1, 2, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (9, '王十', 1, 1, 2, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (10, '王十一', 0, 1, 3, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (11, '李一', 0, 0, 3, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (12, '李二', 2, 0, 2, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (13, '李三', 1, 1, 1, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (14, '李四', 0, 0, 3, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (15, '李五', 2, 1, 1, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (16, '李六', 0, 1, 2, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (17, '李七', 1, 0, 3, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (18, '李八', 2, 0, 3, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (19, '李九', 2, 0, 2, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (20, '李十', 1, 1, 1, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (21, '张一', 0, 1, 2, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (22, '张二', 0, 0, 1, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (23, '张三', 2, 0, 1, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (24, '张四', 1, 0, 2, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (25, '张五', 1, 1, 3, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (26, '张六', 2, 0, 3, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (27, '张七', 1, 1, 1, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (28, '张八', 2, 0, 2, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (29, '张九', 0, 1, 3, '/1722266353792avatar.jpeg');
INSERT INTO `people` (`id`, `name`, `catagory`, `married`, `unit_id`, `avatar`) VALUES (30, '张十', 0, 0, 1, '/1722266353792avatar.jpeg');
COMMIT;

-- ----------------------------
-- Table structure for problems
-- ----------------------------
DROP TABLE IF EXISTS `problems`;
CREATE TABLE `problems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of problems
-- ----------------------------
BEGIN;
INSERT INTO `problems` (`id`, `name`) VALUES (1, '身患重大疾病');
INSERT INTO `problems` (`id`, `name`) VALUES (2, '阶段现实诉求强烈');
INSERT INTO `problems` (`id`, `name`) VALUES (3, '涉及职级调整人员');
INSERT INTO `problems` (`id`, `name`) VALUES (4, '立功受奖愿望强烈人员');
INSERT INTO `problems` (`id`, `name`) VALUES (5, '拟晋升高级士官人员');
INSERT INTO `problems` (`id`, `name`) VALUES (6, '涉网、涉黄问题倾向人员');
INSERT INTO `problems` (`id`, `name`) VALUES (7, '长期在外执行任务人员');
INSERT INTO `problems` (`id`, `name`) VALUES (8, '转业待移交人员');
INSERT INTO `problems` (`id`, `name`) VALUES (9, '退休涉嫌违规兼职人员');
INSERT INTO `problems` (`id`, `name`) VALUES (10, '专业技术力量整合人员');
INSERT INTO `problems` (`id`, `name`) VALUES (11, '新入职、入伍人员');
INSERT INTO `problems` (`id`, `name`) VALUES (12, '重点敏感岗位人员');
INSERT INTO `problems` (`id`, `name`) VALUES (13, '在外探亲休假人员');
COMMIT;

-- ----------------------------
-- Table structure for records
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '无',
  `risk_level` int DEFAULT NULL,
  `person_id` int DEFAULT NULL,
  `problem_id` int DEFAULT NULL,
  `measure` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '无',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '无',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `responsible_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `person_id` (`person_id`) USING BTREE,
  KEY `problem_id` (`problem_id`) USING BTREE,
  KEY `responsible_id` (`responsible_id`) USING BTREE,
  CONSTRAINT `records_ibfk_27` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `records_ibfk_28` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `records_ibfk_29` FOREIGN KEY (`responsible_id`) REFERENCES `people` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of records
-- ----------------------------
BEGIN;
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (1, '遭遇车祸，左腿截肢\r\n', 2, 1, 1, '为其提供心理疏导，关怀慰问', '无', '2024-07-28 10:56:24', '2024-07-28 10:56:31', 1);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (2, '重度腰椎间盘突出', 1, 2, 2, '安排住院手术、心理疏导', '无', '2024-07-28 10:56:43', '2024-07-28 10:56:57', 2);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (3, '涉及调整专业技术岗位等级', 0, 3, 3, '安排专人定期沟通、按时上报调整事项', '无', '2024-07-28 10:57:11', '2024-07-28 10:57:20', 3);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (4, '转业诉求不满', 2, 4, 4, '协商、依法依规处理', '无', '2024-07-28 10:57:31', '2024-07-28 10:57:39', 4);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (5, '立功受奖意愿强烈', 1, 5, 5, '定期谈心、鼓励、引导', '无', '2024-07-28 10:57:53', '2024-07-28 10:58:01', 5);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (6, '涉及晋升', 1, 6, 6, '定期谈心、鼓励、引导', '无', '2024-07-29 10:58:18', '2024-07-29 10:58:11', 6);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (7, '涉黄', 2, 7, 7, '彻底清查涉黄载体，组织专人谈心交心', '无', '2024-07-29 10:58:27', '2024-07-29 10:58:35', 7);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (8, '期望评任高级职称和晋升', 1, 8, 8, '定期谈心、鼓励、引导', '无', '2024-07-29 10:58:49', '2024-07-29 10:58:43', 8);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (9, '长期在外执行任务', 1, 9, 9, '指派专人定期联系、负责人主动汇报情况', '无', '2024-07-29 10:58:57', '2024-07-29 10:59:05', 9);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (10, '退休涉嫌违规兼职', 2, 10, 10, '依法依规处理', '无', '2024-07-29 10:59:20', '2024-07-29 10:59:13', 10);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (11, '重度精神分裂', 2, 11, 11, '为其提供心理疏导，关怀慰问、定期谈心交心', '无', '2024-07-29 11:08:36', '2024-07-29 11:08:44', 11);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (12, '期望调整待遇级别', 1, 12, 12, '安排专人定期沟通、按时上报调整事项', '无', '2024-07-29 11:08:59', '2024-07-29 11:09:06', 12);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (13, '在外休假', 1, 13, 12, '指派专人定期联系、本人主动汇报情况\r\n', '无', '2024-07-29 11:13:33', '2024-07-29 11:13:39', 13);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (14, '新入职文职人员', 1, 14, 11, '定期谈心交心，做好引导帮带', '无', '2024-07-29 11:19:49', '2024-07-29 11:20:00', 14);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (15, '涉网贷', 2, 15, 1, '询问情况，批评教育，谈心交心', '无', '2024-07-29 11:20:08', '2024-07-29 11:20:14', 15);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (16, '立功受奖意愿强烈', 1, 16, 2, '定期谈心、鼓励、引导', '无', '2024-07-29 11:20:22', '2024-07-29 11:20:38', 16);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (17, '即将退伍', 1, 17, 3, '定期谈心，了解诉求', '无', '2024-07-30 11:20:45', '2024-07-30 11:20:51', 17);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (18, '转业待移交人员', 1, 18, 4, '定期关怀，询问，了解诉求', '无', '2024-07-30 11:21:54', '2024-07-30 11:22:07', 18);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (19, '即将退伍', 1, 19, 1, '定期谈心，了解诉求', '无', '2024-07-30 11:22:25', '2024-07-30 11:22:15', 19);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (20, '在外休假', 1, 20, 5, '指派专人定期联系、本人主动汇报情况', '无', '2024-07-30 11:22:32', '2024-07-30 11:22:39', 20);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (21, '涉赌', 2, 21, 10, '询问情况，批评教育，谈心交心', '无', '2024-07-30 11:22:53', '2024-07-30 11:22:47', 21);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (22, '新入伍人员', 1, 22, 12, '定期谈心交心，做好引导帮带', '无', '2024-07-30 11:23:01', '2024-07-30 11:23:12', 22);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (23, '即将退伍', 1, 23, 6, '定期谈心，了解诉求', '无', '2024-07-30 11:23:26', '2024-07-30 11:23:19', 23);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (24, '属于专业技术力量整合人员', 1, 24, 7, '安排专人定期沟通、掌握其思想状态', '无', '2024-07-31 11:23:35', '2024-07-31 11:23:41', 24);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (25, '新入职文职', 1, 25, 8, '定期谈心交心，做好引导帮带', '无', '2024-07-31 11:24:00', '2024-07-31 11:23:48', 25);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (26, '重点敏感岗位工作', 2, 26, 4, '经常性保密教育、谈心交心', '无', '2024-07-31 11:24:10', '2024-07-31 11:24:18', 26);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (27, '在外休假', 1, 27, 9, '指派专人定期联系、本人主动汇报情况', '无', '2024-07-31 11:24:32', '2024-07-31 11:24:25', 27);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (28, '转业待移交人员', 1, 28, 2, '定期关怀，询问，了解诉求', '无', '2024-08-01 11:24:39', '2024-08-01 11:24:46', 28);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (29, '新入伍人员', 1, 29, 5, '定期谈心交心，做好引导帮带', '无', '2024-08-01 11:24:51', '2024-08-01 11:24:55', 29);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (30, '新入伍人员', 1, 30, 7, '定期谈心交心，做好引导帮带', '无', '2024-08-01 11:25:03', '2024-08-01 11:25:00', 30);
INSERT INTO `records` (`id`, `detail`, `risk_level`, `person_id`, `problem_id`, `measure`, `comment`, `createdAt`, `updatedAt`, `responsible_id`) VALUES (73, '司法解释六六大顺', 2, 20, 2, '收到粉丝独领风骚', '  ', '2024-08-02 01:09:34', '2024-08-02 01:09:34', 1);
COMMIT;

-- ----------------------------
-- Table structure for units
-- ----------------------------
DROP TABLE IF EXISTS `units`;
CREATE TABLE `units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of units
-- ----------------------------
BEGIN;
INSERT INTO `units` (`id`, `name`) VALUES (1, '1y');
INSERT INTO `units` (`id`, `name`) VALUES (2, '2y');
INSERT INTO `units` (`id`, `name`) VALUES (3, '3y');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'user',
  `unit_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `unit_id` (`unit_id`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `unit_id`) VALUES (1, '111', '111', 'user', 1);
INSERT INTO `users` (`id`, `username`, `password`, `role`, `unit_id`) VALUES (2, '222', '222', 'user', 2);
INSERT INTO `users` (`id`, `username`, `password`, `role`, `unit_id`) VALUES (3, '333', '333', 'user', 3);
INSERT INTO `users` (`id`, `username`, `password`, `role`, `unit_id`) VALUES (8, '000', '000', 'admin', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
