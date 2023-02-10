/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : booking

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 09/02/2023 18:46:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `pwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `is_delete` int NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
BEGIN;
INSERT INTO `tb_user` (`id`, `account`, `pwd`, `is_delete`, `create_time`, `role`) VALUES (11, 'admin', 'admin123', 0, '2023-01-21 21:25:25', 1);
INSERT INTO `tb_user` (`id`, `account`, `pwd`, `is_delete`, `create_time`, `role`) VALUES (12, 'test', 'test123', 0, '2023-01-21 21:25:25', 0);
INSERT INTO `tb_user` (`id`, `account`, `pwd`, `is_delete`, `create_time`, `role`) VALUES (13, 'test12', 'test09', 0, '2023-02-06 20:31:14', 0);
INSERT INTO `tb_user` (`id`, `account`, `pwd`, `is_delete`, `create_time`, `role`) VALUES (14, 'test3', '123', 0, '2023-02-06 20:32:06', 1);
INSERT INTO `tb_user` (`id`, `account`, `pwd`, `is_delete`, `create_time`, `role`) VALUES (15, 'user', '1234', 0, '2023-02-06 21:54:17', 0);
INSERT INTO `tb_user` (`id`, `account`, `pwd`, `is_delete`, `create_time`, `role`) VALUES (16, 'hi', 'hi', 0, '2023-02-08 21:46:00', 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
