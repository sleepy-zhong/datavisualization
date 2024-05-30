/*
 Navicat Premium Data Transfer

 Source Server         : userdata
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : datavisualization

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 30/05/2024 19:44:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_consumer
-- ----------------------------
DROP TABLE IF EXISTS `t_consumer`;
CREATE TABLE `t_consumer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `food` float NULL DEFAULT NULL,
  `clothing` float NULL DEFAULT NULL,
  `residential` float NULL DEFAULT NULL,
  `necessities` float NULL DEFAULT NULL,
  `transportation` float NULL DEFAULT NULL,
  `education` float NULL DEFAULT NULL,
  `Healthcare` float NULL DEFAULT NULL,
  `other` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_consumer
-- ----------------------------
INSERT INTO `t_consumer` VALUES (1, '2023年3月', 102.1, 100.8, 99.7, 100.7, 98.1, 101.4, 101, 102.5);
INSERT INTO `t_consumer` VALUES (2, '2023年4月', 100.8, 100.9, 99.8, 100.1, 96.7, 101.9, 101, 103.5);
INSERT INTO `t_consumer` VALUES (3, '2023年5月', 101.2, 100.9, 99.8, 99.9, 96.1, 101.7, 101.1, 103.1);
INSERT INTO `t_consumer` VALUES (4, '2023年6月', 102, 100.9, 100, 99.5, 93.5, 101.5, 101.1, 102.4);
INSERT INTO `t_consumer` VALUES (5, '2023年7月', 99.5, 101, 100.1, 99.8, 95.3, 102.4, 101.2, 104.1);
INSERT INTO `t_consumer` VALUES (6, '2023年8月', 99.5, 101.1, 100.1, 99.5, 97.9, 102.5, 101.2, 103.8);
INSERT INTO `t_consumer` VALUES (7, '2023年9月', 98.5, 101.1, 100.2, 99.6, 98.7, 102.5, 101.3, 103.9);
INSERT INTO `t_consumer` VALUES (8, '2023年10月', 97.9, 101.1, 100.3, 99.4, 99.1, 102.3, 101.3, 103.6);
INSERT INTO `t_consumer` VALUES (9, '2023年11月', 97.8, 101.3, 100.3, 99.5, 97.6, 101.8, 101.3, 103);
INSERT INTO `t_consumer` VALUES (10, '2023年12月', 98, 101.4, 100.3, 100, 97.8, 101.8, 101.4, 102.9);
INSERT INTO `t_consumer` VALUES (11, '2024年1月', 96.4, 101.6, 100.3, 101, 97.6, 101.3, 101.3, 102.9);
INSERT INTO `t_consumer` VALUES (12, '2024年2月', 99.9, 101.6, 100.2, 100.5, 99.6, 103.9, 101.5, 103);
INSERT INTO `t_consumer` VALUES (13, '2024年3月', 98.6, 101.6, 100.2, 101, 98.7, 101.8, 101.5, 102.7);

-- ----------------------------
-- Table structure for t_shop
-- ----------------------------
DROP TABLE IF EXISTS `t_shop`;
CREATE TABLE `t_shop`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_shop
-- ----------------------------

-- ----------------------------
-- Table structure for t_shop_type
-- ----------------------------
DROP TABLE IF EXISTS `t_shop_type`;
CREATE TABLE `t_shop_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_shop_type
-- ----------------------------

-- ----------------------------
-- Table structure for t_sum
-- ----------------------------
DROP TABLE IF EXISTS `t_sum`;
CREATE TABLE `t_sum`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `types` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number` int NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sum
-- ----------------------------
INSERT INTO `t_sum` VALUES (1, '短袖', 10, NULL);
INSERT INTO `t_sum` VALUES (2, '衬衫', 52, NULL);
INSERT INTO `t_sum` VALUES (3, 'T恤', 200, NULL);
INSERT INTO `t_sum` VALUES (4, '牛仔', 334, NULL);
INSERT INTO `t_sum` VALUES (5, '背心', 390, NULL);
INSERT INTO `t_sum` VALUES (6, '马甲', 330, NULL);
INSERT INTO `t_sum` VALUES (7, '毛衣', 220, NULL);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_type_id` int NULL DEFAULT NULL,
  `is_delete` int NULL DEFAULT NULL,
  `create_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_type`(`user_type_id`) USING BTREE,
  CONSTRAINT `user_type` FOREIGN KEY (`user_type_id`) REFERENCES `t_user_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'yfgn', '********', 1, 1, '2024-05-26');
INSERT INTO `t_user` VALUES (2, 'jkgfjkh', '********', 2, 1, '2024-05-26');
INSERT INTO `t_user` VALUES (3, 'hjfktdxry', '********', 2, 1, '2024-05-26');
INSERT INTO `t_user` VALUES (4, 'gjkgfhj', '********', 3, 1, '2024-05-26');
INSERT INTO `t_user` VALUES (5, 'hjghdf', '********', 3, 1, '2024-05-26');
INSERT INTO `t_user` VALUES (6, 'cvhgjfjh', '********', 3, 1, '2024-05-27');
INSERT INTO `t_user` VALUES (7, 'ghjvghjf', '********', 3, 1, '2024-05-27');
INSERT INTO `t_user` VALUES (8, 'gcvjhc', '********', 3, 0, '2024-05-27');
INSERT INTO `t_user` VALUES (9, 'fchfcf', '********', 3, 0, '2024-05-27');
INSERT INTO `t_user` VALUES (10, 'ghkhfhg', '********', 4, 0, '2024-05-27');
INSERT INTO `t_user` VALUES (11, 'hjfchgf', '********', 4, 0, '2024-05-27');
INSERT INTO `t_user` VALUES (12, 'ghjfhgf', '********', 4, 1, '2024-05-27');
INSERT INTO `t_user` VALUES (13, 'gfhg', '********', 4, 1, '2024-05-27');
INSERT INTO `t_user` VALUES (14, 'fdsytgkhj', '********', 4, 1, '2024-05-27');
INSERT INTO `t_user` VALUES (15, 'khlkg', '********', 4, 1, '2024-05-27');
INSERT INTO `t_user` VALUES (16, 'gjkfg', '********', 4, 1, '2024-05-27');
INSERT INTO `t_user` VALUES (17, 'hjdj', '********', 4, 1, '2024-05-27');
INSERT INTO `t_user` VALUES (18, 'fwerwe', '********', 4, 1, '2024-05-27');
INSERT INTO `t_user` VALUES (19, 'klglllfsdfsd', '********', 4, 1, '2024-05-27');
INSERT INTO `t_user` VALUES (20, 'fjdfk', '********', 4, 1, '2024-05-27');
INSERT INTO `t_user` VALUES (21, 'chdjg', '********', 4, 1, '2024-05-28');
INSERT INTO `t_user` VALUES (22, 'hjcfj', '********', 4, 1, '2024-05-28');
INSERT INTO `t_user` VALUES (23, 'fgjhdhxghd', '********', 5, 1, '2024-05-28');
INSERT INTO `t_user` VALUES (24, 'ghjdf', '********', 5, 1, '2024-05-28');
INSERT INTO `t_user` VALUES (25, 'dchkg', '********', 5, 1, '2024-05-28');
INSERT INTO `t_user` VALUES (26, 'jhrwwerer', '********', 5, 1, '2024-05-28');
INSERT INTO `t_user` VALUES (27, 'eretertr', '********', 5, 1, '2024-05-28');
INSERT INTO `t_user` VALUES (28, 'jfghjfgj', '********', 5, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (29, 'gdgdfgd', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (30, 'hjgfhj', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (31, 'hjgfdhgf', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (32, 'gjhfjhfghf', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (33, 'jfhgjf', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (34, 'gfghjfjk', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (35, 'ghfghjkf', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (36, 'jgholkhjl;h', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (37, 'uhblkuh', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (38, 'lkuhi', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (39, 'dfgvadg', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (40, 'aggagafdgh', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (41, 'uygliu', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (42, 'aggagdfs', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (43, 'kljh', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (44, 'iuygklughuy', '********', 6, 1, '2024-05-29');
INSERT INTO `t_user` VALUES (45, 'sgdfhja', '********', 6, 0, '2024-05-30');
INSERT INTO `t_user` VALUES (46, 'agfga', '********', 6, 0, '2024-05-30');
INSERT INTO `t_user` VALUES (47, 'aggg', '********', 6, 0, '2024-05-30');
INSERT INTO `t_user` VALUES (48, 'ytdrtf', '********', 7, 0, '2024-05-30');
INSERT INTO `t_user` VALUES (49, 'aghgqrha', '********', 7, 0, '2024-05-30');
INSERT INTO `t_user` VALUES (50, 'asdfasd', '********', 7, 0, '2024-05-30');
INSERT INTO `t_user` VALUES (51, 'ah5aawEG', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (52, 'hjgcd', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (53, 'rydcjfggf', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (54, 'ASGADFGA', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (55, 'fiesh', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (56, 'dhsfga', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (57, 'gsdfgsdf', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (58, 'dsfgsdfgs', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (59, 'jgfhgfhfg', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (60, 'cbdfghdsh', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (61, 'bfdghsg', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (62, 'vbdfhsa', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (63, 'dfsgdfgsd', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (64, 'sdgfgsd', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (65, 'gsdfgsdgy', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (66, 'hdfshfg', '********', 7, 1, '2024-05-30');
INSERT INTO `t_user` VALUES (67, 'bfghsbs', '********', 7, 1, '2024-05-31');
INSERT INTO `t_user` VALUES (68, 'agsgrhs', '********', 7, 1, '2024-05-31');
INSERT INTO `t_user` VALUES (69, 'veryhdbdzfg', '********', 7, 1, '2024-05-31');
INSERT INTO `t_user` VALUES (70, 'shse5rg', '********', 7, 1, '2024-05-31');
INSERT INTO `t_user` VALUES (71, 'gsdrgserg', '********', 7, 1, '2024-05-31');
INSERT INTO `t_user` VALUES (72, 'khtfuytdf', '********', 7, 1, '2024-05-31');
INSERT INTO `t_user` VALUES (73, 'htdfrgdchj', '********', 7, 1, '2024-05-31');
INSERT INTO `t_user` VALUES (74, 'gerhahae', '********', 7, 1, '2024-05-31');
INSERT INTO `t_user` VALUES (75, 'shreshers', '********', 7, 1, '2024-05-31');
INSERT INTO `t_user` VALUES (76, 'shrahaehrqer', '********', 7, 1, '2024-05-31');
INSERT INTO `t_user` VALUES (77, 'dfgsgasghrf', '********', 7, 1, '2024-05-31');
INSERT INTO `t_user` VALUES (78, 'fdasgrw', '********', 7, 1, '2024-05-31');

-- ----------------------------
-- Table structure for t_user_type
-- ----------------------------
DROP TABLE IF EXISTS `t_user_type`;
CREATE TABLE `t_user_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_type
-- ----------------------------
INSERT INTO `t_user_type` VALUES (1, '超级管管理员');
INSERT INTO `t_user_type` VALUES (2, '一级管理员');
INSERT INTO `t_user_type` VALUES (3, '二级管理员');
INSERT INTO `t_user_type` VALUES (4, '管理员');
INSERT INTO `t_user_type` VALUES (5, '超级用户');
INSERT INTO `t_user_type` VALUES (6, '一级用户');
INSERT INTO `t_user_type` VALUES (7, '二级用户');

SET FOREIGN_KEY_CHECKS = 1;
