/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424 (10.4.24-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : inventory

 Target Server Type    : MySQL
 Target Server Version : 100424 (10.4.24-MariaDB)
 File Encoding         : 65001

 Date: 29/05/2023 01:11:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_barang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_barang`;
CREATE TABLE `tbl_barang`  (
  `id_barang` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `nama_barang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_jenis_barang` int NULL DEFAULT NULL,
  `id_satuan` int NULL DEFAULT NULL,
  `stok` int NULL DEFAULT 0,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_barang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_barang
-- ----------------------------
INSERT INTO `tbl_barang` VALUES ('BRG00003', 'sasas', 4, 4, 33, '2023-05-20 00:00:00', NULL, NULL, NULL);
INSERT INTO `tbl_barang` VALUES ('BRG002', 'nama barang ahaa', 2, 2, 0, '2023-05-20 00:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_group_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_group_user`;
CREATE TABLE `tbl_group_user`  (
  `id_group` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_group_user
-- ----------------------------
INSERT INTO `tbl_group_user` VALUES (1, 'Administrator');
INSERT INTO `tbl_group_user` VALUES (2, 'Produksi');
INSERT INTO `tbl_group_user` VALUES (3, 'Manager');

-- ----------------------------
-- Table structure for tbl_jenis_barang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jenis_barang`;
CREATE TABLE `tbl_jenis_barang`  (
  `id_jenis_barang` int NOT NULL AUTO_INCREMENT,
  `nama_jenis_barang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_jenis_barang`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_jenis_barang
-- ----------------------------
INSERT INTO `tbl_jenis_barang` VALUES (2, 'Semen', '2023-05-20 00:00:00', NULL, NULL, NULL);
INSERT INTO `tbl_jenis_barang` VALUES (3, 'batu', '2023-05-20 00:00:00', NULL, NULL, NULL);
INSERT INTO `tbl_jenis_barang` VALUES (4, 'pewangi', '2023-05-20 00:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu`  (
  `id_menu` int NOT NULL AUTO_INCREMENT,
  `parent` int NOT NULL,
  `group_user` int NULL DEFAULT NULL,
  `name_menu` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link_menu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_rop
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rop`;
CREATE TABLE `tbl_rop`  (
  `id_rop` int NOT NULL AUTO_INCREMENT,
  `id_persediaan_cadangan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_tunggu` int NULL DEFAULT NULL,
  `permintaan_rata_rata` int NULL DEFAULT NULL,
  `persediaan_cadangan` int NULL DEFAULT NULL,
  `titik_pemesanan_kembali` int NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_rop`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_rop
-- ----------------------------
INSERT INTO `tbl_rop` VALUES (2, '0', 7, 45, 49, 364, '2023-05-28 00:00:00', NULL, NULL, NULL);
INSERT INTO `tbl_rop` VALUES (3, '0', 2, 80, 49, 209, '2023-05-28 00:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_satuan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_satuan`;
CREATE TABLE `tbl_satuan`  (
  `id_satuan` int NOT NULL AUTO_INCREMENT,
  `nama_satuan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_satuan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_satuan
-- ----------------------------
INSERT INTO `tbl_satuan` VALUES (2, 'Kilogram', '2023-05-20 00:00:00', NULL, NULL, NULL);
INSERT INTO `tbl_satuan` VALUES (4, 'Liter', '2023-05-20 00:00:00', NULL, '2023-05-20 00:00:00', NULL);

-- ----------------------------
-- Table structure for tbl_sefty_stock
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sefty_stock`;
CREATE TABLE `tbl_sefty_stock`  (
  `id_persediaan_cadangan` int NOT NULL,
  `id_barang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jumlah_hari` int NULL DEFAULT NULL,
  `pengambilan_harian_maximum` int NULL DEFAULT NULL,
  `persediaan_cadangan` int NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_persediaan_cadangan`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_sefty_stock
-- ----------------------------
INSERT INTO `tbl_sefty_stock` VALUES (0, 'BRG002', 7, 7, 49, '2023-05-28 00:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_users
-- ----------------------------
DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `active` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `group_id` int NOT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_users
-- ----------------------------
INSERT INTO `tbl_users` VALUES (7, 'iis2', 'saa', '$2y$10$uiUfiDL7Njibko7ra7O2WORkCrLcI6pVGYal.JKd/EJaTHEwoVMTu', 'Y', NULL, 0, '2023-05-20 00:00:00', NULL);
INSERT INTO `tbl_users` VALUES (10, 'produksi', 'produksi', '$2y$10$Tfno1jtWQ1a1mcyLkNU/rerCsMbwV56zmfweYAHdfmYAc.94Kfz7y', 'Y', NULL, 3, '2023-05-20 00:00:00', NULL);
INSERT INTO `tbl_users` VALUES (12, 'manajer produksi', 'manajer produksi', '$2y$10$4iw5a9oD2Gv1TJWB3sY19OgS6cGCkjYz4kkpogXw.VCEvqySSXjGu', 'Y', NULL, 2, '2023-05-20 00:00:00', NULL);
INSERT INTO `tbl_users` VALUES (13, 'kita cobalagi ya', 'iis', '$2y$10$WpLkqh/467ZgaKkF8S1mH.zKp1TAfEaolSfLfoKZSfSd1mEBMxQ7S', 'Y', NULL, 2, '2023-05-20 00:00:00', NULL);
INSERT INTO `tbl_users` VALUES (14, 'produksi2', 'produksi2', '$2y$10$udQVA0EovYCATzv8LeMz8.51hx5d3zAth0vstS8.Y1NeaG5alQhJi', 'Y', NULL, 2, '2023-05-20 00:00:00', NULL);
INSERT INTO `tbl_users` VALUES (15, 'Kitacobabaru', 'iis', '$2y$10$LftkarOvJUNvRy9NA.jMA.bjpmrFFZuU496cD.AXk0dLNaTyGvODe', 'Y', NULL, 1, '2023-05-28 00:00:00', NULL);

-- ----------------------------
-- Table structure for trans_barang_keluar
-- ----------------------------
DROP TABLE IF EXISTS `trans_barang_keluar`;
CREATE TABLE `trans_barang_keluar`  (
  `id_trans_keluar` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_barang` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_keluar` date NULL DEFAULT NULL,
  `stok_keluar` int NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_trans_keluar`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trans_barang_keluar
-- ----------------------------
INSERT INTO `trans_barang_keluar` VALUES ('TRS-23052200001', 'BRG00003', '2023-05-23', 12, '2023-05-22 00:00:00', 2, NULL, NULL);

-- ----------------------------
-- Table structure for trans_barang_masuk
-- ----------------------------
DROP TABLE IF EXISTS `trans_barang_masuk`;
CREATE TABLE `trans_barang_masuk`  (
  `id_trans_masuk` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_barang` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_masuk` date NULL DEFAULT NULL,
  `stok_masuk` int NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_trans_masuk`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trans_barang_masuk
-- ----------------------------
INSERT INTO `trans_barang_masuk` VALUES ('TRS-23052000001', 'BRG00003', '2023-05-20', 6, '2023-05-20 00:00:00', NULL, NULL, NULL);
INSERT INTO `trans_barang_masuk` VALUES ('TRS-23052200002', 'BRG00003', '2023-05-22', 2, '2023-05-22 00:00:00', 2, '2023-05-22 00:00:00', NULL);
INSERT INTO `trans_barang_masuk` VALUES ('TRS-23052200003', 'BRG00003', '2023-05-23', 12, '2023-05-22 00:00:00', 2, '2023-05-22 00:00:00', NULL);

-- ----------------------------
-- View structure for barang_vd
-- ----------------------------
DROP VIEW IF EXISTS `barang_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `barang_vd` AS SELECT
	tbl_barang.id_barang, 
	tbl_barang.nama_barang, 
	tbl_barang.stok, 
	tbl_jenis_barang.nama_jenis_barang, 
	tbl_satuan.nama_satuan, 
	tbl_barang.id_jenis_barang, 
	tbl_barang.id_satuan
FROM
	tbl_barang
	INNER JOIN
	tbl_jenis_barang
	ON 
		tbl_barang.id_jenis_barang = tbl_jenis_barang.id_jenis_barang
	INNER JOIN
	tbl_satuan
	ON 
		tbl_barang.id_satuan = tbl_satuan.id_satuan ;

-- ----------------------------
-- View structure for rop_vd
-- ----------------------------
DROP VIEW IF EXISTS `rop_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `rop_vd` AS SELECT
	tbl_rop.id_rop, 
	tbl_rop.id_persediaan_cadangan, 
	tbl_rop.waktu_tunggu, 
	tbl_rop.permintaan_rata_rata, 
	tbl_rop.persediaan_cadangan, 
	tbl_rop.titik_pemesanan_kembali, 
	tbl_barang.nama_barang, 
	tbl_satuan.nama_satuan
FROM
	tbl_rop
	INNER JOIN
	tbl_sefty_stock
	ON 
		tbl_rop.id_persediaan_cadangan = tbl_sefty_stock.id_persediaan_cadangan
	INNER JOIN
	tbl_barang
	ON 
		tbl_sefty_stock.id_barang = tbl_barang.id_barang
	INNER JOIN
	tbl_satuan
	ON 
		tbl_barang.id_satuan = tbl_satuan.id_satuan ;

-- ----------------------------
-- View structure for sefty_stock_vd
-- ----------------------------
DROP VIEW IF EXISTS `sefty_stock_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `sefty_stock_vd` AS SELECT
tbl_sefty_stock.id_persediaan_cadangan, 
	tbl_sefty_stock.jumlah_hari, 
	tbl_sefty_stock.pengambilan_harian_maximum, 
	tbl_sefty_stock.persediaan_cadangan, 
	tbl_sefty_stock.id_barang, 
	tbl_barang.nama_barang,
	tbl_satuan.nama_satuan
FROM
	tbl_sefty_stock
	INNER JOIN
	tbl_barang
	ON 
		tbl_sefty_stock.id_barang = tbl_barang.id_barang 
		join tbl_satuan on tbl_satuan.id_satuan = tbl_barang.id_satuan ;

-- ----------------------------
-- View structure for trans_barang_keluar_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_barang_keluar_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_barang_keluar_vd` AS SELECT
	trans_barang_keluar.stok_keluar AS stok_keluar_current,
	trans_barang_keluar.id_trans_keluar,
	trans_barang_keluar.id_barang,
	trans_barang_keluar.tanggal_keluar,
	trans_barang_keluar.stok_keluar,
	trans_barang_keluar.created_by,
	tbl_barang.nama_barang,
	tbl_users.`username` 
FROM
	trans_barang_keluar
	INNER JOIN tbl_barang ON trans_barang_keluar.id_barang = tbl_barang.id_barang
	INNER JOIN tbl_users ON trans_barang_keluar.created_by = tbl_users.id ;

-- ----------------------------
-- View structure for trans_barang_masuk_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_barang_masuk_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_barang_masuk_vd` AS SELECT
trans_barang_masuk.stok_masuk as stok_masuk_current, 
	trans_barang_masuk.id_trans_masuk, 
	trans_barang_masuk.id_barang, 
	trans_barang_masuk.tanggal_masuk, 
	trans_barang_masuk.stok_masuk, 
	trans_barang_masuk.created_by, 
	tbl_barang.nama_barang,
	tbl_users.`username`
FROM
	trans_barang_masuk
	INNER JOIN
	tbl_barang
	ON 
		trans_barang_masuk.id_barang = tbl_barang.id_barang
	INNER JOIN
	tbl_users
	ON 
		trans_barang_masuk.created_by = tbl_users.id ;

-- ----------------------------
-- View structure for user_vd
-- ----------------------------
DROP VIEW IF EXISTS `user_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `user_vd` AS SELECT
tbl_users.id, 
tbl_users.group_id,
	tbl_group_user.group_name, 
	tbl_users.username, 
	tbl_users.`name`, 
	tbl_users.`password`, 
	tbl_users.active, 
	tbl_users.picture
FROM
	tbl_users
	INNER JOIN
	tbl_group_user
	ON 
		tbl_users.group_id = tbl_group_user.id_group ;

SET FOREIGN_KEY_CHECKS = 1;
