/*
 Navicat Premium Dump SQL

 Source Server         : wyt
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : crowdfunding_db

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 27/09/2024 11:39:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'medical');
INSERT INTO `category` VALUES (2, 'education');
INSERT INTO `category` VALUES (3, 'social impact');
INSERT INTO `category` VALUES (4, 'crisis relief');

-- ----------------------------
-- Table structure for fundraiser
-- ----------------------------
DROP TABLE IF EXISTS `fundraiser`;
CREATE TABLE `fundraiser`  (
  `fundraiser_id` int NOT NULL,
  `organizer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `target_funding` decimal(20, 2) NOT NULL,
  `current_funding` decimal(20, 2) NOT NULL,
  `city` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`fundraiser_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fundraiser
-- ----------------------------
INSERT INTO `fundraiser` VALUES (1, 'Olivia Taylor', 'Help Us Provide Clean Water to Rural Communities!', 2000.00, 1203.10, 'HeNan', 1, 2);
INSERT INTO `fundraiser` VALUES (2, 'James Anderson', 'Support Our Initiative for Mental Health Resources!', 3200.00, 2250.22, 'ShenZhen', 1, 3);
INSERT INTO `fundraiser` VALUES (3, 'Aiden Thompson', 'Fund a Community Garden for Healthy Food!', 1200.00, 30.11, 'ShanXi', 1, 4);
INSERT INTO `fundraiser` VALUES (4, 'Ella Martinez', 'Create a Scholarship Fund for Local Students!', 10000.00, 2004.11, 'YunNan', 1, 3);
INSERT INTO `fundraiser` VALUES (5, 'Samuel Roberts', 'Help Us Build Playgrounds for Children in Need!', 5000.00, 2000.12, ' Inner Mongolia', 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
