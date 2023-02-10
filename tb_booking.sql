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

 Date: 09/02/2023 18:45:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_booking
-- ----------------------------
DROP TABLE IF EXISTS `tb_booking`;
CREATE TABLE `tb_booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_done` int NOT NULL DEFAULT '0',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `count` int NOT NULL DEFAULT '0',
  `is_delete` int NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of tb_booking
-- ----------------------------
BEGIN;
INSERT INTO `tb_booking` (`id`, `is_done`, `name`, `content`, `time`, `count`, `is_delete`, `create_time`, `level`, `date`) VALUES (6, 1, 'test', 'sleep', '20:00:00', 1, 0, '2023-01-25 20:31:14', 'high', '2023-01-26');
INSERT INTO `tb_booking` (`id`, `is_done`, `name`, `content`, `time`, `count`, `is_delete`, `create_time`, `level`, `date`) VALUES (7, 0, 'test', '123', '12:00:00', 10, 0, '2023-01-25 21:26:04', 'middle', '2023-01-26');
INSERT INTO `tb_booking` (`id`, `is_done`, `name`, `content`, `time`, `count`, `is_delete`, `create_time`, `level`, `date`) VALUES (8, 0, 'test', 'sleep', '12:00:00', 3, 0, '2023-01-25 21:35:40', 'middle', '2023-01-27');
INSERT INTO `tb_booking` (`id`, `is_done`, `name`, `content`, `time`, `count`, `is_delete`, `create_time`, `level`, `date`) VALUES (9, 0, 'test', 'sleep', '15:00:00', 3, 0, '2023-01-25 21:35:52', 'middle', '2023-01-27');
INSERT INTO `tb_booking` (`id`, `is_done`, `name`, `content`, `time`, `count`, `is_delete`, `create_time`, `level`, `date`) VALUES (10, 0, 'test', 'sleep', '17:00:00', 3, 0, '2023-01-25 21:35:57', 'middle', '2023-01-27');
INSERT INTO `tb_booking` (`id`, `is_done`, `name`, `content`, `time`, `count`, `is_delete`, `create_time`, `level`, `date`) VALUES (11, 0, 'test', 'sleep', '19:00:00', 3, 0, '2023-01-25 21:36:01', 'middle', '2023-01-27');
INSERT INTO `tb_booking` (`id`, `is_done`, `name`, `content`, `time`, `count`, `is_delete`, `create_time`, `level`, `date`) VALUES (12, 0, 'test', 'sleep', '21:00:00', 3, 0, '2023-01-25 21:36:05', 'middle', '2023-01-27');
INSERT INTO `tb_booking` (`id`, `is_done`, `name`, `content`, `time`, `count`, `is_delete`, `create_time`, `level`, `date`) VALUES (13, 0, 'test', 'sleep', '12:00:00', 3, 0, '2023-01-25 21:36:12', 'middle', '2023-01-28');
INSERT INTO `tb_booking` (`id`, `is_done`, `name`, `content`, `time`, `count`, `is_delete`, `create_time`, `level`, `date`) VALUES (14, 0, 'test', 'sleep', '14:00:00', 3, 0, '2023-01-25 21:36:16', 'middle', '2023-01-28');
INSERT INTO `tb_booking` (`id`, `is_done`, `name`, `content`, `time`, `count`, `is_delete`, `create_time`, `level`, `date`) VALUES (15, 0, 'test', 'sleep', '14:00:00', 3, 0, '2023-01-25 21:36:20', 'middle', '2023-01-29');
INSERT INTO `tb_booking` (`id`, `is_done`, `name`, `content`, `time`, `count`, `is_delete`, `create_time`, `level`, `date`) VALUES (16, 0, 'test', 'sleep', '14:00:00', 3, 0, '2023-01-25 21:36:25', 'middle', '2023-01-30');
INSERT INTO `tb_booking` (`id`, `is_done`, `name`, `content`, `time`, `count`, `is_delete`, `create_time`, `level`, `date`) VALUES (17, 0, 'test', 'sleep', '14:00:00', 3, 0, '2023-01-25 21:36:31', 'middle', '2023-01-31');
INSERT INTO `tb_booking` (`id`, `is_done`, `name`, `content`, `time`, `count`, `is_delete`, `create_time`, `level`, `date`) VALUES (18, 0, 'test', 'sleep', '11:00:00', 3, 0, '2023-01-25 21:36:38', 'middle', '2023-02-01');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
