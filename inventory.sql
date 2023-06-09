/*
 Navicat Premium Data Transfer

 Source Server         : localhost-3006
 Source Server Type    : MySQL
 Source Server Version : 100424 (10.4.24-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : inventory

 Target Server Type    : MySQL
 Target Server Version : 100424 (10.4.24-MariaDB)
 File Encoding         : 65001

 Date: 14/06/2023 15:56:52
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
  `stok` int NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_barang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_barang
-- ----------------------------
INSERT INTO `tbl_barang` VALUES ('BRG00001', 'nama barang ahaa', 2, 2, NULL, '2023-05-20 00:00:00', NULL, NULL, NULL);
INSERT INTO `tbl_barang` VALUES ('BRG00002', 'sasas', 4, 4, NULL, '2023-05-20 00:00:00', NULL, NULL, NULL);
INSERT INTO `tbl_barang` VALUES ('BRG00003', 'Baju', 4, 2, 36, '2023-06-11 00:00:00', 16, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_group_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_group_menu`;
CREATE TABLE `tbl_group_menu`  (
  `group_id` int NOT NULL,
  `menu_id` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_group_menu
-- ----------------------------
INSERT INTO `tbl_group_menu` VALUES (1, 12);
INSERT INTO `tbl_group_menu` VALUES (1, 13);
INSERT INTO `tbl_group_menu` VALUES (1, 14);
INSERT INTO `tbl_group_menu` VALUES (1, 15);
INSERT INTO `tbl_group_menu` VALUES (1, 16);
INSERT INTO `tbl_group_menu` VALUES (2, 16);
INSERT INTO `tbl_group_menu` VALUES (2, 9);
INSERT INTO `tbl_group_menu` VALUES (2, 10);
INSERT INTO `tbl_group_menu` VALUES (2, 12);
INSERT INTO `tbl_group_menu` VALUES (2, 15);
INSERT INTO `tbl_group_menu` VALUES (3, 3);
INSERT INTO `tbl_group_menu` VALUES (3, 4);
INSERT INTO `tbl_group_menu` VALUES (3, 5);
INSERT INTO `tbl_group_menu` VALUES (3, 6);
INSERT INTO `tbl_group_menu` VALUES (3, 7);
INSERT INTO `tbl_group_menu` VALUES (3, 8);
INSERT INTO `tbl_group_menu` VALUES (3, 9);
INSERT INTO `tbl_group_menu` VALUES (3, 11);
INSERT INTO `tbl_group_menu` VALUES (3, 12);
INSERT INTO `tbl_group_menu` VALUES (3, 13);
INSERT INTO `tbl_group_menu` VALUES (3, 14);
INSERT INTO `tbl_group_menu` VALUES (3, 15);
INSERT INTO `tbl_group_menu` VALUES (3, 1);
INSERT INTO `tbl_group_menu` VALUES (3, 2);
INSERT INTO `tbl_group_menu` VALUES (3, 16);
INSERT INTO `tbl_group_menu` VALUES (3, 18);

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
INSERT INTO `tbl_group_user` VALUES (1, 'Kepala Gudang');
INSERT INTO `tbl_group_user` VALUES (2, 'Produksi');
INSERT INTO `tbl_group_user` VALUES (3, 'Gudang');

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
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `parent` int NULL DEFAULT NULL,
  `menu_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `active` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Y',
  `sort` int NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES (1, 0, 'Administrasi', 'Administrasi', 'Y', 2);
INSERT INTO `tbl_menu` VALUES (2, 1, 'Master User', 'Administrasi/Master_user', 'Y', 3);
INSERT INTO `tbl_menu` VALUES (3, 0, 'Master', 'Master', 'Y', 3);
INSERT INTO `tbl_menu` VALUES (4, 3, 'Master Bahan', 'Master/Master_barang', 'Y', 6);
INSERT INTO `tbl_menu` VALUES (5, 3, 'Master Jenis Bahan', 'Master/Master_jenis_barang', 'Y', 5);
INSERT INTO `tbl_menu` VALUES (6, 3, 'Master Satuan', 'Master/Master_satuan', 'Y', 4);
INSERT INTO `tbl_menu` VALUES (7, 3, 'Persedian cadangan', 'Master/Master_sefty_stock', 'Y', 6);
INSERT INTO `tbl_menu` VALUES (8, 3, 'Master ROP', 'Master/Master_rop', 'Y', 7);
INSERT INTO `tbl_menu` VALUES (9, 0, 'Transaksi', 'Transaksi', 'Y', 4);
INSERT INTO `tbl_menu` VALUES (10, 9, 'Bahan Masuk', 'Transaksi/Barang_masuk', 'Y', 2);
INSERT INTO `tbl_menu` VALUES (11, 9, 'Bahan Keluar', 'Transaksi/Barang_keluar', 'Y', 3);
INSERT INTO `tbl_menu` VALUES (12, 0, 'Laporan', 'Report', 'Y', 5);
INSERT INTO `tbl_menu` VALUES (13, 12, 'Laporan Bahan Masuk', 'Report/Barang_masuk', 'Y', 2);
INSERT INTO `tbl_menu` VALUES (14, 12, 'Laporan Bahan Keluar', 'Report/Barang_keluar', 'Y', 3);
INSERT INTO `tbl_menu` VALUES (15, 12, 'Laporan Bahan', 'Report/Master_barang', 'Y', 4);
INSERT INTO `tbl_menu` VALUES (16, 0, 'Dashboard', 'Dashboard', 'Y', 1);
INSERT INTO `tbl_menu` VALUES (18, 12, 'Laporan Persediaan Cadangan', 'Report/Master_sefty_stock', 'Y', 5);

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_rop
-- ----------------------------
INSERT INTO `tbl_rop` VALUES (2, '0', 7, 45, 49, 364, '2023-05-28 00:00:00', NULL, NULL, NULL);
INSERT INTO `tbl_rop` VALUES (3, '0', 2, 80, 49, 209, '2023-05-28 00:00:00', NULL, NULL, NULL);
INSERT INTO `tbl_rop` VALUES (4, '2', 10, 2, 49, 69, '2023-06-11 00:00:00', 16, NULL, NULL);

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
  `id_persediaan_cadangan` int NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jumlah_hari` int NULL DEFAULT NULL,
  `pengambilan_harian_maximum` int NULL DEFAULT NULL,
  `persediaan_cadangan` int NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_persediaan_cadangan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_sefty_stock
-- ----------------------------
INSERT INTO `tbl_sefty_stock` VALUES (1, 'BRG002', 7, 7, 49, '2023-05-28 00:00:00', NULL, NULL, NULL);
INSERT INTO `tbl_sefty_stock` VALUES (2, 'BRG00003', 7, 10, 70, '2023-06-11 00:00:00', 16, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_users
-- ----------------------------
INSERT INTO `tbl_users` VALUES (7, 'iis2', 'saa', '$2y$10$uiUfiDL7Njibko7ra7O2WORkCrLcI6pVGYal.JKd/EJaTHEwoVMTu', 'Y', NULL, 0, '2023-05-20 00:00:00', NULL);
INSERT INTO `tbl_users` VALUES (16, 'Administrator', 'Administrator', '$2y$10$cdGq/rMAK/QUiX8E7pPeaeODvByOxA1//R6tyB4IfsPuSWBwExNnS', 'Y', NULL, 1, '2023-06-11 00:00:00', NULL);
INSERT INTO `tbl_users` VALUES (17, 'Produksi', 'Produksi', '$2y$10$mu5sbm/bjKyCrgEsVAoN/uMwDwQelbG11OaP3IsTHZXtKNzCdKBpO', 'Y', NULL, 2, '2023-06-11 00:00:00', NULL);
INSERT INTO `tbl_users` VALUES (18, 'Manager', 'Manager', '$2y$10$p5X7ir54UEkscdvTKtyxvObQRKhI5B30fRtDWTY5ueoiVmvxM7Uta', 'Y', NULL, 3, '2023-06-11 00:00:00', NULL);

-- ----------------------------
-- Table structure for trans_barang_keluar
-- ----------------------------
DROP TABLE IF EXISTS `trans_barang_keluar`;
CREATE TABLE `trans_barang_keluar`  (
  `id_trans_keluar` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
INSERT INTO `trans_barang_keluar` VALUES ('TRSK-23061400001', 'BRG00003', '2023-06-14', 10, '2023-06-14 00:00:00', 18, NULL, NULL);

-- ----------------------------
-- Table structure for trans_barang_masuk
-- ----------------------------
DROP TABLE IF EXISTS `trans_barang_masuk`;
CREATE TABLE `trans_barang_masuk`  (
  `id_trans_masuk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
INSERT INTO `trans_barang_masuk` VALUES ('TRSM-2306140000', 'BRG00003', '2023-06-14', 23, '2023-06-14 00:00:00', 17, NULL, NULL);
INSERT INTO `trans_barang_masuk` VALUES ('TRSM-23061400002', 'BRG00003', '2023-06-15', 23, '2023-06-14 00:00:00', 17, NULL, NULL);

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
		tbl_barang.id_satuan = tbl_satuan.id_satuan
	left JOIN
	trans_barang_masuk
	ON 
		tbl_barang.id_barang = trans_barang_masuk.id_barang 
		
		GROUP BY tbl_barang.id_barang ;

-- ----------------------------
-- View structure for dashboard_barang_keluar_vd
-- ----------------------------
DROP VIEW IF EXISTS `dashboard_barang_keluar_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `dashboard_barang_keluar_vd` AS SELECT
	trans_barang_keluar.id_trans_keluar, 
	trans_barang_keluar.id_barang, 
DATE_FORMAT(trans_barang_keluar.tanggal_keluar,'%m')	as bulan , 
	sum(trans_barang_keluar.stok_keluar) as stok_keluar
FROM
	trans_barang_keluar 
	GROUP BY DATE_FORMAT(trans_barang_keluar.tanggal_keluar,'%m') ;

-- ----------------------------
-- View structure for dashboard_barang_masuk_vd
-- ----------------------------
DROP VIEW IF EXISTS `dashboard_barang_masuk_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `dashboard_barang_masuk_vd` AS SELECT
	trans_barang_masuk.id_trans_masuk, 
	trans_barang_masuk.id_barang, 
	DATE_FORMAT(trans_barang_masuk.tanggal_masuk,'%m') as bulan,
sum(trans_barang_masuk.stok_masuk) as  stok_masuk
FROM
	trans_barang_masuk 
	GROUP BY DATE_FORMAT(trans_barang_masuk.tanggal_masuk,'%m') ;

-- ----------------------------
-- View structure for dashboard_barang_vd
-- ----------------------------
DROP VIEW IF EXISTS `dashboard_barang_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `dashboard_barang_vd` AS SELECT
	tbl_barang.id_barang, 
	tbl_barang.nama_barang, 
	tbl_barang.stok, 
	tbl_sefty_stock.persediaan_cadangan
FROM
	tbl_barang
	INNER JOIN
	tbl_sefty_stock
	ON 
		tbl_barang.id_barang = tbl_sefty_stock.id_barang ;

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
-- View structure for sefty_stock_barang_vd
-- ----------------------------
DROP VIEW IF EXISTS `sefty_stock_barang_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `sefty_stock_barang_vd` AS SELECT
	tbl_barang.id_barang, 
	tbl_barang.nama_barang, 
	tbl_sefty_stock.persediaan_cadangan, 
	tbl_barang.id_jenis_barang, 
	tbl_jenis_barang.nama_jenis_barang, 
	tbl_barang.stok
FROM
	tbl_sefty_stock
	INNER JOIN
	tbl_barang
	ON 
		tbl_sefty_stock.id_barang = tbl_barang.id_barang
	INNER JOIN
	tbl_jenis_barang
	ON 
		tbl_barang.id_jenis_barang = tbl_jenis_barang. id_jenis_barang
	INNER JOIN
	tbl_satuan
	ON 
		tbl_barang.id_satuan = tbl_satuan.id_satuan
	left JOIN
	trans_barang_keluar
	ON 
		tbl_barang.id_barang = trans_barang_keluar.id_barang
	left JOIN
	trans_barang_masuk
	ON 
		tbl_barang.id_barang = trans_barang_masuk.id_barang
GROUP BY tbl_barang.id_barang ;

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
-- View structure for sys_menu_vd
-- ----------------------------
DROP VIEW IF EXISTS `sys_menu_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `sys_menu_vd` AS SELECT
	tbl_group_menu.group_id, 
	tbl_menu.menu_id, 
	tbl_menu.parent, 
	tbl_menu.menu_name, 
	tbl_menu.link, 
	tbl_menu.active, 
	tbl_menu.sort
FROM
	tbl_menu
	INNER JOIN
	tbl_group_menu
	ON 
		tbl_menu.menu_id = tbl_group_menu.menu_id ;

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
	tbl_users.username, 
	tbl_satuan.nama_satuan
FROM
	trans_barang_keluar
	INNER JOIN
	tbl_barang
	ON 
		trans_barang_keluar.id_barang = tbl_barang.id_barang
	INNER JOIN
	tbl_users
	ON 
		trans_barang_keluar.created_by = tbl_users.id
	INNER JOIN
	tbl_satuan
	ON 
		tbl_barang.id_satuan = tbl_satuan.id_satuan ;

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
	tbl_users.`username`,
	tbl_satuan.nama_satuan
FROM
	trans_barang_masuk
	INNER JOIN
	tbl_barang
	ON 
		trans_barang_masuk.id_barang = tbl_barang.id_barang
	INNER JOIN
	tbl_users
	ON 
		trans_barang_masuk.created_by = tbl_users.id 
		INNER JOIN
	tbl_satuan
	ON 
		tbl_barang.id_satuan = tbl_satuan.id_satuan ;

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
