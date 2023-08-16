/*
 Navicat Premium Data Transfer

 Source Server         : lokal_dump_jdihn
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : jdih_v3_anggota_type2

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 28/02/2021 00:17:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agenda
-- ----------------------------
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agenda
-- ----------------------------
INSERT INTO `agenda` VALUES (1, 'Training of Trainers (TOT) Aplikasi Standar ILDIS dan Aplikasi Integrasi bagi Pengelola JDIH pada Kanwil Kemenkumham', 'Aula Kantor BPHN', '2019-10-24', '2019-10-23 09:34:34', '2019-10-23 09:34:34');
INSERT INTO `agenda` VALUES (5, 'Bimtek Aplikasi Standar Aplikasi JDIHN bagi Kanwil', 'BPHN - Jakarta', '2020-02-24', '2020-02-20 08:19:08', '2020-02-20 08:19:08');
INSERT INTO `agenda` VALUES (6, 'Forum Diskusi Pustakawan Hukum', 'BPHN - Jakarta', '2020-03-10', '2020-02-20 08:19:55', '2020-02-20 08:19:55');

-- ----------------------------
-- Table structure for audit_trail
-- ----------------------------
DROP TABLE IF EXISTS `audit_trail`;
CREATE TABLE `audit_trail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `response` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_time` datetime(0) NULL DEFAULT NULL,
  `_updated_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment`  (
  `item_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`item_name`, `user_id`) USING BTREE,
  INDEX `idx-auth_assignment-user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('peraturan', '20', 1603905345);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '29', 1604384616);
INSERT INTO `auth_assignment` VALUES ('koordinator pustakawan', '30', 1608001192);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '31', 1604384855);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '32', 1604391081);
INSERT INTO `auth_assignment` VALUES ('superadmin', '1', 1594085515);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '28', 1605651544);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '16', 1605620918);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '12', 1605620935);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '19', 1605621027);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '36', 1605621039);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '14', 1605621048);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '15', 1605621060);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '34', 1605621078);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '25', 1605621087);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '21', 1605621107);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '23', 1605621129);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '22', 1605621139);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '11', 1605621148);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '51', 1605621160);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '13', 1605621278);
INSERT INTO `auth_assignment` VALUES ('koordinator pustakawan', '48', 1608002761);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '17', 1605621303);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '24', 1605621313);
INSERT INTO `auth_assignment` VALUES ('superadmin', '52', 1605621352);
INSERT INTO `auth_assignment` VALUES ('superadmin', '53', 1605621362);
INSERT INTO `auth_assignment` VALUES ('superadmin', '54', 1605621370);
INSERT INTO `auth_assignment` VALUES ('superadmin', '55', 1605621383);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '56', 1605621427);
INSERT INTO `auth_assignment` VALUES ('superadmin', '18', 1605647980);
INSERT INTO `auth_assignment` VALUES ('pustakawan', '10', 1605651528);
INSERT INTO `auth_assignment` VALUES ('superadmin', '33', 1605651575);

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `rule_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `data` blob NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE,
  INDEX `idx-auth_item-type`(`type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/default/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/default/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/menu/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/menu/create', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/menu/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/menu/update', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/menu/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/permission/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/permission/create', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/permission/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/permission/update', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/permission/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/role/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/role/assign', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/role/create', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/role/delete', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/role/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/role/remove', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/role/update', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/role/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/route/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/route/assign', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/route/create', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/route/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/route/remove', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/rule/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/rule/create', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/rule/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/rule/update', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/rule/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/user/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/user/activate', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/user/delete', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/user/inactivate', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/admin/user/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/user/login', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/user/logout', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/user/password', 2, NULL, NULL, NULL, 1594739155, 1594739155);
INSERT INTO `auth_item` VALUES ('/admin/user/profile', 2, NULL, NULL, NULL, 1594739926, 1594739926);
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/user/signup', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/admin/user/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/artikel/*', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/create', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/delete', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/download', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/download-abstrak', 2, NULL, NULL, NULL, 1602152368, 1602152368);
INSERT INTO `auth_item` VALUES ('/artikel/download-peraturan', 2, NULL, NULL, NULL, 1602152368, 1602152368);
INSERT INTO `auth_item` VALUES ('/artikel/get-peraturan', 2, NULL, NULL, NULL, 1602152368, 1602152368);
INSERT INTO `auth_item` VALUES ('/artikel/hapus-dokumen-terkait', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/hapus-hasil-uji-materi', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/hapus-lampiran', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/hapus-pengarang', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/hapus-peraturan-terkait', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/hapus-status', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/hapus-subyek', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/index', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/loaddokumen', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/tambah-dokumen-terkait', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/tambah-dokumen-terkait-list', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/tambah-hasil-uji-materi', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/tambah-lampiran', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/tambah-pengarang', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/tambah-pengarang2', 2, NULL, NULL, NULL, 1602931388, 1602931388);
INSERT INTO `auth_item` VALUES ('/artikel/tambah-peraturan-terkait', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/tambah-status', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/tambah-subyek', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/ubah-dokumen-terkait', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/ubah-hasil-uji-materi', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/ubah-lampiran', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/ubah-pengarang', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/ubah-peraturan-terkait', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/ubah-status', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/ubah-subyek', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/update', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/artikel/view', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/bahasa/*', 2, NULL, NULL, NULL, 1602743473, 1602743473);
INSERT INTO `auth_item` VALUES ('/bahasa/create', 2, NULL, NULL, NULL, 1602743473, 1602743473);
INSERT INTO `auth_item` VALUES ('/bahasa/delete', 2, NULL, NULL, NULL, 1602743473, 1602743473);
INSERT INTO `auth_item` VALUES ('/bahasa/index', 2, NULL, NULL, NULL, 1602743473, 1602743473);
INSERT INTO `auth_item` VALUES ('/bahasa/parent', 2, NULL, NULL, NULL, 1602743473, 1602743473);
INSERT INTO `auth_item` VALUES ('/bahasa/update', 2, NULL, NULL, NULL, 1602743473, 1602743473);
INSERT INTO `auth_item` VALUES ('/bahasa/view', 2, NULL, NULL, NULL, 1602743473, 1602743473);
INSERT INTO `auth_item` VALUES ('/berita/*', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/berita/create', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/berita/delete', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/berita/index', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/berita/parent', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/berita/update', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/berita/view', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/bidang-hukum/*', 2, NULL, NULL, NULL, 1596337450, 1596337450);
INSERT INTO `auth_item` VALUES ('/bidang-hukum/create', 2, NULL, NULL, NULL, 1596337450, 1596337450);
INSERT INTO `auth_item` VALUES ('/bidang-hukum/delete', 2, NULL, NULL, NULL, 1596337450, 1596337450);
INSERT INTO `auth_item` VALUES ('/bidang-hukum/index', 2, NULL, NULL, NULL, 1596337450, 1596337450);
INSERT INTO `auth_item` VALUES ('/bidang-hukum/parent', 2, NULL, NULL, NULL, 1596337450, 1596337450);
INSERT INTO `auth_item` VALUES ('/bidang-hukum/update', 2, NULL, NULL, NULL, 1596337450, 1596337450);
INSERT INTO `auth_item` VALUES ('/bidang-hukum/view', 2, NULL, NULL, NULL, 1596337450, 1596337450);
INSERT INTO `auth_item` VALUES ('/circulation/*', 2, NULL, NULL, NULL, 1596337952, 1596337952);
INSERT INTO `auth_item` VALUES ('/circulation/create', 2, NULL, NULL, NULL, 1596337952, 1596337952);
INSERT INTO `auth_item` VALUES ('/circulation/delete', 2, NULL, NULL, NULL, 1596337952, 1596337952);
INSERT INTO `auth_item` VALUES ('/circulation/index', 2, NULL, NULL, NULL, 1596337952, 1596337952);
INSERT INTO `auth_item` VALUES ('/circulation/parent', 2, NULL, NULL, NULL, 1596337952, 1596337952);
INSERT INTO `auth_item` VALUES ('/circulation/update', 2, NULL, NULL, NULL, 1596337952, 1596337952);
INSERT INTO `auth_item` VALUES ('/circulation/view', 2, NULL, NULL, NULL, 1596337952, 1596337952);
INSERT INTO `auth_item` VALUES ('/daerah/*', 2, NULL, NULL, NULL, 1604048240, 1604048240);
INSERT INTO `auth_item` VALUES ('/daerah/create', 2, NULL, NULL, NULL, 1604048240, 1604048240);
INSERT INTO `auth_item` VALUES ('/daerah/delete', 2, NULL, NULL, NULL, 1604048240, 1604048240);
INSERT INTO `auth_item` VALUES ('/daerah/index', 2, NULL, NULL, NULL, 1604048240, 1604048240);
INSERT INTO `auth_item` VALUES ('/daerah/parent', 2, NULL, NULL, NULL, 1604048240, 1604048240);
INSERT INTO `auth_item` VALUES ('/daerah/update', 2, NULL, NULL, NULL, 1604048240, 1604048240);
INSERT INTO `auth_item` VALUES ('/daerah/view', 2, NULL, NULL, NULL, 1604048240, 1604048240);
INSERT INTO `auth_item` VALUES ('/datecontrol/*', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/datecontrol/parse/*', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/datecontrol/parse/convert', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/debug/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/debug/default/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/debug/default/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/debug/default/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/debug/user/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/debug/user/set-identity', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/dokumen/*', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/dokumen/create', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/dokumen/delete', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/dokumen/index', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/dokumen/parent', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/dokumen/update', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/dokumen/view', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/eksemplar/*', 2, NULL, NULL, NULL, 1602347412, 1602347412);
INSERT INTO `auth_item` VALUES ('/eksemplar/create', 2, NULL, NULL, NULL, 1602347412, 1602347412);
INSERT INTO `auth_item` VALUES ('/eksemplar/delete', 2, NULL, NULL, NULL, 1602347412, 1602347412);
INSERT INTO `auth_item` VALUES ('/eksemplar/index', 2, NULL, NULL, NULL, 1602347412, 1602347412);
INSERT INTO `auth_item` VALUES ('/eksemplar/parent', 2, NULL, NULL, NULL, 1602347412, 1602347412);
INSERT INTO `auth_item` VALUES ('/eksemplar/update', 2, NULL, NULL, NULL, 1602347412, 1602347412);
INSERT INTO `auth_item` VALUES ('/eksemplar/view', 2, NULL, NULL, NULL, 1602347412, 1602347412);
INSERT INTO `auth_item` VALUES ('/gii/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/gii/default/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/gii/default/action', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/gii/default/diff', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/gii/default/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/gii/default/preview', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/gii/default/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/gmd/*', 2, NULL, NULL, NULL, 1596337528, 1596337528);
INSERT INTO `auth_item` VALUES ('/gmd/create', 2, NULL, NULL, NULL, 1596337528, 1596337528);
INSERT INTO `auth_item` VALUES ('/gmd/delete', 2, NULL, NULL, NULL, 1596337528, 1596337528);
INSERT INTO `auth_item` VALUES ('/gmd/index', 2, NULL, NULL, NULL, 1596337528, 1596337528);
INSERT INTO `auth_item` VALUES ('/gmd/parent', 2, NULL, NULL, NULL, 1596337528, 1596337528);
INSERT INTO `auth_item` VALUES ('/gmd/update', 2, NULL, NULL, NULL, 1596337528, 1596337528);
INSERT INTO `auth_item` VALUES ('/gmd/view', 2, NULL, NULL, NULL, 1596337528, 1596337528);
INSERT INTO `auth_item` VALUES ('/gridview/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/gridview/export/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/gridview/export/download', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/inisialisasi/*', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/inisialisasi/create', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/inisialisasi/delete', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/inisialisasi/index', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/inisialisasi/parent', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/inisialisasi/update', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/inisialisasi/view', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/jenis-pengarang/*', 2, NULL, NULL, NULL, 1596336890, 1596336890);
INSERT INTO `auth_item` VALUES ('/jenis-pengarang/create', 2, NULL, NULL, NULL, 1596336890, 1596336890);
INSERT INTO `auth_item` VALUES ('/jenis-pengarang/delete', 2, NULL, NULL, NULL, 1596336890, 1596336890);
INSERT INTO `auth_item` VALUES ('/jenis-pengarang/index', 2, NULL, NULL, NULL, 1596336890, 1596336890);
INSERT INTO `auth_item` VALUES ('/jenis-pengarang/parent', 2, NULL, NULL, NULL, 1596336890, 1596336890);
INSERT INTO `auth_item` VALUES ('/jenis-pengarang/update', 2, NULL, NULL, NULL, 1596336890, 1596336890);
INSERT INTO `auth_item` VALUES ('/jenis-pengarang/view', 2, NULL, NULL, NULL, 1596336890, 1596336890);
INSERT INTO `auth_item` VALUES ('/jenis-rancangan/*', 2, NULL, NULL, NULL, 1594399531, 1594399531);
INSERT INTO `auth_item` VALUES ('/jenis-rancangan/create', 2, NULL, NULL, NULL, 1594399531, 1594399531);
INSERT INTO `auth_item` VALUES ('/jenis-rancangan/delete', 2, NULL, NULL, NULL, 1594399531, 1594399531);
INSERT INTO `auth_item` VALUES ('/jenis-rancangan/index', 2, NULL, NULL, NULL, 1594399531, 1594399531);
INSERT INTO `auth_item` VALUES ('/jenis-rancangan/parent', 2, NULL, NULL, NULL, 1594399531, 1594399531);
INSERT INTO `auth_item` VALUES ('/jenis-rancangan/update', 2, NULL, NULL, NULL, 1594399531, 1594399531);
INSERT INTO `auth_item` VALUES ('/jenis-rancangan/view', 2, NULL, NULL, NULL, 1594399531, 1594399531);
INSERT INTO `auth_item` VALUES ('/kabupaten/*', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/kabupaten/create', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/kabupaten/delete', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/kabupaten/index', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/kabupaten/parent', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/kabupaten/update', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/kabupaten/view', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/kala-terbit/*', 2, NULL, NULL, NULL, 1596336995, 1596336995);
INSERT INTO `auth_item` VALUES ('/kala-terbit/create', 2, NULL, NULL, NULL, 1596336995, 1596336995);
INSERT INTO `auth_item` VALUES ('/kala-terbit/delete', 2, NULL, NULL, NULL, 1596336995, 1596336995);
INSERT INTO `auth_item` VALUES ('/kala-terbit/index', 2, NULL, NULL, NULL, 1596336995, 1596336995);
INSERT INTO `auth_item` VALUES ('/kala-terbit/parent', 2, NULL, NULL, NULL, 1596336995, 1596336995);
INSERT INTO `auth_item` VALUES ('/kala-terbit/update', 2, NULL, NULL, NULL, 1596336995, 1596336995);
INSERT INTO `auth_item` VALUES ('/kala-terbit/view', 2, NULL, NULL, NULL, 1596336995, 1596336995);
INSERT INTO `auth_item` VALUES ('/kategori/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/kategori/create', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/kategori/delete', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/kategori/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/kategori/parent', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/kategori/update', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/kategori/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/kecamatan/*', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/kecamatan/create', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/kecamatan/delete', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/kecamatan/index', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/kecamatan/parent', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/kecamatan/update', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/kecamatan/view', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/klasifikasi/*', 2, NULL, NULL, NULL, 1596338225, 1596338225);
INSERT INTO `auth_item` VALUES ('/klasifikasi/create', 2, NULL, NULL, NULL, 1596338225, 1596338225);
INSERT INTO `auth_item` VALUES ('/klasifikasi/delete', 2, NULL, NULL, NULL, 1596338225, 1596338225);
INSERT INTO `auth_item` VALUES ('/klasifikasi/index', 2, NULL, NULL, NULL, 1596338225, 1596338225);
INSERT INTO `auth_item` VALUES ('/klasifikasi/parent', 2, NULL, NULL, NULL, 1596338225, 1596338225);
INSERT INTO `auth_item` VALUES ('/klasifikasi/update', 2, NULL, NULL, NULL, 1596338225, 1596338225);
INSERT INTO `auth_item` VALUES ('/klasifikasi/view', 2, NULL, NULL, NULL, 1596338225, 1596338225);
INSERT INTO `auth_item` VALUES ('/masukan-masyarakat/*', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/masukan-masyarakat/create', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/masukan-masyarakat/delete', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/masukan-masyarakat/download', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/masukan-masyarakat/index', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/masukan-masyarakat/parent', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/masukan-masyarakat/publish', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/masukan-masyarakat/unpublish', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/masukan-masyarakat/update', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/masukan-masyarakat/view', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/member/*', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/member/create', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/member/delete', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/member/index', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/member/parent', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/member/password', 2, NULL, NULL, NULL, 1602347412, 1602347412);
INSERT INTO `auth_item` VALUES ('/member/update', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/member/view', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/monografi/*', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/create', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/delete', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/download', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/download-abstrak', 2, NULL, NULL, NULL, 1602175273, 1602175273);
INSERT INTO `auth_item` VALUES ('/monografi/download-peraturan', 2, NULL, NULL, NULL, 1602175273, 1602175273);
INSERT INTO `auth_item` VALUES ('/monografi/get-peraturan', 2, NULL, NULL, NULL, 1602175273, 1602175273);
INSERT INTO `auth_item` VALUES ('/monografi/hapus-dokumen-terkait', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/hapus-eksemplar', 2, NULL, NULL, NULL, 1602175273, 1602175273);
INSERT INTO `auth_item` VALUES ('/monografi/hapus-hasil-uji-materi', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/hapus-lampiran', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/hapus-pengarang', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/hapus-peraturan-terkait', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/hapus-status', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/hapus-subyek', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/index', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/loaddokumen', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/tambah-dokumen-terkait', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/tambah-dokumen-terkait-list', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/tambah-eksemplar', 2, NULL, NULL, NULL, 1602175273, 1602175273);
INSERT INTO `auth_item` VALUES ('/monografi/tambah-hasil-uji-materi', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/tambah-lampiran', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/tambah-pengarang', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/tambah-pengarang2', 2, NULL, NULL, NULL, 1602931388, 1602931388);
INSERT INTO `auth_item` VALUES ('/monografi/tambah-peraturan-terkait', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/tambah-status', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/tambah-subyek', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/ubah-dokumen-terkait', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/ubah-eksemplar', 2, NULL, NULL, NULL, 1602175273, 1602175273);
INSERT INTO `auth_item` VALUES ('/monografi/ubah-hasil-uji-materi', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/ubah-lampiran', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/ubah-pengarang', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/ubah-peraturan-terkait', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/ubah-status', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/ubah-subyek', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/update', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/monografi/view', 2, NULL, NULL, NULL, 1596332188, 1596332188);
INSERT INTO `auth_item` VALUES ('/pembahasan/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/pembahasan/create', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/pembahasan/delete', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/pembahasan/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/pembahasan/parent', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/pembahasan/update', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/pembahasan/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/pemrakarsa/*', 2, NULL, NULL, NULL, 1594740558, 1594740558);
INSERT INTO `auth_item` VALUES ('/pemrakarsa/create', 2, NULL, NULL, NULL, 1594740558, 1594740558);
INSERT INTO `auth_item` VALUES ('/pemrakarsa/delete', 2, NULL, NULL, NULL, 1594740558, 1594740558);
INSERT INTO `auth_item` VALUES ('/pemrakarsa/index', 2, NULL, NULL, NULL, 1594740558, 1594740558);
INSERT INTO `auth_item` VALUES ('/pemrakarsa/parent', 2, NULL, NULL, NULL, 1594740558, 1594740558);
INSERT INTO `auth_item` VALUES ('/pemrakarsa/update', 2, NULL, NULL, NULL, 1594740558, 1594740558);
INSERT INTO `auth_item` VALUES ('/pemrakarsa/view', 2, NULL, NULL, NULL, 1594740558, 1594740558);
INSERT INTO `auth_item` VALUES ('/penerbit/*', 2, NULL, NULL, NULL, 1596336766, 1596336766);
INSERT INTO `auth_item` VALUES ('/penerbit/create', 2, NULL, NULL, NULL, 1596336766, 1596336766);
INSERT INTO `auth_item` VALUES ('/penerbit/delete', 2, NULL, NULL, NULL, 1596336766, 1596336766);
INSERT INTO `auth_item` VALUES ('/penerbit/index', 2, NULL, NULL, NULL, 1596336766, 1596336766);
INSERT INTO `auth_item` VALUES ('/penerbit/parent', 2, NULL, NULL, NULL, 1596336766, 1596336766);
INSERT INTO `auth_item` VALUES ('/penerbit/update', 2, NULL, NULL, NULL, 1596336766, 1596336766);
INSERT INTO `auth_item` VALUES ('/penerbit/view', 2, NULL, NULL, NULL, 1596336766, 1596336766);
INSERT INTO `auth_item` VALUES ('/pengarang/*', 2, NULL, NULL, NULL, 1596336674, 1596336674);
INSERT INTO `auth_item` VALUES ('/pengarang/create', 2, NULL, NULL, NULL, 1596336674, 1596336674);
INSERT INTO `auth_item` VALUES ('/pengarang/delete', 2, NULL, NULL, NULL, 1596336674, 1596336674);
INSERT INTO `auth_item` VALUES ('/pengarang/index', 2, NULL, NULL, NULL, 1596336674, 1596336674);
INSERT INTO `auth_item` VALUES ('/pengarang/parent', 2, NULL, NULL, NULL, 1596336674, 1596336674);
INSERT INTO `auth_item` VALUES ('/pengarang/update', 2, NULL, NULL, NULL, 1596336674, 1596336674);
INSERT INTO `auth_item` VALUES ('/pengarang/view', 2, NULL, NULL, NULL, 1596336674, 1596336674);
INSERT INTO `auth_item` VALUES ('/penyusunan/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/penyusunan/create', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/penyusunan/delete', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/penyusunan/download', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/penyusunan/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/penyusunan/parent', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/penyusunan/update', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/penyusunan/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/peraturan/*', 2, NULL, NULL, NULL, 1595906779, 1595906779);
INSERT INTO `auth_item` VALUES ('/peraturan/create', 2, NULL, NULL, NULL, 1595906779, 1595906779);
INSERT INTO `auth_item` VALUES ('/peraturan/create2', 2, NULL, NULL, NULL, 1602931388, 1602931388);
INSERT INTO `auth_item` VALUES ('/peraturan/delete', 2, NULL, NULL, NULL, 1595906779, 1595906779);
INSERT INTO `auth_item` VALUES ('/peraturan/download', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/download-abstrak', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/peraturan/download-peraturan', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/peraturan/get-peraturan', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/peraturan/hapus-dokumen-terkait', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/hapus-hasil-uji-materi', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/hapus-lampiran', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/hapus-pengarang', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/hapus-peraturan-terkait', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/hapus-status', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/hapus-subyek', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/index', 2, NULL, NULL, NULL, 1595906779, 1595906779);
INSERT INTO `auth_item` VALUES ('/peraturan/jenis', 2, NULL, NULL, NULL, 1602347412, 1602347412);
INSERT INTO `auth_item` VALUES ('/peraturan/jenis2', 2, NULL, NULL, NULL, 1602347413, 1602347413);
INSERT INTO `auth_item` VALUES ('/peraturan/loaddokumen', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/tambah-dokumen-terkait', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/tambah-dokumen-terkait-list', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/tambah-hasil-uji-materi', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/tambah-lampiran', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/tambah-pengarang', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/tambah-pengarang2', 2, NULL, NULL, NULL, 1602931388, 1602931388);
INSERT INTO `auth_item` VALUES ('/peraturan/tambah-peraturan-terkait', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/tambah-status', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/tambah-subyek', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/ubah-dokumen-terkait', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/ubah-hasil-uji-materi', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/ubah-lampiran', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/ubah-pengarang', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/ubah-peraturan-terkait', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/ubah-status', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/ubah-subyek', 2, NULL, NULL, NULL, 1596332189, 1596332189);
INSERT INTO `auth_item` VALUES ('/peraturan/update', 2, NULL, NULL, NULL, 1595906779, 1595906779);
INSERT INTO `auth_item` VALUES ('/peraturan/view', 2, NULL, NULL, NULL, 1595906779, 1595906779);
INSERT INTO `auth_item` VALUES ('/perencanaan/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/perencanaan/create', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/perencanaan/delete', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/perencanaan/download', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/perencanaan/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/perencanaan/parent', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/perencanaan/update', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/perencanaan/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/pola-eksemplar/*', 2, NULL, NULL, NULL, 1596338103, 1596338103);
INSERT INTO `auth_item` VALUES ('/pola-eksemplar/create', 2, NULL, NULL, NULL, 1596338103, 1596338103);
INSERT INTO `auth_item` VALUES ('/pola-eksemplar/delete', 2, NULL, NULL, NULL, 1596338103, 1596338103);
INSERT INTO `auth_item` VALUES ('/pola-eksemplar/index', 2, NULL, NULL, NULL, 1596338103, 1596338103);
INSERT INTO `auth_item` VALUES ('/pola-eksemplar/parent', 2, NULL, NULL, NULL, 1596338103, 1596338103);
INSERT INTO `auth_item` VALUES ('/pola-eksemplar/update', 2, NULL, NULL, NULL, 1596338103, 1596338103);
INSERT INTO `auth_item` VALUES ('/pola-eksemplar/view', 2, NULL, NULL, NULL, 1596338103, 1596338103);
INSERT INTO `auth_item` VALUES ('/program/*', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/program/create', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/program/delete', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/program/index', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/program/parent', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/program/update', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/program/view', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/provinsi/*', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/provinsi/create', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/provinsi/delete', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/provinsi/index', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/provinsi/parent', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/provinsi/update', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/provinsi/view', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/*', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/create', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/delete', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/download', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/download-abstrak', 2, NULL, NULL, NULL, 1602152368, 1602152368);
INSERT INTO `auth_item` VALUES ('/putusan/download-peraturan', 2, NULL, NULL, NULL, 1602152368, 1602152368);
INSERT INTO `auth_item` VALUES ('/putusan/get-peraturan', 2, NULL, NULL, NULL, 1602152368, 1602152368);
INSERT INTO `auth_item` VALUES ('/putusan/hapus-dokumen-terkait', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/hapus-hasil-uji-materi', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/hapus-lampiran', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/hapus-pengarang', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/hapus-peraturan-terkait', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/hapus-status', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/hapus-subyek', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/index', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/loaddokumen', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/tambah-dokumen-terkait', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/tambah-dokumen-terkait-list', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/tambah-hasil-uji-materi', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/tambah-lampiran', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/tambah-pengarang', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/tambah-pengarang2', 2, NULL, NULL, NULL, 1602931388, 1602931388);
INSERT INTO `auth_item` VALUES ('/putusan/tambah-peraturan-terkait', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/tambah-status', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/tambah-subyek', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/ubah-dokumen-terkait', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/ubah-hasil-uji-materi', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/ubah-lampiran', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/ubah-pengarang', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/ubah-peraturan-terkait', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/ubah-status', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/ubah-subyek', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/update', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/putusan/view', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/saran/*', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/saran/create', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/saran/delete', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/saran/index', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/saran/parent', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/saran/update', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/saran/view', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/sirkulasi/*', 2, NULL, NULL, NULL, 1602347413, 1602347413);
INSERT INTO `auth_item` VALUES ('/sirkulasi/hapus-sirkulasi', 2, NULL, NULL, NULL, 1604047621, 1604047621);
INSERT INTO `auth_item` VALUES ('/sirkulasi/index', 2, NULL, NULL, NULL, 1604047621, 1604047621);
INSERT INTO `auth_item` VALUES ('/sirkulasi/kembali', 2, NULL, NULL, NULL, 1604047621, 1604047621);
INSERT INTO `auth_item` VALUES ('/sirkulasi/peminjaman', 2, NULL, NULL, NULL, 1602347413, 1602347413);
INSERT INTO `auth_item` VALUES ('/sirkulasi/pengembalian', 2, NULL, NULL, NULL, 1602347413, 1602347413);
INSERT INTO `auth_item` VALUES ('/sirkulasi/pinjam', 2, NULL, NULL, NULL, 1604047621, 1604047621);
INSERT INTO `auth_item` VALUES ('/sirkulasi/sejarah-peminjaman', 2, NULL, NULL, NULL, 1602347413, 1602347413);
INSERT INTO `auth_item` VALUES ('/sirkulasi/view', 2, NULL, NULL, NULL, 1602743000, 1602743000);
INSERT INTO `auth_item` VALUES ('/site/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/site/error', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/site/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/site/login', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/site/logout', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/status-rancangan/*', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/status-rancangan/create', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/status-rancangan/delete', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/status-rancangan/index', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/status-rancangan/parent', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/status-rancangan/update', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/status-rancangan/view', 2, NULL, NULL, NULL, 1594727590, 1594727590);
INSERT INTO `auth_item` VALUES ('/status/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/status/create', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/status/delete', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/status/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/status/parent', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/status/update', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/status/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/tipe-dokumen/*', 2, NULL, NULL, NULL, 1596338520, 1596338520);
INSERT INTO `auth_item` VALUES ('/tipe-dokumen/create', 2, NULL, NULL, NULL, 1596338520, 1596338520);
INSERT INTO `auth_item` VALUES ('/tipe-dokumen/delete', 2, NULL, NULL, NULL, 1596338520, 1596338520);
INSERT INTO `auth_item` VALUES ('/tipe-dokumen/index', 2, NULL, NULL, NULL, 1596338520, 1596338520);
INSERT INTO `auth_item` VALUES ('/tipe-dokumen/parent', 2, NULL, NULL, NULL, 1596338520, 1596338520);
INSERT INTO `auth_item` VALUES ('/tipe-dokumen/update', 2, NULL, NULL, NULL, 1596338520, 1596338520);
INSERT INTO `auth_item` VALUES ('/tipe-dokumen/view', 2, NULL, NULL, NULL, 1596338520, 1596338520);
INSERT INTO `auth_item` VALUES ('/tipe-kata-kunci/*', 2, NULL, NULL, NULL, 1596336459, 1596336459);
INSERT INTO `auth_item` VALUES ('/tipe-kata-kunci/create', 2, NULL, NULL, NULL, 1596336459, 1596336459);
INSERT INTO `auth_item` VALUES ('/tipe-kata-kunci/delete', 2, NULL, NULL, NULL, 1596336459, 1596336459);
INSERT INTO `auth_item` VALUES ('/tipe-kata-kunci/index', 2, NULL, NULL, NULL, 1596336459, 1596336459);
INSERT INTO `auth_item` VALUES ('/tipe-kata-kunci/parent', 2, NULL, NULL, NULL, 1596336459, 1596336459);
INSERT INTO `auth_item` VALUES ('/tipe-kata-kunci/update', 2, NULL, NULL, NULL, 1596336459, 1596336459);
INSERT INTO `auth_item` VALUES ('/tipe-kata-kunci/view', 2, NULL, NULL, NULL, 1596336459, 1596336459);
INSERT INTO `auth_item` VALUES ('/tipe-koleksi/*', 2, NULL, NULL, NULL, 1596336565, 1596336565);
INSERT INTO `auth_item` VALUES ('/tipe-koleksi/create', 2, NULL, NULL, NULL, 1596336565, 1596336565);
INSERT INTO `auth_item` VALUES ('/tipe-koleksi/delete', 2, NULL, NULL, NULL, 1596336565, 1596336565);
INSERT INTO `auth_item` VALUES ('/tipe-koleksi/index', 2, NULL, NULL, NULL, 1596336565, 1596336565);
INSERT INTO `auth_item` VALUES ('/tipe-koleksi/parent', 2, NULL, NULL, NULL, 1596336565, 1596336565);
INSERT INTO `auth_item` VALUES ('/tipe-koleksi/update', 2, NULL, NULL, NULL, 1596336565, 1596336565);
INSERT INTO `auth_item` VALUES ('/tipe-koleksi/view', 2, NULL, NULL, NULL, 1596336565, 1596336565);
INSERT INTO `auth_item` VALUES ('/tipe-pengarang/*', 2, NULL, NULL, NULL, 1596336331, 1596336331);
INSERT INTO `auth_item` VALUES ('/tipe-pengarang/create', 2, NULL, NULL, NULL, 1596336331, 1596336331);
INSERT INTO `auth_item` VALUES ('/tipe-pengarang/delete', 2, NULL, NULL, NULL, 1596336331, 1596336331);
INSERT INTO `auth_item` VALUES ('/tipe-pengarang/index', 2, NULL, NULL, NULL, 1596336331, 1596336331);
INSERT INTO `auth_item` VALUES ('/tipe-pengarang/parent', 2, NULL, NULL, NULL, 1596336331, 1596336331);
INSERT INTO `auth_item` VALUES ('/tipe-pengarang/update', 2, NULL, NULL, NULL, 1596336331, 1596336331);
INSERT INTO `auth_item` VALUES ('/tipe-pengarang/view', 2, NULL, NULL, NULL, 1596336331, 1596336331);
INSERT INTO `auth_item` VALUES ('/urusan-pemerintahan/*', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/urusan-pemerintahan/create', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/urusan-pemerintahan/delete', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/urusan-pemerintahan/index', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/urusan-pemerintahan/parent', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/urusan-pemerintahan/update', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/urusan-pemerintahan/view', 2, NULL, NULL, NULL, 1602126776, 1602126776);
INSERT INTO `auth_item` VALUES ('/user-member/*', 2, NULL, NULL, NULL, 1602347413, 1602347413);
INSERT INTO `auth_item` VALUES ('/user-member/create', 2, NULL, NULL, NULL, 1602347413, 1602347413);
INSERT INTO `auth_item` VALUES ('/user-member/delete', 2, NULL, NULL, NULL, 1602347413, 1602347413);
INSERT INTO `auth_item` VALUES ('/user-member/index', 2, NULL, NULL, NULL, 1602347413, 1602347413);
INSERT INTO `auth_item` VALUES ('/user-member/parent', 2, NULL, NULL, NULL, 1602347413, 1602347413);
INSERT INTO `auth_item` VALUES ('/user-member/update', 2, NULL, NULL, NULL, 1602347413, 1602347413);
INSERT INTO `auth_item` VALUES ('/user-member/view', 2, NULL, NULL, NULL, 1602347413, 1602347413);
INSERT INTO `auth_item` VALUES ('/user/*', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/user/bulkdelete', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/user/create', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/user/delete', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/user/index', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/user/update', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('/user/view', 2, NULL, NULL, NULL, 1594180921, 1594180921);
INSERT INTO `auth_item` VALUES ('peraturan', 1, NULL, NULL, NULL, 1603905144, 1603905144);
INSERT INTO `auth_item` VALUES ('pustakawan', 1, NULL, NULL, NULL, 1604384263, 1607560827);
INSERT INTO `auth_item` VALUES ('superadmin', 1, 'superadmin', NULL, NULL, 1594085499, 1594085499);
INSERT INTO `auth_item` VALUES ('/peraturan/loadperaturan', 2, NULL, NULL, NULL, 1605872313, 1605872313);
INSERT INTO `auth_item` VALUES ('/peraturan/loadteu', 2, NULL, NULL, NULL, 1605872313, 1605872313);
INSERT INTO `auth_item` VALUES ('/sirkulasi/perpanjang', 2, NULL, NULL, NULL, 1605872313, 1605872313);
INSERT INTO `auth_item` VALUES ('koordinator pustakawan', 1, NULL, NULL, NULL, 1607999754, 1607999754);

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child`  (
  `parent` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`, `child`) USING BTREE,
  INDEX `child`(`child`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/inactivate');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/password');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/profile');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/download');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/download-abstrak');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/download-peraturan');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/get-peraturan');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/hapus-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/hapus-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/hapus-lampiran');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/hapus-pengarang');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/hapus-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/hapus-status');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/hapus-subyek');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/loaddokumen');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/tambah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/tambah-dokumen-terkait-list');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/tambah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/tambah-lampiran');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/tambah-pengarang');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/tambah-pengarang2');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/tambah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/tambah-status');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/tambah-subyek');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/ubah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/ubah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/ubah-lampiran');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/ubah-pengarang');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/ubah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/ubah-status');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/ubah-subyek');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/artikel/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/berita/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/berita/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/berita/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/berita/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/berita/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/berita/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/berita/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/bidang-hukum/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/bidang-hukum/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/bidang-hukum/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/bidang-hukum/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/bidang-hukum/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/bidang-hukum/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/bidang-hukum/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/circulation/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/circulation/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/circulation/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/circulation/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/circulation/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/circulation/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/circulation/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/dokumen/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/dokumen/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/dokumen/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/dokumen/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/dokumen/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/dokumen/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/dokumen/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/eksemplar/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/eksemplar/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/eksemplar/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/eksemplar/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/eksemplar/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/eksemplar/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/eksemplar/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/gmd/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/gmd/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/gmd/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/gmd/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/gmd/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/gmd/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/gmd/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/gridview/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/gridview/export/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/gridview/export/download');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/jenis-pengarang/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/jenis-pengarang/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/jenis-pengarang/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/jenis-pengarang/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/jenis-pengarang/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/jenis-pengarang/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/jenis-pengarang/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kala-terbit/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kala-terbit/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kala-terbit/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kala-terbit/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kala-terbit/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kala-terbit/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kala-terbit/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kategori/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kategori/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kategori/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kategori/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kategori/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kategori/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/kategori/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/klasifikasi/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/klasifikasi/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/klasifikasi/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/klasifikasi/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/klasifikasi/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/klasifikasi/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/klasifikasi/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/member/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/member/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/member/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/member/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/member/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/member/password');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/member/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/member/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/download');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/download-abstrak');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/download-peraturan');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/get-peraturan');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/hapus-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/hapus-eksemplar');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/hapus-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/hapus-lampiran');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/hapus-pengarang');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/hapus-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/hapus-status');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/hapus-subyek');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/loaddokumen');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/tambah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/tambah-dokumen-terkait-list');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/tambah-eksemplar');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/tambah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/tambah-lampiran');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/tambah-pengarang');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/tambah-pengarang2');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/tambah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/tambah-status');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/tambah-subyek');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/ubah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/ubah-eksemplar');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/ubah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/ubah-lampiran');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/ubah-pengarang');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/ubah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/ubah-status');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/ubah-subyek');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/monografi/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pemrakarsa/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pemrakarsa/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pemrakarsa/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pemrakarsa/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pemrakarsa/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pemrakarsa/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pemrakarsa/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/penerbit/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/penerbit/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/penerbit/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/penerbit/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/penerbit/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/penerbit/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/penerbit/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pengarang/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pengarang/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pengarang/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pengarang/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pengarang/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pengarang/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/pengarang/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/create2');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/download');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/download-abstrak');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/download-peraturan');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/get-peraturan');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/hapus-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/hapus-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/hapus-lampiran');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/hapus-pengarang');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/hapus-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/hapus-status');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/hapus-subyek');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/jenis');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/jenis2');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/loaddokumen');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/loadperaturan');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/loadteu');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/tambah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/tambah-dokumen-terkait-list');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/tambah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/tambah-lampiran');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/tambah-pengarang');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/tambah-pengarang2');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/tambah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/tambah-status');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/tambah-subyek');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/ubah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/ubah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/ubah-lampiran');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/ubah-pengarang');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/ubah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/ubah-status');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/ubah-subyek');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/peraturan/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/download');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/download-abstrak');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/download-peraturan');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/get-peraturan');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/hapus-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/hapus-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/hapus-lampiran');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/hapus-pengarang');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/hapus-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/hapus-status');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/hapus-subyek');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/loaddokumen');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/tambah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/tambah-dokumen-terkait-list');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/tambah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/tambah-lampiran');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/tambah-pengarang');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/tambah-pengarang2');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/tambah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/tambah-status');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/tambah-subyek');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/ubah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/ubah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/ubah-lampiran');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/ubah-pengarang');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/ubah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/ubah-status');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/ubah-subyek');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/putusan/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/sirkulasi/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/sirkulasi/hapus-sirkulasi');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/sirkulasi/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/sirkulasi/kembali');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/sirkulasi/peminjaman');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/sirkulasi/pengembalian');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/sirkulasi/perpanjang');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/sirkulasi/pinjam');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/sirkulasi/sejarah-peminjaman');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/sirkulasi/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/site/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/site/error');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/site/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/site/login');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/status/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/status/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/status/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/status/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/status/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/status/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/status/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-dokumen/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-dokumen/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-dokumen/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-dokumen/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-dokumen/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-dokumen/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-dokumen/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-kata-kunci/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-kata-kunci/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-kata-kunci/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-kata-kunci/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-kata-kunci/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-kata-kunci/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-kata-kunci/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-koleksi/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-koleksi/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-koleksi/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-koleksi/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-koleksi/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-koleksi/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-koleksi/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-pengarang/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-pengarang/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-pengarang/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-pengarang/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-pengarang/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-pengarang/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/tipe-pengarang/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/urusan-pemerintahan/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/urusan-pemerintahan/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/urusan-pemerintahan/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/urusan-pemerintahan/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/urusan-pemerintahan/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/urusan-pemerintahan/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/urusan-pemerintahan/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user-member/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user-member/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user-member/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user-member/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user-member/parent');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user-member/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user-member/view');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user/*');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user/bulkdelete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user/create');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user/delete');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user/index');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user/update');
INSERT INTO `auth_item_child` VALUES ('koordinator pustakawan', '/user/view');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/*');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/create');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/create2');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/download');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/download-abstrak');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/download-peraturan');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/get-peraturan');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/hapus-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/hapus-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/hapus-lampiran');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/hapus-pengarang');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/hapus-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/hapus-status');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/hapus-subyek');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/index');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/jenis');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/jenis2');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/loaddokumen');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/tambah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/tambah-dokumen-terkait-list');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/tambah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/tambah-lampiran');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/tambah-pengarang');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/tambah-pengarang2');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/tambah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/tambah-status');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/tambah-subyek');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/ubah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/ubah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/ubah-lampiran');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/ubah-pengarang');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/ubah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/ubah-status');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/ubah-subyek');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/update');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/peraturan/view');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/site/*');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/site/error');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/site/index');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/site/login');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/tipe-dokumen/*');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/tipe-dokumen/create');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/tipe-dokumen/delete');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/tipe-dokumen/index');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/tipe-dokumen/parent');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/tipe-dokumen/update');
INSERT INTO `auth_item_child` VALUES ('peraturan', '/tipe-dokumen/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/download');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/download-abstrak');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/download-peraturan');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/get-peraturan');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/hapus-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/hapus-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/hapus-lampiran');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/hapus-pengarang');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/hapus-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/hapus-status');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/hapus-subyek');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/loaddokumen');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/tambah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/tambah-dokumen-terkait-list');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/tambah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/tambah-lampiran');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/tambah-pengarang');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/tambah-pengarang2');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/tambah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/tambah-status');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/tambah-subyek');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/ubah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/ubah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/ubah-lampiran');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/ubah-pengarang');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/ubah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/ubah-status');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/ubah-subyek');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/artikel/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bahasa/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bahasa/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bahasa/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bahasa/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bahasa/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bahasa/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bahasa/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/berita/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/berita/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/berita/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/berita/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/berita/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/berita/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/berita/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bidang-hukum/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bidang-hukum/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bidang-hukum/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bidang-hukum/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bidang-hukum/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bidang-hukum/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/bidang-hukum/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/circulation/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/circulation/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/circulation/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/circulation/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/circulation/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/circulation/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/circulation/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/daerah/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/daerah/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/daerah/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/daerah/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/daerah/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/daerah/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/daerah/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/datecontrol/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/datecontrol/parse/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/datecontrol/parse/convert');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/dokumen/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/dokumen/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/dokumen/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/dokumen/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/dokumen/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/dokumen/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/dokumen/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/eksemplar/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/eksemplar/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/eksemplar/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/eksemplar/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/eksemplar/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/eksemplar/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/eksemplar/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/gmd/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/gmd/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/gmd/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/gmd/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/gmd/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/gmd/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/gmd/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/gridview/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/gridview/export/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/gridview/export/download');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-pengarang/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-pengarang/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-pengarang/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-pengarang/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-pengarang/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-pengarang/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-pengarang/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-rancangan/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-rancangan/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-rancangan/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-rancangan/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-rancangan/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-rancangan/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/jenis-rancangan/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kabupaten/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kabupaten/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kabupaten/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kabupaten/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kabupaten/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kabupaten/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kabupaten/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kala-terbit/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kala-terbit/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kala-terbit/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kala-terbit/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kala-terbit/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kala-terbit/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kala-terbit/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kategori/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kategori/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kategori/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kategori/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kategori/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kategori/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kategori/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kecamatan/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kecamatan/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kecamatan/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kecamatan/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kecamatan/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kecamatan/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/kecamatan/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/klasifikasi/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/klasifikasi/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/klasifikasi/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/klasifikasi/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/klasifikasi/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/klasifikasi/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/klasifikasi/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/member/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/member/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/member/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/member/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/member/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/member/password');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/member/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/member/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/download');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/download-abstrak');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/download-peraturan');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/get-peraturan');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/hapus-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/hapus-eksemplar');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/hapus-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/hapus-lampiran');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/hapus-pengarang');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/hapus-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/hapus-status');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/hapus-subyek');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/loaddokumen');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/tambah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/tambah-dokumen-terkait-list');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/tambah-eksemplar');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/tambah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/tambah-lampiran');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/tambah-pengarang');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/tambah-pengarang2');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/tambah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/tambah-status');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/tambah-subyek');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/ubah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/ubah-eksemplar');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/ubah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/ubah-lampiran');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/ubah-pengarang');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/ubah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/ubah-status');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/ubah-subyek');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/monografi/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/penerbit/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/penerbit/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/penerbit/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/penerbit/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/penerbit/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/penerbit/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/penerbit/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/create2');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/download');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/download-abstrak');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/download-peraturan');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/get-peraturan');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/hapus-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/hapus-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/hapus-lampiran');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/hapus-pengarang');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/hapus-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/hapus-status');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/hapus-subyek');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/jenis');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/jenis2');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/loaddokumen');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/loadperaturan');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/loadteu');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/tambah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/tambah-dokumen-terkait-list');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/tambah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/tambah-lampiran');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/tambah-pengarang');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/tambah-pengarang2');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/tambah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/tambah-status');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/tambah-subyek');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/ubah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/ubah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/ubah-lampiran');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/ubah-pengarang');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/ubah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/ubah-status');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/ubah-subyek');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/peraturan/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/pola-eksemplar/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/pola-eksemplar/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/pola-eksemplar/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/pola-eksemplar/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/pola-eksemplar/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/pola-eksemplar/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/pola-eksemplar/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/provinsi/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/provinsi/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/provinsi/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/provinsi/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/provinsi/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/provinsi/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/provinsi/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/download');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/download-abstrak');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/download-peraturan');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/get-peraturan');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/hapus-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/hapus-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/hapus-lampiran');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/hapus-pengarang');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/hapus-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/hapus-status');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/hapus-subyek');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/loaddokumen');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/tambah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/tambah-dokumen-terkait-list');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/tambah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/tambah-lampiran');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/tambah-pengarang');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/tambah-pengarang2');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/tambah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/tambah-status');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/tambah-subyek');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/ubah-dokumen-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/ubah-hasil-uji-materi');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/ubah-lampiran');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/ubah-pengarang');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/ubah-peraturan-terkait');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/ubah-status');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/ubah-subyek');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/putusan/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/saran/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/saran/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/saran/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/saran/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/saran/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/saran/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/saran/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/sirkulasi/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/sirkulasi/hapus-sirkulasi');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/sirkulasi/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/sirkulasi/kembali');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/sirkulasi/peminjaman');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/sirkulasi/pengembalian');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/sirkulasi/perpanjang');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/sirkulasi/pinjam');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/sirkulasi/sejarah-peminjaman');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/sirkulasi/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/site/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/site/error');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/site/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/site/login');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/status/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/status/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/status/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/status/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/status/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/status/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/status/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-dokumen/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-dokumen/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-dokumen/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-dokumen/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-dokumen/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-dokumen/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-dokumen/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-kata-kunci/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-kata-kunci/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-kata-kunci/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-kata-kunci/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-kata-kunci/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-kata-kunci/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-kata-kunci/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-koleksi/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-koleksi/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-koleksi/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-koleksi/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-koleksi/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-koleksi/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-koleksi/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-pengarang/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-pengarang/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-pengarang/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-pengarang/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-pengarang/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-pengarang/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/tipe-pengarang/view');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/urusan-pemerintahan/*');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/urusan-pemerintahan/create');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/urusan-pemerintahan/delete');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/urusan-pemerintahan/index');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/urusan-pemerintahan/parent');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/urusan-pemerintahan/update');
INSERT INTO `auth_item_child` VALUES ('pustakawan', '/urusan-pemerintahan/view');
INSERT INTO `auth_item_child` VALUES ('superadmin', '/*');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` blob NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bahasa
-- ----------------------------
DROP TABLE IF EXISTS `bahasa`;
CREATE TABLE `bahasa`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bahasa
-- ----------------------------
INSERT INTO `bahasa` VALUES (1, 'Indonesia', 'Publish', 1, 1, '2019-05-15 15:25:16', '2019-05-15 15:25:16');
INSERT INTO `bahasa` VALUES (2, 'Inggris', 'Publish', 1, 1, '2019-05-15 15:25:20', '2019-05-15 15:25:20');
INSERT INTO `bahasa` VALUES (3, 'Belanda', 'Publish', 1, 1, '2019-05-15 15:46:31', '2019-05-15 15:46:31');
INSERT INTO `bahasa` VALUES (4, 'Jerman', 'Publish', 1, 1, '2019-05-15 15:46:35', '2019-05-15 15:46:35');
INSERT INTO `bahasa` VALUES (5, 'Perancis', 'Publish', 1, 1, '2019-05-15 15:46:39', '2019-05-15 15:46:39');
INSERT INTO `bahasa` VALUES (6, 'Jepang', 'Publish', 1, 1, '2019-05-15 15:46:44', '2019-05-15 15:46:44');
INSERT INTO `bahasa` VALUES (7, 'Arab', 'Publish', 4, 4, '2019-06-13 15:06:44', '2019-06-13 15:06:44');

-- ----------------------------
-- Table structure for berita
-- ----------------------------
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 43 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of berita
-- ----------------------------
INSERT INTO `berita` VALUES (27, '2020-03-10', 'Penataan Dokumen Hukum Langka di BPHN Melalui Preservasi dan Konservasi', '<p>Perpustakaan Hukum BPHN mengelola koleksi langka Dokumen Hukum dari jaman kolonial Belanda seperti Staatsblad (Lembaran Negara), Bijblad (Tambahan Lembaran Negara), Javasche Courant (Surat Kabar yang beredar di Jakarta) yang saat ini keberadaanya sangat banyak namun belum terkelola dengan baik.&nbsp;</p>\r\n\r\n<p>Dalam rangka menyelamatkan dan melestarikan bahan dokumen hukum penting milik negara maka pada Selasa, 10 Maret 2020 bertempat di Ruang Aula Lantai 4 dilaksanakan Forum Diskusi Pustakawan. Tema Forum Diskusi Pustakawan Tahun 2020 ini adalah Preservasi dan Konservasi Koleksi Langka Dokumen Hukum. Forum diskusi pustakawan ini menghadirkan Narasumber Dr. Kandar, M.A.P Direktur Preservasi ANRI, Alfa Husna, S.S., M.P. Kasubbid Perawatan dan Perbaikan Bahan Pustaka, dan Dr. Retno Sri Hartati Mulyandari, M.Si. Direktur Preservasi Pustaka Bogor. Kegiatan ini dihadiri oleh 60 peserta yang berasal dari Unit eselon 1 Kementerian Hukum dan HAM, Kementerian/Lembaga Negara yang bergerak di Bidang Hukum, Kanwil Kemenkumham DKI Jakarta, Perpustakaan Hukum Universitas Negeri dan Swasta di lingkungan Jabodetabek.</p>\r\n\r\n<p>Acara ini dihadiri langsung oleh Kepala Badan dan Pimpinan Tinggi Pratama di lingkungan BPHN. Dalam sambutannya Kepala Badan menyampaikan bahwa Perpustakaan Hukum BPHN sebagai Perpustakaan khusus memiliki keunikannya karena mengelola dokumen hukum langka sangat luar biasa banyaknya. Namun demikian, diakui bahwa saat pengelolaan dokumen hukum langka perlu dilakukan sangat serius mengingat dokumen hukum langka merupakan warisan sejarah bangsa. &quot;Perpustakaan harus bisa melindungi dokumen hukum warisan sejarah. Dokumen hukum langka adalah alat dukung untuk menggambarkan sejarah regulasi masa lalu agar bisa dibaca dan dimanfaatkan bagi generasi berikutnya&quot;, terang Kabadan.</p>\r\n\r\n<p>&quot;Kadang-kadang kita dibuat iri dengan negara luar yang dengan mudah mencari dokumen hukum secara lengkap sekalipun dokumen hukum itu langka. Bahkan untuk mencari dokumen hukum langka kita harus ke luar negeri. Forum ini saya kira penting sekali untuk mencari solusi bagaimana merawat, melestarikan dan menyajikan dokumen hukum langka agar dapat dapat bermanfaat bagi generasi masa datang&quot;, terang Kabadan.</p>\r\n\r\n<p>Menutup sambutannya Kabadan berharap bahwa Perpustakaan Hukum harus mampu menjawab tantangan era industri 4.0. &quot;Sebagaimana data informasi adalah tumpuan para pengambil kebijakan. Perpustakaan hukum harus tampil ke depan menyajikan informasi bagi para pengambil kebijakan. Terlebih di era digital Perpustakaan Hukum harus mampu mengisi ruang-ruang inovasi. Preservasi dan Konservasi Dokumen Hukum Langka sebagai bagian inovasi penting untuk segera dieksekusi. Suatu keniscayaan bahwa Perpustakaan Hukum BPHN bisa melakukannya. Pada akhirnya melalui preservasi dan konservasi dokumen hukum langka di BPHN akan berkontribusi terhadap upaya penataan regulasi&quot;. pesan Kabadan.</p>', 'berita5e67489f03506.jpeg', 1, NULL, NULL, NULL, NULL);
INSERT INTO `berita` VALUES (37, '2020-07-30', 'TELAH TERBIT! PERMENPAN RB NOMOR 51 TAHUN 2020 TENTANG JABATAN FUNGSIONAL ANALIS HUKUM', 'Jabatan Fungsional Analis Hukum telah resmi terbentuk dengan ditetapkannya Peraturan Menteri PAN RB Nomor 51 Tahun 2020 tentang Jabatan Fungsional Analis Hukum.\r\nSalah satu instrumen penting membentuk profesionalisme PNS adalah jabatan fungsional. Pengembangan dan pembentukan jabatan fungsional baru sudah menjadi kebijakan pemerintah untuk meningkatkan profesionalisme. \r\nPembentukan Jabatan Fungsional Analis Hukum dimaksudkan untuk menyediakan wadah pengembangan karir bagi PNS yang selama ini melaksanakan tugas analisis dan evaluasi hukum pada Kementerian/LPNK dan Pemda.\r\nTugas analisis dan evaluasi hukum meliputi: analisis dan evaluasi di bidang peraturan perundang-undangan, hukum tidak tertulis, serta permasalahan hukum (audit hukum), pengawasan pelaksanaan PUU (pemantauan dan peninjauan). Pelayanan hukum, perizinan, informasi hukum, dan advokasi hukum, diharapkan Jabatan Fungsional Analis Hukum dapat terus berkembang dan memberikan dampak baik bagi hukum di Indonesia. \r\nUntuk segera terlaksananya operasionalisasi dari Jabatan Fungsional Analis Hukum, maka saat ini BPHN sedang menyusun peraturan-peraturan pelaksana dari terbentuknya Jabatan Fungsional Analis Hukum.', 'berita5f224d3b573f0.jpg', 1, NULL, NULL, NULL, NULL);
INSERT INTO `berita` VALUES (38, '2020-08-10', 'JDIHN Award Menjadi Ajang Kompetisi Antar Anggota', '<p>Medan, Senin (10/8) - Dalam rangka percepatan pembangunan dan integrasi JDIH di wilayah Sumatera Utara, Kantor Wilayah Kemenkumham Sumatera Utara melaksanakan kegiatan Asistensi Penggunaan Layanan Informasi Hukum. Kegiatan yang dilaksanakan di Aula lt. V Kantor Wilayah Kementerian Hukum dan HAM ini dihadiri oleh perwakilan Sekretariat Dewan Perwakilan Rakyat Daerah Provini/Kabupaten/Kota di Provinsi Sumatera Utara, Biro Hukum Sekretariat Daerah Provinsi Sumatera Utara, Bagian Hukum Sekretariat Daerah Kabupaten/Kota di Provinsi Sumatera Utara, Dekan Fakultas Hukum Universitas Negeri/Swasta di Kota Medan.&nbsp;</p>\r\n\r\n<p>Membuka secara langsung kegiatan ini Kepala Divisi Pelayanan Hukum dan HAM Sumatera Utara Purwanto yang dalam hal ini mewakili Kepala Kantor Wilayah Kementerian Hukum dan HAM Sumatera Utara. Hadir dan bertindak sebagai narasumber R. Septyarto Priandono Kepala Bidang Jaringan Informasi Hukum Pusat Dokumentasi dan Jaringan Informasi Hukum Nasional BPHN.</p>\r\n\r\n<p>Septyarto menyampaikan pentingnya JDIH di tengah kebutuhan dokumentasi dan informasi hukum saat ini. &quot;Pimpinan daerah, masyarakat, kalangan civitas akademi dan stakeholder sangat terbantu dengan hadirnya JDIH. Keberadaan JDIH menjadikan dokumen hukum semudah dalam genggaman tangan. JDIH menjadi salah satu tolak ukur untuk menunjukkan apakah kita sudah menjalankan pemerintahan berbasis elektronik atau belum&quot;, tutur Septyarto.</p>\r\n\r\n<p>Lebih lanjut disampaikan Septyarto bahwa JDIH adalah wadah bersama anggota JDIH. &quot;Hadirnya JDIH menjadi sangat berarti ketika seluruh anggota JDIH memiliki website JDIH dan terintegrasi dengan Portal JDIHN. Kami tentu dari Pusat JDIHN terus mendorong kepada seluruh peserta yang belum memiliki website JDIH untuk segera membuat website JDIH. Bagi yang sudah memiliki website, segerakan terintegrasi. Bagi yang terkendala anggaran bisa berkirim surat ke BPHN untuk menggunakan aplikasi ILDIS, free ajukan saja kepada BPHN melalui surat&quot;, ungkap Septyarto.</p>\r\n\r\n<p>Dalam kesempatan yang sama, Septyarto menyampaikan pentingnya pengelola JDIH untuk menunjukkan inovasinya. &quot;JDIHN Award yang digulirkan oleh BPHN dalam beberapa waktu terakhir ini hendaknya menjadi pemacu daerah untuk terus berkompetisi menjadi yang terbaik. Peringkat di klasemen sangat ditentukan oleh kontribusi dan kerjasama antara Biro Hukum Provinsi, Kanwil Kemenkumham dan anggota JDIH di Provinsi tersebut. Kami yakin ke depan Provinsi Sumatera Utara salah satu Provinsi terbesar di Indonesia mampu berada di urutan teratas JDIHN award untuk membangun JDIH menjadi semakin baik lagi&quot;, pungkas Septyarto.</p>', 'berita5f3356d656075.jpeg', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for bidang_hukum
-- ----------------------------
DROP TABLE IF EXISTS `bidang_hukum`;
CREATE TABLE `bidang_hukum`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `integrasi` int(11) NULL DEFAULT 1,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bidang_hukum
-- ----------------------------
INSERT INTO `bidang_hukum` VALUES (12, 'Hukum Tata Negara', '', 2, 1, 1, '2018-09-26 08:10:16', '2018-09-26 08:10:16');
INSERT INTO `bidang_hukum` VALUES (11, 'Hukum Pidana', '', 2, 1, 1, '2018-09-26 08:10:11', '2018-09-26 08:10:11');
INSERT INTO `bidang_hukum` VALUES (9, 'Hukum Perburuhan', '', 2, 1, 1, '2018-09-26 08:10:01', '2018-09-26 08:10:01');
INSERT INTO `bidang_hukum` VALUES (10, 'Hukum Perdata', '', 2, 1, 1, '2018-09-26 08:10:05', '2018-09-26 08:10:05');
INSERT INTO `bidang_hukum` VALUES (8, 'Hukum Lingkungan', '', 2, 1, 1, '2018-09-26 08:09:51', '2018-09-26 08:09:51');
INSERT INTO `bidang_hukum` VALUES (7, 'Hukum Internasional', '', 2, 1, 1, '2018-09-26 08:09:44', '2018-09-26 08:09:44');
INSERT INTO `bidang_hukum` VALUES (5, 'Hukum Dagang', '', 2, 1, 1, '2018-09-26 08:09:34', '2018-09-26 08:09:34');
INSERT INTO `bidang_hukum` VALUES (6, 'Hukum Islam', '', 2, 1, 1, '2018-09-26 08:09:38', '2018-09-26 08:09:38');
INSERT INTO `bidang_hukum` VALUES (4, 'Hukum Agraria', '', 2, 1, 1, '2018-09-26 08:09:28', '2018-09-26 08:09:28');
INSERT INTO `bidang_hukum` VALUES (3, 'Hukum Administrasi Negara', '', 2, 1, 1, '2018-09-20 17:27:01', '2018-09-20 17:27:01');
INSERT INTO `bidang_hukum` VALUES (2, 'Hukum Adat', '', 2, 1, 1, '2018-09-20 17:26:52', '2018-09-20 17:26:52');
INSERT INTO `bidang_hukum` VALUES (1, 'Hukum Umum', '', 2, 1, 1, '2018-08-21 08:14:31', '2018-09-20 17:26:42');
INSERT INTO `bidang_hukum` VALUES (13, 'Himpunan Peraturan', '', 2, 1, 1, '2018-09-26 08:10:30', '2018-09-26 08:10:30');
INSERT INTO `bidang_hukum` VALUES (14, 'Putusan Pengadilan', '', 2, 1, 1, '2018-09-26 08:10:42', '2018-09-26 08:10:42');
INSERT INTO `bidang_hukum` VALUES (15, 'Referensi', '', 2, 1, 1, '2018-09-26 08:10:46', '2018-09-26 08:10:46');
INSERT INTO `bidang_hukum` VALUES (16, 'Hak Asasi Manusia', '1', 2, NULL, NULL, NULL, NULL);
INSERT INTO `bidang_hukum` VALUES (17, 'Hukum Kekayaan Intelektual', '1', 2, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for buku_tamu
-- ----------------------------
DROP TABLE IF EXISTS `buku_tamu`;
CREATE TABLE `buku_tamu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_tamu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `institusi_tamu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_masuk` date NULL DEFAULT NULL,
  `anggota` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for circulation
-- ----------------------------
DROP TABLE IF EXISTS `circulation`;
CREATE TABLE `circulation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NULL DEFAULT NULL,
  `member` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `document_id` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_id` int(11) NULL DEFAULT NULL,
  `item_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tanggal_pinjam` date NULL DEFAULT NULL,
  `tanggal_kembali` date NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `denda` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `status_peminjaman` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 150 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for daerah
-- ----------------------------
DROP TABLE IF EXISTS `daerah`;
CREATE TABLE `daerah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9293 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daerah
-- ----------------------------
INSERT INTO `daerah` VALUES (1, 'Indonesia', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (11, 'Aceh', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (12, 'Sumatera Utara', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (13, 'Sumatera Barat', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (14, 'Riau', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (15, 'Jambi', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (16, 'Sumatera Selatan', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (17, 'Bengkulu', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (18, 'Lampung', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (19, 'Kepulauan Bangka Belitung', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (21, 'Kepulauan Riau', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (31, 'DKI Jakarta', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (32, 'Jawa Barat', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (33, 'Jawa Tengah', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (34, 'DI Yogyakarta', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (35, 'Jawa Timur', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (36, 'Banten', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (51, 'Bali', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (52, 'Nusa Tenggara Barat', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (53, 'Nusa Tenggara Timur', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (61, 'Kalimantan Barat', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (62, 'Kalimantan Tengah', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (63, 'Kalimantan Selatan', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (64, 'Kalimantan Timur', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (65, 'Kalimantan Utara', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (71, 'Sulawesi Utara', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (72, 'Sulawesi Tengah', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (73, 'Sulawesi Selatan', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (74, 'Sulawesi Tenggara', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (75, 'Gorontalo', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (76, 'Sulawesi Barat', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (81, 'Maluku', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (82, 'Maluku Utara', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (91, 'Papua Barat', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (92, 'Papua', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1101, 'KAB. ACEH SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1102, 'KAB. ACEH TENGGARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1103, 'KAB. ACEH TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1104, 'KAB. ACEH TENGAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1105, 'KAB. ACEH BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1106, 'KAB. ACEH BESAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1107, 'KAB. PIDIE', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1108, 'KAB. ACEH UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1109, 'KAB. SIMEULUE', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1110, 'KAB. ACEH SINGKIL', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1111, 'KAB. BIREUEN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1112, 'KAB. ACEH BARAT DAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1113, 'KAB. GAYO LUES', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1114, 'KAB. ACEH JAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1115, 'KAB. NAGAN RAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1116, 'KAB. ACEH TAMIANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1117, 'KAB. BENER MERIAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1118, 'KAB. PIDIE JAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1171, 'KOTA BANDA ACEH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1172, 'KOTA SABANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1173, 'KOTA LHOKSEUMAWE', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1174, 'KOTA LANGSA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1175, 'KOTA SUBULUSSALAM', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1201, 'KAB. TAPANULI TENGAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1202, 'KAB. TAPANULI UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1203, 'KAB. TAPANULI SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1204, 'KAB. NIAS', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1205, 'KAB. LANGKAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1206, 'KAB. KARO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1207, 'KAB. DELI SERDANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1208, 'KAB. SIMALUNGUN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1209, 'KAB. ASAHAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1210, 'KAB. LABUHANBATU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1211, 'KAB. DAIRI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1212, 'KAB. TOBA SAMOSIR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1213, 'KAB. MANDAILING NATAL', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1214, 'KAB. NIAS SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1215, 'KAB. PAKPAK BHARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1216, 'KAB. HUMBANG HASUNDUTAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1217, 'KAB. SAMOSIR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1218, 'KAB. SERDANG BEDAGAI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1219, 'KAB. BATU BARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1220, 'KAB. PADANG LAWAS UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1221, 'KAB. PADANG LAWAS', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1222, 'KAB. LABUHANBATU SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1223, 'KAB. LABUHANBATU UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1224, 'KAB. NIAS UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1225, 'KAB. NIAS BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1271, 'KOTA MEDAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1272, 'KOTA PEMATANG SIANTAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1273, 'KOTA SIBOLGA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1274, 'KOTA TANJUNG BALAI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1275, 'KOTA BINJAI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1276, 'KOTA TEBING TINGGI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1277, 'KOTA PADANGSIDIMPUAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1278, 'KOTA GUNUNGSITOLI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1301, 'KAB. PESISIR SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1302, 'KAB. SOLOK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1303, 'KAB. SIJUNJUNG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1304, 'KAB. TANAH DATAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1305, 'KAB. PADANG PARIAMAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1306, 'KAB. AGAM', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1307, 'KAB. LIMA PULUH KOTA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1308, 'KAB. PASAMAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1309, 'KAB. KEPULAUAN MENTAWAI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1310, 'KAB. DHARMASRAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1311, 'KAB. SOLOK SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1312, 'KAB. PASAMAN BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1371, 'KOTA PADANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1372, 'KOTA SOLOK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1373, 'KOTA SAWAHLUNTO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1374, 'KOTA PADANG PANJANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1375, 'KOTA BUKITTINGGI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1376, 'KOTA PAYAKUMBUH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1377, 'KOTA PARIAMAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1401, 'KAB. KAMPAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1402, 'KAB. INDRAGIRI HULU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1403, 'KAB. BENGKALIS', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1404, 'KAB. INDRAGIRI HILIR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1405, 'KAB. PELALAWAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1406, 'KAB. ROKAN HULU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1407, 'KAB. ROKAN HILIR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1408, 'KAB. SIAK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1409, 'KAB. KUANTAN SINGINGI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1410, 'KAB. KEPULAUAN MERANTI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1471, 'KOTA PEKANBARU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1472, 'KOTA DUMAI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1501, 'KAB. KERINCI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1502, 'KAB. MERANGIN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1503, 'KAB. SAROLANGUN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1504, 'KAB. BATANGHARI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1505, 'KAB. MUARO JAMBI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1506, 'KAB. TANJUNG JABUNG BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1507, 'KAB. TANJUNG JABUNG TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1508, 'KAB. BUNGO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1509, 'KAB. TEBO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1571, 'KOTA JAMBI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1572, 'KOTA SUNGAI PENUH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1601, 'KAB. OGAN KOMERING ULU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1602, 'KAB. OGAN KOMERING ILIR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1603, 'KAB. MUARA ENIM', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1604, 'KAB. LAHAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1605, 'KAB. MUSI RAWAS', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1606, 'KAB. MUSI BANYUASIN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1607, 'KAB. BANYUASIN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1608, 'KAB. OGAN KOMERING ULU TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1609, 'KAB. OGAN KOMERING ULU SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1610, 'KAB. OGAN ILIR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1611, 'KAB. EMPAT LAWANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1612, 'KAB. PENUKAL ABAB LEMATANG ILIR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1613, 'KAB. MUSI RAWAS UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1671, 'KOTA PALEMBANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1672, 'KOTA PAGAR ALAM', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1673, 'KOTA LUBUK LINGGAU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1674, 'KOTA PRABUMULIH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1701, 'KAB. BENGKULU SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1702, 'KAB. REJANG LEBONG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1703, 'KAB. BENGKULU UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1704, 'KAB. KAUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1705, 'KAB. SELUMA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1706, 'KAB. MUKO MUKO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1707, 'KAB. LEBONG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1708, 'KAB. KEPAHIANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1709, 'KAB. BENGKULU TENGAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1771, 'KOTA BENGKULU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1801, 'KAB. LAMPUNG SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1802, 'KAB. LAMPUNG TENGAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1803, 'KAB. LAMPUNG UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1804, 'KAB. LAMPUNG BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1805, 'KAB. TULANG BAWANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1806, 'KAB. TANGGAMUS', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1807, 'KAB. LAMPUNG TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1808, 'KAB. WAY KANAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1809, 'KAB. PESAWARAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1810, 'KAB. PRINGSEWU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1811, 'KAB. MESUJI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1812, 'KAB. TULANG BAWANG BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1813, 'KAB. PESISIR BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1871, 'KOTA BANDAR LAMPUNG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1872, 'KOTA METRO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1901, 'KAB. BANGKA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1902, 'KAB. BELITUNG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1903, 'KAB. BANGKA SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1904, 'KAB. BANGKA TENGAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1905, 'KAB. BANGKA BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1906, 'KAB. BELITUNG TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (1971, 'KOTA PANGKAL PINANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (2101, 'KAB. BINTAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (2102, 'KAB. KARIMUN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (2103, 'KAB. NATUNA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (2104, 'KAB. LINGGA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (2105, 'KAB. KEPULAUAN ANAMBAS', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (2171, 'KOTA BATAM', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (2172, 'KOTA TANJUNG PINANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3101, 'KAB. ADM. KEP. SERIBU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3171, 'KOTA ADM. JAKARTA PUSAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3172, 'KOTA ADM. JAKARTA UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3173, 'KOTA ADM. JAKARTA BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3174, 'KOTA ADM. JAKARTA SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3175, 'KOTA ADM. JAKARTA TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3201, 'KAB. BOGOR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3202, 'KAB. SUKABUMI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3203, 'KAB. CIANJUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3204, 'KAB. BANDUNG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3205, 'KAB. GARUT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3206, 'KAB. TASIKMALAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3207, 'KAB. CIAMIS', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3208, 'KAB. KUNINGAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3209, 'KAB. CIREBON', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3210, 'KAB. MAJALENGKA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3211, 'KAB. SUMEDANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3212, 'KAB. INDRAMAYU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3213, 'KAB. SUBANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3214, 'KAB. PURWAKARTA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3215, 'KAB. KARAWANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3216, 'KAB. BEKASI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3217, 'KAB. BANDUNG BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3218, 'KAB. PANGANDARAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3271, 'KOTA BOGOR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3272, 'KOTA SUKABUMI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3273, 'KOTA BANDUNG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3274, 'KOTA CIREBON', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3275, 'KOTA BEKASI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3276, 'KOTA DEPOK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3277, 'KOTA CIMAHI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3278, 'KOTA TASIKMALAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3279, 'KOTA BANJAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3301, 'KAB. CILACAP', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3302, 'KAB. BANYUMAS', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3303, 'KAB. PURBALINGGA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3304, 'KAB. BANJARNEGARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3305, 'KAB. KEBUMEN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3306, 'KAB. PURWOREJO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3307, 'KAB. WONOSOBO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3308, 'KAB. MAGELANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3309, 'KAB. BOYOLALI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3310, 'KAB. KLATEN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3311, 'KAB. SUKOHARJO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3312, 'KAB. WONOGIRI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3313, 'KAB. KARANGANYAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3314, 'KAB. SRAGEN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3315, 'KAB. GROBOGAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3316, 'KAB. BLORA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3317, 'KAB. REMBANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3318, 'KAB. PATI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3319, 'KAB. KUDUS', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3320, 'KAB. JEPARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3321, 'KAB. DEMAK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3322, 'KAB. SEMARANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3323, 'KAB. TEMANGGUNG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3324, 'KAB. KENDAL', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3325, 'KAB. BATANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3326, 'KAB. PEKALONGAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3327, 'KAB. PEMALANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3328, 'KAB. TEGAL', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3329, 'KAB. BREBES', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3371, 'KOTA MAGELANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3372, 'KOTA SURAKARTA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3373, 'KOTA SALATIGA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3374, 'KOTA SEMARANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3375, 'KOTA PEKALONGAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3376, 'KOTA TEGAL', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3401, 'KAB. KULON PROGO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3402, 'KAB. BANTUL', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3403, 'KAB. GUNUNG KIDUL', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3404, 'KAB. SLEMAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3471, 'KOTA YOGYAKARTA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3501, 'KAB. PACITAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3502, 'KAB. PONOROGO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3503, 'KAB. TRENGGALEK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3504, 'KAB. TULUNGAGUNG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3505, 'KAB. BLITAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3506, 'KAB. KEDIRI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3507, 'KAB. MALANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3508, 'KAB. LUMAJANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3509, 'KAB. JEMBER', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3510, 'KAB. BANYUWANGI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3511, 'KAB. BONDOWOSO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3512, 'KAB. SITUBONDO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3513, 'KAB. PROBOLINGGO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3514, 'KAB. PASURUAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3515, 'KAB. SIDOARJO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3516, 'KAB. MOJOKERTO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3517, 'KAB. JOMBANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3518, 'KAB. NGANJUK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3519, 'KAB. MADIUN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3520, 'KAB. MAGETAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3521, 'KAB. NGAWI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3522, 'KAB. BOJONEGORO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3523, 'KAB. TUBAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3524, 'KAB. LAMONGAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3525, 'KAB. GRESIK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3526, 'KAB. BANGKALAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3527, 'KAB. SAMPANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3528, 'KAB. PAMEKASAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3529, 'KAB. SUMENEP', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3571, 'KOTA KEDIRI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3572, 'KOTA BLITAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3573, 'KOTA MALANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3574, 'KOTA PROBOLINGGO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3575, 'KOTA PASURUAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3576, 'KOTA MOJOKERTO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3577, 'KOTA MADIUN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3578, 'KOTA SURABAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3579, 'KOTA BATU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3601, 'KAB. PANDEGLANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3602, 'KAB. LEBAK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3603, 'KAB. TANGERANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3604, 'KAB. SERANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3671, 'KOTA TANGERANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3672, 'KOTA CILEGON', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3673, 'KOTA SERANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (3674, 'KOTA TANGERANG SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5101, 'KAB. JEMBRANA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5102, 'KAB. TABANAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5103, 'KAB. BADUNG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5104, 'KAB. GIANYAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5105, 'KAB. KLUNGKUNG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5106, 'KAB. BANGLI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5107, 'KAB. KARANGASEM', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5108, 'KAB. BULELENG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5171, 'KOTA DENPASAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5201, 'KAB. LOMBOK BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5202, 'KAB. LOMBOK TENGAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5203, 'KAB. LOMBOK TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5204, 'KAB. SUMBAWA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5205, 'KAB. DOMPU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5206, 'KAB. BIMA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5207, 'KAB. SUMBAWA BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5208, 'KAB. LOMBOK UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5271, 'KOTA MATARAM', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5272, 'KOTA BIMA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5301, 'KAB. KUPANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5302, 'KAB TIMOR TENGAH SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5303, 'KAB. TIMOR TENGAH UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5304, 'KAB. BELU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5305, 'KAB. ALOR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5306, 'KAB. FLORES TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5307, 'KAB. SIKKA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5308, 'KAB. ENDE', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5309, 'KAB. NGADA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5310, 'KAB. MANGGARAI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5311, 'KAB. SUMBA TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5312, 'KAB. SUMBA BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5313, 'KAB. LEMBATA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5314, 'KAB. ROTE NDAO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5315, 'KAB. MANGGARAI BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5316, 'KAB. NAGEKEO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5317, 'KAB. SUMBA TENGAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5318, 'KAB. SUMBA BARAT DAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5319, 'KAB. MANGGARAI TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5320, 'KAB. SABU RAIJUA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5321, 'KAB. MALAKA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (5371, 'KOTA KUPANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6101, 'KAB. SAMBAS', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6102, 'KAB. MEMPAWAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6103, 'KAB. SANGGAU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6104, 'KAB. KETAPANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6105, 'KAB. SINTANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6106, 'KAB. KAPUAS HULU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6107, 'KAB. BENGKAYANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6108, 'KAB. LANDAK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6109, 'KAB. SEKADAU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6110, 'KAB. MELAWI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6111, 'KAB. KAYONG UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6112, 'KAB. KUBU RAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6171, 'KOTA PONTIANAK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6172, 'KOTA SINGKAWANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6201, 'KAB. KOTAWARINGIN BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6202, 'KAB. KOTAWARINGIN TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6203, 'KAB. KAPUAS', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6204, 'KAB. BARITO SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6205, 'KAB. BARITO UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6206, 'KAB. KATINGAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6207, 'KAB. SERUYAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6208, 'KAB. SUKAMARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6209, 'KAB. LAMANDAU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6210, 'KAB. GUNUNG MAS', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6211, 'KAB. PULANG PISAU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6212, 'KAB. MURUNG RAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6213, 'KAB. BARITO TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6271, 'KOTA PALANGKARAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6301, 'KAB. TANAH LAUT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6302, 'KAB. KOTABARU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6303, 'KAB. BANJAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6304, 'KAB. BARITO KUALA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6305, 'KAB. TAPIN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6306, 'KAB. HULU SUNGAI SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6307, 'KAB. HULU SUNGAI TENGAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6308, 'KAB. HULU SUNGAI UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6309, 'KAB. TABALONG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6310, 'KAB. TANAH BUMBU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6311, 'KAB. BALANGAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6371, 'KOTA BANJARMASIN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6372, 'KOTA BANJARBARU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6401, 'KAB. PASER', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6402, 'KAB. KUTAI KARTANEGARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6403, 'KAB. BERAU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6407, 'KAB. KUTAI BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6408, 'KAB. KUTAI TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6409, 'KAB. PENAJAM PASER UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6411, 'KAB. MAHAKAM ULU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6471, 'KOTA BALIKPAPAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6472, 'KOTA SAMARINDA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6474, 'KOTA BONTANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6501, 'KAB. BULUNGAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6502, 'KAB. MALINAU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6503, 'KAB. NUNUKAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6504, 'KAB. TANA TIDUNG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (6571, 'KOTA TARAKAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7101, 'KAB. BOLAANG MONGONDOW', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7102, 'KAB. MINAHASA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7103, 'KAB. KEPULAUAN SANGIHE', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7104, 'KAB. KEPULAUAN TALAUD', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7105, 'KAB. MINAHASA SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7106, 'KAB. MINAHASA UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7107, 'KAB. MINAHASA TENGGARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7108, 'KAB. BOLAANG MONGONDOW UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7109, 'KAB. KEP. SIAU TAGULANDANG BIARO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7110, 'KAB. BOLAANG MONGONDOW TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7111, 'KAB. BOLAANG MONGONDOW SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7171, 'KOTA MANADO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7172, 'KOTA BITUNG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7173, 'KOTA TOMOHON', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7174, 'KOTA KOTAMOBAGU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7201, 'KAB. BANGGAI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7202, 'KAB. POSO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7203, 'KAB. DONGGALA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7204, 'KAB. TOLI TOLI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7205, 'KAB. BUOL', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7206, 'KAB. MOROWALI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7207, 'KAB. BANGGAI KEPULAUAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7208, 'KAB. PARIGI MOUTONG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7209, 'KAB. TOJO UNA UNA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7210, 'KAB. SIGI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7211, 'KAB. BANGGAI LAUT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7212, 'KAB. MOROWALI UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7271, 'KOTA PALU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7301, 'KAB. KEPULAUAN SELAYAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7302, 'KAB. BULUKUMBA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7303, 'KAB. BANTAENG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7304, 'KAB. JENEPONTO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7305, 'KAB. TAKALAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7306, 'KAB. GOWA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7307, 'KAB. SINJAI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7308, 'KAB. BONE', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7309, 'KAB. MAROS', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7310, 'KAB. PANGKAJENE KEPULAUAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7311, 'KAB. BARRU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7312, 'KAB. SOPPENG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7313, 'KAB. WAJO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7314, 'KAB. SIDENRENG RAPPANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7315, 'KAB. PINRANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7316, 'KAB. ENREKANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7317, 'KAB. LUWU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7318, 'KAB. TANA TORAJA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7322, 'KAB. LUWU UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7324, 'KAB. LUWU TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7326, 'KAB. TORAJA UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7371, 'KOTA MAKASSAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7372, 'KOTA PARE PARE', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7373, 'KOTA PALOPO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7401, 'KAB. KOLAKA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7402, 'KAB. KONAWE', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7403, 'KAB. MUNA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7404, 'KAB. BUTON', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7405, 'KAB. KONAWE SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7406, 'KAB. BOMBANA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7407, 'KAB. WAKATOBI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7408, 'KAB. KOLAKA UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7409, 'KAB. KONAWE UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7410, 'KAB. BUTON UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7411, 'KAB. KOLAKA TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7412, 'KAB. KONAWE KEPULAUAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7413, 'KAB. MUNA BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7414, 'KAB. BUTON TENGAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7415, 'KAB. BUTON SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7471, 'KOTA KENDARI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7472, 'KOTA BAU BAU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7501, 'KAB. GORONTALO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7502, 'KAB. BOALEMO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7503, 'KAB. BONE BOLANGO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7504, 'KAB. PAHUWATO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7505, 'KAB. GORONTALO UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7571, 'KOTA GORONTALO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7601, 'KAB. MAMUJU UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7602, 'KAB. MAMUJU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7603, 'KAB. MAMASA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7604, 'KAB. POLEWALI MANDAR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7605, 'KAB. MAJENE', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (7606, 'KAB. MAMUJU TENGAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8101, 'KAB. MALUKU TENGAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8102, 'KAB. MALUKU TENGGARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8103, 'KAB MALUKU TENGGARA BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8104, 'KAB. BURU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8105, 'KAB. SERAM BAGIAN TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8106, 'KAB. SERAM BAGIAN BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8107, 'KAB. KEPULAUAN ARU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8108, 'KAB. MALUKU BARAT DAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8109, 'KAB. BURU SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8171, 'KOTA AMBON', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8172, 'KOTA TUAL', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8201, 'KAB. HALMAHERA BARAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8202, 'KAB. HALMAHERA TENGAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8203, 'KAB. HALMAHERA UTARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8204, 'KAB. HALMAHERA SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8205, 'KAB. KEPULAUAN SULA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8206, 'KAB. HALMAHERA TIMUR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8207, 'KAB. PULAU MOROTAI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8208, 'KAB. PULAU TALIABU', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8271, 'KOTA TERNATE', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (8272, 'KOTA TIDORE KEPULAUAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9101, 'KAB. MERAUKE', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9102, 'KAB. JAYAWIJAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9103, 'KAB. JAYAPURA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9104, 'KAB. NABIRE', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9105, 'KAB. KEPULAUAN YAPEN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9106, 'KAB. BIAK NUMFOR', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9107, 'KAB. PUNCAK JAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9108, 'KAB. PANIAI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9109, 'KAB. MIMIKA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9110, 'KAB. SARMI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9111, 'KAB. KEEROM', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9112, 'KAB PEGUNUNGAN BINTANG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9113, 'KAB. YAHUKIMO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9114, 'KAB. TOLIKARA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9115, 'KAB. WAROPEN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9116, 'KAB. BOVEN DIGOEL', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9117, 'KAB. MAPPI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9118, 'KAB. ASMAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9119, 'KAB. SUPIORI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9120, 'KAB. MAMBERAMO RAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9121, 'KAB. MAMBERAMO TENGAH', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9122, 'KAB. YALIMO', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9123, 'KAB. LANNY JAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9124, 'KAB. NDUGA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9125, 'KAB. PUNCAK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9126, 'KAB. DOGIYAI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9127, 'KAB. INTAN JAYA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9128, 'KAB. DEIYAI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9171, 'KOTA JAYAPURA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9201, 'KAB. SORONG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9202, 'KAB. MANOKWARI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9203, 'KAB. FAK FAK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9204, 'KAB. SORONG SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9205, 'KAB. RAJA AMPAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9206, 'KAB. TELUK BINTUNI', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9207, 'KAB. TELUK WONDAMA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9208, 'KAB. KAIMANA', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9209, 'KAB. TAMBRAUW', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9210, 'KAB. MAYBRAT', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9211, 'KAB. MANOKWARI SELATAN', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9212, 'KAB. PEGUNUNGAN ARFAK', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9271, 'KOTA SORONG', NULL, NULL, NULL, NULL);
INSERT INTO `daerah` VALUES (9272, 'London', '2020-12-21 03:03:35', 12, '2020-12-21 03:03:35', 12);
INSERT INTO `daerah` VALUES (9273, 'California', '2020-12-21 07:43:13', 12, '2020-12-21 07:43:13', 12);
INSERT INTO `daerah` VALUES (9274, 'New York', '2020-12-21 07:44:44', 12, '2020-12-21 07:44:44', 12);
INSERT INTO `daerah` VALUES (9275, 'Hong Kong', '2020-12-21 07:45:24', 29, '2020-12-21 07:45:24', 29);
INSERT INTO `daerah` VALUES (9276, 'New Jersey', '2020-12-21 07:48:17', 29, '2020-12-21 07:48:17', 29);
INSERT INTO `daerah` VALUES (9277, 'St. Louis', '2020-12-21 07:51:29', 12, '2020-12-21 07:51:29', 12);
INSERT INTO `daerah` VALUES (9278, 'Yogyakarta', '2020-12-22 07:23:18', 12, '2020-12-22 07:23:18', 12);
INSERT INTO `daerah` VALUES (9279, 'Jakarta', '2020-12-22 07:26:19', 12, '2020-12-22 07:26:19', 12);
INSERT INTO `daerah` VALUES (9280, 'Bogor', '2020-12-22 07:27:50', 12, '2020-12-22 07:27:50', 12);
INSERT INTO `daerah` VALUES (9281, 'Roma', '2020-12-22 07:44:29', 10, '2020-12-22 07:44:29', 10);
INSERT INTO `daerah` VALUES (9282, 'New York', '2020-12-22 09:19:32', 10, '2020-12-22 09:19:32', 10);
INSERT INTO `daerah` VALUES (9283, 'New Jersey', '2020-12-22 09:19:54', 10, '2020-12-22 09:19:54', 10);
INSERT INTO `daerah` VALUES (9284, 'Boston', '2020-12-22 09:20:12', 10, '2020-12-22 09:20:12', 10);
INSERT INTO `daerah` VALUES (9285, 'Lexington', '2020-12-23 02:47:11', 12, '2020-12-23 02:47:11', 12);
INSERT INTO `daerah` VALUES (9286, 'Harleem', '2020-12-23 02:49:39', 12, '2020-12-23 02:49:39', 12);
INSERT INTO `daerah` VALUES (9287, 'Amsterdam', '2020-12-23 02:54:10', 12, '2020-12-23 02:54:10', 12);
INSERT INTO `daerah` VALUES (9288, 'Kuala Lumpur', '2020-12-23 04:08:29', 12, '2020-12-23 04:08:29', 12);
INSERT INTO `daerah` VALUES (9289, 'Bandung', '2020-12-28 07:45:36', 12, '2020-12-28 07:45:36', 12);
INSERT INTO `daerah` VALUES (9290, 'Tidak diketahui', '2020-12-28 07:55:51', 12, '2020-12-28 07:55:51', 12);
INSERT INTO `daerah` VALUES (9291, 'Utrecht', '2020-12-29 03:56:48', 12, '2020-12-29 03:56:48', 12);
INSERT INTO `daerah` VALUES (9292, 'Minnesota', '2020-12-29 07:10:33', 12, '2020-12-29 07:10:33', 12);

-- ----------------------------
-- Table structure for dasar_hukum
-- ----------------------------
DROP TABLE IF EXISTS `dasar_hukum`;
CREATE TABLE `dasar_hukum`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `dokumen` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dasar_hukum
-- ----------------------------
INSERT INTO `dasar_hukum` VALUES (16, 'Peraturan Presiden Republik Indonesia Nomor 33 Tahun 2012 tentang Jaringan Dokumentasi dan Jaringan Informasi Hukum Nasional.', 'dokumen5d7b55919ddd8.docx', 1);
INSERT INTO `dasar_hukum` VALUES (18, 'Peraturan Mentri Hukum dan Hak Asasi Manusia Nomor 02 Tahun 2013 tentang Standarisasi  Teknis Pengelolaan JDIHN', 'dokumen5db6ba502c589.jpg', 1);
INSERT INTO `dasar_hukum` VALUES (19, 'Peraturan Mentri Hukum dan Hak Asasi Manusia Nomor 30 Tahun 2013 tentang Jaringan Dokumentasi dan Informasi Hukum di Lingkungan Kementrian Hukum dan Hak Asasi Manusia.', 'dokumen5db6bac1ef7b4.jpg', 1);

-- ----------------------------
-- Table structure for data_lampiran
-- ----------------------------
DROP TABLE IF EXISTS `data_lampiran`;
CREATE TABLE `data_lampiran`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokumen` int(11) NOT NULL,
  `judul_lampiran` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_lampiran` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deskripsi_lampiran` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fulltext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `akses_lampiran` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dokumen_lampiran` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pembatasan_lampiran` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT 1,
  `integrasi` int(11) NULL DEFAULT 1,
  `_created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_dokumen`(`id_dokumen`) USING BTREE,
  INDEX `judul_lampiran`(`judul_lampiran`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_lampiran
-- ----------------------------
INSERT INTO `data_lampiran` VALUES (1, 1, 'Bapak Besar Utama', 'http://127.0.0.1/ildis-v3-anggota/ildis-v3/common/dokumen/', NULL, NULL, NULL, '', NULL, 1, 1, '1', '1', '2021-01-05 10:52:45', '2021-01-05 10:52:45', NULL);

-- ----------------------------
-- Table structure for data_pengarang
-- ----------------------------
DROP TABLE IF EXISTS `data_pengarang`;
CREATE TABLE `data_pengarang`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokumen` int(11) NOT NULL,
  `nama_pengarang` int(11) NULL DEFAULT NULL,
  `tipe_pengarang` int(11) NULL DEFAULT NULL,
  `jenis_pengarang` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `integrasi` int(11) NULL DEFAULT 1,
  `_created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` date NULL DEFAULT NULL,
  `updated_at` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_dokumen`(`id_dokumen`) USING BTREE,
  INDEX `nama_pengarang`(`nama_pengarang`) USING BTREE,
  INDEX `idjp_fk`(`jenis_pengarang`) USING BTREE,
  INDEX `idtp_fk`(`tipe_pengarang`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_status
-- ----------------------------
DROP TABLE IF EXISTS `data_status`;
CREATE TABLE `data_status`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokumen` int(11) NOT NULL,
  `status_peraturan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_dokumen_target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `catatan_status_peraturan` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `tanggal_perubahan` datetime(0) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `integrasi` int(11) NULL DEFAULT 1,
  `_created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_dokumen`(`id_dokumen`) USING BTREE,
  INDEX `id_dokumen_target`(`id_dokumen_target`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_subyek
-- ----------------------------
DROP TABLE IF EXISTS `data_subyek`;
CREATE TABLE `data_subyek`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokumen` int(11) NOT NULL,
  `subyek` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tipe_subyek` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jenis_subyek` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `integrasi` int(11) NULL DEFAULT 1,
  `_created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_dokumen`(`id_dokumen`) USING BTREE,
  INDEX `subyek`(`subyek`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for denda
-- ----------------------------
DROP TABLE IF EXISTS `denda`;
CREATE TABLE `denda`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_detail_peminjaman` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tunai` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deskripsi_denda` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_denda` date NULL DEFAULT NULL,
  `member_id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for detail_peminjaman
-- ----------------------------
DROP TABLE IF EXISTS `detail_peminjaman`;
CREATE TABLE `detail_peminjaman`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_peminjaman` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_buku` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_pinjam` date NULL DEFAULT NULL,
  `tgl_kembali` date NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jumlah_perpanjangan` int(255) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for detail_reservasi
-- ----------------------------
DROP TABLE IF EXISTS `detail_reservasi`;
CREATE TABLE `detail_reservasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_reservasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_buku` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_reservasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for document
-- ----------------------------
DROP TABLE IF EXISTS `document`;
CREATE TABLE `document`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipe_dokumen` int(11) NOT NULL,
  `judul` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teu` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `nomor_peraturan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nomor_panggil` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bentuk_peraturan` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `jenis_peraturan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-',
  `singkatan_jenis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-',
  `cetakan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tempat_terbit` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `penerbit` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `tanggal_penetapan` date NULL DEFAULT NULL,
  `deskripsi_fisik` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sumber` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `isbn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bahasa` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bidang_hukum` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `nomor_induk_buku` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `singkatan_bentuk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tipe_koleksi_nomor_eksemplar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pola_nomor_eksemplar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jumlah_eksemplar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kala_terbit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tahun_terbit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tanggal_dibacakan` date NULL DEFAULT NULL,
  `pernyataan_tanggung_jawab` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `edisi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gmd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `judul_seri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `klasifikasi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `info_detil_spesifik` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `abstrak` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `gambar_sampul` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sembunyikan_di_opac` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `promosikan_ke_beranda` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Ya',
  `status_terakhir` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Berlaku',
  `integrasi` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `_created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `inisiatif` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pemrakarsa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tanggal_pengundangan` date NULL DEFAULT NULL,
  `daerah` int(20) NULL DEFAULT NULL,
  `penandatanganan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lembaga_peradilan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pemohon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `termohon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jenis_perkara` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sub_klasifikasi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amar_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `berkekuatan_hukum_tetap` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `urusan_pemerintahan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `catatan_status_peraturan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hit_see` int(255) NULL DEFAULT NULL,
  `hit_download` int(255) NULL DEFAULT NULL,
  `sumber_perolehan` enum('Beli','Hibah') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tipe_dokumen`(`tipe_dokumen`) USING BTREE,
  INDEX `nomor_peraturan`(`nomor_peraturan`) USING BTREE,
  INDEX `tahun_terbit`(`tahun_terbit`) USING BTREE,
  FULLTEXT INDEX `judul`(`judul`)
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for document_terkait
-- ----------------------------
DROP TABLE IF EXISTS `document_terkait`;
CREATE TABLE `document_terkait`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokumen` int(11) NULL DEFAULT NULL,
  `document_terkait` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_docter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `catatan_docter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `integrasi` int(255) NULL DEFAULT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `_created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for document_type
-- ----------------------------
DROP TABLE IF EXISTS `document_type`;
CREATE TABLE `document_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `second_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `singkatan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `integrasi` int(11) NULL DEFAULT 1,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `second_id`(`second_id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 133 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of document_type
-- ----------------------------
INSERT INTO `document_type` VALUES (1, '1', 0, 'PERATURAN PERUNDANG-UNDANGAN', 'PERATURAN PERUNDANG-UNDANGAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (2, '2', 0, 'MONOGRAFI HUKUM', 'MONOGRAFI HUKUM', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (3, '3', 0, 'ARTIKEL/MAJALAH HUKUM', 'ARTIKEL/MAJALAH HUKUM', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (4, '4', 0, 'PUTUSAN', 'PUTUSAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (5, '1:5', 1, 'UNDANG-UNDANG DASAR', 'UUD', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (6, '1:6', 1, 'KETETAPAN MPR', 'TAP MPR', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (7, '1:7', 1, 'UNDANG-UNDANG', 'UU', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (8, '1:8', 1, 'PERATURAN PEMERINTAH PENGGANTI UNDANG-UNDANG', 'PERPPU', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (9, '1:9', 1, 'PERATURAN PEMERINTAH', 'PP', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (10, '1:10', 1, 'PERATURAN PRESIDEN', 'PERPRES', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (11, '1:11', 1, 'KEPUTUSAN PRESIDEN', 'KEPPRES', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (12, '1:12', 1, 'INSTRUKSI PRESIDEN', 'INPRES', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (13, '1:13', 1, 'PENETAPAN PRESIDEN', 'PENPRES', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (14, '1:14', 1, 'UNDANG-UNDANG DARURAT', 'UUDRT', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (15, '1:15', 1, 'PENGATURAN PENGUASA PERANG TERTINGGI', 'PEPERTI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (16, '1:16', 1, 'PERATURAN KEMENTERIAN', 'PERATURAN KEMENTERIAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (17, '1:17', 1, 'PERATURAN LEMBAGA NEGARA', 'PERATURAN LEMBAGA NEGARA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (18, '1:18', 1, 'PERATURAN LEMBAGA PEMERINTAH NON KEMENTERIAN', 'PERATURAN LEMBAGA PEMERINTAH NON KEMENTERIAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (19, '1:19', 1, 'PERATURAN LEMBAGA NON STRUKTURAL', 'PERATURAN LEMBAGA NON STRUKTURAL', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (20, '1:5:20', 5, 'UUD 1945', 'UUD 1945', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (21, '1:5:21', 5, 'KONSTITUSI RIS', 'KONSTITUSI RIS', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (22, '1:5:22', 5, 'UUD 1950', 'UUD 1950', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (23, '1:5:23', 5, 'AMANDEMEN I - V', 'AMANDEMEN I - V', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (24, '1:5:24', 5, 'UUD DALAM SATU NASKAH', 'UUD DALAM SATU NASKAH', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (25, '1:25', 16, 'PERATURAN MENTERI', 'PERMEN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (26, '1:16:26', 16, 'PERATURAN BERSAMA MENTERI', 'PERATURAN BERSAMA MENTERI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (27, '1:27', 16, 'KEPUTUSAN MENTERI', 'KEPMEN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (28, '1:16:28', 16, 'KEPUTUSAN BERSAMA MENTERI', 'KEPUTUSAN BERSAMA MENTERI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (29, '1:16:29', 16, 'INSTRUKSI MENTERI', 'INSTRUKSI MENTERI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (30, '1:16:30', 16, 'INSTRUKSI BERSAMA MENTERI', 'INSTRUKSI BERSAMA MENTERI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (31, '1:31', 16, 'PERATURAN ESELON 1', 'PERATURAN ESELON 1', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (32, '1:32', 16, 'KEPUTUSAN ESELON 1', 'KEPUTUSAN ESELON 1', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (33, '1:17:33', 17, 'PERATURAN DPR', 'PERATURAN DPR', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (34, '1:17:34', 17, 'PERATURAN DPD', 'PERATURAN DPD', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (35, '1:17:35', 17, 'PERATURAN MPR', 'PERATURAN MPR', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (36, '1:17:36', 17, 'PERATURAN MK', 'PERATURAN MK', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (37, '1:17:37', 17, 'PERATURAN MA', 'PERATURAN MA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (38, '1:17:38', 17, 'PERATURAN KY', 'PERATURAN KY', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (39, '1:17:39', 17, 'PERATURAN BPK', 'PERATURAN BPK', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (40, '1:17:40', 17, 'PERATURAN PANGLIMA TNI', 'PERATURAN PANGLIMA TNI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (41, '1:17:41', 17, 'KEPUTUSAN', 'KEPUTUSAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (43, '1:18:43', 18, 'PERATURAN BADAN', 'PERATURAN BADAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (44, '1:18:44', 18, 'PERATURAN LEMBAGA', 'PERATURAN LEMBAGA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (45, '1:18:45', 18, 'PERATURAN KEPALA', 'PERATURAN KEPALA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (46, '1:18:46', 18, 'KEPUTUSAN', 'KEPUTUSAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (47, '1:19:47', 19, 'PERATURAN BADAN', 'PERATURAN BADAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (48, '1:19:48', 19, 'PERATURAN KOMISI', 'PERATURAN KOMISI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (49, '1:19:49', 19, 'PERATURAN DEWAN', 'PERATURAN DEWAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (50, '1:19:50', 19, 'PERATURAN LEMBAGA', 'PERATURAN LEMBAGA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (51, '1:19:51', 19, 'PERATURAN KOMITE', 'PERATURAN KOMITE', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (52, '1:19:52', 19, 'PERATURAN OJK', 'PERATURAN OJK', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (53, '1:19:53', 19, 'PERATURAN PPATK', 'PERATURAN PPATK', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (54, '1:19:54', 19, 'KEPUTUSAN', 'KEPUTUSAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (55, '1:55', 1, 'PERATURAN DAERAH PROVINSI', 'PERATURAN DAERAH PROVINSI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (56, '1:56', 1, 'PERATURAN DAERAH KABUPATEN', 'PERATURAN DAERAH KABUPATEN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (57, '1:57', 1, 'PERATURAN DAERAH KOTA', 'PERATURAN DAERAH KOTA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (58, '1:58', 1, 'PERATURAN DPRD PROVINSI', 'PERATURAN DPRD PROVINSI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (59, '1:59', 1, 'PERATURAN DPRD KABUPATEN', 'PERATURAN DPRD KABUPATEN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (60, '1:60', 1, 'PERATURAN DPRD KOTA', 'PERATURAN DPRD KOTA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (61, '1:61', 1, 'PERATURAN GUBERNUR', 'PERATURAN GUBERNUR', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (62, '1:62', 1, 'PERATURAN BUPATI', 'PERATURAN BUPATI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (63, '1:63', 1, 'PERATURAN WALIKOTA', 'PERATURAN WALIKOTA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (64, '1:64', 1, 'PERATURAN BERSAMA GUBERNUR', 'PERATURAN BERSAMA GUBERNUR', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (65, '1:65', 1, 'PERATURAN DESA', 'PERATURAN DESA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (66, '1:66', 1, 'KEPUTUSAN GUBERNUR', 'KEPUTUSAN GUBERNUR', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (67, '1:67', 1, 'KEPUTUSAN BUPATI', 'KEPUTUSAN BUPATI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (68, '1:68', 1, 'KEPUTUSAN WALIKOTA', 'KEPUTUSAN WALIKOTA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (69, '1:69', 1, 'KEPUTUSAN DPRD', 'KEPUTUSAN DPRD', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (70, '1:70', 1, 'INSTRUKSI GUBERNUR', 'INSTRUKSI GUBERNUR', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (71, '1:71', 1, 'INSTRUKSI BUPATI', 'INSTRUKSI BUPATI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (72, '1:72', 1, 'INSTRUKSI WALIKOTA', 'INSTRUKSI WALIKOTA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (74, '1:74', 1, 'PERATURAN KOLONIAL', 'PERATURAN KOLONIAL', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (75, '2:75', 2, 'BUKU HUKUM', 'BUKU HUKUM', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (76, '2:76', 2, 'NASKAH AKADEMIK KEMENKUMHAM', 'NASKAH AKADEMIK KEMENKUMHAM', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (77, '2:77', 2, 'NASKAH AKADEMIK', 'NASKAH AKADEMIK', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (78, '2:78', 2, 'PENELITIAN HUKUM', 'PENELITIAN HUKUM', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (79, '2:79', 2, 'PENGKAJIAN HUKUM', 'PENGKAJIAN HUKUM', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (80, '2:80', 2, 'PENGKAJIAN KONSTITUSI', 'PENGKAJIAN KONSTITUSI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (81, '2:81', 2, 'PENULISAN KARYA ILMIAH', 'PENULISAN KARYA ILMIAH', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (82, '2:82', 2, 'KOMPENDIUM HUKUM', 'KOMPENDIUM HUKUM', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (83, '2:83', 2, 'ANALISIS DAN EVALUASI', 'ANALISIS DAN EVALUASI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (84, '1:84', 2, 'RANCANGAN PERATURAN PERUNDANG-UNDANGAN', 'RANCANGAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (85, '3:85', 3, 'MAJALAH HUKUM NASIONAL', 'MAJALAH HUKUM NASIONAL', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (86, '3:86', 3, 'MAJALAH HUKUM', 'MAJALAH HUKUM', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (87, '3:87', 3, 'WARTA BPHN', 'WARTA BPHN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (88, '3:88', 3, 'KLIPING MAJALAH KORAN', 'KLIPING MAJALAH KORAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (89, '3:89', 3, 'ARTIKEL HUKUM', 'ARTIKEL HUKUM', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (90, '4:90', 4, 'YURISPRUDENSI', 'YURISPRUDENSI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (91, '4:91', 4, 'PUTUSAN MAHKAMAH AGUNG', 'PUTUSAN MAHKAMAH AGUNG', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (92, '4:92', 4, 'PUTUSAN MAHKAMAH KONSTITUSI', 'PUTUSAN MAHKAMAH KONSTITUSI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (93, '2:84:93', 84, 'RANCANGAN PERATURAN DAERAH', 'RANCANGAN PERATURAN DAERAH', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (94, '2:84:94', 84, 'RANCANGAN PERATURAN DAERAH PROVINSI', 'RANCANGAN PERATURAN DAERAH PROVINSI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (95, '2:84:95', 84, 'RANCANGAN PERATURAN DAERAH KABUPATEN', 'RANCANGAN PERATURAN DAERAH KABUPATEN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (96, '2:84:96', 84, 'RANCANGAN PERATURAN DAERAH KOTA', 'RANCANGAN PERATURAN DAERAH KOTA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (97, '2:84:97', 84, 'RANCANGAN PERATURAN GUBERNUR', 'RANCANGAN PERATURAN GUBERNUR', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (98, '2:84:98', 84, 'RANCANGAN PERATURAN BUPATI', 'RANCANGAN PERATURAN BUPATI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (99, '2:84:99', 84, 'RANCANGAN PERATURAN WALIKOTA', 'RANCANGAN PERATURAN WALIKOTA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (100, '100:100', 0, 'PERJANJIAN', 'PERJANJIAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (101, '1:101', 100, 'MEMORANDUM OF UNDERSTANDING', 'MOU', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (102, '1:102', 100, 'PERJANJIAN KERJASAMA', 'PERJANJIAN KERJASAMA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (103, '1:103', 18, 'SURAT EDARAN', 'SE', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (104, '1:18:104', 18, 'INSTRUKSI', 'INSTRUKSI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (105, '1:18:105', 18, 'MEMORANDUM ', 'MEMORANDUM OF UNDERSTANDING', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (106, '1:17:106', 17, 'PERATURAN BERSAMA', 'PERATURAN BERSAMA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (107, '1:18:107', 18, 'KEPUTUSAN SETINGKAT ESELON 1', 'KEPUTUSAN SETINGKAT ESELON 1', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (108, '2:108', 2, 'HIMPUNAN', 'HIMPUNAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (109, '1:109', 1, 'STAATSBLAD', 'STAATSBLAD', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (110, '1:110', 1, 'OSAMU SEIRE', 'OSAMU SEIRE', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (111, '1:111', 1, 'OSAMU KANREI', 'OSAMU KANREI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (112, '3:112', 2, 'INDONESIAN LAW JOURNAL', 'LAPORAN KEGIATAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (113, '2:113', 2, 'KOLEKSI LANGKA', 'KOLEKSI LANGKA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (114, '2:114', 2, 'LOKAKARYA', 'LOKAKARYA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (115, '2:115', 2, 'HIMPUNAN PERATURAN', 'HIMPUNAN PERATURAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (116, '2:116', 2, 'DOKUMEN PEMBANGUNAN HUKUM NASIONAL', 'DOKUMEN PEMBANGUNAN HUKUM NASIONAL', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (117, '3:117', 3, 'OPINI PAKAR HUKUM', 'OPINI PAKAR HUKUM', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (118, '1:118', 1, 'STATUTEN', 'STATUTEN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (119, '1:119', 1, 'JUKLAK/JUKNIS', 'JUKLAK/JUKNIS', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (120, '2:120', 2, 'REFERENSI', 'REFERENSI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (121, '2:121', 2, 'BUKU SAKU', 'BUKU SAKU', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (123, '3:123', 3, 'KONVENSI', 'KONVENSI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (124, '3:124', 3, 'STATUTA', 'STATUTA', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (125, '3:125', 3, 'PROTOKOL', 'PROTOKOL', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (126, '3:126', 3, 'PIAGAM/CHARTER', 'PIAGAM/CHARTER', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (127, '3:127', 3, 'HUKUM TIDAK TERTULIS', 'HUKUM TIDAK TERTULIS', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (128, '3:128', 3, 'KOVENAN', 'KOVENAN', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (129, '3:129', 3, 'DEKLARASI', 'DEKLARASI', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (130, '3:130', 3, 'AGREEMENT', 'AGREEMENT', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (131, '3:131', 3, 'TREATY', 'TREATY', NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `document_type` VALUES (132, '2:132', 2, 'BUKU UMUM', 'BUKU UMUM', NULL, 1, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for download_counter
-- ----------------------------
DROP TABLE IF EXISTS `download_counter`;
CREATE TABLE `download_counter`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identifier` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT 1,
  `_created_by` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_time` datetime(0) NULL DEFAULT NULL,
  `_updated_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for eksemplar
-- ----------------------------
DROP TABLE IF EXISTS `eksemplar`;
CREATE TABLE `eksemplar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokumen` int(11) NULL DEFAULT NULL,
  `kode_eksemplar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_panggil` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_inventaris` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lokasi_rak` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tipe_lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_eksemplar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nomor_pemesanan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_pemesanan` date NULL DEFAULT NULL,
  `tgl_penerimaan` date NULL DEFAULT NULL,
  `agen` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sumber_perolehan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `faktur` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_faktur` date NULL DEFAULT NULL,
  `harga` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_dokumen`(`id_dokumen`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gmd
-- ----------------------------
DROP TABLE IF EXISTS `gmd`;
CREATE TABLE `gmd`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gmd
-- ----------------------------
INSERT INTO `gmd` VALUES (13, 'Manuscript', NULL, '1', '1', '2018-08-21 08:27:51', '2018-08-21 08:27:51');
INSERT INTO `gmd` VALUES (12, 'Microform', NULL, '1', '1', '2018-08-21 08:27:47', '2018-08-21 08:27:47');
INSERT INTO `gmd` VALUES (11, 'Map', NULL, '1', '1', '2018-08-21 08:27:31', '2018-08-21 08:27:31');
INSERT INTO `gmd` VALUES (10, 'Kit', NULL, '1', '1', '2018-08-21 08:27:29', '2018-08-21 08:27:29');
INSERT INTO `gmd` VALUES (9, 'Globe', NULL, '1', '1', '2018-08-21 08:27:26', '2018-08-21 08:27:26');
INSERT INTO `gmd` VALUES (8, 'Game', NULL, '1', '1', '2018-08-21 08:27:23', '2018-08-21 08:27:23');
INSERT INTO `gmd` VALUES (7, 'Flash Card', NULL, '1', '1', '2018-08-21 08:27:11', '2018-08-21 08:27:11');
INSERT INTO `gmd` VALUES (6, 'Film Strip', NULL, '1', '1', '2018-08-21 08:27:07', '2018-08-21 08:27:07');
INSERT INTO `gmd` VALUES (5, 'Diorama', NULL, '1', '1', '2018-08-21 08:26:55', '2018-08-21 08:26:55');
INSERT INTO `gmd` VALUES (4, 'Computer Software', NULL, '1', '1', '2018-08-21 08:26:50', '2018-08-21 08:26:50');
INSERT INTO `gmd` VALUES (3, 'Chart', NULL, '1', '1', '2018-08-21 08:26:37', '2018-08-21 08:26:37');
INSERT INTO `gmd` VALUES (2, 'Art Original', NULL, '1', '1', '2018-08-21 08:26:33', '2018-08-21 08:26:33');
INSERT INTO `gmd` VALUES (1, '--PILIH SEMUA--', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `gmd` VALUES (14, 'Model', NULL, '1', '1', '2018-08-21 08:28:02', '2018-08-21 08:28:02');
INSERT INTO `gmd` VALUES (15, 'Motion Picture', NULL, '1', '1', '2018-08-21 08:28:08', '2018-08-21 08:28:08');
INSERT INTO `gmd` VALUES (16, 'Microscope Slide', NULL, '1', '1', '2018-08-21 08:28:42', '2018-08-21 08:28:42');
INSERT INTO `gmd` VALUES (17, 'Text', NULL, '4', '4', '2019-05-13 11:03:04', '2019-05-13 11:03:04');

-- ----------------------------
-- Table structure for gmd_
-- ----------------------------
DROP TABLE IF EXISTS `gmd_`;
CREATE TABLE `gmd_`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gmd_
-- ----------------------------
INSERT INTO `gmd_` VALUES (1, 'Art Original', NULL, '1', '1', '2018-08-21 08:26:33', '2018-08-21 08:26:33');
INSERT INTO `gmd_` VALUES (2, 'Chart', NULL, '1', '1', '2018-08-21 08:26:37', '2018-08-21 08:26:37');
INSERT INTO `gmd_` VALUES (3, 'Computer Software', NULL, '1', '1', '2018-08-21 08:26:50', '2018-08-21 08:26:50');
INSERT INTO `gmd_` VALUES (4, 'Diorama', NULL, '1', '1', '2018-08-21 08:26:55', '2018-08-21 08:26:55');
INSERT INTO `gmd_` VALUES (5, 'Film Strip', NULL, '1', '1', '2018-08-21 08:27:07', '2018-08-21 08:27:07');
INSERT INTO `gmd_` VALUES (6, 'Flash Card', NULL, '1', '1', '2018-08-21 08:27:11', '2018-08-21 08:27:11');
INSERT INTO `gmd_` VALUES (7, 'Game', NULL, '1', '1', '2018-08-21 08:27:23', '2018-08-21 08:27:23');
INSERT INTO `gmd_` VALUES (8, 'Globe', NULL, '1', '1', '2018-08-21 08:27:26', '2018-08-21 08:27:26');
INSERT INTO `gmd_` VALUES (9, 'Kit', NULL, '1', '1', '2018-08-21 08:27:29', '2018-08-21 08:27:29');
INSERT INTO `gmd_` VALUES (10, 'Map', NULL, '1', '1', '2018-08-21 08:27:31', '2018-08-21 08:27:31');
INSERT INTO `gmd_` VALUES (11, 'Microform', NULL, '1', '1', '2018-08-21 08:27:47', '2018-08-21 08:27:47');
INSERT INTO `gmd_` VALUES (12, 'Manuscript', NULL, '1', '1', '2018-08-21 08:27:51', '2018-08-21 08:27:51');
INSERT INTO `gmd_` VALUES (13, 'Model', NULL, '1', '1', '2018-08-21 08:28:02', '2018-08-21 08:28:02');
INSERT INTO `gmd_` VALUES (14, 'Motion Picture', NULL, '1', '1', '2018-08-21 08:28:08', '2018-08-21 08:28:08');
INSERT INTO `gmd_` VALUES (15, 'Microscope Slide', NULL, '1', '1', '2018-08-21 08:28:42', '2018-08-21 08:28:42');
INSERT INTO `gmd_` VALUES (16, 'Text', NULL, '4', '4', '2019-05-13 11:03:04', '2019-05-13 11:03:04');

-- ----------------------------
-- Table structure for hasil_uji_materi
-- ----------------------------
DROP TABLE IF EXISTS `hasil_uji_materi`;
CREATE TABLE `hasil_uji_materi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokumen` int(11) NOT NULL,
  `hasil_uji_materi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_hasum` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `catatan_hasum` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `integrasi` int(255) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `_created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hit_counter
-- ----------------------------
DROP TABLE IF EXISTS `hit_counter`;
CREATE TABLE `hit_counter`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identifier` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT 1,
  `_created_by` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_time` datetime(0) NULL DEFAULT NULL,
  `_updated_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for inisialisasi
-- ----------------------------
DROP TABLE IF EXISTS `inisialisasi`;
CREATE TABLE `inisialisasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_inisialisasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gmd` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tipe_koleksi` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lokasi` int(11) NULL DEFAULT NULL,
  `lokasi_rak` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `klasifikasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_dimulai` date NULL DEFAULT NULL,
  `tanggal_berakhir` date NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL,
  `pelaksana` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for integrasi
-- ----------------------------
DROP TABLE IF EXISTS `integrasi`;
CREATE TABLE `integrasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `_created_by` int(11) NULL DEFAULT NULL,
  `_updated_by` int(11) NULL DEFAULT NULL,
  `_created_time` datetime(0) NOT NULL,
  `_updated_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokumen` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `call_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `coll_type_id` int(3) NULL DEFAULT NULL,
  `item_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `inventory_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `received_date` date NULL DEFAULT NULL,
  `supplier_id` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `order_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `location_id` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `order_date` date NULL DEFAULT NULL,
  `item_status_id` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `site` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `source` int(11) NULL DEFAULT 0,
  `invoice` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `price` varchar(155) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `price_currency` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `invoice_date` date NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `_created_by` int(11) NULL DEFAULT NULL,
  `_updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `gmd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `item_code`(`item_code`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `item_references_idx`(`coll_type_id`, `location_id`, `item_status_id`) USING BTREE,
  INDEX `biblio_id_idx`(`id_dokumen`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jenis_pengarang
-- ----------------------------
DROP TABLE IF EXISTS `jenis_pengarang`;
CREATE TABLE `jenis_pengarang`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orders` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jenis_pengarang
-- ----------------------------
INSERT INTO `jenis_pengarang` VALUES (9, 'Pencipta', '', '9', 1, 1, '2018-08-29 00:00:00', '2018-08-29 00:00:00');
INSERT INTO `jenis_pengarang` VALUES (8, 'Ilustrator', '', '8', 1, 1, '2018-08-29 00:00:00', '2018-08-29 00:00:00');
INSERT INTO `jenis_pengarang` VALUES (7, 'Pengubah', '', '7', 1, 1, '2018-08-29 00:00:00', '2018-08-29 00:00:00');
INSERT INTO `jenis_pengarang` VALUES (6, 'Produser', '', '6', 1, 1, '2018-08-29 00:00:00', '2018-08-29 00:00:00');
INSERT INTO `jenis_pengarang` VALUES (5, 'Direktur', '', '5', 1, 1, '2018-08-29 00:00:00', '2018-08-29 00:00:00');
INSERT INTO `jenis_pengarang` VALUES (4, 'Penerjemah', '', '4', 1, 1, '2018-08-29 00:00:00', '2018-08-29 00:00:00');
INSERT INTO `jenis_pengarang` VALUES (3, 'Penyunting', '', '3', 1, 1, '2018-08-29 00:00:00', '2018-08-29 00:00:00');
INSERT INTO `jenis_pengarang` VALUES (2, 'Pengarang Tambahan', '', '2', 1, 1, '2018-08-29 00:00:00', '2018-08-29 00:00:00');
INSERT INTO `jenis_pengarang` VALUES (1, 'Pengarang Utama', '', '1', 1, 1, '2018-08-29 00:00:00', '2018-08-29 00:00:00');
INSERT INTO `jenis_pengarang` VALUES (10, 'Kontributor', '', '10', 1, 1, '2018-08-29 00:00:00', '2018-08-29 00:00:00');

-- ----------------------------
-- Table structure for kabupaten
-- ----------------------------
DROP TABLE IF EXISTS `kabupaten`;
CREATE TABLE `kabupaten`  (
  `id` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `province_id` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NULL DEFAULT NULL,
  `updated_at` date NULL DEFAULT NULL,
  `id_kab` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `regencies_province_id_index`(`province_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kabupaten
-- ----------------------------
INSERT INTO `kabupaten` VALUES ('7171', '71', 'KOTA MANADO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7111', '71', 'KABUPATEN BOLAANG MONGONDOW TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7110', '71', 'KABUPATEN BOLAANG MONGONDOW SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7109', '71', 'KABUPATEN MINAHASA TENGGARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7108', '71', 'KABUPATEN SIAU TAGULANDANG BIARO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7107', '71', 'KABUPATEN BOLAANG MONGONDOW UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7106', '71', 'KABUPATEN MINAHASA UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7105', '71', 'KABUPATEN MINAHASA SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7104', '71', 'KABUPATEN KEPULAUAN TALAUD', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7103', '71', 'KABUPATEN KEPULAUAN SANGIHE', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7102', '71', 'KABUPATEN MINAHASA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7101', '71', 'KABUPATEN BOLAANG MONGONDOW', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6571', '65', 'KOTA TARAKAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6504', '65', 'KABUPATEN NUNUKAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6503', '65', 'KABUPATEN TANA TIDUNG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6502', '65', 'KABUPATEN BULUNGAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6501', '65', 'KABUPATEN MALINAU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6474', '64', 'KOTA BONTANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6472', '64', 'KOTA SAMARINDA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6471', '64', 'KOTA BALIKPAPAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6411', '64', 'KABUPATEN MAHAKAM HULU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6409', '64', 'KABUPATEN PENAJAM PASER UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6405', '64', 'KABUPATEN BERAU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6404', '64', 'KABUPATEN KUTAI TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6403', '64', 'KABUPATEN KUTAI KARTANEGARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6402', '64', 'KABUPATEN KUTAI BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6401', '64', 'KABUPATEN PASER', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6372', '63', 'KOTA BANJAR BARU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6371', '63', 'KOTA BANJARMASIN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6311', '63', 'KABUPATEN BALANGAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6310', '63', 'KABUPATEN TANAH BUMBU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6309', '63', 'KABUPATEN TABALONG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6308', '63', 'KABUPATEN HULU SUNGAI UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6307', '63', 'KABUPATEN HULU SUNGAI TENGAH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6306', '63', 'KABUPATEN HULU SUNGAI SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6305', '63', 'KABUPATEN TAPIN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6304', '63', 'KABUPATEN BARITO KUALA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6303', '63', 'KABUPATEN BANJAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6302', '63', 'KABUPATEN KOTA BARU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6301', '63', 'KABUPATEN TANAH LAUT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6271', '62', 'KOTA PALANGKA RAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6213', '62', 'KABUPATEN MURUNG RAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6212', '62', 'KABUPATEN BARITO TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6211', '62', 'KABUPATEN GUNUNG MAS', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6210', '62', 'KABUPATEN PULANG PISAU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6209', '62', 'KABUPATEN KATINGAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6208', '62', 'KABUPATEN SERUYAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6207', '62', 'KABUPATEN LAMANDAU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6206', '62', 'KABUPATEN SUKAMARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6205', '62', 'KABUPATEN BARITO UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6204', '62', 'KABUPATEN BARITO SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6203', '62', 'KABUPATEN KAPUAS', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6202', '62', 'KABUPATEN KOTAWARINGIN TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6201', '62', 'KABUPATEN KOTAWARINGIN BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6172', '61', 'KOTA SINGKAWANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6171', '61', 'KOTA PONTIANAK', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6112', '61', 'KABUPATEN KUBU RAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6111', '61', 'KABUPATEN KAYONG UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6110', '61', 'KABUPATEN MELAWI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6109', '61', 'KABUPATEN SEKADAU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6108', '61', 'KABUPATEN KAPUAS HULU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6107', '61', 'KABUPATEN SINTANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6106', '61', 'KABUPATEN KETAPANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6105', '61', 'KABUPATEN SANGGAU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6104', '61', 'KABUPATEN MEMPAWAH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6103', '61', 'KABUPATEN LANDAK', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6102', '61', 'KABUPATEN BENGKAYANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('6101', '61', 'KABUPATEN SAMBAS', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5371', '53', 'KOTA KUPANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5321', '53', 'KABUPATEN MALAKA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5320', '53', 'KABUPATEN SABU RAIJUA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5319', '53', 'KABUPATEN MANGGARAI TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5318', '53', 'KABUPATEN NAGEKEO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5317', '53', 'KABUPATEN SUMBA BARAT DAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5316', '53', 'KABUPATEN SUMBA TENGAH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5315', '53', 'KABUPATEN MANGGARAI BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5314', '53', 'KABUPATEN ROTE NDAO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5313', '53', 'KABUPATEN MANGGARAI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5312', '53', 'KABUPATEN NGADA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5311', '53', 'KABUPATEN ENDE', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5310', '53', 'KABUPATEN SIKKA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5309', '53', 'KABUPATEN FLORES TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5308', '53', 'KABUPATEN LEMBATA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5307', '53', 'KABUPATEN ALOR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5306', '53', 'KABUPATEN BELU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5305', '53', 'KABUPATEN TIMOR TENGAH UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5304', '53', 'KABUPATEN TIMOR TENGAH SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5303', '53', 'KABUPATEN KUPANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5302', '53', 'KABUPATEN SUMBA TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5301', '53', 'KABUPATEN SUMBA BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5272', '52', 'KOTA BIMA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5271', '52', 'KOTA MATARAM', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5208', '52', 'KABUPATEN LOMBOK UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5207', '52', 'KABUPATEN SUMBAWA BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5206', '52', 'KABUPATEN BIMA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5205', '52', 'KABUPATEN DOMPU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5204', '52', 'KABUPATEN SUMBAWA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5203', '52', 'KABUPATEN LOMBOK TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5202', '52', 'KABUPATEN LOMBOK TENGAH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5201', '52', 'KABUPATEN LOMBOK BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5171', '51', 'KOTA DENPASAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5108', '51', 'KABUPATEN BULELENG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5107', '51', 'KABUPATEN KARANG ASEM', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5106', '51', 'KABUPATEN BANGLI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5105', '51', 'KABUPATEN KLUNGKUNG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5104', '51', 'KABUPATEN GIANYAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5103', '51', 'KABUPATEN BADUNG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5102', '51', 'KABUPATEN TABANAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('5101', '51', 'KABUPATEN JEMBRANA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3674', '36', 'KOTA TANGERANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3673', '36', 'KOTA SERANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3672', '36', 'KOTA CILEGON', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3671', '36', 'KOTA TANGERANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3604', '36', 'KABUPATEN SERANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3603', '36', 'KABUPATEN TANGERANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3602', '36', 'KABUPATEN LEBAK', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3601', '36', 'KABUPATEN PANDEGLANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3579', '35', 'KOTA BATU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3578', '35', 'KOTA SURABAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3577', '35', 'KOTA MADIUN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3576', '35', 'KOTA MOJOKERTO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3575', '35', 'KOTA PASURUAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3574', '35', 'KOTA PROBOLINGGO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3573', '35', 'KOTA MALANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3572', '35', 'KOTA BLITAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3571', '35', 'KOTA KEDIRI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3529', '35', 'KABUPATEN SUMENEP', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3528', '35', 'KABUPATEN PAMEKASAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3527', '35', 'KABUPATEN SAMPANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3526', '35', 'KABUPATEN BANGKALAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3525', '35', 'KABUPATEN GRESIK', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3524', '35', 'KABUPATEN LAMONGAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3523', '35', 'KABUPATEN TUBAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3522', '35', 'KABUPATEN BOJONEGORO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3521', '35', 'KABUPATEN NGAWI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3520', '35', 'KABUPATEN MAGETAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3519', '35', 'KABUPATEN MADIUN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3518', '35', 'KABUPATEN NGANJUK', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3517', '35', 'KABUPATEN JOMBANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3516', '35', 'KABUPATEN MOJOKERTO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3515', '35', 'KABUPATEN SIDOARJO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3514', '35', 'KABUPATEN PASURUAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3513', '35', 'KABUPATEN PROBOLINGGO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3512', '35', 'KABUPATEN SITUBONDO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3511', '35', 'KABUPATEN BONDOWOSO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3510', '35', 'KABUPATEN BANYUWANGI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3509', '35', 'KABUPATEN JEMBER', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3508', '35', 'KABUPATEN LUMAJANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3507', '35', 'KABUPATEN MALANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3506', '35', 'KABUPATEN KEDIRI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3505', '35', 'KABUPATEN BLITAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3504', '35', 'KABUPATEN TULUNGAGUNG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3503', '35', 'KABUPATEN TRENGGALEK', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3502', '35', 'KABUPATEN PONOROGO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3501', '35', 'KABUPATEN PACITAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3471', '34', 'KOTA YOGYAKARTA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3404', '34', 'KABUPATEN SLEMAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3403', '34', 'KABUPATEN GUNUNG KIDUL', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3402', '34', 'KABUPATEN BANTUL', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3401', '34', 'KABUPATEN KULON PROGO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3376', '33', 'KOTA TEGAL', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3375', '33', 'KOTA PEKALONGAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3374', '33', 'KOTA SEMARANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3373', '33', 'KOTA SALATIGA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3372', '33', 'KOTA SURAKARTA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3371', '33', 'KOTA MAGELANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3329', '33', 'KABUPATEN BREBES', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3328', '33', 'KABUPATEN TEGAL', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3327', '33', 'KABUPATEN PEMALANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3326', '33', 'KABUPATEN PEKALONGAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3325', '33', 'KABUPATEN BATANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3324', '33', 'KABUPATEN KENDAL', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3323', '33', 'KABUPATEN TEMANGGUNG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3322', '33', 'KABUPATEN SEMARANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3321', '33', 'KABUPATEN DEMAK', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3320', '33', 'KABUPATEN JEPARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3319', '33', 'KABUPATEN KUDUS', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3318', '33', 'KABUPATEN PATI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3317', '33', 'KABUPATEN REMBANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3316', '33', 'KABUPATEN BLORA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3315', '33', 'KABUPATEN GROBOGAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3314', '33', 'KABUPATEN SRAGEN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3313', '33', 'KABUPATEN KARANGANYAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3312', '33', 'KABUPATEN WONOGIRI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3311', '33', 'KABUPATEN SUKOHARJO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3310', '33', 'KABUPATEN KLATEN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3309', '33', 'KABUPATEN BOYOLALI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3308', '33', 'KABUPATEN MAGELANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3307', '33', 'KABUPATEN WONOSOBO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3306', '33', 'KABUPATEN PURWOREJO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3305', '33', 'KABUPATEN KEBUMEN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3304', '33', 'KABUPATEN BANJARNEGARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3303', '33', 'KABUPATEN PURBALINGGA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3302', '33', 'KABUPATEN BANYUMAS', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3301', '33', 'KABUPATEN CILACAP', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3279', '32', 'KOTA BANJAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3278', '32', 'KOTA TASIKMALAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3277', '32', 'KOTA CIMAHI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3276', '32', 'KOTA DEPOK', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3275', '32', 'KOTA BEKASI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3274', '32', 'KOTA CIREBON', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3273', '32', 'KOTA BANDUNG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3272', '32', 'KOTA SUKABUMI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3271', '32', 'KOTA BOGOR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3218', '32', 'KABUPATEN PANGANDARAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3217', '32', 'KABUPATEN BANDUNG BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3216', '32', 'KABUPATEN BEKASI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3215', '32', 'KABUPATEN KARAWANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3214', '32', 'KABUPATEN PURWAKARTA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3213', '32', 'KABUPATEN SUBANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3212', '32', 'KABUPATEN INDRAMAYU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3211', '32', 'KABUPATEN SUMEDANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3210', '32', 'KABUPATEN MAJALENGKA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3209', '32', 'KABUPATEN CIREBON', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3208', '32', 'KABUPATEN KUNINGAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3207', '32', 'KABUPATEN CIAMIS', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3206', '32', 'KABUPATEN TASIKMALAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3205', '32', 'KABUPATEN GARUT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3204', '32', 'KABUPATEN BANDUNG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3203', '32', 'KABUPATEN CIANJUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3202', '32', 'KABUPATEN SUKABUMI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3201', '32', 'KABUPATEN BOGOR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3175', '31', 'KOTA JAKARTA UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3174', '31', 'KOTA JAKARTA BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3173', '31', 'KOTA JAKARTA PUSAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3172', '31', 'KOTA JAKARTA TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3171', '31', 'KOTA JAKARTA SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('3101', '31', 'KABUPATEN KEPULAUAN SERIBU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('2172', '21', 'KOTA TANJUNG PINANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('2171', '21', 'KOTA B A T A M', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('2105', '21', 'KABUPATEN KEPULAUAN ANAMBAS', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('2104', '21', 'KABUPATEN LINGGA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('2103', '21', 'KABUPATEN NATUNA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('2102', '21', 'KABUPATEN BINTAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('2101', '21', 'KABUPATEN KARIMUN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1971', '19', 'KOTA PANGKAL PINANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1906', '19', 'KABUPATEN BELITUNG TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1905', '19', 'KABUPATEN BANGKA SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1904', '19', 'KABUPATEN BANGKA TENGAH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1903', '19', 'KABUPATEN BANGKA BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1902', '19', 'KABUPATEN BELITUNG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1901', '19', 'KABUPATEN BANGKA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1872', '18', 'KOTA METRO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1871', '18', 'KOTA BANDAR LAMPUNG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1813', '18', 'KABUPATEN PESISIR BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1812', '18', 'KABUPATEN TULANG BAWANG BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1811', '18', 'KABUPATEN MESUJI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1810', '18', 'KABUPATEN PRINGSEWU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1809', '18', 'KABUPATEN PESAWARAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1808', '18', 'KABUPATEN TULANGBAWANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1807', '18', 'KABUPATEN WAY KANAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1806', '18', 'KABUPATEN LAMPUNG UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1805', '18', 'KABUPATEN LAMPUNG TENGAH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1804', '18', 'KABUPATEN LAMPUNG TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1803', '18', 'KABUPATEN LAMPUNG SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1802', '18', 'KABUPATEN TANGGAMUS', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1801', '18', 'KABUPATEN LAMPUNG BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1771', '17', 'KOTA BENGKULU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1709', '17', 'KABUPATEN BENGKULU TENGAH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1708', '17', 'KABUPATEN KEPAHIANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1707', '17', 'KABUPATEN LEBONG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1706', '17', 'KABUPATEN MUKOMUKO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1705', '17', 'KABUPATEN SELUMA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1704', '17', 'KABUPATEN KAUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1703', '17', 'KABUPATEN BENGKULU UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1702', '17', 'KABUPATEN REJANG LEBONG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1701', '17', 'KABUPATEN BENGKULU SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1674', '16', 'KOTA LUBUKLINGGAU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1673', '16', 'KOTA PAGAR ALAM', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1672', '16', 'KOTA PRABUMULIH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1671', '16', 'KOTA PALEMBANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1613', '16', 'KABUPATEN MUSI RAWAS UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1612', '16', 'KABUPATEN PENUKAL ABAB LEMATANG ILIR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1611', '16', 'KABUPATEN EMPAT LAWANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1610', '16', 'KABUPATEN OGAN ILIR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1609', '16', 'KABUPATEN OGAN KOMERING ULU TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1608', '16', 'KABUPATEN OGAN KOMERING ULU SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1607', '16', 'KABUPATEN BANYU ASIN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1606', '16', 'KABUPATEN MUSI BANYUASIN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1605', '16', 'KABUPATEN MUSI RAWAS', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1604', '16', 'KABUPATEN LAHAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1603', '16', 'KABUPATEN MUARA ENIM', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1602', '16', 'KABUPATEN OGAN KOMERING ILIR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1601', '16', 'KABUPATEN OGAN KOMERING ULU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1572', '15', 'KOTA SUNGAI PENUH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1571', '15', 'KOTA JAMBI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1509', '15', 'KABUPATEN BUNGO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1508', '15', 'KABUPATEN TEBO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1507', '15', 'KABUPATEN TANJUNG JABUNG BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1506', '15', 'KABUPATEN TANJUNG JABUNG TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1505', '15', 'KABUPATEN MUARO JAMBI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1504', '15', 'KABUPATEN BATANG HARI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1503', '15', 'KABUPATEN SAROLANGUN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1502', '15', 'KABUPATEN MERANGIN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1501', '15', 'KABUPATEN KERINCI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1473', '14', 'KOTA D U M A I', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1471', '14', 'KOTA PEKANBARU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1410', '14', 'KABUPATEN KEPULAUAN MERANTI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1409', '14', 'KABUPATEN ROKAN HILIR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1408', '14', 'KABUPATEN BENGKALIS', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1407', '14', 'KABUPATEN ROKAN HULU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1406', '14', 'KABUPATEN KAMPAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1405', '14', 'KABUPATEN S I A K', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1404', '14', 'KABUPATEN PELALAWAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1403', '14', 'KABUPATEN INDRAGIRI HILIR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1402', '14', 'KABUPATEN INDRAGIRI HULU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1401', '14', 'KABUPATEN KUANTAN SINGINGI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1377', '13', 'KOTA PARIAMAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1376', '13', 'KOTA PAYAKUMBUH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1375', '13', 'KOTA BUKITTINGGI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1374', '13', 'KOTA PADANG PANJANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1373', '13', 'KOTA SAWAH LUNTO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1372', '13', 'KOTA SOLOK', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1371', '13', 'KOTA PADANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1312', '13', 'KABUPATEN PASAMAN BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1311', '13', 'KABUPATEN DHARMASRAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1310', '13', 'KABUPATEN SOLOK SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1309', '13', 'KABUPATEN PASAMAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1308', '13', 'KABUPATEN LIMA PULUH KOTA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1307', '13', 'KABUPATEN AGAM', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1306', '13', 'KABUPATEN PADANG PARIAMAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1305', '13', 'KABUPATEN TANAH DATAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1304', '13', 'KABUPATEN SIJUNJUNG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1303', '13', 'KABUPATEN SOLOK', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1302', '13', 'KABUPATEN PESISIR SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1301', '13', 'KABUPATEN KEPULAUAN MENTAWAI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1278', '12', 'KOTA GUNUNGSITOLI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1277', '12', 'KOTA PADANGSIDIMPUAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1276', '12', 'KOTA BINJAI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1275', '12', 'KOTA MEDAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1274', '12', 'KOTA TEBING TINGGI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1273', '12', 'KOTA PEMATANG SIANTAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1272', '12', 'KOTA TANJUNG BALAI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1271', '12', 'KOTA SIBOLGA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1225', '12', 'KABUPATEN NIAS BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1224', '12', 'KABUPATEN NIAS UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1223', '12', 'KABUPATEN LABUHAN BATU UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1222', '12', 'KABUPATEN LABUHAN BATU SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1221', '12', 'KABUPATEN PADANG LAWAS', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1220', '12', 'KABUPATEN PADANG LAWAS UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1219', '12', 'KABUPATEN BATU BARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1218', '12', 'KABUPATEN SERDANG BEDAGAI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1217', '12', 'KABUPATEN SAMOSIR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1216', '12', 'KABUPATEN PAKPAK BHARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1215', '12', 'KABUPATEN HUMBANG HASUNDUTAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1214', '12', 'KABUPATEN NIAS SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1213', '12', 'KABUPATEN LANGKAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1212', '12', 'KABUPATEN DELI SERDANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1211', '12', 'KABUPATEN KARO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1210', '12', 'KABUPATEN DAIRI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1209', '12', 'KABUPATEN SIMALUNGUN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1208', '12', 'KABUPATEN ASAHAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1207', '12', 'KABUPATEN LABUHAN BATU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1206', '12', 'KABUPATEN TOBA SAMOSIR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1205', '12', 'KABUPATEN TAPANULI UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1204', '12', 'KABUPATEN TAPANULI TENGAH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1203', '12', 'KABUPATEN TAPANULI SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1202', '12', 'KABUPATEN MANDAILING NATAL', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('1201', '12', 'KABUPATEN NIAS', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7172', '71', 'KOTA BITUNG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7173', '71', 'KOTA TOMOHON', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7174', '71', 'KOTA KOTAMOBAGU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7201', '72', 'KABUPATEN BANGGAI KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7202', '72', 'KABUPATEN BANGGAI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7203', '72', 'KABUPATEN MOROWALI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7204', '72', 'KABUPATEN POSO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7205', '72', 'KABUPATEN DONGGALA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7206', '72', 'KABUPATEN TOLI-TOLI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7207', '72', 'KABUPATEN BUOL', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7208', '72', 'KABUPATEN PARIGI MOUTONG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7209', '72', 'KABUPATEN TOJO UNA-UNA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7210', '72', 'KABUPATEN SIGI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7211', '72', 'KABUPATEN BANGGAI LAUT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7212', '72', 'KABUPATEN MOROWALI UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7271', '72', 'KOTA PALU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7301', '73', 'KABUPATEN KEPULAUAN SELAYAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7302', '73', 'KABUPATEN BULUKUMBA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7303', '73', 'KABUPATEN BANTAENG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7304', '73', 'KABUPATEN JENEPONTO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7305', '73', 'KABUPATEN TAKALAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7306', '73', 'KABUPATEN GOWA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7307', '73', 'KABUPATEN SINJAI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7308', '73', 'KABUPATEN MAROS', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7309', '73', 'KABUPATEN PANGKAJENE DAN KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7310', '73', 'KABUPATEN BARRU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7311', '73', 'KABUPATEN BONE', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7312', '73', 'KABUPATEN SOPPENG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7313', '73', 'KABUPATEN WAJO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7314', '73', 'KABUPATEN SIDENRENG RAPPANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7315', '73', 'KABUPATEN PINRANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7316', '73', 'KABUPATEN ENREKANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7317', '73', 'KABUPATEN LUWU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7318', '73', 'KABUPATEN TANA TORAJA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7322', '73', 'KABUPATEN LUWU UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7325', '73', 'KABUPATEN LUWU TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7326', '73', 'KABUPATEN TORAJA UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7371', '73', 'KOTA MAKASSAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7372', '73', 'KOTA PAREPARE', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7373', '73', 'KOTA PALOPO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7401', '74', 'KABUPATEN BUTON', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7402', '74', 'KABUPATEN MUNA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7403', '74', 'KABUPATEN KONAWE', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7404', '74', 'KABUPATEN KOLAKA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7405', '74', 'KABUPATEN KONAWE SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7406', '74', 'KABUPATEN BOMBANA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7407', '74', 'KABUPATEN WAKATOBI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7408', '74', 'KABUPATEN KOLAKA UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7409', '74', 'KABUPATEN BUTON UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7410', '74', 'KABUPATEN KONAWE UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7411', '74', 'KABUPATEN KOLAKA TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7412', '74', 'KABUPATEN KONAWE KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7413', '74', 'KABUPATEN MUNA BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7414', '74', 'KABUPATEN BUTON TENGAH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7415', '74', 'KABUPATEN BUTON SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7471', '74', 'KOTA KENDARI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7472', '74', 'KOTA BAUBAU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7501', '75', 'KABUPATEN BOALEMO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7502', '75', 'KABUPATEN GORONTALO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7503', '75', 'KABUPATEN POHUWATO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7504', '75', 'KABUPATEN BONE BOLANGO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7505', '75', 'KABUPATEN GORONTALO UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7571', '75', 'KOTA GORONTALO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7601', '76', 'KABUPATEN MAJENE', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7602', '76', 'KABUPATEN POLEWALI MANDAR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7603', '76', 'KABUPATEN MAMASA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7604', '76', 'KABUPATEN MAMUJU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7605', '76', 'KABUPATEN MAMUJU UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('7606', '76', 'KABUPATEN MAMUJU TENGAH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8101', '81', 'KABUPATEN MALUKU TENGGARA BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8102', '81', 'KABUPATEN MALUKU TENGGARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8103', '81', 'KABUPATEN MALUKU TENGAH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8104', '81', 'KABUPATEN BURU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8105', '81', 'KABUPATEN KEPULAUAN ARU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8106', '81', 'KABUPATEN SERAM BAGIAN BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8107', '81', 'KABUPATEN SERAM BAGIAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8108', '81', 'KABUPATEN MALUKU BARAT DAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8109', '81', 'KABUPATEN BURU SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8171', '81', 'KOTA AMBON', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8172', '81', 'KOTA TUAL', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8201', '82', 'KABUPATEN HALMAHERA BARAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8202', '82', 'KABUPATEN HALMAHERA TENGAH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8203', '82', 'KABUPATEN KEPULAUAN SULA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8204', '82', 'KABUPATEN HALMAHERA SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8205', '82', 'KABUPATEN HALMAHERA UTARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8206', '82', 'KABUPATEN HALMAHERA TIMUR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8207', '82', 'KABUPATEN PULAU MOROTAI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8208', '82', 'KABUPATEN PULAU TALIABU', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8271', '82', 'KOTA TERNATE', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('8272', '82', 'KOTA TIDORE KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9090', '90', 'contoh tutunan', '2019-09-16', '2019-09-16', '90');
INSERT INTO `kabupaten` VALUES ('9101', '91', 'KABUPATEN FAKFAK', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9102', '91', 'KABUPATEN KAIMANA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9103', '91', 'KABUPATEN TELUK WONDAMA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9104', '91', 'KABUPATEN TELUK BINTUNI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9105', '91', 'KABUPATEN MANOKWARI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9106', '91', 'KABUPATEN SORONG SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9107', '91', 'KABUPATEN SORONG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9108', '91', 'KABUPATEN RAJA AMPAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9109', '91', 'KABUPATEN TAMBRAUW', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9110', '91', 'KABUPATEN MAYBRAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9111', '91', 'KABUPATEN MANOKWARI SELATAN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9112', '91', 'KABUPATEN PEGUNUNGAN ARFAK', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9171', '91', 'KOTA SORONG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9401', '94', 'KABUPATEN MERAUKE', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9402', '94', 'KABUPATEN JAYAWIJAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9403', '94', 'KABUPATEN JAYAPURA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9404', '94', 'KABUPATEN NABIRE', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9408', '94', 'KABUPATEN KEPULAUAN YAPEN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9409', '94', 'KABUPATEN BIAK NUMFOR', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9410', '94', 'KABUPATEN PANIAI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9411', '94', 'KABUPATEN PUNCAK JAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9412', '94', 'KABUPATEN MIMIKA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9413', '94', 'KABUPATEN BOVEN DIGOEL', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9414', '94', 'KABUPATEN MAPPI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9415', '94', 'KABUPATEN ASMAT', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9416', '94', 'KABUPATEN YAHUKIMO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9417', '94', 'KABUPATEN PEGUNUNGAN BINTANG', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9418', '94', 'KABUPATEN TOLIKARA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9419', '94', 'KABUPATEN SARMI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9420', '94', 'KABUPATEN KEEROM', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9426', '94', 'KABUPATEN WAROPEN', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9427', '94', 'KABUPATEN SUPIORI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9428', '94', 'KABUPATEN MAMBERAMO RAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9429', '94', 'KABUPATEN NDUGA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9430', '94', 'KABUPATEN LANNY JAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9431', '94', 'KABUPATEN MAMBERAMO TENGAH', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9432', '94', 'KABUPATEN YALIMO', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9433', '94', 'KABUPATEN PUNCAK', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9434', '94', 'KABUPATEN DOGIYAI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9435', '94', 'KABUPATEN INTAN JAYA', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9436', '94', 'KABUPATEN DEIYAI', NULL, NULL, NULL);
INSERT INTO `kabupaten` VALUES ('9471', '94', 'KOTA JAYAPURA', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for kala_terbit
-- ----------------------------
DROP TABLE IF EXISTS `kala_terbit`;
CREATE TABLE `kala_terbit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kala_terbit
-- ----------------------------
INSERT INTO `kala_terbit` VALUES (1, 'Weekly', '', 1, 1, '2018-08-21 08:37:30', '2018-08-21 08:37:30');
INSERT INTO `kala_terbit` VALUES (2, 'Bi Weekly', '', 1, 1, '2018-08-21 08:37:35', '2018-08-21 08:37:35');
INSERT INTO `kala_terbit` VALUES (3, 'Fourth Nightly', '', 1, 1, '2018-08-21 08:38:03', '2018-08-21 08:38:03');
INSERT INTO `kala_terbit` VALUES (4, 'Monthly', '', 1, 1, '2018-08-21 08:38:19', '2018-08-21 08:38:19');
INSERT INTO `kala_terbit` VALUES (5, 'Bi Monthly', '', 1, 1, '2018-08-21 08:38:29', '2018-08-21 08:38:29');
INSERT INTO `kala_terbit` VALUES (6, 'Quarterly', '', 1, 1, '2018-08-21 08:38:42', '2018-08-21 08:38:42');
INSERT INTO `kala_terbit` VALUES (7, '3 Times a Year', '', 1, 1, '2018-08-21 08:38:55', '2018-08-21 08:38:55');
INSERT INTO `kala_terbit` VALUES (8, 'Anually', '', 1, 1, '2018-08-21 08:39:07', '2018-08-21 08:39:07');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_kategori` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_time` datetime(0) NULL DEFAULT NULL,
  `_updated_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE `kecamatan`  (
  `id` char(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `regency_id` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NULL DEFAULT NULL,
  `updated_at` date NULL DEFAULT NULL,
  `id_kec` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `districts_id_index`(`regency_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kecamatan
-- ----------------------------
INSERT INTO `kecamatan` VALUES ('1407060', '1407', 'KEPENUHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407051', '1407', 'TAMBUSAI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407050', '1407', 'TAMBUSAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407042', '1407', 'BANGUN PURBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407041', '1407', 'RAMBAH HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407040', '1407', 'RAMBAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407030', '1407', 'RAMBAH SAMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407022', '1407', 'UJUNG BATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407021', '1407', 'KABUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407020', '1407', 'TANDUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407011', '1407', 'PENDALIAN IV KOTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407010', '1407', 'ROKAN IV KOTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406081', '1406', 'PERHENTIAN RAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406080', '1406', 'SIAK HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406070', '1406', 'TAMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406063', '1406', 'KAMPAR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406062', '1406', 'RUMBIO JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406061', '1406', 'KAMPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406060', '1406', 'KAMPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406051', '1406', 'BANGKINANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406050', '1406', 'BANGKINANG KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406042', '1406', 'TAPUNG HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406041', '1406', 'TAPUNG HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406040', '1406', 'TAPUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406031', '1406', 'SALO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406030', '1406', 'KUOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406021', '1406', 'KOTO KAMPAR HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406020', '1406', 'XIII KOTO KAMPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406014', '1406', 'KAMPAR KIRI TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406013', '1406', 'GUNUNG SAHILAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406012', '1406', 'KAMPAR KIRI HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406011', '1406', 'KAMPAR KIRI HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1406010', '1406', 'KAMPAR KIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405033', '1405', 'PUSAKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405032', '1405', 'SABAK AUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405031', '1405', 'BUNGA RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405030', '1405', 'SUNGAI APIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405026', '1405', 'MEMPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405025', '1405', 'KOTO GASIB', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405024', '1405', 'LUBUK DALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405023', '1405', 'DAYUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405022', '1405', 'TUALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405021', '1405', 'KERINCI KANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405020', '1405', 'SIAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405012', '1405', 'KANDIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405011', '1405', 'SUNGAI MANDAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1405010', '1405', 'MINAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1404042', '1404', 'TELUK MERANTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1404041', '1404', 'KERUMUTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1404040', '1404', 'KUALA KAMPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1404032', '1404', 'BANDAR PETALANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1404031', '1404', 'PELALAWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1404030', '1404', 'BUNUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1404022', '1404', 'PANGKALAN LESUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1404021', '1404', 'UKUI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1404020', '1404', 'PANGKALAN KURAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1404012', '1404', 'BANDAR SEIKIJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1404011', '1404', 'PANGKALAN KERINCI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1404010', '1404', 'LANGGAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403123', '1403', 'PULAU BURUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403122', '1403', 'TELUK BELENGKONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403121', '1403', 'PELANGIRAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403120', '1403', 'KATEMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403110', '1403', 'MANDAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403100', '1403', 'GAUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403090', '1403', 'GAUNG ANAK SERKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403080', '1403', 'BATANG TUAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403071', '1403', 'KEMPAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403070', '1403', 'TEMPULING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403061', '1403', 'TEMBILAHAN HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403060', '1403', 'TEMBILAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403051', '1403', 'CONCONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403050', '1403', 'KUALA INDRAGIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403040', '1403', 'TANAH MERAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403030', '1403', 'ENOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403021', '1403', 'SUNGAI BATANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403020', '1403', 'RETEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403011', '1403', 'KEMUNING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1403010', '1403', 'KERITANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402061', '1402', 'KUALA CENAKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402060', '1402', 'RENGAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402050', '1402', 'RENGAT BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402043', '1402', 'LUBUK BATU JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402042', '1402', 'SUNGAI LALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402041', '1402', 'LIRIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402040', '1402', 'PASIR PENYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402031', '1402', 'RAKIT KULIM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402030', '1402', 'KELAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402022', '1402', 'BATANG GANSAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402021', '1402', 'BATANG CENAKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402020', '1402', 'SEBERIDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402011', '1402', 'BATANG PERANAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1402010', '1402', 'PERANAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401061', '1401', 'INUMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401060', '1401', 'CERENTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401053', '1401', 'KUANTAN HILIR SEBERANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401052', '1401', 'LOGAS TANAH DARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401051', '1401', 'PANGEAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401050', '1401', 'KUANTAN HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401040', '1401', 'BENAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401031', '1401', 'SENTAJO RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401030', '1401', 'KUANTAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401021', '1401', 'SINGINGI HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401020', '1401', 'SINGINGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401013', '1401', 'PUCUK RANTAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401012', '1401', 'GUNUNG TOAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401011', '1401', 'HULU KUANTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1401010', '1401', 'KUANTAN MUDIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1377030', '1377', 'PARIAMAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1377021', '1377', 'PARIAMAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1377020', '1377', 'PARIAMAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1377010', '1377', 'PARIAMAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1376031', '1376', 'LAMPOSI TIGO NAGORI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1376030', '1376', 'PAYAKUMBUH UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1376020', '1376', 'PAYAKUMBUH TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1376011', '1376', 'PAYAKUMBUH SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1376010', '1376', 'PAYAKUMBUH BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1375030', '1375', 'AUR BIRUGO TIGO BALEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1375020', '1375', 'MANDIANGIN KOTO SELAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1375010', '1375', 'GUGUK PANJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1374020', '1374', 'PADANG PANJANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1374010', '1374', 'PADANG PANJANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1373040', '1373', 'TALAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1373030', '1373', 'BARANGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1373020', '1373', 'LEMBAH SEGAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1373010', '1373', 'SILUNGKANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1372020', '1372', 'TANJUNG HARAPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1372010', '1372', 'LUBUK SIKARAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1371110', '1371', 'KOTO TANGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1371100', '1371', 'PAUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1371090', '1371', 'KURANJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1371080', '1371', 'NANGGALO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1371070', '1371', 'PADANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1371060', '1371', 'PADANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1371050', '1371', 'PADANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1371040', '1371', 'PADANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1371030', '1371', 'LUBUK BEGALUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1371020', '1371', 'LUBUK KILANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1371010', '1371', 'BUNGUS TELUK KABUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1312110', '1312', 'KINALI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1312100', '1312', 'SASAK RANAH PASISIE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1312090', '1312', 'LUHAK NAN DUO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1312080', '1312', 'PASAMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1312070', '1312', 'TALAMAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1312060', '1312', 'GUNUNG TULEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1312050', '1312', 'LEMBAH MALINTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1312040', '1312', 'SUNGAI AUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1312030', '1312', 'KOTO BALINGKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1312020', '1312', 'RANAH BATAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1312010', '1312', 'SUNGAI BEREMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1311041', '1311', 'IX KOTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1311040', '1311', 'PULAU PUNJUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1311031', '1311', 'TIMPEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1311030', '1311', 'SITIUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1311023', '1311', 'PADANG LAWEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1311022', '1311', 'TIUMANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1311021', '1311', 'KOTO SALAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1311020', '1311', 'KOTO BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1311012', '1311', 'ASAM JUJUHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1311011', '1311', 'KOTO BESAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1311010', '1311', 'SUNGAI RUMBAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1310050', '1310', 'KOTO PARIK GADANG DIATEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1310041', '1310', 'PAUAH DUO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1310040', '1310', 'SUNGAI PAGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1310030', '1310', 'SANGIR BATANG HARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1310021', '1310', 'SANGIR BALAI JANGGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1310020', '1310', 'SANGIR JUJUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1310010', '1310', 'SANGIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1309125', '1309', 'RAO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1309124', '1309', 'RAO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1309123', '1309', 'MAPAT TUNGGUL SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1309122', '1309', 'MAPAT TUNGGUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1309121', '1309', 'RAO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1309111', '1309', 'PADANG GELUGUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1309110', '1309', 'PANTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1309100', '1309', 'DUA KOTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1309080', '1309', 'LUBUK SIKAPING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1309072', '1309', 'SIMPANG ALAHAN MATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1309071', '1309', 'TIGO NAGARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1309070', '1309', 'BONJOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1308080', '1308', 'PANGKALAN KOTO BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1308070', '1308', 'KAPUR IX', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1308060', '1308', 'GUNUANG OMEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1308051', '1308', 'BUKIK BARISAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1308050', '1308', 'SULIKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1308041', '1308', 'MUNGKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1308040', '1308', 'GUGUAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1308030', '1308', 'HARAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1308022', '1308', 'SITUJUAH LIMO NAGARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1308021', '1308', 'LAREH SAGO HALABAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1308020', '1308', 'LUAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1308011', '1308', 'AKABILURU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1308010', '1308', 'PAYAKUMBUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307110', '1307', 'PALUPUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307100', '1307', 'PALEMBAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307091', '1307', 'KAMANG MAGEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307090', '1307', 'TILATANG KAMANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307080', '1307', 'BASO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307071', '1307', 'CANDUANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307070', '1307', 'AMPEK ANGKEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307062', '1307', 'SUNGAI PUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307061', '1307', 'BANUHAMPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307051', '1307', 'MALALAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307050', '1307', 'IV KOTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307040', '1307', 'MATUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307030', '1307', 'TANJUNG RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307021', '1307', 'AMPEK NAGARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307020', '1307', 'LUBUK BASUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1307010', '1307', 'TANJUNG MUTIARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306100', '1306', 'IV KOTO AUR MALINTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306090', '1306', 'SUNGAI GERINGGING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306081', '1306', 'BATANG GASAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306080', '1306', 'SUNGAI LIMAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306071', '1306', 'V KOTO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306070', '1306', 'V KOTO KP DALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306062', '1306', 'PADANG SAGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306061', '1306', 'PATAMUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306060', '1306', 'VII KOTO SUNGAI SARIAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306052', '1306', '2 X 11 KAYU TANAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306051', '1306', 'ENAM LINGKUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306050', '1306', '2 X 11 ENAM LINGKUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306040', '1306', 'NAN SABARIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306030', '1306', 'ULAKAN TAPAKIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306021', '1306', 'SINTUK TOBOH GADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306020', '1306', 'LUBUK ALUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1306010', '1306', 'BATANG ANAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305111', '1305', 'TANJUNG BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305110', '1305', 'SALIMPAUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305100', '1305', 'SUNGAI TARAB', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305090', '1305', 'SUNGAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305081', '1305', 'LINTAU BUO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305080', '1305', 'LINTAU BUO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305070', '1305', 'PADANG GANTING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305060', '1305', 'TANJUNG EMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305050', '1305', 'LIMA KAUM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305040', '1305', 'RAMBATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305030', '1305', 'PARIANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305021', '1305', 'BATIPUH SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305020', '1305', 'BATIPUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1305010', '1305', 'SEPULUH KOTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1304110', '1304', 'SUMPUR KUDUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1304100', '1304', 'KOTO TUJUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1304090', '1304', 'KUPITAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1304080', '1304', 'IV NAGARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1304071', '1304', 'LUBUK TAROK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1304070', '1304', 'SIJUNJUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1304060', '1304', 'TANJUNG GADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1304050', '1304', 'KAMANG BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303140', '1303', 'JUNJUNG SIRIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303130', '1303', 'X KOTO SINGKARAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303120', '1303', 'X KOTO DIATAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303110', '1303', 'KUBUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303100', '1303', 'IX KOTO SUNGAI LASI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303090', '1303', 'BUKIT SUNDI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303080', '1303', 'GUNUNG TALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303071', '1303', 'DANAU KEMBAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303070', '1303', 'LEMBANG JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303061', '1303', 'TIGO LURAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303060', '1303', 'PAYUNG SEKAKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303051', '1303', 'HILIRAN GUMANTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303050', '1303', 'LEMBAH GUMANTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1303040', '1303', 'PANTAI CERMIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302110', '1302', 'KOTO XI TARUSAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302101', '1302', 'IV  NAGARI BAYANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302100', '1302', 'BAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302090', '1302', 'IV JURAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302080', '1302', 'BATANG KAPAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302070', '1302', 'SUTERA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302060', '1302', 'LENGAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302050', '1302', 'RANAH PESISIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302040', '1302', 'LINGGO SARI BAGANTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302031', '1302', 'AIRPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302030', '1302', 'PANCUNG SOAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302021', '1302', 'RANAH AMPEK HULU TAPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302020', '1302', 'BASA AMPEK BALAI TAPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302012', '1302', 'LUNANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1302011', '1302', 'SILAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1301041', '1301', 'SIBERUT BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1301040', '1301', 'SIBERUT UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1301032', '1301', 'SIBERUT TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1301031', '1301', 'SEBERUT BARAT DAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1301030', '1301', 'SIBERUT SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1301022', '1301', 'SIPORA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1301021', '1301', 'SIPORA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1301013', '1301', 'PAGAI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1301012', '1301', 'SIKAKAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1301011', '1301', 'PAGAI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1278060', '1278', 'GUNUNGSITOLI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1278050', '1278', 'GUNUNGSITOLI ALO OA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1278040', '1278', 'GUNUNG SITOLI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1278030', '1278', 'GUNUNGSITOLI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1278020', '1278', 'GUNUNGSITOLI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1278010', '1278', 'GUNUNGSITOLI IDANOI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1277051', '1277', 'PADANGSIDIMPUAN ANGKOLA JULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1277050', '1277', 'PADANGSIDIMPUAN HUTAIMBARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1277040', '1277', 'PADANGSIDIMPUAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1277030', '1277', 'PADANGSIDIMPUAN BATUNADUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1277020', '1277', 'PADANGSIDIMPUAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1277010', '1277', 'PADANGSIDIMPUAN TENGGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1276050', '1276', 'BINJAI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1276040', '1276', 'BINJAI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1276030', '1276', 'BINJAI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1276020', '1276', 'BINJAI KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1276010', '1276', 'BINJAI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275210', '1275', 'MEDAN BELAWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275200', '1275', 'MEDAN MARELAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275190', '1275', 'MEDAN LABUHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275180', '1275', 'MEDAN DELI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275170', '1275', 'MEDAN TEMBUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275160', '1275', 'MEDAN PERJUANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275150', '1275', 'MEDAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275140', '1275', 'MEDAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275130', '1275', 'MEDAN PETISAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275120', '1275', 'MEDAN HELVETIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275110', '1275', 'MEDAN SUNGGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275100', '1275', 'MEDAN SELAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275090', '1275', 'MEDAN BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275080', '1275', 'MEDAN POLONIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275070', '1275', 'MEDAN MAIMUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275060', '1275', 'MEDAN KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275050', '1275', 'MEDAN AREA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275040', '1275', 'MEDAN DENAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275030', '1275', 'MEDAN AMPLAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275020', '1275', 'MEDAN JOHOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1275010', '1275', 'MEDAN TUNTUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1274030', '1274', 'PADANG HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1274021', '1274', 'BAJENIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1274020', '1274', 'RAMBUTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1274011', '1274', 'TEBING TINGGI KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1274010', '1274', 'PADANG HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1273061', '1273', 'SIANTAR SITALASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1273060', '1273', 'SIANTAR MARTOBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1273050', '1273', 'SIANTAR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1273040', '1273', 'SIANTAR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1273030', '1273', 'SIANTAR BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1273020', '1273', 'SIANTAR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1273011', '1273', 'SIANTAR MARIMBUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1273010', '1273', 'SIANTAR MARIHAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1272050', '1272', 'TELUK NIBUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1272040', '1272', 'SEI TUALANG RASO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1272030', '1272', 'TANJUNG BALAI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1272020', '1272', 'TANJUNG BALAI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1272011', '1272', 'DATUK BANDAR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1272010', '1272', 'DATUK BANDAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1271031', '1271', 'SIBOLGA SAMBAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1271030', '1271', 'SIBOLGA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1271020', '1271', 'SIBOLGA KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1271010', '1271', 'SIBOLGA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1225080', '1225', 'MORO O', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1225070', '1225', 'MANDREHE BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1225060', '1225', 'MANDREHE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1225050', '1225', 'MANDREHE UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1225040', '1225', 'LOLOFITU MOI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1225030', '1225', 'ULU MORO O', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1225020', '1225', 'LAHOMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1225010', '1225', 'SIROMBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1224110', '1224', 'LAHEWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1224100', '1224', 'AFULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1224090', '1224', 'LAHEWA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1224080', '1224', 'LOTU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1224070', '1224', 'SAWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1224060', '1224', 'TUHEMBERUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1224050', '1224', 'SITOLU ORI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1224040', '1224', 'NAMOHALU ESIWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1224030', '1224', 'ALASA TALU MUZOI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1224020', '1224', 'ALASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1224010', '1224', 'TUGALA OYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1223080', '1223', 'KUALUH LEIDONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1223070', '1223', 'KUALUH HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1223060', '1223', 'KUALUH HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1223050', '1223', 'KUALUH SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1223040', '1223', 'AEK NATAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1223030', '1223', 'AEK KUO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1223020', '1223', 'MARBAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1223010', '1223', 'NA IX-X', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1222050', '1222', 'KAMPUNG RAKYAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1222040', '1222', 'SILANGKITANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1222030', '1222', 'KOTA PINANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1222020', '1222', 'TORGAMBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1222010', '1222', 'SUNGAI KANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1221092', '1221', 'SIHAPAS BARUMUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1221091', '1221', 'AEK NABARA BARUMUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1221090', '1221', 'BARUMUN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1221080', '1221', 'HURISTAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1221070', '1221', 'HUTA RAJA TINGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1221060', '1221', 'BATANG LUBU SUTAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1221050', '1221', 'SOSA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1221040', '1221', 'LUBUK BARUMUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1221031', '1221', 'BARUMUN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1221030', '1221', 'BARUMUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1221020', '1221', 'ULU BARUMUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1221010', '1221', 'SOSOPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1220090', '1220', 'HULU SIHAPAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1220080', '1220', 'DOLOK SIGOMPULON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1220070', '1220', 'DOLOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1220061', '1220', 'HALONGONAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1220060', '1220', 'HALONGONAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1220051', '1220', 'UJUNG BATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1220050', '1220', 'SIMANGAMBAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1220041', '1220', 'PADANG BOLAK TENGGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1220040', '1220', 'PADANG BOLAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1220030', '1220', 'PORTIBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1220020', '1220', 'PADANG BOLAK JULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1220010', '1220', 'BATANG ONANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1219070', '1219', 'MEDANG DERAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1219061', '1219', 'LAUT TADOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1219060', '1219', 'SEI SUKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1219050', '1219', 'AIR PUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1219042', '1219', 'DATUK LIMA PULUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1219041', '1219', 'LIMA PULUH PESISIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1219040', '1219', 'LIMAPULUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1219031', '1219', 'DATUK TANAH DATAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1219030', '1219', 'TALAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1219021', '1219', 'NIBUNG HANGUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1219020', '1219', 'TANJUNG TIRAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1219010', '1219', 'SEI BALAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218110', '1218', 'PANTAI CERMIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218101', '1218', 'PEGAJAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218100', '1218', 'PERBAUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218090', '1218', 'TELUK MENGKUDU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218081', '1218', 'SEI BAMBAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218080', '1218', 'SEI RAMPAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218070', '1218', 'TANJUNG BERINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218060', '1218', 'BANDAR KHALIPAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218051', '1218', 'TEBING SYAHBANDAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218050', '1218', 'TEBINGTINGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218040', '1218', 'DOLOK MERAWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218030', '1218', 'SIPISPIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218021', '1218', 'SERBAJADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218020', '1218', 'DOLOK MASIHUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218012', '1218', 'BINTANG BAYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218011', '1218', 'SILINDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1218010', '1218', 'KOTARIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1217090', '1217', 'SIMANINDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1217080', '1217', 'PANGURURAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1217070', '1217', 'RONGGUR NIHUTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1217060', '1217', 'PALIPI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1217050', '1217', 'NAINGGOLAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1217040', '1217', 'ONAN RUNGGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1217030', '1217', 'SITIO-TIO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1217020', '1217', 'HARIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1217010', '1217', 'SIANJUR MULA MULA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1216022', '1216', 'SIEMPAT RUBE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1216021', '1216', 'TINADA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1216020', '1216', 'KERAJAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1216014', '1216', 'PERGETTENG-GETTENG SENGKUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1216013', '1216', 'SITELLU TALI URANG JULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1216012', '1216', 'PAGINDAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1216011', '1216', 'SITELLU TALI URANG JEHE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1216010', '1216', 'SALAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1215100', '1215', 'TARA BINTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1215090', '1215', 'PARLILITAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1215080', '1215', 'POLLUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1215070', '1215', 'BAKTI RAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1215060', '1215', 'PARANGINAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1215050', '1215', 'LINTONG NIHUTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1215040', '1215', 'DOLOK SANGGUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1215030', '1215', 'SIJAMA POLANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1215020', '1215', 'ONAN GANJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1215010', '1215', 'PAKKAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214084', '1214', 'HILISALAWAAHE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214083', '1214', 'ONOHAZUMBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214082', '1214', 'OOU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214081', '1214', 'HILIMEGAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214080', '1214', 'LOLOWA\'U', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214072', '1214', 'HURUNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214071', '1214', 'ULUNOYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214070', '1214', 'LOLOMATUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214066', '1214', 'BORONADU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214065', '1214', 'ULUIDANOTAE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214064', '1214', 'IDANOTAE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214063', '1214', 'UMBUNASI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214062', '1214', 'MAZO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214061', '1214', 'SUSUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214060', '1214', 'GOMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214052', '1214', 'SOMAMBAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214051', '1214', 'SIDUAORI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214050', '1214', 'LAHUSA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214042', '1214', 'ULUSUSUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214041', '1214', 'ARAMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214040', '1214', 'AMANDRAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214036', '1214', 'ONOLALU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214035', '1214', 'LUAHAGUNDRE MANIAMOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214034', '1214', 'MAZINO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214033', '1214', 'MANIAMOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214032', '1214', 'TOMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214031', '1214', 'FANAYAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214030', '1214', 'TELUK DALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214024', '1214', 'PULAU-PULAU BATU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214023', '1214', 'PULAU-PULAU BATU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214022', '1214', 'SIMUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214021', '1214', 'PULAU-PULAU BATU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214020', '1214', 'PULAU-PULAU BATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214011', '1214', 'TANAH MASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1214010', '1214', 'HIBALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213201', '1213', 'PEMATANG JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213200', '1213', 'PANGKALAN SUSU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213190', '1213', 'BESITANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213180', '1213', 'BRANDAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213170', '1213', 'SEI LEPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213160', '1213', 'BABALAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213150', '1213', 'GEBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213140', '1213', 'TANJUNG PURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213130', '1213', 'SECANGGANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213120', '1213', 'HINAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213110', '1213', 'PADANG TUALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213100', '1213', 'SAWIT SEBERANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213090', '1213', 'BATANG SERANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213080', '1213', 'WAMPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213070', '1213', 'STABAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213060', '1213', 'BINJAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213050', '1213', 'SELESAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213040', '1213', 'KUALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213030', '1213', 'SEI BINGAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213021', '1213', 'KUTAMBARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213020', '1213', 'SALAPIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213011', '1213', 'SIRAPIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1213010', '1213', 'BOHOROK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212310', '1212', 'PAGAR MERBAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212300', '1212', 'LUBUK PAKAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212290', '1212', 'BERINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212280', '1212', 'PANTAI LABU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212270', '1212', 'BATANG KUIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212260', '1212', 'PERCUT SEI TUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212250', '1212', 'LABUHAN DELI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212240', '1212', 'HAMPARAN PERAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212230', '1212', 'SUNGGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212220', '1212', 'DELI TUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212210', '1212', 'PATUMBAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212200', '1212', 'TANJUNG MORAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212190', '1212', 'GALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212090', '1212', 'BANGUN PURBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212080', '1212', 'SINEMBAH TANJUNG MUDA HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212070', '1212', 'BIRU-BIRU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212060', '1212', 'NAMO RAMBE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212050', '1212', 'PANCUR BATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212040', '1212', 'KUTALIMBARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212030', '1212', 'SIBOLANGIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212020', '1212', 'SINEMBAH TANJUNG MUDA HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1212010', '1212', 'GUNUNG MERIAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211130', '1211', 'BARUSJAHE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211120', '1211', 'MEREK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211111', '1211', 'DOLAT RAYAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211110', '1211', 'TIGAPANAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211100', '1211', 'BERASTAGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211090', '1211', 'KABANJAHE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211082', '1211', 'MERDEKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211081', '1211', 'NAMAN TERAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211080', '1211', 'SIMPANG EMPAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211071', '1211', 'TIGANDERKET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211070', '1211', 'PAYUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211060', '1211', 'KUTA BULUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211050', '1211', 'MUNTE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211040', '1211', 'JUHAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211030', '1211', 'TIGA BINANGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211020', '1211', 'LAUBALENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1211010', '1211', 'MARDINGDING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210120', '1210', 'TANAH PINEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210110', '1210', 'PEGAGAN HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210101', '1210', 'GUNUNG SITEMBER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210100', '1210', 'TIGA LINGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210090', '1210', 'SIEMPAT NEMPU HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210080', '1210', 'SIEMPAT NEMPU HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210070', '1210', 'SIEMPAT NEMPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210061', '1210', 'LAE PARIRA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210060', '1210', 'SILIMA PUNGGA-PUNGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210051', '1210', 'SILAHISABUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210050', '1210', 'SUMBUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210040', '1210', 'PARBULUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210032', '1210', 'SITINJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210031', '1210', 'BERAMPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1210030', '1210', 'SIDIKALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209210', '1209', 'UJUNG PADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209200', '1209', 'BOSAR MALIGAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209191', '1209', 'BANDAR MASILAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209190', '1209', 'BANDAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209181', '1209', 'BANDAR HULUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209180', '1209', 'PEMATANG BANDAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209171', '1209', 'JAWA MARAJA BAH JAMBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209170', '1209', 'HUTABAYU RAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209162', '1209', 'GUNUNG MALIGAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209161', '1209', 'GUNUNG MALELA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209160', '1209', 'SIANTAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209150', '1209', 'DOLOK BATU NANGGAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209140', '1209', 'TAPIAN DOLOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209130', '1209', 'RAYA KAHEAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209120', '1209', 'SILAU KAHEAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209110', '1209', 'DOLOK SILAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209101', '1209', 'DOLOG MASAGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209100', '1209', 'RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209091', '1209', 'PANOMBEAN PANEI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209090', '1209', 'PANEI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209080', '1209', 'JORLANG HATARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209070', '1209', 'DOLOK PANRIBUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209061', '1209', 'HATONDUHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209060', '1209', 'TANAH JAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209050', '1209', 'GIRSANG SIPANGAN BOLON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209041', '1209', 'PEMATANG SIDAMANIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209040', '1209', 'SIDAMANIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209021', '1209', 'HARANGGAOL HORISON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209020', '1209', 'PURBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209011', '1209', 'PEMATANG SILIMAHUTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1209010', '1209', 'SILIMAKUTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208170', '1208', 'KISARAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208160', '1208', 'KISARAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208101', '1208', 'SILAU LAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208100', '1208', 'AIR JOMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208092', '1208', 'RAWANG PANCA ARGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208091', '1208', 'PULO BANDRING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208090', '1208', 'MERANTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208082', '1208', 'SETIA JANJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208081', '1208', 'TINGGI RAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208080', '1208', 'BUNTU PANE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208071', '1208', 'SEI DADAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208070', '1208', 'AIR BATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208061', '1208', 'TELUK DALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208060', '1208', 'SIMPANG EMPAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208050', '1208', 'TANJUNG BALAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208042', '1208', 'SEI KEPAYANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208041', '1208', 'SEI KEPAYANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208040', '1208', 'SEI KEPAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208032', '1208', 'AEK LEDONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208031', '1208', 'AEK KUASAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208030', '1208', 'PULAU RAKYAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208022', '1208', 'RAHUNING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208021', '1208', 'AEK SONGSONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208020', '1208', 'BANDAR PULAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1208010', '1208', 'BANDAR PASIR MANDOGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1207220', '1207', 'RANTAU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1207210', '1207', 'RANTAU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1207160', '1207', 'PANAI HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1207150', '1207', 'PANAI TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1207140', '1207', 'PANAI HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1207130', '1207', 'BILAH HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1207080', '1207', 'BILAH BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1207070', '1207', 'PANGKATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1207050', '1207', 'BILAH HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206083', '1206', 'BONATUA LUNASI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206082', '1206', 'AJIBATA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206081', '1206', 'ULUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206080', '1206', 'LUMBAN JULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206073', '1206', 'PARMAKSIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206072', '1206', 'SIANTAR NARUMONDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206071', '1206', 'PINTU POHAN MERANTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206070', '1206', 'PORSEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206061', '1206', 'SIGUMPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206060', '1206', 'SILAEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206052', '1206', 'NASSAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206051', '1206', 'BORBOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206050', '1206', 'HABINSARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206040', '1206', 'LAGUBOTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206031', '1206', 'TAMPAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1206030', '1206', 'BALIGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205180', '1205', 'MUARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205130', '1205', 'PAGARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205120', '1205', 'SIBORONGBORONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205110', '1205', 'SIPAHUTAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205100', '1205', 'GAROGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205090', '1205', 'PANGARIBUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205082', '1205', 'SIMANGUMBAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205081', '1205', 'PURBATUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205080', '1205', 'PAHAE JAE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205070', '1205', 'PAHAE JULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205061', '1205', 'SIATAS BARITA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205060', '1205', 'TARUTUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205050', '1205', 'SIPOHOLON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205040', '1205', 'ADIANKOTING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1205030', '1205', 'PARMONANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204081', '1204', 'SIRANDORUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204080', '1204', 'MANDUAMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204073', '1204', 'BARUS UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204072', '1204', 'ANDAM DEWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204071', '1204', 'SOSOR GADONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204070', '1204', 'BARUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204062', '1204', 'PASARIBU TOBING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204061', '1204', 'SORKAM BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204060', '1204', 'SORKAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204050', '1204', 'KOLANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204041', '1204', 'SITAHUIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204040', '1204', 'TAPIAN NAULI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204032', '1204', 'SARUDIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204031', '1204', 'TUKKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204030', '1204', 'PANDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204022', '1204', 'SUKABANGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204021', '1204', 'LUMUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204020', '1204', 'SIBABANGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204011', '1204', 'BADIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1204010', '1204', 'PINANG SORI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203161', '1203', 'AEK BILAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203160', '1203', 'SAIPAR DOLOK HOLE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203120', '1203', 'ARSE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203110', '1203', 'SIPIROK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203102', '1203', 'MUARA BATANG TORU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203101', '1203', 'MARANCAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203100', '1203', 'BATANG TORU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203091', '1203', 'ANGKOLA SANGKUNUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203090', '1203', 'ANGKOLA  BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203080', '1203', 'ANGKOLA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203070', '1203', 'ANGKOLA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203012', '1203', 'TANO TOMBANGAN ANGKOLA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203011', '1203', 'SAYUR MATINGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1203010', '1203', 'BATANG ANGKOLA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202082', '1202', 'NAGA JUANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202081', '1202', 'BUKIT MALINTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202080', '1202', 'SIABU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202070', '1202', 'MUARA BATANG GADIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202060', '1202', 'NATAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202055', '1202', 'HUTA BARGOT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202054', '1202', 'PANYABUNGAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202053', '1202', 'PANYABUNGAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202052', '1202', 'PANYABUNGAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202051', '1202', 'PANYABUNGAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202050', '1202', 'PANYABUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202041', '1202', 'PAKANTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202040', '1202', 'MUARA SIPONGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202034', '1202', 'PUNCAK SORIK MARAPI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202033', '1202', 'LEMBAH SORIK MARAPI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202032', '1202', 'TAMBANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202031', '1202', 'ULU PUNGKUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202030', '1202', 'KOTANOPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202022', '1202', 'RANTO BAEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202021', '1202', 'LINGGA BAYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202020', '1202', 'BATANG NATAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202011', '1202', 'SINUNUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1202010', '1202', 'BATAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1201999', '1201', 'halcim', '2019-09-10', '2019-09-10', '999');
INSERT INTO `kecamatan` VALUES ('1201888', '1201', 'dpk', '2019-09-10', '2019-09-10', '888');
INSERT INTO `kecamatan` VALUES ('1201132', '1201', 'BOTOMUZOI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1201131', '1201', 'HILI SERANGKAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1201130', '1201', 'HILIDUHO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1201082', '1201', 'SOMOLO - MOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1201081', '1201', 'MA U', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1201071', '1201', 'SOGAEADU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1201070', '1201', 'GIDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1201062', '1201', 'ULUGAWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1201061', '1201', 'BAWOLATO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1201060', '1201', 'IDANO GAWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604061', '1604', 'PAJAR BULAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604062', '1604', 'MUARA PAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604063', '1604', 'SUKAMERINDU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604111', '1604', 'KIKIM BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604112', '1604', 'KIKIM TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604113', '1604', 'KIKIM SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604114', '1604', 'KIKIM TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604120', '1604', 'LAHAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604121', '1604', 'GUMAY TALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604122', '1604', 'PSEKSU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604123', '1604', 'LAHAT SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604131', '1604', 'MERAPI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604132', '1604', 'MERAPI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604133', '1604', 'MERAPI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605030', '1605', 'SUKU TENGAH LAKITAN ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605031', '1605', 'SELANGIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605032', '1605', 'SUMBER HARTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605040', '1605', 'TUGUMULYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605041', '1605', 'PURWODADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605050', '1605', 'MUARA BELITI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605051', '1605', 'TIANG PUMPUNG KEPUNGUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605060', '1605', 'JAYALOKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605061', '1605', 'SUKA KARYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605070', '1605', 'MUARA KELINGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605071', '1605', 'BULANG TENGAH SUKU ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605072', '1605', 'TUAH NEGERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605080', '1605', 'MUARA LAKITAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1605090', '1605', 'MEGANG SAKTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606010', '1606', 'SANGA DESA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606020', '1606', 'BABAT TOMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606021', '1606', 'BATANGHARI LEKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606022', '1606', 'PLAKAT TINGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606023', '1606', 'LAWANG WETAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606030', '1606', 'SUNGAI KERUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606040', '1606', 'SEKAYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606041', '1606', 'LAIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606090', '1606', 'SUNGAI LILIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606091', '1606', 'KELUANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606092', '1606', 'BABAT SUPAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606100', '1606', 'BAYUNG LENCIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606101', '1606', 'LALAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1606102', '1606', 'TUNGKAL JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607010', '1607', 'RANTAU BAYUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607020', '1607', 'BETUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607021', '1607', 'SUAK TAPEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607030', '1607', 'PULAU RIMAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607031', '1607', 'TUNGKAL ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607040', '1607', 'BANYUASIN III', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607041', '1607', 'SEMBAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607050', '1607', 'TALANG KELAPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607051', '1607', 'TANJUNG LAGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607060', '1607', 'BANYUASIN I', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607061', '1607', 'AIR KUMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607070', '1607', 'RAMBUTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607080', '1607', 'MUARA PADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607081', '1607', 'MUARA SUGIHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607090', '1607', 'MAKARTI JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607091', '1607', 'AIR SALEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607100', '1607', 'BANYUASIN II', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607110', '1607', 'MUARA TELANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1607111', '1607', 'SUMBER MARGA TELANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608010', '1608', 'MEKAKAU ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608020', '1608', 'BANDING AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608021', '1608', 'WARKUK RANAU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608022', '1608', 'BUAY PEMATANG RIBU RANAU TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608030', '1608', 'BUAY PEMACA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608040', '1608', 'SIMPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608041', '1608', 'BUANA PEMACA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608050', '1608', 'MUARADUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608051', '1608', 'BUAY RAWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608060', '1608', 'BUAY SANDANG AJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608061', '1608', 'TIGA DIHAJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608070', '1608', 'BUAY RUNJUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608071', '1608', 'RUNJUNG AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608080', '1608', 'KISAM TINGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608090', '1608', 'MUARADUA KISAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608091', '1608', 'KISAM ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608100', '1608', 'PULAU BERINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608101', '1608', 'SINDANG DANAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1608102', '1608', 'SUNGAI ARE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609010', '1609', 'MARTAPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609011', '1609', 'BUNGA MAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609012', '1609', 'JAYA PURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609020', '1609', 'BUAY PEMUKA PELIUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609030', '1609', 'BUAY MADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609031', '1609', 'BUAY MADANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609032', '1609', 'BUAY PEMUKA BANGSA RAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609040', '1609', 'MADANG SUKU II', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609041', '1609', 'MADANG SUKU III', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609050', '1609', 'MADANG SUKU I', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609051', '1609', 'BELITANG MADANG RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609060', '1609', 'BELITANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609061', '1609', 'BELITANG JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609070', '1609', 'BELITANG III', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609080', '1609', 'BELITANG II', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609081', '1609', 'BELITANG MULYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609090', '1609', 'SEMENDAWAI SUKU III', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609091', '1609', 'SEMENDAWAI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609100', '1609', 'CEMPAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1609101', '1609', 'SEMENDAWAI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610010', '1610', 'MUARA KUANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610011', '1610', 'RAMBANG KUANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610012', '1610', 'LUBUK KELIAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610020', '1610', 'TANJUNG BATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610021', '1610', 'PAYARAMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610030', '1610', 'RANTAU ALAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610031', '1610', 'KANDIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610040', '1610', 'TANJUNG RAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610041', '1610', 'RANTAU PANJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610042', '1610', 'SUNGAI PINANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610050', '1610', 'PEMULUTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610051', '1610', 'PEMULUTAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610052', '1610', 'PEMULUTAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610060', '1610', 'INDRALAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610061', '1610', 'INDRALAYA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1610062', '1610', 'INDRALAYA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1611010', '1611', 'MUARA PINANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1611020', '1611', 'LINTANG KANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1611030', '1611', 'PENDOPO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1611031', '1611', 'PENDOPO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1611040', '1611', 'PASEMAH AIR KERUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1611050', '1611', 'ULU MUSI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1611051', '1611', 'SIKAP DALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1611060', '1611', 'TALANG PADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1611070', '1611', 'TEBING TINGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1611071', '1611', 'SALING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1612010', '1612', 'TALANG UBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1612020', '1612', 'TANAH ABANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1612030', '1612', 'ABAB', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1612040', '1612', 'PENUKAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1612050', '1612', 'PENUKAL UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1613010', '1613', 'ULU RAWAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1613020', '1613', 'KARANG JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1613030', '1613', 'RAWAS ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1613040', '1613', 'RUPIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1613050', '1613', 'KARANG DAPO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1613060', '1613', 'RAWAS ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1613070', '1613', 'NIBUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671010', '1671', 'ILIR BARAT II', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671011', '1671', 'GANDUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671020', '1671', 'SEBERANG ULU I', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671021', '1671', 'KERTAPATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671022', '1671', 'JAKABARING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671030', '1671', 'SEBERANG ULU II', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671031', '1671', 'PLAJU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671040', '1671', 'ILIR BARAT I', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671041', '1671', 'BUKIT KECIL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671050', '1671', 'ILIR TIMUR I', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671051', '1671', 'KEMUNING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671060', '1671', 'ILIR TIMUR II', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671061', '1671', 'KALIDONI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671062', '1671', 'ILIR TIMUR III', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671070', '1671', 'SAKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671071', '1671', 'SEMATANG BORANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671080', '1671', 'SUKARAMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1671081', '1671', 'ALANG ALANG LEBAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1672010', '1672', 'RAMBANG KAPAK TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1672020', '1672', 'PRABUMULIH TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1672021', '1672', 'PRABUMULIH SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1672030', '1672', 'PRABUMULIH BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1672031', '1672', 'PRABUMULIH UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1672040', '1672', 'CAMBAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1673010', '1673', 'DEMPO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1673011', '1673', 'DEMPO TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1673020', '1673', 'DEMPO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1673030', '1673', 'PAGAR ALAM SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1673040', '1673', 'PAGAR ALAM UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1674011', '1674', 'LUBUK LINGGAU BARAT I', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1674012', '1674', 'LUBUK LINGGAU BARAT II', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1674021', '1674', 'LUBUK LINGGAU SELATAN I', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1674022', '1674', 'LUBUK LINGGAU SELATAN II', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1674031', '1674', 'LUBUK LINGGAU TIMUR I', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1674032', '1674', 'LUBUK LINGGAU TIMUR II', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1674041', '1674', 'LUBUK LINGGAU UTARA I', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1674042', '1674', 'LUBUK LINGGAU UTARA II', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1701040', '1701', 'MANNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1701041', '1701', 'KOTA MANNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1701042', '1701', 'KEDURANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1701043', '1701', 'BUNGA MAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1701044', '1701', 'PASAR MANNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1701045', '1701', 'KEDURANG ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1701050', '1701', 'SEGINIM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1701051', '1701', 'AIR NIPIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1701060', '1701', 'PINO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1701061', '1701', 'PINORAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1701062', '1701', 'ULU MANNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702020', '1702', 'KOTA PADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702021', '1702', 'SINDANG BELITI ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702030', '1702', 'PADANG ULAK TANDING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702031', '1702', 'SINDANG KELINGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702032', '1702', 'BINDU RIANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702033', '1702', 'SINDANG BELITI ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702034', '1702', 'SINDANG DATARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702040', '1702', 'CURUP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702041', '1702', 'BERMANI ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702042', '1702', 'SELUPU REJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702043', '1702', 'CURUP SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702044', '1702', 'CURUP TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702045', '1702', 'BERMANI ULU RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702046', '1702', 'CURUP UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1702047', '1702', 'CURUP TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703010', '1703', 'ENGGANO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703050', '1703', 'KERKAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703051', '1703', 'AIR NAPAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703052', '1703', 'AIR BESI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703053', '1703', 'HULU PALIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703054', '1703', 'TANJUNG AGUNG PALIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703060', '1703', 'ARGA MAKMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703061', '1703', 'ARMA JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703070', '1703', 'LAIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703071', '1703', 'BATIK NAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703072', '1703', 'GIRI MULYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703073', '1703', 'AIR PADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703080', '1703', 'PADANG JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703090', '1703', 'KETAHUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703091', '1703', 'NAPAL PUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703092', '1703', 'ULOK KUPAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703093', '1703', 'PINANG RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703100', '1703', 'PUTRI HIJAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1703101', '1703', 'MARGA SAKTI SEBELAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704010', '1704', 'NASAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704020', '1704', 'MAJE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704030', '1704', 'KAUR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704031', '1704', 'TETAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704040', '1704', 'KAUR TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704041', '1704', 'LUAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704042', '1704', 'MUARA SAHUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704050', '1704', 'KINAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704051', '1704', 'SEMIDANG GUMAY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704060', '1704', 'TANJUNG KEMUNING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704061', '1704', 'KELAM TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704070', '1704', 'KAUR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704071', '1704', 'PADANG GUCI HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704072', '1704', 'LUNGKANG KULE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1704073', '1704', 'PADANG GUCI HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705010', '1705', 'SEMIDANG ALAS MARAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705020', '1705', 'SEMIDANG ALAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705030', '1705', 'TALO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705031', '1705', 'ILIR TALO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705032', '1705', 'TALO KECIL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705033', '1705', 'ULU TALO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705040', '1705', 'SELUMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705041', '1705', 'SELUMA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705042', '1705', 'SELUMA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705043', '1705', 'SELUMA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705044', '1705', 'SELUMA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705050', '1705', 'SUKARAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705051', '1705', 'AIR PERIUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1705052', '1705', 'LUBUK SANDI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706010', '1706', 'IPUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706011', '1706', 'AIR RAMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706012', '1706', 'MALIN DEMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706020', '1706', 'PONDOK SUGUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706021', '1706', 'SUNGAI RUMBAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706022', '1706', 'TERAMANG JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706030', '1706', 'TERAS TERUNJAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706031', '1706', 'PENARIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706032', '1706', 'SELAGAN RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706040', '1706', 'KOTA MUKOMUKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706041', '1706', 'AIR DIKIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706042', '1706', 'XIV KOTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706050', '1706', 'LUBUK PINANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706051', '1706', 'AIR MANJUNTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1706052', '1706', 'V KOTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1707010', '1707', 'RIMBO PENGADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1707011', '1707', 'TOPOS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1707020', '1707', 'LEBONG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1707021', '1707', 'BINGIN KUNING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1707030', '1707', 'LEBONG TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1707031', '1707', 'LEBONG SAKTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1707040', '1707', 'LEBONG ATAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1707042', '1707', 'PELABAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1707050', '1707', 'LEBONG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1707051', '1707', 'AMEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1707052', '1707', 'URAM JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1707053', '1707', 'PINANG BELAPIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1708010', '1708', 'MUARA KEMUMU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1708020', '1708', 'BERMANI ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1708030', '1708', 'SEBERANG MUSI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1708040', '1708', 'TEBAT KARAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1708050', '1708', 'KEPAHIANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1708060', '1708', 'KABA WETAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1708070', '1708', 'UJAN MAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1708080', '1708', 'MERIGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1709010', '1709', 'TALANG EMPAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1709020', '1709', 'KARANG TINGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1709030', '1709', 'TABA PENANJUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1709031', '1709', 'MERIGI KELINDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1709040', '1709', 'PAGAR JATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1709041', '1709', 'MERIGI SAKTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1709050', '1709', 'PONDOK KELAPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1709051', '1709', 'PONDOK KUBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1709060', '1709', 'PEMATANG TIGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1709061', '1709', 'BANG HAJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1771010', '1771', 'SELEBAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1771011', '1771', 'KAMPUNG MELAYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1771020', '1771', 'GADING CEMPAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1771021', '1771', 'RATU AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1771022', '1771', 'RATU SAMBAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1771023', '1771', 'SINGARAN PATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1771030', '1771', 'TELUK SEGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1771031', '1771', 'SUNGAI SERUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1771040', '1771', 'MUARA BANGKA HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801040', '1801', 'BALIK BUKIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801041', '1801', 'SUKAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801042', '1801', 'LUMBOK SEMINUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801050', '1801', 'BELALAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801051', '1801', 'SEKINCAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801052', '1801', 'SUOH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801053', '1801', 'BATU BRAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801054', '1801', 'PAGAR DEWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801055', '1801', 'BATU KETULIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801056', '1801', 'BANDAR NEGERI SUOH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801060', '1801', 'SUMBER JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801061', '1801', 'WAY TENONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801062', '1801', 'GEDUNG SURIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801063', '1801', 'KEBUN TEBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1801064', '1801', 'AIR HITAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802010', '1802', 'WONOSOBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802011', '1802', 'SEMAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802012', '1802', 'BANDAR NEGERI SEMUONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802020', '1802', 'KOTA AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802021', '1802', 'PEMATANG SAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802022', '1802', 'KOTA AGUNG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802023', '1802', 'KOTA AGUNG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802030', '1802', 'PULAU PANGGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802031', '1802', 'ULUBELU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802032', '1802', 'AIR NANINGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802040', '1802', 'TALANG PADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802041', '1802', 'SUMBEREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802042', '1802', 'GISTING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802043', '1802', 'GUNUNG ALIP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802050', '1802', 'PUGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802101', '1802', 'BULOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802110', '1802', 'CUKUH BALAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802111', '1802', 'KELUMBAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802112', '1802', 'LIMAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1802113', '1802', 'KELUMBAYAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803060', '1803', 'NATAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803070', '1803', 'JATI AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803080', '1803', 'TANJUNG BINTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803081', '1803', 'TANJUNG SARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803090', '1803', 'KATIBUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803091', '1803', 'MERBAU MATARAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803092', '1803', 'WAY SULAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803100', '1803', 'SIDOMULYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803101', '1803', 'CANDIPURO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803102', '1803', 'WAY PANJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803110', '1803', 'KALIANDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803111', '1803', 'RAJABASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803120', '1803', 'PALAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803121', '1803', 'SRAGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803130', '1803', 'PENENGAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803131', '1803', 'KETAPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1803132', '1803', 'BAKAUHENI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804010', '1804', 'METRO KIBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804020', '1804', 'BATANGHARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804030', '1804', 'SEKAMPUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804040', '1804', 'MARGATIGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804050', '1804', 'SEKAMPUNG UDIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804060', '1804', 'JABUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804061', '1804', 'PASIR SAKTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804062', '1804', 'WAWAY KARYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804063', '1804', 'MARGA SEKAMPUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804070', '1804', 'LABUHAN MARINGGAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804071', '1804', 'MATARAM BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804072', '1804', 'BANDAR SRIBAWONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804073', '1804', 'MELINTING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804074', '1804', 'GUNUNG PELINDUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804080', '1804', 'WAY JEPARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804081', '1804', 'BRAJA SLEBAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804082', '1804', 'LABUHAN RATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804090', '1804', 'SUKADANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804091', '1804', 'BUMI AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804092', '1804', 'BATANGHARI NUBAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804100', '1804', 'PEKALONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804110', '1804', 'RAMAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804120', '1804', 'PURBOLINGGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1804121', '1804', 'WAY BUNGUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805010', '1805', 'PADANG RATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805011', '1805', 'SELAGAI LINGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805012', '1805', 'PUBIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805013', '1805', 'ANAK TUHA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805014', '1805', 'ANAK RATU AJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805020', '1805', 'KALIREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805021', '1805', 'SENDANG AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805030', '1805', 'BANGUNREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805040', '1805', 'GUNUNG SUGIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805041', '1805', 'BEKRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805042', '1805', 'BUMI RATU NUBAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805050', '1805', 'TRIMURJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805060', '1805', 'PUNGGUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805061', '1805', 'KOTA GAJAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805070', '1805', 'SEPUTIH RAMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805080', '1805', 'TERBANGGI BESAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805081', '1805', 'SEPUTIH AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805082', '1805', 'WAY PENGUBUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805090', '1805', 'TERUSAN NUNYAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805100', '1805', 'SEPUTIH MATARAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805101', '1805', 'BANDAR MATARAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805110', '1805', 'SEPUTIH BANYAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805111', '1805', 'WAY SEPUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805120', '1805', 'RUMBIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805121', '1805', 'BUMI NABUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805122', '1805', 'PUTRA RUMBIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805130', '1805', 'SEPUTIH SURABAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1805131', '1805', 'BANDAR SURABAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806010', '1806', 'BUKIT KEMUNING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806011', '1806', 'ABUNG TINGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806020', '1806', 'TANJUNG RAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806030', '1806', 'ABUNG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806031', '1806', 'ABUNG TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806032', '1806', 'ABUNG  KUNANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806033', '1806', 'ABUNG PEKURUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806040', '1806', 'KOTABUMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806041', '1806', 'KOTABUMI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806042', '1806', 'KOTABUMI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806050', '1806', 'ABUNG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806051', '1806', 'ABUNG SEMULI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806052', '1806', 'BLAMBANGAN PAGAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806060', '1806', 'ABUNG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806061', '1806', 'ABUNG SURAKARTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806070', '1806', 'SUNGKAI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806071', '1806', 'MUARA SUNGKAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806072', '1806', 'BUNGA MAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806073', '1806', 'SUNGKAI  BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806074', '1806', 'SUNGKAI JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806080', '1806', 'SUNGKAI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806081', '1806', 'HULUSUNGKAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1806082', '1806', 'SUNGKAI TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807010', '1807', 'BANJIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807020', '1807', 'BARADATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807021', '1807', 'GUNUNG LABUHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807030', '1807', 'KASUI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807031', '1807', 'REBANG TANGKAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807040', '1807', 'BLAMBANGAN UMPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807041', '1807', 'WAY TUBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807042', '1807', 'NEGERI AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807050', '1807', 'BAHUGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807051', '1807', 'BUAY  BAHUGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807052', '1807', 'BUMI AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807060', '1807', 'PAKUAN RATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807061', '1807', 'NEGARA BATIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1807062', '1807', 'NEGERI BESAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808030', '1808', 'BANJAR AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808031', '1808', 'BANJAR MARGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808032', '1808', 'BANJAR BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808040', '1808', 'GEDUNG AJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808041', '1808', 'PENAWAR AJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808042', '1808', 'MERAKSA AJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808050', '1808', 'MENGGALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808051', '1808', 'PENAWAR TAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808052', '1808', 'RAWAJITU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808053', '1808', 'GEDUNG MENENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808054', '1808', 'RAWAJITU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808055', '1808', 'RAWA PITU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808056', '1808', 'GEDUNG AJI BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808057', '1808', 'DENTE TELADAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1808058', '1808', 'MENGGALA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1809010', '1809', 'PUNDUH PIDADA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1809011', '1809', 'MARGA PUNDUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1809020', '1809', 'PADANG CERMIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1809021', '1809', 'TELUK PANDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1809022', '1809', 'WAY RATAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1809030', '1809', 'KEDONDONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1809031', '1809', 'WAY KHILAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1809040', '1809', 'WAY LIMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1809050', '1809', 'GEDUNG TATAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1809060', '1809', 'NEGERI KATON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1809070', '1809', 'TEGINENENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1810010', '1810', 'PARDASUKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1810020', '1810', 'AMBARAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1810030', '1810', 'PAGELARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1810031', '1810', 'PAGELARAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1810040', '1810', 'PRINGSEWU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1810050', '1810', 'GADING REJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1810060', '1810', 'SUKOHARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1810070', '1810', 'BANYUMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1810080', '1810', 'ADI LUWIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1811010', '1811', 'WAY SERDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1811020', '1811', 'SIMPANG PEMATANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1811030', '1811', 'PANCA JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1811040', '1811', 'TANJUNG RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1811050', '1811', 'MESUJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1811060', '1811', 'MESUJI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1811070', '1811', 'RAWAJITU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1812010', '1812', 'TULANG BAWANG UDIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1812020', '1812', 'TUMI JAJAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1812030', '1812', 'TULANG BAWANG TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1812040', '1812', 'PAGAR DEWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1812050', '1812', 'LAMBU KIBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1812060', '1812', 'GUNUNG TERANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1812061', '1812', 'BATU PUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1812070', '1812', 'GUNUNG AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1812080', '1812', 'WAY KENANGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1813010', '1813', 'LEMONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1813020', '1813', 'PESISIR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1813030', '1813', 'PULAU PISANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1813040', '1813', 'KARYA PENGGAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1813050', '1813', 'WAY KRUI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1813060', '1813', 'PESISIR TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1813070', '1813', 'KRUI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1813080', '1813', 'PESISIR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1813090', '1813', 'NGAMBUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1813100', '1813', 'BENGKUNAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1813110', '1813', 'BENGKUNAT BELIMBING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871010', '1871', 'TELUK BETUNG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871011', '1871', 'TELUKBETUNG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871020', '1871', 'TELUK BETUNG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871021', '1871', 'BUMI WARAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871030', '1871', 'PANJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871040', '1871', 'TANJUNG KARANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871041', '1871', 'KEDAMAIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871050', '1871', 'TELUK BETUNG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871060', '1871', 'TANJUNG KARANG PUSAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871061', '1871', 'ENGGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871070', '1871', 'TANJUNG KARANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871071', '1871', 'KEMILING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871072', '1871', 'LANGKAPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871080', '1871', 'KEDATON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871081', '1871', 'RAJABASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871082', '1871', 'TANJUNG SENANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871083', '1871', 'LABUHAN RATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871090', '1871', 'SUKARAME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871091', '1871', 'SUKABUMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1871092', '1871', 'WAY HALIM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1872011', '1872', 'METRO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1872012', '1872', 'METRO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1872021', '1872', 'METRO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1872022', '1872', 'METRO PUSAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1872023', '1872', 'METRO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1901070', '1901', 'MENDO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1901080', '1901', 'MERAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1901081', '1901', 'PUDING BESAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1901090', '1901', 'SUNGAI LIAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1901091', '1901', 'PEMALI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1901092', '1901', 'BAKAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1901130', '1901', 'BELINYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1901131', '1901', 'RIAU SILIP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1902010', '1902', 'MEMBALONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1902060', '1902', 'TANJUNG PANDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1902061', '1902', 'BADAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1902062', '1902', 'SIJUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1902063', '1902', 'SELAT NASIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1903010', '1903', 'KELAPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1903020', '1903', 'TEMPILANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1903030', '1903', 'MENTOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1903040', '1903', 'SIMPANG TERITIP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1903050', '1903', 'JEBUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1903051', '1903', 'PARITTIGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1904010', '1904', 'KOBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1904011', '1904', 'LUBUK BESAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1904020', '1904', 'PANGKALAN BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1904021', '1904', 'NAMANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1904030', '1904', 'SUNGAI SELAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1904040', '1904', 'SIMPANG KATIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1905010', '1905', 'PAYUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1905011', '1905', 'PULAU BESAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1905020', '1905', 'SIMPANG RIMBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1905030', '1905', 'TOBOALI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1905031', '1905', 'TUKAK SADAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1905040', '1905', 'AIR GEGAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1905050', '1905', 'LEPAR PONGOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1905051', '1905', 'KEPULAUAN PONGOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1906010', '1906', 'DENDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1906011', '1906', 'SIMPANG PESAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1906020', '1906', 'GANTUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1906021', '1906', 'SIMPANG RENGGIANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1906030', '1906', 'MANGGAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1906031', '1906', 'DAMAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1906040', '1906', 'KELAPA KAMPIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1971010', '1971', 'RANGKUI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1971020', '1971', 'BUKIT INTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1971021', '1971', 'GIRIMAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1971030', '1971', 'PANGKAL BALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1971031', '1971', 'GABEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1971040', '1971', 'TAMAN SARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1971041', '1971', 'GERUNGGANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2101010', '2101', 'MORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2101011', '2101', 'DURAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2101020', '2101', 'KUNDUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2101021', '2101', 'KUNDUR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2101022', '2101', 'KUNDUR BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2101023', '2101', 'UNGAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2101024', '2101', 'BELAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2101030', '2101', 'KARIMUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2101031', '2101', 'BURU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2101032', '2101', 'MERAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2101033', '2101', 'TEBING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2101034', '2101', 'MERAL BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2102040', '2102', 'TELUK BINTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2102050', '2102', 'BINTAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2102051', '2102', 'TELUK SEBONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2102052', '2102', 'SERI KUALA LOBAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2102060', '2102', 'BINTAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2102061', '2102', 'GUNUNG KIJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2102062', '2102', 'MANTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2102063', '2102', 'BINTAN PESISIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2102064', '2102', 'TOAPAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2102070', '2102', 'TAMBELAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103030', '2103', 'MIDAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103031', '2103', 'SUAK MIDAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103040', '2103', 'BUNGURAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103041', '2103', 'BUNGURAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103042', '2103', 'PULAU LAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103043', '2103', 'PULAU TIGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103044', '2103', 'BUNGURAN BATUBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103045', '2103', 'PULAU TIGA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103050', '2103', 'BUNGURAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103051', '2103', 'BUNGURAN TIMUR LAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103052', '2103', 'BUNGURAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103053', '2103', 'BUNGURAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103060', '2103', 'SERASAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103061', '2103', 'SUBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2103062', '2103', 'SERASAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2104010', '2104', 'SINGKEP BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2104011', '2104', 'KEPULAUAN POSEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2104020', '2104', 'SINGKEP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2104021', '2104', 'SINGKEP SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2104022', '2104', 'SINGKEP PESISIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2104030', '2104', 'LINGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2104031', '2104', 'SELAYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2104032', '2104', 'LINGGA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2104040', '2104', 'LINGGA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2104050', '2104', 'SENAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2105010', '2105', 'JEMAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2105020', '2105', 'JEMAJA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2105030', '2105', 'SIANTAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2105040', '2105', 'SIANTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2105050', '2105', 'SIANTAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2105060', '2105', 'SIANTAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2105070', '2105', 'PALMATAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2171010', '2171', 'BELAKANG PADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2171020', '2171', 'BULANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2171030', '2171', 'GALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2171040', '2171', 'SEI BEDUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2171041', '2171', 'SAGULUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2171050', '2171', 'NONGSA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2171051', '2171', 'BATAM KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2171060', '2171', 'SEKUPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2171061', '2171', 'BATU AJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2171070', '2171', 'LUBUK BAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2171080', '2171', 'BATU AMPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2171081', '2171', 'BENGKONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2172010', '2172', 'BUKIT BESTARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2172020', '2172', 'TANJUNGPINANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2172030', '2172', 'TANJUNGPINANG KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('2172040', '2172', 'TANJUNGPINANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3101010', '3101', 'KEPULAUAN SERIBU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3101020', '3101', 'KEPULAUAN SERIBU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3171010', '3171', 'JAGAKARSA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3171020', '3171', 'PASAR MINGGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3171030', '3171', 'CILANDAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3171040', '3171', 'PESANGGRAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3171050', '3171', 'KEBAYORAN LAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3171060', '3171', 'KEBAYORAN BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3171070', '3171', 'MAMPANG PRAPATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3171080', '3171', 'PANCORAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3171090', '3171', 'TEBET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3171100', '3171', 'SETIA BUDI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3172010', '3172', 'PASAR REBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3172020', '3172', 'CIRACAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3172030', '3172', 'CIPAYUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3172040', '3172', 'MAKASAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3172050', '3172', 'KRAMAT JATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3172060', '3172', 'JATINEGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3172070', '3172', 'DUREN SAWIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3172080', '3172', 'CAKUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3172090', '3172', 'PULO GADUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3172100', '3172', 'MATRAMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3173010', '3173', 'TANAH ABANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3173020', '3173', 'MENTENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3173030', '3173', 'SENEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3173040', '3173', 'JOHAR BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3173050', '3173', 'CEMPAKA PUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3173060', '3173', 'KEMAYORAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3173070', '3173', 'SAWAH BESAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3173080', '3173', 'GAMBIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3174010', '3174', 'KEMBANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3174020', '3174', 'KEBON JERUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3174030', '3174', 'PALMERAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3174040', '3174', 'GROGOL PETAMBURAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3174050', '3174', 'TAMBORA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3174060', '3174', 'TAMAN SARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3174070', '3174', 'CENGKARENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3174080', '3174', 'KALI DERES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3175010', '3175', 'PENJARINGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3175020', '3175', 'PADEMANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3175030', '3175', 'TANJUNG PRIOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3175040', '3175', 'KOJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3175050', '3175', 'KELAPA GADING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3175060', '3175', 'CILINCING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201010', '3201', 'NANGGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201020', '3201', 'LEUWILIANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201021', '3201', 'LEUWISADENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201030', '3201', 'PAMIJAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201040', '3201', 'CIBUNGBULANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201050', '3201', 'CIAMPEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201051', '3201', 'TENJOLAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201060', '3201', 'DRAMAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201070', '3201', 'CIOMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201071', '3201', 'TAMANSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201080', '3201', 'CIJERUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201081', '3201', 'CIGOMBONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201090', '3201', 'CARINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201100', '3201', 'CIAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201110', '3201', 'CISARUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201120', '3201', 'MEGAMENDUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201130', '3201', 'SUKARAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201140', '3201', 'BABAKAN MADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201150', '3201', 'SUKAMAKMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201160', '3201', 'CARIU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201161', '3201', 'TANJUNGSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201170', '3201', 'JONGGOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201180', '3201', 'CILEUNGSI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201181', '3201', 'KELAPA NUNGGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201190', '3201', 'GUNUNG PUTRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201200', '3201', 'CITEUREUP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201210', '3201', 'CIBINONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201220', '3201', 'BOJONG GEDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201221', '3201', 'TAJUR HALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201230', '3201', 'KEMANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201231', '3201', 'RANCA BUNGUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201240', '3201', 'PARUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201241', '3201', 'CISEENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201250', '3201', 'GUNUNG SINDUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201260', '3201', 'RUMPIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201270', '3201', 'CIGUDEG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201271', '3201', 'SUKAJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201280', '3201', 'JASINGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201290', '3201', 'TENJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3201300', '3201', 'PARUNG PANJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202010', '3202', 'CIEMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202020', '3202', 'CIRACAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202021', '3202', 'WALURAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202030', '3202', 'SURADE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202031', '3202', 'CIBITUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202040', '3202', 'JAMPANG KULON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202041', '3202', 'CIMANGGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202050', '3202', 'KALI BUNDER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202060', '3202', 'TEGAL BULEUD', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202070', '3202', 'CIDOLOG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202080', '3202', 'SAGARANTEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202081', '3202', 'CIDADAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202082', '3202', 'CURUGKEMBAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202090', '3202', 'PABUARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202100', '3202', 'LENGKONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202110', '3202', 'PALABUHANRATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202111', '3202', 'SIMPENAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202120', '3202', 'WARUNG KIARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202121', '3202', 'BANTARGADUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202130', '3202', 'JAMPANG TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202131', '3202', 'PURABAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202140', '3202', 'CIKEMBAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202150', '3202', 'NYALINDUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202160', '3202', 'GEGER BITUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202170', '3202', 'SUKARAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202171', '3202', 'KEBONPEDES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202172', '3202', 'CIREUNGHAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202173', '3202', 'SUKALARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202180', '3202', 'SUKABUMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202190', '3202', 'KADUDAMPIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202200', '3202', 'CISAAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202201', '3202', 'GUNUNGGURUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202210', '3202', 'CIBADAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202211', '3202', 'CICANTAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202212', '3202', 'CARINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202220', '3202', 'NAGRAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202221', '3202', 'CIAMBAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202230', '3202', 'CICURUG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202240', '3202', 'CIDAHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202250', '3202', 'PARAKAN SALAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202260', '3202', 'PARUNG KUDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202261', '3202', 'BOJONG GENTENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202270', '3202', 'KALAPA NUNGGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202280', '3202', 'CIKIDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202290', '3202', 'CISOLOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202291', '3202', 'CIKAKAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3202300', '3202', 'KABANDUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203010', '3203', 'AGRABINTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203011', '3203', 'LELES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203020', '3203', 'SINDANGBARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203030', '3203', 'CIDAUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203040', '3203', 'NARINGGUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203050', '3203', 'CIBINONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203051', '3203', 'CIKADU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203060', '3203', 'TANGGEUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203061', '3203', 'PASIRKUDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203070', '3203', 'KADUPANDAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203071', '3203', 'CIJATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203080', '3203', 'TAKOKAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203090', '3203', 'SUKANAGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203100', '3203', 'PAGELARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203110', '3203', 'CAMPAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203111', '3203', 'CAMPAKA MULYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203120', '3203', 'CIBEBER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203130', '3203', 'WARUNGKONDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203131', '3203', 'GEKBRONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203140', '3203', 'CILAKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203150', '3203', 'SUKALUYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203160', '3203', 'BOJONGPICUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203161', '3203', 'HAURWANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203170', '3203', 'CIRANJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203180', '3203', 'MANDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203190', '3203', 'KARANGTENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203200', '3203', 'CIANJUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203210', '3203', 'CUGENANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203220', '3203', 'PACET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203221', '3203', 'CIPANAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203230', '3203', 'SUKARESMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3203240', '3203', 'CIKALONGKULON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204010', '3204', 'CIWIDEY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204011', '3204', 'RANCABALI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204020', '3204', 'PASIRJAMBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204030', '3204', 'CIMAUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204040', '3204', 'PANGALENGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204050', '3204', 'KERTASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204060', '3204', 'PACET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204070', '3204', 'IBUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204080', '3204', 'PASEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204090', '3204', 'CIKANCUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204100', '3204', 'CICALENGKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204101', '3204', 'NAGREG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204110', '3204', 'RANCAEKEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204120', '3204', 'MAJALAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204121', '3204', 'SOLOKAN JERUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204130', '3204', 'CIPARAY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204140', '3204', 'BALEENDAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204150', '3204', 'ARJASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204160', '3204', 'BANJARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204161', '3204', 'CANGKUANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204170', '3204', 'PAMEUNGPEUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204180', '3204', 'KATAPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204190', '3204', 'SOREANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204191', '3204', 'KUTAWARINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204250', '3204', 'MARGAASIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204260', '3204', 'MARGAHAYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204270', '3204', 'DAYEUHKOLOT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204280', '3204', 'BOJONGSOANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204290', '3204', 'CILEUNYI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204300', '3204', 'CILENGKRANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3204310', '3204', 'CIMENYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205010', '3205', 'CISEWU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205011', '3205', 'CARINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205020', '3205', 'TALEGONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205030', '3205', 'BUNGBULANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205031', '3205', 'MEKARMUKTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205040', '3205', 'PAMULIHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205050', '3205', 'PAKENJENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205060', '3205', 'CIKELET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205070', '3205', 'PAMEUNGPEUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205080', '3205', 'CIBALONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205090', '3205', 'CISOMPET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205100', '3205', 'PEUNDEUY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205110', '3205', 'SINGAJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205111', '3205', 'CIHURIP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205120', '3205', 'CIKAJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205130', '3205', 'BANJARWANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205140', '3205', 'CILAWU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205150', '3205', 'BAYONGBONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205151', '3205', 'CIGEDUG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205160', '3205', 'CISURUPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205161', '3205', 'SUKARESMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205170', '3205', 'SAMARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205171', '3205', 'PASIRWANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205181', '3205', 'TAROGONG KIDUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205182', '3205', 'TAROGONG KALER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205190', '3205', 'GARUT KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205200', '3205', 'KARANGPAWITAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205210', '3205', 'WANARAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205211', '3205', 'SUCINARAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205212', '3205', 'PANGATIKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205220', '3205', 'SUKAWENING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205221', '3205', 'KARANGTENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205230', '3205', 'BANYURESMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205240', '3205', 'LELES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205250', '3205', 'LEUWIGOONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205260', '3205', 'CIBATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205261', '3205', 'KERSAMANAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205270', '3205', 'CIBIUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205280', '3205', 'KADUNGORA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205290', '3205', 'BLUBUR LIMBANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205300', '3205', 'SELAAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3205310', '3205', 'MALANGBONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206010', '3206', 'CIPATUJAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206020', '3206', 'KARANGNUNGGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206030', '3206', 'CIKALONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206040', '3206', 'PANCATENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206050', '3206', 'CIKATOMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206060', '3206', 'CIBALONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206061', '3206', 'PARUNGPONTENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206070', '3206', 'BANTARKALONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206071', '3206', 'BOJONGASIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206072', '3206', 'CULAMEGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206080', '3206', 'BOJONGGAMBIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206090', '3206', 'SODONGHILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206100', '3206', 'TARAJU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206110', '3206', 'SALAWU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206111', '3206', 'PUSPAHIANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206120', '3206', 'TANJUNGJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206130', '3206', 'SUKARAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206140', '3206', 'SALOPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206141', '3206', 'JATIWARAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206150', '3206', 'CINEAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206151', '3206', 'KARANGJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206160', '3206', 'MANONJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206161', '3206', 'GUNUNGTANJUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206190', '3206', 'SINGAPARNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206191', '3206', 'SUKARAME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206192', '3206', 'MANGUNREJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206200', '3206', 'CIGALONTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206210', '3206', 'LEUWISARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206211', '3206', 'SARIWANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206212', '3206', 'PADAKEMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206221', '3206', 'SUKARATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206230', '3206', 'CISAYONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206231', '3206', 'SUKAHENING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206240', '3206', 'RAJAPOLAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206250', '3206', 'JAMANIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206260', '3206', 'CIAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206261', '3206', 'KADIPATEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206270', '3206', 'PAGERAGEUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3206271', '3206', 'SUKARESIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207100', '3207', 'BANJARSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207101', '3207', 'BANJARANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207110', '3207', 'LAKBOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207111', '3207', 'PURWADADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207120', '3207', 'PAMARICAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207130', '3207', 'CIDOLOG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207140', '3207', 'CIMARAGAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207150', '3207', 'CIJEUNGJING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207160', '3207', 'CISAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207170', '3207', 'TAMBAKSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207180', '3207', 'RANCAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207190', '3207', 'RAJADESA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207200', '3207', 'SUKADANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207210', '3207', 'CIAMIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207211', '3207', 'BAREGBEG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207220', '3207', 'CIKONENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207221', '3207', 'SINDANGKASIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207230', '3207', 'CIHAURBEUTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207240', '3207', 'SADANANYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207250', '3207', 'CIPAKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207260', '3207', 'JATINAGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207270', '3207', 'PANAWANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207280', '3207', 'KAWALI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207281', '3207', 'LUMBUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207290', '3207', 'PANJALU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207291', '3207', 'SUKAMANTRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3207300', '3207', 'PANUMBANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208010', '3208', 'DARMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208020', '3208', 'KADUGEDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208021', '3208', 'NUSAHERANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208030', '3208', 'CINIRU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208031', '3208', 'HANTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208040', '3208', 'SELAJAMBE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208050', '3208', 'SUBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208051', '3208', 'CILEBAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208060', '3208', 'CIWARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208061', '3208', 'KARANGKANCANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208070', '3208', 'CIBINGBIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208071', '3208', 'CIBEUREUM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208080', '3208', 'LURAGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208081', '3208', 'CIMAHI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208090', '3208', 'CIDAHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208091', '3208', 'KALIMANGGIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208100', '3208', 'CIAWIGEBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208101', '3208', 'CIPICUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208110', '3208', 'LEBAKWANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208111', '3208', 'MALEBER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208120', '3208', 'GARAWANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208121', '3208', 'SINDANGAGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208130', '3208', 'KUNINGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208140', '3208', 'CIGUGUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208150', '3208', 'KRAMATMULYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208160', '3208', 'JALAKSANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208161', '3208', 'JAPARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208170', '3208', 'CILIMUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208171', '3208', 'CIGANDAMEKAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208180', '3208', 'MANDIRANCAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208181', '3208', 'PANCALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3208190', '3208', 'PASAWAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209010', '3209', 'WALED', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209011', '3209', 'PASALEMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209020', '3209', 'CILEDUG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209021', '3209', 'PABUARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209030', '3209', 'LOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209031', '3209', 'PABEDILAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209040', '3209', 'BABAKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209041', '3209', 'GEBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209050', '3209', 'KARANGSEMBUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209051', '3209', 'KARANGWARENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209060', '3209', 'LEMAHABANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209061', '3209', 'SUSUKANLEBAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209070', '3209', 'SEDONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209080', '3209', 'ASTANAJAPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209081', '3209', 'PANGENAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209090', '3209', 'MUNDU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209100', '3209', 'BEBER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209101', '3209', 'GREGED', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209111', '3209', 'TALUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209120', '3209', 'SUMBER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209121', '3209', 'DUKUPUNTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209130', '3209', 'PALIMANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209140', '3209', 'PLUMBON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209141', '3209', 'DEPOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209150', '3209', 'WERU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209151', '3209', 'PLERED', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209161', '3209', 'TENGAH TANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209162', '3209', 'KEDAWUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209171', '3209', 'GUNUNGJATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209180', '3209', 'KAPETAKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209181', '3209', 'SURANENGGALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209190', '3209', 'KLANGENAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209191', '3209', 'JAMBLANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209200', '3209', 'ARJAWINANGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209201', '3209', 'PANGURAGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209210', '3209', 'CIWARINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209211', '3209', 'GEMPOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209220', '3209', 'SUSUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209230', '3209', 'GEGESIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3209231', '3209', 'KALIWEDI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210010', '3210', 'LEMAHSUGIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210020', '3210', 'BANTARUJEG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210021', '3210', 'MALAUSMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210030', '3210', 'CIKIJING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210031', '3210', 'CINGAMBUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210040', '3210', 'TALAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210041', '3210', 'BANJARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210050', '3210', 'ARGAPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210060', '3210', 'MAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210070', '3210', 'MAJALENGKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210080', '3210', 'CIGASONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210090', '3210', 'SUKAHAJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210091', '3210', 'SINDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210100', '3210', 'RAJAGALUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210110', '3210', 'SINDANGWANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210120', '3210', 'LEUWIMUNDING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210130', '3210', 'PALASAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210140', '3210', 'JATIWANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210150', '3210', 'DAWUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210151', '3210', 'KASOKANDEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210160', '3210', 'PANYINGKIRAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210170', '3210', 'KADIPATEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210180', '3210', 'KERTAJATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210190', '3210', 'JATITUJUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210200', '3210', 'LIGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3210210', '3210', 'SUMBERJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211010', '3211', 'JATINANGOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211020', '3211', 'CIMANGGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211030', '3211', 'TANJUNGSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211031', '3211', 'SUKASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211032', '3211', 'PAMULIHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211040', '3211', 'RANCAKALONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211050', '3211', 'SUMEDANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211060', '3211', 'SUMEDANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211061', '3211', 'GANEAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211070', '3211', 'SITURAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211071', '3211', 'CISITU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211080', '3211', 'DARMARAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211090', '3211', 'CIBUGEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211100', '3211', 'WADO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211101', '3211', 'JATINUNGGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211111', '3211', 'JATIGEDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211120', '3211', 'TOMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211130', '3211', 'UJUNG JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211140', '3211', 'CONGGEANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211150', '3211', 'PASEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211160', '3211', 'CIMALAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211161', '3211', 'CISARUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211170', '3211', 'TANJUNGKERTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211171', '3211', 'TANJUNGMEDAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211180', '3211', 'BUAHDUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3211181', '3211', 'SURIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212010', '3212', 'HAURGEULIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212011', '3212', 'GANTAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212020', '3212', 'KROYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212030', '3212', 'GABUSWETAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212040', '3212', 'CIKEDUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212041', '3212', 'TERISI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212050', '3212', 'LELEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212060', '3212', 'BANGODUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212061', '3212', 'TUKDANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212070', '3212', 'WIDASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212080', '3212', 'KERTASEMAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212081', '3212', 'SUKAGUMIWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212090', '3212', 'KRANGKENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212100', '3212', 'KARANGAMPEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212101', '3212', 'KEDOKAN BUNDER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212110', '3212', 'JUNTINYUAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212120', '3212', 'SLIYEG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212130', '3212', 'JATIBARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212140', '3212', 'BALONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212150', '3212', 'INDRAMAYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212160', '3212', 'SINDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212161', '3212', 'CANTIGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212162', '3212', 'PASEKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212170', '3212', 'LOHBENER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212171', '3212', 'ARAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212180', '3212', 'LOSARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212190', '3212', 'KANDANGHAUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212200', '3212', 'BONGAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212210', '3212', 'ANJATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212220', '3212', 'SUKRA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3212221', '3212', 'PATROL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213010', '3213', 'SAGALAHERANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213011', '3213', 'SERANGPANJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213020', '3213', 'JALANCAGAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213021', '3213', 'CIATER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213030', '3213', 'CISALAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213031', '3213', 'KASOMALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213040', '3213', 'TANJUNGSIANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213050', '3213', 'CIJAMBE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213060', '3213', 'CIBOGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213070', '3213', 'SUBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213080', '3213', 'KALIJATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213081', '3213', 'DAWUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213090', '3213', 'CIPEUNDEUY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213100', '3213', 'PABUARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213110', '3213', 'PATOKBEUSI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213120', '3213', 'PURWADADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213130', '3213', 'CIKAUM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213140', '3213', 'PAGADEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213141', '3213', 'PAGADEN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213150', '3213', 'CIPUNAGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213160', '3213', 'COMPRENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213170', '3213', 'BINONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213171', '3213', 'TAMBAKDAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213180', '3213', 'CIASEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213190', '3213', 'PAMANUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213191', '3213', 'SUKASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213200', '3213', 'PUSAKANAGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213201', '3213', 'PUSAKAJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213210', '3213', 'LEGONKULON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3213220', '3213', 'BLANAKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214010', '3214', 'JATILUHUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214011', '3214', 'SUKASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214020', '3214', 'MANIIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214030', '3214', 'TEGAL WARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214040', '3214', 'PLERED', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214050', '3214', 'SUKATANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214060', '3214', 'DARANGDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214070', '3214', 'BOJONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214080', '3214', 'WANAYASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214081', '3214', 'KIARAPEDES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214090', '3214', 'PASAWAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214091', '3214', 'PONDOK SALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214100', '3214', 'PURWAKARTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214101', '3214', 'BABAKANCIKAO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214110', '3214', 'CAMPAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214111', '3214', 'CIBATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3214112', '3214', 'BUNGURSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215010', '3215', 'PANGKALAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215011', '3215', 'TEGALWARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215020', '3215', 'CIAMPEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215031', '3215', 'TELUKJAMBE TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215032', '3215', 'TELUKJAMBE BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215040', '3215', 'KLARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215050', '3215', 'CIKAMPEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215051', '3215', 'PURWASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215060', '3215', 'TIRTAMULYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215070', '3215', 'JATISARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215071', '3215', 'BANYUSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215072', '3215', 'KOTABARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215081', '3215', 'CILAMAYA WETAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215082', '3215', 'CILAMAYA KULON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215090', '3215', 'LEMAHABANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215100', '3215', 'TALAGASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215111', '3215', 'MAJALAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215112', '3215', 'KARAWANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215113', '3215', 'KARAWANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215120', '3215', 'RAWAMERTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215130', '3215', 'TEMPURAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215140', '3215', 'KUTAWALUYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215150', '3215', 'RENGASDENGKLOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215151', '3215', 'JAYAKERTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215160', '3215', 'PEDES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215161', '3215', 'CILEBAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215170', '3215', 'CIBUAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215180', '3215', 'TIRTAJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215190', '3215', 'BATUJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3215200', '3215', 'PAKISJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216010', '3216', 'SETU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216021', '3216', 'SERANG BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216022', '3216', 'CIKARANG PUSAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216023', '3216', 'CIKARANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216030', '3216', 'CIBARUSAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216031', '3216', 'BOJONGMANGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216041', '3216', 'CIKARANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216050', '3216', 'KEDUNGWARINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216061', '3216', 'CIKARANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216062', '3216', 'KARANGBAHAGIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216070', '3216', 'CIBITUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216071', '3216', 'CIKARANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216081', '3216', 'TAMBUN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216082', '3216', 'TAMBUN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216090', '3216', 'BABELAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216100', '3216', 'TARUMAJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216110', '3216', 'TAMBELANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216111', '3216', 'SUKAWANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216120', '3216', 'SUKATANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216121', '3216', 'SUKAKARYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216130', '3216', 'PEBAYURAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216140', '3216', 'CABANGBUNGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3216150', '3216', 'MUARA GEMBONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217010', '3217', 'RONGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217020', '3217', 'GUNUNGHALU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217030', '3217', 'SINDANGKERTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217040', '3217', 'CILILIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217050', '3217', 'CIHAMPELAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217060', '3217', 'CIPONGKOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217070', '3217', 'BATUJAJAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217071', '3217', 'SAGULING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217080', '3217', 'CIPATAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217090', '3217', 'PADALARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217100', '3217', 'NGAMPRAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217110', '3217', 'PARONGPONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217120', '3217', 'LEMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217130', '3217', 'CISARUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217140', '3217', 'CIKALONG WETAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3217150', '3217', 'CIPEUNDEUY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3218010', '3218', 'CIMERAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3218020', '3218', 'CIJULANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3218030', '3218', 'CIGUGUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3218040', '3218', 'LANGKAPLANCAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3218050', '3218', 'PARIGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3218060', '3218', 'SIDAMULIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3218070', '3218', 'PANGANDARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3218080', '3218', 'KALIPUCANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3218090', '3218', 'PADAHERANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3218100', '3218', 'MANGUNJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3271010', '3271', 'BOGOR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3271020', '3271', 'BOGOR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3271030', '3271', 'BOGOR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3271040', '3271', 'BOGOR TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3271050', '3271', 'BOGOR BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3271060', '3271', 'TANAH SEREAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3272010', '3272', 'BAROS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3272011', '3272', 'LEMBURSITU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3272012', '3272', 'CIBEUREUM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3272020', '3272', 'CITAMIANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3272030', '3272', 'WARUDOYONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3272040', '3272', 'GUNUNG PUYUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3272050', '3272', 'CIKOLE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273010', '3273', 'BANDUNG KULON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273020', '3273', 'BABAKAN CIPARAY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273030', '3273', 'BOJONGLOA KALER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273040', '3273', 'BOJONGLOA KIDUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273050', '3273', 'ASTANAANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273060', '3273', 'REGOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273070', '3273', 'LENGKONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273080', '3273', 'BANDUNG KIDUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273090', '3273', 'BUAHBATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273100', '3273', 'RANCASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273101', '3273', 'GEDEBAGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273110', '3273', 'CIBIRU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273111', '3273', 'PANYILEUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273120', '3273', 'UJUNG BERUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273121', '3273', 'CINAMBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273130', '3273', 'ARCAMANIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273141', '3273', 'ANTAPANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273142', '3273', 'MANDALAJATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273150', '3273', 'KIARACONDONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273160', '3273', 'BATUNUNGGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273170', '3273', 'SUMUR BANDUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273180', '3273', 'ANDIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273190', '3273', 'CICENDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273200', '3273', 'BANDUNG WETAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273210', '3273', 'CIBEUNYING KIDUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273220', '3273', 'CIBEUNYING KALER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273230', '3273', 'COBLONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273240', '3273', 'SUKAJADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273250', '3273', 'SUKASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3273260', '3273', 'CIDADAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3274010', '3274', 'HARJAMUKTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3274020', '3274', 'LEMAHWUNGKUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3274030', '3274', 'PEKALIPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3274040', '3274', 'KESAMBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3274050', '3274', 'KEJAKSAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3275010', '3275', 'PONDOKGEDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3275011', '3275', 'JATISAMPURNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3275012', '3275', 'PONDOKMELATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3275020', '3275', 'JATIASIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3275030', '3275', 'BANTARGEBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3275031', '3275', 'MUSTIKAJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3275040', '3275', 'BEKASI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3275041', '3275', 'RAWALUMBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3275050', '3275', 'BEKASI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3275060', '3275', 'BEKASI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3275061', '3275', 'MEDAN SATRIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3275070', '3275', 'BEKASI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3276010', '3276', 'SAWANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3276011', '3276', 'BOJONGSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3276020', '3276', 'PANCORAN MAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3276021', '3276', 'CIPAYUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3276030', '3276', 'SUKMA JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3276031', '3276', 'CILODONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3276040', '3276', 'CIMANGGIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3276041', '3276', 'TAPOS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3276050', '3276', 'BEJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3276060', '3276', 'LIMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3276061', '3276', 'CINERE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3277010', '3277', 'CIMAHI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3277020', '3277', 'CIMAHI TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3277030', '3277', 'CIMAHI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3278010', '3278', 'KAWALU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3278020', '3278', 'TAMANSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3278030', '3278', 'CIBEUREUM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3278031', '3278', 'PURBARATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3278040', '3278', 'TAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3278050', '3278', 'CIHIDEUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3278060', '3278', 'MANGKUBUMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3278070', '3278', 'INDIHIANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3278071', '3278', 'BUNGURSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3278080', '3278', 'CIPEDES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3279010', '3279', 'BANJAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3279020', '3279', 'PURWAHARJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3279030', '3279', 'PATARUMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3279040', '3279', 'LANGENSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301010', '3301', 'DAYEUHLUHUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301020', '3301', 'WANAREJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301030', '3301', 'MAJENANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301040', '3301', 'CIMANGGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301050', '3301', 'KARANGPUCUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301060', '3301', 'CIPARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301070', '3301', 'SIDAREJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301080', '3301', 'KEDUNGREJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301090', '3301', 'PATIMUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301100', '3301', 'GANDRUNGMANGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301110', '3301', 'BANTARSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301120', '3301', 'KAWUNGANTEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301121', '3301', 'KAMPUNG LAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301130', '3301', 'JERUKLEGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301140', '3301', 'KESUGIHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301150', '3301', 'ADIPALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301160', '3301', 'MAOS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301170', '3301', 'SAMPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301180', '3301', 'KROYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301190', '3301', 'BINANGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301200', '3301', 'NUSAWUNGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301710', '3301', 'CILACAP SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301720', '3301', 'CILACAP TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3301730', '3301', 'CILACAP UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302010', '3302', 'LUMBIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302020', '3302', 'WANGON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302030', '3302', 'JATILAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302040', '3302', 'RAWALO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302050', '3302', 'KEBASEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302060', '3302', 'KEMRANJEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302070', '3302', 'SUMPIUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302080', '3302', 'TAMBAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302090', '3302', 'SOMAGEDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302100', '3302', 'KALIBAGOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302110', '3302', 'BANYUMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302120', '3302', 'PATIKRAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302130', '3302', 'PURWOJATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302140', '3302', 'AJIBARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302150', '3302', 'GUMELAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302160', '3302', 'PEKUNCEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302170', '3302', 'CILONGOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302180', '3302', 'KARANGLEWAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302190', '3302', 'KEDUNG BANTENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302200', '3302', 'BATURRADEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302210', '3302', 'SUMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302220', '3302', 'KEMBARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302230', '3302', 'SOKARAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302710', '3302', 'PURWOKERTO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302720', '3302', 'PURWOKERTO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302730', '3302', 'PURWOKERTO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3302740', '3302', 'PURWOKERTO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303010', '3303', 'KEMANGKON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303020', '3303', 'BUKATEJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303030', '3303', 'KEJOBONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303040', '3303', 'PENGADEGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303050', '3303', 'KALIGONDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303060', '3303', 'PURBALINGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303070', '3303', 'KALIMANAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303080', '3303', 'PADAMARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303090', '3303', 'KUTASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303100', '3303', 'BOJONGSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303110', '3303', 'MREBET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303120', '3303', 'BOBOTSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303130', '3303', 'KARANGREJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303131', '3303', 'KARANGJAMBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303140', '3303', 'KARANGANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303141', '3303', 'KERTANEGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303150', '3303', 'KARANGMONCOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3303160', '3303', 'REMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304010', '3304', 'SUSUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304020', '3304', 'PURWAREJA KLAMPOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304030', '3304', 'MANDIRAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304040', '3304', 'PURWANEGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304050', '3304', 'BAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304060', '3304', 'BANJARNEGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304061', '3304', 'PAGEDONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304070', '3304', 'SIGALUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304080', '3304', 'MADUKARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304090', '3304', 'BANJARMANGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304100', '3304', 'WANADADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304110', '3304', 'RAKIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304120', '3304', 'PUNGGELAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304130', '3304', 'KARANGKOBAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304140', '3304', 'PAGENTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304150', '3304', 'PEJAWARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304160', '3304', 'BATUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304170', '3304', 'WANAYASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304180', '3304', 'KALIBENING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3304181', '3304', 'PANDANARUM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305010', '3305', 'AYAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305020', '3305', 'BUAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305030', '3305', 'PURING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305040', '3305', 'PETANAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305050', '3305', 'KLIRONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305060', '3305', 'BULUSPESANTREN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305070', '3305', 'AMBAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305080', '3305', 'MIRIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305081', '3305', 'BONOROWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305090', '3305', 'PREMBUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305091', '3305', 'PADURESO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305100', '3305', 'KUTOWINANGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305110', '3305', 'ALIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305111', '3305', 'PONCOWARNO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305120', '3305', 'KEBUMEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305130', '3305', 'PEJAGOAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305140', '3305', 'SRUWENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305150', '3305', 'ADIMULYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305160', '3305', 'KUWARASAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305170', '3305', 'ROWOKELE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305180', '3305', 'SEMPOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305190', '3305', 'GOMBONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305200', '3305', 'KARANGANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305210', '3305', 'KARANGGAYAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305220', '3305', 'SADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3305221', '3305', 'KARANGSAMBUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306010', '3306', 'GRABAG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306020', '3306', 'NGOMBOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306030', '3306', 'PURWODADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306040', '3306', 'BAGELEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306050', '3306', 'KALIGESING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306060', '3306', 'PURWOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306070', '3306', 'BANYU URIP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306080', '3306', 'BAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306090', '3306', 'KUTOARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306100', '3306', 'BUTUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306110', '3306', 'PITURUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306120', '3306', 'KEMIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306130', '3306', 'BRUNO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306140', '3306', 'GEBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306150', '3306', 'LOANO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3306160', '3306', 'BENER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307010', '3307', 'WADASLINTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307020', '3307', 'KEPIL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307030', '3307', 'SAPURAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307031', '3307', 'KALIBAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307040', '3307', 'KALIWIRO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307050', '3307', 'LEKSONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307051', '3307', 'SUKOHARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307060', '3307', 'SELOMERTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307070', '3307', 'KALIKAJAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307080', '3307', 'KERTEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307090', '3307', 'WONOSOBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307100', '3307', 'WATUMALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307110', '3307', 'MOJOTENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307120', '3307', 'GARUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3307130', '3307', 'KEJAJAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308010', '3308', 'SALAMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308020', '3308', 'BOROBUDUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308030', '3308', 'NGLUWAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308040', '3308', 'SALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308050', '3308', 'SRUMBUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308060', '3308', 'DUKUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308070', '3308', 'MUNTILAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308080', '3308', 'MUNGKID', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308090', '3308', 'SAWANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308100', '3308', 'CANDIMULYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308110', '3308', 'MERTOYUDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308120', '3308', 'TEMPURAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308130', '3308', 'KAJORAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308140', '3308', 'KALIANGKRIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308150', '3308', 'BANDONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308160', '3308', 'WINDUSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308170', '3308', 'SECANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308180', '3308', 'TEGALREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308190', '3308', 'PAKIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308200', '3308', 'GRABAG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3308210', '3308', 'NGABLAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309010', '3309', 'SELO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309020', '3309', 'AMPEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309030', '3309', 'CEPOGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309040', '3309', 'MUSUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309050', '3309', 'BOYOLALI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309060', '3309', 'MOJOSONGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309070', '3309', 'TERAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309080', '3309', 'SAWIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309090', '3309', 'BANYUDONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309100', '3309', 'SAMBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309110', '3309', 'NGEMPLAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309120', '3309', 'NOGOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309130', '3309', 'SIMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309140', '3309', 'KARANGGEDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309150', '3309', 'KLEGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309160', '3309', 'ANDONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309170', '3309', 'KEMUSU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309180', '3309', 'WONOSEGORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3309190', '3309', 'JUWANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310010', '3310', 'PRAMBANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310020', '3310', 'GANTIWARNO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310030', '3310', 'WEDI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310040', '3310', 'BAYAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310050', '3310', 'CAWAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310060', '3310', 'TRUCUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310070', '3310', 'KALIKOTES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310080', '3310', 'KEBONARUM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310090', '3310', 'JOGONALAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310100', '3310', 'MANISRENGGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310110', '3310', 'KARANGNONGKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310120', '3310', 'NGAWEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310130', '3310', 'CEPER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310140', '3310', 'PEDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310150', '3310', 'KARANGDOWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310160', '3310', 'JUWIRING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310170', '3310', 'WONOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310180', '3310', 'DELANGGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310190', '3310', 'POLANHARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310200', '3310', 'KARANGANOM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310210', '3310', 'TULUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310220', '3310', 'JATINOM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310230', '3310', 'KEMALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310710', '3310', 'KLATEN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310720', '3310', 'KLATEN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3310730', '3310', 'KLATEN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3311010', '3311', 'WERU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3311020', '3311', 'BULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3311030', '3311', 'TAWANGSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3311040', '3311', 'SUKOHARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3311050', '3311', 'NGUTER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3311060', '3311', 'BENDOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3311070', '3311', 'POLOKARTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3311080', '3311', 'MOJOLABAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3311090', '3311', 'GROGOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3311100', '3311', 'BAKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3311110', '3311', 'GATAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3311120', '3311', 'KARTASURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312010', '3312', 'PRACIMANTORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312020', '3312', 'PARANGGUPITO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312030', '3312', 'GIRITONTRO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312040', '3312', 'GIRIWOYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312050', '3312', 'BATUWARNO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312060', '3312', 'KARANGTENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312070', '3312', 'TIRTOMOYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312080', '3312', 'NGUNTORONADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312090', '3312', 'BATURETNO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312100', '3312', 'EROMOKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312110', '3312', 'WURYANTORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312120', '3312', 'MANYARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312130', '3312', 'SELOGIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312140', '3312', 'WONOGIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312150', '3312', 'NGADIROJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312160', '3312', 'SIDOHARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312170', '3312', 'JATIROTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312180', '3312', 'KISMANTORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312190', '3312', 'PURWANTORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312200', '3312', 'BULUKERTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312201', '3312', 'PUHPELEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312210', '3312', 'SLOGOHIMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312220', '3312', 'JATISRONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312230', '3312', 'JATIPURNO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3312240', '3312', 'GIRIMARTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313010', '3313', 'JATIPURO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313020', '3313', 'JATIYOSO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313030', '3313', 'JUMAPOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313040', '3313', 'JUMANTONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313050', '3313', 'MATESIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313060', '3313', 'TAWANGMANGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313070', '3313', 'NGARGOYOSO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313080', '3313', 'KARANGPANDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313090', '3313', 'KARANGANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313100', '3313', 'TASIKMADU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313110', '3313', 'JATEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313120', '3313', 'COLOMADU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313130', '3313', 'GONDANGREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313140', '3313', 'KEBAKKRAMAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313150', '3313', 'MOJOGEDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313160', '3313', 'KERJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3313170', '3313', 'JENAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314010', '3314', 'KALIJAMBE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314020', '3314', 'PLUPUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314030', '3314', 'MASARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314040', '3314', 'KEDAWUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314050', '3314', 'SAMBIREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314060', '3314', 'GONDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314070', '3314', 'SAMBUNG MACAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314080', '3314', 'NGRAMPAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314090', '3314', 'KARANGMALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314100', '3314', 'SRAGEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314110', '3314', 'SIDOHARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314120', '3314', 'TANON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314130', '3314', 'GEMOLONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314140', '3314', 'MIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314150', '3314', 'SUMBERLAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314160', '3314', 'MONDOKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314170', '3314', 'SUKODONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314180', '3314', 'GESI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314190', '3314', 'TANGEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3314200', '3314', 'JENAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315010', '3315', 'KEDUNGJATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315020', '3315', 'KARANGRAYUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315030', '3315', 'PENAWANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315040', '3315', 'TOROH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315050', '3315', 'GEYER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315060', '3315', 'PULOKULON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315070', '3315', 'KRADENAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315080', '3315', 'GABUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315090', '3315', 'NGARINGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315100', '3315', 'WIROSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315110', '3315', 'TAWANGHARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315120', '3315', 'GROBOGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315130', '3315', 'PURWODADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315140', '3315', 'BRATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315150', '3315', 'KLAMBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315160', '3315', 'GODONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315170', '3315', 'GUBUG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315180', '3315', 'TEGOWANU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3315190', '3315', 'TANGGUNGHARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316010', '3316', 'JATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316020', '3316', 'RANDUBLATUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316030', '3316', 'KRADENAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316040', '3316', 'KEDUNGTUBAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316050', '3316', 'CEPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316060', '3316', 'SAMBONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316070', '3316', 'JIKEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316080', '3316', 'BOGOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316090', '3316', 'JEPON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316100', '3316', 'KOTA BLORA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316110', '3316', 'BANJAREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316120', '3316', 'TUNJUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316130', '3316', 'JAPAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316140', '3316', 'NGAWEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316150', '3316', 'KUNDURAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3316160', '3316', 'TODANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317010', '3317', 'SUMBER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317020', '3317', 'BULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317030', '3317', 'GUNEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317040', '3317', 'SALE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317050', '3317', 'SARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317060', '3317', 'SEDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317070', '3317', 'PAMOTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317080', '3317', 'SULANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317090', '3317', 'KALIORI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317100', '3317', 'REMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317110', '3317', 'PANCUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317120', '3317', 'KRAGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317130', '3317', 'SLUKE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3317140', '3317', 'LASEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318010', '3318', 'SUKOLILO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318020', '3318', 'KAYEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318030', '3318', 'TAMBAKROMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318040', '3318', 'WINONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318050', '3318', 'PUCAKWANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318060', '3318', 'JAKEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318070', '3318', 'BATANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318080', '3318', 'JUWANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318090', '3318', 'JAKENAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318100', '3318', 'PATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318110', '3318', 'GABUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318120', '3318', 'MARGOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318130', '3318', 'GEMBONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318140', '3318', 'TLOGOWUNGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318150', '3318', 'WEDARIJAKSA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318160', '3318', 'TRANGKIL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318170', '3318', 'MARGOYOSO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318180', '3318', 'GUNUNG WUNGKAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318190', '3318', 'CLUWAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318200', '3318', 'TAYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3318210', '3318', 'DUKUHSETI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3319010', '3319', 'KALIWUNGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3319020', '3319', 'KOTA KUDUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3319030', '3319', 'JATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3319040', '3319', 'UNDAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3319050', '3319', 'MEJOBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3319060', '3319', 'JEKULO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3319070', '3319', 'BAE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3319080', '3319', 'GEBOG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3319090', '3319', 'DAWE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320010', '3320', 'KEDUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320020', '3320', 'PECANGAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320021', '3320', 'KALINYAMATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320030', '3320', 'WELAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320040', '3320', 'MAYONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320050', '3320', 'NALUMSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320060', '3320', 'BATEALIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320070', '3320', 'TAHUNAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320080', '3320', 'JEPARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320090', '3320', 'MLONGGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320091', '3320', 'PAKIS AJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320100', '3320', 'BANGSRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320101', '3320', 'KEMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320110', '3320', 'KELING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320111', '3320', 'DONOROJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3320120', '3320', 'KARIMUNJAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321010', '3321', 'MRANGGEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321020', '3321', 'KARANGAWEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321030', '3321', 'GUNTUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321040', '3321', 'SAYUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321050', '3321', 'KARANG TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321060', '3321', 'BONANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321070', '3321', 'DEMAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321080', '3321', 'WONOSALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321090', '3321', 'DEMPET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321091', '3321', 'KEBONAGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321100', '3321', 'GAJAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321110', '3321', 'KARANGANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321120', '3321', 'MIJEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3321130', '3321', 'WEDUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322010', '3322', 'GETASAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322020', '3322', 'TENGARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322030', '3322', 'SUSUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322031', '3322', 'KALIWUNGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322040', '3322', 'SURUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322050', '3322', 'PABELAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322060', '3322', 'TUNTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322070', '3322', 'BANYUBIRU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322080', '3322', 'JAMBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322090', '3322', 'SUMOWONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322100', '3322', 'AMBARAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322101', '3322', 'BANDUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322110', '3322', 'BAWEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322120', '3322', 'BRINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322121', '3322', 'BANCAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322130', '3322', 'PRINGAPUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322140', '3322', 'BERGAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322151', '3322', 'UNGARAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3322152', '3322', 'UNGARAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323010', '3323', 'PARAKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323011', '3323', 'KLEDUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323012', '3323', 'BANSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323020', '3323', 'BULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323030', '3323', 'TEMANGGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323031', '3323', 'TLOGOMULYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323040', '3323', 'TEMBARAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323041', '3323', 'SELOPAMPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323050', '3323', 'KRANGGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323060', '3323', 'PRINGSURAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323070', '3323', 'KALORAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323080', '3323', 'KANDANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323090', '3323', 'KEDU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323100', '3323', 'NGADIREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323110', '3323', 'JUMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323111', '3323', 'GEMAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323120', '3323', 'CANDIROTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323121', '3323', 'BEJEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323130', '3323', 'TRETEP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3323131', '3323', 'WONOBOYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324010', '3324', 'PLANTUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324020', '3324', 'SUKOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324030', '3324', 'PAGERRUYUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324040', '3324', 'PATEAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324050', '3324', 'SINGOROJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324060', '3324', 'LIMBANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324070', '3324', 'BOJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324080', '3324', 'KALIWUNGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324081', '3324', 'KALIWUNGU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324090', '3324', 'BRANGSONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324100', '3324', 'PEGANDON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324101', '3324', 'NGAMPEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324110', '3324', 'GEMUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324111', '3324', 'RINGINARUM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324120', '3324', 'WELERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324130', '3324', 'ROWOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324140', '3324', 'KANGKUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324150', '3324', 'CEPIRING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324160', '3324', 'PATEBON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3324170', '3324', 'KOTA KENDAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325010', '3325', 'WONOTUNGGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325020', '3325', 'BANDAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325030', '3325', 'BLADO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325040', '3325', 'REBAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325050', '3325', 'BAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325060', '3325', 'TERSONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325070', '3325', 'GRINGSING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325080', '3325', 'LIMPUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325081', '3325', 'BANYUPUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325090', '3325', 'SUBAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325091', '3325', 'PECALUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325100', '3325', 'TULIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325101', '3325', 'KANDEMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325110', '3325', 'BATANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3325120', '3325', 'WARUNG ASEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326010', '3326', 'KANDANGSERANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326020', '3326', 'PANINGGARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326030', '3326', 'LEBAKBARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326040', '3326', 'PETUNGKRIONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326050', '3326', 'TALUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326060', '3326', 'DORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326070', '3326', 'KARANGANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326080', '3326', 'KAJEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326090', '3326', 'KESESI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326100', '3326', 'SRAGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326101', '3326', 'SIWALAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326110', '3326', 'BOJONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326120', '3326', 'WONOPRINGGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326130', '3326', 'KEDUNGWUNI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326131', '3326', 'KARANGDADAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326140', '3326', 'BUARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326150', '3326', 'TIRTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326160', '3326', 'WIRADESA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3326161', '3326', 'WONOKERTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327010', '3327', 'MOGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327011', '3327', 'WARUNGPRING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327020', '3327', 'PULOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327030', '3327', 'BELIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327040', '3327', 'WATUKUMPUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327050', '3327', 'BODEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327060', '3327', 'BANTARBOLANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327070', '3327', 'RANDUDONGKAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327080', '3327', 'PEMALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327090', '3327', 'TAMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327100', '3327', 'PETARUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327110', '3327', 'AMPELGADING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327120', '3327', 'COMAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3327130', '3327', 'ULUJAMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328010', '3328', 'MARGASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328020', '3328', 'BUMIJAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328030', '3328', 'BOJONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328040', '3328', 'BALAPULANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328050', '3328', 'PAGERBARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328060', '3328', 'LEBAKSIU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328070', '3328', 'JATINEGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328080', '3328', 'KEDUNG BANTENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328090', '3328', 'PANGKAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328100', '3328', 'SLAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328110', '3328', 'DUKUHWARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328120', '3328', 'ADIWERNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328130', '3328', 'DUKUHTURI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328140', '3328', 'TALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328150', '3328', 'TARUB', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328160', '3328', 'KRAMAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328170', '3328', 'SURADADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3328180', '3328', 'WARUREJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329010', '3329', 'SALEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329020', '3329', 'BANTARKAWUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329030', '3329', 'BUMIAYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329040', '3329', 'PAGUYANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329050', '3329', 'SIRAMPOG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329060', '3329', 'TONJONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329070', '3329', 'LARANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329080', '3329', 'KETANGGUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329090', '3329', 'BANJARHARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329100', '3329', 'LOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329110', '3329', 'TANJUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329120', '3329', 'KERSANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329130', '3329', 'BULAKAMBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329140', '3329', 'WANASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329150', '3329', 'SONGGOM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329160', '3329', 'JATIBARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3329170', '3329', 'BREBES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3371010', '3371', 'MAGELANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3371011', '3371', 'MAGELANG TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3371020', '3371', 'MAGELANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3372010', '3372', 'LAWEYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3372020', '3372', 'SERENGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3372030', '3372', 'PASAR KLIWON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3372040', '3372', 'JEBRES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3372050', '3372', 'BANJARSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3373010', '3373', 'ARGOMULYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3373020', '3373', 'TINGKIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3373030', '3373', 'SIDOMUKTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3373040', '3373', 'SIDOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374010', '3374', 'MIJEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374020', '3374', 'GUNUNG PATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374030', '3374', 'BANYUMANIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374040', '3374', 'GAJAH MUNGKUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374050', '3374', 'SEMARANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374060', '3374', 'CANDISARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374070', '3374', 'TEMBALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374080', '3374', 'PEDURUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374090', '3374', 'GENUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374100', '3374', 'GAYAMSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374110', '3374', 'SEMARANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374120', '3374', 'SEMARANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374130', '3374', 'SEMARANG TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374140', '3374', 'SEMARANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374150', '3374', 'TUGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3374160', '3374', 'NGALIYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3375010', '3375', 'PEKALONGAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3375020', '3375', 'PEKALONGAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3375030', '3375', 'PEKALONGAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3375040', '3375', 'PEKALONGAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3376010', '3376', 'TEGAL SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3376020', '3376', 'TEGAL TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3376030', '3376', 'TEGAL BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3376040', '3376', 'MARGADANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3401010', '3401', 'TEMON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3401020', '3401', 'WATES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3401030', '3401', 'PANJATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3401040', '3401', 'GALUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3401050', '3401', 'LENDAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3401060', '3401', 'SENTOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3401070', '3401', 'PENGASIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3401080', '3401', 'KOKAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3401090', '3401', 'GIRIMULYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3401100', '3401', 'NANGGULAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3401110', '3401', 'KALIBAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3401120', '3401', 'SAMIGALUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402010', '3402', 'SRANDAKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402020', '3402', 'SANDEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402030', '3402', 'KRETEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402040', '3402', 'PUNDONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402050', '3402', 'BAMBANG LIPURO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402060', '3402', 'PANDAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402070', '3402', 'BANTUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402080', '3402', 'JETIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402090', '3402', 'IMOGIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402100', '3402', 'DLINGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402110', '3402', 'PLERET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402120', '3402', 'PIYUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402130', '3402', 'BANGUNTAPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402140', '3402', 'SEWON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402150', '3402', 'KASIHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402160', '3402', 'PAJANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3402170', '3402', 'SEDAYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403010', '3403', 'PANGGANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403011', '3403', 'PURWOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403020', '3403', 'PALIYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403030', '3403', 'SAPTO SARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403040', '3403', 'TEPUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403041', '3403', 'TANJUNGSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403050', '3403', 'RONGKOP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403051', '3403', 'GIRISUBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403060', '3403', 'SEMANU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403070', '3403', 'PONJONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403080', '3403', 'KARANGMOJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403090', '3403', 'WONOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403100', '3403', 'PLAYEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403110', '3403', 'PATUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403120', '3403', 'GEDANG SARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403130', '3403', 'NGLIPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403140', '3403', 'NGAWEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3403150', '3403', 'SEMIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404010', '3404', 'MOYUDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404020', '3404', 'MINGGIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404030', '3404', 'SEYEGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404040', '3404', 'GODEAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404050', '3404', 'GAMPING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404060', '3404', 'MLATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404070', '3404', 'DEPOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404080', '3404', 'BERBAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404090', '3404', 'PRAMBANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404100', '3404', 'KALASAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404110', '3404', 'NGEMPLAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404120', '3404', 'NGAGLIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404130', '3404', 'SLEMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404140', '3404', 'TEMPEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404150', '3404', 'TURI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404160', '3404', 'PAKEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3404170', '3404', 'CANGKRINGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471010', '3471', 'MANTRIJERON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471020', '3471', 'KRATON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471030', '3471', 'MERGANGSAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471040', '3471', 'UMBULHARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471050', '3471', 'KOTAGEDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471060', '3471', 'GONDOKUSUMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471070', '3471', 'DANUREJAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471080', '3471', 'PAKUALAMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471090', '3471', 'GONDOMANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471100', '3471', 'NGAMPILAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471110', '3471', 'WIROBRAJAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471120', '3471', 'GEDONG TENGEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471130', '3471', 'JETIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3471140', '3471', 'TEGALREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3501010', '3501', 'DONOROJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3501020', '3501', 'PUNUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3501030', '3501', 'PRINGKUKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3501040', '3501', 'PACITAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3501050', '3501', 'KEBONAGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3501060', '3501', 'ARJOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3501070', '3501', 'NAWANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3501080', '3501', 'BANDAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3501090', '3501', 'TEGALOMBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3501100', '3501', 'TULAKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3501110', '3501', 'NGADIROJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3501120', '3501', 'SUDIMORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502010', '3502', 'NGRAYUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502020', '3502', 'SLAHUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502030', '3502', 'BUNGKAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502040', '3502', 'SAMBIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502050', '3502', 'SAWOO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502060', '3502', 'SOOKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502061', '3502', 'PUDAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502070', '3502', 'PULUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502080', '3502', 'MLARAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502090', '3502', 'SIMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502100', '3502', 'JETIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502110', '3502', 'BALONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502120', '3502', 'KAUMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502130', '3502', 'JAMBON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502140', '3502', 'BADEGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502150', '3502', 'SAMPUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502160', '3502', 'SUKOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502170', '3502', 'PONOROGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502180', '3502', 'BABADAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502190', '3502', 'JENANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3502200', '3502', 'NGEBEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503010', '3503', 'PANGGUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503020', '3503', 'MUNJUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503030', '3503', 'WATULIMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503040', '3503', 'KAMPAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503050', '3503', 'DONGKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503060', '3503', 'PULE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503070', '3503', 'KARANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503071', '3503', 'SURUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503080', '3503', 'GANDUSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503090', '3503', 'DURENAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503100', '3503', 'POGALAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503110', '3503', 'TRENGGALEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503120', '3503', 'TUGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3503130', '3503', 'BENDUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504010', '3504', 'BESUKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504020', '3504', 'BANDUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504030', '3504', 'PAKEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504040', '3504', 'CAMPUR DARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504050', '3504', 'TANGGUNG GUNUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504060', '3504', 'KALIDAWIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504070', '3504', 'PUCANG LABAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504080', '3504', 'REJOTANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504090', '3504', 'NGUNUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504100', '3504', 'SUMBERGEMPOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504110', '3504', 'BOYOLANGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504120', '3504', 'TULUNGAGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504130', '3504', 'KEDUNGWARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504140', '3504', 'NGANTRU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504150', '3504', 'KARANGREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504160', '3504', 'KAUMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504170', '3504', 'GONDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504180', '3504', 'PAGER WOJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3504190', '3504', 'SENDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505010', '3505', 'BAKUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505020', '3505', 'WONOTIRTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505030', '3505', 'PANGGUNGREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505040', '3505', 'WATES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505050', '3505', 'BINANGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505060', '3505', 'SUTOJAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505070', '3505', 'KADEMANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505080', '3505', 'KANIGORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505090', '3505', 'TALUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505100', '3505', 'SELOPURO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505110', '3505', 'KESAMBEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505120', '3505', 'SELOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505130', '3505', 'DOKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505140', '3505', 'WLINGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505150', '3505', 'GANDUSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505160', '3505', 'GARUM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505170', '3505', 'NGLEGOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505180', '3505', 'SANANKULON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505190', '3505', 'PONGGOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505200', '3505', 'SRENGAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505210', '3505', 'WONODADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3505220', '3505', 'UDANAWU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506010', '3506', 'MOJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506020', '3506', 'SEMEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506030', '3506', 'NGADILUWIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506040', '3506', 'KRAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506050', '3506', 'RINGINREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506060', '3506', 'KANDAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506070', '3506', 'WATES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506080', '3506', 'NGANCAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506090', '3506', 'PLOSOKLATEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506100', '3506', 'GURAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506110', '3506', 'PUNCU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506120', '3506', 'KEPUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506130', '3506', 'KANDANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506140', '3506', 'PARE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506141', '3506', 'BADAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506150', '3506', 'KUNJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506160', '3506', 'PLEMAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506170', '3506', 'PURWOASRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506180', '3506', 'PAPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506190', '3506', 'PAGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506191', '3506', 'KAYEN KIDUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506200', '3506', 'GAMPENGREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506201', '3506', 'NGASEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506210', '3506', 'BANYAKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506220', '3506', 'GROGOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3506230', '3506', 'TAROKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507010', '3507', 'DONOMULYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507020', '3507', 'KALIPARE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507030', '3507', 'PAGAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507040', '3507', 'BANTUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507050', '3507', 'GEDANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507060', '3507', 'SUMBERMANJING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507070', '3507', 'DAMPIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507080', '3507', 'TIRTO YUDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507090', '3507', 'AMPELGADING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507100', '3507', 'PONCOKUSUMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507110', '3507', 'WAJAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507120', '3507', 'TUREN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507130', '3507', 'BULULAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507140', '3507', 'GONDANGLEGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507150', '3507', 'PAGELARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507160', '3507', 'KEPANJEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507170', '3507', 'SUMBER PUCUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507180', '3507', 'KROMENGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507190', '3507', 'NGAJUM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507200', '3507', 'WONOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507210', '3507', 'WAGIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507220', '3507', 'PAKISAJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507230', '3507', 'TAJINAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507240', '3507', 'TUMPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507250', '3507', 'PAKIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507260', '3507', 'JABUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507270', '3507', 'LAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507280', '3507', 'SINGOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507290', '3507', 'KARANGPLOSO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507300', '3507', 'DAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507310', '3507', 'PUJON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507320', '3507', 'NGANTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3507330', '3507', 'KASEMBON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508010', '3508', 'TEMPURSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508020', '3508', 'PRONOJIWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508030', '3508', 'CANDIPURO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508040', '3508', 'PASIRIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508050', '3508', 'TEMPEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508060', '3508', 'LUMAJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508061', '3508', 'SUMBERSUKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508070', '3508', 'TEKUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508080', '3508', 'KUNIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508090', '3508', 'YOSOWILANGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508100', '3508', 'ROWOKANGKUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508110', '3508', 'JATIROTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508120', '3508', 'RANDUAGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508130', '3508', 'SUKODONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508140', '3508', 'PADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508150', '3508', 'PASRUJAMBE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508160', '3508', 'SENDURO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508170', '3508', 'GUCIALIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508180', '3508', 'KEDUNGJAJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508190', '3508', 'KLAKAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3508200', '3508', 'RANUYOSO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509010', '3509', 'KENCONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509020', '3509', 'GUMUK MAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509030', '3509', 'PUGER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509040', '3509', 'WULUHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509050', '3509', 'AMBULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509060', '3509', 'TEMPUREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509070', '3509', 'SILO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509080', '3509', 'MAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509090', '3509', 'MUMBULSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509100', '3509', 'JENGGAWAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509110', '3509', 'AJUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509120', '3509', 'RAMBIPUJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509130', '3509', 'BALUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509140', '3509', 'UMBULSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509150', '3509', 'SEMBORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509160', '3509', 'JOMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509170', '3509', 'SUMBER BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509180', '3509', 'TANGGUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509190', '3509', 'BANGSALSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509200', '3509', 'PANTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509210', '3509', 'SUKORAMBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509220', '3509', 'ARJASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509230', '3509', 'PAKUSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509240', '3509', 'KALISAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509250', '3509', 'LEDOKOMBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509260', '3509', 'SUMBERJAMBE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509270', '3509', 'SUKOWONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509280', '3509', 'JELBUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509710', '3509', 'KALIWATES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509720', '3509', 'SUMBERSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3509730', '3509', 'PATRANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510010', '3510', 'PESANGGARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510011', '3510', 'SILIRAGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510020', '3510', 'BANGOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510030', '3510', 'PURWOHARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510040', '3510', 'TEGALDLIMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510050', '3510', 'MUNCAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510060', '3510', 'CLURING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510070', '3510', 'GAMBIRAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510071', '3510', 'TEGALSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510080', '3510', 'GLENMORE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510090', '3510', 'KALIBARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510100', '3510', 'GENTENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510110', '3510', 'SRONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510120', '3510', 'ROGOJAMPI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510121', '3510', 'BLIMBINGSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510130', '3510', 'KABAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510140', '3510', 'SINGOJURUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510150', '3510', 'SEMPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510160', '3510', 'SONGGON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510170', '3510', 'GLAGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510171', '3510', 'LICIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510180', '3510', 'BANYUWANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510190', '3510', 'GIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510200', '3510', 'KALIPURO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3510210', '3510', 'WONGSOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511010', '3511', 'MAESAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511020', '3511', 'GRUJUGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511030', '3511', 'TAMANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511031', '3511', 'JAMBESARI DARUS SHOLAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511040', '3511', 'PUJER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511050', '3511', 'TLOGOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511060', '3511', 'SUKOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511061', '3511', 'SUMBER WRINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511070', '3511', 'TAPEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511080', '3511', 'WONOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511090', '3511', 'TENGGARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511100', '3511', 'BONDOWOSO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511110', '3511', 'CURAH DAMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511111', '3511', 'BINAKAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511120', '3511', 'PAKEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511130', '3511', 'WRINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511140', '3511', 'TEGALAMPEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511141', '3511', 'TAMAN KROCOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511150', '3511', 'KLABANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511151', '3511', 'IJEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511152', '3511', 'BOTOLINGGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511160', '3511', 'PRAJEKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3511170', '3511', 'CERMEE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512010', '3512', 'SUMBERMALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512020', '3512', 'JATIBANTENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512030', '3512', 'BANYUGLUGUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512040', '3512', 'BESUKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512050', '3512', 'SUBOH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512060', '3512', 'MLANDINGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512070', '3512', 'BUNGATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512080', '3512', 'KENDIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512090', '3512', 'PANARUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512100', '3512', 'SITUBONDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512110', '3512', 'MANGARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512120', '3512', 'PANJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512130', '3512', 'KAPONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512140', '3512', 'ARJASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512150', '3512', 'JANGKAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512160', '3512', 'ASEMBAGUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3512170', '3512', 'BANYUPUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513010', '3513', 'SUKAPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513020', '3513', 'SUMBER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513030', '3513', 'KURIPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513040', '3513', 'BANTARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513050', '3513', 'LECES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513060', '3513', 'TEGALSIWALAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513070', '3513', 'BANYUANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513080', '3513', 'TIRIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513090', '3513', 'KRUCIL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513100', '3513', 'GADING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513110', '3513', 'PAKUNIRAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513120', '3513', 'KOTAANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513130', '3513', 'PAITON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513140', '3513', 'BESUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513150', '3513', 'KRAKSAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513160', '3513', 'KREJENGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513170', '3513', 'PAJARAKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513180', '3513', 'MARON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513190', '3513', 'GENDING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513200', '3513', 'DRINGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513210', '3513', 'WONOMERTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513220', '3513', 'LUMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513230', '3513', 'TONGAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3513240', '3513', 'SUMBERASIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514010', '3514', 'PURWODADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514020', '3514', 'TUTUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514030', '3514', 'PUSPO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514040', '3514', 'TOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514050', '3514', 'LUMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514060', '3514', 'PASREPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514070', '3514', 'KEJAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514080', '3514', 'WONOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514090', '3514', 'PURWOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514100', '3514', 'PRIGEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514110', '3514', 'SUKOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514120', '3514', 'PANDAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514130', '3514', 'GEMPOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514140', '3514', 'BEJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514150', '3514', 'BANGIL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514160', '3514', 'REMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514170', '3514', 'KRATON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514180', '3514', 'POHJENTREK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514190', '3514', 'GONDANG WETAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514200', '3514', 'REJOSO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514210', '3514', 'WINONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514220', '3514', 'GRATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514230', '3514', 'LEKOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3514240', '3514', 'NGULING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515010', '3515', 'TARIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515020', '3515', 'PRAMBON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515030', '3515', 'KREMBUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515040', '3515', 'PORONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515050', '3515', 'JABON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515060', '3515', 'TANGGULANGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515070', '3515', 'CANDI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515080', '3515', 'TULANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515090', '3515', 'WONOAYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515100', '3515', 'SUKODONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515110', '3515', 'SIDOARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515120', '3515', 'BUDURAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515130', '3515', 'SEDATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515140', '3515', 'WARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515150', '3515', 'GEDANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515160', '3515', 'TAMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515170', '3515', 'KRIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3515180', '3515', 'BALONG BENDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516010', '3516', 'JATIREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516020', '3516', 'GONDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516030', '3516', 'PACET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516040', '3516', 'TRAWAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516050', '3516', 'NGORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516060', '3516', 'PUNGGING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516070', '3516', 'KUTOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516080', '3516', 'MOJOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516090', '3516', 'BANGSAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516091', '3516', 'MOJOANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516100', '3516', 'DLANGGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516110', '3516', 'PURI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516120', '3516', 'TROWULAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516130', '3516', 'SOOKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516140', '3516', 'GEDEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516150', '3516', 'KEMLAGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516160', '3516', 'JETIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3516170', '3516', 'DAWAR BLANDONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517010', '3517', 'BANDAR KEDUNG MULYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517020', '3517', 'PERAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517030', '3517', 'GUDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517040', '3517', 'DIWEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517050', '3517', 'NGORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517060', '3517', 'MOJOWARNO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517070', '3517', 'BARENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517080', '3517', 'WONOSALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517090', '3517', 'MOJOAGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517100', '3517', 'SUMOBITO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517110', '3517', 'JOGO ROTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517120', '3517', 'PETERONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517130', '3517', 'JOMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517140', '3517', 'MEGALUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517150', '3517', 'TEMBELANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517160', '3517', 'KESAMBEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517170', '3517', 'KUDU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517171', '3517', 'NGUSIKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517180', '3517', 'PLOSO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517190', '3517', 'KABUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3517200', '3517', 'PLANDAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518010', '3518', 'SAWAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518020', '3518', 'NGETOS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518030', '3518', 'BERBEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518040', '3518', 'LOCERET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518050', '3518', 'PACE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518060', '3518', 'TANJUNGANOM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518070', '3518', 'PRAMBON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518080', '3518', 'NGRONGGOT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518090', '3518', 'KERTOSONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518100', '3518', 'PATIANROWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518110', '3518', 'BARON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518120', '3518', 'GONDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518130', '3518', 'SUKOMORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518140', '3518', 'NGANJUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518150', '3518', 'BAGOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518160', '3518', 'WILANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518170', '3518', 'REJOSO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518180', '3518', 'NGLUYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518190', '3518', 'LENGKONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3518200', '3518', 'JATIKALEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519010', '3519', 'KEBONSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519020', '3519', 'GEGER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519030', '3519', 'DOLOPO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519040', '3519', 'DAGANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519050', '3519', 'WUNGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519060', '3519', 'KARE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519070', '3519', 'GEMARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519080', '3519', 'SARADAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519090', '3519', 'PILANGKENCENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519100', '3519', 'MEJAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519110', '3519', 'WONOASRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519120', '3519', 'BALEREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519130', '3519', 'MADIUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519140', '3519', 'SAWAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3519150', '3519', 'JIWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520010', '3520', 'PONCOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520020', '3520', 'PARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520030', '3520', 'LEMBEYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520040', '3520', 'TAKERAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520041', '3520', 'NGUNTORONADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520050', '3520', 'KAWEDANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520060', '3520', 'MAGETAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520061', '3520', 'NGARIBOYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520070', '3520', 'PLAOSAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520071', '3520', 'SIDOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520080', '3520', 'PANEKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520090', '3520', 'SUKOMORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520100', '3520', 'BENDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520110', '3520', 'MAOSPATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520120', '3520', 'KARANGREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520121', '3520', 'KARAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520130', '3520', 'BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3520131', '3520', 'KARTOHARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521010', '3521', 'SINE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521020', '3521', 'NGRAMBE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521030', '3521', 'JOGOROGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521040', '3521', 'KENDAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521050', '3521', 'GENENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521051', '3521', 'GERIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521060', '3521', 'KWADUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521070', '3521', 'PANGKUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521080', '3521', 'KARANGJATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521090', '3521', 'BRINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521100', '3521', 'PADAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521101', '3521', 'KASREMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521110', '3521', 'NGAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521120', '3521', 'PARON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521130', '3521', 'KEDUNGGALAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521140', '3521', 'PITU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521150', '3521', 'WIDODAREN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521160', '3521', 'MANTINGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3521170', '3521', 'KARANGANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522010', '3522', 'MARGOMULYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522020', '3522', 'NGRAHO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522030', '3522', 'TAMBAKREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522040', '3522', 'NGAMBON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522041', '3522', 'SEKAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522050', '3522', 'BUBULAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522051', '3522', 'GONDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522060', '3522', 'TEMAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522070', '3522', 'SUGIHWARAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522080', '3522', 'KEDUNGADEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522090', '3522', 'KEPOH BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522100', '3522', 'BAURENO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522110', '3522', 'KANOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522120', '3522', 'SUMBEREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522130', '3522', 'BALEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522140', '3522', 'SUKOSEWU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522150', '3522', 'KAPAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522160', '3522', 'BOJONEGORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522170', '3522', 'TRUCUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522180', '3522', 'DANDER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522190', '3522', 'NGASEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522191', '3522', 'GAYAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522200', '3522', 'KALITIDU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522210', '3522', 'MALO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522220', '3522', 'PURWOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522230', '3522', 'PADANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522240', '3522', 'KASIMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3522241', '3522', 'KEDEWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523010', '3523', 'KENDURUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523020', '3523', 'BANGILAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523030', '3523', 'SENORI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523040', '3523', 'SINGGAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523050', '3523', 'MONTONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523060', '3523', 'PARENGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523070', '3523', 'SOKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523080', '3523', 'RENGEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523081', '3523', 'GRABAGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523090', '3523', 'PLUMPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523100', '3523', 'WIDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523110', '3523', 'PALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523120', '3523', 'SEMANDING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523130', '3523', 'TUBAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523140', '3523', 'JENU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523150', '3523', 'MERAKURAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523160', '3523', 'KEREK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523170', '3523', 'TAMBAKBOYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523180', '3523', 'JATIROGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3523190', '3523', 'BANCAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524010', '3524', 'SUKORAME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524020', '3524', 'BLULUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524030', '3524', 'NGIMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524040', '3524', 'SAMBENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524050', '3524', 'MANTUP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524060', '3524', 'KEMBANGBAHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524070', '3524', 'SUGIO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524080', '3524', 'KEDUNGPRING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524090', '3524', 'MODO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524100', '3524', 'BABAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524110', '3524', 'PUCUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524120', '3524', 'SUKODADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524130', '3524', 'LAMONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524140', '3524', 'TIKUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524141', '3524', 'SARIREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524150', '3524', 'DEKET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524160', '3524', 'GLAGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524170', '3524', 'KARANGBINANGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524180', '3524', 'TURI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524190', '3524', 'KALITENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524200', '3524', 'KARANG GENENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524210', '3524', 'SEKARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524220', '3524', 'MADURAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524230', '3524', 'LAREN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524240', '3524', 'SOLOKURO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524250', '3524', 'PACIRAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3524260', '3524', 'BRONDONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525010', '3525', 'WRINGINANOM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525020', '3525', 'DRIYOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525030', '3525', 'KEDAMEAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525040', '3525', 'MENGANTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525050', '3525', 'CERME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525060', '3525', 'BENJENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525070', '3525', 'BALONGPANGGANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525080', '3525', 'DUDUKSAMPEYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525090', '3525', 'KEBOMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525100', '3525', 'GRESIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525110', '3525', 'MANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525120', '3525', 'BUNGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525130', '3525', 'SIDAYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525140', '3525', 'DUKUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525150', '3525', 'PANCENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525160', '3525', 'UJUNGPANGKAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525170', '3525', 'SANGKAPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3525180', '3525', 'TAMBAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526010', '3526', 'KAMAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526020', '3526', 'LABANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526030', '3526', 'KWANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526040', '3526', 'MODUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526050', '3526', 'BLEGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526060', '3526', 'KONANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526070', '3526', 'GALIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526080', '3526', 'TANAH MERAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526090', '3526', 'TRAGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526100', '3526', 'SOCAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526110', '3526', 'BANGKALAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526120', '3526', 'BURNEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526130', '3526', 'AROSBAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526140', '3526', 'GEGER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526150', '3526', 'KOKOP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526160', '3526', 'TANJUNGBUMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526170', '3526', 'SEPULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3526180', '3526', 'KLAMPIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527010', '3527', 'SRESEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527020', '3527', 'TORJUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527021', '3527', 'PANGARENGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527030', '3527', 'SAMPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527040', '3527', 'CAMPLONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527050', '3527', 'OMBEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527060', '3527', 'KEDUNGDUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527070', '3527', 'JRENGIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527080', '3527', 'TAMBELANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527090', '3527', 'BANYUATES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527100', '3527', 'ROBATAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527101', '3527', 'KARANG PENANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527110', '3527', 'KETAPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3527120', '3527', 'SOKOBANAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3528010', '3528', 'TLANAKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3528020', '3528', 'PADEMAWU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3528030', '3528', 'GALIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3528040', '3528', 'LARANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3528050', '3528', 'PAMEKASAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3528060', '3528', 'PROPPO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3528070', '3528', 'PALENGAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3528080', '3528', 'PEGANTENAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3528090', '3528', 'KADUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3528100', '3528', 'PAKONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3528110', '3528', 'WARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3528120', '3528', 'BATU MARMAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3528130', '3528', 'PASEAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529010', '3529', 'PRAGAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529020', '3529', 'BLUTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529030', '3529', 'SARONGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529040', '3529', 'GILIGENTENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529050', '3529', 'TALANGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529060', '3529', 'KALIANGET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529070', '3529', 'KOTA SUMENEP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529071', '3529', 'BATUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529080', '3529', 'LENTENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529090', '3529', 'GANDING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529100', '3529', 'GULUK GULUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529110', '3529', 'PASONGSONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529120', '3529', 'AMBUNTEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529130', '3529', 'RUBARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529140', '3529', 'DASUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529150', '3529', 'MANDING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529160', '3529', 'BATUPUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529170', '3529', 'GAPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529180', '3529', 'BATANG BATANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529190', '3529', 'DUNGKEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529200', '3529', 'NONGGUNONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529210', '3529', 'GAYAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529220', '3529', 'RAAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529230', '3529', 'SAPEKEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529240', '3529', 'ARJASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529241', '3529', 'KANGAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3529250', '3529', 'MASALEMBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3571010', '3571', 'MOJOROTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3571020', '3571', 'KOTA KEDIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3571030', '3571', 'PESANTREN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3572010', '3572', 'SUKOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3572020', '3572', 'KEPANJENKIDUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3572030', '3572', 'SANANWETAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3573010', '3573', 'KEDUNGKANDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3573020', '3573', 'SUKUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3573030', '3573', 'KLOJEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3573040', '3573', 'BLIMBING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3573050', '3573', 'LOWOKWARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3574010', '3574', 'KADEMANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3574011', '3574', 'KEDOPOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3574020', '3574', 'WONOASIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3574030', '3574', 'MAYANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3574031', '3574', 'KANIGARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3575010', '3575', 'GADINGREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3575020', '3575', 'PURWOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3575030', '3575', 'BUGULKIDUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3575031', '3575', 'PANGGUNGREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3576010', '3576', 'PRAJURIT KULON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3576020', '3576', 'MAGERSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3576021', '3576', 'KRANGGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3577010', '3577', 'MANGU HARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3577020', '3577', 'TAMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3577030', '3577', 'KARTOHARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578010', '3578', 'KARANG PILANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578020', '3578', 'JAMBANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578030', '3578', 'GAYUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578040', '3578', 'WONOCOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578050', '3578', 'TENGGILIS MEJOYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578060', '3578', 'GUNUNG ANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578070', '3578', 'RUNGKUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578080', '3578', 'SUKOLILO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578090', '3578', 'MULYOREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578100', '3578', 'GUBENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578110', '3578', 'WONOKROMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578120', '3578', 'DUKUH PAKIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578130', '3578', 'WIYUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578140', '3578', 'LAKARSANTRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578141', '3578', 'SAMBIKEREP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578150', '3578', 'TANDES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578160', '3578', 'SUKO MANUNGGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578170', '3578', 'SAWAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578180', '3578', 'TEGALSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578190', '3578', 'GENTENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578200', '3578', 'TAMBAKSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578210', '3578', 'KENJERAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578211', '3578', 'BULAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578220', '3578', 'SIMOKERTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578230', '3578', 'SEMAMPIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578240', '3578', 'PABEAN CANTIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578250', '3578', 'BUBUTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578260', '3578', 'KREMBANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578270', '3578', 'ASEMROWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578280', '3578', 'BENOWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3578281', '3578', 'PAKAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3579010', '3579', 'BATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3579020', '3579', 'JUNREJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3579030', '3579', 'BUMIAJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601010', '3601', 'SUMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601020', '3601', 'CIMANGGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601030', '3601', 'CIBALIUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601031', '3601', 'CIBITUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601040', '3601', 'CIKEUSIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601050', '3601', 'CIGEULIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601060', '3601', 'PANIMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601061', '3601', 'SOBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601070', '3601', 'MUNJUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601071', '3601', 'ANGSANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601072', '3601', 'SINDANGRESMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601080', '3601', 'PICUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601090', '3601', 'BOJONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601100', '3601', 'SAKETI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601101', '3601', 'CISATA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601110', '3601', 'PAGELARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601111', '3601', 'PATIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601112', '3601', 'SUKARESMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601120', '3601', 'LABUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601121', '3601', 'CARITA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601130', '3601', 'JIPUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601131', '3601', 'CIKEDAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601140', '3601', 'MENES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601141', '3601', 'PULOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601150', '3601', 'MANDALAWANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601160', '3601', 'CIMANUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601161', '3601', 'CIPEUCANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601170', '3601', 'BANJAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601171', '3601', 'KADUHEJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601172', '3601', 'MEKARJAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601180', '3601', 'PANDEGLANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601181', '3601', 'MAJASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601190', '3601', 'CADASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601191', '3601', 'KARANGTANJUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3601192', '3601', 'KORONCONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602010', '3602', 'MALINGPING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602011', '3602', 'WANASALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602020', '3602', 'PANGGARANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602021', '3602', 'CIHARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602030', '3602', 'BAYAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602031', '3602', 'CILOGRANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602040', '3602', 'CIBEBER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602050', '3602', 'CIJAKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602051', '3602', 'CIGEMBLONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602060', '3602', 'BANJARSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602070', '3602', 'CILELES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602080', '3602', 'GUNUNG KENCANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602090', '3602', 'BOJONGMANIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602091', '3602', 'CIRINTEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602100', '3602', 'LEUWIDAMAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602110', '3602', 'MUNCANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602111', '3602', 'SOBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602120', '3602', 'CIPANAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602121', '3602', 'LEBAKGEDONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602130', '3602', 'SAJIRA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602140', '3602', 'CIMARGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602150', '3602', 'CIKULUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602160', '3602', 'WARUNGGUNUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602170', '3602', 'CIBADAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602180', '3602', 'RANGKASBITUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602181', '3602', 'KALANGANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602190', '3602', 'MAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3602191', '3602', 'CURUGBITUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603010', '3603', 'CISOKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603011', '3603', 'SOLEAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603020', '3603', 'TIGARAKSA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603021', '3603', 'JAMBE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603030', '3603', 'CIKUPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603040', '3603', 'PANONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603050', '3603', 'CURUG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603051', '3603', 'KELAPA DUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603060', '3603', 'LEGOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603070', '3603', 'PAGEDANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603081', '3603', 'CISAUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603120', '3603', 'PASARKEMIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603121', '3603', 'SINDANG JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603130', '3603', 'BALARAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603131', '3603', 'JAYANTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603132', '3603', 'SUKAMULYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603140', '3603', 'KRESEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603141', '3603', 'GUNUNG KALER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603150', '3603', 'KRONJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603151', '3603', 'MEKAR BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603160', '3603', 'MAUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603161', '3603', 'KEMIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603162', '3603', 'SUKADIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603170', '3603', 'RAJEG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603180', '3603', 'SEPATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603181', '3603', 'SEPATAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603190', '3603', 'PAKUHAJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603200', '3603', 'TELUKNAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3603210', '3603', 'KOSAMBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604010', '3604', 'CINANGKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604020', '3604', 'PADARINCANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604030', '3604', 'CIOMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604040', '3604', 'PABUARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604041', '3604', 'GUNUNG SARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604050', '3604', 'BAROS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604060', '3604', 'PETIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604061', '3604', 'TUNJUNG TEJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604080', '3604', 'CIKEUSAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604090', '3604', 'PAMARAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604091', '3604', 'BANDUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604100', '3604', 'JAWILAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604110', '3604', 'KOPO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604120', '3604', 'CIKANDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604121', '3604', 'KIBIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604130', '3604', 'KRAGILAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604180', '3604', 'WARINGINKURUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604190', '3604', 'MANCAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604200', '3604', 'ANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604210', '3604', 'BOJONEGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604211', '3604', 'PULO AMPEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604220', '3604', 'KRAMATWATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604240', '3604', 'CIRUAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604250', '3604', 'PONTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604251', '3604', 'LEBAK WANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604260', '3604', 'CARENANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604261', '3604', 'BINUANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604270', '3604', 'TIRTAYASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3604271', '3604', 'TANARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3671010', '3671', 'CILEDUG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3671011', '3671', 'LARANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3671012', '3671', 'KARANG TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3671020', '3671', 'CIPONDOH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3671021', '3671', 'PINANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3671030', '3671', 'TANGERANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3671031', '3671', 'KARAWACI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3671040', '3671', 'JATI UWUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3671041', '3671', 'CIBODAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3671042', '3671', 'PERIUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3671050', '3671', 'BATUCEPER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3671051', '3671', 'NEGLASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3671060', '3671', 'BENDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3672010', '3672', 'CIWANDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3672011', '3672', 'CITANGKIL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3672020', '3672', 'PULOMERAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3672021', '3672', 'PURWAKARTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3672022', '3672', 'GROGOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3672030', '3672', 'CILEGON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3672031', '3672', 'JOMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3672040', '3672', 'CIBEBER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3673010', '3673', 'CURUG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3673020', '3673', 'WALANTAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3673030', '3673', 'CIPOCOK JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3673040', '3673', 'SERANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3673050', '3673', 'TAKTAKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3673060', '3673', 'KASEMEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3674010', '3674', 'SETU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3674020', '3674', 'SERPONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3674030', '3674', 'PAMULANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3674040', '3674', 'CIPUTAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3674050', '3674', 'CIPUTAT TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3674060', '3674', 'PONDOK AREN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('3674070', '3674', 'SERPONG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5101010', '5101', 'MELAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5101020', '5101', 'NEGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5101021', '5101', 'JEMBRANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5101030', '5101', 'MENDOYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5101040', '5101', 'PEKUTATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5102010', '5102', 'SELEMADEG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5102011', '5102', 'SELEMADEG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5102012', '5102', 'SELEMADEG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5102020', '5102', 'KERAMBITAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5102030', '5102', 'TABANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5102040', '5102', 'KEDIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5102050', '5102', 'MARGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5102060', '5102', 'BATURITI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5102070', '5102', 'PENEBEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5102080', '5102', 'PUPUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5103010', '5103', 'KUTA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5103020', '5103', 'KUTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5103030', '5103', 'KUTA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5103040', '5103', 'MENGWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5103050', '5103', 'ABIANSEMAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5103060', '5103', 'PETANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5104010', '5104', 'SUKAWATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5104020', '5104', 'BLAHBATUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5104030', '5104', 'GIANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5104040', '5104', 'TAMPAKSIRING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5104050', '5104', 'UBUD', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5104060', '5104', 'TEGALLALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5104070', '5104', 'PAYANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5105010', '5105', 'NUSAPENIDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5105020', '5105', 'BANJARANGKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5105030', '5105', 'KLUNGKUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5105040', '5105', 'DAWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5106010', '5106', 'SUSUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5106020', '5106', 'BANGLI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5106030', '5106', 'TEMBUKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5106040', '5106', 'KINTAMANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5107010', '5107', 'RENDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5107020', '5107', 'SIDEMEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5107030', '5107', 'MANGGIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5107040', '5107', 'KARANGASEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5107050', '5107', 'ABANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5107060', '5107', 'BEBANDEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5107070', '5107', 'SELAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5107080', '5107', 'KUBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5108010', '5108', 'GEROKGAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5108020', '5108', 'SERIRIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5108030', '5108', 'BUSUNGBIU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5108040', '5108', 'BANJAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5108050', '5108', 'SUKASADA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5108060', '5108', 'BULELENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5108070', '5108', 'SAWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5108080', '5108', 'KUBUTAMBAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5108090', '5108', 'TEJAKULA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5171010', '5171', 'DENPASAR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5171020', '5171', 'DENPASAR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5171030', '5171', 'DENPASAR BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5171031', '5171', 'DENPASAR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5201010', '5201', 'SEKOTONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5201011', '5201', 'LEMBAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5201020', '5201', 'GERUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5201030', '5201', 'LABU API', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5201040', '5201', 'KEDIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5201041', '5201', 'KURIPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5201050', '5201', 'NARMADA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5201051', '5201', 'LINGSAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5201060', '5201', 'GUNUNG SARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5201061', '5201', 'BATU LAYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5202010', '5202', 'PRAYA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5202011', '5202', 'PRAYA BARAT DAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5202020', '5202', 'PUJUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5202030', '5202', 'PRAYA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5202040', '5202', 'JANAPRIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5202050', '5202', 'KOPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5202060', '5202', 'PRAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5202061', '5202', 'PRAYA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5202070', '5202', 'JONGGAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5202080', '5202', 'PRINGGARATA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5202090', '5202', 'BATUKLIANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5202091', '5202', 'BATUKLIANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203010', '5203', 'KERUAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203011', '5203', 'JEROWARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203020', '5203', 'SAKRA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203021', '5203', 'SAKRA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203022', '5203', 'SAKRA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203030', '5203', 'TERARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203031', '5203', 'MONTONG GADING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203040', '5203', 'SIKUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203050', '5203', 'MASBAGIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203051', '5203', 'PRINGGASELA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203060', '5203', 'SUKAMULIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203061', '5203', 'SURALAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203070', '5203', 'SELONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203071', '5203', 'LABUHAN HAJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203080', '5203', 'PRINGGABAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203081', '5203', 'SUELA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203090', '5203', 'AIKMEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203091', '5203', 'WANASABA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203092', '5203', 'SEMBALUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5203100', '5203', 'SAMBELIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204020', '5204', 'LUNYUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204021', '5204', 'ORONG TELU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204050', '5204', 'ALAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204051', '5204', 'ALAS BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204052', '5204', 'BUER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204061', '5204', 'UTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204062', '5204', 'RHEE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204070', '5204', 'BATULANTEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204080', '5204', 'SUMBAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204081', '5204', 'LABUHAN BADAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204082', '5204', 'UNTER IWES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204090', '5204', 'MOYOHILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204091', '5204', 'MOYO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204100', '5204', 'MOYOHULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204110', '5204', 'ROPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204111', '5204', 'LENANGGUAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204112', '5204', 'LANTUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204121', '5204', 'LAPE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204122', '5204', 'LOPOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204130', '5204', 'PLAMPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204131', '5204', 'LABANGKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204132', '5204', 'MARONGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204140', '5204', 'EMPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5204141', '5204', 'TARANO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5205010', '5205', 'HU\'U', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5205011', '5205', 'PAJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5205020', '5205', 'DOMPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5205030', '5205', 'WOJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5205040', '5205', 'KILO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5205050', '5205', 'KEMPO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5205051', '5205', 'MANGGALEWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5205060', '5205', 'PEKAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206010', '5206', 'MONTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206011', '5206', 'PARADO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206020', '5206', 'BOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206021', '5206', 'MADA PANGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206030', '5206', 'WOHA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206040', '5206', 'BELO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206041', '5206', 'PALIBELO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206050', '5206', 'WAWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206051', '5206', 'LANGGUDU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206052', '5206', 'LAMBITU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206060', '5206', 'SAPE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206061', '5206', 'LAMBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206070', '5206', 'WERA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206071', '5206', 'AMBALAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206080', '5206', 'DONGGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206081', '5206', 'SOROMANDI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206090', '5206', 'SANGGAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5206091', '5206', 'TAMBORA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5207010', '5207', 'SEKONGKANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5207020', '5207', 'JEREWEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5207021', '5207', 'MALUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5207030', '5207', 'TALIWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5207031', '5207', 'BRANG ENE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5207040', '5207', 'BRANG REA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5207050', '5207', 'SETELUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5207051', '5207', 'POTO TANO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5208010', '5208', 'PEMENANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5208020', '5208', 'TANJUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5208030', '5208', 'GANGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5208040', '5208', 'KAYANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5208050', '5208', 'BAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5271010', '5271', 'AMPENAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5271011', '5271', 'SEKARBELA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5271020', '5271', 'MATARAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5271021', '5271', 'SELAPARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5271030', '5271', 'CAKRANEGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5271031', '5271', 'SANDUBAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5272010', '5272', 'RASANAE BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5272011', '5272', 'MPUNDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5272020', '5272', 'RASANAE TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5272021', '5272', 'RABA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5272030', '5272', 'ASAKOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5301021', '5301', 'LAMBOYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5301022', '5301', 'WANOKAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5301023', '5301', 'LABOYA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5301050', '5301', 'LOLI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5301060', '5301', 'KOTA WAIKABUBAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5301072', '5301', 'TANA RIGHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302010', '5302', 'LEWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302011', '5302', 'NGGAHA ORIANGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302012', '5302', 'LEWA TIDAHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302013', '5302', 'KATALA HAMU LINGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302020', '5302', 'TABUNDUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302021', '5302', 'PINUPAHAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302030', '5302', 'PABERIWAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302031', '5302', 'KARERA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302032', '5302', 'MATAWAI LA PAWU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302033', '5302', 'KAHAUNGU ETI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302034', '5302', 'MAHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302035', '5302', 'NGADU NGALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302040', '5302', 'PAHUNGA LODU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302041', '5302', 'WULA WAIJELU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302051', '5302', 'RINDI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302052', '5302', 'UMALULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302060', '5302', 'PANDAWAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302061', '5302', 'KAMBATA MAPAMBUHANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302070', '5302', 'KOTA WAINGAPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302071', '5302', 'KAMBERA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302080', '5302', 'HAHARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5302081', '5302', 'KANATANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303100', '5303', 'SEMAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303101', '5303', 'SEMAU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303110', '5303', 'KUPANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303111', '5303', 'NEKAMESE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303120', '5303', 'KUPANG TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303121', '5303', 'TAEBENU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303130', '5303', 'AMARASI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303131', '5303', 'AMARASI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303132', '5303', 'AMARASI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303133', '5303', 'AMARASI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303140', '5303', 'KUPANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303141', '5303', 'AMABI OEFETO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303142', '5303', 'AMABI OEFETO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303150', '5303', 'SULAMU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303160', '5303', 'FATULEU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303161', '5303', 'FATULEU TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303162', '5303', 'FATULEU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303170', '5303', 'TAKARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303180', '5303', 'AMFOANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303181', '5303', 'AMFOANG BARAT DAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303182', '5303', 'AMFOANG TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303190', '5303', 'AMFOANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303191', '5303', 'AMFOANG BARAT LAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5303192', '5303', 'AMFOANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304010', '5304', 'MOLLO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304011', '5304', 'FATUMNASI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304012', '5304', 'TOBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304013', '5304', 'NUNBENA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304020', '5304', 'MOLLO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304021', '5304', 'POLEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304022', '5304', 'MOLLO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304023', '5304', 'MOLLO TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304030', '5304', 'KOTA SOE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304040', '5304', 'AMANUBAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304041', '5304', 'BATU PUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304042', '5304', 'KUATNANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304050', '5304', 'AMANUBAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304051', '5304', 'NOEBEBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304060', '5304', 'KUAN FATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304061', '5304', 'KUALIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304070', '5304', 'AMANUBAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304071', '5304', 'KOLBANO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304072', '5304', 'OENINO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304080', '5304', 'AMANUBAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304081', '5304', 'FAUTMOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304082', '5304', 'FATUKOPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304090', '5304', 'KIE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304091', '5304', 'KOT\'OLIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304100', '5304', 'AMANATUN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304101', '5304', 'BOKING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304102', '5304', 'NUNKOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304103', '5304', 'NOEBANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304104', '5304', 'SANTIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304110', '5304', 'AMANATUN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304111', '5304', 'TOIANAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5304112', '5304', 'KOKBAUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305010', '5305', 'MIOMAFFO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305011', '5305', 'MIOMAFFO TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305012', '5305', 'MUSI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305013', '5305', 'MUTIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305020', '5305', 'MIOMAFFO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305021', '5305', 'NOEMUTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305022', '5305', 'BIKOMI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305023', '5305', 'BIKOMI TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305024', '5305', 'BIKOMI NILULAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305025', '5305', 'BIKOMI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305026', '5305', 'NAIBENU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305027', '5305', 'NOEMUTI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305030', '5305', 'KOTA KEFAMENANU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305040', '5305', 'INSANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305041', '5305', 'INSANA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305042', '5305', 'INSANA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305043', '5305', 'INSANA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305044', '5305', 'INSANA FAFINESU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305050', '5305', 'BIBOKI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305051', '5305', 'BIBOKI TANPAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305052', '5305', 'BIBOKI MOENLEU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305060', '5305', 'BIBOKI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305061', '5305', 'BIBOKI ANLEU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5305062', '5305', 'BIBOKI FEOTLEU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5306032', '5306', 'RAI MANUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5306050', '5306', 'TASIFETO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5306051', '5306', 'KAKULUK MESAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5306052', '5306', 'NANAET DUBESI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5306060', '5306', 'ATAMBUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5306061', '5306', 'ATAMBUA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5306062', '5306', 'ATAMBUA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5306070', '5306', 'TASIFETO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5306071', '5306', 'RAIHAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5306072', '5306', 'LASIOLAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5306080', '5306', 'LAMAKNEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5306081', '5306', 'LAMAKNEN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307010', '5307', 'PANTAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307011', '5307', 'PANTAR BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307012', '5307', 'PANTAR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307013', '5307', 'PANTAR BARAT LAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307014', '5307', 'PANTAR TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307020', '5307', 'ALOR BARAT DAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307021', '5307', 'MATARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307030', '5307', 'ALOR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307040', '5307', 'ALOR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307041', '5307', 'ALOR TIMUR LAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307042', '5307', 'PUREMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307050', '5307', 'TELUK MUTIARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307051', '5307', 'KABOLA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307060', '5307', 'ALOR BARAT LAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307061', '5307', 'ALOR TENGAH UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307062', '5307', 'PULAU PURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5307063', '5307', 'LEMBUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5308010', '5308', 'NAGAWUTUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5308011', '5308', 'WULANDONI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5308020', '5308', 'ATADEI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5308030', '5308', 'ILE APE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5308031', '5308', 'ILE APE TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5308040', '5308', 'LEBATUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5308050', '5308', 'NUBATUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5308060', '5308', 'OMESURI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5308070', '5308', 'BUYASARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309010', '5309', 'WULANGGITANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309011', '5309', 'TITEHENA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309012', '5309', 'ILEBURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309020', '5309', 'TANJUNG BUNGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309021', '5309', 'LEWO LEMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309030', '5309', 'LARANTUKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309031', '5309', 'ILE MANDIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309032', '5309', 'DEMON PAGONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309040', '5309', 'SOLOR BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309041', '5309', 'SOLOR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309050', '5309', 'SOLOR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309060', '5309', 'ADONARA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309061', '5309', 'WOTAN ULU MADO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309062', '5309', 'ADONARA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309070', '5309', 'ADONARA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309071', '5309', 'ILE BOLENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309072', '5309', 'WITIHAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309073', '5309', 'KELUBAGOLIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5309074', '5309', 'ADONARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310010', '5310', 'PAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310011', '5310', 'MEGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310012', '5310', 'TANA WAWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310020', '5310', 'LELA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310030', '5310', 'BOLA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310031', '5310', 'DORENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310032', '5310', 'MAPITARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310040', '5310', 'TALIBURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310041', '5310', 'WAIGETE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310042', '5310', 'WAIBLAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310050', '5310', 'KEWAPANTE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310051', '5310', 'HEWOKLOANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310052', '5310', 'KANGAE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310061', '5310', 'PALUE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310062', '5310', 'KOTING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310063', '5310', 'NELLE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310070', '5310', 'NITA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310071', '5310', 'MAGEPANDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310080', '5310', 'ALOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310081', '5310', 'ALOK BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5310082', '5310', 'ALOK TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311010', '5311', 'NANGAPANDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311011', '5311', 'PULAU ENDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311012', '5311', 'MAUKARO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311020', '5311', 'ENDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311030', '5311', 'ENDE SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311031', '5311', 'ENDE TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311032', '5311', 'ENDE TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311033', '5311', 'ENDE UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311040', '5311', 'NDONA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311041', '5311', 'NDONA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311050', '5311', 'WOLOWARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311051', '5311', 'WOLOJITA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311052', '5311', 'LIO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311053', '5311', 'KELIMUTU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311054', '5311', 'NDORI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311060', '5311', 'MAUROLE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311061', '5311', 'KOTABARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311062', '5311', 'DETUKELI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311063', '5311', 'LEPEMBUSU KELISOKE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311070', '5311', 'DETUSOKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5311071', '5311', 'WEWARIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5312010', '5312', 'AIMERE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5312011', '5312', 'JEREBUU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5312012', '5312', 'INERIE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5312020', '5312', 'BAJAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5312030', '5312', 'GOLEWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5312031', '5312', 'GOLEWA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5312032', '5312', 'GOLEWA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5312070', '5312', 'BAJAWA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5312071', '5312', 'SOA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5312080', '5312', 'RIUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5312081', '5312', 'RIUNG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5312082', '5312', 'WOLOMEZE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5313040', '5313', 'SATAR MESE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5313041', '5313', 'SATAR MESE BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5313042', '5313', 'SATAR MESE UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5313110', '5313', 'LANGKE REMBONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5313120', '5313', 'RUTENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5313121', '5313', 'WAE RII', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5313122', '5313', 'LELAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5313123', '5313', 'RAHONG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5313130', '5313', 'CIBAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5313131', '5313', 'CIBAL BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5313140', '5313', 'REOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5313141', '5313', 'REOK BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5314010', '5314', 'ROTE BARAT DAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5314020', '5314', 'ROTE BARAT LAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5314030', '5314', 'LOBALAIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5314040', '5314', 'ROTE TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5314041', '5314', 'ROTE SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5314050', '5314', 'PANTAI BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5314060', '5314', 'ROTE TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5314061', '5314', 'LANDU LEKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5314070', '5314', 'ROTE BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5314071', '5314', 'NDAO NUSE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5315010', '5315', 'KOMODO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5315011', '5315', 'BOLENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5315020', '5315', 'SANO NGGOANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5315021', '5315', 'MBELILING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5315030', '5315', 'LEMBOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5315031', '5315', 'WELAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5315032', '5315', 'LEMBOR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5315040', '5315', 'KUWUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5315041', '5315', 'NDOSO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5315050', '5315', 'MACANG PACAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5316010', '5316', 'KATIKUTANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5316011', '5316', 'KATIKUTANA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5316020', '5316', 'UMBU RATU NGGAY BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5316030', '5316', 'UMBU RATU NGGAY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5316040', '5316', 'MAMBORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5317010', '5317', 'KODI BANGEDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5317011', '5317', 'KODI BALAGHAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5317020', '5317', 'KODI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5317030', '5317', 'KODI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5317040', '5317', 'WEWEWA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5317050', '5317', 'WEWEWA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5317060', '5317', 'WEWEWA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5317061', '5317', 'WEWEWA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5317070', '5317', 'WEWEWA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5317080', '5317', 'LOURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5317081', '5317', 'KOTA TAMBOLAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5318010', '5318', 'MAUPONGGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5318020', '5318', 'KEO TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5318030', '5318', 'NANGARORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5318040', '5318', 'BOAWAE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5318050', '5318', 'AESESA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5318060', '5318', 'AESESA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5318070', '5318', 'WOLOWAE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5319010', '5319', 'BORONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5319011', '5319', 'RANA MESE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5319020', '5319', 'KOTA KOMBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5319030', '5319', 'ELAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5319031', '5319', 'ELAR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5319040', '5319', 'SAMBI RAMPAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5319050', '5319', 'POCO RANAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5319051', '5319', 'POCO RANAKA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5319060', '5319', 'LAMBA LEDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5320010', '5320', 'RAIJUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5320020', '5320', 'HAWU MEHARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5320030', '5320', 'SABU LIAE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5320040', '5320', 'SABU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5320050', '5320', 'SABU TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5320060', '5320', 'SABU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5321010', '5321', 'WEWIKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5321020', '5321', 'MALAKA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5321030', '5321', 'WELIMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5321040', '5321', 'RINHAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5321050', '5321', 'IO KUFEU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5321060', '5321', 'SASITA MEAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5321070', '5321', 'MALAKA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5321080', '5321', 'BOTIN LEOBELE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5321090', '5321', 'LAEN MANEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5321100', '5321', 'MALAKA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5321110', '5321', 'KOBALIMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5321120', '5321', 'KOBALIMA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5371010', '5371', 'ALAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5371020', '5371', 'MAULAFA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5371030', '5371', 'OEBOBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5371031', '5371', 'KOTA RAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5371040', '5371', 'KELAPA LIMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('5371041', '5371', 'KOTA LAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101010', '6101', 'SELAKAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101011', '6101', 'SELAKAU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101020', '6101', 'PEMANGKAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101021', '6101', 'SEMPARUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101022', '6101', 'SALATIGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101030', '6101', 'TEBAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101031', '6101', 'TEKARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101040', '6101', 'SAMBAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101041', '6101', 'SUBAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101042', '6101', 'SEBAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101043', '6101', 'SAJAD', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101050', '6101', 'JAWAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101051', '6101', 'JAWAI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101060', '6101', 'TELUK KERAMAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101061', '6101', 'GALING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101062', '6101', 'TANGARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101070', '6101', 'SEJANGKUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101080', '6101', 'SAJINGAN BESAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6101090', '6101', 'PALOH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102010', '6102', 'SUNGAI RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102011', '6102', 'CAPKALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102012', '6102', 'SUNGAI RAYA KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102030', '6102', 'SAMALANTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102031', '6102', 'MONTERADO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102032', '6102', 'LEMBAH BAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102040', '6102', 'BENGKAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102041', '6102', 'TERIAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102042', '6102', 'SUNGAI BETUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102050', '6102', 'LEDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102051', '6102', 'SUTI SEMARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102052', '6102', 'LUMAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102060', '6102', 'SANGGAU LEDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102061', '6102', 'TUJUHBELAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102070', '6102', 'SELUAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102080', '6102', 'JAGOI BABANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6102081', '6102', 'SIDING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6103020', '6103', 'SEBANGKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6103030', '6103', 'NGABANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6103031', '6103', 'JELIMPO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6103040', '6103', 'SENGAH TEMILA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6103050', '6103', 'MANDOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6103060', '6103', 'MENJALIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6103070', '6103', 'MEMPAWAH HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6103071', '6103', 'SOMPAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6103080', '6103', 'MENYUKE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6103081', '6103', 'BANYUKE HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6103090', '6103', 'MERANTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6103100', '6103', 'KUALA BEHE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6103110', '6103', 'AIR BESAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6104080', '6104', 'SIANTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6104081', '6104', 'SEGEDONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6104090', '6104', 'SUNGAI PINYUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6104091', '6104', 'ANJONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6104100', '6104', 'MEMPAWAH HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6104101', '6104', 'MEMPAWAH TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6104110', '6104', 'SUNGAI KUNYIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6104120', '6104', 'TOHO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6104121', '6104', 'SADANIANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105010', '6105', 'TOBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105020', '6105', 'MELIAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105060', '6105', 'KAPUAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105070', '6105', 'MUKOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105120', '6105', 'JANGKANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105130', '6105', 'BONTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105140', '6105', 'PARINDU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105150', '6105', 'TAYAN HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105160', '6105', 'BALAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105170', '6105', 'TAYAN HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105180', '6105', 'KEMBAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105190', '6105', 'BEDUWAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105200', '6105', 'NOYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105210', '6105', 'SEKAYAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6105220', '6105', 'ENTIKONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106010', '6106', 'KENDAWANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106020', '6106', 'MANIS MATA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106030', '6106', 'MARAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106031', '6106', 'SINGKUP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106032', '6106', 'AIR UPAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106040', '6106', 'JELAI HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106050', '6106', 'TUMBANG TITI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106051', '6106', 'PEMAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106052', '6106', 'SUNGAI MELAYU RAYAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106060', '6106', 'MATAN HILIR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106061', '6106', 'BENUA KAYONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106070', '6106', 'MATAN HILIR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106071', '6106', 'DELTA PAWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106072', '6106', 'MUARA PAWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106090', '6106', 'NANGA TAYAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106100', '6106', 'SANDAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106101', '6106', 'HULU SUNGAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106110', '6106', 'SUNGAI LAUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106120', '6106', 'SIMPANG HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6106121', '6106', 'SIMPANG DUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107060', '6107', 'SERAWAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107070', '6107', 'AMBALAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107080', '6107', 'KAYAN HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107110', '6107', 'SEPAUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107120', '6107', 'TEMPUNAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107130', '6107', 'SUNGAI TEBELIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107140', '6107', 'SINTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107150', '6107', 'DEDAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107160', '6107', 'KAYAN HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107170', '6107', 'KELAM PERMAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107180', '6107', 'BINJAI HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107190', '6107', 'KETUNGAU HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107200', '6107', 'KETUNGAU TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6107210', '6107', 'KETUNGAU HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108010', '6108', 'SILAT HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108020', '6108', 'SILAT HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108030', '6108', 'HULU GURUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108040', '6108', 'BUNUT HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108050', '6108', 'MENTEBAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108060', '6108', 'BIKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108070', '6108', 'KALIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108080', '6108', 'PUTUSSIBAU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108090', '6108', 'EMBALOH HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108100', '6108', 'BUNUT HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108110', '6108', 'BOYAN TANJUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108120', '6108', 'PENGKADAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108130', '6108', 'JONGKONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108140', '6108', 'SELIMBAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108150', '6108', 'SUHAID', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108160', '6108', 'SEBERUANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108170', '6108', 'SEMITAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108180', '6108', 'EMPANANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108190', '6108', 'PURING KENCANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108200', '6108', 'BADAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108210', '6108', 'BATANG LUPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108220', '6108', 'EMBALOH HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6108230', '6108', 'PUTUSSIBAU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6109010', '6109', 'NANGA MAHAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6109020', '6109', 'NANGA TAMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6109030', '6109', 'SEKADAU HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6109040', '6109', 'SEKADAU HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6109050', '6109', 'BELITANG HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6109060', '6109', 'BELITANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6109070', '6109', 'BELITANG HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6110010', '6110', 'SOKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6110020', '6110', 'TANAH PINOH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6110021', '6110', 'TANAH PINOH BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6110030', '6110', 'SAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6110040', '6110', 'BELIMBING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6110041', '6110', 'BELIMBING HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6110050', '6110', 'NANGA PINOH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6110051', '6110', 'PINOH SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6110052', '6110', 'PINOH UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6110060', '6110', 'ELLA HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6110070', '6110', 'MENUKUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6111010', '6111', 'PULAU MAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6111011', '6111', 'KEPULAUAN KARIMATA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6111020', '6111', 'SUKADANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6111030', '6111', 'SIMPANG HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6111040', '6111', 'TELUK BATANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6111050', '6111', 'SEPONTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6112010', '6112', 'BATU AMPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6112020', '6112', 'TERENTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6112030', '6112', 'KUBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6112040', '6112', 'TELOK PA\'KEDAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6112050', '6112', 'SUNGAI KAKAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6112060', '6112', 'RASAU JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6112070', '6112', 'SUNGAI RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6112080', '6112', 'SUNGAI AMBAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6112090', '6112', 'KUALA MANDOR-B', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6171010', '6171', 'PONTIANAK SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6171011', '6171', 'PONTIANAK TENGGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6171020', '6171', 'PONTIANAK TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6171030', '6171', 'PONTIANAK BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6171031', '6171', 'PONTIANAK KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6171040', '6171', 'PONTIANAK UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6172010', '6172', 'SINGKAWANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6172020', '6172', 'SINGKAWANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6172030', '6172', 'SINGKAWANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6172040', '6172', 'SINGKAWANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6172050', '6172', 'SINGKAWANG TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6201040', '6201', 'KOTAWARINGIN LAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6201050', '6201', 'ARUT SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6201060', '6201', 'KUMAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6201061', '6201', 'PANGKALAN BANTENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6201062', '6201', 'PANGKALAN LADA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6201070', '6201', 'ARUT UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202020', '6202', 'MENTAYA HILIR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202021', '6202', 'TELUK SAMPIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202050', '6202', 'PULAU HANAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202060', '6202', 'MENTAWA BARU/KETAPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202061', '6202', 'SERANAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202070', '6202', 'MENTAYA HILIR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202110', '6202', 'KOTA BESI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202111', '6202', 'TELAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202120', '6202', 'BAAMANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202190', '6202', 'CEMPAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202191', '6202', 'CEMPAGA HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202200', '6202', 'PARENGGEAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202201', '6202', 'TUALAN HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202210', '6202', 'MENTAYA HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202211', '6202', 'BUKIT SANTUAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202230', '6202', 'ANTANG KALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6202231', '6202', 'TELAGA ANTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203020', '6203', 'KAPUAS KUALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203021', '6203', 'TAMBAN CATUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203030', '6203', 'KAPUAS TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203040', '6203', 'SELAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203041', '6203', 'BATAGUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203070', '6203', 'BASARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203080', '6203', 'KAPUAS HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203090', '6203', 'PULAU PETAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203100', '6203', 'KAPUAS MURUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203101', '6203', 'DADAHUP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203110', '6203', 'KAPUAS BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203150', '6203', 'MANTANGAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203160', '6203', 'TIMPAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203170', '6203', 'KAPUAS TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203171', '6203', 'PASAK TALAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203180', '6203', 'KAPUAS HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6203181', '6203', 'MANDAU TALAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6204010', '6204', 'JENAMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6204020', '6204', 'DUSUN HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6204030', '6204', 'KARAU KUALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6204040', '6204', 'DUSUN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6204050', '6204', 'DUSUN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6204060', '6204', 'GUNUNG BINTANG AWAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6205010', '6205', 'MONTALLAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6205020', '6205', 'GUNUNG TIMANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6205030', '6205', 'GUNUNG PUREI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6205040', '6205', 'TEWEH TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6205050', '6205', 'TEWEH TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6205051', '6205', 'TEWEH  BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6205052', '6205', 'TEWEH SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6205060', '6205', 'LAHEI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6205061', '6205', 'LAHEI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6206010', '6206', 'JELAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6206011', '6206', 'PANTAI LUNCI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6206020', '6206', 'SUKAMARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6206030', '6206', 'BALAI RIAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6206031', '6206', 'PERMATA KECUBUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6207010', '6207', 'BULIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6207011', '6207', 'SEMATU JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6207012', '6207', 'MENTHOBI RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6207013', '6207', 'BULIK TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6207020', '6207', 'LAMANDAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6207021', '6207', 'BELANTIKAN RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6207030', '6207', 'DELANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6207031', '6207', 'BATANGKAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6208010', '6208', 'SERUYAN HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6208011', '6208', 'SERUYAN HILIR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6208020', '6208', 'DANAU SEMBULUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6208021', '6208', 'SERUYAN RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6208030', '6208', 'HANAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6208031', '6208', 'DANAU SELULUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6208040', '6208', 'SERUYAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6208041', '6208', 'BATU AMPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6208050', '6208', 'SERUYAN HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6208051', '6208', 'SULING TAMBUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6209010', '6209', 'KATINGAN KUALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6209020', '6209', 'MENDAWAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6209030', '6209', 'KAMIPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6209040', '6209', 'TASIK PAYAWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6209050', '6209', 'KATINGAN HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6209060', '6209', 'TEWANG SANGALANG GARING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6209070', '6209', 'PULAU MALAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6209080', '6209', 'KATINGAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6209090', '6209', 'SANAMAN MANTIKEI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6209091', '6209', 'PETAK MALAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6209100', '6209', 'MARIKIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6209110', '6209', 'KATINGAN HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6209111', '6209', 'BUKIT RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6210010', '6210', 'KAHAYAN KUALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6210011', '6210', 'SEBANGAU KUALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6210020', '6210', 'PANDIH BATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6210030', '6210', 'MALIKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6210040', '6210', 'KAHAYAN HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6210041', '6210', 'JABIREN RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6210050', '6210', 'KAHAYAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6210060', '6210', 'BANAMA TINGANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6211010', '6211', 'MANUHING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6211011', '6211', 'MANUHING RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6211020', '6211', 'RUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6211021', '6211', 'RUNGAN HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6211022', '6211', 'RUNGAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6211030', '6211', 'SEPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6211031', '6211', 'MIHING RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6211040', '6211', 'KURUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6211050', '6211', 'TEWAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6211060', '6211', 'KAHAYAN HULU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6211061', '6211', 'DAMANG BATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6211062', '6211', 'MIRI MANASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6212010', '6212', 'BENUA LIMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6212020', '6212', 'DUSUN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6212021', '6212', 'PAJU EPAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6212030', '6212', 'AWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6212040', '6212', 'PATANGKEP TUTUI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6212050', '6212', 'DUSUN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6212051', '6212', 'RAREN BATUAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6212052', '6212', 'PAKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6212053', '6212', 'KARUSEN JANANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6212060', '6212', 'PEMATANG KARAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6213010', '6213', 'PERMATA INTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6213011', '6213', 'SUNGAI BABUAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6213020', '6213', 'MURUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6213030', '6213', 'LAUNG TUHUP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6213031', '6213', 'BARITO TUHUP RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6213040', '6213', 'TANAH SIANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6213041', '6213', 'TANAH SIANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6213050', '6213', 'SUMBER BARITO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6213051', '6213', 'SERIBU RIAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6213052', '6213', 'UUT MURUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6271010', '6271', 'PAHANDUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6271011', '6271', 'SABANGAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6271012', '6271', 'JEKAN RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6271020', '6271', 'BUKIT BATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6271021', '6271', 'RAKUMPIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6301010', '6301', 'PANYIPATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6301020', '6301', 'TAKISUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6301030', '6301', 'KURAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6301031', '6301', 'BUMI MAKMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6301040', '6301', 'BATI - BATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6301050', '6301', 'TAMBANG ULANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6301060', '6301', 'PELAIHARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6301061', '6301', 'BAJUIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6301070', '6301', 'BATU AMPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6301080', '6301', 'JORONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6301090', '6301', 'KINTAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302010', '6302', 'PULAU SEMBILAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302020', '6302', 'PULAU LAUT BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302021', '6302', 'PULAU LAUT TANJUNG SELAYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302030', '6302', 'PULAU LAUT SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302031', '6302', 'PULAU LAUT KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302040', '6302', 'PULAU LAUT TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302050', '6302', 'PULAU SEBUKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302060', '6302', 'PULAU LAUT UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302061', '6302', 'PULAU LAUT TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302120', '6302', 'KELUMPANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302121', '6302', 'KELUMPANG HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302130', '6302', 'KELUMPANG HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302140', '6302', 'HAMPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302150', '6302', 'SUNGAI DURIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302160', '6302', 'KELUMPANG TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302161', '6302', 'KELUMPANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302170', '6302', 'KELUMPANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302180', '6302', 'PAMUKAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302190', '6302', 'SAMPANAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302200', '6302', 'PAMUKAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6302201', '6302', 'PAMUKAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303010', '6303', 'ALUH - ALUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303011', '6303', 'BERUNTUNG BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303020', '6303', 'GAMBUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303030', '6303', 'KERTAK HANYAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303031', '6303', 'TATAH MAKMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303040', '6303', 'SUNGAI TABUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303050', '6303', 'MARTAPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303051', '6303', 'MARTAPURA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303052', '6303', 'MARTAPURA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303060', '6303', 'ASTAMBUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303070', '6303', 'KARANG INTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303080', '6303', 'ARANIO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303090', '6303', 'SUNGAI PINANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303091', '6303', 'PARAMASAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303100', '6303', 'PENGARON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303101', '6303', 'SAMBUNG MAKMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303110', '6303', 'MATARAMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303120', '6303', 'SIMPANG EMPAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6303121', '6303', 'TELAGA BAUNTUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304010', '6304', 'TABUNGANEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304020', '6304', 'TAMBAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304030', '6304', 'MEKAR SARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304040', '6304', 'ANJIR PASAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304050', '6304', 'ANJIR MUARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304060', '6304', 'ALALAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304070', '6304', 'MANDASTANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304071', '6304', 'JEJANGKIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304080', '6304', 'BELAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304090', '6304', 'WANARAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304100', '6304', 'BARAMBAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304110', '6304', 'RANTAU BADAUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304120', '6304', 'CERBON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304130', '6304', 'BAKUMPAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304140', '6304', 'MARABAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304150', '6304', 'TABUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6304160', '6304', 'KURIPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6305010', '6305', 'BINUANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6305011', '6305', 'HATUNGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6305020', '6305', 'TAPIN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6305021', '6305', 'SALAM BABARIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6305030', '6305', 'TAPIN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6305040', '6305', 'BUNGUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6305050', '6305', 'PIANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6305060', '6305', 'LOKPAIKAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6305070', '6305', 'TAPIN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6305080', '6305', 'BAKARANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6305090', '6305', 'CANDI LARAS SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6305100', '6305', 'CANDI LARAS UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6306010', '6306', 'PADANG BATUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6306020', '6306', 'LOKSADO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6306030', '6306', 'TELAGA LANGSAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6306040', '6306', 'ANGKINANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6306050', '6306', 'KANDANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6306060', '6306', 'SUNGAI RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6306070', '6306', 'SIMPUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6306080', '6306', 'KALUMPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6306090', '6306', 'DAHA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6306091', '6306', 'DAHA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6306100', '6306', 'DAHA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6307010', '6307', 'HARUYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6307020', '6307', 'BATU BENAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6307030', '6307', 'HANTAKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6307040', '6307', 'BATANG ALAI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6307041', '6307', 'BATANG ALAI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6307050', '6307', 'BARABAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6307060', '6307', 'LABUAN AMAS SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6307070', '6307', 'LABUAN AMAS UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6307080', '6307', 'PANDAWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6307090', '6307', 'BATANG ALAI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6307091', '6307', 'LIMPASU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6308010', '6308', 'DANAU PANGGANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6308011', '6308', 'PAMINGGIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6308020', '6308', 'BABIRIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6308030', '6308', 'SUNGAI PANDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6308031', '6308', 'SUNGAI TABUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6308040', '6308', 'AMUNTAI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6308050', '6308', 'AMUNTAI TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6308060', '6308', 'BANJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6308070', '6308', 'AMUNTAI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6308071', '6308', 'HAUR GADING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6309010', '6309', 'BANUA LAWAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6309020', '6309', 'PUGAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6309030', '6309', 'KELUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6309040', '6309', 'MUARA HARUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6309050', '6309', 'TANTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6309060', '6309', 'TANJUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6309070', '6309', 'MURUNG PUDAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6309080', '6309', 'HARUAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6309081', '6309', 'BINTANG ARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6309090', '6309', 'UPAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6309100', '6309', 'MUARA UYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6309110', '6309', 'JARO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6310010', '6310', 'KUSAN HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6310020', '6310', 'SUNGAI LOBAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6310030', '6310', 'SATUI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6310031', '6310', 'ANGSANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6310040', '6310', 'KUSAN HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6310041', '6310', 'KURANJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6310050', '6310', 'BATU LICIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6310051', '6310', 'KARANG BINTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6310052', '6310', 'SIMPANG EMPAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6310053', '6310', 'MANTEWE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6311010', '6311', 'LAMPIHONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6311020', '6311', 'BATU MANDI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6311030', '6311', 'AWAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6311031', '6311', 'TEBING TINGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6311040', '6311', 'PARINGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6311041', '6311', 'PARINGIN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6311050', '6311', 'JUAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6311060', '6311', 'HALONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6371010', '6371', 'BANJARMASIN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6371020', '6371', 'BANJARMASIN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6371030', '6371', 'BANJARMASIN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6371031', '6371', 'BANJARMASIN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6371040', '6371', 'BANJARMASIN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6372010', '6372', 'LANDASAN ULIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6372011', '6372', 'LIANG ANGGANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6372020', '6372', 'CEMPAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6372031', '6372', 'BANJAR BARU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6372032', '6372', 'BANJAR BARU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6401010', '6401', 'BATU SOPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6401011', '6401', 'MUARA SAMU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6401021', '6401', 'BATU ENGAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6401022', '6401', 'TANJUNG HARAPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6401030', '6401', 'PASIR BELENGKONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6401040', '6401', 'TANAH GROGOT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6401050', '6401', 'KUARO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6401060', '6401', 'LONG IKIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6401070', '6401', 'MUARA KOMAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6401080', '6401', 'LONG KALI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402010', '6402', 'BONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402020', '6402', 'JEMPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402030', '6402', 'PENYINGGAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402040', '6402', 'MUARA PAHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402041', '6402', 'SILUQ NGURAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402050', '6402', 'MUARA LAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402051', '6402', 'BENTIAN BESAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402060', '6402', 'DAMAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402061', '6402', 'NYUATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402070', '6402', 'BARONG TONGKOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402071', '6402', 'LINGGANG BIGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402080', '6402', 'MELAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402081', '6402', 'SEKOLAQ DARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402082', '6402', 'MANOR BULATN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402090', '6402', 'LONG IRAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6402091', '6402', 'TERING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403010', '6403', 'SEMBOJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403020', '6403', 'MUARA JAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403030', '6403', 'SANGA-SANGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403040', '6403', 'LOA JANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403050', '6403', 'LOA KULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403060', '6403', 'MUARA MUNTAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403070', '6403', 'MUARA WIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403080', '6403', 'KOTABANGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403090', '6403', 'TENGGARONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403100', '6403', 'SEBULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403110', '6403', 'TENGGARONG SEBERANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403120', '6403', 'ANGGANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403130', '6403', 'MUARA BADAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403140', '6403', 'MARANG KAYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403150', '6403', 'MUARA KAMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403160', '6403', 'KENOHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403170', '6403', 'KEMBANG JANGGUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6403180', '6403', 'TABANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404010', '6404', 'MUARA ANCALONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404011', '6404', 'BUSANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404012', '6404', 'LONG MESANGAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404020', '6404', 'MUARA WAHAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404021', '6404', 'TELEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404022', '6404', 'KONGBENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404030', '6404', 'MUARA BENGKAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404031', '6404', 'BATU AMPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404040', '6404', 'SANGATTA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404041', '6404', 'BENGALON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404042', '6404', 'TELUK PANDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404043', '6404', 'SANGATTA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404044', '6404', 'RANTAU PULUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404050', '6404', 'SANGKULIRANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404051', '6404', 'KALIORANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404052', '6404', 'SANDARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404053', '6404', 'KAUBUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6404054', '6404', 'KARANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6405010', '6405', 'KELAY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6405020', '6405', 'TALISAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6405021', '6405', 'TABALAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6405030', '6405', 'BIDUK BIDUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6405040', '6405', 'PULAU DERAWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6405041', '6405', 'MARATUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6405050', '6405', 'SAMBALIUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6405060', '6405', 'TANJUNG REDEB', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6405070', '6405', 'GUNUNG TABUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6405080', '6405', 'SEGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6405090', '6405', 'TELUK BAYUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6405100', '6405', 'BATU PUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6405110', '6405', 'BIATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6409010', '6409', 'BABULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6409020', '6409', 'WARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6409030', '6409', 'PENAJAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6409040', '6409', 'SEPAKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6411010', '6411', 'LAHAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6411020', '6411', 'LONG HUBUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6411030', '6411', 'LONG BAGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6411040', '6411', 'LONG PAHANGAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6411050', '6411', 'LONG APARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6471010', '6471', 'BALIKPAPAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6471011', '6471', 'BALIKPAPAN KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6471020', '6471', 'BALIKPAPAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6471030', '6471', 'BALIKPAPAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6471040', '6471', 'BALIKPAPAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6471050', '6471', 'BALIKPAPAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6472010', '6472', 'PALARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6472020', '6472', 'SAMARINDA ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6472021', '6472', 'SAMARINDA KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6472022', '6472', 'SAMBUTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6472030', '6472', 'SAMARINDA SEBERANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6472031', '6472', 'LOA JANAN ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6472040', '6472', 'SUNGAI KUNJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6472050', '6472', 'SAMARINDA ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6472060', '6472', 'SAMARINDA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6472061', '6472', 'SUNGAI PINANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6474010', '6474', 'BONTANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6474020', '6474', 'BONTANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6474030', '6474', 'BONTANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501010', '6501', 'SUNGAI BOH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501020', '6501', 'KAYAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501030', '6501', 'KAYAN HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501040', '6501', 'KAYAN HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501050', '6501', 'PUJUNGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501060', '6501', 'BAHAU HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501070', '6501', 'SUNGAI TUBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501080', '6501', 'MALINAU SELATAN HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501090', '6501', 'MALINAU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501100', '6501', 'MALINAU SELATAN HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501110', '6501', 'MENTARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501120', '6501', 'MENTARANG HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501130', '6501', 'MALINAU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501140', '6501', 'MALINAU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6501150', '6501', 'MALINAU KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6502010', '6502', 'PESO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6502020', '6502', 'PESO HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6502030', '6502', 'TANJUNG PALAS BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6502040', '6502', 'TANJUNG PALAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6502050', '6502', 'TANJUNG SELOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6502060', '6502', 'TANJUNG PALAS TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6502070', '6502', 'TANJUNG PALAS TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6502080', '6502', 'TANJUNG PALAS UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6502090', '6502', 'SEKATAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6502100', '6502', 'BUNYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6503010', '6503', 'MURUK RIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6503020', '6503', 'SESAYAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6503030', '6503', 'BETAYAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6503040', '6503', 'SESAYAP HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6503050', '6503', 'TANA LIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504010', '6504', 'KRAYAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504011', '6504', 'KRAYAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504020', '6504', 'KRAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504021', '6504', 'KRAYAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504022', '6504', 'KRAYAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504030', '6504', 'LUMBIS OGONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504040', '6504', 'LUMBIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504050', '6504', 'SEMBAKUNG ATULAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504060', '6504', 'SEMBAKUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504070', '6504', 'SEBUKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504080', '6504', 'TULIN ONSOI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504090', '6504', 'SEI MENGGARIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504100', '6504', 'NUNUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504110', '6504', 'NUNUKAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504120', '6504', 'SEBATIK BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504130', '6504', 'SEBATIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504140', '6504', 'SEBATIK TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504150', '6504', 'SEBATIK TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6504160', '6504', 'SEBATIK UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6571010', '6571', 'TARAKAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6571020', '6571', 'TARAKAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6571030', '6571', 'TARAKAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('6571040', '6571', 'TARAKAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101021', '7101', 'DUMOGA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101022', '7101', 'DUMOGA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101023', '7101', 'DUMOGA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101024', '7101', 'DUMOGA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101025', '7101', 'DUMOGA TENGGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101026', '7101', 'DUMOGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101060', '7101', 'LOLAYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101081', '7101', 'PASSI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101082', '7101', 'PASSI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101083', '7101', 'BILALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101090', '7101', 'POIGAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101100', '7101', 'BOLAANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101101', '7101', 'BOLAANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101110', '7101', 'LOLAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7101120', '7101', 'SANGTOMBOLANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102091', '7102', 'LANGOWAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102092', '7102', 'LANGOWAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102093', '7102', 'LANGOWAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102094', '7102', 'LANGOWAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102110', '7102', 'TOMPASO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102111', '7102', 'TOMPASO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102120', '7102', 'KAWANGKOAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102121', '7102', 'KAWANGKOAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102122', '7102', 'KAWANGKOAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102130', '7102', 'SONDER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102160', '7102', 'TOMBARIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102161', '7102', 'TOMBARIRI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102170', '7102', 'PINELENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102171', '7102', 'TOMBULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102172', '7102', 'MANDOLANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102190', '7102', 'TONDANO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102191', '7102', 'TONDANO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102200', '7102', 'REMBOKEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102210', '7102', 'KAKAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102211', '7102', 'KAKAS BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102220', '7102', 'LEMBEAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102230', '7102', 'ERIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102240', '7102', 'KOMBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102250', '7102', 'TONDANO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7102251', '7102', 'TONDANO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103040', '7103', 'MANGANITU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103041', '7103', 'TATOARENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103050', '7103', 'TAMAKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103060', '7103', 'TABUKAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103061', '7103', 'TABUKAN SELATAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103062', '7103', 'TABUKAN SELATAN TENGGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103070', '7103', 'TABUKAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103080', '7103', 'MANGANITU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103090', '7103', 'TAHUNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103091', '7103', 'TAHUNA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103092', '7103', 'TAHUNA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103100', '7103', 'TABUKAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103101', '7103', 'NUSA TABUKAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103102', '7103', 'KEPULAUAN MARORE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7103110', '7103', 'KENDAHE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104010', '7104', 'KABARUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104011', '7104', 'DAMAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104020', '7104', 'LIRUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104021', '7104', 'SALIBABU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104022', '7104', 'KALONGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104023', '7104', 'MORONGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104030', '7104', 'MELONGUANE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104031', '7104', 'MELONGUANE TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104040', '7104', 'BEO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104041', '7104', 'BEO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104042', '7104', 'BEO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104050', '7104', 'RAINIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104051', '7104', 'TAMPA NA\'MMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104052', '7104', 'PULUTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104060', '7104', 'ESSANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104061', '7104', 'ESSANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104070', '7104', 'GEMEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104080', '7104', 'NANUSA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7104081', '7104', 'MIANGAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105010', '7105', 'MODOINDING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105020', '7105', 'TOMPASO BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105021', '7105', 'MAESAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105070', '7105', 'RANOYAPO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105080', '7105', 'MOTOLING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105081', '7105', 'KUMELEMBUAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105082', '7105', 'MOTOLING BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105083', '7105', 'MOTOLING TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105090', '7105', 'SINONSAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105100', '7105', 'TENGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105111', '7105', 'AMURANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105112', '7105', 'AMURANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105113', '7105', 'AMURANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105120', '7105', 'TARERAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105121', '7105', 'SULTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105130', '7105', 'TUMPAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7105131', '7105', 'TATAPAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7106010', '7106', 'KEMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7106020', '7106', 'KAUDITAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7106030', '7106', 'AIRMADIDI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7106040', '7106', 'KALAWAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7106050', '7106', 'DIMEMBE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7106051', '7106', 'TALAWAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7106060', '7106', 'WORI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7106070', '7106', 'LIKUPANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7106080', '7106', 'LIKUPANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7106081', '7106', 'LIKUPANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7107010', '7107', 'SANGKUB', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7107020', '7107', 'BINTAUNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7107030', '7107', 'BOLANG ITANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7107040', '7107', 'BOLANG ITANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7107050', '7107', 'KAIDIPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7107060', '7107', 'PINOGALUMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7108010', '7108', 'BIARO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7108020', '7108', 'TAGULANDANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7108030', '7108', 'TAGULANDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7108040', '7108', 'TAGULANDANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7108050', '7108', 'SIAU BARAT SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7108060', '7108', 'SIAU TIMUR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7108070', '7108', 'SIAU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7108080', '7108', 'SIAU TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7108090', '7108', 'SIAU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7108100', '7108', 'SIAU BARAT UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7109010', '7109', 'RATATOTOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7109020', '7109', 'PUSOMAEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7109030', '7109', 'BELANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7109040', '7109', 'RATAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7109041', '7109', 'PASAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7109042', '7109', 'RATAHAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7109050', '7109', 'TOMBATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7109051', '7109', 'TOMBATU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7109052', '7109', 'TOMBATU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7109060', '7109', 'TOULUAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7109061', '7109', 'TOULUAAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7109062', '7109', 'SILIAN RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7110010', '7110', 'POSIGADAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7110011', '7110', 'TOMINI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7110020', '7110', 'BOLANG UKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7110021', '7110', 'HELUMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7110030', '7110', 'PINOLOSIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7110040', '7110', 'PINOLOSIAN TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7110050', '7110', 'PINOLOSIAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7111010', '7111', 'NUANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7111011', '7111', 'MOTONGKAD', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7111020', '7111', 'TUTUYAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7111030', '7111', 'KOTABUNAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7111040', '7111', 'MODAYAG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7111041', '7111', 'MOOAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7111050', '7111', 'MODAYAG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7171010', '7171', 'MALALAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7171020', '7171', 'SARIO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7171021', '7171', 'WANEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7171030', '7171', 'WENANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7171031', '7171', 'TIKALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7171032', '7171', 'PAAL DUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7171040', '7171', 'MAPANGET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7171051', '7171', 'SINGKIL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7171052', '7171', 'TUMINTING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7171053', '7171', 'BUNAKEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7171054', '7171', 'BUNAKEN KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7172010', '7172', 'MADIDIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7172011', '7172', 'MATUARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7172012', '7172', 'GIRIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7172021', '7172', 'LEMBEH SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7172022', '7172', 'LEMBEH UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7172030', '7172', 'AERTEMBAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7172031', '7172', 'MAESA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7172040', '7172', 'RANOWULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7173010', '7173', 'TOMOHON SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7173020', '7173', 'TOMOHON TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7173021', '7173', 'TOMOHON TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7173022', '7173', 'TOMOHON BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7173030', '7173', 'TOMOHON UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7174010', '7174', 'KOTAMOBAGU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7174020', '7174', 'KOTAMOBAGU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7174030', '7174', 'KOTAMOBAGU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7174040', '7174', 'KOTAMOBAGU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7201030', '7201', 'TOTIKUM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7201031', '7201', 'TOTIKUM SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7201040', '7201', 'TINANGKUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7201041', '7201', 'TINANGKUNG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7201042', '7201', 'TINANGKUNG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7201050', '7201', 'LIANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7201051', '7201', 'PELING TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7201060', '7201', 'BULAGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7201061', '7201', 'BULAGI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7201062', '7201', 'BULAGI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7201070', '7201', 'BUKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7201071', '7201', 'BUKO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202010', '7202', 'TOILI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202011', '7202', 'TOILI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202012', '7202', 'MOILONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202020', '7202', 'BATUI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202021', '7202', 'BATUI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202030', '7202', 'BUNTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202031', '7202', 'NUHON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202032', '7202', 'SIMPANG RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202040', '7202', 'KINTOM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202050', '7202', 'LUWUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202051', '7202', 'LUWUK TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202052', '7202', 'LUWUK UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202053', '7202', 'LUWUK SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202054', '7202', 'NAMBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202060', '7202', 'PAGIMANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202061', '7202', 'BUALEMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202062', '7202', 'LOBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202070', '7202', 'LAMALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202071', '7202', 'MASAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202072', '7202', 'MANTOH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202080', '7202', 'BALANTAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202081', '7202', 'BALANTAK SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7202082', '7202', 'BALANTAK UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7203010', '7203', 'MENUI KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7203020', '7203', 'BUNGKU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7203021', '7203', 'BAHODOPI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7203022', '7203', 'BUNGKU PESISIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7203030', '7203', 'BUNGKU TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7203031', '7203', 'BUNGKU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7203040', '7203', 'BUNGKU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7203041', '7203', 'BUMI RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7203042', '7203', 'WITA PONDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204010', '7204', 'PAMONA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204011', '7204', 'PAMONA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204012', '7204', 'PAMONA TENGGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204020', '7204', 'LORE SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204021', '7204', 'LORE BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204030', '7204', 'PAMONA PUSALEMBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204031', '7204', 'PAMONA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204032', '7204', 'PAMONA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204040', '7204', 'LORE UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204041', '7204', 'LORE TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204042', '7204', 'LORE TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204043', '7204', 'LORE PEORE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204050', '7204', 'POSO PESISIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204051', '7204', 'POSO PESISIR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204052', '7204', 'POSO PESISIR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204060', '7204', 'LAGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204070', '7204', 'POSO KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204071', '7204', 'POSO KOTA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7204072', '7204', 'POSO KOTA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205041', '7205', 'RIO PAKAVA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205051', '7205', 'PINEMBANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205080', '7205', 'BANAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205081', '7205', 'BANAWA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205082', '7205', 'BANAWA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205090', '7205', 'LABUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205091', '7205', 'TANANTOVEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205100', '7205', 'SINDUE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205101', '7205', 'SINDUE TOMBUSABORA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205102', '7205', 'SINDUE TOBATA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205120', '7205', 'SIRENJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205130', '7205', 'BALAESANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205131', '7205', 'BALAESANG TANJUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205140', '7205', 'DAMPELAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205160', '7205', 'SOJOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7205161', '7205', 'SOJOL UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7206010', '7206', 'DAMPAL SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7206020', '7206', 'DAMPAL UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7206030', '7206', 'DONDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7206031', '7206', 'OGODEIDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7206032', '7206', 'BASIDONDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7206040', '7206', 'BAOLAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7206041', '7206', 'LAMPASIO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7206050', '7206', 'GALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7206060', '7206', 'TOLITOLI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7206061', '7206', 'DAKO PAMEAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7207010', '7207', 'LAKEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7207011', '7207', 'BIAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7207012', '7207', 'KARAMAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7207020', '7207', 'MOMUNU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7207021', '7207', 'TILOAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7207030', '7207', 'BOKAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7207031', '7207', 'BUKAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7207040', '7207', 'BUNOBOGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7207041', '7207', 'GADUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7207050', '7207', 'PALELEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7207051', '7207', 'PALELEH BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208010', '7208', 'SAUSU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208011', '7208', 'TORUE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208012', '7208', 'BALINGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208020', '7208', 'PARIGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208021', '7208', 'PARIGI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208022', '7208', 'PARIGI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208023', '7208', 'PARIGI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208024', '7208', 'PARIGI TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208030', '7208', 'AMPIBABO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208031', '7208', 'KASIMBAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208032', '7208', 'TORIBULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208033', '7208', 'SINIU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208040', '7208', 'TINOMBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208041', '7208', 'TINOMBO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208042', '7208', 'SIDOAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208050', '7208', 'TOMINI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208051', '7208', 'MEPANGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208052', '7208', 'PALASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208060', '7208', 'MOUTONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208061', '7208', 'BOLANO LAMBUNU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208062', '7208', 'TAOPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208063', '7208', 'BOLANO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7208064', '7208', 'ONGKA MALINO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7209010', '7209', 'TOJO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7209020', '7209', 'TOJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7209030', '7209', 'ULUBONGKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7209040', '7209', 'AMPANA TETE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7209050', '7209', 'AMPANA KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7209051', '7209', 'RATOLINDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7209060', '7209', 'UNA - UNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7209061', '7209', 'BATUDAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7209070', '7209', 'TOGEAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7209080', '7209', 'WALEA KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7209081', '7209', 'WALEA BESAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7209082', '7209', 'TALATAKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210010', '7210', 'PIPIKORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210020', '7210', 'KULAWI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210030', '7210', 'KULAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210040', '7210', 'LINDU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210050', '7210', 'NOKILALAKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210060', '7210', 'PALOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210070', '7210', 'GUMBASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210080', '7210', 'DOLO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210090', '7210', 'DOLO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210100', '7210', 'TANAMBULAVA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210110', '7210', 'DOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210120', '7210', 'SIGI BIROMARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210130', '7210', 'MARAWOLA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210140', '7210', 'MARAWOLA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7210150', '7210', 'KINOVARO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7211010', '7211', 'BANGKURUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7211020', '7211', 'LABOBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7211030', '7211', 'BANGGAI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7211040', '7211', 'BANGGAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7211050', '7211', 'BANGGAI TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7211060', '7211', 'BANGGAI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7211070', '7211', 'BOKAN KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7212010', '7212', 'MORI ATAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7212020', '7212', 'LEMBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7212030', '7212', 'LEMBO RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7212040', '7212', 'PETASIA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7212050', '7212', 'PETASIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7212060', '7212', 'PETASIA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7212070', '7212', 'MORI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7212080', '7212', 'SOYO JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7212090', '7212', 'BUNGKU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7212100', '7212', 'MAMOSALATO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7271010', '7271', 'PALU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7271011', '7271', 'TATANGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7271012', '7271', 'ULUJADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7271020', '7271', 'PALU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7271030', '7271', 'PALU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7271031', '7271', 'MANTIKULORE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7271040', '7271', 'PALU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7271041', '7271', 'TAWAELI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7301010', '7301', 'PASIMARANNU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7301011', '7301', 'PASILAMBENA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7301020', '7301', 'PASIMASSUNGGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7301021', '7301', 'TAKABONERATE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7301022', '7301', 'PASIMASSUNGGU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7301030', '7301', 'BONTOSIKUYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7301040', '7301', 'BONTOHARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7301041', '7301', 'BENTENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7301042', '7301', 'BONTOMANAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7301050', '7301', 'BONTOMATENE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7301051', '7301', 'BUKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7302010', '7302', 'GANTARANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7302020', '7302', 'UJUNG BULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7302021', '7302', 'UJUNG LOE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7302030', '7302', 'BONTO BAHARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7302040', '7302', 'BONTOTIRO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7302050', '7302', 'HERO LANGE-LANGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7302060', '7302', 'KAJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7302070', '7302', 'BULUKUMPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7302080', '7302', 'RILAU ALE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7302090', '7302', 'KINDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7303010', '7303', 'BISSAPPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7303011', '7303', 'ULUERE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7303012', '7303', 'SINOA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7303020', '7303', 'BANTAENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7303021', '7303', 'EREMERASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7303030', '7303', 'TOMPOBULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7303031', '7303', 'PA\'JUKUKANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7303032', '7303', 'GANTARANGKEKE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7304010', '7304', 'BANGKALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7304011', '7304', 'BANGKALA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7304020', '7304', 'TAMALATEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7304021', '7304', 'BONTORAMBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7304030', '7304', 'BINAMU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7304031', '7304', 'TURATEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7304040', '7304', 'BATANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7304041', '7304', 'ARUNGKEKE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7304042', '7304', 'TAROWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7304050', '7304', 'KELARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7304051', '7304', 'RUMBIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7305010', '7305', 'MANGARA BOMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7305020', '7305', 'MAPPAKASUNGGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7305021', '7305', 'SANROBONE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7305030', '7305', 'POLOMBANGKENG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7305031', '7305', 'PATTALLASSANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7305040', '7305', 'POLOMBANGKENG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7305050', '7305', 'GALESONG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7305051', '7305', 'GALESONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7305060', '7305', 'GALESONG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306010', '7306', 'BONTONOMPO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306011', '7306', 'BONTONOMPO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306020', '7306', 'BAJENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306021', '7306', 'BAJENG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306030', '7306', 'PALLANGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306031', '7306', 'BAROMBONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306040', '7306', 'SOMBA OPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306050', '7306', 'BONTOMARANNU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306051', '7306', 'PATTALLASSANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306060', '7306', 'PARANGLOE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306061', '7306', 'MANUJU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306070', '7306', 'TINGGIMONCONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306071', '7306', 'TOMBOLO PAO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306072', '7306', 'PARIGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306080', '7306', 'BUNGAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306081', '7306', 'BONTOLEMPANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306090', '7306', 'TOMPOBULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7306091', '7306', 'BIRINGBULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7307010', '7307', 'SINJAI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7307020', '7307', 'SINJAI BORONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7307030', '7307', 'SINJAI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7307040', '7307', 'TELLU LIMPOE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7307050', '7307', 'SINJAI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7307060', '7307', 'SINJAI TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7307070', '7307', 'SINJAI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7307080', '7307', 'BULUPODDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7307090', '7307', 'PULAU SEMBILAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308010', '7308', 'MANDAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308011', '7308', 'MONCONGLOE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308020', '7308', 'MAROS BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308021', '7308', 'MARUSU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308022', '7308', 'TURIKALE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308023', '7308', 'LAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308030', '7308', 'BONTOA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308040', '7308', 'BANTIMURUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308041', '7308', 'SIMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308050', '7308', 'TANRALILI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308051', '7308', 'TOMPU BULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308060', '7308', 'CAMBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308061', '7308', 'CENRANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7308070', '7308', 'MALLAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7309010', '7309', 'LIUKANG TANGAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7309020', '7309', 'LIUKANG KALMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7309030', '7309', 'LIUKANG TUPABBIRING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7309031', '7309', 'LIUKANG TUPABBIRING UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7309040', '7309', 'PANGKAJENE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7309041', '7309', 'MINASATENE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7309050', '7309', 'BALOCCI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7309051', '7309', 'TONDONG TALLASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7309060', '7309', 'BUNGORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7309070', '7309', 'LABAKKANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7309080', '7309', 'MA\'RANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7309091', '7309', 'SEGERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7309092', '7309', 'MANDALLE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7310010', '7310', 'TANETE RIAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7310011', '7310', 'PUJANANTING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7310020', '7310', 'TANETE RILAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7310030', '7310', 'BARRU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7310040', '7310', 'SOPPENG RIAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7310041', '7310', 'BALUSU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7310050', '7310', 'MALLUSETASI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311010', '7311', 'BONTOCANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311020', '7311', 'KAHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311030', '7311', 'KAJUARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311040', '7311', 'SALOMEKKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311050', '7311', 'TONRA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311060', '7311', 'PATIMPENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311070', '7311', 'LIBURENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311080', '7311', 'MARE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311090', '7311', 'SIBULUE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311100', '7311', 'CINA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311110', '7311', 'BAREBBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311120', '7311', 'PONRE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311130', '7311', 'LAPPARIAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311140', '7311', 'LAMURU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311141', '7311', 'TELLU LIMPOE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311150', '7311', 'BENGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311160', '7311', 'ULAWENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311170', '7311', 'PALAKKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311180', '7311', 'AWANGPONE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311190', '7311', 'TELLU SIATTINGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311200', '7311', 'AMALI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311210', '7311', 'AJANGALE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311220', '7311', 'DUA BOCCOE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311230', '7311', 'CENRANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311710', '7311', 'TANETE RIATTANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311720', '7311', 'TANETE RIATTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7311730', '7311', 'TANETE RIATTANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7312010', '7312', 'MARIO RIWAWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7312020', '7312', 'LALABATA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7312030', '7312', 'LILI RIAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7312031', '7312', 'GANRA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7312032', '7312', 'CITTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7312040', '7312', 'LILI RILAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7312050', '7312', 'DONRI DONRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7312060', '7312', 'MARIO RIAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313010', '7313', 'SABBANG PARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313020', '7313', 'TEMPE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313030', '7313', 'PAMMANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313040', '7313', 'BOLA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313050', '7313', 'TAKKALALLA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313060', '7313', 'SAJOANGING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313061', '7313', 'PENRANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313070', '7313', 'MAJAULENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313080', '7313', 'TANA SITOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313090', '7313', 'BELAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313100', '7313', 'MANIANG PAJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313101', '7313', 'GILIRENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313110', '7313', 'KEERA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7313120', '7313', 'PITUMPANUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7314010', '7314', 'PANCA LAUTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7314020', '7314', 'TELLULIMPO E', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7314030', '7314', 'WATANG PULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7314040', '7314', 'BARANTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7314050', '7314', 'PANCA RIJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7314051', '7314', 'KULO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7314060', '7314', 'MARITENGNGAE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7314061', '7314', 'WATANG SIDENRENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7314070', '7314', 'PITU RIAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7314080', '7314', 'DUAPITUE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7314081', '7314', 'PITU RIASE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7315010', '7315', 'SUPPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7315020', '7315', 'MATTIROSOMPE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7315021', '7315', 'LANRISANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7315030', '7315', 'MATTIRO BULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7315040', '7315', 'WATANG SAWITTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7315041', '7315', 'PALETEANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7315042', '7315', 'TIROANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7315050', '7315', 'PATAMPANUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7315060', '7315', 'CEMPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7315070', '7315', 'DUAMPANUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7315071', '7315', 'BATULAPPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7315080', '7315', 'LEMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7316010', '7316', 'MAIWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7316011', '7316', 'BUNGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7316020', '7316', 'ENREKANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7316021', '7316', 'CENDANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7316030', '7316', 'BARAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7316031', '7316', 'BUNTU BATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7316040', '7316', 'ANGGERAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7316041', '7316', 'MALUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7316050', '7316', 'ALLA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7316051', '7316', 'CURIO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7316052', '7316', 'MASALLE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7316053', '7316', 'BAROKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317010', '7317', 'LAROMPONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317011', '7317', 'LAROMPONG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317020', '7317', 'SULI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317021', '7317', 'SULI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317030', '7317', 'BELOPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317031', '7317', 'KAMANRE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317032', '7317', 'BELOPA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317040', '7317', 'BAJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317041', '7317', 'BAJO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317050', '7317', 'BASSESANGTEMPE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317051', '7317', 'LATIMOJONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317052', '7317', 'BASSESANGTEMPE UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317060', '7317', 'BUPON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317061', '7317', 'PONRANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317062', '7317', 'PONRANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317070', '7317', 'BUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317080', '7317', 'WALENRANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317081', '7317', 'WALENRANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317090', '7317', 'LAMASI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317091', '7317', 'WALENRANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317092', '7317', 'WALENRANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7317093', '7317', 'LAMASI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318010', '7318', 'BONGGAKARADENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318011', '7318', 'SIMBUANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318012', '7318', 'RANO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318013', '7318', 'MAPPAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318020', '7318', 'MENGKENDEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318021', '7318', 'GANDANG BATU SILANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318030', '7318', 'SANGALLA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318031', '7318', 'SANGALA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318032', '7318', 'SANGALLA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318040', '7318', 'MAKALE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318041', '7318', 'MAKALE SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318042', '7318', 'MAKALE UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318050', '7318', 'SALUPUTTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318051', '7318', 'BITTUANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318052', '7318', 'REMBON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318053', '7318', 'MASANDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318054', '7318', 'MALIMBONG BALEPE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318061', '7318', 'RANTETAYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7318067', '7318', 'KURRA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7322010', '7322', 'SABBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7322020', '7322', 'BAEBUNTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7322030', '7322', 'MALANGKE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7322031', '7322', 'MALANGKE BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7322040', '7322', 'SUKAMAJU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7322050', '7322', 'BONE-BONE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7322051', '7322', 'TANA LILI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7322120', '7322', 'MASAMBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7322121', '7322', 'MAPPEDECENG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7322122', '7322', 'RAMPI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7322130', '7322', 'LIMBONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7322131', '7322', 'SEKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7325010', '7325', 'BURAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7325020', '7325', 'WOTU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7325030', '7325', 'TOMONI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7325031', '7325', 'TOMONI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7325040', '7325', 'ANGKONA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7325050', '7325', 'MALILI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7325060', '7325', 'TOWUTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7325070', '7325', 'NUHA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7325071', '7325', 'WASUPONDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7325080', '7325', 'MANGKUTANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7325081', '7325', 'KALAENA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326010', '7326', 'SOPAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326020', '7326', 'KESU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326030', '7326', 'SANGGALANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326040', '7326', 'BUNTAO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326050', '7326', 'RANTEBUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326060', '7326', 'NANGGALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326070', '7326', 'TONDON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326080', '7326', 'TALLUNGLIPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326090', '7326', 'RANTEPAO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326100', '7326', 'TIKALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326110', '7326', 'SESEAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326120', '7326', 'BALUSU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326130', '7326', 'SA\'DAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326140', '7326', 'BENGKELEKILA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326150', '7326', 'SESEAN SULOARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326160', '7326', 'KAPALA PITU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326170', '7326', 'DENDE PIONGAN NAPO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326180', '7326', 'AWAN RANTE KARUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326190', '7326', 'RINDINGALO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326200', '7326', 'BUNTU PEPASAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7326210', '7326', 'BARUPPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371010', '7371', 'MARISO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371020', '7371', 'MAMAJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371030', '7371', 'TAMALATE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371031', '7371', 'RAPPOCINI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371040', '7371', 'MAKASSAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371050', '7371', 'UJUNG PANDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371060', '7371', 'WAJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371070', '7371', 'BONTOALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371080', '7371', 'UJUNG TANAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371081', '7371', 'KEPULAUAN SANGKARRANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371090', '7371', 'TALLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371100', '7371', 'PANAKKUKANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371101', '7371', 'MANGGALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371110', '7371', 'BIRING KANAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7371111', '7371', 'TAMALANREA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7372010', '7372', 'BACUKIKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7372011', '7372', 'BACUKIKI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7372020', '7372', 'UJUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7372030', '7372', 'SOREANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7373010', '7373', 'WARA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7373011', '7373', 'SENDANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7373020', '7373', 'WARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7373021', '7373', 'WARA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7373022', '7373', 'MUNGKAJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7373030', '7373', 'WARA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7373031', '7373', 'BARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7373040', '7373', 'TELLUWANUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7373041', '7373', 'WARA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7401050', '7401', 'LASALIMU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7401051', '7401', 'LASALIMU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7401052', '7401', 'SIONTAPINA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7401060', '7401', 'PASAR WAJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7401061', '7401', 'WOLOWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7401062', '7401', 'WABULA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7401110', '7401', 'KAPONTORI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402010', '7402', 'TONGKUNO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402011', '7402', 'TONGKUNO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402020', '7402', 'PARIGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402021', '7402', 'BONE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402022', '7402', 'MAROBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402030', '7402', 'KABAWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402031', '7402', 'KABANGKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402032', '7402', 'KONTUKOWUNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402061', '7402', 'KONTUNAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402062', '7402', 'WATOPUTE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402070', '7402', 'KATOBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402071', '7402', 'LOHIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402072', '7402', 'DURUKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402073', '7402', 'BATALAIWORU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402080', '7402', 'NAPABALANO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402081', '7402', 'LASALEPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402083', '7402', 'TOWEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402090', '7402', 'WAKORUMBA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402091', '7402', 'PASIR PUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402092', '7402', 'PASI KOLAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402111', '7402', 'MALIGANO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7402112', '7402', 'BATUKARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403090', '7403', 'SOROPIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403091', '7403', 'LALONGGASUMEETO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403100', '7403', 'SAMPARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403101', '7403', 'BONDOALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403102', '7403', 'BESULUTU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403103', '7403', 'KAPOIALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403104', '7403', 'ANGGALOMOARE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403105', '7403', 'MOROSI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403130', '7403', 'LAMBUYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403131', '7403', 'UEPAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403132', '7403', 'PURIALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403133', '7403', 'ONEMBUTE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403140', '7403', 'PONDIDAHA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403141', '7403', 'WONGGEDUKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403142', '7403', 'AMONGGEDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403143', '7403', 'WONGGEDUKU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403150', '7403', 'WAWOTOBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403151', '7403', 'MELUHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403152', '7403', 'KONAWE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403153', '7403', 'ANGGOTOA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403170', '7403', 'UNAAHA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403171', '7403', 'ANGGABERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403180', '7403', 'ABUKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403181', '7403', 'LATOMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403182', '7403', 'TONGAUNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403183', '7403', 'ASINUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403184', '7403', 'PADANGGUNI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403185', '7403', 'TONGAUNA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7403193', '7403', 'ROUTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7404010', '7404', 'WATUBANGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7404011', '7404', 'TANGGETADA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7404012', '7404', 'TOARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7404013', '7404', 'POLINGGONA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7404020', '7404', 'POMALAA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7404030', '7404', 'WUNDULAKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7404031', '7404', 'BAULA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7404060', '7404', 'KOLAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7404061', '7404', 'LATAMBAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7404070', '7404', 'WOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7404071', '7404', 'SAMATURU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7404072', '7404', 'IWOIMENDAA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405010', '7405', 'TINANGGEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405011', '7405', 'LALEMBUU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405020', '7405', 'ANDOOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405021', '7405', 'BUKE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405022', '7405', 'ANDOOLO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405030', '7405', 'PALANGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405031', '7405', 'PALANGGA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405032', '7405', 'BAITO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405040', '7405', 'LAINEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405041', '7405', 'LAEYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405050', '7405', 'KOLONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405051', '7405', 'KOLONO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405060', '7405', 'LAONTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405070', '7405', 'MORAMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405071', '7405', 'MORAMO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405080', '7405', 'KONDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405081', '7405', 'WOLASI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405090', '7405', 'RANOMEETO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405091', '7405', 'RANOMEETO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405100', '7405', 'LANDONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405101', '7405', 'MOWILA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405102', '7405', 'SABULAKOA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405110', '7405', 'ANGATA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405111', '7405', 'BENUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7405112', '7405', 'BASALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406010', '7406', 'KABAENA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406011', '7406', 'KABAENA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406012', '7406', 'KABAENA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406013', '7406', 'KABAENA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406020', '7406', 'KABAENA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406021', '7406', 'KABAENA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406030', '7406', 'RUMBIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406031', '7406', 'MATA OLEO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406032', '7406', 'KEP. MASALOKA RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406033', '7406', 'RUMBIA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406040', '7406', 'RAROWATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406041', '7406', 'RAROWATU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406042', '7406', 'MATA USU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406043', '7406', 'LANTARI JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406050', '7406', 'POLEANG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406051', '7406', 'POLEANG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406052', '7406', 'POLEANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406053', '7406', 'POLEANG TENGGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406060', '7406', 'POLEANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406061', '7406', 'POLEANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406062', '7406', 'TONTONUNU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7406063', '7406', 'POLEANG TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7407010', '7407', 'BINONGKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7407011', '7407', 'TOGO BINONGKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7407020', '7407', 'TOMIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7407021', '7407', 'TOMIA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7407030', '7407', 'KALEDUPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7407031', '7407', 'KALEDUPA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7407040', '7407', 'WANGI-WANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7407050', '7407', 'WANGI-WANGI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408010', '7408', 'RANTEANGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408011', '7408', 'LAMBAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408012', '7408', 'WAWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408020', '7408', 'LASUSUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408021', '7408', 'KATOI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408030', '7408', 'KODEOHA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408031', '7408', 'TIWU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408040', '7408', 'NGAPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408041', '7408', 'WATUNOHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408050', '7408', 'PAKUE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408051', '7408', 'PAKUE UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408052', '7408', 'PAKUE TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408060', '7408', 'BATU PUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408061', '7408', 'POREHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7408062', '7408', 'TOLALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7409100', '7409', 'BONEGUNU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7409101', '7409', 'KAMBOWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7409110', '7409', 'WAKORUMBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7409120', '7409', 'KULISUSU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7409121', '7409', 'KULISUSU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7409122', '7409', 'KULISUSU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7410010', '7410', 'SAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7410011', '7410', 'MOTUI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7410020', '7410', 'LEMBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7410030', '7410', 'LASOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7410031', '7410', 'WAWOLESEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7410032', '7410', 'LASOLO KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7410040', '7410', 'MOLAWE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7410050', '7410', 'ASERA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7410051', '7410', 'ANDOWIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7410052', '7410', 'OHEO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7410060', '7410', 'LANGGIKIMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7410070', '7410', 'WIWIRANO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7410071', '7410', 'LANDAWE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7411010', '7411', 'AERE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7411020', '7411', 'LAMBANDIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7411030', '7411', 'POLI-POLIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7411040', '7411', 'DANGIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7411050', '7411', 'LADONGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7411060', '7411', 'LOEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7411070', '7411', 'TIRAWUTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7411080', '7411', 'LALOLAE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7411090', '7411', 'MOWEWE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7411100', '7411', 'TINONDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7411110', '7411', 'ULUIWOI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7411120', '7411', 'UEESI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7412010', '7412', 'WAWONII TENGGARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7412020', '7412', 'WAWONII TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7412030', '7412', 'WAWONII TIMUR LAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7412040', '7412', 'WAWONII UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7412050', '7412', 'WAWONII SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7412060', '7412', 'WAWONII TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7412070', '7412', 'WAWONII BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7413010', '7413', 'TIWORO KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7413020', '7413', 'MAGINTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7413030', '7413', 'TIWORO TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7413040', '7413', 'TIWORO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7413050', '7413', 'TIWORO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7413060', '7413', 'LAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7413070', '7413', 'SAWERIGADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7413080', '7413', 'BARANGKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7413090', '7413', 'WA DAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7413100', '7413', 'KUSAMBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7413110', '7413', 'NAPANO KUSAMBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7414010', '7414', 'TALAGA RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7414020', '7414', 'MAWASANGKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7414030', '7414', 'MAWASANGKA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7414040', '7414', 'MAWASANGKA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7414050', '7414', 'LAKUDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7414060', '7414', 'GU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7414070', '7414', 'SANGIA WAMBULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7415010', '7415', 'BATU ATAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7415020', '7415', 'LAPANDEWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7415030', '7415', 'SAMPOLAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7415040', '7415', 'BATAUGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7415050', '7415', 'SIOMPU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7415060', '7415', 'SIOMPU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7415070', '7415', 'KADATUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7471010', '7471', 'MANDONGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7471011', '7471', 'BARUGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7471012', '7471', 'PUUWATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7471013', '7471', 'KADIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7471014', '7471', 'WUA-WUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7471020', '7471', 'POASIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7471021', '7471', 'ABELI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7471022', '7471', 'KAMBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7471023', '7471', 'NAMBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7471030', '7471', 'KENDARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7471031', '7471', 'KENDARI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7472010', '7472', 'BETOAMBARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7472011', '7472', 'MURHUM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7472012', '7472', 'BATUPOARO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7472020', '7472', 'WOLIO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7472021', '7472', 'KOKALUKUNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7472030', '7472', 'SORAWOLIO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7472040', '7472', 'BUNGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7472041', '7472', 'LEA-LEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7501031', '7501', 'MANANGGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7501040', '7501', 'TILAMUTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7501041', '7501', 'DULUPI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7501042', '7501', 'BOTUMOITO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7501050', '7501', 'PAGUYAMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7501051', '7501', 'WONOSARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7501052', '7501', 'PAGUYAMAN PANTAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502010', '7502', 'BATUDAA PANTAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502011', '7502', 'BILUHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502020', '7502', 'BATUDAA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502021', '7502', 'BONGOMEME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502022', '7502', 'TABONGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502023', '7502', 'DUNGALIYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502030', '7502', 'TIBAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502031', '7502', 'PULUBALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502040', '7502', 'BOLIYOHUTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502041', '7502', 'MOOTILANGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502042', '7502', 'TOLANGOHULA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502043', '7502', 'ASPARAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502044', '7502', 'BILATO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502070', '7502', 'LIMBOTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502071', '7502', 'LIMBOTO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502080', '7502', 'TELAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502081', '7502', 'TELAGA BIRU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502082', '7502', 'TILANGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7502083', '7502', 'TELAGA JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7503010', '7503', 'POPAYATO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7503011', '7503', 'POPAYATO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7503012', '7503', 'POPAYATO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7503020', '7503', 'LEMITO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7503021', '7503', 'WANGGARASI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7503030', '7503', 'MARISA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7503031', '7503', 'PATILANGGIO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7503032', '7503', 'BUNTULIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7503033', '7503', 'DUHIADAA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7503040', '7503', 'RANDANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7503041', '7503', 'TALUDITI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7503050', '7503', 'PAGUAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7503051', '7503', 'DENGILO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504010', '7504', 'TAPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504011', '7504', 'BULANGO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504012', '7504', 'BULANGO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504013', '7504', 'BULANGO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504014', '7504', 'BULANGO ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504020', '7504', 'KABILA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504021', '7504', 'BOTU PINGGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504022', '7504', 'TILONGKABILA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504030', '7504', 'SUWAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504031', '7504', 'SUWAWA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504032', '7504', 'SUWAWA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504033', '7504', 'SUWAWA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504034', '7504', 'PINOGU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504040', '7504', 'BONEPANTAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504041', '7504', 'KABILA BONE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504042', '7504', 'BONE RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504043', '7504', 'BONE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7504044', '7504', 'BULAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7505010', '7505', 'ATINGGOLA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7505011', '7505', 'GENTUMA RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7505020', '7505', 'KWANDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7505021', '7505', 'TOMILITO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7505022', '7505', 'PONELO KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7505030', '7505', 'ANGGREK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7505031', '7505', 'MONANO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7505040', '7505', 'SUMALATA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7505041', '7505', 'SUMALATA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7505050', '7505', 'TOLINGGULA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7505051', '7505', 'BIAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7571010', '7571', 'KOTA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7571011', '7571', 'DUNGINGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7571020', '7571', 'KOTA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7571021', '7571', 'KOTA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7571022', '7571', 'HULONTHALANGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7571023', '7571', 'DUMBO RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7571030', '7571', 'KOTA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7571031', '7571', 'KOTA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7571032', '7571', 'SIPATANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7601010', '7601', 'BANGGAE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7601011', '7601', 'BANGGAE TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7601020', '7601', 'PAMBOANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7601030', '7601', 'SENDANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7601031', '7601', 'TAMMERODO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7601033', '7601', 'TUBO SENDANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7601040', '7601', 'MALUNDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7601041', '7601', 'ULUMANDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602010', '7602', 'TINAMBUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602011', '7602', 'BALANIPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602012', '7602', 'LIMBORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602020', '7602', 'TUBBI TARAMANU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602021', '7602', 'ALU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602030', '7602', 'CAMPALAGIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602031', '7602', 'LUYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602040', '7602', 'WONOMULYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602041', '7602', 'MAPILLI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602042', '7602', 'TAPANGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602043', '7602', 'MATAKALI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602044', '7602', 'B U L O', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602050', '7602', 'POLEWALI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602051', '7602', 'BINUANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602052', '7602', 'ANREAPI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7602061', '7602', 'MATANGNGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603010', '7603', 'SUMARORONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603020', '7603', 'MESSAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603030', '7603', 'PANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603031', '7603', 'NOSU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603040', '7603', 'TABANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603050', '7603', 'MAMASA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603060', '7603', 'TANDUK KALUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603061', '7603', 'BALLA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603070', '7603', 'SESENAPADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603071', '7603', 'TAWALIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603080', '7603', 'MAMBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603081', '7603', 'BAMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603082', '7603', 'RANTEBULAHAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603083', '7603', 'MEHALAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603090', '7603', 'ARALLE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603091', '7603', 'BUNTU MALANGKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7603100', '7603', 'TABULAHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7604010', '7604', 'TAPALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7604011', '7604', 'TAPALANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7604020', '7604', 'MAMUJU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7604022', '7604', 'SIMBORO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7604023', '7604', 'BALABALAKANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7604030', '7604', 'KALUKKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7604031', '7604', 'PAPALANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7604032', '7604', 'SAMPAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7604033', '7604', 'TOMMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7604040', '7604', 'KALUMPANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7604041', '7604', 'BONEHAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7605010', '7605', 'SARUDU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7605011', '7605', 'DAPURANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7605012', '7605', 'DURIPOKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7605020', '7605', 'BARAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7605021', '7605', 'BULU TABA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7605022', '7605', 'LARIANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7605030', '7605', 'PASANGKAYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7605031', '7605', 'TIKKE RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7605032', '7605', 'PEDONGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7605040', '7605', 'BAMBALAMOTU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7605041', '7605', 'BAMBAIRA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7605042', '7605', 'SARJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7606010', '7606', 'PANGALE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7606020', '7606', 'BUDONG-BUDONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7606030', '7606', 'TOBADAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7606040', '7606', 'TOPOYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('7606050', '7606', 'KAROSSA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8101040', '8101', 'TANIMBAR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8101041', '8101', 'WER TAMRIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8101042', '8101', 'WER MAKTIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8101043', '8101', 'SELARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8101050', '8101', 'TANIMBAR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8101051', '8101', 'YARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8101052', '8101', 'WUAR LABOBAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8101053', '8101', 'NIRUNMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8101054', '8101', 'KORMOMOLIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8101055', '8101', 'MOLU MARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8102010', '8102', 'KEI KECIL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8102012', '8102', 'KEI KECIL BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8102013', '8102', 'KEI KECIL TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8102014', '8102', 'HOAT SORBAY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8102015', '8102', 'MANYEUW', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8102016', '8102', 'KEI KECIL TIMUR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8102020', '8102', 'KEI BESAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8102021', '8102', 'KEI BESAR UTARA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8102022', '8102', 'KEI BESAR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8102023', '8102', 'KEI BESAR UTARA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8102024', '8102', 'KEI BESAR SELATAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103010', '8103', 'BANDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103040', '8103', 'TEHORU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103041', '8103', 'TELUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103050', '8103', 'AMAHAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103051', '8103', 'KOTA MASOHI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103052', '8103', 'TELUK ELPAPUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103060', '8103', 'TEON NILA SERUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103080', '8103', 'SAPARUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103081', '8103', 'NUSALAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103082', '8103', 'SAPARUA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103090', '8103', 'P. HARUKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103100', '8103', 'SALAHUTU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103110', '8103', 'LEIHITU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103111', '8103', 'LEIHITU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103140', '8103', 'SERAM UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103141', '8103', 'SERAM UTARA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103142', '8103', 'SERAM UTARA TIMUR KOBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8103143', '8103', 'SERAM UTARA TIMUR SETI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8104020', '8104', 'NAMLEA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8104021', '8104', 'WAEAPO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8104022', '8104', 'WAPLAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8104023', '8104', 'BATA BUAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8104024', '8104', 'TELUK KAIELY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8104025', '8104', 'WAELATA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8104026', '8104', 'LOLONG GUBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8104027', '8104', 'LILIALY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8104030', '8104', 'AIR BUAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8104031', '8104', 'FENA LEISELA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8105010', '8105', 'ARU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8105011', '8105', 'ARU SELATAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8105012', '8105', 'ARU SELATAN UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8105020', '8105', 'ARU TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8105021', '8105', 'ARU TENGAH TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8105022', '8105', 'ARU TENGAH SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8105030', '8105', 'PULAU-PULAU ARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8105031', '8105', 'ARU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8105032', '8105', 'ARU UTARA TIMUR BATULEY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8105033', '8105', 'SIR-SIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8106010', '8106', 'HUAMUAL BELAKANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8106011', '8106', 'KEPULAUAN MANIPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8106020', '8106', 'SERAM BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8106021', '8106', 'HUAMUAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8106030', '8106', 'KAIRATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8106031', '8106', 'KAIRATU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8106032', '8106', 'INAMOSOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8106033', '8106', 'AMALATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8106034', '8106', 'ELPAPUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8106040', '8106', 'TANIWEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8106041', '8106', 'TANIWEL TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107010', '8107', 'PULAU GOROM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107011', '8107', 'WAKATE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107012', '8107', 'TEOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107013', '8107', 'GOROM TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107014', '8107', 'PULAU PANJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107020', '8107', 'SERAM TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107021', '8107', 'TUTUK TOLU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107022', '8107', 'KILMURY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107023', '8107', 'LIAN VITU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107024', '8107', 'KIAN DARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107030', '8107', 'WERINAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107031', '8107', 'SIWALALAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107040', '8107', 'BULA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107041', '8107', 'BULA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8107042', '8107', 'TELUK WARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108010', '8108', 'WETAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108011', '8108', 'WETAR BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108012', '8108', 'WETAR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108013', '8108', 'WETAR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108020', '8108', 'PP. TERSELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108021', '8108', 'KISAR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108022', '8108', 'KEPULAUAN ROMANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108030', '8108', 'LETTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108041', '8108', 'MOA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108042', '8108', 'LAKOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108050', '8108', 'DAMER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108060', '8108', 'MDONA HIERA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108070', '8108', 'PP. BABAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108071', '8108', 'PULAU WETANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108080', '8108', 'BABAR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108081', '8108', 'PULAU MASELA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8108082', '8108', 'DAWELOR DAWERA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8109010', '8109', 'KEPALA MADAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8109020', '8109', 'LEKSULA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8109021', '8109', 'FENA FAFAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8109030', '8109', 'NAMROLE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8109040', '8109', 'WAISAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8109050', '8109', 'AMBALAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8171010', '8171', 'NUSANIWE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8171020', '8171', 'SIRIMAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8171021', '8171', 'LEITIMUR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8171030', '8171', 'TELUK AMBON BAGUALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8171031', '8171', 'TELUK AMBON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8172010', '8172', 'PP. KUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8172011', '8172', 'KUR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8172020', '8172', 'TAYANDO TAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8172030', '8172', 'PULAU DULLAH UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8172040', '8172', 'PULAU DULLAH SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8201090', '8201', 'JAILOLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8201091', '8201', 'JAILOLO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8201100', '8201', 'SAHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8201101', '8201', 'SAHU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8201130', '8201', 'IBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8201131', '8201', 'IBU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8201132', '8201', 'TABARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8201140', '8201', 'LOLODA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8202030', '8202', 'WEDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8202031', '8202', 'WEDA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8202032', '8202', 'WEDA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8202033', '8202', 'WEDA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8202034', '8202', 'WEDA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8202041', '8202', 'PULAU GEBE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8202042', '8202', 'PATANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8202043', '8202', 'PATANI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8202044', '8202', 'PATANI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8202045', '8202', 'PATANI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8203010', '8203', 'SULA BESI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8203011', '8203', 'SULABESI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8203020', '8203', 'SANANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8203021', '8203', 'SULA BESI TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8203022', '8203', 'SULABESI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8203023', '8203', 'SANANA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8203030', '8203', 'MANGOLI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8203031', '8203', 'MANGOLI TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8203032', '8203', 'MANGOLI UTARA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8203040', '8203', 'MANGOLI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8203041', '8203', 'MANGOLI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8203042', '8203', 'MANGOLI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204010', '8204', 'OBI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204020', '8204', 'OBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204021', '8204', 'OBI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204022', '8204', 'OBI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204023', '8204', 'OBI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204030', '8204', 'BACAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204031', '8204', 'MANDIOLI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204032', '8204', 'MANDIOLI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204033', '8204', 'BACAN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204034', '8204', 'BATANG LOMANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204040', '8204', 'BACAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204041', '8204', 'BACAN TIMUR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204042', '8204', 'BACAN TIMUR TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204050', '8204', 'BACAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204051', '8204', 'KASIRUTA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204052', '8204', 'KASIRUTA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204053', '8204', 'BACAN BARAT UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204060', '8204', 'KAYOA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204061', '8204', 'KAYOA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204062', '8204', 'KAYOA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204063', '8204', 'KAYOA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204070', '8204', 'PULAU MAKIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204071', '8204', 'MAKIAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204080', '8204', 'GANE BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204081', '8204', 'GANE BARAT SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204082', '8204', 'GANE BARAT UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204083', '8204', 'KEPULAUAN JORONGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204090', '8204', 'GANE TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204091', '8204', 'GANE TIMUR TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8204092', '8204', 'GANE TIMUR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205010', '8205', 'MALIFUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205011', '8205', 'KAO TELUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205020', '8205', 'KAO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205021', '8205', 'KAO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205022', '8205', 'KAO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205030', '8205', 'TOBELO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205031', '8205', 'TOBELO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205032', '8205', 'TOBELO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205040', '8205', 'TOBELO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205041', '8205', 'TOBELO TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205042', '8205', 'TOBELO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205050', '8205', 'GALELA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205051', '8205', 'GALELA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205052', '8205', 'GALELA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205053', '8205', 'GALELA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205060', '8205', 'LOLODA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8205061', '8205', 'LOLODA KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8206010', '8206', 'MABA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8206011', '8206', 'KOTA MABA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8206020', '8206', 'WASILE SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8206030', '8206', 'WASILE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8206031', '8206', 'WASILE TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8206032', '8206', 'WASILE TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8206033', '8206', 'WASILE UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8206040', '8206', 'MABA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8206041', '8206', 'MABA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8206042', '8206', 'MABA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8207010', '8207', 'MOROTAI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8207020', '8207', 'MOROTAI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8207030', '8207', 'MOROTAI SELATAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8207040', '8207', 'MOROTAI JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8207050', '8207', 'MOROTAI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8208010', '8208', 'TALIABU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8208020', '8208', 'TALIABU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8208030', '8208', 'TABONA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8208040', '8208', 'TALIABU TIMUR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8208050', '8208', 'TALIABU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8208060', '8208', 'TALIABU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8208070', '8208', 'LEDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8208080', '8208', 'TALIABU BARAT LAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8271010', '8271', 'PULAU TERNATE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8271011', '8271', 'MOTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8271012', '8271', 'PULAU BATANG DUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8271013', '8271', 'PULAU HIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8271014', '8271', 'TERNATE BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8271020', '8271', 'TERNATE SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8271021', '8271', 'TERNATE TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8271030', '8271', 'TERNATE UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8272010', '8272', 'TIDORE SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8272020', '8272', 'TIDORE UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8272030', '8272', 'TIDORE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8272031', '8272', 'TIDORE TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8272040', '8272', 'OBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8272041', '8272', 'OBA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8272050', '8272', 'OBA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('8272051', '8272', 'OBA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101050', '9101', 'FAKFAK TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101051', '9101', 'KARAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101052', '9101', 'FAKFAK TIMUR TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101060', '9101', 'FAKFAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101061', '9101', 'FAKFAK TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101062', '9101', 'PARIWARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101070', '9101', 'FAKFAK BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101071', '9101', 'WARTUTIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101080', '9101', 'KOKAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101081', '9101', 'TELUK PATIPI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101082', '9101', 'KRAMONGMONGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101083', '9101', 'BOMBERAY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101084', '9101', 'ARGUNI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101085', '9101', 'MBAHAMDANDARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101086', '9101', 'FURWAGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101087', '9101', 'KAYAUNI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9101088', '9101', 'TOMAGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9102010', '9102', 'BURUWAY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9102020', '9102', 'TELUK ARGUNI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9102021', '9102', 'TELUK ARGUNI BAWAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9102030', '9102', 'KAIMANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9102031', '9102', 'KAMBRAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9102040', '9102', 'TELUK ETNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9102041', '9102', 'YAMOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9103010', '9103', 'NAIKERE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9103020', '9103', 'WONDIBOY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9103021', '9103', 'RASIEY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9103022', '9103', 'KURI WAMESA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9103030', '9103', 'WASIOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9103040', '9103', 'DUAIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9103041', '9103', 'ROON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9103050', '9103', 'WINDESI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9103051', '9103', 'NIKIWAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9103060', '9103', 'WAMESA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9103061', '9103', 'ROSWAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9103070', '9103', 'RUMBERPON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9103071', '9103', 'SOUG JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104010', '9104', 'FAFURWAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104020', '9104', 'BABO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104021', '9104', 'SUMURI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104022', '9104', 'AROBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104023', '9104', 'KAITARO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104030', '9104', 'KURI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104040', '9104', 'WAMESA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104050', '9104', 'BINTUNI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104051', '9104', 'MANIMERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104052', '9104', 'TUHIBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104053', '9104', 'DATARAN BEIMES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104060', '9104', 'TEMBUNI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104070', '9104', 'ARANDAY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104071', '9104', 'KAMUNDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104072', '9104', 'TOMU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104073', '9104', 'WERIAGAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104080', '9104', 'MOSKONA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104081', '9104', 'MEYADO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104082', '9104', 'MOSKONA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104090', '9104', 'MERDEY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104091', '9104', 'BISCOOP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104092', '9104', 'MASYETA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104100', '9104', 'MOSKONA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9104101', '9104', 'MOSKONA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9105110', '9105', 'WARMARE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9105120', '9105', 'PRAFI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9105141', '9105', 'MANOKWARI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9105142', '9105', 'MANOKWARI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9105143', '9105', 'MANOKWARI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9105144', '9105', 'MANOKWARI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9105146', '9105', 'TANAH RUBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9105170', '9105', 'MASNI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9105171', '9105', 'SIDEY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106010', '9106', 'INANWATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106011', '9106', 'METEMANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106020', '9106', 'KOKODA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106021', '9106', 'KAIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106022', '9106', 'KOKODA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106023', '9106', 'KAIS DARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106060', '9106', 'MOSWAREN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106070', '9106', 'TEMINABUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106071', '9106', 'SEREMUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106072', '9106', 'WAYER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106073', '9106', 'KONDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106074', '9106', 'SAIFI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106080', '9106', 'SAWIAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106081', '9106', 'FOKOUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9106082', '9106', 'SALKMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107061', '9107', 'KLASO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107062', '9107', 'SAENGKEDUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107100', '9107', 'MAKBON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107101', '9107', 'KLAYILI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107110', '9107', 'BERAUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107111', '9107', 'KLAMONO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107112', '9107', 'KLABOT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107113', '9107', 'KLAWAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107114', '9107', 'BAGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107115', '9107', 'KLASAFET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107116', '9107', 'MALABOTOM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107118', '9107', 'BOTAIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107119', '9107', 'KONHIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107120', '9107', 'SALAWATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107121', '9107', 'MAYAMUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107122', '9107', 'SALAWATI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107123', '9107', 'HOBARD', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107124', '9107', 'BUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107130', '9107', 'SEGET', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107131', '9107', 'SEGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107132', '9107', 'SALAWATI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107133', '9107', 'SALAWATI TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107170', '9107', 'AIMAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107171', '9107', 'MARIAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107172', '9107', 'SORONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107180', '9107', 'SAYOSA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107181', '9107', 'MAUDUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107182', '9107', 'WEMAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107183', '9107', 'SAYOSA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9107184', '9107', 'SUNOOK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108011', '9108', 'MISOOL SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108012', '9108', 'MISOOL BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108020', '9108', 'MISOOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108021', '9108', 'KOFIAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108022', '9108', 'MISOOL TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108023', '9108', 'KEPULAUAN SEMBILAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108031', '9108', 'SALAWATI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108033', '9108', 'SALAWATI TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108034', '9108', 'SALAWATI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108035', '9108', 'BATANTA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108036', '9108', 'BATANTA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108040', '9108', 'WAIGEO SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108041', '9108', 'TELUK MAYALIBIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108042', '9108', 'MEOS MANSAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108043', '9108', 'KOTA WAISAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108044', '9108', 'TIPLOL MAYALIBIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108050', '9108', 'WAIGEO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108051', '9108', 'WAIGEO BARAT KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108060', '9108', 'WAIGEO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108061', '9108', 'WARWARBOMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108062', '9108', 'SUPNIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108070', '9108', 'KEPULAUAN AYAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108071', '9108', 'AYAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9108080', '9108', 'WAIGEO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109010', '9109', 'FEF', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109011', '9109', 'SYUJAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109012', '9109', 'ASES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109013', '9109', 'TINGGOUW', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109020', '9109', 'MIYAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109021', '9109', 'MIYAH SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109022', '9109', 'IRERES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109023', '9109', 'WILHEM ROUMBOUTS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109030', '9109', 'ABUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109040', '9109', 'KWOOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109041', '9109', 'TOBOUW', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109042', '9109', 'KWESEFO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109050', '9109', 'SAUSAPOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109051', '9109', 'BIKAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109060', '9109', 'YEMBUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109061', '9109', 'BAMUSBAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109070', '9109', 'KEBAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109071', '9109', 'KEBAR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109072', '9109', 'KEBAR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109073', '9109', 'MANEKAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109080', '9109', 'SENOPI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109081', '9109', 'MAWABUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109090', '9109', 'AMBERBAKEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109091', '9109', 'MPUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109092', '9109', 'AMBERBAKEN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109100', '9109', 'MUBARNI / ARFU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109110', '9109', 'MORAID', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9109111', '9109', 'SELEMKAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110010', '9110', 'AITINYO BARAT/ATHABU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110011', '9110', 'AYAMARU SELATAN JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110020', '9110', 'AITINYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110021', '9110', 'AITINYO TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110030', '9110', 'AIFAT SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110031', '9110', 'AIFAT TIMUR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110040', '9110', 'AIFAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110050', '9110', 'AITINYO UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110051', '9110', 'AITINYO RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110060', '9110', 'AYAMARU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110061', '9110', 'AYAMARU TIMUR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110070', '9110', 'AYAMARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110071', '9110', 'AYAMARU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110072', '9110', 'AYAMARU JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110073', '9110', 'AYAMARU TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110074', '9110', 'AYAMARU BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110080', '9110', 'AYAMARU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110081', '9110', 'AYAMARU UTARA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110090', '9110', 'MARE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110091', '9110', 'MARE SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110100', '9110', 'AIFAT UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110110', '9110', 'AIFAT TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110111', '9110', 'AIFAT TIMUR TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9110112', '9110', 'AIFAT TIMUR JAUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9111010', '9111', 'TAHOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9111020', '9111', 'DATARAN ISIM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9111030', '9111', 'NENEI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9111040', '9111', 'MOMI WAREN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9111050', '9111', 'RANSIKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9111060', '9111', 'ORANSBARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9112010', '9112', 'DIDOHU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9112020', '9112', 'SURUREY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9112030', '9112', 'ANGGI GIDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9112040', '9112', 'MEMBEY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9112050', '9112', 'ANGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9112060', '9112', 'TAIGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9112070', '9112', 'HINGK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9112080', '9112', 'MENYAMBOUW', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9112090', '9112', 'CATUBOUW', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9112100', '9112', 'TESTEGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9171010', '9171', 'SORONG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9171011', '9171', 'SORONG KEPULAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9171012', '9171', 'MALADUM MES', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9171020', '9171', 'SORONG TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9171021', '9171', 'SORONG UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9171022', '9171', 'SORONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9171023', '9171', 'SORONG MANOI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9171024', '9171', 'KLAURUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9171025', '9171', 'MALAIMSIMSA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9171026', '9171', 'SORONG KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401010', '9401', 'KIMAAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401011', '9401', 'WAAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401012', '9401', 'TABONJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401013', '9401', 'ILWAYAB', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401020', '9401', 'OKABA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401021', '9401', 'TUBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401022', '9401', 'NGGUTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401023', '9401', 'KAPTEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401030', '9401', 'KURIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401031', '9401', 'MALIND', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401032', '9401', 'ANIMHA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401040', '9401', 'MERAUKE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401041', '9401', 'SEMANGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401042', '9401', 'TANAH MIRING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401043', '9401', 'JAGEBOB', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401044', '9401', 'SOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401045', '9401', 'NAUKENJERAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401050', '9401', 'MUTING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401051', '9401', 'ELIGOBEL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9401052', '9401', 'ULILIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402110', '9402', 'WAMENA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402111', '9402', 'ASOLOKOBAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402112', '9402', 'WALELAGAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402113', '9402', 'TRIKORA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402114', '9402', 'NAPUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402115', '9402', 'WALAIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402116', '9402', 'WOUMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402117', '9402', 'WALESI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402118', '9402', 'ASOTIPO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402119', '9402', 'MAIMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402120', '9402', 'HUBIKOSI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402121', '9402', 'PELEBAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402122', '9402', 'IBELE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402123', '9402', 'TAILAREK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402124', '9402', 'HUBIKIAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402180', '9402', 'ASOLOGAIMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402181', '9402', 'MUSATFAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402182', '9402', 'SILO KARNO DOGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402183', '9402', 'PYRAMID', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402184', '9402', 'MULIAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402185', '9402', 'WAME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402190', '9402', 'KURULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402191', '9402', 'USILIMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402192', '9402', 'WITA WAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402193', '9402', 'LIBAREK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402194', '9402', 'WADANGKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402195', '9402', 'PISUGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402220', '9402', 'BOLAKME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402221', '9402', 'WOLLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402222', '9402', 'YALENGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402223', '9402', 'TAGIME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402224', '9402', 'MOLAGALOME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402225', '9402', 'TAGINERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402226', '9402', 'BUGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402227', '9402', 'BPIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402228', '9402', 'KORAGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402611', '9402', 'ITLAY HASIGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402612', '9402', 'SIEPKOSI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9402614', '9402', 'POPUGOBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403080', '9403', 'KAUREH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403081', '9403', 'AIRU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403082', '9403', 'YAPSI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403140', '9403', 'KEMTUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403150', '9403', 'KEMTUK GRESI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403151', '9403', 'GRESI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403160', '9403', 'NIMBORAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403161', '9403', 'NIMBORAN TIMUR / NAMBLONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403170', '9403', 'NIMBOKRANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403180', '9403', 'UNURUM GUAY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403200', '9403', 'DEMTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403201', '9403', 'YOKARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403210', '9403', 'DEPAPRE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403211', '9403', 'RAVENIRARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403220', '9403', 'SENTANI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403221', '9403', 'WAIBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403230', '9403', 'SENTANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403231', '9403', 'EBUNGFAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9403240', '9403', 'SENTANI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404050', '9404', 'UWAPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404051', '9404', 'MENOU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404052', '9404', 'DIPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404060', '9404', 'YAUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404061', '9404', 'TELUK UMAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404070', '9404', 'WANGGAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404071', '9404', 'NABIRE BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404080', '9404', 'NABIRE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404081', '9404', 'TELUK KIMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404090', '9404', 'NAPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404091', '9404', 'MAKIMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404092', '9404', 'WAPOGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404093', '9404', 'KEPULAUAN MOORA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404100', '9404', 'SIRIWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9404110', '9404', 'YARO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408040', '9408', 'YAPEN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408041', '9408', 'PANTURA YAPEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408042', '9408', 'TELUK AMPIMOI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408043', '9408', 'RAIMBAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408044', '9408', 'PULAU KURUDU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408050', '9408', 'ANGKAISERA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408051', '9408', 'KEP. AMBAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408052', '9408', 'YAWAKUKAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408060', '9408', 'YAPEN SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408061', '9408', 'KOSIWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408062', '9408', 'ANATAUREI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408070', '9408', 'YAPEN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408071', '9408', 'WONAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408072', '9408', 'PULAU YERUI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408080', '9408', 'POOM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9408081', '9408', 'WINDESI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409010', '9409', 'NUMFOR BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409011', '9409', 'ORKERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409020', '9409', 'NUMFOR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409021', '9409', 'BRUYADORI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409022', '9409', 'POIRU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409030', '9409', 'PADAIDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409031', '9409', 'AIMANDO PADAIDO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409040', '9409', 'BIAK TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409041', '9409', 'ORIDEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409050', '9409', 'BIAK KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409060', '9409', 'SAMOFA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409070', '9409', 'YENDIDORI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409080', '9409', 'BIAK UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409081', '9409', 'ANDEY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409090', '9409', 'WARSA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409091', '9409', 'YAWOSI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409092', '9409', 'BONDIFUAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409100', '9409', 'BIAK BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9409101', '9409', 'SWANDIWE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410030', '9410', 'PANIAI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410031', '9410', 'YATAMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410032', '9410', 'KEBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410033', '9410', 'PUGO DAGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410034', '9410', 'WEGE MUKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410035', '9410', 'WEGEE BINO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410036', '9410', 'YAGAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410040', '9410', 'BIBIDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410041', '9410', 'DUMADAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410070', '9410', 'ARADIDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410071', '9410', 'EKADIDE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410072', '9410', 'AWEIDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410073', '9410', 'FAJAR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410074', '9410', 'TOPIYAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410080', '9410', 'PANIAI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410081', '9410', 'SIRIWO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410082', '9410', 'MUYE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410083', '9410', 'NAKAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410084', '9410', 'TELUK DEYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9410090', '9410', 'BOGOBAIDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411040', '9411', 'FAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411041', '9411', 'DAGAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411042', '9411', 'KIYAGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411050', '9411', 'MULIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411053', '9411', 'YAMBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411054', '9411', 'ILAMBURAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411055', '9411', 'MUARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411056', '9411', 'PAGALEME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411057', '9411', 'GURAGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411058', '9411', 'IRIMULI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411060', '9411', 'ILU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411061', '9411', 'TORERE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411063', '9411', 'YAMONERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411064', '9411', 'WAEGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411065', '9411', 'NUME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411066', '9411', 'NIOGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411067', '9411', 'GUBUME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411068', '9411', 'TAGANOMBAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411070', '9411', 'TINGGINAMBUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411071', '9411', 'KALOME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411072', '9411', 'WANWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411080', '9411', 'MEWOLUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411081', '9411', 'LUMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411082', '9411', 'MOLANIKIME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411090', '9411', 'YAMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9411091', '9411', 'DOKOME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412010', '9412', 'MIMIKA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412011', '9412', 'MIMIKA BARAT JAUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412012', '9412', 'MIMIKA BARAT TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412013', '9412', 'AMAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412020', '9412', 'MIMIKA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412021', '9412', 'MIMIKA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412022', '9412', 'MIMIKA TIMUR JAUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412030', '9412', 'MIMIKA BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412031', '9412', 'KUALA KENCANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412032', '9412', 'TEMBAGAPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412033', '9412', 'WANIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412034', '9412', 'IWAKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412035', '9412', 'KWAMKI NARAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412040', '9412', 'AGIMUGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412041', '9412', 'JILA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412042', '9412', 'JITA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412043', '9412', 'ALAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9412044', '9412', 'HOYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413010', '9413', 'JAIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413011', '9413', 'SUBUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413013', '9413', 'KIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413020', '9413', 'MINDIPTANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413021', '9413', 'INIYANDIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413022', '9413', 'KOMBUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413023', '9413', 'SESNUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413030', '9413', 'MANDOBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413031', '9413', 'FOFI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413032', '9413', 'ARIMOP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413040', '9413', 'KOUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413041', '9413', 'BOMAKIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413042', '9413', 'FIRIWAGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413043', '9413', 'MANGGELUM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413044', '9413', 'YANIRUMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413045', '9413', 'KAWAGIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413046', '9413', 'KOMBAY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413050', '9413', 'WAROPKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413051', '9413', 'AMBATKWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9413052', '9413', 'NINATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414010', '9414', 'NAMBIOMAN BAPAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414011', '9414', 'MINYAMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414020', '9414', 'EDERA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414021', '9414', 'VENAHA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414022', '9414', 'SYAHCAME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414023', '9414', 'BAMGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414024', '9414', 'YAKOMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414030', '9414', 'OBAA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414031', '9414', 'PASSUE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414040', '9414', 'HAJU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414050', '9414', 'ASSUE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414060', '9414', 'CITAKMITAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414061', '9414', 'KAIBAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414062', '9414', 'PASSUE BAWAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9414063', '9414', 'TI-ZAIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415010', '9415', 'PANTAI KASUARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415011', '9415', 'KOPAY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415012', '9415', 'DER KOUMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415013', '9415', 'SAFAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415014', '9415', 'AWYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415020', '9415', 'FAYIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415021', '9415', 'ASWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415030', '9415', 'ATSY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415031', '9415', 'SIRETS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415032', '9415', 'AYIP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415033', '9415', 'BECTBAMU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415040', '9415', 'SUATOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415041', '9415', 'KOLF BRAZA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415042', '9415', 'JOUTU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415043', '9415', 'KOROWAY BULUANOP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415050', '9415', 'AKAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415051', '9415', 'JETSY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415060', '9415', 'AGATS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415070', '9415', 'SAWA ERMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415071', '9415', 'SURU-SURU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415072', '9415', 'UNIR SIRAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415073', '9415', 'JOERAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9415074', '9415', 'PULAU TIGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416010', '9416', 'KURIMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416011', '9416', 'MUSAIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416013', '9416', 'DEKAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416014', '9416', 'OBIO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416015', '9416', 'PASEMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416016', '9416', 'AMUMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416017', '9416', 'SURU-SURU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416018', '9416', 'WUSAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416019', '9416', 'SILIMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416020', '9416', 'NINIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416021', '9416', 'HOLUWON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416022', '9416', 'LOLAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416023', '9416', 'LANGDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416024', '9416', 'BOMELA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416025', '9416', 'SUNTAMON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416026', '9416', 'SOBAHAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416027', '9416', 'KORUPUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416028', '9416', 'SELA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416029', '9416', 'KWELAMDUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416030', '9416', 'ANGGRUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416031', '9416', 'PANGGEMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416032', '9416', 'WALMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416033', '9416', 'KOSAREK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416034', '9416', 'UBAHAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416035', '9416', 'NALCA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416036', '9416', 'PULDAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416037', '9416', 'NIPSAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416041', '9416', 'SAMENAGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416042', '9416', 'TANGMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416043', '9416', 'SOBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416044', '9416', 'MUGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416045', '9416', 'YOGOSEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416046', '9416', 'KAYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416047', '9416', 'SUMO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416048', '9416', 'HOGIO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416049', '9416', 'UKHA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416051', '9416', 'WERIMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416052', '9416', 'SOLOIKMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416053', '9416', 'SERADALA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416054', '9416', 'KABIANGGAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416055', '9416', 'KWIKMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416056', '9416', 'HILIPUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416057', '9416', 'YAHULIAMBUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416058', '9416', 'HEREAPINI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416059', '9416', 'UBALIHI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416061', '9416', 'TALAMBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416062', '9416', 'PRONGGOLI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416063', '9416', 'ENDOMEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416065', '9416', 'KONA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416066', '9416', 'DURAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9416067', '9416', 'DIRWEMNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417010', '9417', 'IWUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417011', '9417', 'KAWOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417012', '9417', 'TARUP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417013', '9417', 'AWINBON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417020', '9417', 'OKSIBIL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417021', '9417', 'PEPERA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417022', '9417', 'ALEMSOM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417023', '9417', 'SERAMBAKON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417024', '9417', 'KOLOMDOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417025', '9417', 'OKSOP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417026', '9417', 'OK BAPE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417027', '9417', 'OK AON', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417030', '9417', 'BORME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417031', '9417', 'BIME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417032', '9417', 'EPUMEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417033', '9417', 'WEIME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417034', '9417', 'PAMEK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417035', '9417', 'NONGME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417036', '9417', 'BATANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417040', '9417', 'OKBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417041', '9417', 'ABOY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417042', '9417', 'OKBAB', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417043', '9417', 'TEIRAPLU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417044', '9417', 'YEFTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417050', '9417', 'KIWIROK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417051', '9417', 'KIWIROK TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417052', '9417', 'OKSEBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417053', '9417', 'OKHIKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417054', '9417', 'OKLIP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417055', '9417', 'OKSAMOL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417056', '9417', 'OKBEMTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417060', '9417', 'BATOM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417061', '9417', 'MURKIM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9417062', '9417', 'MOFINOP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418010', '9418', 'KANGGIME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418011', '9418', 'WONIKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418012', '9418', 'NABUNAGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418013', '9418', 'GILUBANDU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418014', '9418', 'WAKUO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418015', '9418', 'AWEKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418016', '9418', 'BOGONUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418020', '9418', 'KARUBAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418021', '9418', 'GOYAGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418022', '9418', 'WUNIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418023', '9418', 'KONDAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418024', '9418', 'NELAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418025', '9418', 'KUARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418026', '9418', 'LIANOGOMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418027', '9418', 'BIUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418030', '9418', 'BOKONDINI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418031', '9418', 'BOKONERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418032', '9418', 'BEWANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418040', '9418', 'KEMBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418041', '9418', 'WINA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418042', '9418', 'UMAGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418043', '9418', 'PANAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418044', '9418', 'POGANERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418045', '9418', 'KAMBONERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418046', '9418', 'AIR GARAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418047', '9418', 'DOW', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418048', '9418', 'WARI / TAIYEVE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418049', '9418', 'EGIAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418051', '9418', 'NUNGGAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418060', '9418', 'KUBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418061', '9418', 'ANAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418062', '9418', 'WUGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418070', '9418', 'GEYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418071', '9418', 'WENAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418080', '9418', 'NUMBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418081', '9418', 'KAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418090', '9418', 'DUNDU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418100', '9418', 'GUNDAGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418110', '9418', 'TIMORI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418121', '9418', 'YUNERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418125', '9418', 'TAGIME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418126', '9418', 'DANIME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418127', '9418', 'YUKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418541', '9418', 'TELENGGEME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418542', '9418', 'GIKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9418543', '9418', 'TAGINERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419021', '9419', 'PANTAI TIMUR BAGIAN BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419022', '9419', 'PANTAI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419024', '9419', 'SUNGAI BIRI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419025', '9419', 'VEEN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419031', '9419', 'BONGGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419032', '9419', 'BONGGO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419033', '9419', 'BONGGO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419040', '9419', 'TOR ATAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419041', '9419', 'ISMARI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419050', '9419', 'SARMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419051', '9419', 'SARMI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419052', '9419', 'SARMI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419053', '9419', 'SOBEY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419054', '9419', 'MUARA TOR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419055', '9419', 'VERKAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419060', '9419', 'PANTAI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419061', '9419', 'APAWER HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419062', '9419', 'APAWER HILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9419063', '9419', 'APAWER TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9420010', '9420', 'WEB', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9420011', '9420', 'TOWE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9420012', '9420', 'YAFFI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9420020', '9420', 'SENGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9420021', '9420', 'KAISENAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9420030', '9420', 'WARIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9420040', '9420', 'ARSO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9420041', '9420', 'ARSO TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9420042', '9420', 'ARSO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9420043', '9420', 'MANNEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9420050', '9420', 'SKANTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9426010', '9426', 'WAROPEN BAWAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9426011', '9426', 'INGGERUS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9426012', '9426', 'UREI FAISEI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9426013', '9426', 'OUDATE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9426014', '9426', 'WAPOGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9426020', '9426', 'MASIREI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9426021', '9426', 'RISEI SAYATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9426022', '9426', 'DEMBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9426023', '9426', 'SOYOI MAMBAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9426024', '9426', 'WONTI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9426030', '9426', 'WALANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9426040', '9426', 'KIRIHI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9427010', '9427', 'SUPIORI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9427011', '9427', 'KEPULAUAN ARURI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9427020', '9427', 'SUPIORI UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9427021', '9427', 'SUPIORI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9427030', '9427', 'SUPIORI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9428030', '9428', 'WAROPEN ATAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9428031', '9428', 'BENUKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9428032', '9428', 'SAWAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9428040', '9428', 'MAMBERAMO ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9428050', '9428', 'MAMBERAMO TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9428051', '9428', 'IWASO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9428060', '9428', 'MAMBERAMO TENGAH TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9428070', '9428', 'ROFAER', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9428080', '9428', 'MAMBERAMO ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429010', '9429', 'WOSAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429011', '9429', 'MOBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429012', '9429', 'PIJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429013', '9429', 'KORA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429020', '9429', 'KENYAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429021', '9429', 'MBUWA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429022', '9429', 'KREPKURI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429023', '9429', 'EMBETPEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429030', '9429', 'GESELMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429031', '9429', 'KILMID', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429032', '9429', 'YENGGELO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429033', '9429', 'ALAMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429034', '9429', 'MEBOROK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429040', '9429', 'MAPENDUMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429041', '9429', 'KROPTAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429042', '9429', 'PARO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429043', '9429', 'KEGAYEM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429050', '9429', 'MUGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429051', '9429', 'YAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429052', '9429', 'MAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429060', '9429', 'YIGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429061', '9429', 'DAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429062', '9429', 'NIRKURI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429063', '9429', 'INIKGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429070', '9429', 'MBUWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429071', '9429', 'INIYE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429072', '9429', 'WUTPAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429073', '9429', 'NENGGEANGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429074', '9429', 'MBULMU YALMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429080', '9429', 'GEAREK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429081', '9429', 'PASIR PUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9429082', '9429', 'WUSI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430010', '9430', 'MAKKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430011', '9430', 'GUPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430012', '9430', 'KOLAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430013', '9430', 'GELOK BEAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430014', '9430', 'AWINA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430020', '9430', 'PIRIME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430021', '9430', 'BUGUK GONA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430022', '9430', 'MILIMBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430023', '9430', 'GOLLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430024', '9430', 'WIRINGGABUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430030', '9430', 'TIOM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430031', '9430', 'NOGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430032', '9430', 'MOKONI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430033', '9430', 'NINAME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430034', '9430', 'YIGINUA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430035', '9430', 'TIOM OLLO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430036', '9430', 'YUGUNWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430037', '9430', 'LANNYNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430040', '9430', 'BALINGGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430041', '9430', 'BALINGGA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430042', '9430', 'BRUWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430043', '9430', 'AYUMNATI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430050', '9430', 'KUYAWAGE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430051', '9430', 'WANO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430060', '9430', 'MALAGAINERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430061', '9430', 'MELAGAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430070', '9430', 'TIOMNERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430071', '9430', 'WEREKA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430080', '9430', 'DIMBA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430081', '9430', 'KELULOME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430082', '9430', 'NIKOGWE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430090', '9430', 'GAMELIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430091', '9430', 'KARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430092', '9430', 'YILUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430093', '9430', 'GUNA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430100', '9430', 'POGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9430101', '9430', 'MUARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9431010', '9431', 'KOBAKMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9431020', '9431', 'ILUGWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9431030', '9431', 'KELILA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9431040', '9431', 'ERAGAYAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9431050', '9431', 'MEGAMBILIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9432010', '9432', 'WELAREK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9432020', '9432', 'APALAPSILI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9432030', '9432', 'ABENAHO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9432040', '9432', 'ELELIM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9432050', '9432', 'BENAWA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433010', '9433', 'AGADUGUME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433011', '9433', 'LAMBEWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433012', '9433', 'ONERI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433020', '9433', 'GOME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433021', '9433', 'AMUNGKALPIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433022', '9433', 'GOME UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433023', '9433', 'ERELMAKAWIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433030', '9433', 'ILAGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433031', '9433', 'ILAGA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433032', '9433', 'MABUGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433033', '9433', 'OMUKIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433040', '9433', 'SINAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433041', '9433', 'SINAK BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433042', '9433', 'MAGEÁBUME', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433043', '9433', 'YUGUMUAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433050', '9433', 'POGOMA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433051', '9433', 'KEMBRU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433052', '9433', 'BINA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433060', '9433', 'WANGBE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433061', '9433', 'OGAMANIM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433070', '9433', 'BEOGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433071', '9433', 'BEOGA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433072', '9433', 'BEOGA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433080', '9433', 'DOUFO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9433081', '9433', 'DERVOS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9434010', '9434', 'SUKIKAI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9434020', '9434', 'PIYAIYE', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9434030', '9434', 'MAPIA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9434040', '9434', 'MAPIA TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9434050', '9434', 'MAPIA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9434060', '9434', 'DOGIYAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9434070', '9434', 'KAMU SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9434080', '9434', 'KAMU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9434090', '9434', 'KAMU TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9434100', '9434', 'KAMU UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9435010', '9435', 'HOMEYO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9435020', '9435', 'SUGAPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9435030', '9435', 'HITADIPA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9435040', '9435', 'AGISIGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9435050', '9435', 'BIANDOGA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9435060', '9435', 'WANDAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9436010', '9436', 'KAPIRAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9436020', '9436', 'TIGI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9436030', '9436', 'TIGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9436040', '9436', 'TIGI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9436050', '9436', 'BOWOBADO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9471010', '9471', 'MUARA TAMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9471020', '9471', 'ABEPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9471021', '9471', 'HERAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9471030', '9471', 'JAYAPURA SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('9471040', '9471', 'JAYAPURA UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407061', '1407', 'KEPENUHAN HULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407070', '1407', 'KUNTO DARUSSALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407071', '1407', 'PAGARAN TAPAH DARUSSALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1407072', '1407', 'BONAI DARUSSALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1408010', '1408', 'MANDAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1408011', '1408', 'PINGGIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1408012', '1408', 'BATHIN SOLAPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1408013', '1408', 'TALANG MUANDAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1408020', '1408', 'BUKIT BATU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1408021', '1408', 'SIAK KECIL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1408022', '1408', 'BANDAR LAKSAMANA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1408030', '1408', 'RUPAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1408031', '1408', 'RUPAT UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1408040', '1408', 'BENGKALIS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1408050', '1408', 'BANTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409010', '1409', 'TANAH PUTIH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409011', '1409', 'PUJUD', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409012', '1409', 'TANAH PUTIH TANJUNG MELAWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409013', '1409', 'RANTAU KOPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409014', '1409', 'TANJUNG MEDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409020', '1409', 'BAGAN SINEMBAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409021', '1409', 'SIMPANG KANAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409022', '1409', 'BAGAN SINEMBAH RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409023', '1409', 'BALAI JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409030', '1409', 'KUBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409031', '1409', 'PASIR LIMAU KAPAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409032', '1409', 'KUBU BABUSSALAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409040', '1409', 'BANGKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409041', '1409', 'SINABOI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409042', '1409', 'BATU HAMPAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409043', '1409', 'PEKAITAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409050', '1409', 'RIMBA MELINTANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1409051', '1409', 'BANGKO PUSAKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1410010', '1410', 'TEBING TINGGI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1410020', '1410', 'TEBING TINGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1410021', '1410', 'TEBING TINGGI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1410030', '1410', 'RANGSANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1410031', '1410', 'RANGSANG PESISIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1410040', '1410', 'RANGSANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1410050', '1410', 'MERBAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1410051', '1410', 'PULAU MERBAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1410052', '1410', 'TASIK PUTRI PUYU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1471010', '1471', 'TAMPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1471011', '1471', 'PAYUNG SEKAKI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1471020', '1471', 'BUKIT RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1471021', '1471', 'MARPOYAN DAMAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1471022', '1471', 'TENAYAN RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1471030', '1471', 'LIMAPULUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1471040', '1471', 'SAIL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1471050', '1471', 'PEKANBARU KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1471060', '1471', 'SUKAJADI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1471070', '1471', 'SENAPELAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1471080', '1471', 'RUMBAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1471081', '1471', 'RUMBAI PESISIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1473010', '1473', 'BUKIT KAPUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1473011', '1473', 'MEDANG KAMPAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1473012', '1473', 'SUNGAI SEMBILAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1473020', '1473', 'DUMAI BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1473021', '1473', 'DUMAI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1473030', '1473', 'DUMAI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1473031', '1473', 'DUMAI KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501010', '1501', 'GUNUNG RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501011', '1501', 'BUKIT KERMAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501020', '1501', 'BATANG MERANGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501030', '1501', 'KELILING DANAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501040', '1501', 'DANAU KERINCI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501050', '1501', 'SITINJAU LAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501070', '1501', 'AIR HANGAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501071', '1501', 'AIR HANGAT TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501072', '1501', 'DEPATI VII', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501073', '1501', 'AIR HANGAT BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501080', '1501', 'GUNUNG KERINCI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501081', '1501', 'SIULAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501082', '1501', 'SIULAK MUKAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501090', '1501', 'KAYU ARO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501091', '1501', 'GUNUNG TUJUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1501092', '1501', 'KAYU ARO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502010', '1502', 'JANGKAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502011', '1502', 'SUNGAI TENANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502020', '1502', 'MUARA SIAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502021', '1502', 'LEMBAH MASURAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502022', '1502', 'TIANG PUMPUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502030', '1502', 'PAMENANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502031', '1502', 'PAMENANG BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502032', '1502', 'RENAH PAMENANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502033', '1502', 'PAMENANG SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502040', '1502', 'BANGKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502041', '1502', 'BANGKO BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502042', '1502', 'NALO TANTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502043', '1502', 'BATANG MASUMAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502050', '1502', 'SUNGAI MANAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502051', '1502', 'RENAH PEMBARAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502052', '1502', 'PANGKALAN JAMBU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502060', '1502', 'TABIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502061', '1502', 'TABIR ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502062', '1502', 'TABIR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502063', '1502', 'TABIR ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502064', '1502', 'TABIR TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502065', '1502', 'TABIR LINTAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502066', '1502', 'MARGO TABIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1502067', '1502', 'TABIR BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1503010', '1503', 'BATANG ASAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1503020', '1503', 'LIMUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1503021', '1503', 'CERMIN NAN GEDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1503030', '1503', 'PELAWAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1503031', '1503', 'SINGKUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1503040', '1503', 'SAROLANGUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1503041', '1503', 'BATHIN VIII', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1503050', '1503', 'PAUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1503051', '1503', 'AIR HITAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1503060', '1503', 'MANDIANGIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1504010', '1504', 'MERSAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1504011', '1504', 'MARO SEBO ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1504020', '1504', 'BATIN XXIV', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1504030', '1504', 'MUARA TEMBESI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1504040', '1504', 'MUARA BULIAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1504041', '1504', 'BAJUBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1504042', '1504', 'MARO SEBO ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1504050', '1504', 'PEMAYUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1505010', '1505', 'MESTONG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1505011', '1505', 'SUNGAI BAHAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1505012', '1505', 'BAHAR SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1505013', '1505', 'BAHAR UTARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1505020', '1505', 'KUMPEH ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1505021', '1505', 'SUNGAI GELAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1505030', '1505', 'KUMPEH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1505040', '1505', 'MARO SEBO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1505041', '1505', 'TAMAN RAJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1505050', '1505', 'JAMBI LUAR KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1505060', '1505', 'SEKERNAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1506010', '1506', 'MENDAHARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1506011', '1506', 'MENDAHARA ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1506012', '1506', 'GERAGAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1506020', '1506', 'DENDANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1506031', '1506', 'MUARA SABAK BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1506032', '1506', 'MUARA SABAK TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1506033', '1506', 'KUALA JAMBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1506040', '1506', 'RANTAU RASAU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1506041', '1506', 'BERBAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1506050', '1506', 'NIPAH PANJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1506060', '1506', 'SADU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1507010', '1507', 'TUNGKAL ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1507011', '1507', 'MERLUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1507012', '1507', 'BATANG ASAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1507013', '1507', 'TEBING TINGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1507014', '1507', 'RENAH MENDALUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1507015', '1507', 'MUARA PAPALIK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1507020', '1507', 'PENGABUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1507021', '1507', 'SENYERANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1507030', '1507', 'TUNGKAL ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1507031', '1507', 'BRAM ITAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1507032', '1507', 'SEBERANG KOTA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1507040', '1507', 'BETARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1507041', '1507', 'KUALA BETARA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1508010', '1508', 'TEBO ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1508011', '1508', 'MUARA TABIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1508020', '1508', 'TEBO TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1508021', '1508', 'SUMAY', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1508022', '1508', 'TENGAH ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1508030', '1508', 'RIMBO BUJANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1508031', '1508', 'RIMBO ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1508032', '1508', 'RIMBO ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1508040', '1508', 'TEBO ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1508041', '1508', 'VII KOTO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1508042', '1508', 'SERAI SERUMPUN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1508043', '1508', 'VII KOTO ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509010', '1509', 'PELEPAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509011', '1509', 'PELEPAT ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509021', '1509', 'BATHIN II BABEKO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509022', '1509', 'RIMBO TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509023', '1509', 'BUNGO DANI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509024', '1509', 'PASAR MUARA BUNGO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509025', '1509', 'BATHIN III', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509030', '1509', 'RANTAU PANDAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509031', '1509', 'MUKO-MUKO BATHIN VII', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509032', '1509', 'BATHIN III ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509040', '1509', 'TANAH SEPENGGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509041', '1509', 'TANAH SEPENGGAL LINTAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509050', '1509', 'TANAH TUMBUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509051', '1509', 'LIMBUR LUBUK MENGKUANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509052', '1509', 'BATHIN II PELAYANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509060', '1509', 'JUJUHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1509061', '1509', 'JUJUHAN ILIR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1571010', '1571', 'KOTA BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1571011', '1571', 'ALAM BARAJO', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1571020', '1571', 'JAMBI SELATAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1571021', '1571', 'PAAL MERAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1571030', '1571', 'JELUTUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1571040', '1571', 'PASAR JAMBI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1571050', '1571', 'TELANAIPURA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1571051', '1571', 'DANAU SIPIN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1571060', '1571', 'DANAU TELUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1571070', '1571', 'PELAYANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1571080', '1571', 'JAMBI TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1572010', '1572', 'TANAH KAMPUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1572020', '1572', 'KUMUN DEBAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1572030', '1572', 'SUNGAI PENUH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1572031', '1572', 'PONDOK TINGGI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1572032', '1572', 'SUNGAI BUNGKAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1572040', '1572', 'HAMPARAN RAWANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1572050', '1572', 'PESISIR BUKIT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1572051', '1572', 'KOTO BARU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1601052', '1601', 'LENGKITI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1601070', '1601', 'SOSOH BUAY RAYAP', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1601080', '1601', 'PENGANDONAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1601081', '1601', 'SEMIDANG AJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1601082', '1601', 'ULU OGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1601083', '1601', 'MUARA JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1601090', '1601', 'PENINJAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1601091', '1601', 'LUBUK BATANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1601092', '1601', 'SINAR PENINJAUAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1601093', '1601', 'KEDATON PENINJAUAN RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1601130', '1601', 'BATU RAJA TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1601131', '1601', 'LUBUK RAJA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1601140', '1601', 'BATU RAJA BARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602010', '1602', 'LEMPUING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602011', '1602', 'LEMPUING JAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602020', '1602', 'MESUJI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602021', '1602', 'SUNGAI MENANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602022', '1602', 'MESUJI MAKMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602023', '1602', 'MESUJI RAYA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602030', '1602', 'TULUNG SELAPAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602031', '1602', 'CENGAL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602040', '1602', 'PEDAMARAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602041', '1602', 'PEDAMARAN TIMUR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602050', '1602', 'TANJUNG LUBUK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602051', '1602', 'TELUK GELAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602060', '1602', 'KOTA KAYU AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602120', '1602', 'SIRAH PULAU PADANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602121', '1602', 'JEJAWI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602130', '1602', 'PAMPANGAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602131', '1602', 'PANGKALAN LAPAM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1602140', '1602', 'AIR SUGIHAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603010', '1603', 'SEMENDO DARAT LAUT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603011', '1603', 'SEMENDO DARAT ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603012', '1603', 'SEMENDO DARAT TENGAH', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603020', '1603', 'TANJUNG AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603031', '1603', 'RAMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603032', '1603', 'LUBAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603033', '1603', 'LUBAI ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603040', '1603', 'LAWANG KIDUL', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603050', '1603', 'MUARA ENIM', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603051', '1603', 'UJAN MAS', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603060', '1603', 'GUNUNG MEGANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603061', '1603', 'BENAKAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603062', '1603', 'BELIMBING', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603070', '1603', 'RAMBANG DANGKU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603090', '1603', 'GELUMBANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603091', '1603', 'LEMBAK', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603092', '1603', 'SUNGAI ROTAN', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603093', '1603', 'MUARA BELIDA', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603094', '1603', 'KELEKAR', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1603095', '1603', 'BELIDA DARAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604011', '1604', 'TANJUNG SAKTI PUMI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604012', '1604', 'TANJUNG SAKTI PUMU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604040', '1604', 'KOTA AGUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604041', '1604', 'MULAK ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604042', '1604', 'TANJUNG TEBAT', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604043', '1604', 'MULAK SEBINGKAI', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604050', '1604', 'PULAU PINANG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604051', '1604', 'PAGAR GUNUNG', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604052', '1604', 'GUMAY ULU', NULL, NULL, NULL);
INSERT INTO `kecamatan` VALUES ('1604060', '1604', 'JARAI', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for klasifikasi
-- ----------------------------
DROP TABLE IF EXISTS `klasifikasi`;
CREATE TABLE `klasifikasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for log_pustakawan
-- ----------------------------
DROP TABLE IF EXISTS `log_pustakawan`;
CREATE TABLE `log_pustakawan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dokumen_id` int(11) NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `aksi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_pustakawan
-- ----------------------------
INSERT INTO `log_pustakawan` VALUES (1, 'Peraturan', 1, 'User admin melakukan tambah data peraturan pada 05 Januari 2021 Pukul 10:52:45', 'Tambah Peraturan', '2021-01-05 10:52:45', '2021-01-05 10:52:45', '1', '1');
INSERT INTO `log_pustakawan` VALUES (2, 'Peraturan', 1, 'User admin melakukan ubah data peraturan pada 05 Januari 2021 Pukul 10:53:04', 'Ubah Peraturan', '2021-01-05 10:53:04', '2021-01-05 10:53:04', '1', '1');
INSERT INTO `log_pustakawan` VALUES (3, 'Monografi', 2, 'User admin melakukan tambah data monografi pada 06 Januari 2021 Pukul 11:41:44', 'Tambah Monografi', '2021-01-06 11:41:44', '2021-01-06 11:41:44', '1', '1');
INSERT INTO `log_pustakawan` VALUES (4, 'Peraturan', 2, 'User admin melakukan hapus Data Monografi pada 06 Januari 2021 Pukul 11:41:55', 'Hapus Peraturan', '2021-01-06 11:41:55', '2021-01-06 11:41:55', '1', '1');
INSERT INTO `log_pustakawan` VALUES (5, 'Peraturan', 1, 'User admin melakukan hapus data peraturan pada 06 Januari 2021 Pukul 11:42:01', 'Hapus Peraturan', '2021-01-06 11:42:01', '2021-01-06 11:42:01', '1', '1');

-- ----------------------------
-- Table structure for log_user
-- ----------------------------
DROP TABLE IF EXISTS `log_user`;
CREATE TABLE `log_user`  (
  `id_log_user` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL COMMENT '\r\n',
  `waktu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_user` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_log_user`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lokasi
-- ----------------------------
DROP TABLE IF EXISTS `lokasi`;
CREATE TABLE `lokasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_time` datetime(0) NULL DEFAULT NULL,
  `_updated_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lokasi
-- ----------------------------
INSERT INTO `lokasi` VALUES (1, 'SL', 'My Library', '1', '1', '2019-04-18 17:14:30', '2019-04-18 17:14:30');
INSERT INTO `lokasi` VALUES (2, 'PB', 'Perpustakaan BPHN', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for makna_logo
-- ----------------------------
DROP TABLE IF EXISTS `makna_logo`;
CREATE TABLE `makna_logo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of makna_logo
-- ----------------------------
INSERT INTO `makna_logo` VALUES (12, 'logo5db7ad2a33544.png', '<ul>\r\n	<li>6 garis menggambarkan aspek dari JDIH.\r\n	<ul>\r\n		<li>Garis paling besar adalah organisasi.</li>\r\n		<li>Lalu diikuti oleh aspek SDM, Koleksi Dokumen Hukum, Teknis Pengelolaan, Sarana Prasarana, dan Pemanfaatan TIK</li>\r\n	</ul>\r\n	</li>\r\n	<li>Dibuat melingkar seperti bola dunia untuk menggambarkan wadah dan jaringan (networking).</li>\r\n	<li>Warna biru menyiratkan profesionalisme, pemikiran yang serius, integritas, ketulusan dan ketenangan. Biru juga di asosiasikan dengan otoritas, komunikasi dan inovasi teknologi.</li>\r\n</ul>', 1);
INSERT INTO `makna_logo` VALUES (13, 'logo5db7add4474bb.png', '<ul>\r\n	<li>Tulisan JDIHN menggambarkan identitas Pusat JDIH Nasional (sebagai wadah pendayagunaan dokumen hukum secara tertib, terpadu, dan berkesinambungan serta merupakan sarana pemberian pelayanan informasi hukum secara mudah, cepat, dan akurat).</li>\r\n	<li>Warna MERAH bermakna dinamis, berani dan percaya diri.</li>\r\n</ul>', 1);
INSERT INTO `makna_logo` VALUES (14, 'logo5db7ae20eeff7.png', '<ul>\r\n	<li>pulau menggambarkan semua anggota jaringan berada di Negara Kesatuan Republik Indonesia.</li>\r\n	<li>Warna HIJAU bermakna kesuburan.</li>\r\n</ul>', 1);

-- ----------------------------
-- Table structure for master_kepuasan
-- ----------------------------
DROP TABLE IF EXISTS `master_kepuasan`;
CREATE TABLE `master_kepuasan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_kepuasan
-- ----------------------------
INSERT INTO `master_kepuasan` VALUES (1, 'Satu');
INSERT INTO `master_kepuasan` VALUES (2, 'Dua');
INSERT INTO `master_kepuasan` VALUES (3, 'Tiga');
INSERT INTO `master_kepuasan` VALUES (4, 'Empat');
INSERT INTO `master_kepuasan` VALUES (5, 'Lima');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password_hash` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `member_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth_date` date NULL DEFAULT NULL,
  `member_type_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `member_address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `member_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postal_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personal_id_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inst_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `member_since_date` date NULL DEFAULT NULL,
  `register_date` date NULL DEFAULT NULL,
  `expire_date` date NULL DEFAULT NULL,
  `phone_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fax_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_notes` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 233 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (2, 'Pengunjung-3', '$2y$13$jDdlzhlu7HO/C0wXw0f4JOB99DbUuSg7Bche02wHZ7t6y4gtOVjy.', 10, 'Pengunjung-3', 'Pria', '1980-12-10', '3', 'jakarta', 'Pengunjung-3@example.com', '', '99999999 999999 9 999', 'Instansi', 'capture.png', '2021-01-05', '2021-01-05', '2021-01-05', '012345678900', '', '', '2020-10-10 16:28:45', '2021-01-05 10:37:16', 1, 1, NULL, NULL);
INSERT INTO `member` VALUES (6, 'pengunjung-2', '$2y$13$HRDLr466uzhbvA73EgnT6uL6F9ZAwCmkXpbCxW6cvkyDMa174vCc6', 10, 'Pengunjung-2', 'Wanita', '1984-09-11', '1', 'Bekasi', 'pengunjung-2@example.com', '17510', '99999999 9999 9 999', 'Institusi', 'bgapelbphnsore.jpg', '2021-01-05', '2021-01-05', '2021-01-05', '012345678900', '', '', '2020-11-02 06:10:28', '2021-01-05 10:35:43', 28, 1, 'lEn21yp09FQlW-AmAFPjSfF_U9iF0Kk8', NULL);
INSERT INTO `member` VALUES (7, 'pengunjung-1', '$2y$13$5fOn.LcIkwc3ItSpJlfO/e5qugmGGNi3NarV2ODnM9/cfQWN2vNVu', 10, 'Pengunjung-1', 'Pria', '1994-08-26', '3', 'Jakarta', 'pengunjung-1@example.com', '', '99999999 9999 9 9 999', 'Institusi', NULL, '2021-01-05', '2021-01-05', '2021-01-05', '123456789000', '', '', '2020-11-03 07:58:47', '2021-01-05 10:16:42', 31, 1, '0ObS1K0AZREFtJ_RAEJBUvUdJrqFabQq', NULL);

-- ----------------------------
-- Table structure for member_type
-- ----------------------------
DROP TABLE IF EXISTS `member_type`;
CREATE TABLE `member_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_type_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nama tipe Member',
  `loan_limit` int(11) NOT NULL COMMENT 'jumlah_maksimal_peminjaman',
  `loan_periode` int(11) NOT NULL COMMENT 'lama_maksimal_peminjaman',
  `enable_reserve` int(1) NOT NULL DEFAULT 0 COMMENT 'status aktif/tidak',
  `reserve_limit` int(11) NOT NULL DEFAULT 0 COMMENT 'jumlah_maksimal_reservasi',
  `member_periode` int(11) NOT NULL COMMENT 'masa_berlaku_member',
  `reborrow_limit` int(11) NOT NULL COMMENT 'maksimal perpanjangan',
  `fine_each_day` int(11) NOT NULL COMMENT 'denda_perhari',
  `grace_periode` int(2) NULL DEFAULT 0 COMMENT 'toleransi_keterlambatan',
  `input_date` date NOT NULL,
  `last_update` date NULL DEFAULT NULL,
  `id_tipe_koleksi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `id_tipe_gmd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `member_type_name`(`member_type_name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_type
-- ----------------------------
INSERT INTO `member_type` VALUES (1, 'Premium', 7, 18, 1, 4, 5, 3, 1000000, 7, '2019-09-11', '2019-09-11', '1', '1', NULL, 6, '2019-09-11 09:01:53', '2019-09-11 09:01:53');
INSERT INTO `member_type` VALUES (3, 'reguler', 12, 10, 1, 2, 3, 23, 1000, 321, '2019-09-06', '2019-09-06', '1', '10', NULL, NULL, '2019-09-06 08:25:15', '2019-09-06 08:25:15');
INSERT INTO `member_type` VALUES (6, 'coba', 3, 4, 1, 12, 10, 5, 100000, 5, '2019-09-11', '2019-09-11', '1', '1', NULL, NULL, '2019-09-11 08:21:52', '2019-09-11 08:21:52');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent` int(11) NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order` int(11) NULL DEFAULT NULL,
  `data` blob NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent`(`parent`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'Akses Kontrol', NULL, NULL, 9, 0x66612066612D756E6C6F636B);
INSERT INTO `menu` VALUES (2, 'Menu', 1, '/admin/menu/index', 95, 0x66612066612D6D6170);
INSERT INTO `menu` VALUES (3, 'User', 1, '/admin/user/index', 92, 0x66612066612D7573657273);
INSERT INTO `menu` VALUES (4, 'Route', 1, '/admin/route/index', 93, 0x66612066612D6765617273);
INSERT INTO `menu` VALUES (5, 'Role', 1, '/admin/role/index', 94, 0x66612066612D636F67);
INSERT INTO `menu` VALUES (7, 'Peraturan', 16, '/peraturan/index', 11, 0x66612066612D70656E63696C2D7371756172652D6F);
INSERT INTO `menu` VALUES (8, 'Monografi Hukum', 16, '/monografi/index', 12, 0x66612066612D70656E63696C2D7371756172652D6F);
INSERT INTO `menu` VALUES (9, 'Artikel Hukum', 16, '/artikel/index', 13, 0x66612066612D70656E63696C2D7371756172652D6F);
INSERT INTO `menu` VALUES (10, 'Dashboard', NULL, '/site/index', 0, 0x66612066612D64617368626F617264);
INSERT INTO `menu` VALUES (11, 'Master Data', NULL, NULL, 8, 0x66612066612D6461746162617365);
INSERT INTO `menu` VALUES (16, 'Dokumen Hukum', NULL, NULL, 1, 0x66612066612D62616E6B);
INSERT INTO `menu` VALUES (17, 'Putusan', 16, '/putusan/index', 14, 0x66612066612D62616C616E63652D7363616C65);
INSERT INTO `menu` VALUES (18, 'Pengarang', 11, '/pengarang/index', NULL, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (19, 'Kala Terbit', 11, '/kala-terbit/index', NULL, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (20, 'Tipe Pengarang', 11, '/tipe-pengarang/index', NULL, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (21, 'Tipe Kata Kunci', 11, '/tipe-kata-kunci/index', 4, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (22, 'Tipe Koleksi', 11, '/tipe-koleksi/index', NULL, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (23, 'Penerbit', 11, '/penerbit/index', NULL, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (25, 'Jenis Pengarang', 11, '/jenis-pengarang/index', NULL, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (26, 'Bidang Hukum', 11, '/bidang-hukum/index', 8, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (27, 'GMD', 11, '/gmd/index', NULL, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (28, 'Sirkulasi', NULL, NULL, 3, 0x66612066612D72656379636C65);
INSERT INTO `menu` VALUES (29, 'Sejarah Peminjaman', 28, '/sirkulasi/index', 23, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (30, 'Pola Eksemplar', 11, '/pola-eksemplar/index', NULL, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (31, 'Klasifikasi', 11, '/klasifikasi/index', 6, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (32, 'Tipe Dokumen', 11, '/tipe-dokumen/index', 3, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (34, 'Member', 1, '/member/index', 93, 0x66612066612D7573657273);
INSERT INTO `menu` VALUES (36, 'Peminjaman', 28, '/sirkulasi/peminjaman', 21, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (37, 'Pengembalian', 28, '/sirkulasi/pengembalian', 22, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (38, 'Urusan Pemerintahan', 11, '/urusan-pemerintahan/index', 10, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (40, 'Bahasa', 11, '/bahasa/index', 9, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (43, 'TEU', 11, NULL, 2, 0x66612066612D636972636C652D6F);
INSERT INTO `menu` VALUES (45, 'Berita', NULL, '/berita/index', 4, 0x66612066612D696D616765);
INSERT INTO `menu` VALUES (46, 'Tempat Penetapan', 11, '/daerah/index', NULL, 0x66612066612D636972636C652D6F);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for notif
-- ----------------------------
DROP TABLE IF EXISTS `notif`;
CREATE TABLE `notif`  (
  `id_notifikasi` int(255) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `waktu` time(0) NULL DEFAULT NULL,
  `id_terkait` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT 0,
  `notif_to` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id_notifikasi`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for peminjaman
-- ----------------------------
DROP TABLE IF EXISTS `peminjaman`;
CREATE TABLE `peminjaman`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for penerbit
-- ----------------------------
DROP TABLE IF EXISTS `penerbit`;
CREATE TABLE `penerbit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pengarang
-- ----------------------------
DROP TABLE IF EXISTS `pengarang`;
CREATE TABLE `pengarang`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for peraturan_terkait
-- ----------------------------
DROP TABLE IF EXISTS `peraturan_terkait`;
CREATE TABLE `peraturan_terkait`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokumen` int(11) NULL DEFAULT NULL,
  `peraturan_terkait` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_perter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `catatan_perter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `integrasi` int(255) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  `_created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pola_eksemplar
-- ----------------------------
DROP TABLE IF EXISTS `pola_eksemplar`;
CREATE TABLE `pola_eksemplar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pattern` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prefix` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `suffix` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `length` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for previleges
-- ----------------------------
DROP TABLE IF EXISTS `previleges`;
CREATE TABLE `previleges`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_previleges` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ordering` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_time` datetime(0) NULL DEFAULT NULL,
  `_updated_time` datetime(0) NULL DEFAULT NULL,
  `ket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flagsub` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of previleges
-- ----------------------------
INSERT INTO `previleges` VALUES (1, 'Beranda', 'fa-dashboard', '1', NULL, '/', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (3, 'sub menu urikes', 'fa-fa-home', '1', '2', 'urikes', NULL, NULL, NULL, NULL, 'coba cuy yoi', NULL);
INSERT INTO `previleges` VALUES (5, 'Master Data', 'fas fa-database', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (7, 'Pola Eksemplar', NULL, '1', '5', 'eksemplar', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (9, 'Master Wilayah', 'far fa-map', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (10, 'Provinsi', NULL, '1', '9', 'province', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (11, 'Kabupaten', NULL, '2', '9', 'kabupaten', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (12, 'Kecamatan', NULL, '3', '9', 'kecamatan', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (14, 'Jenis Pengarang', NULL, '3', '13', 'jpengarang', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (15, 'Tipe Pengarang', NULL, '2', '13', 'tpengarang', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (17, 'Nama Pengarang', NULL, '1', '13', 'npengarang', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (18, 'Bahasa', NULL, '2', '5', 'bahasa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (19, 'Kala Terbit', NULL, '3', '5', 'kala_terbit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (20, 'Tipe Dokumen', NULL, '4', '5', 'doctype', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (21, 'GMD', NULL, '5', '5', 'gmd', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (22, 'Tipe Keanggotaan', NULL, '6', '5', 'tipemember', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (23, 'Tipe Subject', NULL, '7', '5', 'tipesubjek', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (24, 'Tipe Koleksi', NULL, '8', '5', 'tipekoleksi', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (25, 'Lokasi', NULL, '9', '5', 'lokasi', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (26, 'Penerbit', NULL, '10', '5', 'penerbit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (27, 'Bidang Hukum', NULL, '11', '5', 'bidanghukum', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (28, 'Tempat Terbit', NULL, '12', '5', 'tempatterbit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (29, 'Dokumen', 'fas fa-book', '2', NULL, 'dokument', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (30, 'Sirkulasi', 'fas fa-align-left', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (31, 'Peminjaman', NULL, '1', '30', 'sirkulasi_peminjaman', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (32, 'Pengembalian Kilat', NULL, '2', '30', 'sirkulasi_pengembalian', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (34, 'Sejarah Peminjaman', NULL, '4', '30', 'sirkulasi_riwayat', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (36, 'Subyek', NULL, '13', '5', '/subyek', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (37, 'Inventarisasi', 'fas fa-calculator', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (38, 'Inisialisasi', NULL, '1', '37', '/inisialisasi', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (39, 'Rekaman Inventarisasi', NULL, '2', '37', '/rekaman_inventarisasi', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (40, 'Inventarisasi Aktif', NULL, '3', '37', '/inventarisasi_aktif', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (41, 'Laporan Inventarisasi', NULL, '4', '37', '/laporaninventarisasi', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (42, 'Pengelolaan', 'fa fa-file-text', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (51, 'Eksemplar', 'fa fa-check-square', '3', NULL, 'item', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (52, 'Keanggotaan', NULL, '1', '42', 'member', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (53, 'Saran', NULL, '2', '42', '/saran', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (54, 'Kepuasan Pengunjung', NULL, '3', '42', '#', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (55, 'Jenis Pengarang', NULL, '14', '5', 'jpengarang', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (56, 'Tipe Pengarang', NULL, '15', '5', 'tpengarang', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (57, 'Nama Pengarang', NULL, '16', '5', 'npengarang', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (63, 'Tentang Kami', NULL, '5', '42', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (64, 'Sejarah', NULL, '1', '63', '/sejarah', NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `previleges` VALUES (65, 'Dasar Hukum', NULL, '2', '63', '/dasarhukum', NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `previleges` VALUES (66, 'Visi Misi', NULL, '3', '63', '/visimisi', NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `previleges` VALUES (67, 'Struktur Organisasi', NULL, '4', '63', '/strukturorganisasi', NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `previleges` VALUES (68, 'Makna Logo', NULL, '5', '63', '/maknalogo', NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `previleges` VALUES (70, 'Berita', NULL, '4', '42', '/berita', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (72, 'Status', NULL, '17', '5', 'status', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (73, 'Buku Tamu', 'fa fa-camera', '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (74, 'Dashboard', NULL, '1', '73', 'buku_tamu_dashboard', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (75, 'Tamu Hari Ini', NULL, '2', '73', 'buku_tamu_admin', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (76, 'Semua Tamu', NULL, '3', '73', 'buku_tamu_admin_all', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (77, 'Urusan Pemerintah', NULL, '18', '5', '/urusanpemerintah', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (78, 'Agenda', NULL, '19', '5', '/agenda', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (79, 'Klasifikasi', NULL, '20', '5', '/klasifikasi', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `previleges` VALUES (80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for provinsi
-- ----------------------------
DROP TABLE IF EXISTS `provinsi`;
CREATE TABLE `provinsi`  (
  `id` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NULL DEFAULT NULL,
  `updated_at` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of provinsi
-- ----------------------------
INSERT INTO `provinsi` VALUES ('12', 'SUMATERA UTARA', NULL, NULL);
INSERT INTO `provinsi` VALUES ('13', 'SUMATERA BARAT', NULL, NULL);
INSERT INTO `provinsi` VALUES ('14', 'RIAU', NULL, NULL);
INSERT INTO `provinsi` VALUES ('15', 'JAMBI', NULL, NULL);
INSERT INTO `provinsi` VALUES ('16', 'SUMATERA SELATAN', NULL, NULL);
INSERT INTO `provinsi` VALUES ('17', 'BENGKULU', NULL, NULL);
INSERT INTO `provinsi` VALUES ('18', 'LAMPUNG', NULL, NULL);
INSERT INTO `provinsi` VALUES ('19', 'KEPULAUAN BANGKA BELITUNG', NULL, NULL);
INSERT INTO `provinsi` VALUES ('21', 'KEPULAUAN RIAU', NULL, NULL);
INSERT INTO `provinsi` VALUES ('31', 'DKI JAKARTA', NULL, NULL);
INSERT INTO `provinsi` VALUES ('32', 'JAWA BARAT', NULL, NULL);
INSERT INTO `provinsi` VALUES ('33', 'JAWA TENGAH', NULL, NULL);
INSERT INTO `provinsi` VALUES ('34', 'DI YOGYAKARTA', NULL, NULL);
INSERT INTO `provinsi` VALUES ('35', 'JAWA TIMUR', NULL, NULL);
INSERT INTO `provinsi` VALUES ('36', 'BANTEN', NULL, NULL);
INSERT INTO `provinsi` VALUES ('37', 'ACEH', NULL, NULL);
INSERT INTO `provinsi` VALUES ('51', 'BALI', NULL, NULL);
INSERT INTO `provinsi` VALUES ('52', 'NUSA TENGGARA BARAT', NULL, NULL);
INSERT INTO `provinsi` VALUES ('53', 'NUSA TENGGARA TIMUR', NULL, NULL);
INSERT INTO `provinsi` VALUES ('61', 'KALIMANTAN BARAT', NULL, NULL);
INSERT INTO `provinsi` VALUES ('62', 'KALIMANTAN TENGAH', NULL, NULL);
INSERT INTO `provinsi` VALUES ('63', 'KALIMANTAN SELATAN', NULL, NULL);
INSERT INTO `provinsi` VALUES ('64', 'KALIMANTAN TIMUR', NULL, NULL);
INSERT INTO `provinsi` VALUES ('65', 'KALIMANTAN UTARA', NULL, NULL);
INSERT INTO `provinsi` VALUES ('71', 'SULAWESI UTARA', NULL, NULL);
INSERT INTO `provinsi` VALUES ('72', 'SULAWESI TENGAH', NULL, NULL);
INSERT INTO `provinsi` VALUES ('73', 'SULAWESI SELATAN', NULL, NULL);
INSERT INTO `provinsi` VALUES ('74', 'SULAWESI TENGGARA', NULL, NULL);
INSERT INTO `provinsi` VALUES ('75', 'GORONTALO', NULL, NULL);
INSERT INTO `provinsi` VALUES ('76', 'SULAWESI BARAT', NULL, NULL);
INSERT INTO `provinsi` VALUES ('81', 'MALUKU', NULL, NULL);
INSERT INTO `provinsi` VALUES ('82', 'MALUKU UTARA', NULL, NULL);
INSERT INTO `provinsi` VALUES ('91', 'PAPUA BARAT', NULL, NULL);
INSERT INTO `provinsi` VALUES ('94', 'PAPUA', NULL, NULL);

-- ----------------------------
-- Table structure for putusan_terkait
-- ----------------------------
DROP TABLE IF EXISTS `putusan_terkait`;
CREATE TABLE `putusan_terkait`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokumen` int(11) NOT NULL,
  `putusan_terkait` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kasasi_puter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `banding_puter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pertama_puter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `integrasi` int(255) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rekaman_aktif
-- ----------------------------
DROP TABLE IF EXISTS `rekaman_aktif`;
CREATE TABLE `rekaman_aktif`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_inisialisasi` int(11) NULL DEFAULT NULL,
  `id_eksemplar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `aktif` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jalan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kota` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `provinsi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kode_pos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telepon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `faksimili` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website_utama` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website_jdih` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sop_pengolahan_jdih` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_biro` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nip_biro` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pangkat_biro` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `klasifikasi_pendidikan_biro` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_sub` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nip_sub` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pangkat_sub` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `klasifikasi_pendidikan_sub` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_jfu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nip_jfu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pangkat_jfu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `klasifikasi_pendidikan_jfu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `undang_undang` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peraturan_pemerintah_pengganti_uu` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peraturan_pemerintah` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peraturan_presiden` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peraturan_menteri` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peraturan_daerah_provinsi` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peraturan_daerah_kabupaten` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peraturan_daerah_kota` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peraturan_gubernur` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peraturan_bupati` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peraturan_walikota` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buku_hukum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jurnal_hukum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hasil_penelitian_hukum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hasil_pengkajian_hukum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `naskah_akademis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rancangan_peraturan_daerah` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keputusan_pengadilan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `yurispundensi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `artikel_hukum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kliping_koran_berita_hukum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lain_lain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_pedoman` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_pedoman_jumlah` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_iventarisasi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_iventarisasi_jumlah` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_katalogisasi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_katalogisasi_jumlah` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_abstrak` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_abstrak_jumlah` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_indeks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_indeks_jumlah` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_majalah` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_majalah_jumlah` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_katalogisasi_hukum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sudah_katalogisasi_jumlah_hukum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ruang_kerja` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ruang_koleksi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ruang_baca` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meja_baca` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kursi_baca` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `komputer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `printer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `scanner` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `koneksi_internet` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mesin_fotocopy` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `writer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telepon_sarana` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fak` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lain` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telah_otomasi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `memiliki_permasalahan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `memiliki_situs` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `melakukan_pemutaakhiran` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `web_dikelola` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_kegiatan_bimtek` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_peserta_bimtek` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ket_bimtek` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_kegiatan_sos` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_peserta_sos` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ket_sos` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_kegiatan_mon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_peserta_mon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ket_mon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_kegiatan_koor` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_peserta_koor` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ket_koor` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_kegiatan_rakor` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_peserta_rakor` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ket_rakor` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_kegiatan_kons` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_peserta_kons` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ket_kons` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_kegiatan_mengikuti` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_peserta_mengikuti` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ket_mengikuti` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_kegiatan_kerja` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_peserta_kerja` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ket_kerja` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_kegiatan_kerjasama` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_peserta_kerjasama` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ket_kerjasama` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_kegiatan_mitra` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jml_peserta_mitra` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ket_mitra` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pengelola_jdih_prov` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website_jdih_prov` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_integrasi_prov` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pengelola_jdih_kab` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website_jdih_kab` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_integrasi_kab` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pengelola_jdih_kota` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website_jdih_kota` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_integrasi_kota` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pengelola_jdih_dewprov` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website_jdih_dewprov` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_integrasi_dewprov` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pengelola_jdih_dewpkab` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website_jdih_dewpkab` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_integrasi_dewpkab` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pengelola_jdih_negri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website_jdih_negri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_integrasi_negri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pengelola_jdih_swasta` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website_jdih_swasta` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_integrasi_swasta` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `otomasi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permasalahan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `situs_jdih` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pemutakhiran` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `web_yg_dikelola` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `_created_by` int(11) NOT NULL,
  `_updated_by` int(11) NOT NULL,
  `_created_time` datetime(0) NOT NULL,
  `_updated_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reservasi
-- ----------------------------
DROP TABLE IF EXISTS `reservasi`;
CREATE TABLE `reservasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `_created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_time` datetime(0) NULL DEFAULT NULL,
  `_updated_time` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_role`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'Administrator', '59b60c0c8af9e96df3b7acda', '59b60c0c8af9e96df3b7acda', '2018-07-26 10:59:29', '2018-07-26 10:59:29', NULL, NULL);
INSERT INTO `role` VALUES (2, 'Pustakawan', '2', '2', '2018-11-21 07:19:53', '2019-03-08 09:27:25', '2019-10-31 07:46:24', NULL);
INSERT INTO `role` VALUES (3, 'User', '2', '8', '2018-11-21 07:21:57', '2019-03-14 08:40:01', '2019-08-29 12:22:22', NULL);

-- ----------------------------
-- Table structure for role_previleges
-- ----------------------------
DROP TABLE IF EXISTS `role_previleges`;
CREATE TABLE `role_previleges`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_previleges` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1987 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_previleges
-- ----------------------------
INSERT INTO `role_previleges` VALUES (1986, '1', '76', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1985, '1', '75', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1984, '1', '74', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1983, '1', '73', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1982, '1', '51', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1981, '1', '68', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1980, '1', '67', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1979, '1', '66', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1978, '1', '65', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1977, '1', '64', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1976, '1', '63', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1975, '1', '70', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1974, '1', '54', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1973, '1', '53', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1972, '1', '52', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1971, '1', '42', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1970, '1', '41', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1969, '1', '40', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1968, '1', '39', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1967, '1', '38', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1966, '1', '37', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1965, '1', '34', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1964, '1', '32', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1963, '1', '31', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1962, '1', '30', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1961, '1', '29', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1960, '1', '12', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1959, '1', '11', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1958, '1', '10', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1957, '1', '9', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1956, '1', '25', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1955, '1', '24', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1954, '1', '23', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1953, '1', '22', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1952, '1', '21', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1951, '1', '20', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1950, '1', '19', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1949, '1', '79', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1948, '1', '18', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1947, '1', '78', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1946, '1', '77', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1945, '1', '72', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1944, '1', '57', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1943, '1', '56', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1942, '1', '55', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1941, '1', '81', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1940, '1', '28', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1939, '1', '27', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1938, '1', '26', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1937, '1', '7', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1936, '1', '5', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1935, '1', '1', '2020-07-10');
INSERT INTO `role_previleges` VALUES (1934, '2', '76', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1933, '2', '75', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1932, '2', '74', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1931, '2', '73', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1930, '2', '51', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1929, '2', '63', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1928, '2', '70', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1927, '2', '54', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1926, '2', '53', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1925, '2', '52', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1924, '2', '42', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1923, '2', '41', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1922, '2', '40', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1921, '2', '39', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1920, '2', '38', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1919, '2', '37', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1918, '2', '34', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1917, '2', '32', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1916, '2', '31', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1915, '2', '30', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1914, '2', '29', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1913, '2', '25', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1912, '2', '24', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1911, '2', '23', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1910, '2', '22', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1909, '2', '21', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1908, '2', '19', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1907, '2', '79', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1906, '2', '18', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1905, '2', '78', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1904, '2', '77', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1903, '2', '57', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1902, '2', '28', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1901, '2', '27', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1900, '2', '26', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1899, '2', '7', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1898, '2', '5', '2020-03-16');
INSERT INTO `role_previleges` VALUES (1897, '2', '1', '2020-03-16');

-- ----------------------------
-- Table structure for saran
-- ----------------------------
DROP TABLE IF EXISTS `saran`;
CREATE TABLE `saran`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `saran` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sejarah
-- ----------------------------
DROP TABLE IF EXISTS `sejarah`;
CREATE TABLE `sejarah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sejarah
-- ----------------------------
INSERT INTO `sejarah` VALUES (30, '<p style=\"text-align: justify;\"><span style=\"color:#000000;\">Ide membentuk Jaringan Dokumentasi dan Informasi Hukum Nasional (JDIHN), secara historis melekat erat dengan pembangunan hukum nasional dalam upaya mewujudkan supremasi hukum. Dikatakan demikian karena embrio pembentukan JDIHN adalah salah satu rekomendasi dari kegiatan pembangunan hukum nasional yaitu Seminar Hukum Nasional III tahun 1974 di Surabaya. Seminar hukum tersebut diselenggarakan oleh Badan Pembinaan Hukum Nasional dalam upaya membedah semua unsur pembangunan hukum dalam rangka mengingidentifikasi permasalahan dan menemukan solusi pemecahannya.</span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000;\">Pada saat membedah dokumentasi hukum, para peserta seminar mengetahui bahwa dukungan dokumentasi hukum terhadap pembangunan hukum nasional masih sangat lemah. Dokumentasi hukum belum mampu menyediakan dokumen dan informasi hukum dengan cepat dan tepat pada saat dibutuhan. Dokumentasi hukum belum mampu menyediakan akses informasi hukum yang efektip, sehingga dokumen/informasi hukum sulit dicari dan ditemukan kembali pada saat dibutuhkan untuk mendukung pelaksanaan kegiatan pembangunan hukum, seperti: penelitian hukum, perencanaan hukum, penyusunan naskah akademis, penyusunan rancangan peraturan perundang-undangan, pembentukan kebijakan pimpinan dan lain-lain.</span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000;\">Berdasarkan pengamatan peserta Seminar Hukum Nasional III Tahun 1974, faktor penyebab lemahnya dukungan dokumentasi hukum antara lain adalah:</span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Dokumen hukum potensial, tersebar luas di instansi pemerintah di pusat sampai daerah dengan wilayah kepulauan yang sangat luas;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Dokumen-dokumen hukum tersebut belum semuanya dikelola dengan baik dalam suatu sistem; 3. Tenaga pengelola yang ada sangat kurang;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Perhatian terhadap keberadaan dokumentasi dan perpustakaan hukum masih sangat kurang.</span></li>\r\n</ol>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000;\">Peserta seminar berpendapat bahwa cara yang paling epektif untuk mengatasi kelemahan dokumentasi hukum ini adalah membentuk kerja sama antar unit pengelola dokumen hukum itu sendiri dalam suatu Jaringan dokumentasi dan informasi hukum.</span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000;\">Berdasarkan pemikiran tersebut seminar merekomendasikan:</span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Perlu adanya suatu kebijakan nasional untuk mulai menyusun sistem jaringan dokumentasi dan informasi hukum dan agar segera dapat berfungsi.</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Dalam tahap permulaan ada dua hal yang perlu dilakukan:</span>\r\n	<ol style=\"list-style-type:lower-alpha;\">\r\n		<li><span style=\"color:#000000;\">mempermudah pencarian dan penemuan kembali peraturan perundang- undangan, yurisprudensi, serta bahan-bahan lainnya</span></li>\r\n		<li><span style=\"color:#000000;\">Untuk dapat secepatnya mendayagunakan semua informasi yang ada Sistem Jaringan Dokumentasi dan Informasi Hukum perlu disusun dan dikembangkan. Ditentukan Pusat dan Anggota Jaringan serta menyediakan sarana yang diperlukan agar mulai berfungsi.</span></li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000;\">Sambil menunggu terbitnya kebijakan nasional termaksud, BPHN (Badan Pembinaan Hukum Nasional) sebagai pengemban tugas pembinaan hukum nasional, segera menyelenggarakan serangkaian lokakarya dan berhasil mempersiapkan sarana (infrastruktur) jaringan agar bisa operasional. Lokakarya tersebut adalah Lokakarya tentang : &ldquo;Jaringan Dokumentasi dan Informasi Hukum&rdquo; di Jakarta (1975); Lokakarya tentang &ldquo;Sistem Penemuan Kembali Peraturan Perundang-undangan&rdquo; di Malang (1977); Lokakarya tentang &ldquo;Sistem Penyebarluasan Peraturan Perundang-undangan&rdquo; di Pontianak (1977); Lokakarya tentang &ldquo;Organisasi dan Komunikasi Sistem Jaringan Dokumentasi dan Informasi Hukum&rdquo; di Jakarta (1978),</span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000;\">Lokakarya Tahun 1978 sepakat menunjuk BPHN sebagai Pusat Jaringan dan diberi tugas sebagai penyelenggara latihan pembinaan tenaga, tempat konsultasi, penelitian dan pengembangan sistem jaringan, serta koordinator kegiatan unit-unit jaringan dalam rangka pengembangan jaringan. Dalam rangka melaksanakan tugas tersebut pada tahun 1988 BPHN sebagai Pusat JDIH mengeluarkan pedoman pengelolaaan dokumen hukum yang diberi nama &rdquo;Manual Unit Jaringan Dokumentasi dan Informasi Hukum&rdquo; yang terdiri dari IV modul yaitu:</span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Modul I: Pedoman Prosedur Kerja Pusat Jaringan Dokumentasi dan Informasi Hukum.</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Modul II: Pedoman Pengumpulan Bahan (Kegiatan Prakatalogan).</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Modul III: Pedoman Pengolahan Sub-Modul IIIA: Pedoman Teknis Pengkatalogan Bahan Pustaka dan Pascakatalogan (berdasarkan UDC); Sub-Modul IIIB: Pedoman Teknis Pengkatalogan Peraturan Perundang-undangan; Sub-Modul IIIC: Pedoman Teknis Pengkatalogan Bahan Pustaka dan Pascakatalogan (berdasarkan DDC).</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Modul IV: Pedoman Peelayaan Informasi;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Modul V: Sarana Kerja Unit Jaringan Dokumentasi dan Informasi Hukum</span></li>\r\n</ol>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000;\">Dari tahun 1978 &ndash; 1999, BPHN melakukan pembinaan dan pengembangan JDIH hanya berdasarkan kesepakatan tersebut. Banyak upaya pembinaan dan pengembangan yang telah dilakukan, namun temu kembali informasi belum dapat dilakukan dengan cepat, tepat, dan pendayagunaan informasi belum dapat terselenggara dengan baik.</span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000;\">Selama Pemerintahan Orde Baru rekomendasi untuk membentuk JDIHN kurang mendapat perhatian. Jaringan Dokumentasi dan Informasi Hukum disebut dalam GBHN 1993 bidang pembangunan hukum sektor sarana dan prasarana sebagai sarana penunjang pembangunan hukum. Namun dalam era Pemerintahan Reformasi rekomendasi termaksud langsung diwujudkan dengan mengundangkan Keputusan Presiden Nomor 91 Tahun 1999 tentang Jaringan Dokumentasi dan Informasi Hukum Nasional dalam Lembaran Negara No. 135. Kemudian dalam rangka melaksanakan . Instruksi Presiden Nomor 9 Tahun 2011 tentang Rencana Aksi Pencegahan dan Pemerantasan Korupsi Tahun 2011, Keputusan Presiden tersebut direvitalisasi dan diganti dengan Peraturan Presiden Nomor 33 Tahun 2012 tentang Jaringan Dokumentasi dan Informasi Hukum Nasional, Lembaran Negara No 82.</span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000;\">Untuk menyesuaikan dengan perkembangan ilmu pengetahuan dan teknologi, Manual Unit Jaringan Dokumentasi dan Informasi Hukum juga telah direvisi dan dikembangkan oleh Pusat Jaringan dan dijadikan lampiran yang tidak terpisahkan dari Peraturan Menteri Hukum dan HAM Nomor 02 Tahun 2013 Tentang Standardisasi Pengelolaan Teknis Dokumentasi Dan Informasi Hukum, yang selanjutnya dicabut dengan Peraturan Menteri Hukum dan HAM Nomor 8 Tahun 2019 Tentang Standar Pengelolaan Dokumen dan Informasi Hukum, ini dimaksudkan sebagai pedoman yang wajib digunakan oleh Anggota Jaringan Dokumentasi dan Informasi Hukum Nasional. Standar Pengelolaan Dokumen dan Informasi Hukum&nbsp;meliputi:</span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Standar Pembuatan Abstrak Peraturan Perundang-undangan;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Standar Pengolahan Dokumen dan Informasi Hukum;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Standar Laporan Evaluasi Pengelolaan Jaringan Dokumentasi dan Informasi Hukum Nasional</span></li>\r\n</ol>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000;\">Pasal 4 Peraturan Presiden Nomor 33 Tahun 2012 menetapkan kembali BPHN sebagai Pusat JDIHN dan Anggota JDIHN terdiri dari:</span></p>\r\n\r\n<p style=\"margin-left: 31.5pt; text-align: justify;\"><span style=\"color:#000000;\">1. Biro Hukum dan/atau unit kerja yang tugas dan fungsinya menyelenggarakan kegiatan yang berkaitan dengan dokumen hukum pada:</span></p>\r\n\r\n<ol style=\"list-style-type: lower-alpha; margin-left: 40px;\">\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Kementerian Negara;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Sekretariat Lembaga Negara;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Lembaga Pemerintah Non Kementerian;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Pemerintah Provinsi;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Pemerintah Kabupaten/Kota; dan</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">Sekreariat Dewan Perwakilan Rakyat Daerah Tingkat Provinsi dan Kabupaten/Kota.</span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left: 40px; text-align: justify;\"><span style=\"color:#000000;\">2. Perpustakaan pada perguruan tinggi negeri dan perguruan tinggi swasta;</span></p>\r\n\r\n<p style=\"margin-left: 31.5pt; text-align: justify;\"><span style=\"color:#000000;\">3. Lembaga Lain yang bergerak di bidang pengembangan dokumentasi dan informasi hukum yang ditetapkan olen Menteri.</span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000;\">Pasal 3 Peraturan Presiden Nomor 33 Tahun 2012 menegaskan bahwa tujuan dari JDIHN adalah:</span></p>\r\n\r\n<ol style=\"list-style-type:lower-alpha;\">\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">menjamin terciptanya Pengelolaan Dokumentasi dan Informasi Hukum yang terpadu dan terintegrasi di berbagai instansi pemerintah dan institusi lainnya;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">menjamin ketersediaan dokumentasi dan informasi hukum yang lengkap dan akurat, serta dapat diakses secara cepat dan mudah;</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">mengembangkan kerja sama yang efektif antara Pusat jaringan dan Anggota jaringan serta antar sesama Anggota jaringan dalam rangka penyediaan dokumentasi dan informasi hukum; dan</span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"color:#000000;\">meningkatkan kualitas pembangunan hukum nasional dan pelayanan kepada publik sebagai salah satu wujud ketatapemerintahan yang baik, transparan, efektif, efisien, dan bertanggung jawab.</span></li>\r\n</ol>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#000000;\">Sejarah pembentukan JDIHN di atas menunjukkan betapa pentingnya kerjasama pengelolaan dokumen dan informasi hukum untuk mempercepat pembangunan hukum nasional yang berkualitas. Untuk membangun akses informasi hukum yang terintegrasi, secara nasional semua Anggota JDIHN wajib mengelola dokumen dan informasi hukum yang ada dalam kewenangannya dengan menggunakan modul/standar yang ada dan meningkatkan akselerasinya dengan memanfaatkan kecanggihan teknologi informasi dan komunikasi. Tersedianya akses informasi hukum bagi semua warga negara merupakan conditio sine quanon dalam mewujudkan supremasi hukum. Sementara menyediakan akses informasi hukum adalah tugas dari dokumentasi hukum Anggota Jaringan.</span></p>\r\n\r\n<p>&nbsp;</p>', 1);

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES (2, 'dicabut', '2019-09-20 06:16:27', '2019-09-20 06:16:27');
INSERT INTO `status` VALUES (4, 'mencabut', '2019-09-20 06:19:00', '2019-09-20 06:19:00');
INSERT INTO `status` VALUES (6, 'diubah', '2019-09-20 06:21:18', '2019-09-20 06:21:18');
INSERT INTO `status` VALUES (7, 'mengubah', '2019-09-20 06:21:25', '2019-09-20 06:21:25');
INSERT INTO `status` VALUES (8, 'Tidak memiliki daya guna', '2019-09-20 06:21:45', '2019-09-20 06:21:45');
INSERT INTO `status` VALUES (9, 'Berlaku', '2019-11-04 06:50:32', '2019-11-04 06:50:32');
INSERT INTO `status` VALUES (10, 'Tidak Berlaku', '2019-11-04 06:50:40', '2019-11-04 06:50:40');
INSERT INTO `status` VALUES (11, '-', NULL, NULL);

-- ----------------------------
-- Table structure for stock_opname
-- ----------------------------
DROP TABLE IF EXISTS `stock_opname`;
CREATE TABLE `stock_opname`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_inventarisasi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gmd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_koleksi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lokasi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lokasi_rak` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `klasifikasi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stok_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tanggal_dibuat` datetime(0) NOT NULL,
  `tanggal_selesai` datetime(0) NULL DEFAULT NULL,
  `_created_by` int(11) NOT NULL,
  `_updated_by` int(11) NOT NULL,
  `_created_time` datetime(0) NOT NULL,
  `_updated_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for stock_search_result
-- ----------------------------
DROP TABLE IF EXISTS `stock_search_result`;
CREATE TABLE `stock_search_result`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_stock_opname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nomor_panggil_doc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `_created_by` int(11) NOT NULL,
  `_created_time` datetime(0) NOT NULL,
  `_updated_by` int(11) NOT NULL,
  `_updated_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for struktur_organisasi
-- ----------------------------
DROP TABLE IF EXISTS `struktur_organisasi`;
CREATE TABLE `struktur_organisasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of struktur_organisasi
-- ----------------------------
INSERT INTO `struktur_organisasi` VALUES (7, 'struktur5ec285d889f51.png', 1);

-- ----------------------------
-- Table structure for survey_kepuasan
-- ----------------------------
DROP TABLE IF EXISTS `survey_kepuasan`;
CREATE TABLE `survey_kepuasan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tingkat_kepuasan` int(11) NULL DEFAULT NULL,
  `ip_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `isi` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sysparam
-- ----------------------------
DROP TABLE IF EXISTS `sysparam`;
CREATE TABLE `sysparam`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groups` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `long_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `order_param` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_time` datetime(0) NULL DEFAULT NULL,
  `_updated_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sysparam
-- ----------------------------
INSERT INTO `sysparam` VALUES (1, 'Gender', '1', 'Male', 'Male', 1, NULL, '1', '1', '2018-07-26 11:16:43', '2018-07-26 11:16:43');
INSERT INTO `sysparam` VALUES (2, 'Tipe Dokumen', '1', 'Peraturan Perundangan - undangan', 'Peraturan Perundangan - undangan', 1, NULL, '1', '1', '2018-08-03 15:55:48', '2018-08-06 16:12:46');
INSERT INTO `sysparam` VALUES (3, 'Tipe Dokumen', '2', 'Monografi Hukum', 'Monografi Hukum', 2, NULL, '1', '1', '2018-08-06 15:24:27', '2018-08-06 15:24:27');
INSERT INTO `sysparam` VALUES (4, 'Tipe Dokumen', '3', 'Artikel Hukum (Majalah, Koran)', 'Artikel Hukum (Majalah, Koran)', 3, NULL, '1', '1', '2018-08-06 15:25:00', '2018-08-06 15:26:34');
INSERT INTO `sysparam` VALUES (5, 'Tipe Dokumen', '4', 'Putusan Pengadilan/Yurisprudensi (Pts MA, PT, PN)', 'Putusan Pengadilan/Yurisprudensi (Pts MA, PT, PN)', 4, NULL, '1', '1', '2018-08-06 15:26:01', '2018-08-06 15:26:01');
INSERT INTO `sysparam` VALUES (6, 'Teu', '1', 'Opsi 1', 'Opsi 1', 1, NULL, '1', '1', '2018-08-07 11:40:59', '2018-08-07 11:40:59');
INSERT INTO `sysparam` VALUES (7, 'Jenis', '1', 'Opsi 1', 'Opsi 1', 1, NULL, '1', '1', '2018-08-07 11:42:25', '2018-08-07 11:42:25');
INSERT INTO `sysparam` VALUES (8, 'Singkatan Jenis', '1', 'Opsi 1', 'Opsi 1', 1, NULL, '1', '1', '2018-08-07 11:44:31', '2018-08-07 11:44:31');
INSERT INTO `sysparam` VALUES (9, 'Tempat Terbit', '1', 'Opsi 1', 'Opsi 1', 1, NULL, '1', '1', '2018-08-07 11:45:32', '2018-08-07 11:45:32');
INSERT INTO `sysparam` VALUES (10, 'Penerbit', '1', 'Opsi 1', 'Opsi 1', 1, NULL, '1', '1', '2018-08-07 11:46:17', '2018-08-07 11:46:17');
INSERT INTO `sysparam` VALUES (11, 'Sumber', '1', 'Opsi 1', 'Opsi 1', 1, NULL, '1', '1', '2018-08-07 11:47:21', '2018-08-07 11:47:21');
INSERT INTO `sysparam` VALUES (12, 'Status', '1', 'Opsi 1', 'Opsi 1', 1, NULL, '1', '1', '2018-08-07 11:49:07', '2018-08-07 11:49:07');
INSERT INTO `sysparam` VALUES (13, 'Bahasa', '1', 'Opsi 1', 'Opsi 1', 1, NULL, '1', '1', '2018-08-07 11:50:38', '2018-08-07 11:50:38');
INSERT INTO `sysparam` VALUES (14, 'Bidang Hukum', '1', 'Opsi 1', 'Opsi 1', 1, NULL, '1', '1', '2018-08-07 11:51:42', '2018-08-07 11:51:42');

-- ----------------------------
-- Table structure for tempat_penetapan
-- ----------------------------
DROP TABLE IF EXISTS `tempat_penetapan`;
CREATE TABLE `tempat_penetapan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `integrasi` int(11) NULL DEFAULT 1,
  `_created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_created_time` datetime(0) NULL DEFAULT NULL,
  `_updated_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tipe_kata_kunci
-- ----------------------------
DROP TABLE IF EXISTS `tipe_kata_kunci`;
CREATE TABLE `tipe_kata_kunci`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orders` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tipe_kata_kunci
-- ----------------------------
INSERT INTO `tipe_kata_kunci` VALUES (1, 'Topik', '', '1', 1, 1, '2018-08-30 17:01:44', '2018-08-30 17:01:44');
INSERT INTO `tipe_kata_kunci` VALUES (2, 'Geografis', '', '2', 1, 1, '2018-08-30 17:01:48', '2018-08-30 17:01:48');
INSERT INTO `tipe_kata_kunci` VALUES (3, 'Nama', '', '3', 1, 1, '2018-08-30 17:01:51', '2018-08-30 17:01:51');
INSERT INTO `tipe_kata_kunci` VALUES (4, 'Masa', '', '4', 1, 1, '2018-08-30 17:01:57', '2018-08-30 17:01:57');
INSERT INTO `tipe_kata_kunci` VALUES (5, 'Aliran', '', '5', 1, 1, '2018-08-30 17:02:00', '2018-08-30 17:02:00');
INSERT INTO `tipe_kata_kunci` VALUES (6, 'Pekerjaan', '', '6', 1, 1, '2018-08-30 17:02:06', '2018-08-30 17:02:06');
INSERT INTO `tipe_kata_kunci` VALUES (7, 'PERIKATAN/SEWA MENYEWA', '', '7', 2, 2, '2018-11-09 09:27:29', '2018-11-09 09:27:29');

-- ----------------------------
-- Table structure for tipe_koleksi
-- ----------------------------
DROP TABLE IF EXISTS `tipe_koleksi`;
CREATE TABLE `tipe_koleksi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tipe_koleksi
-- ----------------------------
INSERT INTO `tipe_koleksi` VALUES (1, '--PILIH SEMUA--', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tipe_koleksi` VALUES (2, 'Reference', NULL, 1, 1, '2018-08-21 08:23:14', '2018-08-21 08:23:14');
INSERT INTO `tipe_koleksi` VALUES (3, 'Textbook', NULL, 1, 1, '2018-08-21 08:23:18', '2018-08-21 08:23:18');
INSERT INTO `tipe_koleksi` VALUES (4, 'Fiction', NULL, 1, 1, '2018-08-21 08:23:35', '2018-08-21 08:23:35');
INSERT INTO `tipe_koleksi` VALUES (5, 'Buku', NULL, 27, 27, '2019-03-14 12:49:58', '2019-03-14 12:49:58');
INSERT INTO `tipe_koleksi` VALUES (6, 'Scripts', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tipe_pengarang
-- ----------------------------
DROP TABLE IF EXISTS `tipe_pengarang`;
CREATE TABLE `tipe_pengarang`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orders` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `created_at` date NULL DEFAULT NULL,
  `updated_at` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tipe_pengarang
-- ----------------------------
INSERT INTO `tipe_pengarang` VALUES (1, 'Nama Orang', '', '1', 1, 1, '2018-08-29', '2018-08-29');
INSERT INTO `tipe_pengarang` VALUES (2, 'Badan Organisasi', '', '2', 1, 1, '2018-08-29', '2018-08-29');
INSERT INTO `tipe_pengarang` VALUES (3, 'Konfrensi', '', '3', 1, 1, '2018-08-29', '2018-08-29');

-- ----------------------------
-- Table structure for urusan_pemerintahan
-- ----------------------------
DROP TABLE IF EXISTS `urusan_pemerintahan`;
CREATE TABLE `urusan_pemerintahan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 44 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of urusan_pemerintahan
-- ----------------------------
INSERT INTO `urusan_pemerintahan` VALUES (6, 'Bidang Pendidikan', NULL, '2019-11-25 02:20:32', '2019-11-25 02:20:32', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (7, 'Bidang Kesehatan', NULL, '2019-11-25 02:20:41', '2019-11-25 02:20:41', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (8, 'Bidang Pekerjaan Umum dan Penataan Ruang', NULL, '2019-11-25 02:20:55', '2019-11-25 02:20:55', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (9, 'Bidang Perumahan Kawasan Permukiman', NULL, '2019-11-25 02:21:21', '2019-11-25 02:21:21', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (10, 'Bidang Ketentraman dan Ketertiban Umum serta Perlindungan Masyarakat', NULL, '2019-11-25 02:21:54', '2019-11-25 02:21:54', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (11, 'Bidang Sosial', NULL, '2019-11-25 02:22:01', '2019-11-25 02:22:01', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (12, 'Bidang Tenaga Kerja', NULL, '2019-11-25 02:22:11', '2019-11-25 02:22:11', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (13, 'Bidang Pemberdayaan Perempuan dan Perlindungan Anak', NULL, '2019-11-25 02:22:28', '2019-11-25 02:22:28', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (14, 'Bidang Pangan', NULL, '2019-11-25 02:22:38', '2019-11-25 02:22:38', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (15, 'Bidang Pertanahan', NULL, '2019-11-25 02:22:48', '2019-11-25 02:22:48', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (16, 'Bidang Lingkungan Hidup', NULL, '2019-11-25 02:22:58', '2019-11-25 02:22:58', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (17, 'Bidang Administrasi Kependudukan dan Pencatatan Sipil', NULL, '2019-11-25 02:23:20', '2019-11-25 02:23:20', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (18, 'Bidang Pemberdayaan Masyarakat dan Desa', NULL, '2019-11-25 02:23:33', '2019-11-25 02:23:33', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (19, 'Bidang Pengendalian Penduduk dan Keluarga Berencana', NULL, '2019-11-25 02:23:50', '2019-11-25 02:23:50', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (20, 'Bidang Perhubungan', NULL, '2019-11-25 02:23:59', '2019-11-25 02:23:59', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (21, 'Bidang Komunikasi dan Informatika', NULL, '2019-11-25 02:24:29', '2019-11-25 02:24:29', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (22, 'Bidang Koperasi, Usaha Kecil dan Menengah', NULL, '2019-11-25 02:24:47', '2019-11-25 02:24:47', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (23, 'Bidang Penanaman Modal', NULL, '2019-11-25 02:25:01', '2019-11-25 02:25:01', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (24, 'Bidang Kepemudaan dan Olahraga', NULL, '2019-11-25 02:25:15', '2019-11-25 02:25:15', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (25, 'Bidang Statistik', NULL, '2019-11-25 02:25:25', '2019-11-25 02:25:25', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (26, 'Bidang Persandian', NULL, '2019-11-25 02:25:33', '2019-11-25 02:25:33', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (27, 'Bidang Kebudayaan', NULL, '2019-11-25 02:25:41', '2019-11-25 02:25:41', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (28, 'Bidang Perpustakaan', NULL, '2019-11-25 02:25:49', '2019-11-25 02:25:49', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (29, 'Bidang Kearsipan', NULL, '2019-11-25 02:26:01', '2019-11-25 02:26:01', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (30, 'Bidang Kelautan dan Perikanan', NULL, '2019-11-25 02:26:12', '2019-11-25 02:26:12', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (31, 'Bidang Pariwisata', NULL, '2019-11-25 02:26:21', '2019-11-25 02:26:21', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (32, 'Bidang Pertanian', NULL, '2019-11-25 02:26:29', '2019-11-25 02:26:29', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (33, 'Bidang Kehutanan', NULL, '2019-11-25 02:26:37', '2019-11-25 02:26:37', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (34, 'Bidang Energi dan Sumber Daya Mineral', NULL, '2019-11-25 02:26:49', '2019-11-25 02:26:49', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (35, 'Bidang Perdagangan', NULL, '2019-11-25 02:26:59', '2019-11-25 02:26:59', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (36, 'Bidang Perindustrian', NULL, '2019-11-25 02:27:09', '2019-11-25 02:27:09', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (37, 'Bidang Transmigrasi', NULL, '2019-11-25 02:27:17', '2019-11-25 02:27:17', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (38, 'Politik Luar Negeri', NULL, '2020-01-30 02:03:33', '2020-01-30 02:03:33', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (39, 'Keamanan', NULL, '2020-01-30 02:03:54', '2020-01-30 02:03:54', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (40, 'Yustisi', NULL, '2020-01-30 02:04:08', '2020-01-30 02:04:08', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (41, 'Moneter dan Fiskal Nasional', NULL, '2020-01-30 02:04:22', '2020-01-30 02:04:22', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (42, 'Agama', NULL, '2020-01-30 02:04:35', '2020-01-30 02:04:35', NULL, NULL);
INSERT INTO `urusan_pemerintahan` VALUES (43, 'Pertahanan', NULL, '2020-01-30 04:17:37', '2020-01-30 04:17:37', NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` bigint(20) NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'avatar.png',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `password_reset_token`(`password_reset_token`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'G-yPulEGDEp9zo9PlMzcMOLF0KQkDj7c', '$2y$13$NnHZUMIOkbp3tU1MW7IJYuJIv8rSaHXh6es4k2r7n3jSmK8Qw4UdS', '6JrEpJDkpeZpQOtCtNlCoLFM1M3bPVPT_1602794270', 'admin@example.com', 10, 2147483647, 2147483647, 'avatar-admin.png');
INSERT INTO `user` VALUES (18, 'admin-2', 'WylLNt5LiaL4_8lfA9kdyfKlLKnYbhwV', '$2y$13$v8FWz6ew7qdBwTAsyhY4puzDLxsNmE3npad.F1p2IBWIe9R5AkdVm', NULL, 'admin2@example.com', 10, 1605651447, 2147483647, 'avatar-admin.png');
INSERT INTO `user` VALUES (10, 'pustakawan-1', 'VcmLcggvIQtEpH_w643q52YiwZUET5mn', '$2y$13$J/GMCOct8Ur3ZynT9hWhoOKmQHDvBbpTMDYrO66x/sA/yDIERooki', NULL, 'pustakawan-1@example.com', 10, 1604384587, 2147483647, 'avatar-male.png');
INSERT INTO `user` VALUES (28, 'pustakawan-2', '_QVBxpO4wST-NPiY_aJtdZQq4zV9ZR6g', '$2y$13$ZjHr5gEBAdCatzB1nrmqlOghiH19FFHwpbbDBQnFEGk0yL7aQiO46', NULL, 'pustakawan-2@example.com', 10, 1604384735, 2147483647, 'avatar-female.png');
INSERT INTO `user` VALUES (29, 'pustakawan-3', 'ub1aDRqkC0jsOLpNHjHLRRyBKVBd1GGr', '$2y$13$E2jT/NH3/srZdm/SUe9zteZrfnGrYCBBpjxuc3NGOIQNCQiaticI2', NULL, 'pustakawan-3@example.com', 10, 1604384843, 2147483647, 'avatar-female.png');

-- ----------------------------
-- Table structure for user_member
-- ----------------------------
DROP TABLE IF EXISTS `user_member`;
CREATE TABLE `user_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `password_reset_token`(`password_reset_token`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_member_profile
-- ----------------------------
DROP TABLE IF EXISTS `user_member_profile`;
CREATE TABLE `user_member_profile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birth_date` date NULL DEFAULT NULL,
  `member_type_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `member_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `postal_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `personal_id_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inst_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `member_since_date` date NULL DEFAULT NULL,
  `register_date` date NULL DEFAULT NULL,
  `expire_date` date NULL DEFAULT NULL,
  `phone_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fax_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_notes` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for visi_misi
-- ----------------------------
DROP TABLE IF EXISTS `visi_misi`;
CREATE TABLE `visi_misi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visi_misi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visi_misi
-- ----------------------------
INSERT INTO `visi_misi` VALUES (7, '<p>Jaringan Dokumentasi dan Informasi Hukum Nasional atau disingakat JDIHN adalah:</p>\r\n\r\n<ul>\r\n	<li>Wadah pendayagunaan bersama atas dokumen hukum secara tertib, terpadu, dan berkesinambungan.</li>\r\n	<li>Merupakan sarana pemberian pelayanan informasi hukum secara lengkap akurat, mudah, dan cepat</li>\r\n</ul>\r\n\r\n<p><strong>VISI</strong></p>\r\n\r\n<p>&quot;Masyarakat memperoleh kepastian hukum&quot;</p>\r\n\r\n<p><strong>MISI</strong></p>\r\n\r\n<p>&quot;Mewujudkan peraturan Perundang-Undangan yang berkualitas&quot;</p>', 1);

SET FOREIGN_KEY_CHECKS = 1;
