/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80402
 Source Host           : localhost:3306
 Source Schema         : people_status

 Target Server Type    : MySQL
 Target Server Version : 80402
 File Encoding         : 65001

 Date: 17/12/2024 10:00:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '<AppstoreOutlined />',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'Menu',
  `parent_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, '首页', '/summary', 'AreaChartOutlined', 'Menu', NULL);
INSERT INTO `menus` VALUES (2, '重点人员一览表', '/list', 'OrderedListOutlined', 'Menu', NULL);
INSERT INTO `menus` VALUES (5, '重点人信息', '/basicinfo', 'TeamOutlined', 'Menu', NULL);
INSERT INTO `menus` VALUES (6, '思想骨干信息', '/responsible', 'HeartOutlined', 'Menu', NULL);
INSERT INTO `menus` VALUES (7, '全屏显示', '/fullscreen', 'FullscreenOutlined', 'Menu', NULL);
INSERT INTO `menus` VALUES (8, '退出登陆', '/login', 'LogoutOutlined', 'Menu', NULL);

-- ----------------------------
-- Table structure for people
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `catagory` int NULL DEFAULT NULL,
  `married` tinyint(1) NULL DEFAULT 1,
  `unit_id` int NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `responsible_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `unit_id`(`unit_id`) USING BTREE,
  INDEX `responsible_id`(`responsible_id`) USING BTREE,
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_ibfk_14` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `people_ibfk_15` FOREIGN KEY (`responsible_id`) REFERENCES `responsibles` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 155 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of people
-- ----------------------------
INSERT INTO `people` VALUES (1, '赵光', 0, 0, 1, '/17240291117501722266353792avatar.jpeg', 4);
INSERT INTO `people` VALUES (2, '王鑫然', 0, 0, 2, '/1722266353792avatar.jpeg', 3);
INSERT INTO `people` VALUES (3, '张钟艺', 2, 0, 3, '/1722266382061avatar.jpeg', 18);
INSERT INTO `people` VALUES (4, '王自强', 1, 1, 3, '/1722266389256avatar.jpeg', 19);
INSERT INTO `people` VALUES (5, '陈丽丽', 2, 1, 2, '/1722392288656avatar.jpeg', 11);
INSERT INTO `people` VALUES (6, '王航', 2, 1, 1, '/1722266353792avatar.jpeg', 5);
INSERT INTO `people` VALUES (7, '王君弦', 1, 0, 1, '/1722266353792avatar.jpeg', 5);
INSERT INTO `people` VALUES (8, '沈佳航', 1, 1, 2, '/1722266353792avatar.jpeg', 12);
INSERT INTO `people` VALUES (9, '许旭', 1, 0, 2, '/1722266353792avatar.jpeg', 13);
INSERT INTO `people` VALUES (10, '马小力', 0, 0, 3, '/1722266353792avatar.jpeg', 17);
INSERT INTO `people` VALUES (11, '原奥', 2, 0, 3, '/1722266353792avatar.jpeg', 20);
INSERT INTO `people` VALUES (12, '李一鸣', 0, 0, 2, '/1722266353792avatar.jpeg', 14);
INSERT INTO `people` VALUES (13, '李思', 1, 0, 1, '/1722266353792avatar.jpeg', 8);
INSERT INTO `people` VALUES (14, '王振宇', 0, 1, 3, '/1722266353792avatar.jpeg', 24);
INSERT INTO `people` VALUES (15, '杨鑫', 0, 0, 1, '/1722266353792avatar.jpeg', 6);
INSERT INTO `people` VALUES (16, '赵玉生', 0, 1, 2, '/1722266353792avatar.jpeg', 15);
INSERT INTO `people` VALUES (17, '梁佳乐', 1, 0, 3, '/1722266353792avatar.jpeg', 23);
INSERT INTO `people` VALUES (18, '李昆权', 2, 0, 3, '/1722266353792avatar.jpeg', 23);
INSERT INTO `people` VALUES (19, '李栋', 2, 1, 2, '/1722266353792avatar.jpeg', 16);
INSERT INTO `people` VALUES (20, '李明丽', 0, 1, 1, '/1722266353792avatar.jpeg', 10);
INSERT INTO `people` VALUES (21, '张建增', 1, 1, 2, '/1722266353792avatar.jpeg', 3);
INSERT INTO `people` VALUES (22, '董小洁', 2, 1, 1, '/1722266353792avatar.jpeg', 9);
INSERT INTO `people` VALUES (23, '张亚清', 2, 0, 1, '/1722266353792avatar.jpeg', 7);
INSERT INTO `people` VALUES (24, '陈子健', 1, 0, 2, '/1722266353792avatar.jpeg', 11);
INSERT INTO `people` VALUES (25, '张琪', 1, 1, 3, '/1722266353792avatar.jpeg', 21);
INSERT INTO `people` VALUES (26, '宋宇豪', 0, 1, 3, '/1722266353792avatar.jpeg', 19);
INSERT INTO `people` VALUES (27, '张柏树', 0, 1, 1, '/1722266353792avatar.jpeg', 2);
INSERT INTO `people` VALUES (28, '刘乐', 2, 0, 2, '/1722266353792avatar.jpeg', 13);
INSERT INTO `people` VALUES (29, '王孟达', 1, 1, 3, '/1722266353792avatar.jpeg', 22);
INSERT INTO `people` VALUES (30, '王思思', 2, 0, 1, '/1722266353792avatar.jpeg', 10);
INSERT INTO `people` VALUES (35, '胡晓丽', 0, 1, 1, '/17240291368091722266353792avatar.jpeg', 7);
INSERT INTO `people` VALUES (36, '孙航', 1, 0, 1, '/17240291368091722266353792avatar.jpeg', 10);
INSERT INTO `people` VALUES (37, '高冰', 2, 1, 1, '/17240291368091722266353792avatar.jpeg', 8);
INSERT INTO `people` VALUES (38, '董文硕', 1, 1, 1, '/17240291368091722266353792avatar.jpeg', 9);
INSERT INTO `people` VALUES (39, '李润宣', 2, 0, 1, '/17240291368091722266353792avatar.jpeg', 7);
INSERT INTO `people` VALUES (40, '张宇航', 1, 0, 1, '/17240291368091722266353792avatar.jpeg', 10);
INSERT INTO `people` VALUES (41, '范伟', 1, 1, 2, '/17240291368091722266353792avatar.jpeg', 14);
INSERT INTO `people` VALUES (42, '徐子航', 1, 1, 2, '/17240291368091722266353792avatar.jpeg', 15);
INSERT INTO `people` VALUES (43, '郭浩', 1, 0, 2, '/17240291368091722266353792avatar.jpeg', 16);
INSERT INTO `people` VALUES (44, '马闻尚', 0, 1, 2, '/17240291368091722266353792avatar.jpeg', 12);
INSERT INTO `people` VALUES (45, '郑乐翔', 2, 1, 2, '/17240291368091722266353792avatar.jpeg', 13);
INSERT INTO `people` VALUES (46, '邓思栗', 1, 0, 2, '/17240291368091722266353792avatar.jpeg', 11);
INSERT INTO `people` VALUES (47, '吴懂懂', 1, 0, 3, '/17240291368091722266353792avatar.jpeg', 17);
INSERT INTO `people` VALUES (48, '徐浩', 2, 1, 3, '/17240291368091722266353792avatar.jpeg', 18);
INSERT INTO `people` VALUES (49, '张宇', 2, 0, 3, '/17240291368091722266353792avatar.jpeg', 20);
INSERT INTO `people` VALUES (50, '丁建超', 0, 0, 3, '/17240291368091722266353792avatar.jpeg', 24);
INSERT INTO `people` VALUES (51, '张航', 2, 1, 3, '/17240291368091722266353792avatar.jpeg', 18);
INSERT INTO `people` VALUES (52, '贺泽宇', 2, 0, 3, '/17240291368091722266353792avatar.jpeg', 21);
INSERT INTO `people` VALUES (53, '李青峰', 0, 0, 3, '/17240291368091722266353792avatar.jpeg', 19);
INSERT INTO `people` VALUES (54, '赵一帆', 2, 0, 3, '/17240291368091722266353792avatar.jpeg', 17);
INSERT INTO `people` VALUES (55, '孟涛', 2, 0, 3, '/17240291368091722266353792avatar.jpeg', 23);
INSERT INTO `people` VALUES (56, '马明坤', 1, 0, 1, '/17240291368091722266353792avatar.jpeg', 7);
INSERT INTO `people` VALUES (57, '张尚斌', 0, 0, 1, '/17240291368091722266353792avatar.jpeg', 8);
INSERT INTO `people` VALUES (58, '胡文君', 2, 1, 1, '/17240291368091722266353792avatar.jpeg', 9);
INSERT INTO `people` VALUES (59, '翟强', 1, 0, 1, '/17240291368091722266353792avatar.jpeg', 6);
INSERT INTO `people` VALUES (60, '孙力', 1, 0, 4, '/17240291368091722266353792avatar.jpeg', 25);
INSERT INTO `people` VALUES (61, '赵强', 2, 0, 4, '/17240291368091722266353792avatar.jpeg', 26);
INSERT INTO `people` VALUES (62, '唐棠', 2, 1, 4, '/17240291368091722266353792avatar.jpeg', 26);
INSERT INTO `people` VALUES (63, '鲁斯杰', 0, 0, 4, '/17240291368091722266353792avatar.jpeg', 27);
INSERT INTO `people` VALUES (64, '孔令', 1, 0, 4, '/17240291368091722266353792avatar.jpeg', 26);
INSERT INTO `people` VALUES (65, '章雨杰', 2, 0, 4, '/17240291368091722266353792avatar.jpeg', 27);
INSERT INTO `people` VALUES (66, '苗航', 0, 1, 4, '/17240291368091722266353792avatar.jpeg', 29);
INSERT INTO `people` VALUES (67, '冯雨禾', 2, 0, 4, '/17240291368091722266353792avatar.jpeg', 28);
INSERT INTO `people` VALUES (68, '王鑫然', 1, 0, 4, '/17240291368091722266353792avatar.jpeg', 31);
INSERT INTO `people` VALUES (69, '任飞', 1, 0, 4, '/17240291368091722266353792avatar.jpeg', 30);
INSERT INTO `people` VALUES (70, '石寒', 2, 1, 4, '/17240291368091722266353792avatar.jpeg', 30);
INSERT INTO `people` VALUES (71, '黄正国', 0, 1, 4, '/17240291368091722266353792avatar.jpeg', 29);
INSERT INTO `people` VALUES (72, '袁圆杰', 1, 0, 4, '/17240291368091722266353792avatar.jpeg', 27);
INSERT INTO `people` VALUES (73, '周建国', 1, 1, 4, '/17240291368091722266353792avatar.jpeg', 24);
INSERT INTO `people` VALUES (74, '石松', 2, 0, 4, '/17240291368091722266353792avatar.jpeg', 23);
INSERT INTO `people` VALUES (75, '戴行', 1, 0, 4, '/17240291368091722266353792avatar.jpeg', 22);
INSERT INTO `people` VALUES (76, '李聪', 1, 0, 4, '/17240291368091722266353792avatar.jpeg', 21);
INSERT INTO `people` VALUES (77, '张一名', 0, 0, 4, '/17240291368091722266353792avatar.jpeg', 20);
INSERT INTO `people` VALUES (78, '郭刚', 2, 1, 4, '/17240291368091722266353792avatar.jpeg', 18);
INSERT INTO `people` VALUES (79, '姚天明', 1, 0, 4, '/17240291368091722266353792avatar.jpeg', 17);
INSERT INTO `people` VALUES (80, '赵翔羽', 1, 0, 4, '/17240291368091722266353792avatar.jpeg', 19);
INSERT INTO `people` VALUES (81, '李敏', 2, 1, 5, '/17240291368091722266353792avatar.jpeg', 32);
INSERT INTO `people` VALUES (82, '王力', 0, 1, 5, '/17240291368091722266353792avatar.jpeg', 33);
INSERT INTO `people` VALUES (83, '郭建', 2, 0, 5, '/17240291368091722266353792avatar.jpeg', 34);
INSERT INTO `people` VALUES (84, '赵明', 0, 1, 5, '/17240291368091722266353792avatar.jpeg', 35);
INSERT INTO `people` VALUES (85, '林叶', 1, 0, 5, '/17240291368091722266353792avatar.jpeg', 36);
INSERT INTO `people` VALUES (86, '何捷', 2, 1, 5, '/17240291368091722266353792avatar.jpeg', 37);
INSERT INTO `people` VALUES (87, '郭德捷', 1, 1, 5, '/17240291368091722266353792avatar.jpeg', 38);
INSERT INTO `people` VALUES (88, '赵静', 2, 0, 5, '/17240291368091722266353792avatar.jpeg', 39);
INSERT INTO `people` VALUES (89, '徐佳航', 0, 0, 5, '/17240291368091722266353792avatar.jpeg', 32);
INSERT INTO `people` VALUES (90, '许力', 1, 1, 5, '/17240291368091722266353792avatar.jpeg', 33);
INSERT INTO `people` VALUES (91, '王阳雨', 2, 0, 5, '/17240291368091722266353792avatar.jpeg', 34);
INSERT INTO `people` VALUES (92, '孙明明', 0, 1, 5, '/17240291368091722266353792avatar.jpeg', 35);
INSERT INTO `people` VALUES (93, '赵浩', 1, 0, 5, '/17240291368091722266353792avatar.jpeg', 36);
INSERT INTO `people` VALUES (94, '李俊', 2, 1, 5, '/17240291368091722266353792avatar.jpeg', 37);
INSERT INTO `people` VALUES (95, '卓全', 0, 0, 5, '/17240291368091722266353792avatar.jpeg', 38);
INSERT INTO `people` VALUES (96, '郭思涵', 2, 1, 5, '/17240291368091722266353792avatar.jpeg', 39);
INSERT INTO `people` VALUES (97, '刘大壮', 0, 0, 5, '/17240291368091722266353792avatar.jpeg', 32);
INSERT INTO `people` VALUES (98, '张凯舟', 2, 0, 5, '/17240291368091722266353792avatar.jpeg', 32);
INSERT INTO `people` VALUES (99, '李友', 1, 1, 5, '/17240291368091722266353792avatar.jpeg', 39);
INSERT INTO `people` VALUES (100, '萧浩泽', 1, 1, 5, '/17240291368091722266353792avatar.jpeg', 38);
INSERT INTO `people` VALUES (101, '赵哲山', 2, 0, 5, '/17240291368091722266353792avatar.jpeg', 35);
INSERT INTO `people` VALUES (102, '王雨杰', 0, 0, 6, '/17240291368091722266353792avatar.jpeg', 40);
INSERT INTO `people` VALUES (103, '李怡然', 1, 1, 6, '/17240291368091722266353792avatar.jpeg', 41);
INSERT INTO `people` VALUES (104, '郭海峰', 0, 1, 6, '/17240291368091722266353792avatar.jpeg', 42);
INSERT INTO `people` VALUES (105, '朱易山', 2, 0, 6, '/17240291368091722266353792avatar.jpeg', 43);
INSERT INTO `people` VALUES (106, '徐凯山', 1, 0, 6, '/17240291368091722266353792avatar.jpeg', 47);
INSERT INTO `people` VALUES (107, '高森', 1, 1, 6, '/17240291368091722266353792avatar.jpeg', 44);
INSERT INTO `people` VALUES (108, '安静', 2, 0, 6, '/17240291368091722266353792avatar.jpeg', 45);
INSERT INTO `people` VALUES (109, '鲁佳', 1, 1, 6, '/17240291368091722266353792avatar.jpeg', 45);
INSERT INTO `people` VALUES (110, '周刚', 0, 0, 6, '/17240291368091722266353792avatar.jpeg', 46);
INSERT INTO `people` VALUES (112, '方宇', 2, 1, 6, '/17240291368091722266353792avatar.jpeg', 47);
INSERT INTO `people` VALUES (113, '赵嘉佳', 0, 0, 6, '/17240291368091722266353792avatar.jpeg', 44);
INSERT INTO `people` VALUES (121, '柳楷', 1, 0, 7, '/17240291368091722266353792avatar.jpeg', 48);
INSERT INTO `people` VALUES (122, '王柱', 2, 1, 7, '/17240291368091722266353792avatar.jpeg', 49);
INSERT INTO `people` VALUES (123, '韦初', 0, 1, 7, '/17240291368091722266353792avatar.jpeg', 50);
INSERT INTO `people` VALUES (124, '郭琪', 2, 0, 7, '/17240291368091722266353792avatar.jpeg', 51);
INSERT INTO `people` VALUES (125, '赵乐', 1, 1, 7, '/17240291368091722266353792avatar.jpeg', 52);
INSERT INTO `people` VALUES (126, '林霖', 1, 0, 7, '/17240291368091722266353792avatar.jpeg', 53);
INSERT INTO `people` VALUES (127, '杜浩', 2, 0, 7, '/17240291368091722266353792avatar.jpeg', 54);
INSERT INTO `people` VALUES (128, '徐诺', 1, 1, 7, '/17240291368091722266353792avatar.jpeg', 53);
INSERT INTO `people` VALUES (129, '池凯', 1, 0, 7, '/17240291368091722266353792avatar.jpeg', 51);
INSERT INTO `people` VALUES (130, '钱金', 2, 1, 7, '/17240291368091722266353792avatar.jpeg', 48);
INSERT INTO `people` VALUES (131, '周子宸', 1, 0, 7, '/17240291368091722266353792avatar.jpeg', 49);
INSERT INTO `people` VALUES (132, '李沐源', 0, 0, 7, '/17240291368091722266353792avatar.jpeg', 50);
INSERT INTO `people` VALUES (133, '王东', 2, 0, 7, '/17240291368091722266353792avatar.jpeg', 48);
INSERT INTO `people` VALUES (134, '许屹', 1, 1, 7, '/17240291368091722266353792avatar.jpeg', 54);
INSERT INTO `people` VALUES (146, '王晨曦', 0, 1, 3, '/1724051518156avatar.jpeg', 17);

-- ----------------------------
-- Table structure for problems
-- ----------------------------
DROP TABLE IF EXISTS `problems`;
CREATE TABLE `problems`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of problems
-- ----------------------------
INSERT INTO `problems` VALUES (1, '身患重大疾病');
INSERT INTO `problems` VALUES (2, '阶段现实诉求强烈');
INSERT INTO `problems` VALUES (3, '涉及职级调整人员');
INSERT INTO `problems` VALUES (4, '立功受奖愿望强烈人员');
INSERT INTO `problems` VALUES (5, '拟晋升高级士官人员');
INSERT INTO `problems` VALUES (6, '涉网、涉黄问题倾向人员');
INSERT INTO `problems` VALUES (7, '长期在外执行任务人员');
INSERT INTO `problems` VALUES (8, '转业待移交人员');
INSERT INTO `problems` VALUES (9, '退休涉嫌违规兼职人员');
INSERT INTO `problems` VALUES (10, '专业技术力量整合人员');
INSERT INTO `problems` VALUES (11, '新入职、入伍人员');
INSERT INTO `problems` VALUES (12, '重点敏感岗位人员');
INSERT INTO `problems` VALUES (13, '在外探亲休假人员');

-- ----------------------------
-- Table structure for recorddevelopments
-- ----------------------------
DROP TABLE IF EXISTS `recorddevelopments`;
CREATE TABLE `recorddevelopments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '无',
  `risk_level` int NULL DEFAULT NULL,
  `record_id` int NULL DEFAULT NULL,
  `measure` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '无',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '无',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `record_id`(`record_id`) USING BTREE,
  CONSTRAINT `recorddevelopments_ibfk_1` FOREIGN KEY (`record_id`) REFERENCES `records` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 362 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of recorddevelopments
-- ----------------------------
INSERT INTO `recorddevelopments` VALUES (11, '长期在外执行任务', 0, 13, '沟通与协调', '无', '2024-08-12 15:14:05', '2024-01-01 15:14:05');
INSERT INTO `recorddevelopments` VALUES (13, '远距离在外执行任务人员', 2, 2, '建立协作机制', '无', '2024-08-13 11:33:20', '2024-07-01 11:33:20');
INSERT INTO `recorddevelopments` VALUES (15, '在外休假', 2, 8, '加强思想教育落实', '无', '2024-08-13 11:35:56', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (17, '长期在外执行任务', 0, 79, '沟通与协调', '无', '2024-08-17 05:21:50', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (18, '远距离在外执行任务人员', 1, 79, '建立协作机制', '无', '2024-08-17 05:22:59', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (19, '在外休假', 0, 77, '加强沟通管理', '无', '2024-08-17 05:24:11', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (20, '在外休假', 0, 77, '加强思想教育落实', '无', '2024-08-17 05:24:42', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (21, '涉网问题', 1, 76, '加强安全教育', '无', '2024-08-17 05:25:42', '2024-07-01 05:25:42');
INSERT INTO `recorddevelopments` VALUES (22, '涉网问题', 2, 76, '加强保密工作教育', '无', '2024-08-17 05:26:12', '2024-07-01 05:26:12');
INSERT INTO `recorddevelopments` VALUES (23, '涉网问题', 0, 6, '加强安全教育', '无', '2024-08-17 05:27:14', '2024-04-01 05:27:14');
INSERT INTO `recorddevelopments` VALUES (24, '涉网问题', 0, 6, '加强教育工作', '无', '2024-08-17 05:27:34', '2024-05-01 05:27:34');
INSERT INTO `recorddevelopments` VALUES (25, '涉网问题', 2, 6, '加强网络泄密教育', '无', '2024-08-17 05:27:57', '2024-04-01 05:27:57');
INSERT INTO `recorddevelopments` VALUES (26, '生活方面问题', 0, 80, '加强组织关心', '无', '2024-08-17 05:29:38', '2024-03-01 05:29:38');
INSERT INTO `recorddevelopments` VALUES (27, '子女教育问题', 1, 80, '尽量协调', '无', '2024-08-17 05:30:15', '2024-04-01 05:30:15');
INSERT INTO `recorddevelopments` VALUES (28, '长期在外执行任务人员', 1, 30, '加强政治教育', '无', '2024-08-17 05:31:01', '2024-06-01 05:31:01');
INSERT INTO `recorddevelopments` VALUES (29, '长期在外执行任务人员', 2, 30, '加强教育', '无', '2024-08-17 05:31:17', '2024-05-01 05:31:17');
INSERT INTO `recorddevelopments` VALUES (30, '手续问题', 2, 81, '积极帮助', '无', '2024-08-17 05:32:27', '2024-02-01 05:32:27');
INSERT INTO `recorddevelopments` VALUES (31, '退休涉嫌违规兼职', 2, 82, '加强互帮互助', '无', '2024-08-17 05:33:16', '2024-07-17 05:33:16');
INSERT INTO `recorddevelopments` VALUES (32, '身患重大疾病', 2, 83, '增强团结', '无', '2024-08-17 05:36:05', '2024-07-17 05:36:05');
INSERT INTO `recorddevelopments` VALUES (33, '生活方面', 1, 84, '加强沟通协调', '无', '2024-08-17 05:36:44', '2024-07-17 05:36:44');
INSERT INTO `recorddevelopments` VALUES (34, '生活方面', 0, 84, '加强沟通协调', '无', '2024-08-17 05:37:18', '2024-01-01 15:14:05');
INSERT INTO `recorddevelopments` VALUES (35, '拟晋升高级士官', 1, 73, '落实制度', '无', '2024-08-17 05:37:59', '2024-07-01 11:33:20');
INSERT INTO `recorddevelopments` VALUES (36, '阶段现实诉求强烈', 2, 73, '落实制度', '无', '2024-08-17 05:38:18', '2024-08-13 11:33:40');
INSERT INTO `recorddevelopments` VALUES (37, '专业技术力量整合', 0, 85, '沟通交流', '无', '2024-08-17 05:39:02', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (38, '阶段现实诉求强烈', 1, 85, '沟通', '无', '2024-08-17 05:39:15', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (39, '问题突出', 0, 86, '加强沟通交流', '无 ', '2024-08-17 05:40:00', '2024-07-17 05:40:00');
INSERT INTO `recorddevelopments` VALUES (40, '职级调整', 2, 87, '加强制度落实', '无', '2024-08-17 05:40:20', '2024-07-17 05:40:20');
INSERT INTO `recorddevelopments` VALUES (41, '职级调整', 2, 87, '职级调整', '无', '2024-08-17 05:40:37', '2024-07-17 05:40:37');
INSERT INTO `recorddevelopments` VALUES (42, '长期在外执行任务人员', 0, 88, '加强思想教育', '无', '2024-08-17 05:41:02', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (43, '长期在外执行任务人员', 0, 88, '加强保密教育', '无', '2024-08-17 05:41:32', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (44, '立功受奖愿望', 0, 89, '增加机会', '无', '2024-08-17 05:42:22', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (45, '职级调整', 0, 91, '职级调整', '无', '2024-08-17 05:54:41', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (46, '职级调整', 0, 91, '加强落实', '无', '2024-08-17 05:55:00', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (47, '工伤', 0, 15, '尽快落实制度', '无', '2024-08-17 05:56:07', '2024-08-17 05:56:07');
INSERT INTO `recorddevelopments` VALUES (48, '工伤', 0, 15, '加强沟通协调', '无', '2024-08-17 05:56:30', '2024-08-17 05:56:30');
INSERT INTO `recorddevelopments` VALUES (49, '重点敏感岗位人员', 1, 22, '加强保密教育', '无', '2024-08-17 05:57:17', '2024-08-17 05:57:17');
INSERT INTO `recorddevelopments` VALUES (50, '敏感岗位', 1, 22, '加强保密教育', '无', '2024-08-17 05:57:36', '2024-08-17 05:57:36');
INSERT INTO `recorddevelopments` VALUES (51, '生活方面问题', 1, 92, '协调沟通', '无', '2024-08-17 05:58:51', '2024-07-17 05:58:51');
INSERT INTO `recorddevelopments` VALUES (52, '居住方面问题', 1, 92, '尽量协调解决', '无', '2024-08-17 05:59:22', '2024-08-17 05:59:22');
INSERT INTO `recorddevelopments` VALUES (53, '重点敏感岗位', 2, 93, '加强网络泄密教育', '无', '2024-08-17 06:00:00', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (54, '融入问题', 1, 94, '加强沟通协调', '无', '2024-08-17 06:00:40', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (55, '团结协调问题', 1, 94, '加强团队工作', '无', '2024-08-17 06:01:05', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (56, '身患重大疾病', 0, 95, '就医', '无', '2024-08-17 06:01:58', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (57, '身患重大疾病', 1, 95, '解决医疗问题', '无', '2024-08-17 06:02:25', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (58, '生活方面问题', 0, 96, '加强沟通', '无', '2024-08-17 06:02:55', '2024-08-17 06:02:55');
INSERT INTO `recorddevelopments` VALUES (59, '1', 0, 2, '2', '3', '2024-08-17 06:03:48', '2024-08-17 06:03:48');
INSERT INTO `recorddevelopments` VALUES (60, '居住方面问题', 0, 97, '加强沟通协调', '无', '2024-08-17 06:04:09', '2024-08-17 06:04:09');
INSERT INTO `recorddevelopments` VALUES (61, '生活方面问题', 1, 97, '落实制度', '无', '2024-08-17 06:04:35', '2024-07-17 06:04:35');
INSERT INTO `recorddevelopments` VALUES (62, '长期在外执行任务', 2, 98, '加强安全教育', '无', '2024-08-17 06:05:03', '2024-07-17 06:05:03');
INSERT INTO `recorddevelopments` VALUES (63, '长期在外执行任务', 1, 98, '加强沟通协调', '无', '2024-08-17 06:05:18', '2024-07-17 06:05:18');
INSERT INTO `recorddevelopments` VALUES (64, '长期远距离在外', 1, 98, '建立协作机制', '无', '2024-08-17 06:05:49', '2024-07-17 06:05:49');
INSERT INTO `recorddevelopments` VALUES (65, '立功受奖愿望强烈', 0, 99, '增加机会', '无', '2024-08-17 06:06:13', '2024-07-01 06:06:13');
INSERT INTO `recorddevelopments` VALUES (66, '受奖愿望强烈', 1, 99, '加强沟通协调', '无', '2024-08-17 06:06:32', '2024-08-17 06:06:32');
INSERT INTO `recorddevelopments` VALUES (67, '立功受奖愿望强烈', 1, 100, '加强沟通协调', '无', '2024-08-17 06:07:00', '2024-08-17 06:07:00');
INSERT INTO `recorddevelopments` VALUES (68, '立功受奖愿望强烈', 1, 100, '增加机会', '无', '2024-08-17 06:07:13', '2024-08-17 06:07:13');
INSERT INTO `recorddevelopments` VALUES (69, '拟晋升高级', 0, 101, '增加机会', '无', '2024-08-17 06:07:33', '2024-08-17 06:07:33');
INSERT INTO `recorddevelopments` VALUES (70, '在外探亲休假', 0, 102, '加强思想教育', '无', '2024-08-17 06:08:03', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (71, '在外探亲休假人员', 0, 102, '沟通与协调', '无', '2024-08-17 06:08:17', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (72, '涉网问题', 0, 103, '加强网络泄密教育', '无', '2024-08-17 06:08:37', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (73, '生活方面问题', 1, 104, '沟通与协调', '无', '2024-08-17 06:09:05', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (74, '居住方面问题', 1, 105, '加强沟通协调，落实制度', '无', '2024-08-17 06:09:57', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (75, '阶段现实诉求强烈', 0, 105, '加强沟通协调', '无', '2024-08-17 06:10:18', '2024-08-17 06:10:18');
INSERT INTO `recorddevelopments` VALUES (76, '拟晋升高级士官', 1, 5, '落实制度', '无', '2024-08-17 06:10:44', '2024-07-17 06:10:44');
INSERT INTO `recorddevelopments` VALUES (77, '立功受奖愿望强烈', 0, 106, '增加机会', '无', '2024-08-17 06:11:22', '2024-07-17 06:11:22');
INSERT INTO `recorddevelopments` VALUES (78, '在外探亲休假', 0, 107, '加强保密教育\n加强安全教育\n', '无', '2024-08-17 06:11:54', '2024-01-01 06:11:54');
INSERT INTO `recorddevelopments` VALUES (79, '在外探亲', 0, 107, '加强网络泄密教育', '无', '2024-08-17 06:12:05', '2024-08-17 06:12:05');
INSERT INTO `recorddevelopments` VALUES (80, '在外探亲休假', 2, 3, '加强思想教育', '无', '2024-08-17 06:14:21', '2024-02-01 06:14:21');
INSERT INTO `recorddevelopments` VALUES (81, '在外探亲休假人员', 0, 108, '沟通与协调', '无', '2024-08-17 06:14:32', '2024-04-01 06:14:32');
INSERT INTO `recorddevelopments` VALUES (82, '涉网问题', 0, 108, '加强网络泄密教育', '无', '2024-08-17 06:14:38', '2024-07-17 06:14:38');
INSERT INTO `recorddevelopments` VALUES (85, '阶段现实诉求强烈', 1, 4, '加强沟通协调', '无', '2024-08-17 06:15:04', '2024-07-17 06:15:04');
INSERT INTO `recorddevelopments` VALUES (86, '拟晋升高级士官', 1, 4, '落实制度', '无', '2024-08-17 06:15:08', '2024-08-17 06:15:08');
INSERT INTO `recorddevelopments` VALUES (87, '立功受奖愿望强烈', 0, 110, '增加机会', '无', '2024-08-17 06:15:18', '2024-08-17 06:15:18');
INSERT INTO `recorddevelopments` VALUES (88, '在外探亲休假', 0, 111, '加强保密教育\n加强安全教育\n', '无', '2024-08-17 06:15:27', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (89, '在外探亲', 0, 10, '加强网络泄密教育', '无', '2024-08-17 06:15:36', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (90, '居住方面问题', 1, 112, '加强沟通协调', '无', '2024-08-17 06:15:44', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (91, '生活方面问题', 0, 112, '落实制度', '无', '2024-08-17 06:15:50', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (92, '长期在外执行任务', 0, 113, '加强安全教育', '无', '2024-08-17 06:16:01', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (93, '长期在外执行任务', 0, 113, '加强沟通协调', '无', '2024-08-17 06:16:06', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (94, '长期远距离在外', 0, 11, '建立协作机制', '无', '2024-08-17 06:16:14', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (95, '立功受奖愿望强烈', 1, 114, '增加机会', '无', '2024-08-17 06:16:23', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (96, '受奖愿望强烈', 0, 114, '加强沟通协调', '无', '2024-08-17 06:16:27', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (97, '立功受奖愿望强烈', 0, 11, '加强沟通协调', '无', '2024-08-17 06:16:34', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (98, '立功受奖愿望强烈', 0, 14, '增加机会', '无', '2024-08-17 06:16:42', '2024-05-01 07:01:46');
INSERT INTO `recorddevelopments` VALUES (99, '拟晋升高级', 1, 115, '增加机会', '无', '2024-08-17 06:16:49', '2024-01-17 07:01:50');
INSERT INTO `recorddevelopments` VALUES (101, '在外探亲休假人员', 0, 17, '沟通与协调', '无', '2024-08-17 06:17:07', '2024-08-17 06:17:07');
INSERT INTO `recorddevelopments` VALUES (102, '涉网问题', 0, 117, '加强网络泄密教育', '无', '2024-08-17 06:17:17', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (103, '生活方面问题', 0, 118, '沟通与协调', '无', '2024-08-17 06:17:26', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (104, '居住方面问题', 0, 118, '加强沟通协调，落实制度', '无', '2024-08-17 06:17:31', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (105, '阶段现实诉求强烈', 0, 118, '加强沟通协调', '无', '2024-08-17 06:17:36', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (106, '拟晋升高级士官', 0, 18, '落实制度', '无', '2024-08-17 06:17:57', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (107, '立功受奖愿望强烈', 0, 119, '增加机会', '无', '2024-08-17 06:18:07', '2024-08-17 06:18:07');
INSERT INTO `recorddevelopments` VALUES (108, '在外探亲休假', 1, 119, '加强保密教育\n加强安全教育\n', '无', '2024-08-17 06:18:13', '2024-08-17 06:18:13');
INSERT INTO `recorddevelopments` VALUES (109, '在外探亲', 1, 25, '加强网络泄密教育', '无', '2024-08-17 06:18:22', '2024-08-17 06:18:22');
INSERT INTO `recorddevelopments` VALUES (110, '在外探亲休假', 1, 25, '加强思想教育', '无', '2024-08-17 06:18:31', '2024-08-17 06:18:31');
INSERT INTO `recorddevelopments` VALUES (111, '在外探亲休假人员', 0, 26, '沟通与协调', '无', '2024-08-17 06:18:42', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (112, '涉网问题', 0, 120, '加强网络泄密教育', '无', '2024-08-17 06:19:01', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (113, '在外探亲休假', 1, 124, '加强网络泄密教育', '无', '2024-08-17 06:20:46', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (114, '长期在外执行任务', 2, 123, '加强保密教育', '无', '2024-08-17 06:21:07', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (115, '在外探亲休假', 0, 124, '加强保密教育', '无', '2024-08-17 06:21:26', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (116, '重点敏感岗位', 0, 125, '加强保密教育\n加强安全教育\n', '无', '2024-08-17 06:21:54', '2024-08-17 06:21:54');
INSERT INTO `recorddevelopments` VALUES (117, '重点敏感岗位人员', 1, 125, '加强政治教育', '无', '2024-08-17 06:22:39', '2024-08-17 06:22:39');
INSERT INTO `recorddevelopments` VALUES (118, '涉及职级调整', 1, 126, '落实制度', '无', '2024-08-17 06:23:04', '2024-08-17 06:23:04');
INSERT INTO `recorddevelopments` VALUES (119, '涉及职级调整', 0, 126, '职级调整', '无', '2024-08-17 06:23:19', '2024-08-17 06:23:19');
INSERT INTO `recorddevelopments` VALUES (120, '新入职人员', 0, 127, '增加机会\n加强互帮互助\n', '无', '2024-08-17 06:23:48', '2024-08-17 06:23:48');
INSERT INTO `recorddevelopments` VALUES (121, '新入职', 1, 127, '加强保密教育', '无', '2024-08-17 06:24:04', '2024-08-17 06:24:04');
INSERT INTO `recorddevelopments` VALUES (122, '专业技术力量整合人员', 1, 128, '加强思想教育', '无', '2024-08-17 06:24:37', '2024-08-17 06:24:37');
INSERT INTO `recorddevelopments` VALUES (123, '专业技术力量整合', 0, 128, '建立协作机制', '无', '2024-08-17 06:24:50', '2024-08-17 06:24:50');
INSERT INTO `recorddevelopments` VALUES (124, '身患重大疾病', 0, 129, '落实制度', '无', '2024-08-17 06:25:12', '2024-08-17 06:25:12');
INSERT INTO `recorddevelopments` VALUES (125, '重点敏感岗位', 1, 130, '加强保密教育', '无', '2024-08-17 06:25:32', '2024-08-17 06:25:32');
INSERT INTO `recorddevelopments` VALUES (126, '在外探亲休假', 1, 131, '加强沟通协调', '无', '2024-08-17 06:25:57', '2024-05-01 06:25:57');
INSERT INTO `recorddevelopments` VALUES (127, '在外探亲休假', 2, 131, '沟通与协调\n加强网络泄密教育', '无', '2024-08-17 06:26:24', '2024-08-17 06:26:24');
INSERT INTO `recorddevelopments` VALUES (129, '身患重大疾病', 1, 78, '加强互帮互助', '无', '2024-08-17 06:27:37', '2024-08-17 06:27:37');
INSERT INTO `recorddevelopments` VALUES (130, '生活方面问题', 1, 132, '沟通与协调', '无', '2024-08-17 06:27:57', '2024-08-17 06:27:57');
INSERT INTO `recorddevelopments` VALUES (131, '居住方面问题', 1, 132, '落实制度', '无', '2024-08-17 06:28:12', '2024-08-17 06:28:12');
INSERT INTO `recorddevelopments` VALUES (132, '居住方面问题', 2, 132, '协调', '无', '2024-08-17 06:28:32', '2024-08-17 06:28:32');
INSERT INTO `recorddevelopments` VALUES (133, '涉及职级调整人员', 1, 133, '职级调整\n增加机会\n', '无', '2024-08-17 06:28:54', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (134, '涉及职级调整', 1, 133, '落实制度', '无', '2024-08-17 06:29:20', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (135, '立功受奖愿望强烈', 1, 134, '增加机会', '无', '2024-08-17 06:29:41', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (136, '立功受奖愿望强烈', 0, 134, '落实制度', '无', '2024-08-17 06:29:55', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (137, '拟晋升高级士官', 0, 135, '加强沟通协调', '无', '2024-08-17 06:30:24', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (138, '拟晋升高级士官人员', 1, 135, '落实制度', '无', '2024-08-17 06:30:35', '2024-08-17 06:30:35');
INSERT INTO `recorddevelopments` VALUES (139, '长期在外执行任务', 0, 136, '加强网络泄密教育', '无', '2024-08-17 06:30:57', '2024-08-17 06:30:57');
INSERT INTO `recorddevelopments` VALUES (140, '长期在外执行任务', 1, 136, '加强思想教育', '无', '2024-08-17 06:31:10', '2024-08-17 06:31:10');
INSERT INTO `recorddevelopments` VALUES (141, '长期在外执行任务', 2, 136, '建立协作机制', '无', '2024-08-17 06:31:27', '2024-08-17 06:31:27');
INSERT INTO `recorddevelopments` VALUES (142, '探亲', 1, 137, '加强保密教育', '无', '2024-08-17 06:32:01', '2024-08-17 06:32:01');
INSERT INTO `recorddevelopments` VALUES (143, '在外探亲休假', 1, 137, '加强沟通协调', '无', '2024-08-17 06:32:16', '2024-08-17 06:32:16');
INSERT INTO `recorddevelopments` VALUES (144, '重点敏感岗位人员', 2, 138, '加强保密教育', '无', '2024-08-17 06:32:40', '2024-08-17 06:32:40');
INSERT INTO `recorddevelopments` VALUES (145, '专业技术力量整合人员', 0, 139, '增加机会\n加强互帮互助\n', '无', '2024-08-17 06:33:03', '2024-08-17 06:33:03');
INSERT INTO `recorddevelopments` VALUES (146, '专业技术力量整合', 1, 139, '加强沟通协调', '无', '2024-08-17 06:33:15', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (147, '退休涉嫌违规兼职', 0, 140, '加强沟通协调', '无', '2024-08-17 06:33:48', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (148, '退休涉嫌违规兼职', 1, 140, '加强保密教育', '无', '2024-08-17 06:34:05', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (149, '转业待移交', 0, 141, '落实制度', '无', '2024-08-17 06:34:41', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (150, '生活方面问题', 1, 143, '沟通与协调', '无', '2024-08-17 06:35:07', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (151, '阶段现实诉求强烈', 0, 143, '建立协作机制', '无', '2024-08-17 06:35:23', '2024-08-17 06:35:23');
INSERT INTO `recorddevelopments` VALUES (152, '身患重大疾病', 1, 142, '沟通与协调', '无', '2024-08-17 06:35:57', '2024-08-17 06:35:57');
INSERT INTO `recorddevelopments` VALUES (153, '重点敏感岗位', 1, 144, '加强保密教育', '无', '2024-08-17 06:36:23', '2024-08-17 06:36:23');
INSERT INTO `recorddevelopments` VALUES (154, '重点敏感岗位', 0, 144, '加强保密教育', '无', '2024-08-17 06:36:35', '2024-08-17 06:36:35');
INSERT INTO `recorddevelopments` VALUES (155, '转业待移交人员', 0, 145, '无', '无', '2024-08-17 06:36:58', '2024-08-17 06:36:58');
INSERT INTO `recorddevelopments` VALUES (156, '转业待移交', 1, 145, '落实制度', '无', '2024-08-17 06:37:08', '2024-08-17 06:37:08');
INSERT INTO `recorddevelopments` VALUES (157, '专业技术力量整合', 1, 146, '落实制度', '无', '2024-08-17 06:37:40', '2024-08-17 06:37:40');
INSERT INTO `recorddevelopments` VALUES (158, '专业技术力量整合人员', 2, 146, '加强互帮互助', '无', '2024-08-17 06:37:53', '2024-08-17 06:37:53');
INSERT INTO `recorddevelopments` VALUES (159, '长期远距离在外', 1, 147, '沟通与协调，确保心理健康', '无', '2024-08-17 06:38:13', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (160, '拟晋升高级士官', 0, 148, '增加机会', '无', '2024-08-17 06:38:30', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (161, '涉网、涉黄问题倾向', 0, 149, '加强思想教育', '无', '2024-08-17 06:38:58', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (162, '患重大疾病', 0, 150, '沟通与协调，确保心理健康', '无', '2024-08-17 06:39:14', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (163, '新入职、入伍人员', 0, 151, '建立协作机制', '无', '2024-08-17 06:39:40', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (164, '新入职、入伍人员', 1, 151, '增加机会\n加强互帮互助\n', '无', '2024-08-17 06:39:53', '2024-08-17 06:39:53');
INSERT INTO `recorddevelopments` VALUES (165, '专业技术力量整合', 1, 152, '增加机会\n加强互帮互助\n', '无', '2024-08-17 06:40:15', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (166, '专业技术力量整合', 0, 152, '职级调整', '无', '2024-08-17 06:40:27', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (167, '阶段现实诉求强烈', 0, 153, '沟通与协调', '无', '2024-08-17 06:40:51', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (168, '转业待移交人员', 1, 154, '落实制度', '无', '2024-08-17 06:41:10', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (169, '新入职', 0, 155, '加强互帮互助', '无', '2024-08-17 06:41:38', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (170, '新入职、入伍人员', 1, 155, '建立协作机制', '无', '2024-08-17 06:41:50', '2024-05-01 07:01:46');
INSERT INTO `recorddevelopments` VALUES (171, '身患重大疾病', 1, 156, '落实制度', '无', '2024-08-17 06:44:18', '2024-01-17 07:01:50');
INSERT INTO `recorddevelopments` VALUES (172, '患重大疾病', 1, 156, '加强沟通协调', '无', '2024-08-17 06:44:33', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (173, '在外探亲', 0, 157, '加强思想教育', '无', '2024-08-17 06:45:09', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (174, '重点敏感岗位人员', 0, 158, '加强网络泄密教育', '无', '2024-08-17 06:45:35', '2024-08-17 06:45:35');
INSERT INTO `recorddevelopments` VALUES (175, '重点敏感岗位人员', 1, 158, '加强网络泄密教育', '无', '2024-08-17 06:45:44', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (176, '阶段现实诉求强烈', 0, 159, '落实制度', '无', '2024-08-17 06:45:58', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (177, '涉及职级调整', 1, 160, '落实制度', '无', '2024-08-17 06:46:19', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (178, '涉及职级调整人员', 2, 160, '职级调整', '无', '2024-08-17 06:46:29', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (179, '长期在外执行任务', 1, 161, '沟通与协调，确保心理健康', '无', '2024-08-17 06:46:53', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (180, '长期在外执行任务人员', 0, 161, '加强思想教育', '无', '2024-08-17 06:47:13', '2024-05-01 07:01:46');
INSERT INTO `recorddevelopments` VALUES (181, '转业待移交', 1, 162, '加强沟通协调', '无', '2024-08-17 06:47:47', '2024-01-17 07:01:50');
INSERT INTO `recorddevelopments` VALUES (182, '转业待移交', 2, 162, '落实制度', '无', '2024-08-17 06:48:09', '2024-08-17 06:48:09');
INSERT INTO `recorddevelopments` VALUES (183, '身患重大疾病', 0, 163, '增加机会\n加强互帮互助\n', '无', '2024-08-17 06:48:32', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (184, '无', 2, 164, '沟通与协调，确保心理健康', '无', '2024-08-17 06:48:59', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (185, '在外探亲', 1, 164, '加强保密教育', '无', '2024-08-17 06:49:12', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (186, '涉网、涉黄问题倾向', 0, 165, '加强保密教育', '无', '2024-08-17 06:49:39', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (187, '涉网', 2, 165, '加强沟通协调，加强保密教育', '无', '2024-08-17 06:50:06', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (188, '身患重大疾病', 0, 166, '加强互帮互助', '无', '2024-08-17 06:50:27', '2024-05-01 07:01:46');
INSERT INTO `recorddevelopments` VALUES (189, '拟晋升高级士官', 2, 167, '增加机会', '无', '2024-08-17 06:50:47', '2024-01-17 07:01:50');
INSERT INTO `recorddevelopments` VALUES (190, '新入职', 1, 168, '加强互帮互助', '无', '2024-08-17 06:51:20', '2024-08-17 06:51:20');
INSERT INTO `recorddevelopments` VALUES (191, '新入职、入伍人员', 1, 169, '加强保密教育', '无', '2024-08-17 06:51:43', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (192, '新入职、入伍人员', 0, 169, '增加机会', '无', '2024-08-17 06:51:59', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (193, '居住方面问题', 1, 170, '落实制度', '无', '2024-08-17 06:52:24', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (194, '长期在外执行任务', 0, 171, '建立协作机制', '无', '2024-08-17 06:53:08', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (195, '长期在外执行任务', 1, 171, '加强保密教育', '无', '2024-08-17 06:53:28', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (196, '在外探亲', 1, 172, '加强保密教育', '无', '2024-08-17 06:54:16', '2024-05-01 07:01:46');
INSERT INTO `recorddevelopments` VALUES (197, '涉网、涉黄问题倾向', 0, 172, '加强保密教育', '无', '2024-08-17 06:54:21', '2024-01-17 07:01:50');
INSERT INTO `recorddevelopments` VALUES (198, '涉网', 0, 173, '加强沟通协调，加强保密教育', '无', '2024-08-17 06:54:28', '2024-08-17 06:54:28');
INSERT INTO `recorddevelopments` VALUES (199, '身患重大疾病', 1, 174, '加强互帮互助', '无', '2024-08-17 06:54:37', '2024-08-17 06:54:37');
INSERT INTO `recorddevelopments` VALUES (200, '专业技术力量整合', 0, 175, '落实制度', '无', '2024-08-17 06:55:12', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (201, '专业技术力量整合人员', 1, 175, '加强沟通协调', '无', '2024-08-17 06:55:27', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (202, '拟晋升高级士官', 0, 176, '落实制度', '无', '2024-08-17 06:55:47', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (203, '在外探亲休假', 0, 177, '加强保密教育', '无', '2024-08-17 06:56:16', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (204, '立功受奖愿望强烈', 1, 178, '落实制度', '无', '2024-08-17 06:56:48', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (205, '立功受奖愿望强烈', 0, 178, '无', '无', '2024-08-17 06:56:56', '2024-05-01 07:01:46');
INSERT INTO `recorddevelopments` VALUES (206, '长期在外执行任务', 0, 179, '加强互帮互助', '无', '2024-08-17 06:57:15', '2024-01-17 07:01:50');
INSERT INTO `recorddevelopments` VALUES (207, '退休涉嫌违规兼职', 2, 180, '加强沟通协调', '无', '2024-08-17 06:57:46', '2024-08-17 06:57:46');
INSERT INTO `recorddevelopments` VALUES (208, '在外探亲休假人员', 0, 181, '加强思想教育', '无', '2024-08-17 06:58:19', '2024-08-17 06:58:19');
INSERT INTO `recorddevelopments` VALUES (209, '涉及职级调整', 0, 182, '职级调整', '无', '2024-08-17 06:58:43', '2024-08-17 06:58:43');
INSERT INTO `recorddevelopments` VALUES (210, '涉网、涉黄问题倾向人员', 1, 183, '沟通与协调，确保心理健康', '无', '2024-08-17 06:59:09', '2024-08-17 06:59:09');
INSERT INTO `recorddevelopments` VALUES (211, '专业技术力量整合', 0, 184, '职级调整\n', '无', '2024-08-17 06:59:42', '2024-08-17 06:59:42');
INSERT INTO `recorddevelopments` VALUES (212, '专业技术力量整合', 1, 184, '增加机会', '无', '2024-08-17 06:59:54', '2024-08-17 06:59:54');
INSERT INTO `recorddevelopments` VALUES (213, '新入职、入伍人员', 0, 185, '加强沟通协调', '无', '2024-08-17 07:00:22', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (214, '新入职、入伍人员', 0, 185, '加强互帮互助', '无', '2024-08-17 07:00:33', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (215, '长期远距离在外', 2, 186, '落实制度', '无', '2024-08-17 07:01:01', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (216, '阶段现实诉求强烈', 1, 186, '沟通与协调，确保心理健康', '无', '2024-08-17 07:01:21', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (217, '拟晋升高级士官', 0, 187, '落实制度', '无', '2024-08-17 07:01:41', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (218, '在外探亲休假', 1, 187, '加强保密教育', '无', '2024-08-17 07:01:46', '2024-05-01 07:01:46');
INSERT INTO `recorddevelopments` VALUES (219, '立功受奖愿望强烈', 2, 187, '落实制度', '无', '2024-08-17 07:01:50', '2024-01-17 07:01:50');
INSERT INTO `recorddevelopments` VALUES (220, '立功受奖愿望强烈', 0, 188, '无', '无', '2024-08-17 07:01:59', '2024-08-17 07:01:59');
INSERT INTO `recorddevelopments` VALUES (221, '长期在外执行任务', 1, 188, '加强互帮互助', '无', '2024-08-17 07:02:04', '2024-08-17 07:02:04');
INSERT INTO `recorddevelopments` VALUES (222, '拟晋升高级士官', 0, 189, '职级调整', '无', '2024-08-17 07:02:32', '2024-08-17 07:02:32');
INSERT INTO `recorddevelopments` VALUES (223, '立功受奖愿望强烈', 0, 190, '增加机会', '无', '2024-08-17 07:02:54', '2024-08-17 07:02:54');
INSERT INTO `recorddevelopments` VALUES (224, '阶段现实诉求强烈', 0, 191, '加强沟通协调', '无', '2024-08-17 09:14:35', '2024-08-17 09:14:35');
INSERT INTO `recorddevelopments` VALUES (225, '涉及职级调整', 1, 192, '职级调整', '无', '2024-08-17 09:14:56', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (226, '职级调整', 0, 192, '增加机会', '无', '2024-08-17 09:15:20', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (227, '立功受奖愿望强烈', 0, 193, '增加机会', '无', '2024-08-17 09:16:39', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (228, '受奖愿望强烈', 1, 193, '加强沟通协调', '无', '2024-08-17 09:16:52', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (229, '晋升高级', 1, 195, '增加机会', '无', '2024-08-17 09:23:54', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (230, '涉网', 1, 195, '加强网络泄密教育', '无', '2024-08-17 09:24:35', '2024-05-01 07:01:46');
INSERT INTO `recorddevelopments` VALUES (231, '长期远距离在外', 0, 196, '加强互帮互助', '无', '2024-08-17 09:25:23', '2024-01-17 07:01:50');
INSERT INTO `recorddevelopments` VALUES (232, '长期在外执行任务', 1, 196, '加强网络泄密教育', '无', '2024-08-17 09:25:38', '2024-08-17 09:25:38');
INSERT INTO `recorddevelopments` VALUES (233, '专业技术力量整合', 0, 197, '无', '无', '2024-08-17 09:25:59', '2024-08-17 09:25:59');
INSERT INTO `recorddevelopments` VALUES (234, '专业技术力量整合人', 1, 197, '增加机会', '无', '2024-08-17 09:26:11', '2024-08-17 09:26:11');
INSERT INTO `recorddevelopments` VALUES (235, '转业待移交', 0, 198, '落实制度', '无', '2024-08-17 09:26:45', '2024-08-17 09:26:45');
INSERT INTO `recorddevelopments` VALUES (236, '涉及职级调整', 1, 199, '落实制度', '无', '2024-08-17 09:27:10', '2024-08-17 09:27:10');
INSERT INTO `recorddevelopments` VALUES (237, '无', 0, 199, '加强沟通协调', '无', '2024-08-17 09:27:27', '2024-08-17 09:27:27');
INSERT INTO `recorddevelopments` VALUES (238, '无', 0, 200, '无', '无', '2024-08-17 09:27:46', '2024-08-17 09:27:46');
INSERT INTO `recorddevelopments` VALUES (239, '重点敏感岗位', 1, 201, '加强保密教育', '无', '2024-08-17 09:28:16', '2024-08-17 09:28:16');
INSERT INTO `recorddevelopments` VALUES (240, '敏感岗位', 2, 201, '加强安全教育\n加强政治教育\n', '无', '2024-08-17 09:28:31', '2024-08-17 09:28:31');
INSERT INTO `recorddevelopments` VALUES (241, '在外探亲', 0, 202, '加强沟通协调', '无', '2024-08-17 09:28:56', '2024-08-17 09:28:56');
INSERT INTO `recorddevelopments` VALUES (242, '身患重大疾病', 2, 203, '落实制度，加强沟通协调', '无', '2024-08-17 09:29:29', '2024-08-17 09:29:29');
INSERT INTO `recorddevelopments` VALUES (243, '转业待移交', 0, 204, '无', '无', '2024-08-17 09:29:52', '2024-08-17 09:29:52');
INSERT INTO `recorddevelopments` VALUES (262, '在外探亲休假', 0, 217, '加强思想教育', '无', '2024-08-17 09:34:23', '2024-08-17 09:34:23');
INSERT INTO `recorddevelopments` VALUES (263, '立功受奖愿望强烈', 1, 217, '增加机会', '无', '2024-08-17 09:34:26', '2024-08-17 09:34:26');
INSERT INTO `recorddevelopments` VALUES (264, '立功受奖愿望强烈', 0, 218, '职级调整', '无', '2024-08-17 09:34:34', '2024-08-17 09:34:34');
INSERT INTO `recorddevelopments` VALUES (265, '新入职', 2, 218, '加强互帮互助', '无', '2024-08-17 09:34:38', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (266, '长期在外执行任务', 0, 219, '加强互帮互助', '无', '2024-08-17 09:34:47', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (267, '受奖愿望强烈', 0, 220, '增加机会', '无', '2024-08-17 09:34:55', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (268, '立功受奖愿望强烈', 0, 221, '增加机会', '无', '2024-08-17 09:35:10', '2024-02-01 05:24:11');
INSERT INTO `recorddevelopments` VALUES (269, '立功受奖愿望强烈', 0, 222, '职级调整', '无', '2024-08-17 09:35:20', '2024-07-01 05:24:42');
INSERT INTO `recorddevelopments` VALUES (270, '新入职', 1, 222, '加强互帮互助', '无', '2024-08-17 09:35:24', '2024-05-01 07:01:46');
INSERT INTO `recorddevelopments` VALUES (271, '长期在外执行任务', 0, 223, '加强互帮互助', '无', '2024-08-17 09:35:39', '2024-01-17 07:01:50');
INSERT INTO `recorddevelopments` VALUES (272, '受奖愿望强烈', 2, 224, '增加机会', '无', '2024-08-17 09:35:51', '2024-08-17 09:35:51');
INSERT INTO `recorddevelopments` VALUES (273, '生活方面问题', 0, 224, '落实制度', '无', '2024-08-17 09:35:57', '2024-08-17 09:35:57');
INSERT INTO `recorddevelopments` VALUES (274, '涉及职级调整', 0, 225, '落实制度', '无', '2024-08-17 09:36:09', '2024-08-17 09:36:09');
INSERT INTO `recorddevelopments` VALUES (275, '立功受奖愿望强烈', 1, 225, '无', '无', '2024-08-17 09:36:13', '2024-08-17 09:36:13');
INSERT INTO `recorddevelopments` VALUES (276, '新入职、', 0, 226, '建立协作机制', '无', '2024-08-17 09:36:26', '2024-08-17 09:36:26');
INSERT INTO `recorddevelopments` VALUES (277, '在外探亲休假', 0, 227, '加强思想教育', '无', '2024-08-17 09:36:46', '2024-08-17 09:36:46');
INSERT INTO `recorddevelopments` VALUES (278, '立功受奖愿望强烈', 0, 228, '增加机会', '无', '2024-08-17 09:37:05', '2024-08-17 09:37:05');
INSERT INTO `recorddevelopments` VALUES (279, '立功受奖愿望强烈', 1, 228, '职级调整', '无', '2024-08-17 09:37:10', '2024-08-17 09:37:10');
INSERT INTO `recorddevelopments` VALUES (280, '新入职', 0, 229, '加强互帮互助', '无', '2024-08-17 09:37:23', '2024-08-17 09:37:23');
INSERT INTO `recorddevelopments` VALUES (281, '长期在外执行任务', 1, 229, '加强互帮互助', '无', '2024-08-17 09:37:29', '2024-08-17 09:37:29');
INSERT INTO `recorddevelopments` VALUES (282, '受奖愿望强烈', 0, 230, '增加机会', '无', '2024-08-17 09:37:41', '2024-08-17 09:37:41');
INSERT INTO `recorddevelopments` VALUES (283, '立功受奖愿望强烈', 1, 231, '增加机会', '无', '2024-08-17 09:38:02', '2024-08-17 09:38:02');
INSERT INTO `recorddevelopments` VALUES (284, '立功受奖愿望强烈', 0, 231, '职级调整', '无', '2024-08-17 09:38:20', '2024-08-17 09:38:20');
INSERT INTO `recorddevelopments` VALUES (285, '新入职', 0, 232, '加强互帮互助', '无', '2024-08-17 09:38:46', '2024-08-17 09:38:46');
INSERT INTO `recorddevelopments` VALUES (286, '长期在外执行任务', 0, 233, '加强互帮互助', '无', '2024-08-17 09:39:07', '2024-08-17 09:39:07');
INSERT INTO `recorddevelopments` VALUES (287, '受奖愿望强烈', 0, 233, '增加机会', '无', '2024-08-17 09:39:14', '2024-08-17 09:39:14');
INSERT INTO `recorddevelopments` VALUES (288, '生活方面问题', 0, 234, '落实制度', '无', '2024-08-17 09:39:24', '2024-08-17 09:39:24');
INSERT INTO `recorddevelopments` VALUES (289, '涉及职级调整', 1, 234, '落实制度', '无', '2024-08-17 09:39:28', '2024-06-01 11:35:56');
INSERT INTO `recorddevelopments` VALUES (290, '立功受奖愿望强烈', 0, 235, '无', '无', '2024-08-17 09:39:43', '2024-04-01 05:21:50');
INSERT INTO `recorddevelopments` VALUES (291, '新入职、', 0, 236, '建立协作机制', '无', '2024-08-17 09:39:55', '2024-03-01 05:22:59');
INSERT INTO `recorddevelopments` VALUES (307, '长期在外执行任务', 0, 131, '加强互帮互助', '无', '2024-08-19 02:54:29', '2024-08-19 02:54:29');
INSERT INTO `recorddevelopments` VALUES (309, '涉及四季度职级调整，调整意愿强烈', 2, 250, '定期谈话了解心理动态', '四季按期调整', '2024-08-19 07:12:29', '2024-08-19 07:12:29');
INSERT INTO `recorddevelopments` VALUES (310, '生活方面', 0, 84, '加强沟通协调', '无', '2024-09-12 01:22:18', '2024-09-12 01:22:18');
INSERT INTO `recorddevelopments` VALUES (311, '身患重大疾病', 1, 83, '增强团结', '无', '2024-09-12 01:22:40', '2024-09-12 01:22:40');
INSERT INTO `recorddevelopments` VALUES (312, '重点敏感岗位', 0, 93, '加强网络泄密教育', '无', '2024-09-12 01:23:20', '2024-09-12 01:23:20');
INSERT INTO `recorddevelopments` VALUES (313, '新入职', 0, 251, '加强互帮互助', '无', '2024-09-12 01:24:47', '2024-09-12 01:24:47');
INSERT INTO `recorddevelopments` VALUES (314, '长期在外执行任务', 1, 251, '加强互帮互助', '无', '2024-09-12 01:24:55', '2024-09-12 01:24:55');
INSERT INTO `recorddevelopments` VALUES (315, '受奖愿望强烈', 0, 252, '增加机会', '无', '2024-09-12 01:25:17', '2024-09-12 01:25:17');
INSERT INTO `recorddevelopments` VALUES (316, '立功受奖愿望强烈', 1, 252, '增加机会', '无', '2024-09-12 01:25:25', '2024-09-12 01:25:25');
INSERT INTO `recorddevelopments` VALUES (317, '立功受奖愿望强烈', 0, 82, '职级调整', '无', '2024-09-12 01:25:37', '2024-09-12 01:25:37');
INSERT INTO `recorddevelopments` VALUES (318, '新入职', 0, 253, '加强互帮互助', '无', '2024-09-12 01:26:48', '2024-09-12 01:26:48');
INSERT INTO `recorddevelopments` VALUES (319, '长期在外执行任务', 0, 254, '加强互帮互助', '无', '2024-09-12 01:27:09', '2024-09-12 01:27:09');
INSERT INTO `recorddevelopments` VALUES (320, '受奖愿望强烈', 0, 255, '增加机会', '无', '2024-09-12 01:27:30', '2024-09-12 01:27:30');
INSERT INTO `recorddevelopments` VALUES (321, '生活方面问题', 0, 12, '落实制度', '无', '2024-09-12 01:27:56', '2024-09-12 01:27:56');
INSERT INTO `recorddevelopments` VALUES (322, '涉及职级调整', 1, 256, '落实制度', '无', '2024-09-12 01:28:17', '2024-09-12 01:28:17');
INSERT INTO `recorddevelopments` VALUES (323, '立功受奖愿望强烈', 2, 257, '无', '无', '2024-09-12 01:28:40', '2024-09-12 01:28:40');
INSERT INTO `recorddevelopments` VALUES (324, '重点敏感岗位', 0, 9, '增加机会', '无', '2024-09-12 01:29:14', '2024-09-12 01:29:14');
INSERT INTO `recorddevelopments` VALUES (325, '敏感岗位', 2, 258, '职级调整', '无', '2024-09-12 01:29:42', '2024-09-12 01:29:42');
INSERT INTO `recorddevelopments` VALUES (326, '在外探亲', 2, 259, '加强互帮互助', '无', '2024-09-12 01:30:14', '2024-09-12 01:30:14');
INSERT INTO `recorddevelopments` VALUES (327, '身患重大疾病', 0, 28, '加强互帮互助', '无', '2024-09-12 01:30:21', '2024-09-12 01:30:21');
INSERT INTO `recorddevelopments` VALUES (328, '转业待移交', 1, 108, '增加机会', '无', '2024-09-12 01:31:00', '2024-09-12 01:31:00');
INSERT INTO `recorddevelopments` VALUES (329, '在外探亲休假', 0, 260, '增加机会', '无', '2024-09-12 01:31:20', '2024-09-12 01:31:20');
INSERT INTO `recorddevelopments` VALUES (330, '立功受奖愿望强烈', 1, 111, '职级调整', '无', '2024-09-12 01:31:39', '2024-09-12 01:31:39');
INSERT INTO `recorddevelopments` VALUES (331, '立功受奖愿望强烈', 0, 261, '加强互帮互助', '无', '2024-09-12 01:31:51', '2024-09-12 01:31:51');
INSERT INTO `recorddevelopments` VALUES (332, '新入职', 0, 114, '加强互帮互助', '无', '2024-09-12 01:32:18', '2024-09-12 01:32:18');
INSERT INTO `recorddevelopments` VALUES (333, '长期在外执行任务', 0, 262, '增加机会', '无', '2024-09-12 01:32:32', '2024-09-12 01:32:32');
INSERT INTO `recorddevelopments` VALUES (334, '受奖愿望强烈', 2, 263, '落实制度', '无', '2024-09-12 01:33:09', '2024-09-12 01:33:09');
INSERT INTO `recorddevelopments` VALUES (335, '长期在外执行任务', 2, 126, '沟通与协调', '无', '2024-09-12 01:33:53', '2024-09-12 01:33:53');
INSERT INTO `recorddevelopments` VALUES (336, '远距离在外执行任务人员', 0, 264, '建立协作机制', '无', '2024-09-12 01:34:42', '2024-09-12 01:34:42');
INSERT INTO `recorddevelopments` VALUES (337, '在外休假', 1, 264, '加强思想教育落实', '无', '2024-09-12 01:34:49', '2024-09-12 01:34:49');
INSERT INTO `recorddevelopments` VALUES (338, '长期在外执行任务', 0, 265, '沟通与协调', '无', '2024-09-12 01:35:19', '2024-09-12 01:35:19');
INSERT INTO `recorddevelopments` VALUES (339, '远距离在外执行任务人员', 2, 133, '建立协作机制', '无', '2024-09-12 01:35:42', '2024-09-12 01:35:42');
INSERT INTO `recorddevelopments` VALUES (340, '在外休假', 0, 266, '加强沟通管理', '无', '2024-09-12 01:36:10', '2024-09-12 01:36:10');
INSERT INTO `recorddevelopments` VALUES (341, '在外休假', 2, 266, '加强思想教育落实', '无', '2024-09-12 01:36:20', '2024-09-12 01:36:20');
INSERT INTO `recorddevelopments` VALUES (342, '涉网问题', 1, 267, '加强安全教育', '无', '2024-09-12 01:36:52', '2024-09-12 01:36:52');
INSERT INTO `recorddevelopments` VALUES (343, '涉网问题', 0, 268, '加强保密工作教育', '无', '2024-09-12 01:37:49', '2024-09-12 01:37:49');
INSERT INTO `recorddevelopments` VALUES (344, '涉网问题', 0, 269, '加强安全教育', '无', '2024-09-12 01:38:09', '2024-09-12 01:38:09');
INSERT INTO `recorddevelopments` VALUES (345, '涉网问题', 1, 180, '加强教育工作', '无', '2024-09-12 01:38:40', '2024-09-12 01:38:40');
INSERT INTO `recorddevelopments` VALUES (346, '涉网问题', 1, 270, '加强网络泄密教育', '无', '2024-09-12 01:38:59', '2024-09-12 01:38:59');
INSERT INTO `recorddevelopments` VALUES (347, '生活方面问题', 0, 271, '加强组织关心', '无', '2024-09-12 01:40:32', '2024-09-12 01:40:32');
INSERT INTO `recorddevelopments` VALUES (348, '子女教育问题', 1, 271, '尽量协调', '无', '2024-09-12 01:40:45', '2024-09-12 01:40:45');
INSERT INTO `recorddevelopments` VALUES (349, '长期在外执行任务人员', 0, 272, '加强政治教育', '无', '2024-09-12 01:41:11', '2024-09-12 01:41:11');
INSERT INTO `recorddevelopments` VALUES (350, '长期在外执行任务人员', 0, 273, '加强教育', '无', '2024-09-12 01:41:39', '2024-09-12 01:41:39');
INSERT INTO `recorddevelopments` VALUES (351, '手续问题', 0, 274, '积极帮助', '无', '2024-09-12 01:41:56', '2024-09-12 01:41:56');
INSERT INTO `recorddevelopments` VALUES (352, '退休涉嫌违规兼职', 1, 275, '加强互帮互助', '无', '2024-09-12 01:42:31', '2024-09-12 01:42:31');
INSERT INTO `recorddevelopments` VALUES (353, '身患重大疾病', 2, 276, '增强团结', '无', '2024-09-12 01:42:54', '2024-09-12 01:42:54');
INSERT INTO `recorddevelopments` VALUES (354, '生活方面', 1, 277, '加强沟通协调', '无', '2024-09-12 01:44:10', '2024-09-12 01:44:10');
INSERT INTO `recorddevelopments` VALUES (355, '生活方面', 2, 277, '加强沟通协调', '无', '2024-09-12 01:44:17', '2024-09-12 01:44:17');
INSERT INTO `recorddevelopments` VALUES (356, '远距离在外执行任务人员', 0, 278, '建立协作机制', '无', '2024-09-12 01:45:22', '2024-09-12 01:45:22');
INSERT INTO `recorddevelopments` VALUES (357, '在外休假', 1, 278, '加强思想教育落实', '无', '2024-09-12 01:45:46', '2024-09-12 01:45:46');
INSERT INTO `recorddevelopments` VALUES (358, '长期在外执行任务', 0, 279, '沟通与协调', '无', '2024-09-12 01:46:26', '2024-09-12 01:46:26');

-- ----------------------------
-- Table structure for records
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NULL DEFAULT NULL,
  `problem_id` int NULL DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `is_closed` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `person_id`(`person_id`) USING BTREE,
  INDEX `problem_id`(`problem_id`) USING BTREE,
  CONSTRAINT `records_ibfk_27` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `records_ibfk_28` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `records_ibfk_54` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `records_ibfk_55` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 282 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of records
-- ----------------------------
INSERT INTO `records` VALUES (1, 1, 1, '2024-06-28 10:56:24', '2024-09-28 10:56:31', 1);
INSERT INTO `records` VALUES (2, 2, 2, '2024-07-28 10:56:43', '2024-07-28 10:56:57', 0);
INSERT INTO `records` VALUES (3, 3, 3, '2024-07-28 10:57:11', '2024-07-28 10:57:20', 0);
INSERT INTO `records` VALUES (4, 4, 4, '2024-07-28 10:57:31', '2024-07-28 10:57:39', 0);
INSERT INTO `records` VALUES (5, 5, 5, '2024-07-28 10:57:53', '2024-07-28 10:58:01', 0);
INSERT INTO `records` VALUES (6, 6, 6, '2024-07-29 10:58:18', '2024-07-29 10:58:11', 0);
INSERT INTO `records` VALUES (7, 7, 7, '2024-07-29 10:58:27', '2024-07-29 10:58:35', 0);
INSERT INTO `records` VALUES (8, 8, 8, '2024-07-29 10:58:49', '2024-07-29 10:58:43', 0);
INSERT INTO `records` VALUES (9, 9, 9, '2024-07-29 10:58:57', '2024-07-29 10:59:05', 0);
INSERT INTO `records` VALUES (10, 10, 10, '2024-07-29 10:59:20', '2024-07-29 10:59:13', 0);
INSERT INTO `records` VALUES (11, 11, 11, '2024-07-29 11:08:36', '2024-07-29 11:08:44', 0);
INSERT INTO `records` VALUES (12, 12, 12, '2024-07-29 11:08:59', '2024-07-29 11:09:06', 0);
INSERT INTO `records` VALUES (13, 13, 12, '2024-07-29 11:13:33', '2024-07-29 11:13:39', 0);
INSERT INTO `records` VALUES (14, 14, 11, '2024-07-29 11:19:49', '2024-07-29 11:20:00', 0);
INSERT INTO `records` VALUES (15, 15, 1, '2024-07-29 11:20:08', '2024-07-29 11:20:14', 0);
INSERT INTO `records` VALUES (16, 16, 2, '2024-07-29 11:20:22', '2024-08-19 00:57:02', 1);
INSERT INTO `records` VALUES (17, 17, 3, '2024-07-30 11:20:45', '2024-07-30 11:20:51', 0);
INSERT INTO `records` VALUES (18, 18, 4, '2024-07-30 11:21:54', '2024-07-30 11:22:07', 0);
INSERT INTO `records` VALUES (19, 19, 1, '2024-07-30 11:22:25', '2024-08-09 12:57:06', 1);
INSERT INTO `records` VALUES (20, 20, 5, '2024-07-30 11:22:32', '2024-08-12 15:17:26', 1);
INSERT INTO `records` VALUES (21, 21, 10, '2024-07-30 11:22:53', '2024-07-30 11:22:47', 0);
INSERT INTO `records` VALUES (22, 22, 12, '2024-07-30 11:23:01', '2024-07-30 11:23:12', 0);
INSERT INTO `records` VALUES (23, 23, 6, '2024-07-30 11:23:26', '2024-07-30 11:23:19', 0);
INSERT INTO `records` VALUES (24, 24, 7, '2024-07-31 11:23:35', '2024-08-19 00:57:41', 1);
INSERT INTO `records` VALUES (25, 25, 8, '2024-07-31 11:24:00', '2024-07-31 11:23:48', 0);
INSERT INTO `records` VALUES (26, 26, 4, '2024-07-31 11:24:10', '2024-07-31 11:24:18', 0);
INSERT INTO `records` VALUES (27, 27, 9, '2024-07-31 11:24:32', '2024-07-31 11:24:25', 0);
INSERT INTO `records` VALUES (28, 28, 2, '2024-08-01 11:24:39', '2024-08-01 11:24:46', 0);
INSERT INTO `records` VALUES (29, 29, 5, '2024-08-01 11:24:51', '2024-08-01 11:24:55', 0);
INSERT INTO `records` VALUES (30, 30, 7, '2024-08-01 11:25:03', '2024-08-01 11:25:00', 0);
INSERT INTO `records` VALUES (73, 20, 2, '2024-08-02 01:09:34', '2024-08-02 01:09:34', 0);
INSERT INTO `records` VALUES (74, 6, 2, '2024-08-07 04:20:00', '2024-08-08 07:40:11', 1);
INSERT INTO `records` VALUES (75, 6, 2, '2024-08-08 07:25:11', '2024-08-08 07:39:38', 1);
INSERT INTO `records` VALUES (76, 6, 6, '2024-08-12 13:40:28', '2024-08-12 13:40:28', 0);
INSERT INTO `records` VALUES (77, 6, 13, '2024-08-13 14:38:07', '2024-08-13 14:38:07', 0);
INSERT INTO `records` VALUES (78, 60, 1, '2024-08-17 05:15:40', '2024-08-17 05:15:40', 0);
INSERT INTO `records` VALUES (79, 1, 7, '2024-08-17 05:18:36', '2024-08-17 05:18:36', 0);
INSERT INTO `records` VALUES (80, 35, 2, '2024-08-17 05:28:47', '2024-08-17 05:28:47', 0);
INSERT INTO `records` VALUES (81, 59, 8, '2024-08-17 05:31:54', '2024-08-17 05:31:54', 0);
INSERT INTO `records` VALUES (82, 59, 9, '2024-08-17 05:32:44', '2024-08-17 05:32:44', 0);
INSERT INTO `records` VALUES (83, 36, 1, '2024-08-17 05:35:14', '2024-08-17 05:35:14', 0);
INSERT INTO `records` VALUES (84, 36, 2, '2024-08-17 05:36:20', '2024-08-17 05:36:20', 0);
INSERT INTO `records` VALUES (85, 39, 10, '2024-08-17 05:38:37', '2024-08-17 05:38:37', 0);
INSERT INTO `records` VALUES (86, 39, 2, '2024-08-17 05:39:22', '2024-08-17 05:39:22', 0);
INSERT INTO `records` VALUES (87, 40, 3, '2024-08-17 05:40:13', '2024-08-17 05:40:13', 0);
INSERT INTO `records` VALUES (88, 40, 7, '2024-08-17 05:40:42', '2024-08-17 05:40:42', 0);
INSERT INTO `records` VALUES (89, 58, 4, '2024-08-17 05:42:01', '2024-08-17 05:42:01', 0);
INSERT INTO `records` VALUES (90, 57, 2, '2024-08-17 05:43:36', '2024-08-17 05:43:36', 0);
INSERT INTO `records` VALUES (91, 30, 3, '2024-08-17 05:47:22', '2024-08-17 05:47:22', 0);
INSERT INTO `records` VALUES (92, 37, 2, '2024-08-17 05:58:05', '2024-08-17 05:58:05', 0);
INSERT INTO `records` VALUES (93, 37, 12, '2024-08-17 05:59:40', '2024-08-17 05:59:40', 0);
INSERT INTO `records` VALUES (94, 56, 11, '2024-08-17 06:00:19', '2024-08-17 06:00:19', 0);
INSERT INTO `records` VALUES (95, 38, 1, '2024-08-17 06:01:43', '2024-08-17 06:01:43', 0);
INSERT INTO `records` VALUES (96, 38, 2, '2024-08-17 06:02:31', '2024-08-17 06:02:31', 0);
INSERT INTO `records` VALUES (97, 2, 2, '2024-08-17 06:03:52', '2024-08-17 06:03:52', 0);
INSERT INTO `records` VALUES (98, 46, 7, '2024-08-17 06:04:45', '2024-08-17 06:04:45', 0);
INSERT INTO `records` VALUES (99, 45, 4, '2024-08-17 06:06:02', '2024-08-17 06:06:02', 0);
INSERT INTO `records` VALUES (100, 44, 4, '2024-08-17 06:06:49', '2024-08-17 06:06:49', 0);
INSERT INTO `records` VALUES (101, 44, 5, '2024-08-17 06:07:20', '2024-08-17 06:07:20', 0);
INSERT INTO `records` VALUES (102, 43, 13, '2024-08-17 06:07:49', '2024-08-17 06:07:49', 0);
INSERT INTO `records` VALUES (103, 43, 6, '2024-08-17 06:08:23', '2024-08-17 06:08:23', 0);
INSERT INTO `records` VALUES (104, 19, 2, '2024-08-17 06:08:52', '2024-08-17 06:08:52', 0);
INSERT INTO `records` VALUES (105, 8, 2, '2024-08-17 06:09:26', '2024-08-17 06:09:26', 0);
INSERT INTO `records` VALUES (106, 5, 4, '2024-08-17 06:10:51', '2024-08-17 06:10:51', 0);
INSERT INTO `records` VALUES (107, 21, 13, '2024-08-17 06:11:41', '2024-08-17 06:11:41', 0);
INSERT INTO `records` VALUES (108, 3, 2, '2024-08-17 06:14:27', '2024-08-17 06:14:27', 0);
INSERT INTO `records` VALUES (109, 3, 5, '2024-08-17 06:14:43', '2024-08-19 01:09:39', 1);
INSERT INTO `records` VALUES (110, 4, 3, '2024-08-17 06:15:12', '2024-08-17 06:15:12', 0);
INSERT INTO `records` VALUES (111, 4, 1, '2024-08-17 06:15:23', '2024-08-17 06:15:23', 0);
INSERT INTO `records` VALUES (112, 10, 6, '2024-08-17 06:15:39', '2024-08-17 06:15:39', 0);
INSERT INTO `records` VALUES (113, 10, 11, '2024-08-17 06:15:55', '2024-08-17 06:15:55', 0);
INSERT INTO `records` VALUES (114, 11, 11, '2024-08-17 06:16:19', '2024-08-17 06:16:19', 0);
INSERT INTO `records` VALUES (115, 14, 2, '2024-08-17 06:16:45', '2024-08-17 06:16:45', 0);
INSERT INTO `records` VALUES (116, 14, 7, '2024-08-17 06:16:53', '2024-08-17 06:16:53', 0);
INSERT INTO `records` VALUES (117, 17, 2, '2024-08-17 06:17:11', '2024-08-17 06:17:11', 0);
INSERT INTO `records` VALUES (118, 17, 7, '2024-08-17 06:17:21', '2024-08-17 06:17:21', 0);
INSERT INTO `records` VALUES (119, 18, 3, '2024-08-17 06:18:02', '2024-08-17 06:18:02', 0);
INSERT INTO `records` VALUES (120, 26, 13, '2024-08-17 06:18:52', '2024-08-17 06:18:52', 0);
INSERT INTO `records` VALUES (121, 29, 8, '2024-08-17 06:19:14', '2024-08-17 06:19:14', 0);
INSERT INTO `records` VALUES (122, 47, 7, '2024-08-17 06:19:29', '2024-08-17 06:19:29', 0);
INSERT INTO `records` VALUES (123, 48, 7, '2024-08-17 06:19:51', '2024-08-17 06:19:51', 0);
INSERT INTO `records` VALUES (124, 48, 13, '2024-08-17 06:19:55', '2024-08-17 06:19:55', 0);
INSERT INTO `records` VALUES (125, 49, 12, '2024-08-17 06:21:38', '2024-08-17 06:21:38', 0);
INSERT INTO `records` VALUES (126, 50, 3, '2024-08-17 06:22:52', '2024-08-17 06:22:52', 0);
INSERT INTO `records` VALUES (127, 51, 11, '2024-08-17 06:23:32', '2024-08-17 06:23:32', 0);
INSERT INTO `records` VALUES (128, 52, 10, '2024-08-17 06:24:20', '2024-08-17 06:24:20', 0);
INSERT INTO `records` VALUES (129, 53, 1, '2024-08-17 06:25:01', '2024-08-17 06:25:01', 0);
INSERT INTO `records` VALUES (130, 54, 12, '2024-08-17 06:25:21', '2024-08-17 06:25:21', 0);
INSERT INTO `records` VALUES (131, 55, 13, '2024-08-17 06:25:41', '2024-08-19 02:54:34', 1);
INSERT INTO `records` VALUES (132, 61, 2, '2024-08-17 06:27:43', '2024-08-17 06:27:43', 0);
INSERT INTO `records` VALUES (133, 62, 3, '2024-08-17 06:28:38', '2024-08-17 06:28:38', 0);
INSERT INTO `records` VALUES (134, 63, 4, '2024-08-17 06:29:29', '2024-08-17 06:29:29', 0);
INSERT INTO `records` VALUES (135, 64, 5, '2024-08-17 06:30:06', '2024-08-19 01:12:49', 1);
INSERT INTO `records` VALUES (136, 65, 7, '2024-08-17 06:30:43', '2024-08-19 01:12:17', 1);
INSERT INTO `records` VALUES (137, 66, 13, '2024-08-17 06:31:38', '2024-08-17 06:31:38', 0);
INSERT INTO `records` VALUES (138, 66, 12, '2024-08-17 06:32:25', '2024-08-19 01:13:55', 1);
INSERT INTO `records` VALUES (139, 67, 10, '2024-08-17 06:32:49', '2024-08-17 06:32:49', 0);
INSERT INTO `records` VALUES (140, 68, 9, '2024-08-17 06:33:26', '2024-08-17 06:33:26', 0);
INSERT INTO `records` VALUES (141, 69, 8, '2024-08-17 06:34:27', '2024-08-17 06:34:27', 0);
INSERT INTO `records` VALUES (142, 70, 1, '2024-08-17 06:34:48', '2024-08-17 06:34:48', 0);
INSERT INTO `records` VALUES (143, 70, 2, '2024-08-17 06:34:51', '2024-08-17 06:34:51', 0);
INSERT INTO `records` VALUES (144, 71, 12, '2024-08-17 06:36:10', '2024-08-17 06:36:10', 0);
INSERT INTO `records` VALUES (145, 72, 8, '2024-08-17 06:36:51', '2024-08-19 01:13:04', 1);
INSERT INTO `records` VALUES (146, 73, 10, '2024-08-17 06:37:20', '2024-08-17 06:37:20', 0);
INSERT INTO `records` VALUES (147, 74, 7, '2024-08-17 06:38:00', '2024-08-17 06:38:00', 0);
INSERT INTO `records` VALUES (148, 74, 5, '2024-08-17 06:38:19', '2024-08-17 06:38:19', 0);
INSERT INTO `records` VALUES (149, 75, 6, '2024-08-17 06:38:43', '2024-08-17 06:38:43', 0);
INSERT INTO `records` VALUES (150, 75, 1, '2024-08-17 06:39:01', '2024-08-17 06:39:01', 0);
INSERT INTO `records` VALUES (151, 76, 11, '2024-08-17 06:39:27', '2024-08-17 06:39:27', 0);
INSERT INTO `records` VALUES (152, 77, 10, '2024-08-17 06:40:05', '2024-08-17 06:40:05', 0);
INSERT INTO `records` VALUES (153, 78, 2, '2024-08-17 06:40:35', '2024-08-17 06:40:35', 0);
INSERT INTO `records` VALUES (154, 79, 8, '2024-08-17 06:41:00', '2024-08-17 06:41:00', 0);
INSERT INTO `records` VALUES (155, 80, 11, '2024-08-17 06:41:24', '2024-08-17 06:41:24', 0);
INSERT INTO `records` VALUES (156, 81, 1, '2024-08-17 06:44:04', '2024-08-17 06:44:04', 0);
INSERT INTO `records` VALUES (157, 81, 13, '2024-08-17 06:44:43', '2024-08-17 06:44:43', 0);
INSERT INTO `records` VALUES (158, 82, 12, '2024-08-17 06:45:24', '2024-08-17 06:45:24', 0);
INSERT INTO `records` VALUES (159, 82, 2, '2024-08-17 06:45:48', '2024-08-17 06:45:48', 0);
INSERT INTO `records` VALUES (160, 83, 3, '2024-08-17 06:46:06', '2024-08-17 06:46:06', 0);
INSERT INTO `records` VALUES (161, 84, 7, '2024-08-17 06:46:40', '2024-08-17 06:46:40', 0);
INSERT INTO `records` VALUES (162, 85, 8, '2024-08-17 06:47:23', '2024-08-17 06:47:23', 0);
INSERT INTO `records` VALUES (163, 86, 1, '2024-08-17 06:48:17', '2024-08-17 06:48:17', 0);
INSERT INTO `records` VALUES (164, 86, 13, '2024-08-17 06:48:38', '2024-08-17 06:48:38', 0);
INSERT INTO `records` VALUES (165, 87, 6, '2024-08-17 06:49:25', '2024-08-17 06:49:25', 0);
INSERT INTO `records` VALUES (166, 87, 1, '2024-08-17 06:50:12', '2024-08-17 06:50:12', 0);
INSERT INTO `records` VALUES (167, 87, 5, '2024-08-17 06:50:31', '2024-08-17 06:50:31', 0);
INSERT INTO `records` VALUES (168, 88, 11, '2024-08-17 06:51:08', '2024-08-17 06:51:08', 0);
INSERT INTO `records` VALUES (169, 88, 11, '2024-08-17 06:51:28', '2024-08-17 06:51:28', 0);
INSERT INTO `records` VALUES (170, 88, 2, '2024-08-17 06:52:04', '2024-08-17 06:52:04', 0);
INSERT INTO `records` VALUES (171, 89, 7, '2024-08-17 06:52:54', '2024-08-17 06:52:54', 0);
INSERT INTO `records` VALUES (172, 90, 1, '2024-08-17 06:54:11', '2024-08-17 06:54:11', 0);
INSERT INTO `records` VALUES (173, 90, 2, '2024-08-17 06:54:24', '2024-08-17 06:54:24', 0);
INSERT INTO `records` VALUES (174, 90, 3, '2024-08-17 06:54:33', '2024-08-17 06:54:33', 0);
INSERT INTO `records` VALUES (175, 91, 10, '2024-08-17 06:55:00', '2024-08-17 06:55:00', 0);
INSERT INTO `records` VALUES (176, 91, 5, '2024-08-17 06:55:34', '2024-08-17 06:55:34', 0);
INSERT INTO `records` VALUES (177, 91, 13, '2024-08-17 06:55:53', '2024-08-17 06:55:53', 0);
INSERT INTO `records` VALUES (178, 92, 4, '2024-08-17 06:56:35', '2024-08-17 06:56:35', 0);
INSERT INTO `records` VALUES (179, 92, 7, '2024-08-17 06:57:01', '2024-08-17 06:57:01', 0);
INSERT INTO `records` VALUES (180, 93, 9, '2024-08-17 06:57:29', '2024-08-17 06:57:29', 0);
INSERT INTO `records` VALUES (181, 94, 13, '2024-08-17 06:57:55', '2024-08-17 06:57:55', 0);
INSERT INTO `records` VALUES (182, 95, 3, '2024-08-17 06:58:30', '2024-08-17 06:58:30', 0);
INSERT INTO `records` VALUES (183, 96, 6, '2024-08-17 06:58:58', '2024-08-17 06:58:58', 0);
INSERT INTO `records` VALUES (184, 97, 10, '2024-08-17 06:59:26', '2024-08-17 06:59:26', 0);
INSERT INTO `records` VALUES (185, 98, 11, '2024-08-17 07:00:08', '2024-08-17 07:00:08', 0);
INSERT INTO `records` VALUES (186, 99, 2, '2024-08-17 07:00:44', '2024-08-17 07:00:44', 0);
INSERT INTO `records` VALUES (187, 100, 1, '2024-08-17 07:01:34', '2024-08-17 07:01:34', 0);
INSERT INTO `records` VALUES (188, 100, 2, '2024-08-17 07:01:54', '2024-08-17 07:01:54', 0);
INSERT INTO `records` VALUES (189, 101, 5, '2024-08-17 07:02:18', '2024-08-17 07:02:18', 0);
INSERT INTO `records` VALUES (190, 101, 4, '2024-08-17 07:02:38', '2024-08-17 07:02:38', 0);
INSERT INTO `records` VALUES (191, 102, 2, '2024-08-17 09:14:11', '2024-08-17 09:14:11', 0);
INSERT INTO `records` VALUES (192, 102, 3, '2024-08-17 09:14:39', '2024-08-17 09:14:39', 0);
INSERT INTO `records` VALUES (193, 103, 4, '2024-08-17 09:16:28', '2024-08-17 09:16:28', 0);
INSERT INTO `records` VALUES (194, 104, 5, '2024-08-17 09:17:25', '2024-08-17 09:17:25', 0);
INSERT INTO `records` VALUES (195, 104, 6, '2024-08-17 09:23:41', '2024-08-17 09:23:41', 0);
INSERT INTO `records` VALUES (196, 105, 7, '2024-08-17 09:24:50', '2024-08-17 09:24:50', 0);
INSERT INTO `records` VALUES (197, 105, 10, '2024-08-17 09:25:48', '2024-08-17 09:25:48', 0);
INSERT INTO `records` VALUES (198, 106, 8, '2024-08-17 09:26:32', '2024-08-17 09:26:32', 0);
INSERT INTO `records` VALUES (199, 107, 3, '2024-08-17 09:27:00', '2024-08-17 09:27:00', 0);
INSERT INTO `records` VALUES (200, 108, 11, '2024-08-17 09:27:37', '2024-08-17 09:27:37', 0);
INSERT INTO `records` VALUES (201, 109, 12, '2024-08-17 09:27:56', '2024-08-17 09:27:56', 0);
INSERT INTO `records` VALUES (202, 110, 13, '2024-08-17 09:28:44', '2024-08-17 09:28:44', 0);
INSERT INTO `records` VALUES (203, 112, 1, '2024-08-17 09:29:09', '2024-08-17 09:29:09', 0);
INSERT INTO `records` VALUES (204, 113, 8, '2024-08-17 09:29:40', '2024-08-17 09:29:40', 0);
INSERT INTO `records` VALUES (217, 121, 1, '2024-08-17 09:34:16', '2024-08-17 09:34:16', 0);
INSERT INTO `records` VALUES (218, 121, 2, '2024-08-17 09:34:29', '2024-08-17 09:34:29', 0);
INSERT INTO `records` VALUES (219, 122, 3, '2024-08-17 09:34:43', '2024-08-17 09:34:43', 0);
INSERT INTO `records` VALUES (220, 122, 4, '2024-08-17 09:34:51', '2024-08-17 09:34:51', 0);
INSERT INTO `records` VALUES (221, 123, 4, '2024-08-17 09:35:07', '2024-08-17 09:35:07', 0);
INSERT INTO `records` VALUES (222, 123, 2, '2024-08-17 09:35:16', '2024-08-17 09:35:16', 0);
INSERT INTO `records` VALUES (223, 124, 6, '2024-08-17 09:35:34', '2024-08-17 09:35:34', 0);
INSERT INTO `records` VALUES (224, 125, 4, '2024-08-17 09:35:48', '2024-08-17 09:35:48', 0);
INSERT INTO `records` VALUES (225, 126, 7, '2024-08-17 09:36:05', '2024-08-17 09:36:05', 0);
INSERT INTO `records` VALUES (226, 126, 13, '2024-08-17 09:36:22', '2024-08-17 09:36:22', 0);
INSERT INTO `records` VALUES (227, 127, 13, '2024-08-17 09:36:33', '2024-08-17 09:36:33', 0);
INSERT INTO `records` VALUES (228, 128, 8, '2024-08-17 09:36:58', '2024-08-17 09:36:58', 0);
INSERT INTO `records` VALUES (229, 129, 7, '2024-08-17 09:37:19', '2024-08-17 09:37:19', 0);
INSERT INTO `records` VALUES (230, 130, 13, '2024-08-17 09:37:37', '2024-08-17 09:37:37', 0);
INSERT INTO `records` VALUES (231, 130, 4, '2024-08-17 09:37:45', '2024-08-17 09:37:45', 0);
INSERT INTO `records` VALUES (232, 131, 11, '2024-08-17 09:38:34', '2024-08-17 09:38:34', 0);
INSERT INTO `records` VALUES (233, 132, 12, '2024-08-17 09:39:01', '2024-08-17 09:39:01', 0);
INSERT INTO `records` VALUES (234, 132, 6, '2024-08-17 09:39:18', '2024-08-17 09:39:18', 0);
INSERT INTO `records` VALUES (235, 133, 10, '2024-08-17 09:39:38', '2024-08-17 09:39:38', 0);
INSERT INTO `records` VALUES (236, 134, 5, '2024-08-17 09:39:51', '2024-08-17 09:39:51', 0);
INSERT INTO `records` VALUES (250, 146, 3, '2024-08-19 07:12:07', '2024-08-19 07:12:57', 1);
INSERT INTO `records` VALUES (251, 40, 2, '2024-09-12 01:24:39', '2024-09-12 01:24:39', 0);
INSERT INTO `records` VALUES (252, 59, 6, '2024-09-12 01:25:12', '2024-09-12 01:25:12', 0);
INSERT INTO `records` VALUES (253, 2, 3, '2024-09-12 01:26:41', '2024-09-12 01:26:41', 0);
INSERT INTO `records` VALUES (254, 8, 5, '2024-09-12 01:27:03', '2024-09-12 01:27:03', 0);
INSERT INTO `records` VALUES (255, 46, 8, '2024-09-12 01:27:23', '2024-09-12 01:27:23', 0);
INSERT INTO `records` VALUES (256, 19, 13, '2024-09-12 01:28:11', '2024-09-12 01:28:11', 0);
INSERT INTO `records` VALUES (257, 44, 12, '2024-09-12 01:28:32', '2024-09-12 01:28:32', 0);
INSERT INTO `records` VALUES (258, 5, 1, '2024-09-12 01:29:27', '2024-09-12 01:29:27', 0);
INSERT INTO `records` VALUES (259, 28, 4, '2024-09-12 01:30:06', '2024-09-12 01:30:06', 0);
INSERT INTO `records` VALUES (260, 3, 3, '2024-09-12 01:31:09', '2024-09-12 01:31:09', 0);
INSERT INTO `records` VALUES (261, 4, 3, '2024-09-12 01:31:46', '2024-09-12 01:31:46', 0);
INSERT INTO `records` VALUES (262, 11, 6, '2024-09-12 01:32:27', '2024-09-12 01:32:27', 0);
INSERT INTO `records` VALUES (263, 25, 7, '2024-09-12 01:33:02', '2024-09-12 01:33:02', 0);
INSERT INTO `records` VALUES (264, 66, 4, '2024-09-12 01:34:31', '2024-09-12 01:34:31', 0);
INSERT INTO `records` VALUES (265, 60, 5, '2024-09-12 01:35:13', '2024-09-12 01:35:13', 0);
INSERT INTO `records` VALUES (266, 70, 4, '2024-09-12 01:36:01', '2024-09-12 01:36:01', 0);
INSERT INTO `records` VALUES (267, 71, 3, '2024-09-12 01:36:42', '2024-09-12 01:36:42', 0);
INSERT INTO `records` VALUES (268, 86, 1, '2024-09-12 01:37:41', '2024-09-12 01:37:41', 0);
INSERT INTO `records` VALUES (269, 87, 2, '2024-09-12 01:38:02', '2024-09-12 01:38:02', 0);
INSERT INTO `records` VALUES (270, 90, 4, '2024-09-12 01:38:53', '2024-09-12 01:38:53', 0);
INSERT INTO `records` VALUES (271, 112, 2, '2024-09-12 01:40:26', '2024-09-12 01:40:26', 0);
INSERT INTO `records` VALUES (272, 104, 8, '2024-09-12 01:41:03', '2024-09-12 01:41:03', 0);
INSERT INTO `records` VALUES (273, 109, 4, '2024-09-12 01:41:33', '2024-09-12 01:41:33', 0);
INSERT INTO `records` VALUES (274, 105, 2, '2024-09-12 01:41:50', '2024-09-12 01:41:50', 0);
INSERT INTO `records` VALUES (275, 108, 2, '2024-09-12 01:42:23', '2024-09-12 01:42:23', 0);
INSERT INTO `records` VALUES (276, 110, 4, '2024-09-12 01:42:46', '2024-09-12 01:42:46', 0);
INSERT INTO `records` VALUES (277, 122, 7, '2024-09-12 01:44:02', '2024-09-12 01:44:02', 0);
INSERT INTO `records` VALUES (278, 121, 3, '2024-09-12 01:45:10', '2024-09-12 01:45:10', 0);
INSERT INTO `records` VALUES (279, 121, 2, '2024-09-12 01:46:21', '2024-09-12 01:46:21', 0);

-- ----------------------------
-- Table structure for responsibles
-- ----------------------------
DROP TABLE IF EXISTS `responsibles`;
CREATE TABLE `responsibles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `unit_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `unit_id`(`unit_id`) USING BTREE,
  CONSTRAINT `responsibles_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of responsibles
-- ----------------------------
INSERT INTO `responsibles` VALUES (2, '岳斯阳', '善于解决家庭矛盾', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `responsibles` VALUES (3, '郭松超', '乐观积极', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `responsibles` VALUES (4, '刘振起', '具有医疗知识', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `responsibles` VALUES (5, '李淼', '心理咨询师', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `responsibles` VALUES (6, '张岩', '业务骨干，了解业务人员心理', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `responsibles` VALUES (7, '王帆', '执行力强，善于观察细节', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `responsibles` VALUES (8, '王川林', '执着、坚持不懈', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `responsibles` VALUES (9, '李康杰', '随和、无私奉献', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `responsibles` VALUES (10, '徐子航', '聪明正直', '/17240291827851722266353792avatar.jpeg', 1);
INSERT INTO `responsibles` VALUES (11, '宗亚伟', '精密强干', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `responsibles` VALUES (12, '杨亚明', '乐于助人', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `responsibles` VALUES (13, '邓晓丽', '认真善良', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `responsibles` VALUES (14, '赵柯', '开朗大方，工作认真', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `responsibles` VALUES (15, '高尖峰', '兢兢业业，踏踏实实', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `responsibles` VALUES (16, '吴子昂', '乐于助人', '/17240291827851722266353792avatar.jpeg', 2);
INSERT INTO `responsibles` VALUES (17, '李瑶', '乐观向上', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `responsibles` VALUES (18, '王淼', '踏实肯干', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `responsibles` VALUES (19, '陈曦奥', '吃苦耐劳', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `responsibles` VALUES (20, '李佳恩', '积极乐观', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `responsibles` VALUES (21, '马杰', '勤勤恳恳，乐观积极', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `responsibles` VALUES (22, '刘凯基', '聪明好学，团结礼貌', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `responsibles` VALUES (23, '何亚杰', '认真仔细，兢兢业业', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `responsibles` VALUES (24, '张玉龙', '活泼开朗', '/17240291827851722266353792avatar.jpeg', 3);
INSERT INTO `responsibles` VALUES (25, '胡宁', '工作积极', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `responsibles` VALUES (26, '杨思', '兢兢业业', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `responsibles` VALUES (27, '赵金刚', '乐观积极', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `responsibles` VALUES (28, '王虎', '乐于助人', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `responsibles` VALUES (29, '李力', '乐观上进', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `responsibles` VALUES (30, '张厚启', '踏实乐观', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `responsibles` VALUES (31, '韩雨寒', '工作踏实，聪明善良', '/17240291827851722266353792avatar.jpeg', 4);
INSERT INTO `responsibles` VALUES (32, '李富贵', '吃苦耐劳，团结友爱', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `responsibles` VALUES (33, '刘军', '业务能力强，乐于助人，热爱工作', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `responsibles` VALUES (34, '沈坤', '兢兢业业', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `responsibles` VALUES (35, '王标', '积极向上，踏实认真', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `responsibles` VALUES (36, '李宁', '热爱工作', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `responsibles` VALUES (37, '王思明', '踏实工作', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `responsibles` VALUES (38, '王玉龙', '乐观积极', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `responsibles` VALUES (39, '文天杰', '聪明能干', '/17240291827851722266353792avatar.jpeg', 5);
INSERT INTO `responsibles` VALUES (40, '谷亦全', '业务能力强', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `responsibles` VALUES (41, '王芳', '乐观积极', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `responsibles` VALUES (42, '苏智新', '团队能力强', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `responsibles` VALUES (43, '姚屹卓', '乐于助人', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `responsibles` VALUES (44, '郭鼎', '乐观积极', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `responsibles` VALUES (45, '赵军润', '善于沟通，乐于助人', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `responsibles` VALUES (46, '虞柯仁', '积极向上，理解能力强', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `responsibles` VALUES (47, '郭迪', '团结友爱', '/17240291827851722266353792avatar.jpeg', 6);
INSERT INTO `responsibles` VALUES (48, '曹庆', '亲和力强，善于合作', '/17240291827851722266353792avatar.jpeg', 7);
INSERT INTO `responsibles` VALUES (49, '裴宇哲', '善于反思，细心周到', '/17240291827851722266353792avatar.jpeg', 7);
INSERT INTO `responsibles` VALUES (50, '易艺涵', '创新力强，善于合作', '/17240291827851722266353792avatar.jpeg', 7);
INSERT INTO `responsibles` VALUES (51, '杜子桓', '开朗活泼，善于表达', '/17240291827851722266353792avatar.jpeg', 7);
INSERT INTO `responsibles` VALUES (52, '叶文浩', '目标明确，有领导力', '/17240291827851722266353792avatar.jpeg', 7);
INSERT INTO `responsibles` VALUES (53, '周瑞', '充满好奇心', '/17240291827851722266353792avatar.jpeg', 7);
INSERT INTO `responsibles` VALUES (54, '陆霖', '诚实守信，果断决策', '/17240291827851722266353792avatar.jpeg', 7);

-- ----------------------------
-- Table structure for units
-- ----------------------------
DROP TABLE IF EXISTS `units`;
CREATE TABLE `units`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `isCommand` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of units
-- ----------------------------
INSERT INTO `units` VALUES (1, '一营', 0);
INSERT INTO `units` VALUES (2, '二营', 0);
INSERT INTO `units` VALUES (3, '三营', 0);
INSERT INTO `units` VALUES (4, '四营', 0);
INSERT INTO `units` VALUES (5, '支援', 0);
INSERT INTO `units` VALUES (6, '战勘', 0);
INSERT INTO `units` VALUES (7, '保障', 0);
INSERT INTO `units` VALUES (9, '大队总览', 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'user',
  `unit_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `unit_id`(`unit_id`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '111', '111', 'user', 1);
INSERT INTO `users` VALUES (2, '222', '222', 'user', 2);
INSERT INTO `users` VALUES (3, '333', '333', 'user', 3);
INSERT INTO `users` VALUES (4, '444', '444', 'user', 4);
INSERT INTO `users` VALUES (5, '555', '555', 'user', 5);
INSERT INTO `users` VALUES (6, '666', '666', 'user', 6);
INSERT INTO `users` VALUES (7, '777', '777', 'user', 7);
INSERT INTO `users` VALUES (8, '000', '000', 'admin', 0);

SET FOREIGN_KEY_CHECKS = 1;
