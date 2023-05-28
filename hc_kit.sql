/*
 Navicat Premium Data Transfer

 Source Server         : hc_kit_live
 Source Server Type    : MySQL
 Source Server Version : 100132 (10.1.32-MariaDB)
 Source Host           : 10.0.1.99:3306
 Source Schema         : hc_kit

 Target Server Type    : MySQL
 Target Server Version : 100132 (10.1.32-MariaDB)
 File Encoding         : 65001

 Date: 22/05/2023 14:04:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for approval_auth
-- ----------------------------
DROP TABLE IF EXISTS `approval_auth`;
CREATE TABLE `approval_auth`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cc` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jobcode` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `urutan` int NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `cc`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of approval_auth
-- ----------------------------

-- ----------------------------
-- Table structure for approval_map
-- ----------------------------
DROP TABLE IF EXISTS `approval_map`;
CREATE TABLE `approval_map`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik_atasan` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_menu` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `idDoc` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `approve` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `approve_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of approval_map
-- ----------------------------

-- ----------------------------
-- Table structure for mas_agama
-- ----------------------------
DROP TABLE IF EXISTS `mas_agama`;
CREATE TABLE `mas_agama`  (
  `id` int NOT NULL,
  `religion_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mas_agama
-- ----------------------------
INSERT INTO `mas_agama` VALUES (1, 'Islam');
INSERT INTO `mas_agama` VALUES (2, 'Kristen Protestan');
INSERT INTO `mas_agama` VALUES (4, 'Hindu');
INSERT INTO `mas_agama` VALUES (5, 'Buddha');

-- ----------------------------
-- Table structure for mas_divisi
-- ----------------------------
DROP TABLE IF EXISTS `mas_divisi`;
CREATE TABLE `mas_divisi`  (
  `dept_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dept_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dept_under` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dept_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mas_divisi
-- ----------------------------
INSERT INTO `mas_divisi` VALUES ('21100', 'President Director', '');
INSERT INTO `mas_divisi` VALUES ('21110', 'Corporate Secretary', '21100');
INSERT INTO `mas_divisi` VALUES ('21120', 'Internal Audit (SPI) & GCG', '21100');
INSERT INTO `mas_divisi` VALUES ('21130', 'Sales Division', '21100');
INSERT INTO `mas_divisi` VALUES ('21140', 'SAP Division', '21100');
INSERT INTO `mas_divisi` VALUES ('21150', 'Business Development Unit', '21100');
INSERT INTO `mas_divisi` VALUES ('21200', 'Director', '21100');
INSERT INTO `mas_divisi` VALUES ('21210', 'Assistant to Director Corporate Performance', '21200');
INSERT INTO `mas_divisi` VALUES ('21220', 'Assistant to Director Project Performance', '21200');
INSERT INTO `mas_divisi` VALUES ('21230', 'Trading & Procurement Departement', '21200');
INSERT INTO `mas_divisi` VALUES ('21240', 'IT Infrastructure Division', '21200');
INSERT INTO `mas_divisi` VALUES ('21250', 'Digital Transformation Division', '21200');
INSERT INTO `mas_divisi` VALUES ('21260', 'Finance Division', '21200');
INSERT INTO `mas_divisi` VALUES ('21270', 'Human Capital & System Management Division', '21200');

-- ----------------------------
-- Table structure for mas_grade
-- ----------------------------
DROP TABLE IF EXISTS `mas_grade`;
CREATE TABLE `mas_grade`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `grade` int NULL DEFAULT NULL,
  `jobcode` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mas_grade
-- ----------------------------
INSERT INTO `mas_grade` VALUES (1, 1, NULL);
INSERT INTO `mas_grade` VALUES (2, 2, NULL);
INSERT INTO `mas_grade` VALUES (3, 3, NULL);
INSERT INTO `mas_grade` VALUES (4, 4, NULL);
INSERT INTO `mas_grade` VALUES (5, 5, NULL);
INSERT INTO `mas_grade` VALUES (6, 6, NULL);
INSERT INTO `mas_grade` VALUES (7, 7, NULL);
INSERT INTO `mas_grade` VALUES (8, 8, NULL);
INSERT INTO `mas_grade` VALUES (9, 9, NULL);
INSERT INTO `mas_grade` VALUES (10, 10, NULL);
INSERT INTO `mas_grade` VALUES (11, 11, NULL);
INSERT INTO `mas_grade` VALUES (12, 12, NULL);
INSERT INTO `mas_grade` VALUES (13, 13, NULL);

-- ----------------------------
-- Table structure for mas_group
-- ----------------------------
DROP TABLE IF EXISTS `mas_group`;
CREATE TABLE `mas_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mas_group
-- ----------------------------
INSERT INTO `mas_group` VALUES (1, 'Administrator');
INSERT INTO `mas_group` VALUES (2, 'Karyawan');
INSERT INTO `mas_group` VALUES (3, 'Admin HC');

-- ----------------------------
-- Table structure for mas_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `mas_jabatan`;
CREATE TABLE `mas_jabatan`  (
  `job_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `job_detail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `job_under` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`job_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mas_jabatan
-- ----------------------------
INSERT INTO `mas_jabatan` VALUES ('L0', 'Direktur                                          ', NULL);
INSERT INTO `mas_jabatan` VALUES ('L1', 'General Manager                                   ', NULL);
INSERT INTO `mas_jabatan` VALUES ('L2', 'Manager                                           ', NULL);
INSERT INTO `mas_jabatan` VALUES ('L3', 'Superintendent                                    ', NULL);
INSERT INTO `mas_jabatan` VALUES ('L4', 'Supervisor                                        ', NULL);
INSERT INTO `mas_jabatan` VALUES ('L5', 'Foreman', NULL);
INSERT INTO `mas_jabatan` VALUES ('L6', 'Pelaksana', NULL);

-- ----------------------------
-- Table structure for mas_jabatan2
-- ----------------------------
DROP TABLE IF EXISTS `mas_jabatan2`;
CREATE TABLE `mas_jabatan2`  (
  `job_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `job_detail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`job_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mas_jabatan2
-- ----------------------------
INSERT INTO `mas_jabatan2` VALUES ('J1', 'Account Manager');
INSERT INTO `mas_jabatan2` VALUES ('J10', 'Chief Business Development');
INSERT INTO `mas_jabatan2` VALUES ('J11', 'Chief Corporate Secretary');
INSERT INTO `mas_jabatan2` VALUES ('J12', 'Chief Internal Audit & GCG');
INSERT INTO `mas_jabatan2` VALUES ('J13', 'Commissioner');
INSERT INTO `mas_jabatan2` VALUES ('J14', 'Data Engineer');
INSERT INTO `mas_jabatan2` VALUES ('J15', 'Developer');
INSERT INTO `mas_jabatan2` VALUES ('J16', 'Digital Transformation Division Manager');
INSERT INTO `mas_jabatan2` VALUES ('J17', 'Direktur /Director');
INSERT INTO `mas_jabatan2` VALUES ('J18', 'Direktur Utama / President Director');
INSERT INTO `mas_jabatan2` VALUES ('J19', 'EUD Tecnician');
INSERT INTO `mas_jabatan2` VALUES ('J2', 'Account Receivable Officer');
INSERT INTO `mas_jabatan2` VALUES ('J20', 'Finance Division Manager');
INSERT INTO `mas_jabatan2` VALUES ('J21', 'Functional');
INSERT INTO `mas_jabatan2` VALUES ('J22', 'Funding Operation & Cashier');
INSERT INTO `mas_jabatan2` VALUES ('J23', 'General Affair & HSE Officer');
INSERT INTO `mas_jabatan2` VALUES ('J24', 'Human Capital  & SM Division Manager');
INSERT INTO `mas_jabatan2` VALUES ('J25', 'Human Capital Management Officer');
INSERT INTO `mas_jabatan2` VALUES ('J26', 'Humas & Protokoler Officer');
INSERT INTO `mas_jabatan2` VALUES ('J27', 'Information & Call Center Officer');
INSERT INTO `mas_jabatan2` VALUES ('J28', 'IT Infrastucture Division Manager');
INSERT INTO `mas_jabatan2` VALUES ('J29', 'Legal Officer');
INSERT INTO `mas_jabatan2` VALUES ('J3', 'Account Receivable Officer');
INSERT INTO `mas_jabatan2` VALUES ('J30', 'Marketing');
INSERT INTO `mas_jabatan2` VALUES ('J31', 'Middle BASIS');
INSERT INTO `mas_jabatan2` VALUES ('J32', 'Middle Functional');
INSERT INTO `mas_jabatan2` VALUES ('J33', 'Network Engineer');
INSERT INTO `mas_jabatan2` VALUES ('J34', 'Programmer');
INSERT INTO `mas_jabatan2` VALUES ('J35', 'Project Accountant & Tax');
INSERT INTO `mas_jabatan2` VALUES ('J36', 'Sales Manager Division');
INSERT INTO `mas_jabatan2` VALUES ('J37', 'SAP Division Manager');
INSERT INTO `mas_jabatan2` VALUES ('J38', 'Secretary');
INSERT INTO `mas_jabatan2` VALUES ('J39', 'Secretary to BOC');
INSERT INTO `mas_jabatan2` VALUES ('J4', 'Administrator');
INSERT INTO `mas_jabatan2` VALUES ('J40', 'Senior ABAPer');
INSERT INTO `mas_jabatan2` VALUES ('J41', 'Service Desk');
INSERT INTO `mas_jabatan2` VALUES ('J42', 'Staff Setingkat Foreman');
INSERT INTO `mas_jabatan2` VALUES ('J43', 'Staff Setingkat Pelaksana');
INSERT INTO `mas_jabatan2` VALUES ('J44', 'Staff Setingkat Supervisor');
INSERT INTO `mas_jabatan2` VALUES ('J45', 'System Administrator');
INSERT INTO `mas_jabatan2` VALUES ('J46', 'System Analist');
INSERT INTO `mas_jabatan2` VALUES ('J47', 'System Management & Risk Mgt Officer');
INSERT INTO `mas_jabatan2` VALUES ('J48', 'Trading & Procurement Group Leader');
INSERT INTO `mas_jabatan2` VALUES ('J49', 'Trainee FAB');
INSERT INTO `mas_jabatan2` VALUES ('J5', 'AEI Engineer');
INSERT INTO `mas_jabatan2` VALUES ('J50', 'Project Manager');
INSERT INTO `mas_jabatan2` VALUES ('J6', 'Assistant to Director');
INSERT INTO `mas_jabatan2` VALUES ('J7', 'Associate Change Management');
INSERT INTO `mas_jabatan2` VALUES ('J8', 'Associate Functional');
INSERT INTO `mas_jabatan2` VALUES ('J9', 'Cataloging & Procurement Officer');

-- ----------------------------
-- Table structure for mas_jadwal_reg
-- ----------------------------
DROP TABLE IF EXISTS `mas_jadwal_reg`;
CREATE TABLE `mas_jadwal_reg`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipe` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `periode` year NOT NULL,
  `bulan` int NOT NULL,
  `day1` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day2` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day3` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day4` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day5` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day6` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day7` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day8` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day9` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day10` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day11` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day12` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day13` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day14` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day15` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day16` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day17` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day18` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day19` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day20` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day21` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day22` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day23` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day24` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day25` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day26` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day27` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day28` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day29` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day30` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `day31` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mas_jadwal_reg
-- ----------------------------

-- ----------------------------
-- Table structure for mas_jenis_kelamin
-- ----------------------------
DROP TABLE IF EXISTS `mas_jenis_kelamin`;
CREATE TABLE `mas_jenis_kelamin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `jenis_kelamin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mas_jenis_kelamin
-- ----------------------------
INSERT INTO `mas_jenis_kelamin` VALUES (1, 'Laki-laki');
INSERT INTO `mas_jenis_kelamin` VALUES (2, 'Perempuan');

-- ----------------------------
-- Table structure for mas_jurusan
-- ----------------------------
DROP TABLE IF EXISTS `mas_jurusan`;
CREATE TABLE `mas_jurusan`  (
  `id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_jurusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_jenjang` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mas_jurusan
-- ----------------------------
INSERT INTO `mas_jurusan` VALUES ('11001', 'ILMU KEDOKTERAN', 12);
INSERT INTO `mas_jurusan` VALUES ('11002', 'ILMU KEDOKTERAN DASAR', 12);
INSERT INTO `mas_jurusan` VALUES ('11006', 'BIOMEDIK', 12);
INSERT INTO `mas_jurusan` VALUES ('11101', 'ILMU KEDOKTERAN DASAR', 9);
INSERT INTO `mas_jurusan` VALUES ('11102', 'ILMU KEDOKTERAN KELUARGA', 9);
INSERT INTO `mas_jurusan` VALUES ('11103', 'ILMU KEDOKTERAN KLINIS', 9);
INSERT INTO `mas_jurusan` VALUES ('11104', 'ILMU KEDOKTERAN TROPIS', 9);
INSERT INTO `mas_jurusan` VALUES ('11105', 'IMUNOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('11106', 'BIOMEDIK', 9);
INSERT INTO `mas_jurusan` VALUES ('11107', 'PULMONOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('11108', 'ERGONOMI FISIOLOGI KERJA', 9);
INSERT INTO `mas_jurusan` VALUES ('11109', 'PENDIDIKAN DOKTER', 9);
INSERT INTO `mas_jurusan` VALUES ('11122', 'ILMU KESEHATAN OLAH RAGA', 9);
INSERT INTO `mas_jurusan` VALUES ('11123', 'TEKNOLOGI BIOMEDIS', 9);
INSERT INTO `mas_jurusan` VALUES ('11124', 'ILMU FORENSIK', 9);
INSERT INTO `mas_jurusan` VALUES ('11201', 'PENDIDIKAN DOKTER', 8);
INSERT INTO `mas_jurusan` VALUES ('11202', 'FISIOTERAPI', 8);
INSERT INTO `mas_jurusan` VALUES ('11301', 'FISIOTERAPI', 7);
INSERT INTO `mas_jurusan` VALUES ('11306', 'PENGOBATAN TRADISIONAL CINA', 7);
INSERT INTO `mas_jurusan` VALUES ('11401', 'FISIOTERAPI', 6);
INSERT INTO `mas_jurusan` VALUES ('11402', 'RADIODIAGNOSTIK DAN RADIOTERAPI', 6);
INSERT INTO `mas_jurusan` VALUES ('11403', 'OKUPASI TERAPI', 6);
INSERT INTO `mas_jurusan` VALUES ('11404', 'REFRAKSI OPTISI', 6);
INSERT INTO `mas_jurusan` VALUES ('11406', 'PENGOBATAN TRADISIONAL', 6);
INSERT INTO `mas_jurusan` VALUES ('11407', 'AKUPUNKTUR', 6);
INSERT INTO `mas_jurusan` VALUES ('11408', 'TEKNIK KARDIOVASCULER', 6);
INSERT INTO `mas_jurusan` VALUES ('11409', 'MALARIOLOGI', 6);
INSERT INTO `mas_jurusan` VALUES ('11608', 'TEKNIK TRANSFUSI DARAH', 4);
INSERT INTO `mas_jurusan` VALUES ('11701', 'ILMU PENYAKIT MATA', 10);
INSERT INTO `mas_jurusan` VALUES ('11702', 'ILMU PENYAKIT DALAM', 10);
INSERT INTO `mas_jurusan` VALUES ('11703', 'ILMU PENYAKIT SYARAF', 10);
INSERT INTO `mas_jurusan` VALUES ('11704', 'ILMU PENYAKIT KULIT DAN KELAMIN', 10);
INSERT INTO `mas_jurusan` VALUES ('11705', 'ILMU PENYAKIT THT', 10);
INSERT INTO `mas_jurusan` VALUES ('11706', 'ILMU ANESTESI', 10);
INSERT INTO `mas_jurusan` VALUES ('11707', 'ILMU BEDAH', 10);
INSERT INTO `mas_jurusan` VALUES ('11708', 'ILMU KEBIDANAN DAN PENYAKIT KANDUNGAN', 10);
INSERT INTO `mas_jurusan` VALUES ('11709', 'ILMU PENYAKIT PARU', 10);
INSERT INTO `mas_jurusan` VALUES ('11710', 'ILMU KEDOKTERAN FORENSIK', 10);
INSERT INTO `mas_jurusan` VALUES ('11711', 'ILMU KESEHATAN ANAK', 10);
INSERT INTO `mas_jurusan` VALUES ('11712', 'ILMU BEDAH ORTOPAEDI', 10);
INSERT INTO `mas_jurusan` VALUES ('11713', 'ILMU BEDAH UROLOGI', 10);
INSERT INTO `mas_jurusan` VALUES ('11714', 'ILMU BEDAH PLASTIK', 10);
INSERT INTO `mas_jurusan` VALUES ('11715', 'ILMU PENYAKIT JANTUNG', 10);
INSERT INTO `mas_jurusan` VALUES ('11717', 'ILMU BEDAH ANAK', 10);
INSERT INTO `mas_jurusan` VALUES ('11718', 'ILMU PATOLOGI ANATOMI', 10);
INSERT INTO `mas_jurusan` VALUES ('11719', 'ILMU PATOLOGI KLINIK', 10);
INSERT INTO `mas_jurusan` VALUES ('11720', 'ILMU KEDOKTERAN NUKLIR', 10);
INSERT INTO `mas_jurusan` VALUES ('11721', 'ILMU KEDOKTERAN FISIK DAN REHABILITASI', 10);
INSERT INTO `mas_jurusan` VALUES ('11722', 'ILMU KEDOKTERAN OLAHRAGA', 10);
INSERT INTO `mas_jurusan` VALUES ('11723', 'RADIOLOGI', 10);
INSERT INTO `mas_jurusan` VALUES ('11724', 'PSIKIATRI', 10);
INSERT INTO `mas_jurusan` VALUES ('11725', 'MIKROBIOLOGI KLINIK', 10);
INSERT INTO `mas_jurusan` VALUES ('11726', 'FARMAKOLOGI KLINIK', 10);
INSERT INTO `mas_jurusan` VALUES ('11727', 'ILMU KEDOKTERAN OKUPASI', 10);
INSERT INTO `mas_jurusan` VALUES ('11728', 'ORTHOPAEDIK DAN TRAUMATOLOGI', 10);
INSERT INTO `mas_jurusan` VALUES ('11729', 'ILMU BEDAH SYARAF', 10);
INSERT INTO `mas_jurusan` VALUES ('11730', 'ILMU KEDOKTERAN KLINIS', 10);
INSERT INTO `mas_jurusan` VALUES ('11731', 'BEDAH TORAK DAN KARDIOVASKULER', 10);
INSERT INTO `mas_jurusan` VALUES ('11802', 'ILMU PENYAKIT DALAM', 11);
INSERT INTO `mas_jurusan` VALUES ('12001', 'ILMU KEDOKTERAN GIGI', 12);
INSERT INTO `mas_jurusan` VALUES ('12101', 'ILMU KEDOKTERAN GIGI', 9);
INSERT INTO `mas_jurusan` VALUES ('12102', 'ILMU KEDOKTERAN GIGI DASAR', 9);
INSERT INTO `mas_jurusan` VALUES ('12103', 'ILMU KEDOKTERAN GIGI KOMUNITAS', 9);
INSERT INTO `mas_jurusan` VALUES ('12201', 'PENDIDIKAN DOKTER GIGI', 8);
INSERT INTO `mas_jurusan` VALUES ('12401', 'TEKNIK GIGI', 6);
INSERT INTO `mas_jurusan` VALUES ('12701', 'ILMU BEDAH MULUT', 10);
INSERT INTO `mas_jurusan` VALUES ('12702', 'ILMU PENYAKIT MULUT', 10);
INSERT INTO `mas_jurusan` VALUES ('12703', 'ILMU KONSERVASI GIGI', 10);
INSERT INTO `mas_jurusan` VALUES ('12704', 'ILMU KESEHATAN GIGI ANAK', 10);
INSERT INTO `mas_jurusan` VALUES ('12705', 'PERIODONSIA', 10);
INSERT INTO `mas_jurusan` VALUES ('12706', 'ORTODONSIA', 10);
INSERT INTO `mas_jurusan` VALUES ('12707', 'PROSTODONSIA', 10);
INSERT INTO `mas_jurusan` VALUES ('13001', 'ILMU KESEHATAN MASYARAKAT', 12);
INSERT INTO `mas_jurusan` VALUES ('13011', 'ILMU GIZI', 12);
INSERT INTO `mas_jurusan` VALUES ('13021', 'EPIDEMIOLOGI', 12);
INSERT INTO `mas_jurusan` VALUES ('13101', 'ILMU KESEHATAN MASYARAKAT', 9);
INSERT INTO `mas_jurusan` VALUES ('13111', 'ILMU GIZI', 9);
INSERT INTO `mas_jurusan` VALUES ('13121', 'EPIDEMIOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('13122', 'KESEHATAN REPRODUKSI', 9);
INSERT INTO `mas_jurusan` VALUES ('13131', 'PROMOSI KESEHATAN', 9);
INSERT INTO `mas_jurusan` VALUES ('13141', 'KESEHATAN DAN KESELAMATAN KERJA', 9);
INSERT INTO `mas_jurusan` VALUES ('13151', 'KESEHATAN LINGKUNGAN', 9);
INSERT INTO `mas_jurusan` VALUES ('13161', 'ADMINISTRASI RUMAH SAKIT', 9);
INSERT INTO `mas_jurusan` VALUES ('13163', 'ADMINISTRASI KEBIJAKAN KESEHATAN', 9);
INSERT INTO `mas_jurusan` VALUES ('13201', 'KESEHATAN MASYARAKAT', 8);
INSERT INTO `mas_jurusan` VALUES ('13211', 'ILMU GIZI', 8);
INSERT INTO `mas_jurusan` VALUES ('13241', 'KESEHATAN DAN KESELAMATAN KERJA', 8);
INSERT INTO `mas_jurusan` VALUES ('13251', 'KESEHATAN LINGKUNGAN', 8);
INSERT INTO `mas_jurusan` VALUES ('13261', 'ADMINISTRASI RUMAH SAKIT', 8);
INSERT INTO `mas_jurusan` VALUES ('13341', 'KESEHATAN DAN KESELAMATAN KERJA', 7);
INSERT INTO `mas_jurusan` VALUES ('13353', 'ANALIS KESEHATAN', 7);
INSERT INTO `mas_jurusan` VALUES ('13411', 'GIZI', 6);
INSERT INTO `mas_jurusan` VALUES ('13421', 'EPIDEMIOLOGI', 6);
INSERT INTO `mas_jurusan` VALUES ('13431', 'PROMOSI DAN PERILAKU KESEHATAN', 6);
INSERT INTO `mas_jurusan` VALUES ('13441', 'HIPERKES DAN KESELAMATAN KERJA', 6);
INSERT INTO `mas_jurusan` VALUES ('13451', 'KESEHATAN LINGKUNGAN', 6);
INSERT INTO `mas_jurusan` VALUES ('13452', 'ANALIS LINGKUNGAN', 6);
INSERT INTO `mas_jurusan` VALUES ('13453', 'ANALIS KESEHATAN', 6);
INSERT INTO `mas_jurusan` VALUES ('13461', 'ADMINISTRASI RUMAH SAKIT', 6);
INSERT INTO `mas_jurusan` VALUES ('13462', 'PEREKAM DAN INFORMASI KESEHATAN', 6);
INSERT INTO `mas_jurusan` VALUES ('14001', 'ILMU KEPERAWATAN', 12);
INSERT INTO `mas_jurusan` VALUES ('14101', 'ILMU KEPERAWATAN', 9);
INSERT INTO `mas_jurusan` VALUES ('14201', 'ILMU KEPERAWATAN', 8);
INSERT INTO `mas_jurusan` VALUES ('14301', 'PERAWAT PENDIDIK', 7);
INSERT INTO `mas_jurusan` VALUES ('14401', 'KEPERAWATAN', 6);
INSERT INTO `mas_jurusan` VALUES ('14701', 'ILMU KEPERAWATAN', 10);
INSERT INTO `mas_jurusan` VALUES ('15101', 'KEBIDANAN', 9);
INSERT INTO `mas_jurusan` VALUES ('15201', 'KEBIDANAN', 8);
INSERT INTO `mas_jurusan` VALUES ('15301', 'BIDAN PENDIDIK', 7);
INSERT INTO `mas_jurusan` VALUES ('15401', 'KEBIDANAN', 6);
INSERT INTO `mas_jurusan` VALUES ('20001', 'ILMU TEKNIK ELEKTRO', 12);
INSERT INTO `mas_jurusan` VALUES ('20002', 'OPTO ELEKTRONIKA LASER', 12);
INSERT INTO `mas_jurusan` VALUES ('20101', 'TEKNIK ELEKTRO', 9);
INSERT INTO `mas_jurusan` VALUES ('20102', 'OPTO ELEKTRONIKA LASER', 9);
INSERT INTO `mas_jurusan` VALUES ('20103', 'INSTRUMENTASI DAN KONTROL', 9);
INSERT INTO `mas_jurusan` VALUES ('20201', 'TEKNIK ELEKTRO', 8);
INSERT INTO `mas_jurusan` VALUES ('20301', 'TEKNIK ELEKTRONIKA', 7);
INSERT INTO `mas_jurusan` VALUES ('20302', 'TEKNIK TELEKOMUNIKASI', 7);
INSERT INTO `mas_jurusan` VALUES ('20303', 'TEKNIK LISTRIK', 7);
INSERT INTO `mas_jurusan` VALUES ('20304', 'TEKNIK TELEKOMUNIKASI NIRKABEL', 7);
INSERT INTO `mas_jurusan` VALUES ('20401', 'TEKNIK ELEKTRONIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('20402', 'TEKNIK TELEKOMUNIKASI', 6);
INSERT INTO `mas_jurusan` VALUES ('20403', 'TEKNIK LISTRIK', 6);
INSERT INTO `mas_jurusan` VALUES ('20501', 'ELEKTRONIKA', 5);
INSERT INTO `mas_jurusan` VALUES ('20601', 'ELEKTRONIKA', 4);
INSERT INTO `mas_jurusan` VALUES ('20602', 'TELEKOMUNIKASI', 4);
INSERT INTO `mas_jurusan` VALUES ('20603', 'TEKNIK LISTRIK', 4);
INSERT INTO `mas_jurusan` VALUES ('21001', 'ILMU TEKNIK MESIN', 12);
INSERT INTO `mas_jurusan` VALUES ('21101', 'TEKNIK MESIN', 9);
INSERT INTO `mas_jurusan` VALUES ('21201', 'TEKNIK MESIN', 8);
INSERT INTO `mas_jurusan` VALUES ('21301', 'TEKNIK MESIN PRODUKSI DAN PERAWATAN', 7);
INSERT INTO `mas_jurusan` VALUES ('21303', 'TEKNIK OTOMOTIF ELEKTRONIK', 7);
INSERT INTO `mas_jurusan` VALUES ('21306', 'TEKNIK KONSERVASI KONVERSI ENERGI', 7);
INSERT INTO `mas_jurusan` VALUES ('21307', 'TEKNIK MANUFAKTUR', 7);
INSERT INTO `mas_jurusan` VALUES ('21312', 'TEKNIK MEKATRONIKA', 7);
INSERT INTO `mas_jurusan` VALUES ('21401', 'TEKNIK MESIN', 6);
INSERT INTO `mas_jurusan` VALUES ('21402', 'MESIN INDUSTRI', 6);
INSERT INTO `mas_jurusan` VALUES ('21403', 'MESIN OTOMOTIF', 6);
INSERT INTO `mas_jurusan` VALUES ('21404', 'MESIN PERKAKAS', 6);
INSERT INTO `mas_jurusan` VALUES ('21405', 'TEKNIK PENDINGIN DAN TATA UDARA', 6);
INSERT INTO `mas_jurusan` VALUES ('21406', 'TEKNIK KONVERSI ENERGI', 6);
INSERT INTO `mas_jurusan` VALUES ('21407', 'TEKNIK MANUFAKTUR', 6);
INSERT INTO `mas_jurusan` VALUES ('21408', 'PERAWATAN DAN PERBAIKAN MESIN', 6);
INSERT INTO `mas_jurusan` VALUES ('21409', 'PERANCANGAN MEKANIK', 6);
INSERT INTO `mas_jurusan` VALUES ('21410', 'PENGECORAN LOGAM', 6);
INSERT INTO `mas_jurusan` VALUES ('21411', 'TEKNIK PERANCANGAN MANUFAKTUR', 6);
INSERT INTO `mas_jurusan` VALUES ('21412', 'TEKNIK MEKATRONIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('21413', 'ALAT BERAT', 6);
INSERT INTO `mas_jurusan` VALUES ('21414', 'POLA PENGECORAN', 6);
INSERT INTO `mas_jurusan` VALUES ('21501', 'TEKNIK MESIN', 5);
INSERT INTO `mas_jurusan` VALUES ('21601', 'TEKNIK MESIN', 4);
INSERT INTO `mas_jurusan` VALUES ('22001', 'ILMU TEKNIK SIPIL', 12);
INSERT INTO `mas_jurusan` VALUES ('22101', 'TEKNIK SIPIL', 9);
INSERT INTO `mas_jurusan` VALUES ('22102', 'SISTEM DAN TEKNIK JALAN RAYA', 9);
INSERT INTO `mas_jurusan` VALUES ('22201', 'TEKNIK SIPIL', 8);
INSERT INTO `mas_jurusan` VALUES ('22301', 'PERANCANGAN JALAN DAN JEMBATAN', 7);
INSERT INTO `mas_jurusan` VALUES ('22302', 'MANAJEMEN REKAYASA KONSTRUKSI', 7);
INSERT INTO `mas_jurusan` VALUES ('22303', 'TEKNIK PERUMAHAN DAN PEMUKIMAN', 7);
INSERT INTO `mas_jurusan` VALUES ('22304', 'TEKNIK BANGUNAN RAWA', 7);
INSERT INTO `mas_jurusan` VALUES ('22401', 'TEKNIK SIPIL', 6);
INSERT INTO `mas_jurusan` VALUES ('22402', 'TEKNIK KONSTRUKSI SIPIL', 6);
INSERT INTO `mas_jurusan` VALUES ('22403', 'TEKNIK KONSTRUKSI GEDUNG', 6);
INSERT INTO `mas_jurusan` VALUES ('22404', 'TEKNIK SIPIL BANGUNAN AIR', 6);
INSERT INTO `mas_jurusan` VALUES ('22405', 'TEKNIK SIPIL BANGUNAN TRANSPORTASI', 6);
INSERT INTO `mas_jurusan` VALUES ('22406', 'TEKNIK JALAN RAYA', 6);
INSERT INTO `mas_jurusan` VALUES ('22503', 'KONSTRUKSI GEDUNG', 5);
INSERT INTO `mas_jurusan` VALUES ('23001', 'ILMU ARSITEKTUR', 12);
INSERT INTO `mas_jurusan` VALUES ('23101', 'ARSITEKTUR', 9);
INSERT INTO `mas_jurusan` VALUES ('23201', 'ARSITEKTUR', 8);
INSERT INTO `mas_jurusan` VALUES ('23401', 'ARSITEKTUR', 6);
INSERT INTO `mas_jurusan` VALUES ('23601', 'ARSITEKTUR', 4);
INSERT INTO `mas_jurusan` VALUES ('24001', 'ILMU TEKNIK KIMIA', 12);
INSERT INTO `mas_jurusan` VALUES ('24101', 'TEKNIK KIMIA', 9);
INSERT INTO `mas_jurusan` VALUES ('24201', 'TEKNIK KIMIA', 8);
INSERT INTO `mas_jurusan` VALUES ('24301', 'TEKNOLOGI KIMIA INDUSTRI', 7);
INSERT INTO `mas_jurusan` VALUES ('24401', 'TEKNIK KIMIA', 6);
INSERT INTO `mas_jurusan` VALUES ('24402', 'ANALIS KIMIA', 6);
INSERT INTO `mas_jurusan` VALUES ('24403', 'PETRO DAN OLEO KIMIA', 6);
INSERT INTO `mas_jurusan` VALUES ('24404', 'TEKNIK INDUSTRI TEKSTIL', 6);
INSERT INTO `mas_jurusan` VALUES ('24604', 'TEKNIK TEKSTIL', 4);
INSERT INTO `mas_jurusan` VALUES ('25001', 'ILMU TEKNIK LINGKUNGAN', 12);
INSERT INTO `mas_jurusan` VALUES ('25101', 'TEKNIK LINGKUNGAN', 9);
INSERT INTO `mas_jurusan` VALUES ('25102', 'ILMU LINGKUNGAN', 9);
INSERT INTO `mas_jurusan` VALUES ('25103', 'TEKNIK AIR TANAH', 9);
INSERT INTO `mas_jurusan` VALUES ('25201', 'TEKNIK LINGKUNGAN', 8);
INSERT INTO `mas_jurusan` VALUES ('25401', 'TEKNIK LINGKUNGAN', 6);
INSERT INTO `mas_jurusan` VALUES ('26001', 'TEKNIK INDUSTRI', 12);
INSERT INTO `mas_jurusan` VALUES ('26101', 'TEKNIK INDUSTRI', 9);
INSERT INTO `mas_jurusan` VALUES ('26201', 'TEKNIK INDUSTRI', 8);
INSERT INTO `mas_jurusan` VALUES ('26302', 'TEKNIK MANAJEMEN PABRIK', 7);
INSERT INTO `mas_jurusan` VALUES ('26303', 'TEKNOLOGI MEKANIK INDUSTRI', 7);
INSERT INTO `mas_jurusan` VALUES ('26401', 'TEKNIK INDUSTRI', 6);
INSERT INTO `mas_jurusan` VALUES ('26402', 'MANAJEMEN INDUSTRI', 6);
INSERT INTO `mas_jurusan` VALUES ('27001', 'TEKNIK METALURGI', 12);
INSERT INTO `mas_jurusan` VALUES ('27101', 'TEKNIK METALURGI', 9);
INSERT INTO `mas_jurusan` VALUES ('27201', 'TEKNIK METALURGI', 8);
INSERT INTO `mas_jurusan` VALUES ('27401', 'METALURGI', 6);
INSERT INTO `mas_jurusan` VALUES ('28001', 'ILMU TEKNIK MATERIAL', 12);
INSERT INTO `mas_jurusan` VALUES ('28101', 'TEKNIK MATERIAL', 9);
INSERT INTO `mas_jurusan` VALUES ('28201', 'TEKNIK MATERIAL', 8);
INSERT INTO `mas_jurusan` VALUES ('28401', 'MATERIAL', 6);
INSERT INTO `mas_jurusan` VALUES ('29001', 'ILMU TEKNIK GEODESI', 12);
INSERT INTO `mas_jurusan` VALUES ('29101', 'TEKNIK GEODESI', 9);
INSERT INTO `mas_jurusan` VALUES ('29201', 'TEKNIK GEODESI', 8);
INSERT INTO `mas_jurusan` VALUES ('29401', 'TEKNIK GEODESI', 6);
INSERT INTO `mas_jurusan` VALUES ('30001', 'ILMU FISIKA TEKNIK', 12);
INSERT INTO `mas_jurusan` VALUES ('30101', 'FISIKA TEKNIK', 9);
INSERT INTO `mas_jurusan` VALUES ('30201', 'FISIKA TEKNIK', 8);
INSERT INTO `mas_jurusan` VALUES ('30401', 'FISIKA INSTRUMENTASI', 6);
INSERT INTO `mas_jurusan` VALUES ('31001', 'ILMU TEKNIK PERTAMBANGAN', 12);
INSERT INTO `mas_jurusan` VALUES ('31101', 'TEKNIK PERTAMBANGAN', 9);
INSERT INTO `mas_jurusan` VALUES ('31201', 'TEKNIK PERTAMBANGAN', 8);
INSERT INTO `mas_jurusan` VALUES ('31401', 'TEKNIK PERTAMBANGAN', 6);
INSERT INTO `mas_jurusan` VALUES ('32001', 'ILMU TEKNIK PERMINYAKAN', 12);
INSERT INTO `mas_jurusan` VALUES ('32101', 'TEKNIK PERMINYAKAN', 9);
INSERT INTO `mas_jurusan` VALUES ('32201', 'TEKNIK PERMINYAKAN', 8);
INSERT INTO `mas_jurusan` VALUES ('32304', 'TEKNIK KESEHATAN DAN KESELAMATAN KERJA', 7);
INSERT INTO `mas_jurusan` VALUES ('32401', 'EKSPLORASI MINYAK DAN GAS', 6);
INSERT INTO `mas_jurusan` VALUES ('32402', 'PENGOLAHAN MINYAK DAN GAS', 6);
INSERT INTO `mas_jurusan` VALUES ('32403', 'LABORATORIUM MINYAK DAN GAS', 6);
INSERT INTO `mas_jurusan` VALUES ('32404', 'KESELAMATAN KERJA DAN PENCEGAHAN KEBAKARAN', 6);
INSERT INTO `mas_jurusan` VALUES ('32405', 'INSTRMENTASI DAN ELEKTRONIKA MIGAS', 6);
INSERT INTO `mas_jurusan` VALUES ('32604', 'FIRE AND SAFETY', 4);
INSERT INTO `mas_jurusan` VALUES ('33001', 'ILMU GEOFISIKA', 12);
INSERT INTO `mas_jurusan` VALUES ('33101', 'TEKNIK GEOFISIKA', 9);
INSERT INTO `mas_jurusan` VALUES ('33201', 'TEKNIK GEOFISIKA', 8);
INSERT INTO `mas_jurusan` VALUES ('33202', 'METEOROLOGI', 8);
INSERT INTO `mas_jurusan` VALUES ('34001', 'ILMU TEKNIK GEOLOGI', 12);
INSERT INTO `mas_jurusan` VALUES ('34002', 'SAINS KEBUMIAN', 12);
INSERT INTO `mas_jurusan` VALUES ('34101', 'TEKNIK GEOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('34102', 'SAINS KEBUMIAN', 9);
INSERT INTO `mas_jurusan` VALUES ('34201', 'TEKNIK GEOLOGI', 8);
INSERT INTO `mas_jurusan` VALUES ('34401', 'GEOLOGI TERAPAN', 6);
INSERT INTO `mas_jurusan` VALUES ('35001', 'ILMU PERENCANAAN WILAYAH DAN KOTA', 12);
INSERT INTO `mas_jurusan` VALUES ('35101', 'PERENCANAAN WILAYAH DAN KOTA', 9);
INSERT INTO `mas_jurusan` VALUES ('35102', 'RANCANG KOTA', 9);
INSERT INTO `mas_jurusan` VALUES ('35201', 'PERENCANAAN WILAYAH DAN KOTA', 8);
INSERT INTO `mas_jurusan` VALUES ('35401', 'SURVAI DAN PEMETAAN', 6);
INSERT INTO `mas_jurusan` VALUES ('35601', 'SURVAI DAN PEMETAAN', 4);
INSERT INTO `mas_jurusan` VALUES ('36001', 'ILMU TEKNIK PERKAPALAN', 12);
INSERT INTO `mas_jurusan` VALUES ('36101', 'TEKNIK PERKAPALAN', 9);
INSERT INTO `mas_jurusan` VALUES ('36201', 'TEKNIK PERKAPALAN', 8);
INSERT INTO `mas_jurusan` VALUES ('36202', 'TEKNIK SISTEM PERKAPALAN', 8);
INSERT INTO `mas_jurusan` VALUES ('36401', 'TEKNIK PERANCANGAN DAN KONSTRUKSI KAPAL', 6);
INSERT INTO `mas_jurusan` VALUES ('36402', 'TEKNIK PERMESINAN KAPAL', 6);
INSERT INTO `mas_jurusan` VALUES ('36403', 'TEKNIK BANGUNAN KAPAL', 6);
INSERT INTO `mas_jurusan` VALUES ('36404', 'TEKNIK KELISTRIKAN KAPAL', 6);
INSERT INTO `mas_jurusan` VALUES ('37001', 'ILMU DAN REKAYASA NUKLIR', 12);
INSERT INTO `mas_jurusan` VALUES ('37101', 'ILMU DAN REKAYASA NUKLIR', 9);
INSERT INTO `mas_jurusan` VALUES ('37201', 'TEKNIK NUKLIR', 8);
INSERT INTO `mas_jurusan` VALUES ('38001', 'ILMU TEKNIK KELAUTAN', 12);
INSERT INTO `mas_jurusan` VALUES ('38101', 'TEKNIK KELAUTAN', 9);
INSERT INTO `mas_jurusan` VALUES ('38201', 'TEKNIK KELAUTAN', 8);
INSERT INTO `mas_jurusan` VALUES ('38401', 'TEKNIK KELAUTAN', 6);
INSERT INTO `mas_jurusan` VALUES ('39001', 'ILMU TRANSPORTASI', 12);
INSERT INTO `mas_jurusan` VALUES ('39101', 'TRANSPORTASI', 9);
INSERT INTO `mas_jurusan` VALUES ('39201', 'TRANSPORTASI', 8);
INSERT INTO `mas_jurusan` VALUES ('39301', 'TRANSPORTASI', 7);
INSERT INTO `mas_jurusan` VALUES ('39401', 'TRANSPORTASI', 6);
INSERT INTO `mas_jurusan` VALUES ('40001', 'ILMU TEKNIK PENERBANGAN', 12);
INSERT INTO `mas_jurusan` VALUES ('40101', 'TEKNIK PENERBANGAN', 9);
INSERT INTO `mas_jurusan` VALUES ('40201', 'TEKNIK PENERBANGAN', 8);
INSERT INTO `mas_jurusan` VALUES ('40401', 'LISTRIK PESAWAT', 6);
INSERT INTO `mas_jurusan` VALUES ('40402', 'AERONAUTIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('40403', 'RANGKA PESAWAT', 6);
INSERT INTO `mas_jurusan` VALUES ('40404', 'MOTOR PESAWAT', 6);
INSERT INTO `mas_jurusan` VALUES ('40405', 'AVIONIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('40406', 'TEKNIK & MANAJEMEN LOGISTIK PENERBANGAN', 6);
INSERT INTO `mas_jurusan` VALUES ('41001', 'ILMU TEKNIK PERTANIAN', 12);
INSERT INTO `mas_jurusan` VALUES ('41011', 'TEKNOLOGI INDUSTRI PERTANIAN', 12);
INSERT INTO `mas_jurusan` VALUES ('41021', 'ILMU DAN TEKNOLOGI PANGAN', 12);
INSERT INTO `mas_jurusan` VALUES ('41031', 'TEKNOLOGI HASIL PERTANIAN', 12);
INSERT INTO `mas_jurusan` VALUES ('41101', 'TEKNIK PERTANIAN', 9);
INSERT INTO `mas_jurusan` VALUES ('41111', 'TEKNOLOGI INDUSTRI PERTANIAN', 9);
INSERT INTO `mas_jurusan` VALUES ('41121', 'ILMU DAN TEKNOLOGI PANGAN', 9);
INSERT INTO `mas_jurusan` VALUES ('41131', 'TEKNOLOGI HASIL PERTANIAN', 9);
INSERT INTO `mas_jurusan` VALUES ('41133', 'TEKNOLOGI HASIL PERKEBUNAN', 9);
INSERT INTO `mas_jurusan` VALUES ('41201', 'TEKNIK PERTANIAN', 8);
INSERT INTO `mas_jurusan` VALUES ('41211', 'TEKNOLOGI INDUSTRI PERTANIAN', 8);
INSERT INTO `mas_jurusan` VALUES ('41221', 'TEKNOLOGI PANGAN', 8);
INSERT INTO `mas_jurusan` VALUES ('41231', 'TEKNOLOGI HASIL PERTANIAN', 8);
INSERT INTO `mas_jurusan` VALUES ('41234', 'TEKNOLOGI PENGOLAHAN HASIL PERIKANAN', 8);
INSERT INTO `mas_jurusan` VALUES ('41311', 'TEKNOLOGI INDUSTRI PERTANIAN', 7);
INSERT INTO `mas_jurusan` VALUES ('41331', 'TEKNOLOGI PRODUKSI PERTANIAN', 7);
INSERT INTO `mas_jurusan` VALUES ('41333', 'TEKNOLOGI PENGOLAHAN HASIL PERKEBUNAN', 7);
INSERT INTO `mas_jurusan` VALUES ('41401', 'MESIN DAN PERALATAN PERTANIAN', 6);
INSERT INTO `mas_jurusan` VALUES ('41402', 'TATA AIR PERTANIAN', 6);
INSERT INTO `mas_jurusan` VALUES ('41411', 'TEKNOLOGI INDUSTRI PERTANIAN', 6);
INSERT INTO `mas_jurusan` VALUES ('41421', 'TEKNOLOGI PANGAN', 6);
INSERT INTO `mas_jurusan` VALUES ('41431', 'TEKNOLOGI PRODUKSI PERTANIAN', 6);
INSERT INTO `mas_jurusan` VALUES ('41432', 'TEKNOLOGI PRODUKSI HORTIKULTURA', 6);
INSERT INTO `mas_jurusan` VALUES ('41433', 'TEKNOLOGI PRODUKSI PERKEBUNAN', 6);
INSERT INTO `mas_jurusan` VALUES ('41434', 'TEKNOLOGI PRODUKSI PERIKANAN', 6);
INSERT INTO `mas_jurusan` VALUES ('44001', 'ILMU MATEMATIKA DAN ILMU PENGETAHUAN ALAM', 12);
INSERT INTO `mas_jurusan` VALUES ('44002', 'ILMU MATEMATIKA', 12);
INSERT INTO `mas_jurusan` VALUES ('44101', 'MATEMATIKA', 9);
INSERT INTO `mas_jurusan` VALUES ('44201', 'MATEMATIKA', 8);
INSERT INTO `mas_jurusan` VALUES ('44401', 'MATEMATIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('44601', 'MATEMATIKA', 4);
INSERT INTO `mas_jurusan` VALUES ('45001', 'ILMU FISIKA', 12);
INSERT INTO `mas_jurusan` VALUES ('45101', 'FISIKA', 9);
INSERT INTO `mas_jurusan` VALUES ('45201', 'FISIKA', 8);
INSERT INTO `mas_jurusan` VALUES ('45401', 'FISIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('46001', 'ILMU BIOLOGI', 12);
INSERT INTO `mas_jurusan` VALUES ('46101', 'BIOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('46201', 'BIOLOGI', 8);
INSERT INTO `mas_jurusan` VALUES ('46202', 'MIKROBIOLOGI', 8);
INSERT INTO `mas_jurusan` VALUES ('46401', 'BIOLOGI', 6);
INSERT INTO `mas_jurusan` VALUES ('46601', 'LINGKUNGAN', 4);
INSERT INTO `mas_jurusan` VALUES ('47001', 'ILMU KIMIA', 12);
INSERT INTO `mas_jurusan` VALUES ('47101', 'KIMIA', 9);
INSERT INTO `mas_jurusan` VALUES ('47201', 'KIMIA', 8);
INSERT INTO `mas_jurusan` VALUES ('47401', 'KIMIA', 6);
INSERT INTO `mas_jurusan` VALUES ('48001', 'ILMU FARMASI', 12);
INSERT INTO `mas_jurusan` VALUES ('48101', 'FARMASI', 9);
INSERT INTO `mas_jurusan` VALUES ('48201', 'FARMASI', 8);
INSERT INTO `mas_jurusan` VALUES ('48202', 'FARMASI KLINIK DAN KOMUNITAS', 8);
INSERT INTO `mas_jurusan` VALUES ('48401', 'FARMASI', 6);
INSERT INTO `mas_jurusan` VALUES ('48402', 'ANALIS FARMASI DAN MAKANAN', 6);
INSERT INTO `mas_jurusan` VALUES ('48701', 'FARMASI', 10);
INSERT INTO `mas_jurusan` VALUES ('49001', 'ILMU STATISTIK', 12);
INSERT INTO `mas_jurusan` VALUES ('49101', 'STATISTIKA', 9);
INSERT INTO `mas_jurusan` VALUES ('49201', 'STATISTIKA', 8);
INSERT INTO `mas_jurusan` VALUES ('49401', 'STATISTIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('50001', 'ILMU ASTRONOMI', 12);
INSERT INTO `mas_jurusan` VALUES ('50101', 'ASTRONOMI', 9);
INSERT INTO `mas_jurusan` VALUES ('50201', 'ASTRONOMI', 8);
INSERT INTO `mas_jurusan` VALUES ('51001', 'ILMU GEOGRAFI', 12);
INSERT INTO `mas_jurusan` VALUES ('51101', 'GEOGRAFI', 9);
INSERT INTO `mas_jurusan` VALUES ('51111', 'PENGINDERAAN JAUH', 9);
INSERT INTO `mas_jurusan` VALUES ('51201', 'GEOGRAFI', 8);
INSERT INTO `mas_jurusan` VALUES ('51211', 'KARTOGRAFI DAN PENGINDERAAN JAUH', 8);
INSERT INTO `mas_jurusan` VALUES ('51401', 'GEOGRAFI', 6);
INSERT INTO `mas_jurusan` VALUES ('51411', 'PENGINDERAAN JAUH DAN SIG', 6);
INSERT INTO `mas_jurusan` VALUES ('54001', 'ILMU PERTANIAN', 12);
INSERT INTO `mas_jurusan` VALUES ('54002', 'ILMU EKONOMI PERTANIAN', 12);
INSERT INTO `mas_jurusan` VALUES ('54003', 'PENYULUHAN DAN KOMUNIKASI PEMBANGUNAN PERTANIAN', 12);
INSERT INTO `mas_jurusan` VALUES ('54004', 'AGRONOMI', 12);
INSERT INTO `mas_jurusan` VALUES ('54005', 'ILMU TANAH', 12);
INSERT INTO `mas_jurusan` VALUES ('54010', 'AGROKLIMATOLOGI', 12);
INSERT INTO `mas_jurusan` VALUES ('54031', 'ILMU TERNAK', 12);
INSERT INTO `mas_jurusan` VALUES ('54032', 'BIOLOGI REPRODUKSI', 12);
INSERT INTO `mas_jurusan` VALUES ('54041', 'ILMU KELAUTAN', 12);
INSERT INTO `mas_jurusan` VALUES ('54042', 'MANAJEMEN SUMBER DAYA PERAIRAN', 12);
INSERT INTO `mas_jurusan` VALUES ('54043', 'ILMU PERAIRAN', 12);
INSERT INTO `mas_jurusan` VALUES ('54051', 'ILMU KEHUTANAN', 12);
INSERT INTO `mas_jurusan` VALUES ('54101', 'AGRIBISNIS', 9);
INSERT INTO `mas_jurusan` VALUES ('54102', 'EKONOMI PERTANIAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54103', 'PENYULUHAN DAN KOMUNIKASI PEMBANGUNAN PERTANIAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54104', 'AGRONOMI', 9);
INSERT INTO `mas_jurusan` VALUES ('54105', 'ILMU TANAH', 9);
INSERT INTO `mas_jurusan` VALUES ('54106', 'ILMU HAMA DAN PENYAKIT TUMBUHAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54107', 'PEMULIAAN TANAMAN DAN BIOTEKNOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('54108', 'ILMU PERTANIAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54110', 'AGROKLIMATOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('54131', 'PETERNAKAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54132', 'BIOLOGI REPRODUKSI', 9);
INSERT INTO `mas_jurusan` VALUES ('54141', 'ILMU KELAUTAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54142', 'SUMBER DAYA PERAIRAN PESISIR DAN KELAUTAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54143', 'BUDIDAYA PERAIRAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54145', 'AGRIBISNIS PERIKANAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54146', 'MANAJEMEN SUMBER DAYA PERAIRAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54147', 'ILMU PERAIRAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54151', 'ILMU KEHUTANAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54153', 'KONSERVASI SUMBER DAYA LAHAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54157', 'MANAJEMEN PERKEBUNAN', 9);
INSERT INTO `mas_jurusan` VALUES ('54162', 'KESEHATAN MASYARAKAT VETERINER', 9);
INSERT INTO `mas_jurusan` VALUES ('54201', 'AGRIBISNIS', 8);
INSERT INTO `mas_jurusan` VALUES ('54211', 'AGROTEKNOLOGI', 8);
INSERT INTO `mas_jurusan` VALUES ('54231', 'PETERNAKAN', 8);
INSERT INTO `mas_jurusan` VALUES ('54241', 'ILMU KELAUTAN', 8);
INSERT INTO `mas_jurusan` VALUES ('54242', 'MANAJEMEN SUMBER DAYA PERAIRAN', 8);
INSERT INTO `mas_jurusan` VALUES ('54243', 'BUDIDAYA PERAIRAN', 8);
INSERT INTO `mas_jurusan` VALUES ('54244', 'TEKNOLOGI HASIL PERIKANAN', 8);
INSERT INTO `mas_jurusan` VALUES ('54245', 'AGROBISNIS PERIKANAN', 8);
INSERT INTO `mas_jurusan` VALUES ('54246', 'PEMANFAATAN SUMBER DAYA PERIKANAN', 8);
INSERT INTO `mas_jurusan` VALUES ('54251', 'KEHUTANAN', 8);
INSERT INTO `mas_jurusan` VALUES ('54261', 'PENDIDIKAN DOKTER HEWAN', 8);
INSERT INTO `mas_jurusan` VALUES ('54271', 'BUDIDAYA PERKEBUNAN', 8);
INSERT INTO `mas_jurusan` VALUES ('54312', 'TEKNOLOGI INDUSTRI HORTIKULTURA', 7);
INSERT INTO `mas_jurusan` VALUES ('54331', 'TEKNOLOGI PAKAN TERNAK', 7);
INSERT INTO `mas_jurusan` VALUES ('54357', 'MANAJEMEN PERKEBUNAN', 7);
INSERT INTO `mas_jurusan` VALUES ('54371', 'BUDIDAYA PERKEBUNAN', 7);
INSERT INTO `mas_jurusan` VALUES ('54401', 'SOSIAL EKONOMI PERTANIAN (AGROBISNIS)', 6);
INSERT INTO `mas_jurusan` VALUES ('54403', 'PENYULUHAN DAN KOMUNIKASI PERTANIAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54411', 'AGRONOMI', 6);
INSERT INTO `mas_jurusan` VALUES ('54412', 'HORTIKULTURA', 6);
INSERT INTO `mas_jurusan` VALUES ('54413', 'PEMULIAAN TANAMAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54414', 'ARSITEKTUR LANSEKAP', 6);
INSERT INTO `mas_jurusan` VALUES ('54415', 'ILMU TANAH', 6);
INSERT INTO `mas_jurusan` VALUES ('54416', 'BUDIDAYA PERTANIAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54417', 'HAMA DAN PENYAKIT TUMBUHAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54431', 'NUTRISI DAN MAKANAN TERNAK', 6);
INSERT INTO `mas_jurusan` VALUES ('54432', 'PRODUKSI TERNAK', 6);
INSERT INTO `mas_jurusan` VALUES ('54433', 'BUDIDAYA TERNAK', 6);
INSERT INTO `mas_jurusan` VALUES ('54434', 'TEKNOLOGI HASIL TERNAK', 6);
INSERT INTO `mas_jurusan` VALUES ('54435', 'SOSIAL EKONOMI PETERNAKAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54442', 'SUMBER DAYA PERAIRAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54443', 'BUDIDAYA PERAIRAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54444', 'TEKNOLOGI HASIL PERIKANAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54445', 'AGRIBISNIS PERIKANAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54446', 'PEMANFAATAN SUMBER DAYA PERIKANAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54451', 'TEKNOLOGI HASIL HUTAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54452', 'BUDIDAYA HUTAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54453', 'KONSERVASI SUMBER DAYA HUTAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54454', 'MANAJEMEN HUTAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54457', 'MANAJEMEN PERKEBUNAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54461', 'KESEHATAN HEWAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54471', 'BUDIDAYA TANAMAN PERKEBUNAN', 6);
INSERT INTO `mas_jurusan` VALUES ('54533', 'AGRIBISNIS PETERNAKAN', 5);
INSERT INTO `mas_jurusan` VALUES ('54534', 'TEKNOLOGI HASIL TERNAK', 5);
INSERT INTO `mas_jurusan` VALUES ('54555', 'PENYULUHAN KEHUTANAN', 5);
INSERT INTO `mas_jurusan` VALUES ('55001', 'ILMU KOMPUTER', 12);
INSERT INTO `mas_jurusan` VALUES ('55101', 'TEKNIK INFORMATIKA', 9);
INSERT INTO `mas_jurusan` VALUES ('55201', 'TEKNIK INFORMATIKA', 8);
INSERT INTO `mas_jurusan` VALUES ('55301', 'TEKNIK INFORMATIKA', 7);
INSERT INTO `mas_jurusan` VALUES ('55401', 'TEKNIK INFORMATIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('55601', 'TEKNIK INFORMATIKA', 4);
INSERT INTO `mas_jurusan` VALUES ('56101', 'SISTEM KOMPUTER', 9);
INSERT INTO `mas_jurusan` VALUES ('56201', 'SISTEM KOMPUTER', 8);
INSERT INTO `mas_jurusan` VALUES ('56301', 'TEKNIK KOMPUTER', 7);
INSERT INTO `mas_jurusan` VALUES ('56401', 'TEKNIK KOMPUTER', 6);
INSERT INTO `mas_jurusan` VALUES ('56501', 'TEKNIK KOMPUTER', 5);
INSERT INTO `mas_jurusan` VALUES ('56601', 'TEKNIK KOMPUTER', 4);
INSERT INTO `mas_jurusan` VALUES ('57101', 'SISTEM INFORMASI', 9);
INSERT INTO `mas_jurusan` VALUES ('57201', 'SISTEM INFORMASI', 8);
INSERT INTO `mas_jurusan` VALUES ('57301', 'MANAJEMEN INFORMATIKA', 7);
INSERT INTO `mas_jurusan` VALUES ('57302', 'KOMPUTERISASI AKUNTANSI', 7);
INSERT INTO `mas_jurusan` VALUES ('57401', 'MANAJEMEN INFORMATIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('57402', 'KOMPUTERISASI AKUNTANSI', 6);
INSERT INTO `mas_jurusan` VALUES ('57501', 'MANAJEMEN INFORMATIKA', 5);
INSERT INTO `mas_jurusan` VALUES ('57502', 'KOMPUTERISASI AKUNTANSI', 5);
INSERT INTO `mas_jurusan` VALUES ('57601', 'MANAJEMEN INFORMATIKA', 4);
INSERT INTO `mas_jurusan` VALUES ('57602', 'KOMPUTERISASI AKUNTANSI', 4);
INSERT INTO `mas_jurusan` VALUES ('60001', 'ILMU EKONOMI', 12);
INSERT INTO `mas_jurusan` VALUES ('60101', 'ILMU EKONOMI', 9);
INSERT INTO `mas_jurusan` VALUES ('60201', 'EKONOMI PEMBANGUNAN', 8);
INSERT INTO `mas_jurusan` VALUES ('61001', 'ILMU MANAJEMEN', 12);
INSERT INTO `mas_jurusan` VALUES ('61101', 'MANAJEMEN', 9);
INSERT INTO `mas_jurusan` VALUES ('61201', 'MANAJEMEN', 8);
INSERT INTO `mas_jurusan` VALUES ('61304', 'MANAJEMEN PEMASARAN', 7);
INSERT INTO `mas_jurusan` VALUES ('61306', 'KEUANGAN DAN PERBANKAN', 7);
INSERT INTO `mas_jurusan` VALUES ('61307', 'MANAJEMEN ASET', 7);
INSERT INTO `mas_jurusan` VALUES ('61401', 'MANAJEMEN ADMINISTRASI', 6);
INSERT INTO `mas_jurusan` VALUES ('61402', 'MANAJEMEN PERDAGANGAN', 6);
INSERT INTO `mas_jurusan` VALUES ('61403', 'MANAJEMEN PERPAJAKAN', 6);
INSERT INTO `mas_jurusan` VALUES ('61404', 'MANAJEMEN PEMASARAN', 6);
INSERT INTO `mas_jurusan` VALUES ('61405', 'MANAJEMEN PERUSAHAAN', 6);
INSERT INTO `mas_jurusan` VALUES ('61406', 'KEUANGAN DAN PERBANKAN', 6);
INSERT INTO `mas_jurusan` VALUES ('61407', 'MANAJEMEN TRANSPORTASI LAUT', 6);
INSERT INTO `mas_jurusan` VALUES ('61408', 'MANAJEMEN TRANSPORTASI UDARA', 6);
INSERT INTO `mas_jurusan` VALUES ('61501', 'MANAJEMEN ADMINISTRASI', 5);
INSERT INTO `mas_jurusan` VALUES ('61504', 'MANAJEMEN PEMASARAN', 5);
INSERT INTO `mas_jurusan` VALUES ('61505', 'MANAJEMEN PERUSAHAAN', 5);
INSERT INTO `mas_jurusan` VALUES ('61506', 'KEUANGAN DAN PERBANKAN', 5);
INSERT INTO `mas_jurusan` VALUES ('61601', 'MANAJEMEN ADMINISTRASI', 4);
INSERT INTO `mas_jurusan` VALUES ('61602', 'MANAJEMEN PERDAGANGAN', 4);
INSERT INTO `mas_jurusan` VALUES ('61603', 'MANAJEMEN PERPAJAKAN', 4);
INSERT INTO `mas_jurusan` VALUES ('61604', 'MANAJEMEN PEMASARAN', 4);
INSERT INTO `mas_jurusan` VALUES ('61605', 'MANAJEMEN PERUSAHAAN', 4);
INSERT INTO `mas_jurusan` VALUES ('61606', 'KEUANGAN DAN PERBANKAN', 4);
INSERT INTO `mas_jurusan` VALUES ('62001', 'ILMU AKUNTANSI', 12);
INSERT INTO `mas_jurusan` VALUES ('62101', 'AKUNTANSI', 9);
INSERT INTO `mas_jurusan` VALUES ('62201', 'AKUNTANSI', 8);
INSERT INTO `mas_jurusan` VALUES ('62301', 'AKUNTANSI', 7);
INSERT INTO `mas_jurusan` VALUES ('62401', 'AKUNTANSI', 6);
INSERT INTO `mas_jurusan` VALUES ('62501', 'AKUNTANSI', 5);
INSERT INTO `mas_jurusan` VALUES ('62601', 'AKUNTANSI', 4);
INSERT INTO `mas_jurusan` VALUES ('63001', 'ILMU ADMINISTRASI', 12);
INSERT INTO `mas_jurusan` VALUES ('63101', 'ILMU ADMINISTRASI NEGARA', 9);
INSERT INTO `mas_jurusan` VALUES ('63111', 'ILMU ADMINISTRASI NIAGA', 9);
INSERT INTO `mas_jurusan` VALUES ('63201', 'ILMU ADMINISTRASI NEGARA', 8);
INSERT INTO `mas_jurusan` VALUES ('63211', 'ILMU ADMINISTRASI NIAGA', 8);
INSERT INTO `mas_jurusan` VALUES ('63221', 'ILMU ADMINISTRASI PERPAJAKAN', 8);
INSERT INTO `mas_jurusan` VALUES ('63301', 'ADMINISTRASI NEGARA', 7);
INSERT INTO `mas_jurusan` VALUES ('63311', 'ADMINISTRASI BISNIS', 7);
INSERT INTO `mas_jurusan` VALUES ('63312', 'KESEKRETARIATAN', 7);
INSERT INTO `mas_jurusan` VALUES ('63401', 'ADMINISTRASI NEGARA', 6);
INSERT INTO `mas_jurusan` VALUES ('63411', 'ADMINISTRASI BISNIS', 6);
INSERT INTO `mas_jurusan` VALUES ('63412', 'SEKRETARI', 6);
INSERT INTO `mas_jurusan` VALUES ('63413', 'ADMINISTRASI KEUANGAN', 6);
INSERT INTO `mas_jurusan` VALUES ('63414', 'ADMINISTRASI LOGISTIK', 6);
INSERT INTO `mas_jurusan` VALUES ('63421', 'ADMINISTRASI PERPAJAKAN', 6);
INSERT INTO `mas_jurusan` VALUES ('63501', 'ADMINISTRASI NEGARA', 5);
INSERT INTO `mas_jurusan` VALUES ('63511', 'ADMINISTRASI NIAGA', 5);
INSERT INTO `mas_jurusan` VALUES ('63512', 'KESEKRETARIATAN', 5);
INSERT INTO `mas_jurusan` VALUES ('63521', 'PERPAJAKAN', 5);
INSERT INTO `mas_jurusan` VALUES ('63611', 'ADMINISTRASI BISNIS', 4);
INSERT INTO `mas_jurusan` VALUES ('63612', 'SEKRETARI', 4);
INSERT INTO `mas_jurusan` VALUES ('63621', 'PERPAJAKAN', 4);
INSERT INTO `mas_jurusan` VALUES ('64101', 'ILMU HUBUNGAN INTERNASIONAL', 9);
INSERT INTO `mas_jurusan` VALUES ('64201', 'HUBUNGAN INTERNASIONAL', 8);
INSERT INTO `mas_jurusan` VALUES ('64401', 'HUBUNGAN INTERNASIONAL', 6);
INSERT INTO `mas_jurusan` VALUES ('65001', 'ILMU PEMERINTAHAN', 12);
INSERT INTO `mas_jurusan` VALUES ('65101', 'ILMU PEMERINTAHAN', 9);
INSERT INTO `mas_jurusan` VALUES ('65201', 'ILMU PEMERINTAHAN', 8);
INSERT INTO `mas_jurusan` VALUES ('65301', 'ADMINISTRASI PEMERINTAHAN', 7);
INSERT INTO `mas_jurusan` VALUES ('65401', 'ADMINISTRASI PEMERINTAHAN', 6);
INSERT INTO `mas_jurusan` VALUES ('66001', 'KRIMINOLOGI', 12);
INSERT INTO `mas_jurusan` VALUES ('66101', 'KRIMINOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('66201', 'KRIMINOLOGI', 8);
INSERT INTO `mas_jurusan` VALUES ('67001', 'ILMU POLITIK', 12);
INSERT INTO `mas_jurusan` VALUES ('67101', 'ILMU POLITIK', 9);
INSERT INTO `mas_jurusan` VALUES ('67201', 'ILMU POLITIK', 8);
INSERT INTO `mas_jurusan` VALUES ('68001', 'ILMU SOSIAL', 12);
INSERT INTO `mas_jurusan` VALUES ('68101', 'ILMU SOSIAL', 9);
INSERT INTO `mas_jurusan` VALUES ('68201', 'ILMU SOSIATRI', 8);
INSERT INTO `mas_jurusan` VALUES ('68401', 'PEMBANGUNAN MASYARAKAT DESA', 6);
INSERT INTO `mas_jurusan` VALUES ('69001', 'ILMU SOSIOLOGI', 12);
INSERT INTO `mas_jurusan` VALUES ('69101', 'SOSIOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('69201', 'SOSIOLOGI', 8);
INSERT INTO `mas_jurusan` VALUES ('70001', 'ILMU KOMUNIKASI', 12);
INSERT INTO `mas_jurusan` VALUES ('70101', 'ILMU KOMUNIKASI', 9);
INSERT INTO `mas_jurusan` VALUES ('70201', 'ILMU KOMUNIKASI', 8);
INSERT INTO `mas_jurusan` VALUES ('70302', 'JURNALISTIK', 7);
INSERT INTO `mas_jurusan` VALUES ('70401', 'HUBUNGAN MASYARAKAT', 6);
INSERT INTO `mas_jurusan` VALUES ('70402', 'JURNALISTIK', 6);
INSERT INTO `mas_jurusan` VALUES ('70403', 'KOMUNIKASI MASSA', 6);
INSERT INTO `mas_jurusan` VALUES ('70404', 'PERIKLANAN', 6);
INSERT INTO `mas_jurusan` VALUES ('70405', 'PENYIARAN', 6);
INSERT INTO `mas_jurusan` VALUES ('71101', 'ILMU PERPUSTAKAAN', 9);
INSERT INTO `mas_jurusan` VALUES ('71201', 'ILMU PERPUSTAKAAN', 8);
INSERT INTO `mas_jurusan` VALUES ('71302', 'KEARSIPAN', 7);
INSERT INTO `mas_jurusan` VALUES ('71401', 'PERPUSTAKAAN', 6);
INSERT INTO `mas_jurusan` VALUES ('71402', 'KEARSIPAN', 6);
INSERT INTO `mas_jurusan` VALUES ('71501', 'PERPUSTAKAAN', 5);
INSERT INTO `mas_jurusan` VALUES ('72001', 'ILMU KESEJAHTERAAN SOSIAL', 12);
INSERT INTO `mas_jurusan` VALUES ('72101', 'ILMU KESEJAHTERAAN SOSIAL', 9);
INSERT INTO `mas_jurusan` VALUES ('72201', 'ILMU KESEJAHTERAAN SOSIAL', 8);
INSERT INTO `mas_jurusan` VALUES ('72401', 'PEKERJA SOSIAL', 6);
INSERT INTO `mas_jurusan` VALUES ('73001', 'ILMU PSIKOLOGI', 12);
INSERT INTO `mas_jurusan` VALUES ('73101', 'PSIKOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('73201', 'PSIKOLOGI', 8);
INSERT INTO `mas_jurusan` VALUES ('74001', 'ILMU HUKUM', 12);
INSERT INTO `mas_jurusan` VALUES ('74101', 'ILMU HUKUM', 9);
INSERT INTO `mas_jurusan` VALUES ('74102', 'KENOTARIATAN', 9);
INSERT INTO `mas_jurusan` VALUES ('74201', 'ILMU HUKUM', 8);
INSERT INTO `mas_jurusan` VALUES ('74401', 'ADMINISTRASI PERADILAN', 6);
INSERT INTO `mas_jurusan` VALUES ('75001', 'ILMU FILSAFAT', 12);
INSERT INTO `mas_jurusan` VALUES ('75101', 'ILMU FILSAFAT', 9);
INSERT INTO `mas_jurusan` VALUES ('75201', 'ILMU FILSAFAT', 8);
INSERT INTO `mas_jurusan` VALUES ('75401', 'FILSAFAT TEOLOGI', 6);
INSERT INTO `mas_jurusan` VALUES ('76001', 'ILMU RELIGI', 12);
INSERT INTO `mas_jurusan` VALUES ('76101', 'ILMU RELIGI', 9);
INSERT INTO `mas_jurusan` VALUES ('76201', 'ILMU RELIGI', 8);
INSERT INTO `mas_jurusan` VALUES ('77001', 'ILMU TEOLOGI', 12);
INSERT INTO `mas_jurusan` VALUES ('77101', 'ILMU TEOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('77201', 'ILMU TEOLOGI', 8);
INSERT INTO `mas_jurusan` VALUES ('79001', 'ILMU SUSASTRA', 12);
INSERT INTO `mas_jurusan` VALUES ('79002', 'ILMU LINGUISTIK', 12);
INSERT INTO `mas_jurusan` VALUES ('79101', 'ILMU SUSASTRA', 9);
INSERT INTO `mas_jurusan` VALUES ('79102', 'ILMU LINGUISTIK', 9);
INSERT INTO `mas_jurusan` VALUES ('79103', 'BAHASA INGGRIS', 9);
INSERT INTO `mas_jurusan` VALUES ('79201', 'SASTRA INDONESIA', 8);
INSERT INTO `mas_jurusan` VALUES ('79202', 'SASTRA INGGRIS', 8);
INSERT INTO `mas_jurusan` VALUES ('79203', 'SASTRA ARAB', 8);
INSERT INTO `mas_jurusan` VALUES ('79204', 'SASTRA JEPANG', 8);
INSERT INTO `mas_jurusan` VALUES ('79205', 'SASTRA PERANCIS', 8);
INSERT INTO `mas_jurusan` VALUES ('79206', 'SASTRA JERMAN', 8);
INSERT INTO `mas_jurusan` VALUES ('79207', 'SASTRA RUSIA', 8);
INSERT INTO `mas_jurusan` VALUES ('79208', 'SASTRA BELANDA', 8);
INSERT INTO `mas_jurusan` VALUES ('79209', 'SASTRA CINA', 8);
INSERT INTO `mas_jurusan` VALUES ('79210', 'SASTRA KOREA', 8);
INSERT INTO `mas_jurusan` VALUES ('79211', 'SASTRA DAERAH', 8);
INSERT INTO `mas_jurusan` VALUES ('79401', 'BAHASA INDONESIA', 6);
INSERT INTO `mas_jurusan` VALUES ('79402', 'BAHASA INGGRIS', 6);
INSERT INTO `mas_jurusan` VALUES ('79403', 'BAHASA ARAB', 6);
INSERT INTO `mas_jurusan` VALUES ('79404', 'BAHASA JEPANG', 6);
INSERT INTO `mas_jurusan` VALUES ('79405', 'BAHASA PERANCIS', 6);
INSERT INTO `mas_jurusan` VALUES ('79406', 'BAHASA JERMAN', 6);
INSERT INTO `mas_jurusan` VALUES ('79407', 'BAHASA RUSIA', 6);
INSERT INTO `mas_jurusan` VALUES ('79408', 'BAHASA BELANDA', 6);
INSERT INTO `mas_jurusan` VALUES ('79409', 'BAHASA MANDARIN', 6);
INSERT INTO `mas_jurusan` VALUES ('79410', 'BAHASA KOREA', 6);
INSERT INTO `mas_jurusan` VALUES ('79502', 'BAHASA INGGRIS', 5);
INSERT INTO `mas_jurusan` VALUES ('79602', 'BAHASA INGGRIS', 4);
INSERT INTO `mas_jurusan` VALUES ('79604', 'BAHASA JEPANG', 4);
INSERT INTO `mas_jurusan` VALUES ('79608', 'BAHASA BELANDA', 4);
INSERT INTO `mas_jurusan` VALUES ('80001', 'ILMU SEJARAH', 12);
INSERT INTO `mas_jurusan` VALUES ('80101', 'ILMU SEJARAH', 9);
INSERT INTO `mas_jurusan` VALUES ('80201', 'ILMU SEJARAH', 8);
INSERT INTO `mas_jurusan` VALUES ('81001', 'ILMU ARKEOLOGI', 12);
INSERT INTO `mas_jurusan` VALUES ('81101', 'ILMU ARKEOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('81201', 'ILMU ARKEOLOGI', 8);
INSERT INTO `mas_jurusan` VALUES ('82001', 'ILMU ANTROPOLOGI', 12);
INSERT INTO `mas_jurusan` VALUES ('82101', 'ANTROPOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('82201', 'ANTROPOLOGI SOSIAL', 8);
INSERT INTO `mas_jurusan` VALUES ('83001', 'PENDIDIKAN TEKNOLOGI DAN KEJURUAN', 12);
INSERT INTO `mas_jurusan` VALUES ('83101', 'PENDIDIKAN TEKNOLOGI DAN KEJURUAN', 9);
INSERT INTO `mas_jurusan` VALUES ('83201', 'PENDIDIKAN TEKNIK ELEKTRO', 8);
INSERT INTO `mas_jurusan` VALUES ('83202', 'PENDIDIKAN TEKNIK ELEKTRONIKA', 8);
INSERT INTO `mas_jurusan` VALUES ('83203', 'PENDIDIKAN TEKNIK MESIN', 8);
INSERT INTO `mas_jurusan` VALUES ('83204', 'PENDIDIKAN TEKNIK OTOMOTIF', 8);
INSERT INTO `mas_jurusan` VALUES ('83205', 'PENDIDIKAN TEKNIK BANGUNAN', 8);
INSERT INTO `mas_jurusan` VALUES ('83206', 'PENDIDIKAN KESEJAHTERAAN KELUARGA', 8);
INSERT INTO `mas_jurusan` VALUES ('83207', 'PENDIDIKAN TEKNIK INFORMATIKA', 8);
INSERT INTO `mas_jurusan` VALUES ('83211', 'PENDIDIKAN TATA BOGA', 8);
INSERT INTO `mas_jurusan` VALUES ('83212', 'PENDIDIKAN TATA BUSANA', 8);
INSERT INTO `mas_jurusan` VALUES ('83213', 'PENDIDIKAN TATA RIAS', 8);
INSERT INTO `mas_jurusan` VALUES ('83313', 'PENDIDIKAN TATA RIAS', 7);
INSERT INTO `mas_jurusan` VALUES ('84001', 'PENDIDIKAN MIPA', 12);
INSERT INTO `mas_jurusan` VALUES ('84002', 'PENDIDIKAN MATEMATIKA', 12);
INSERT INTO `mas_jurusan` VALUES ('84005', 'PENDIDIKAN BIOLOGI', 12);
INSERT INTO `mas_jurusan` VALUES ('84101', 'PENDIDIKAN IPA', 9);
INSERT INTO `mas_jurusan` VALUES ('84102', 'PENDIDIKAN MATEMATIKA', 9);
INSERT INTO `mas_jurusan` VALUES ('84103', 'PENDIDIKAN FISIKA', 9);
INSERT INTO `mas_jurusan` VALUES ('84104', 'PENDIDIKAN KIMIA', 9);
INSERT INTO `mas_jurusan` VALUES ('84105', 'PENDIDIKAN BIOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('84201', 'PENDIDIKAN IPA', 8);
INSERT INTO `mas_jurusan` VALUES ('84202', 'PENDIDIKAN MATEMATIKA', 8);
INSERT INTO `mas_jurusan` VALUES ('84203', 'PENDIDIKAN FISIKA', 8);
INSERT INTO `mas_jurusan` VALUES ('84204', 'PENDIDIKAN KIMIA', 8);
INSERT INTO `mas_jurusan` VALUES ('84205', 'PENDIDIKAN BIOLOGI', 8);
INSERT INTO `mas_jurusan` VALUES ('84402', 'PENDIDIKAN MATEMATIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('84403', 'PENDIDIKAN FISIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('84405', 'PENDIDIKAN BIOLOGI', 6);
INSERT INTO `mas_jurusan` VALUES ('85001', 'PENDIDIKAN OLAHRAGA', 12);
INSERT INTO `mas_jurusan` VALUES ('85101', 'PENDIDIKAN OLAHRAGA', 9);
INSERT INTO `mas_jurusan` VALUES ('85201', 'PENDIDIKAN JASMANI, KESEHATAN DAN REKREASI', 8);
INSERT INTO `mas_jurusan` VALUES ('85202', 'PENDIDIKAN KEPELATIHAN OLAHRAGA', 8);
INSERT INTO `mas_jurusan` VALUES ('85401', 'PENDIDIKAN JASMANI, KESEHATAN DAN REKREASI', 6);
INSERT INTO `mas_jurusan` VALUES ('85501', 'PENDIDIKAN GURU PENJASKESREK', 5);
INSERT INTO `mas_jurusan` VALUES ('86001', 'ILMU PENDIDIKAN', 12);
INSERT INTO `mas_jurusan` VALUES ('86003', 'TEKNOLOGI PENDIDIKAN', 12);
INSERT INTO `mas_jurusan` VALUES ('86004', 'ADMINISTRASI PENDIDIKAN', 12);
INSERT INTO `mas_jurusan` VALUES ('86005', 'PENDIDIKAN LUAR SEKOLAH', 12);
INSERT INTO `mas_jurusan` VALUES ('86011', 'PSIKOLOGI PENDIDIKAN', 12);
INSERT INTO `mas_jurusan` VALUES ('86020', 'PENELITAN DAN EVALUASI PENDIDIKAN', 12);
INSERT INTO `mas_jurusan` VALUES ('86021', 'PENGEMBANGAN KURIKULUM', 12);
INSERT INTO `mas_jurusan` VALUES ('86101', 'BIMBINGAN KONSELING', 9);
INSERT INTO `mas_jurusan` VALUES ('86102', 'PENDIDIKAN LUAR BIASA', 9);
INSERT INTO `mas_jurusan` VALUES ('86103', 'TEKNOLOGI PENDIDIKAN', 9);
INSERT INTO `mas_jurusan` VALUES ('86104', 'ADMINISTRASI PENDIDIKAN', 9);
INSERT INTO `mas_jurusan` VALUES ('86105', 'PENDIDIKAN LUAR SEKOLAH', 9);
INSERT INTO `mas_jurusan` VALUES ('86106', 'PENDIDIKAN GURU SEKOLAH DASAR', 9);
INSERT INTO `mas_jurusan` VALUES ('86107', 'PENDIDIKAN GURU PENDIDIKAN ANAK USIA DINI', 9);
INSERT INTO `mas_jurusan` VALUES ('86108', 'PENDIDIKAN GURU AGAMA', 9);
INSERT INTO `mas_jurusan` VALUES ('86120', 'PENELITIAN DAN EVALUASI PENDIDIKAN', 9);
INSERT INTO `mas_jurusan` VALUES ('86121', 'PENGEMBANGAN KURIKULUM', 9);
INSERT INTO `mas_jurusan` VALUES ('86122', 'PENDIDIKAN DASAR', 9);
INSERT INTO `mas_jurusan` VALUES ('86201', 'BIMBINGAN KONSELING', 8);
INSERT INTO `mas_jurusan` VALUES ('86202', 'PENDIDIKAN LUAR BIASA', 8);
INSERT INTO `mas_jurusan` VALUES ('86203', 'TEKNOLOGI PENDIDIKAN', 8);
INSERT INTO `mas_jurusan` VALUES ('86204', 'ADMINISTRASI PENDIDIKAN', 8);
INSERT INTO `mas_jurusan` VALUES ('86205', 'PENDIDIKAN LUAR SEKOLAH', 8);
INSERT INTO `mas_jurusan` VALUES ('86206', 'PENDIDIKAN GURU SEKOLAH DASAR', 8);
INSERT INTO `mas_jurusan` VALUES ('86207', 'PENDIDIKAN GURU PENDIDIKAN ANAK USIA DINI', 8);
INSERT INTO `mas_jurusan` VALUES ('86208', 'PENDIDIKAN GURU AGAMA', 8);
INSERT INTO `mas_jurusan` VALUES ('86209', 'PJJ PENDIDIKAN GURU SEKOLAH DASAR', 8);
INSERT INTO `mas_jurusan` VALUES ('86408', 'PENDIDIKAN GURU AGAMA', 6);
INSERT INTO `mas_jurusan` VALUES ('86506', 'PENDIDIKAN GURU SEKOLAH DASAR', 5);
INSERT INTO `mas_jurusan` VALUES ('86507', 'PENDIDIKAN GURU TAMAN KANAK-KANAK', 5);
INSERT INTO `mas_jurusan` VALUES ('87001', 'PENDIDIKAN IPS', 12);
INSERT INTO `mas_jurusan` VALUES ('87003', 'PENDIDIKAN EKONOMI', 12);
INSERT INTO `mas_jurusan` VALUES ('87101', 'PENDIDIKAN SEJARAH', 9);
INSERT INTO `mas_jurusan` VALUES ('87102', 'PENDIDIKAN GEOGRAFI', 9);
INSERT INTO `mas_jurusan` VALUES ('87103', 'PENDIDIKAN EKONOMI', 9);
INSERT INTO `mas_jurusan` VALUES ('87104', 'PENDIDIKAN SOSIOLOGI', 9);
INSERT INTO `mas_jurusan` VALUES ('87120', 'PENDIDIKAN IPS', 9);
INSERT INTO `mas_jurusan` VALUES ('87201', 'PENDIDIKAN SEJARAH', 8);
INSERT INTO `mas_jurusan` VALUES ('87202', 'PENDIDIKAN GEOGRAFI', 8);
INSERT INTO `mas_jurusan` VALUES ('87203', 'PENDIDIKAN EKONOMI', 8);
INSERT INTO `mas_jurusan` VALUES ('87204', 'PENDIDIKAN SOSIOLOGI', 8);
INSERT INTO `mas_jurusan` VALUES ('87205', 'PENDIDIKAN PANCASILA DAN KEWARGANEGARAAN', 8);
INSERT INTO `mas_jurusan` VALUES ('87220', 'PENDIDIKAN IPS', 8);
INSERT INTO `mas_jurusan` VALUES ('87402', 'PENDIDIKAN GEOGRAFI', 6);
INSERT INTO `mas_jurusan` VALUES ('87403', 'PENDIDIKAN EKONOMI', 6);
INSERT INTO `mas_jurusan` VALUES ('88001', 'ILMU PENDIDIKAN BAHASA', 12);
INSERT INTO `mas_jurusan` VALUES ('88003', 'PENDIDIKAN BAHASA INGGRIS', 12);
INSERT INTO `mas_jurusan` VALUES ('88101', 'PENDIDIKAN BAHASA DAN SASTRA INDONESIA', 9);
INSERT INTO `mas_jurusan` VALUES ('88102', 'PENDIDIKAN BAHASA DAN SASTRA DAERAH', 9);
INSERT INTO `mas_jurusan` VALUES ('88103', 'PENDIDIKAN BAHASA INGGRIS', 9);
INSERT INTO `mas_jurusan` VALUES ('88104', 'PENDIDIKAN BAHASA ARAB', 9);
INSERT INTO `mas_jurusan` VALUES ('88105', 'PENDIDIKAN BAHASA JEPANG', 9);
INSERT INTO `mas_jurusan` VALUES ('88106', 'PENDIDIKAN BAHASA PERANCIS', 9);
INSERT INTO `mas_jurusan` VALUES ('88107', 'PENDIDIKAN BAHASA JERMAN', 9);
INSERT INTO `mas_jurusan` VALUES ('88108', 'PENDIDIKAN BAHASA MANDARIN', 9);
INSERT INTO `mas_jurusan` VALUES ('88109', 'PENDIDIKAN SENI DRAMA, TARI DAN MUSIK', 9);
INSERT INTO `mas_jurusan` VALUES ('88110', 'PENDIDIKAN SENI RUPA', 9);
INSERT INTO `mas_jurusan` VALUES ('88111', 'PENDIDIKAN BAHASA', 9);
INSERT INTO `mas_jurusan` VALUES ('88201', 'PENDIDIKAN BAHASA DAN SASTRA INDONESIA', 8);
INSERT INTO `mas_jurusan` VALUES ('88202', 'PENDIDIKAN BAHASA DAN SASTRA DAERAH', 8);
INSERT INTO `mas_jurusan` VALUES ('88203', 'PENDIDIKAN BAHASA INGGRIS', 8);
INSERT INTO `mas_jurusan` VALUES ('88204', 'PENDIDIKAN BAHASA ARAB', 8);
INSERT INTO `mas_jurusan` VALUES ('88205', 'PENDIDIKAN BAHASA JEPANG', 8);
INSERT INTO `mas_jurusan` VALUES ('88206', 'PENDIDIKAN BAHASA PERANCIS', 8);
INSERT INTO `mas_jurusan` VALUES ('88207', 'PENDIDIKAN BAHASA JERMAN', 8);
INSERT INTO `mas_jurusan` VALUES ('88208', 'PENDIDIKAN BAHASA MANDARIN', 8);
INSERT INTO `mas_jurusan` VALUES ('88209', 'PENDIDIKAN SENI DRAMA, TARI DAN MUSIK', 8);
INSERT INTO `mas_jurusan` VALUES ('88210', 'PENDIDIKAN SENI RUPA', 8);
INSERT INTO `mas_jurusan` VALUES ('88401', 'PENDIDIKAN BAHASA DAN SASTRA INDONESIA', 6);
INSERT INTO `mas_jurusan` VALUES ('88403', 'PENDIDIKAN BAHASA INGGRIS', 6);
INSERT INTO `mas_jurusan` VALUES ('88405', 'PENDIDIKAN BAHASA JEPANG', 6);
INSERT INTO `mas_jurusan` VALUES ('88501', 'PENDIDIKAN BAHASA DAN SASTRA INDONESIA', 5);
INSERT INTO `mas_jurusan` VALUES ('89001', 'ILMU KEOLAHRAGAAN', 12);
INSERT INTO `mas_jurusan` VALUES ('89101', 'ILMU KEOLAHRAGAAN', 9);
INSERT INTO `mas_jurusan` VALUES ('89201', 'ILMU KEOLAHRAGAAN', 8);
INSERT INTO `mas_jurusan` VALUES ('90001', 'SENI RUPA', 12);
INSERT INTO `mas_jurusan` VALUES ('90101', 'SENI RUPA', 9);
INSERT INTO `mas_jurusan` VALUES ('90102', 'DESAIN', 9);
INSERT INTO `mas_jurusan` VALUES ('90131', 'DESAIN PRODUK', 9);
INSERT INTO `mas_jurusan` VALUES ('90201', 'SENI RUPA MURNI', 8);
INSERT INTO `mas_jurusan` VALUES ('90211', 'KRIYA SENI', 8);
INSERT INTO `mas_jurusan` VALUES ('90221', 'DESAIN INTERIOR', 8);
INSERT INTO `mas_jurusan` VALUES ('90231', 'DESAIN PRODUK', 8);
INSERT INTO `mas_jurusan` VALUES ('90241', 'DESAIN KOMUNIKASI VISUAL', 8);
INSERT INTO `mas_jurusan` VALUES ('90242', 'DESAIN GRAFIS', 8);
INSERT INTO `mas_jurusan` VALUES ('90331', 'DESAIN PRODUK', 7);
INSERT INTO `mas_jurusan` VALUES ('90342', 'DESAIN GRAFIS', 7);
INSERT INTO `mas_jurusan` VALUES ('90343', 'KOMPUTER MULTIMEDIA', 7);
INSERT INTO `mas_jurusan` VALUES ('90344', 'TEKNIK GRAFIKA', 7);
INSERT INTO `mas_jurusan` VALUES ('90401', 'SENI RUPA', 6);
INSERT INTO `mas_jurusan` VALUES ('90411', 'KRIYA KAIN', 6);
INSERT INTO `mas_jurusan` VALUES ('90412', 'KRIYA KAYU', 6);
INSERT INTO `mas_jurusan` VALUES ('90413', 'KRIYA KERAMIK', 6);
INSERT INTO `mas_jurusan` VALUES ('90414', 'KRIYA LOGAM', 6);
INSERT INTO `mas_jurusan` VALUES ('90415', 'KRIYA KULIT', 6);
INSERT INTO `mas_jurusan` VALUES ('90416', 'KRIYA PERHIASAN', 6);
INSERT INTO `mas_jurusan` VALUES ('90417', 'KRIYA SENI', 6);
INSERT INTO `mas_jurusan` VALUES ('90421', 'DESAIN INTERIOR', 6);
INSERT INTO `mas_jurusan` VALUES ('90431', 'DESAIN PRODUK', 6);
INSERT INTO `mas_jurusan` VALUES ('90441', 'DESAIN KOMUNIKASI VISUAL', 6);
INSERT INTO `mas_jurusan` VALUES ('90442', 'DESAIN GRAFIS', 6);
INSERT INTO `mas_jurusan` VALUES ('90443', 'KOMPUTER MULTIMEDIA', 6);
INSERT INTO `mas_jurusan` VALUES ('90444', 'TEKNIK GRAFIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('90501', 'SENI RUPA', 5);
INSERT INTO `mas_jurusan` VALUES ('90541', 'DESAIN KOMUNIKASI VISUAL', 5);
INSERT INTO `mas_jurusan` VALUES ('90621', 'DESAIN INTERIOR', 4);
INSERT INTO `mas_jurusan` VALUES ('90641', 'DESAIN KOMUNIKASI VISUAL', 4);
INSERT INTO `mas_jurusan` VALUES ('91001', 'PENCIPTAAN DAN PENGKAJIAN SENI', 12);
INSERT INTO `mas_jurusan` VALUES ('91101', 'PENCIPTAAN DAN PENGKAJIAN SENI', 9);
INSERT INTO `mas_jurusan` VALUES ('91201', 'ETNOMUSIKOLOGI', 8);
INSERT INTO `mas_jurusan` VALUES ('91202', 'ANTROPOLOGI TARI', 8);
INSERT INTO `mas_jurusan` VALUES ('91211', 'SENI KARAWITAN', 8);
INSERT INTO `mas_jurusan` VALUES ('91221', 'SENI MUSIK', 8);
INSERT INTO `mas_jurusan` VALUES ('91231', 'SENI TARI', 8);
INSERT INTO `mas_jurusan` VALUES ('91241', 'SENI PEDALANGAN', 8);
INSERT INTO `mas_jurusan` VALUES ('91251', 'SENI TEATER', 8);
INSERT INTO `mas_jurusan` VALUES ('91261', 'TELEVISI DAN FILM', 8);
INSERT INTO `mas_jurusan` VALUES ('91271', 'FOTOGRAFI', 8);
INSERT INTO `mas_jurusan` VALUES ('91281', 'RADIO', 8);
INSERT INTO `mas_jurusan` VALUES ('91411', 'SENI KARAWITAN', 6);
INSERT INTO `mas_jurusan` VALUES ('91421', 'SENI MUSIK', 6);
INSERT INTO `mas_jurusan` VALUES ('91431', 'SENI TARI', 6);
INSERT INTO `mas_jurusan` VALUES ('91441', 'SENI PEDALANGAN', 6);
INSERT INTO `mas_jurusan` VALUES ('91451', 'SENI TEATER', 6);
INSERT INTO `mas_jurusan` VALUES ('91461', 'TELEVISI', 6);
INSERT INTO `mas_jurusan` VALUES ('91462', 'FILM', 6);
INSERT INTO `mas_jurusan` VALUES ('91471', 'FOTOGRAFI', 6);
INSERT INTO `mas_jurusan` VALUES ('91481', 'RADIO', 6);
INSERT INTO `mas_jurusan` VALUES ('91511', 'SENI KARAWITAN', 5);
INSERT INTO `mas_jurusan` VALUES ('91531', 'PENATA TARI', 5);
INSERT INTO `mas_jurusan` VALUES ('91661', 'FILM DAN TELEVISI', 4);
INSERT INTO `mas_jurusan` VALUES ('92201', 'KETATALAKSANAAN PELAYARAN NIAGA DAN KEPELABUHAN', 8);
INSERT INTO `mas_jurusan` VALUES ('92301', 'KETATALAKSANAAN PELAYARAN NIAGA DAN KEPELABUHAN', 7);
INSERT INTO `mas_jurusan` VALUES ('92401', 'KETATALAKSANAAN PELAYARAN NIAGA DAN KEPELABUHAN', 6);
INSERT INTO `mas_jurusan` VALUES ('92402', 'TEKNIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('92403', 'NAUTIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('93201', 'USAHA PERJALANAN WISATA', 8);
INSERT INTO `mas_jurusan` VALUES ('93202', 'PERHOTELAN DAN PARIWISATA', 8);
INSERT INTO `mas_jurusan` VALUES ('93301', 'USAHA PERJALANAN WISATA', 7);
INSERT INTO `mas_jurusan` VALUES ('93302', 'PERHOTELAN', 7);
INSERT INTO `mas_jurusan` VALUES ('93303', 'PARIWISATA', 7);
INSERT INTO `mas_jurusan` VALUES ('93401', 'USAHA PERJALANAN WISATA', 6);
INSERT INTO `mas_jurusan` VALUES ('93402', 'PERHOTELAN', 6);
INSERT INTO `mas_jurusan` VALUES ('93403', 'PARIWISATA', 6);
INSERT INTO `mas_jurusan` VALUES ('93501', 'PEMANDU WISATA', 5);
INSERT INTO `mas_jurusan` VALUES ('93502', 'PERHOTELAN', 5);
INSERT INTO `mas_jurusan` VALUES ('93503', 'DIVISI KAMAR', 5);
INSERT INTO `mas_jurusan` VALUES ('93601', 'PEMANDU WISATA', 4);
INSERT INTO `mas_jurusan` VALUES ('93602', 'PERHOTELAN', 4);
INSERT INTO `mas_jurusan` VALUES ('93603', 'DIVISI KAMAR', 4);
INSERT INTO `mas_jurusan` VALUES ('94101', 'AKTUARIA', 9);
INSERT INTO `mas_jurusan` VALUES ('94401', 'ASURANSI JIWA', 6);
INSERT INTO `mas_jurusan` VALUES ('94402', 'ASURANSI KESEHATAN', 6);
INSERT INTO `mas_jurusan` VALUES ('94403', 'ASURANSI KERUGIAN', 6);
INSERT INTO `mas_jurusan` VALUES ('94404', 'TERAPI WICARA', 6);
INSERT INTO `mas_jurusan` VALUES ('94405', 'TATA BUSANA', 6);
INSERT INTO `mas_jurusan` VALUES ('94406', 'TATA BOGA', 6);
INSERT INTO `mas_jurusan` VALUES ('94407', 'TATA GRIYA', 6);
INSERT INTO `mas_jurusan` VALUES ('94408', 'TATA RIAS', 6);
INSERT INTO `mas_jurusan` VALUES ('94409', 'ADMINISTRASI ASURANSI DAN AKTUARIA', 6);
INSERT INTO `mas_jurusan` VALUES ('94505', 'TATA BUSANA', 5);
INSERT INTO `mas_jurusan` VALUES ('94506', 'TATA HIDANGAN', 5);
INSERT INTO `mas_jurusan` VALUES ('94507', 'TATA BOGA', 5);
INSERT INTO `mas_jurusan` VALUES ('94508', 'TATA RIAS', 5);
INSERT INTO `mas_jurusan` VALUES ('94605', 'TATA BUSANA', 4);
INSERT INTO `mas_jurusan` VALUES ('94606', 'TATA HIDANGAN', 4);
INSERT INTO `mas_jurusan` VALUES ('94607', 'TATA BOGA', 4);
INSERT INTO `mas_jurusan` VALUES ('94608', 'TATA RIAS', 4);
INSERT INTO `mas_jurusan` VALUES ('94609', 'GROUND HANDLING', 4);
INSERT INTO `mas_jurusan` VALUES ('94610', 'PRAMUGARI-PRAMUGARA', 4);
INSERT INTO `mas_jurusan` VALUES ('94611', 'CARGO UDARA', 4);
INSERT INTO `mas_jurusan` VALUES ('95001', 'ILMU PENGELOLAAN SUMBER DAYA ALAM DAN LINGKUNGA', 12);
INSERT INTO `mas_jurusan` VALUES ('95002', 'KAJIAN KEPENDUDUKAN DAN KETENAGAKERJAAN', 12);
INSERT INTO `mas_jurusan` VALUES ('95003', 'ILMU PERENC PEMBANGUNAN WILAYAH DAN PEDESAAN', 12);
INSERT INTO `mas_jurusan` VALUES ('95027', 'KAJIAN BUDAYA', 12);
INSERT INTO `mas_jurusan` VALUES ('95029', 'KAJIAN ILMU LINGKUNGAN', 12);
INSERT INTO `mas_jurusan` VALUES ('95031', 'ILMU-ILMU HUMANIORA', 12);
INSERT INTO `mas_jurusan` VALUES ('95101', 'ILMU PENGELOLAAN SUMBER DAYA ALAM DAN LINGKUNGA', 9);
INSERT INTO `mas_jurusan` VALUES ('95102', 'KAJIAN KEPENDUDUKAN DAN KETENAGAKERJAAN', 9);
INSERT INTO `mas_jurusan` VALUES ('95103', 'ILMU PERENC PEMBANGUNAN WILAYAH DAN PEDESAAN', 9);
INSERT INTO `mas_jurusan` VALUES ('95104', 'KAJIAN PARIWISATA', 9);
INSERT INTO `mas_jurusan` VALUES ('95105', 'ADMINISTRASI PEMBANGUNAN', 9);
INSERT INTO `mas_jurusan` VALUES ('95106', 'PENGEMBANGAN SUMBER DAYA MANUSIA', 9);
INSERT INTO `mas_jurusan` VALUES ('95107', 'STUDI KEBIJAKAN', 9);
INSERT INTO `mas_jurusan` VALUES ('95120', 'KAJIAN ILMU KEPOLISIAN', 9);
INSERT INTO `mas_jurusan` VALUES ('95121', 'KAJIAN WILAYAH AMERIKA', 9);
INSERT INTO `mas_jurusan` VALUES ('95122', 'KAJIAN WILAYAH JEPANG', 9);
INSERT INTO `mas_jurusan` VALUES ('95123', 'KAJIAN WILAYAH EROPA', 9);
INSERT INTO `mas_jurusan` VALUES ('95124', 'KAJIAN TIMUR TENGAH DAN ISLAM', 9);
INSERT INTO `mas_jurusan` VALUES ('95125', 'KAJIAN PENGEMBANGAN PERKOTAAN', 9);
INSERT INTO `mas_jurusan` VALUES ('95126', 'KAJIAN WANITA', 9);
INSERT INTO `mas_jurusan` VALUES ('95127', 'KAJIAN BUDAYA', 9);
INSERT INTO `mas_jurusan` VALUES ('95128', 'KAJIAN KETAHANAN NASIONAL', 9);
INSERT INTO `mas_jurusan` VALUES ('95129', 'KAJIAN ILMU LINGKUNGAN', 9);
INSERT INTO `mas_jurusan` VALUES ('95130', 'JENDER DAN PEMBANGUNAN', 9);
INSERT INTO `mas_jurusan` VALUES ('95203', 'PEMBANGUNAN WILAYAH', 8);
INSERT INTO `mas_jurusan` VALUES ('95403', 'PERENCANAAN DAN MONITORING PEMBANGUNAN', 6);
INSERT INTO `mas_jurusan` VALUES ('95405', 'MANAJEMEN INFORMATIKA', 8);
INSERT INTO `mas_jurusan` VALUES ('95406', 'Ekonomi Akuntansi', 6);
INSERT INTO `mas_jurusan` VALUES ('95407', 'INFORMATIKA', 6);
INSERT INTO `mas_jurusan` VALUES ('95408', 'ILMU KOMPUTER', 8);
INSERT INTO `mas_jurusan` VALUES ('95409', 'BIOKIMIA', 8);
INSERT INTO `mas_jurusan` VALUES ('95410', 'TEKNIK ELEKTRO', 6);
INSERT INTO `mas_jurusan` VALUES ('95411', 'Manajemen Bisnis Telekomunikasi & Informatika ', 8);
INSERT INTO `mas_jurusan` VALUES ('95412', 'ELEKTRONIKA DAN INSTRUMENTASI', 8);
INSERT INTO `mas_jurusan` VALUES ('95413', 'ELEKTRONIKA DAN INSTRUMENTASI', 6);
INSERT INTO `mas_jurusan` VALUES ('95414', 'INFORMATIKA', 5);
INSERT INTO `mas_jurusan` VALUES ('95415', 'TEKNOLOGI INFORMASI', 8);
INSERT INTO `mas_jurusan` VALUES ('95416', 'Manajemen Industri Jasa Makanan dan Gizi ', 6);
INSERT INTO `mas_jurusan` VALUES ('95417', 'Manajemen Sumber Daya Manusia', 8);
INSERT INTO `mas_jurusan` VALUES ('95418', 'ILMU KOMUNIKASI', 6);
INSERT INTO `mas_jurusan` VALUES ('95419', 'ILMU KOMPUTASI', 8);
INSERT INTO `mas_jurusan` VALUES ('95420', 'Pendidikan PGSD ', 8);
INSERT INTO `mas_jurusan` VALUES ('95421', 'TEKNOLOGI KOMPUTER', 6);
INSERT INTO `mas_jurusan` VALUES ('95422', 'Administrasi Konsentrasi Keuangan', 6);
INSERT INTO `mas_jurusan` VALUES ('95423', 'PENDIDIKAN ILMU KOMPUTER', 8);
INSERT INTO `mas_jurusan` VALUES ('95424', 'Teknik Instrumentasi dan Kontrol', 6);
INSERT INTO `mas_jurusan` VALUES ('95425', 'ADMINISTRASI PUBLIK', 8);

-- ----------------------------
-- Table structure for mas_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `mas_karyawan`;
CREATE TABLE `mas_karyawan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `born_date` datetime NULL DEFAULT NULL,
  `born_city` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_kelamin` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_perkawinan` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kewarganegaraan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bloodtype` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bpjs_ketenagakerjaan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bpjs_kesehatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `grade` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_kk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `npwp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone_number` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `religion_code` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dept_code` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level_job_code` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tmb_date` datetime NULL DEFAULT NULL,
  `last_edu` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_photo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_kerja` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `parent_name1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `parent_name2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_modified` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 241 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mas_karyawan
-- ----------------------------
INSERT INTO `mas_karyawan` VALUES (1, '1', 'Administrator', 'administrator@krakatau-it.co.id', 'jalan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mas_karyawan` VALUES (2, '30065', 'Edwin Kurniawan', '', '', '1969-07-17 00:00:00', '3176', '1', 'K4', '', 'AB', '22109782213', '', '', NULL, '171107360013000', '', '', '', '', NULL, '2022-09-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (3, '30060', 'Boy Muhammad Ridwan', 'boy.mridwan@krakatau-it.co.id', '', '1982-09-21 00:00:00', '3176', '1', 'K2', '', 'O', '22078306010', '', '3674041912120014', NULL, '707326104411000', '', '', '', '', NULL, '2020-06-11 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (4, '30061', 'Weni Purwaningrum', '', '', '1975-03-06 00:00:00', '1371', '2', 'K1', '', 'B', '', '', '3672061012071282', NULL, '498331438417000', '', '', '', '', NULL, '2020-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (5, '30062', 'Budi Tjandra Negara', 'budi.tjandra@krakatau-it.co.id', '', '1972-05-20 00:00:00', '3176', '1', 'K2', '', 'B', '16008045649', '', '3175021601093153', NULL, '087794038003000', '081394478402', '', '', '', NULL, '2020-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (6, '30064', 'Buana Jaya', 'buana.jaya@krakatau-it.co.id', '', '1972-05-25 00:00:00', '3176', '1', 'K3', '', 'AB', '22011169392', '', '3174040601092944', NULL, '059931089017000', '081519014858', '', '', '', NULL, '2022-01-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (7, '00066', 'Madlias', 'madlias@krakatau-it.co.id', '', '1968-02-28 00:00:00', '3678', '1', 'K1', '', 'AB', '90K52003521', '0001812036442', '3672072511150000', NULL, '77663300401000', '0818833659', '', '', '', NULL, '1990-05-11 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (8, '00076', 'Yani Waspoadi', 'Yani.Waspoadi@krakatau-it.co.id', '', '1968-03-05 00:00:00', '3573', '1', 'K3', '', 'A', '91K53002280', '0001812036745', '3672071612090004', NULL, '476867601401000', '08118003399', '', '', '', NULL, '1991-07-03 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (9, '00099', 'Edi Soewardi', 'Edi.Soewardi@krakatau-it.co.id', '', '1967-03-04 00:00:00', '3278', '1', 'K4', '', 'B', '91K52055800', '0001815091727', '3672020908090101', NULL, '77663482401000', '08129293953', '', '', '', NULL, '1991-06-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (10, '00106', 'Rini Sopijati', 'rini@krakatau-it.co.id', '', '1967-10-31 00:00:00', '3273', '2', 'K3', '', 'B', '92K52164501', '', '36720216121000111', NULL, '91573535401000', '085946444710', '', '', '', NULL, '1992-02-03 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (11, '00114', 'Elin Kurniasih', 'elin@krakatau-it.co.id', '', '1969-01-02 00:00:00', '3678', '2', 'K2', '', 'O', '93K52178368', '', '3672022412070059', NULL, '946329935417000', '081380250125', '', '', '', NULL, '1993-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (12, '00119', 'Roni Hari Kartiko', 'roni@krakatau-it.co.id', '', '1967-04-22 00:00:00', '3578', '1', 'K2', '', 'O', '93K52178319', '0001815092469', '3672052612070093', NULL, '77663573417000', '081281233189', '', '', '', NULL, '1993-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (13, '00120', 'Rima Sulpana Popi', 'rima@krakatau-it.co.id', '', '1967-08-02 00:00:00', '3278', '2', 'K2', '', 'B', '93K52178327', '0001815092526', '3672020707140008', NULL, '66140907841700', '08128512839', '', '', '', NULL, '1993-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (14, '00125', 'Rochmadi', 'rochmadi@krakatau-it.co.id', '', '1969-05-19 00:00:00', '3273', '1', 'K5', '', 'A', '93K52178368', '0001967925284', '3672010112150003', NULL, '483385555417000', '087741000275', '', '', '', NULL, '1993-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (15, '00126', 'Khatimatun Hasanah', 'nuning@krakatau-it.co.id', '', '1967-05-26 00:00:00', '3311', '2', 'K2', '', 'B', '93K52178376', '', '3275061112070462', NULL, '', '08159464419', '', '', '', NULL, '1993-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (16, '00129', 'Sugiarni', 'arni@krakatau-it.co.id', '', '1969-08-22 00:00:00', '3381', '2', 'TK', '', 'O', '93K52178400', '0001815092987', '3672021804160005', NULL, '77663615401000', '081381052555', '', '', '', NULL, '1993-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (17, '00137', 'Asep Kunkun K.', 'koen@krakatau-it.co.id', '', '1970-10-20 00:00:00', '3273', '1', 'K4', '', 'A', '94K50075564', '0001590505683', '3604043108040060', NULL, '77663656401000', '085946362340', '', '', '', NULL, '1996-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (18, '00138', 'Barkah Sarwono', 'barkah@krakatau-it.co.id', '', '1968-08-14 00:00:00', '3273', '1', 'K2', '', 'O', '94K50018028', '0001590506234', '3672051509100001', NULL, '10610996401001', '081318131345', '', '', '', NULL, '1996-06-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (19, '00148', 'Fatoni', 'fatoni@krakatau-it.co.id', '', '1971-02-11 00:00:00', '3678', '1', 'K4', '', 'AB', '95K50008067', '0001590505727', '3604091102072490', NULL, '077663631401000', '081808061360', '', '', '', NULL, '1997-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (20, '00150', 'Koko Christianto', 'koko@krakatau-it.co.id', '', '1967-05-18 00:00:00', '3577', '1', 'K1', '', 'O', '95K50018843', '', '', NULL, '77663712401000', '08128077685', '', '', '', NULL, '1997-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (21, '00151', 'Yulianto Wisnu Sadewo', 'wisnu.sadewo@krakatau-it.co.id', '', '1968-07-11 00:00:00', '3372', '1', 'K2', '', 'O', '95N00110531', '0001590505773', '3072670511100002', NULL, '476867478401000', '081385261600', '', '', '', NULL, '1997-09-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (22, '00160', 'Andik Budi Suciono', 'andikbs@krakatau-it.co.id', '', '1972-06-01 00:00:00', '3520', '1', 'K2', '', 'B', '98K50113911', '0001590505929', '3604051202077935', NULL, '882845217401000', '081218785135', '', '', '', NULL, '2007-01-02 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (23, '00161', 'Roni Ramdhani', 'ramdhani@krakatau-it.co.id', '', '1974-09-22 00:00:00', '3273', '1', 'K2', '', 'A', '98K50101858', '0001590505953', '3672052412070230', NULL, '578981896417000', '082114229074', '', '', '', NULL, '2007-01-02 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (24, '00162', 'Tri Tego Pramono', 'tritego@krakatau-it.co.id', '', '1971-03-01 00:00:00', '3371', '1', 'K3', '', 'O', '91K52094791', '0001590505997', '3604020308040002', NULL, '578981995401000', '087771512114', '', '', '', NULL, '2008-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (25, '00164', 'Tetty Cahyawati', 'tetty@krakatau-it.co.id', '', '1974-04-23 00:00:00', '3212', '2', 'K2', '', 'AB', '98K50113879', '0001590506054', '3604071011050001', NULL, '578981953401000', '085219025652', '', '', '', NULL, '2008-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (26, '00165', 'Anita Megayanti', 'anita@krakatau-it.co.id', '', '1979-05-03 00:00:00', '3678', '2', 'K3', '', 'O', '00K50252053', '0001590506087', '3673011409120013', NULL, '580938900401000', '0817874687', '', '', '', NULL, '2008-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (27, '00166', 'Bismannur Bahdar', 'bismannur.bahdar@krakatau-it.co.id', '', '1977-02-25 00:00:00', '3176', '1', 'K3', '', 'O', '03K50097957', '0001590506111', '3672023103160003', NULL, '580939007417000', '082111440257', '', '', '', NULL, '2008-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (28, '00168', 'Asep Mabrur Aid', 'asep.mabrur@krakatau-it.co.id', '', '1978-01-14 00:00:00', '3678', '1', 'K2', '', 'B', '07008481546', '0001590506199', '367305161210025', NULL, '580938991401000', '081322203991', '', '', '', NULL, '2012-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (29, '00169', 'Ali Marjan', 'Ali.Marjan@krakatau-it.co.id', '', '1987-09-11 00:00:00', '3677', '1', 'K1', '', 'O', '10021082648', '0001590506245', '3672072801150002', NULL, '896727914417000', '08568030190', '', '', '', NULL, '2012-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (30, '00172', 'Erwan Susanto', 'Erwan.Susanto@krakatau-it.co.id', '', '1986-09-27 00:00:00', '3602', '1', 'K2', '', 'B', '10021082671', '0001590506291', '3602141601170002', NULL, '583278932419000', '085691012346', '', '', '', NULL, '2012-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (31, '00176', 'Christyan Arga Putra', 'Christian.Putra@krakatau-it.co.id', '', '1985-01-12 00:00:00', '3678', '1', 'K2', '', 'B', '10018784123', '0001590506368', '3672031608160001', NULL, '482132537417000', '08562020430', '', '', '', NULL, '2012-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (32, '00177', 'Fatahillah Firdaus', 'fatah@krakatau-it.co.id', '', '1982-10-31 00:00:00', '3304', '1', 'K1', '', 'O', '08015984696', '0001590506392', '3673052007120010', NULL, '580938983401000', '085959696292', '', '', '', NULL, '2012-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (33, '00180', 'Farah Rohima Rohmah', 'farah.rr@krakatau-it.co.id', '', '1977-06-11 00:00:00', '3678', '2', 'TK', '', 'O', '11015654194', '0001590506482', '4137190305469899', NULL, '575401641017000', '0811939247', '', '', '', NULL, '2012-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (34, '00182', 'Djoko Supriyadi Santo', 'djoko.supryadi@krakatau-it.co.id', '', '1988-10-02 00:00:00', '1671', '1', 'K3', '', 'A', '11002638036', '0001458652195', '3672050605100006', NULL, '773669411417000', '081513009525', '', '', '', NULL, '2013-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (35, '00184', 'Feriano Pujiastanto', 'feriano@krakatau-it.co.id', '', '1977-05-24 00:00:00', '3677', '1', 'K2', '', 'O', '13035553729', '0001590506504', '3673061104190014', NULL, '580939023417000', '081315981356', '', '', '', NULL, '2013-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (36, '00185', 'Agus Sudono', 'agus.sudono@krakatau-it.co.id', '', '1970-12-04 00:00:00', '3316', '1', 'K2', '', 'A', '14000624925', '0001590506548', '3672072508090008', NULL, '580938926401000', '087771905303', '', '', '', NULL, '2013-12-31 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (37, '10006', 'Rudi Hendri', 'Rudi.hendri@krakatau-it.co.id', '', '1970-05-05 00:00:00', '1371', '1', 'K3', '', 'A', '11036747837', '0001143080662', '3672022612070336', NULL, '578981938417000', '0819112145190', '', '', '', NULL, '2016-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (38, '10007', 'Syamsul Maarip', 'Syamsul@krakatau-it.co.id', '', '1988-07-09 00:00:00', '3601', '1', 'K1', '', 'O', '10007710840', '0001136924818', '3601222108170006', NULL, '450288022419000', '087772109288', '', '', '', NULL, '2016-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (39, '10008', 'Lucky Santana', 'lucky.Santana@krakatau-it.co.id', '', '1987-01-16 00:00:00', '3677', '1', 'K2', '', 'O', '11000450715', '0001139316851', '3672021601870001', NULL, '798329322417000', '081932509400', '', '', '', NULL, '2016-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (40, '10011', 'Noory Eka Muliantri', 'Noory.muliantri@krakatau-it.co.id', '', '1988-06-19 00:00:00', '3678', '2', 'K3', '', 'B', '10029877544', '0001138567948', '3672022612070362', NULL, '681690368417000', '085217105767', '', '', '', NULL, '2017-06-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (41, '10012', 'Fahru Ramdan', 'fahru.ramdan@krakatau-it.co.id', '', '1987-05-21 00:00:00', '3678', '1', 'K2', '', 'O', '11037798052', '0001143220487', '3673021902180004', NULL, '589447721401000', '08191104616', '', '', '', NULL, '2017-06-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (42, '10014', 'Claudia Febrina', 'claudia.febrina@krakatau-it.co.id', '', '1994-02-15 00:00:00', '3678', '2', 'K1', '', 'O', '17039870831', '0001600296243', '3672072608090013', NULL, '826917767417000', '087808291993', '', '', '', NULL, '2017-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (43, '10015', 'Marlita Dewi', 'marlita.dewi@krakatau-it.co.id', '', '1995-03-16 00:00:00', '3381', '2', 'K0', '', 'O', '17029456229', '0001597653279', '3672052706060102', NULL, '814127940417000', '087871672750', '', '', '', NULL, '2017-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (44, '10016', 'Yevilina Aulia Rizka', 'yevilina.auliarizka@krakatau-it.co.id', '', '1993-01-26 00:00:00', '3176', '2', 'TK', '', 'A', '17039870856', '0001477982597', '3604051102076931', NULL, '831667654401000', '08568451503', '', '', '', NULL, '2017-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (45, '10017', 'Koen Dian Pancawati', 'Koen.Pancawati@krakatau-it.co.id', '', '1994-05-03 00:00:00', '3273', '2', 'TK', '', 'O', '17039870864', '0002099589783', '3216081607120028', NULL, '806968079413000', '089666975490', '', '', '', NULL, '2017-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (46, '10018', 'Fadia Hadyani Putri', 'Fadia.putri@krakatau-it.co.id', '', '1993-10-09 00:00:00', '3281', '2', 'K1', '', 'A', '17039870872', '0000059871677', '3271052802070529', NULL, '817296627404000', '081318387759', '', '', '', NULL, '2017-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (47, '10020', 'Annisa Putri Mashur', 'annissa.mashur@krakatau-it.co.id', '', '1994-04-14 00:00:00', '3678', '2', 'K1', '', 'O', '16047623810', '0001324201026', '3604040109040096', NULL, '801859091401000', '087889443997', '', '', '', NULL, '2017-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (48, '10022', 'Galih Nugroho', 'galih.nugraha@krakatau-it.co.id', '', '1993-03-16 00:00:00', '3678', '1', 'TK', '', 'B', '17054688860', '0001204993089', '3672011201080077', NULL, '832781611417000', '087871038903', '', '', '', NULL, '2017-09-25 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (51, '10025', 'Rinny Lestari', 'rinny.lestari@krakatau-it.co.id', '', '1993-06-15 00:00:00', '3678', '2', 'K0', '', 'B', '17024644621', '0002282138054', '3672071711070152', NULL, '826968869417000', '083127367631', '', '', '', NULL, '2017-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (52, '10026', 'Septian Tri Putra', 'septian.tp@krakatau-it.co.id', '', '1986-09-02 00:00:00', '3678', '1', 'K1', '', 'A', '15031467168', '0001310565519', '3204321902140018', NULL, '891122103417000', '082112233309', '', '', '', NULL, '2017-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (53, '10027', 'Munaji', 'munaji@krakatau-it.co.id', '', '1992-05-22 00:00:00', '3677', '1', 'K1', '', 'O', '13016407630', '0001297817853', '3672070108160004', NULL, '660665969417000', '085215929889', '', '', '', NULL, '2017-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (55, '10029', 'Yoiko Maison', 'yoiko.maison@krakatau-it.co.id', '', '1991-03-27 00:00:00', '1372', '1', 'TK', '', 'O', '17014513612', '0001775493865', '1372020708060009', NULL, '800994246203000', '08116602270', '', '', '', NULL, '2017-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (56, '10030', 'Indri Lestiani', 'indri.lestiani@krakatau-it.co.id', '', '1995-03-17 00:00:00', '1671', '2', 'K1', '', 'A', '18024214142', '0002443071521', '1671072601080318', NULL, '842086175417000', '081958636698', '', '', '', NULL, '2018-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (57, '10031', 'Erpan Gustira', 'erpan.gustira@krakatau-it.co.id', '', '1992-08-20 00:00:00', '3678', '1', 'K1', '', 'O', '18024214175', '0001590531851', '3672012712070506', NULL, '842148223417000', '081567818364', '', '', '', NULL, '2018-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (58, '10032', 'Aulia Fitri Alindira', 'auliaf.alindira@krakatau-it.co.id', '', '1993-03-26 00:00:00', '3678', '2', 'K0', '', 'A', '18024214159', '0001600305647', '3604051102077344', NULL, '762812667401000', '08569067176', '', '', '', NULL, '2018-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (59, '10034', 'Desi Sulistiani', 'Desi.sulistiani@krakatau-it.co.id', '', '1987-12-26 00:00:00', '3678', '2', 'K0', '', 'B', '11000500592', '0001139284539', '3672051310170004', NULL, '68022785741', '08561684458', '', '', '', NULL, '2018-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (60, '10035', 'Tri Joko Wibowo', 'trijoko.wibowo@krakatau-it.co.id', '', '1979-04-06 00:00:00', '3471', '1', 'K2', '', 'AB', '11037798060', '0001143220498', '3672070803170008', NULL, '8966506154', '081806044401', '', '', '', NULL, '2018-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (61, '10036', 'Firidli Hajar Mahardicha', 'f.hajar.mahardicha@krakatau-it.co.id', '', '1992-05-02 00:00:00', '3518', '1', 'TK', '', 'B', '15026661056', '0001856108351', '3518111906020072', NULL, '351811020592000', '081212828007', '', '', '', NULL, '2018-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (62, '10037', 'Rendy Sutisna', 'rendy.sutisna@krakatau-it.co.id', '', '1983-01-05 00:00:00', '3202', '1', 'K2', '', 'O', '12041745568', '0001317042742', '3604052208190017', NULL, '724451307417000', '081288615177', '', '', '', NULL, '2018-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (63, '10038', 'Yunanto Andhika Didamba', 'yunanto.andhika@krakatau-it.co.id', '', '1990-06-14 00:00:00', '3322', '1', 'K0', '', 'O', '15010542874', '0001814745418', '3673052804200003', NULL, '725000871617000', '087850835223', '', '', '', NULL, '2018-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (64, '10039', 'Ade Wahyudi', 'ade.wahyudi@krakatau-it.co.id', '', '1982-01-10 00:00:00', '3678', '1', 'K2', '', 'O', '11008837459', '0001140226615', '3672082011070112', NULL, '580939072417000', '081573076389', '', '', '', NULL, '2018-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (65, '10040', 'Habib Rahman', 'habib.rahman@krakatau-it.co.id', '', '1979-04-29 00:00:00', '3372', '1', 'K3', '', 'O', '12012643966', '0001145492109', '3201300607170002', NULL, '578982076526000', '08179560856', '', '', '', NULL, '2018-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (66, '10041', 'Chandra Setyo Nugroho', 'chandra@krakatau-it.co.id', '', '1982-12-20 00:00:00', '3278', '1', 'K3', '', 'O', '08003516344', '0001140226626', '3673010303150014', NULL, '580938975417000', '087824222464', '', '', '', NULL, '2018-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (67, '10042', 'Astari Rozalina', 'astari.rozalina@krakatau-it.co.id', '', '1993-02-16 00:00:00', '1375', '2', 'TK', '', 'A', '18035203548', '0001476943233', '1306120505080131', NULL, '851029413202000', '085363051276', '', '', '', NULL, '2018-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (68, '10043', 'Aditia Nugroho', 'aditia.nugroho@krakatau-it.co.id', '', '1989-04-20 00:00:00', '3176', '1', 'K2', '', 'O', '13009167118', '0001261544275', '367202211217006', NULL, '892934738403000', '08561222313', '', '', '', NULL, '2018-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (69, '10044', 'Ahmad Naufal Primadhika Mutamar', 'naufal.mutamar@krakatau-it.co.id', '', '1995-10-21 00:00:00', '3678', '1', 'K1', '', 'A', '18080977178', '0001600254191', '36720201100010', NULL, '861702504417000', '081222453804', '', '', '', NULL, '2019-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (70, '10045', 'Ihsan Mentaya Putra', 'ihsanm.putra@krakatau-it.co.id', '', '1990-07-14 00:00:00', '6372', '1', 'K1', '', 'B', '18080977202', '0001459519075', '3204320502180004', NULL, '717288468424000', '085659307344', '', '', '', NULL, '2019-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (71, '10046', 'Edy Setyo Bayu Aji', 'edy.sbaji@krakatau-it.co.id', '', '1992-04-26 00:00:00', '3311', '1', 'TK', '', 'A', '17016873428', '0000032489054', '1810080704100021', NULL, '813396843325000', '087894368498', '', '', '', NULL, '2019-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (72, '10048', 'Ucu Yudi', 'ucu.yudi@krakatau-it.co.id', '', '1990-04-14 00:00:00', '3602', '1', 'K1', '', 'B', '19014388425', '0001617702974', '3604051108170009', NULL, '348077942419000', '081911194759', '', '', '', NULL, '2019-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (73, '10049', 'Restu Raharja', 'restu.raharja@krakatau-it.co.id', '', '1993-05-24 00:00:00', '3278', '1', 'K1', '', 'O', '17026647317', '0001600303375', '360405110207005', NULL, '818510935401000', '08989301555', '', '', '', NULL, '2019-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (74, '10050', 'Diki Dewa Putra', 'diki.dewaputra@krakatau-it.co.id', '', '1988-07-12 00:00:00', '3273', '1', 'K2', '', 'A', '14025624918', '0001836367424', '3173010303160034', NULL, '258222546403000', '087867097788', '', '', '', NULL, '2019-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (75, '10051', 'Nana Supriatna', 'Nana.supriatna@krakatau-it.co.id', '', '1992-02-09 00:00:00', '3281', '1', 'K1', '', 'B', '15004656987', '0001630564086', '3672082411200000', NULL, '730533239436000', '085710973405', '', '', '', NULL, '2019-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (76, '10052', 'Dani Agustian', 'dani.agustian@krakatau-it.co.id', '', '1988-08-23 00:00:00', '3678', '2', 'K1', '', 'O', '12003585903', '0001144125022', '3672080604180005', NULL, '447002346417000', '085286246098', '', '', '', NULL, '2019-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (77, '10053', 'Satya Mintharenza', 'satya.mintharenza@krakatau-it.co.id', '', '1990-10-01 00:00:00', '3316', '1', 'K0', '', 'A', '15037880273', '0002044440707', '3672051902180001', NULL, '761664887401000', '082226442644', '', '', '', NULL, '2019-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (78, '10054', 'Iskandar Zulkarnaen', 'iskandar.zulkarnaen@krakatau-it.co.id', '', '1994-01-12 00:00:00', '3471', '1', 'K2', '', 'B', '16011689110', '0002043610255', '3672080103190005', NULL, '754131698531000', '085743051217', '', '', '', NULL, '2019-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (79, '10055', 'Maulidya Balqis Rulinsha', 'maulidya.rulinsha@krakatau-it.co.id', '', '1996-07-27 00:00:00', '3604', '2', 'TK', '', 'B', '19032792962', '0001600737412', '3672070303100009', NULL, '911352409417000', '087889888982', '', '', '', NULL, '2019-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (80, '10056', 'Nada Lisdara', 'nada.lisdara@krakatau-it.co.id', '', '1997-07-13 00:00:00', '3604', '2', 'K1', '', 'O', '19032792954', '0001190210826', '3672052912110002', NULL, '911351807417000', '087774744641', '', '', '', NULL, '2019-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (81, '10057', 'Afriyadi Sauqi', 'Afriyadi.Sauqi@krakatau-it.co.id', '', '1993-04-27 00:00:00', '3604', '1', 'K0', '', 'B', '18005640158', '0001823477668', '3604051007090012', NULL, '829184928401000', '087771045723', '', '', '', NULL, '2020-02-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (82, '10058', 'Arkan Wira Pradipta', 'arkan.wira@krakatau-it.co.id', '', '1995-10-20 00:00:00', '3678', '1', 'K1', '', 'AB', '19014388474', '0001600252481', '3672072208090096', NULL, '903473213417000', '087845608084', '', '', '', NULL, '2020-02-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (83, '10059', 'Bagus Chandra', 'bagus.chandra@krakatau-it.co.id', '', '1995-05-13 00:00:00', '3678', '1', 'K0', '', 'B', '18024214167', '0001592689577', '3672071304100012', NULL, '735035842417000', '081380819771', '', '', '', NULL, '2020-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (85, '10061', 'Fajar Isnandio Cindyka', 'fajar.isnandio@krakatau-it.co.id', '', '1991-05-27 00:00:00', '3604', '1', 'TK', '', 'A', '15026661080', '0001855175725', '3672071202080116', NULL, '706644487417000', '081703590406', '', '', '', NULL, '2021-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (86, '10062', 'Muhtadi', 'muchtadi@krakatau-it.co.id', '', '1976-11-29 00:00:00', '3678', '1', 'K3', '', 'O', '10013030225', '0001140226604', '3672082911760005', NULL, '580939072417000', '087771689127', '', '', '', NULL, '2021-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (87, '10063', 'Dida Nurwanda', 'dida.nurwanda@krakatau-it.co.id', '', '1993-07-15 00:00:00', '3601', '1', 'K0', '', 'O', '17045238734', '0002475077319', '3601310 01081782', NULL, '832344915419000', '085312098482', '', '', '', NULL, '2021-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (88, '10064', 'Ganes Aryudha', 'ganes.aryudha@krakatau-it.co.id', '', '1983-10-11 00:00:00', '3176', '1', 'K0', '', 'O', '11033299741', '0001142739235', '3672061101130002', NULL, '844660613417000', '082111146008', '', '', '', NULL, '2021-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (89, '10065', 'Zainul Mutaqin', 'Zainul.Muttaqin@krakatau-it.co.id', '', '1978-06-05 00:00:00', '3604', '1', 'K3', '', 'B', '10000825215', '0001136487497', '3672071009090043', NULL, '758975569417000', '087771617716', '', '', '', NULL, '2021-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (90, '10066', 'Elisa Anggraini', 'elisa.anggraini@krakatau-it.co.id', '', '1996-04-15 00:00:00', '3678', '2', 'TK', '', 'B', '18080977087', '0001297802698', '3672022412070294', NULL, '861172286417000', '081210086610', '', '', '', NULL, '2021-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (91, '10067', 'Entol Fakih', 'entol.fakih@krakatau-it.co.id', '', '1988-09-21 00:00:00', '3678', '1', 'K0', '', 'B', '17024644571', '0002259758114', '3604301102071730', NULL, '820019800401000', '08176960473', '', '', '', NULL, '2021-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (92, '10068', 'Widhi Dwi Anggoro', 'widhi.danggoro@krakatau-it.co.id', '', '1989-06-06 00:00:00', '3381', '1', 'K2', '', 'O', '13016407648', '0001901985862', '3672021709180001', NULL, '756029427523000', '081911121142', '', '', '', NULL, '2021-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (93, '10069', 'Zaenal Mutakin', 'zaenal.mutakin@krakatau-it.co.id', '', '1995-11-22 00:00:00', '3677', '1', 'K1', '', 'O', '17031147360', '0000816577931', '3672082311070111', NULL, '813708831417000', '081911265940', '', '', '', NULL, '2022-01-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (94, '10070', 'Mohamad Taufik Husaeni', 'm.taufik@krakatau-it.co.id', '', '1986-12-14 00:00:00', '3678', '1', 'K2', '', 'B', '09026785817', '0001136095053', '3201061601170016', NULL, '704002849401000', '081513229565', '', '', '', NULL, '2022-01-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (95, '10071', 'Novi Mayasari', 'novi.mayasari@krakatau-it.co.id', '', '1996-11-30 00:00:00', '3677', '2', 'K0', '', 'B', '16026251765', '0001285075405', '3672010910090050', NULL, '814452579417000', '085211735007', '', '', '', NULL, '2022-01-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (96, '10072', 'Devara Aulia Utami', 'devaraa.utami@krakatau-it.co.id', '', '1997-09-28 00:00:00', '3604', '2', 'TK', '', 'A', '19062495395', '0000168365889', '3672051503180011', NULL, '950375949417000', '087870041444', '', '', '', NULL, '2022-02-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (97, '10073', 'Andiarto Dimas', 'andiarto.dimas@krakatau-it.co.id', '', '1987-07-04 00:00:00', '3604', '1', 'K1', '', 'A', '17024644647', '0001654616485', '3673012103190016', NULL, '460220643401000', '081317163973', '', '', '', NULL, '2022-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (98, '10074', 'Briliyan Panji Handoko', 'briliyanp.handoko@krakatau-it.co.id', '', '1993-07-19 00:00:00', '3604', '1', 'K1', '', 'O', '17003574534', '0001600736635', '3672072608090042', NULL, '767131139417000', '087771303793', '', '', '', NULL, '2022-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (99, '10075', 'Mochamad Alda Gumelar', 'alda.gumelar@krakatau-it.co.id', '', '1992-08-05 00:00:00', '3325', '1', 'TK', '', 'O', '16034584942', '0002076260343', '3672010512170000', NULL, '754870046412000', '085313232453', '', '', '', NULL, '2022-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (100, '10076', 'Furkon Fajri', 'furqon.fajri@krakatau-it.co.id', '', '1990-12-10 00:00:00', '3678', '1', 'K1', '', 'O', '17024644613', '0001592778339', '3672050608180006', NULL, '878610054401000', '082312053337', '', '', '', NULL, '2022-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (101, '10077', 'Iskandar Muda', 'iskandar.muda@krakatau-it.co.id', '', '1991-11-03 00:00:00', '3604', '1', 'K1', '', 'B', '13036351396', '0001304804384', '3672082009180006', NULL, '727448235401000', '0895391975527', '', '', '', NULL, '2022-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (102, '10078', 'Mukhamad Benny', 'mukhamad.benny@krakatau-it.co.id', '', '1989-07-02 00:00:00', '3678', '1', 'K1', '', 'A', '13003704544', '0001124426676', '3673011502180028', NULL, '541541082401000', '085946545791', '', '', '', NULL, '2022-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (103, '10079', 'Imam Rahma Sanjaya', 'imamr.sanjaya@krakatau-it.co.id', '', '1997-11-28 00:00:00', '3601', '1', 'TK', '', 'O', '19082606518', '', '3601252302080017', NULL, '930960448419000', '08780202004', '', '', '', NULL, '2022-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (104, '10081', 'Feri Indriyana', 'fery.indriyana@krakatau-it.co.id', '', '1989-12-22 00:00:00', '3678', '1', 'K2', '', 'B', '10027517126', '0001138407232', '3672060412150003', NULL, '446989048401000', '087809823323', '', '', '', NULL, '2022-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (105, '10082', 'Bonny Rizaldi', 'bonny.rizaldi@krakatau-it.co.id', '', '1992-11-22 00:00:00', '3604', '1', 'K2', '', 'O', '15026661031', '0001824059079', '3672020205170003', NULL, '758019723417000', '081289677746', '', '', '', NULL, '2022-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (106, '10083', 'Ato Ulloh', 'ato.ulloh@krakatau-it.co.id', '', '1983-03-05 00:00:00', '3678', '1', 'K2', '', 'B', '11023414573', '0001141634665', '3672082808090007', NULL, '881195853417000', '08176453312', '', '', '', NULL, '2022-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (107, '10084', 'Dwina Rizki Anindhita', 'dwina.anindhita@krakatau-it.co.id', '', '1993-09-12 00:00:00', '3678', '2', 'TK', '', 'B', '17033080429', '0001600779532', '3672051204100002', NULL, '806901666401000', '082136530289', '', '', '', NULL, '2022-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (108, '10085', 'Ni Made Riska Indrayati', 'riska.indrayati@krakatau-it.co.id', '', '1990-10-31 00:00:00', '3678', '2', 'K1', '', 'B', '16023719004', '', '3672082212150010', NULL, '763898137417000', '087771310940', '', '', '', NULL, '2022-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (109, '10086', 'Edwin Purnama', 'edwin.purnama@krakatau-it.co.id', '', '1993-12-20 00:00:00', '3176', '1', 'K1', '', 'B', '18026679185', '', '3604052603190003', NULL, '823132774409000', '081211089158', '', '', '', NULL, '2022-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (110, '10087', 'Agung Betariandy', 'agung.betariandy@krakatau-it.co.id', '', '1986-08-21 00:00:00', '3678', '1', 'K1', '', 'O', '18080977160', '', '3374062207190002', NULL, '763667490401000', '087883755323', '', '', '', NULL, '2022-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (111, '10088', 'Davin Alfarizky Putra Basudewa', 'davin.alfarizkypb@krakatau-it.co.id', '', '1999-07-30 00:00:00', '2105', '1', 'TK', '', 'O', '20064617911', '', '3604091102072878', NULL, '957134406454000', '082133986101', '', '', '', NULL, '2022-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (112, '10089', 'Khoirul Ulum', 'khoirul.ulum@krakatau-it.co.id', '', '1996-07-18 00:00:00', '3601', '1', 'TK', '', 'A', '18080977129', '', '3601122611120007', NULL, '811301506419000', '083813248255', '', '', '', NULL, '2022-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (113, '10090', 'Antonia Tri Hartanti', 'antoniat.hartanti@krakatau-it.co.id', '', '1983-01-29 00:00:00', '3313', '2', 'D3', '', 'B', '22011169418', '', '3672052210210004', NULL, '578982001528000', '081280684455', '', '', '', NULL, '2022-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (114, '10091', 'Amelia Adiny', 'amelia.adiny@krakatau-it.co.id', '', '1999-10-11 00:00:00', '3677', '2', 'TK', '', 'O', '09808080808', '', '3672071109090096', NULL, '539165415417000', '081384843202', '', '', '', NULL, '2022-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (115, '90223', 'Harris Permana', 'haris.permana@krakatau-it.co.id', '', '1984-02-18 00:00:00', '3678', '1', 'K1', '', 'AB', '10003671798', '0001136603529', '3604062804170004', NULL, '972396139401000', '081911227456', '', '', '', NULL, '2010-02-08 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (116, '90284', 'Lucky Muslim Nurhakim', 'Lucky.Muslim@krakatau-it.co.id', '', '1991-04-22 00:00:00', '3273', '1', 'K2', '', 'A', '11006417106', '0001139972275', '3604052312150008', NULL, '773670120401000', '081384146351', '', '', '', NULL, '2011-02-21 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (117, '90305', 'Fajar Setyawan', 'fajar.setyawan@krakatau-it.co.id', '', '1992-11-06 00:00:00', '3677', '1', 'K1', '', 'O', '11008897685', '0001140225513', '3672020212090001', NULL, '497014118417000', '083804631900', '', '', '', NULL, '2011-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (118, '90343', 'Nurully Januar', 'rully.januar@krakatau-it.co.id', '', '1987-01-09 00:00:00', '3275', '1', 'K1', '', 'O', '11021174534', '0001141406212', '3673063001140011', NULL, '267810869439000', '085224912294', '', '', '', NULL, '2012-02-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (119, '90398', 'Ita Nurjanah', 'ita.nurjanah@krakatau-it.co.id', '', '1993-01-16 00:00:00', '3678', '2', 'K2', '', 'O', '16034584934', '0001435939727', '3604302907150001', NULL, '704738830417000', '087778388170', '', '', '', NULL, '2014-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (120, '90410', 'Shoheh Azis Fatulloh', 'shoheh.azis@krakatau-it.co.id', '', '1992-03-22 00:00:00', '3604', '1', 'K2', '', 'O', '10018784107', '0001137752785', '3672021010170001', NULL, '711373027417000', '087772617331', '', '', '', NULL, '2010-07-22 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (121, '90414', 'Hanafi', 'hanafi@krakatau-it.co.id', '', '1989-04-18 00:00:00', '3604', '1', 'K1', '', 'A', '09013704458', '0001135374963', '3672070205160005', NULL, '882869472401000', '087774818043', '', '', '', NULL, '2009-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (123, '90429', 'Jarkasih', 'jarkasih@krakatau-it.co.id', '', '1994-08-17 00:00:00', '3677', '1', 'K1', '', 'B', '15010542858', '0001848349462', '3672060310180002', NULL, '722810744417000', '087871136642', '', '', '', NULL, '2015-02-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (124, '90430', 'Achmad Arif Rudiyani', 'arief.rudiyani@krakatau-it.co.id', '', '1994-11-21 00:00:00', '3604', '1', 'K0', '', 'O', '15010542866', '0001848349912', '3672072212070089', NULL, '722909389417000', '087871370021', '', '', '', NULL, '2015-02-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (125, '90437', 'Novi Hotimah', 'novi.hotimah@krakatau-it.co.id', '', '1976-11-15 00:00:00', '3678', '2', 'K2', '', 'O', '02K50081433', '0001129393822', '3672082711070226', NULL, '813933587417000', '081315825956', '', '', '', NULL, '1993-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (126, '90463', 'Pandji Prasetya', 'Pandji@krakatau-it.co.id', '', '1994-11-05 00:00:00', '3678', '1', 'K0', '', 'B', '15040654806', '0001901984714', '36720605110090021', NULL, '817647035417000', '081291428659', '', '', '', NULL, '2015-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (127, '90467', 'Maulana Kelvin Fahlevy', 'maulana.kelvin@krakatau-it.co.id', '', '1994-11-18 00:00:00', '3678', '1', 'K2', '', 'O', '13044807645', '0001821373468', '3673031803140006', NULL, '463320689401000', '085945542413', '', '', '', NULL, '2015-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (128, '90477', 'Agung Syahputra', 'Agung.Syahputra@krakatau-it.co.id', '', '1992-07-31 00:00:00', '3604', '1', 'TK', '', 'B', '15060433651', '0001883399837', '3672082311070547', NULL, '745749523417000', '081293241736', '', '', '', NULL, '2015-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (129, '90483', 'Nanang Ibnu Qosim', 'nanangi.qosim@krakatau-it.co.id', '', '1987-07-02 00:00:00', '3604', '1', 'K2', '', 'AB', '16017291127', '0001617719668', '3673011903150001', NULL, '448543512401000', '087774824737', '', '', '', NULL, '2016-03-28 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (130, '90485', 'Rina Oktavialianti', 'rina.oktavialianti@krakatau-it.co.id', '', '1991-10-15 00:00:00', '3678', '2', 'K1', '', 'O', '12037476699', '0001826864741', '3171031510180001', NULL, '449475813401000', '081285028060', '', '', '', NULL, '2016-04-19 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (131, '90487', 'Attika Adha Kurnia', 'attika.kurnia@krakatau-it.co.id', '', '1998-04-06 00:00:00', '3677', '2', 'K0', '', 'A', '16023719020', '0000208923682', '3672012812070179', NULL, '762508307417000', '085946599200', '', '', '', NULL, '2016-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (132, '90498', 'Didit Permata Aji', 'didit.p.aji@krakatau-it.co.id', '', '1986-09-21 00:00:00', '3301', '1', 'K2', '', 'A', '16040864056', '0002203239363', '3672081501180011', NULL, '358292381401000', '083812837376', '', '', '', NULL, '2016-08-22 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (133, '90501', 'Fakhrizal', 'fakhrizal@krakatau-it.co.id', '', '1989-12-03 00:00:00', '3176', '1', 'K2', '', 'O', '17003574518', '0002218850076', '367205011170001', NULL, '832305163417000', '08815689705', '', '', '', NULL, '2016-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (134, '90505', 'Annisa Resnianti', 'annisa.resnianty@krakatau-it.co.id', '', '1993-07-11 00:00:00', '3678', '2', 'K0', '', 'B', '17008428330', '0001600720749', '3672023012090005', NULL, '832496376417000', '085213522703', '', '', '', NULL, '2017-01-03 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (135, '90506', 'Sindu Riswanda', 'sindu.riswanda@krakatau-it.co.id', '', '1998-08-12 00:00:00', '3601', '1', 'TK', '', 'O', '17008428314', '0002943727446', '3601171807080001', NULL, '809809221419000', '081295070096', '', '', '', NULL, '2017-01-06 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (136, '90507', 'Reza Yanovan', 'reza.yanovan@krakatau-it.co.id', '', '1993-11-17 00:00:00', '3678', '1', 'TK', '', 'O', '17008428306', '0001336839412', '3604062006110003', NULL, '660413238401000', '087717111993', '', '', '', NULL, '2017-01-22 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (137, '90508', 'Muhammad Malik Artanto', 'malik.artanto@krakatau-it.co.id', '', '1994-10-16 00:00:00', '3677', '1', 'K0', '', 'B', '17008428322', '0001155549262', '4051102071397', NULL, '556281749401000', '081911250095', '', '', '', NULL, '2017-01-16 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (138, '90511', 'Ahmad Hamdan Hidayat', 'ahmadh.hidayat@krakatau-it.co.id', '', '1996-01-30 00:00:00', '3678', '1', 'K0', '', 'O', '17014513588', '0001054262777', '3672071809090002', NULL, '367207300196000', '083127241929', '', '', '', NULL, '2017-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (139, '90512', 'Zaenal Muttaqin', 'zainal.muttaqin@krakatau-it.co.id', '', '1998-11-06 00:00:00', '3678', '1', 'TK', '', 'B', '17014513596', '0002432805647', '367208011150010', NULL, '831366869417000', '085216629761', '', '', '', NULL, '2017-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (140, '90515', 'Valdi haris', 'valdi.haris@krakatau-it.co.id', '', '1994-06-30 00:00:00', '3273', '1', 'K1', '', 'B', '17024644639', '0001600278344', '3672022412070340', NULL, '740421839417000', '085773312149', '', '', '', NULL, '2017-04-12 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (141, '90517', 'Asry Febriana', 'asry.febriana@krakatau-it.co.id', '', '1998-02-11 00:00:00', '3678', '2', 'TK', '', 'O', '17024644662', '0002257801446', '3672082901180005', NULL, '813580974417000', '085693929897', '', '', '', NULL, '2017-05-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (142, '90531', 'Chelvina Olivia', 'chelvina.olivia@krakatau-it.co.id', '', '1992-07-25 00:00:00', '3678', '2', 'K1', '', 'AB', '17029067075', '0002280602081', '3672080409090002', NULL, '451624001417000', '087888243655', '', '', '', NULL, '2017-06-05 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (143, '90533', 'Triar Kurniasih', 'triar@krakatau-it.co.id', '', '1994-01-15 00:00:00', '3604', '2', 'K1', '', 'A', '17045238726', '0000209482479', '3604051102071982', NULL, '643606932401000', '085946804994', '', '', '', NULL, '2017-07-19 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (144, '90537', 'Hesta Fernanda Aji Saputra', 'hesta.fernanda@krakatau-it.co.id', '', '1990-01-31 00:00:00', '3527', '1', 'K2', '', 'O', '17061588012', '0002267924106', '3672012110150002', NULL, '667945141644000', '082330633708', '', '', '', NULL, '2017-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (145, '90540', 'Candra Kurniawan', 'candra.kurniawan@krakatau-it.co.id', '', '1995-10-25 00:00:00', '3176', '1', 'TK', '', 'O', '18024214183', '0002443069809', '3672050304140010', NULL, '900658303417000', '085774420596', '', '', '', NULL, '2018-03-14 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (146, '90541', 'Mistar', 'mistar@krakatau-it.co.id', '', '1989-12-12 00:00:00', '3678', '1', 'K0', '', 'A', '16047388877', '0001900587238', '3604281112130007', NULL, '550558787401000', '087871348070', '', '', '', NULL, '2018-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (147, '90546', 'Verdy Praseldy', 'verdy.praseldy@krakatau-it.co.id', '', '1991-11-14 00:00:00', '3176', '1', 'K1', '', 'O', '18080977095', '0001847050378', '36702071304060009', NULL, '757150834417000', '085782520421', '', '', '', NULL, '2018-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (148, '90551', 'Vendy Praseldy', 'vendy.praseldy@krakatau-it.co.id', '', '1991-11-14 00:00:00', '3176', '1', 'K2', '', 'O', '18080977152', '0001847049557', '3672010701190006', NULL, '757793831417000', '085691164293', '', '', '', NULL, '2018-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (149, '90552', 'Revi Afrianto', 'revi.afrianto@krakatau-it.co.id', '', '1993-10-05 00:00:00', '3678', '1', 'TK', '', 'A', '18080977145', '0001800985926', '3672082311070570', NULL, '763457850417000', '085974391220', '', '', '', NULL, '2018-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (150, '90553', 'Mahesha Taruna Galitra', 'maeshat.galithra@krakatau-it.co.id', '', '1995-08-19 00:00:00', '3678', '1', 'K0', '', 'O', '18080977186', '0002767958752', '3672012205140003', NULL, '762508216417000', '087872271640', '', '', '', NULL, '2018-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (151, '90560', 'Didin Zaenudin', 'zaenudin@krakatau-it.co.id', '', '1984-12-22 00:00:00', '3678', '1', 'K2', '', 'O', '19014388433', '0001144193668', '3604301811160010', NULL, '588343913401000', '081911041883', '', '', '', NULL, '2019-01-21 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (152, '90570', 'Achmad Saprudin', 'ahmad.rudi@krakatau-it.co.id', '', '1986-05-07 00:00:00', '1801', '1', 'K2', '', 'A', '12012643941', '0002690742993', '3672020807140004', NULL, '865356828417000', '085212350010', '', '', '', NULL, '2012-01-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (153, '90571', 'Ranu Yudha Umbara', 'ranuy.umbara@krakatau-it.co.id', '', '1991-05-24 00:00:00', '3176', '1', 'K2', '', 'O', '20023748484', '0001620124931', '3603312411170009', NULL, '448640854451000', '08971824882', '', '', '', NULL, '2020-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (154, '90572', 'Ardisa Tamara Putri', 'ardisat.putri@krakatau-it.co.id', '', '1995-04-21 00:00:00', '3678', '2', 'TK', '', 'B', '20023748492', '0001590469029', '3672021603120009', NULL, '838443299417000', '081315255753', '', '', '', NULL, '2020-03-11 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (155, '90574', 'Pitha Dinza Pameilia', 'pithad.pameilia@krakatau-it.co.id', '', '1997-05-31 00:00:00', '3604', '2', 'K0', '', 'A', '19038621116', '0001600173246', '3604051102079285', NULL, '947435376454000', '081210901841', '', '', '', NULL, '2020-04-06 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (156, '90578', 'Kurob', 'kurob@krakatau-it.co.id', '', '1993-04-13 00:00:00', '3604', '1', 'K1', '', 'A', '20056330432', '0002378019947', '3672011007200002', NULL, '801525098401000', '87855561244', '', '', '', NULL, '2020-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (157, '90580', 'Dwima Maoreta', 'dwima.maoreta@krakatau-it.co.id', '', '1995-03-30 00:00:00', '3671', '2', 'TK', '', 'B', '19034272088', '0001600778799', '3672022612070150', NULL, '956657712417000', '087783872724', '', '', '', NULL, '2020-08-24 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (158, '90582', 'Adi Bagas Pratama', 'adib.pratama@krakatau-it.co.id', '', '1997-07-23 00:00:00', '3208', '1', 'TK', '', 'AB', '20064617887', '0002267902416', '3672051611070281', NULL, '958376311417000', '089524559362', '', '', '', NULL, '2020-09-07 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (159, '90583', 'Yuanita Annisatul Hijriyah', 'yuanitaa.hijriyah@krakatau-it.co.id', '', '1989-06-07 00:00:00', '3205', '2', 'TK', '', 'O', '20064617895', '0001474765558', '3604051102078062', NULL, '850054990401000', '08953-3794-4392', '', '', '', NULL, '2020-09-07 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (160, '90584', 'Ilyas Abdi Nugraha', 'ilyasa.nugraha@krakatau-it.co.id', '', '1997-03-24 00:00:00', '3678', '1', 'K0', '', 'O', '20064617903', '0001590519148', '3672012712070457', NULL, '958407116417000', '0895606961933', '', '', '', NULL, '2020-09-07 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (162, '90586', 'Muhamad Farras Afif', 'muhamadf.afif@krakatau-it.co.id', '', '1996-03-26 00:00:00', '3604', '1', 'TK', '', 'O', '19082508532', '0001799934366', '3672011407110007', NULL, '930714977417000', '082125460984', '', '', '', NULL, '2020-09-14 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (164, '90589', 'Maudy Mareta', 'maudy.mareta@krakatau-it.co.id', '', '1994-08-23 00:00:00', '3604', '2', 'TK', '', 'B', '20091701514', '0001136579466', '3604302105120001', NULL, '765676341401000', '0877 64136919', '', '', '', NULL, '2020-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (165, '90590', 'Sobirin', 'sobirin@krakatau-it.co.id', '', '1975-07-02 00:00:00', '1801', '1', 'K3', '', 'O', '10000375534', '0001159150713', '3604090107110009', NULL, '968195982454000', '0859 20154499', '', '', '', NULL, '2020-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (166, '90593', 'Dessy Ikhwani Aulia', 'dessy.iaulia@krakatau-it.co.id', '', '1986-12-24 00:00:00', '3205', '2', 'D4', '', 'O', '21069637466', '0001381958627', '3672050408210004', NULL, '777182981401000', '081297947976', '', '', '', NULL, '2021-09-02 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (167, '90594', 'Sigit Adi Nugroho', 'sigita.nugroho@krakatau-it.co.id', '', '1995-12-21 00:00:00', '3275', '1', 'TK', '', 'B', '21080863679', '0003057721244', '3275062205070019', NULL, '13064556427000', '089654884260', '', '', '', NULL, '2021-10-04 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (168, '90595', 'Kama Jaya Hasan Lomri', 'kamajh.lomri@krakatau-it.co.id', '', '1993-12-05 00:00:00', '3678', '1', 'TK', '', 'A', '20084125937', '0001481499696', '3672022312070161', NULL, '438798639417000', '085966777774', '', '', '', NULL, '2021-10-11 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (169, '90596', 'Bagus Sanjaya Pratama', 'baguss.pratama@krakatau-it.co.id', '', '2000-09-24 00:00:00', '3677', '1', 'TK', '', 'B', '21088267055', '0001962536073', '3672081907100009', NULL, '530363258417000', '089627418930', '', '', '', NULL, '2021-10-28 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (170, '90597', 'Rizki Cahyana', 'rizki.cahyana@krakatau-it.co.id', '', '1994-07-23 00:00:00', '3678', '1', 'TK', '', 'A', '18069395939', '0002566994409', '3604010907040191', NULL, '831939962401000', '0895381955272', '', '', '', NULL, '2021-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (171, '90601', 'Ryan Fernando', 'ryanfernando1995@gmail.com', '', '1995-03-23 00:00:00', '1871', '1', 'K1', '', 'B', '22011169376', '0001600771645', '3672060701080006', NULL, '762433753417000', '087772400811', '', '', '', NULL, '2022-01-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (172, '90602', 'Donny Ramadhan H', 'ramadhandonny88@gmail.com', '', '1998-12-14 00:00:00', '3677', '1', 'TK', '', 'B', '22011169368', '0002919050537', '3604072103180004', NULL, '846407013401000', '08998612236', '', '', '', NULL, '2022-01-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (173, '90603', 'Sumiyati', 'sumiyati@krakatau-it.co.id', '', '1994-04-06 00:00:00', '3601', '2', 'TK', '', 'A', '18080977103', '0002767957907', '3601150701081303', NULL, '762624948419000', '083812303570', '', '', '', NULL, '2022-02-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (174, '90604', 'Muhammad Farrel Fajariadi', 'muhammadf.fajariadi@krakatau-it.co.id', '', '1999-03-25 00:00:00', '3176', '1', 'TK', '', 'B', '22029165630', '0002071056892', '3674031903100273', NULL, '530427368453000', '082127308617', '', '', '', NULL, '2022-02-16 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (175, '90605', 'Islahatun Nufusi', 'islahatun.nufusi@krakatau-it.co.id', '', '1998-11-07 00:00:00', '3604', '2', 'TK', '', 'O', '22029165648', '0002710567934', '3604220611090011', NULL, '530142660454000', '085893324274', '', '', '', NULL, '2022-03-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (176, '90606', 'Niken Prastywi', 'niken.prastywi@krakatau-it.co.id', '', '1984-06-13 00:00:00', '3381', '2', 'K2', '', 'O', '12009308581', '0002503683764', '3672020303150006', NULL, '788883726417000', '081327598000', '', '', '', NULL, '2022-04-04 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (177, '90607', 'Destiono', 'destiono@krakatau-it.co.id', '', '1986-12-14 00:00:00', '3677', '1', 'K2', '', 'B', '04K50040286', '0001129419224', '3672071709160007', NULL, '680228350417000', '081218244722', '', '', '', NULL, '2011-02-16 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (178, '90609', 'Rahmatullah', 'rahmatullah@krakatau-it.co.id', '', '1968-01-11 00:00:00', '3604', '1', 'K2', '', 'AB', '08023630018', '', '90939002390', NULL, '980099909934', '081906460124', '', '', '', NULL, '2022-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (179, '90610', 'Agus Taufik', 'Agus.Taufik@krakatau-it.co.id', '', '1969-08-03 00:00:00', '3678', '1', 'K4', '', 'O', '08023630026', '', '3604012008040076', NULL, '580938892401000', '087871909116', '', '', '', NULL, '2022-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (180, '90611', 'Afu Fuad', 'afu.fuad@krakatau-it.co.id', '', '1968-07-16 00:00:00', '3176', '1', 'K1', '', 'B', '08023630034', '', '3604051102078894', NULL, '641761200401000', '08176020391', '', '', '', NULL, '2022-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (181, '90612', 'Mutawali', 'mutawali@krakatau-it.co.id', '', '1975-03-02 00:00:00', '3678', '1', 'TK', '', 'B', '00K50059870', '', '3672021812070271', NULL, '758974596417000', '085716236862', '', '', '', NULL, '2022-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (182, '90613', 'Randy Aprilia', 'randy.aprilia@krakatau-it.co.id', '', '1996-04-06 00:00:00', '3678', '1', 'TK', '', 'B', '22078306036', '', '3604012709040148', NULL, '631456118401000', '08998078789', '', '', '', NULL, '2022-06-23 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (183, '90614', 'Nadia Sofiana', 'nadia.sofiana@krakatau-it.co.id', '', '1997-11-03 00:00:00', '3678', '2', 'TK', '', 'O', '22078306051', '', '3673013007120018', NULL, '659950166401000', '089686792593', '', '', '', NULL, '2022-06-23 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (184, '90615', 'Dania Septiani Suryadwitami', 'dania.septiani@krakatau-it.co.id', '', '1996-09-21 00:00:00', '3678', '2', 'TK', '', 'O', '22078306077', '', '3672022312070114', NULL, '922552534417000', '081285797294', '', '', '', NULL, '2022-06-27 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (186, '90617', 'Via Fajriyatin Rizqi', 'via.fajriyatin@krakatau-i.co.id', '', '2000-12-26 00:00:00', '3677', '2', 'TK', '', '', '22078306119', '', '3672013108090042', NULL, '921144820417000', '085157712260', '', '', '', NULL, '2022-06-29 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (187, '90618', 'Ineke Aminata', 'ineke.aminata@krakatau-it.co.id', '', '1998-06-01 00:00:00', '3678', '2', 'TK', '', 'O', '21017178050', '', '3604040205060006', NULL, '768462830401000', '089650577695', '', '', '', NULL, '2022-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (188, '90619', 'Galang Gema Maulid Akbar', 'galang.gema@krakatau-it.co.id', '', '1996-08-04 00:00:00', '3678', '1', 'TK', '', 'AB', '22078306085', '', '3604071205090027', NULL, '416235109454000', '081314340618', '', '', '', NULL, '2022-07-04 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (189, '90620', 'Uki Maswan Muhammad', 'uki.maswan@krakatau-it.co.id', '', '1997-08-22 00:00:00', '3678', '1', 'TK', '', 'O', '22078306044', '', '3604211407040007', NULL, '601505324401000', '081384861236', '', '', '', NULL, '2022-07-04 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (190, '90621', 'Yakub Sulvi Pratama', 'yakub.sulvi@krakatau-it.co.id', '', '1987-08-27 00:00:00', '3176', '1', 'K2', '', 'B', '22078306028', '', '3174022503111012', NULL, '745849612018000', '087878851010', '', '', '', NULL, '2022-07-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (191, '90623', 'Fitriyani', 'fitriyani@krakatau-it.co.id', '', '2003-06-03 00:00:00', '3677', '2', 'TK', '', 'B', '22094025313', '', '3672051606150003', NULL, '632191458417000', '0895321404433', '', '', '', NULL, '2022-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (193, '90625', 'Sara Iasha', 'SARA.IASHA@KRAKATAU-IT.CO.ID', '', '1995-04-15 00:00:00', '3176', '2', 'TK', '', 'B', '', '', '3275081308070012', NULL, '861920916447000', '081314999443', '', '', '', NULL, '2022-09-05 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (194, '90626', 'Ahmad Ibrohim', 'AHMAD.IBROHIM@KRAKATAU-IT.CO.ID', '', '2001-10-31 00:00:00', '3677', '1', 'TK', '', 'B', '22109782221', '', '3672042112070334', NULL, '951153055417000', '087853051382', '', '', '', NULL, '2022-09-12 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (195, '90627', 'Siti Masfiroh', 'siti.masfiroh@krakatau-it.co.id', '', '1999-01-14 00:00:00', '3677', '2', 'TK', '', 'A', '22127308124', '', '3672070503080058', NULL, '613793587417000', '083890980848', '', '', '', NULL, '2022-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (196, '90628', 'Marie Muhammad', 'marie.muhammad@krakatau-it.co.id', '', '1995-12-22 00:00:00', '3671', '1', 'TK', '', 'O', '22127308132', '0002911908701', '3672062608090071', NULL, '936263136417000', '081318008602', '', '', '', NULL, '2022-10-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (197, '90629', 'Dewi Triajengningtias', 'dewi.tjningtias@krakatau-it.co.id', '', '1998-02-24 00:00:00', '3677', '2', 'TK', '', 'A', '21097123299', '', '3604051102078328', NULL, '532693165404000', '081283009713', '', '', '', NULL, '2022-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (198, '90630', 'Muhammad Indigo', 'muhammad.indigo@krakatau-it.co.id', '', '2000-09-15 00:00:00', '3274', '1', 'TK', '', '', '22143586091', '', '3172041001094603', NULL, '618325815417000', '0895379315454', '', '', '', NULL, '2022-11-15 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (199, '90631', 'Nadia Putri Prabandini', 'nadia.prabandini@krakatau-it.co.id', '', '1997-04-25 00:00:00', '3678', '2', 'TK', '', 'O', '19105711808', '', '3672021212070293', NULL, '935708362417000', '08988654200', '', '', '', NULL, '2022-11-28 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (200, '90632', 'Dimas Sultan Arifiandy', 'dimas.sarifiandy@krakatau-it.co.id', '', '1998-06-02 00:00:00', '3176', '1', 'TK', '', 'A', '', '', '3603011810120022', NULL, '618909246451000', '0895392989845', '', '', '', NULL, '2022-11-28 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (201, '90633', 'Dinda Maharani', 'dinda.maharani@krakatau-it.co.id', '', '1998-11-01 00:00:00', '1671', '2', 'K0', '', 'A', '21059244729', '', '1671092912060024', NULL, '967467986301000', '082177915591', '', '', '', NULL, '2022-12-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (202, '90634', 'Chandra Widiatmoko', 'chandra.widiatmoko@krakatau-it.co.id', '', '2000-02-18 00:00:00', '3176', '1', 'TK', '', '', '', '', '3175040205121008', NULL, '623466778005000', '08119088686', '', '', '', NULL, '2023-01-02 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (203, '20002', 'Rohmani Saufara', 'rohmani.saufara@krakatau-it.co.id', '', '1967-05-09 00:00:00', '', '1', 'K3', '', '', '', '', '3604012306040168', NULL, '091577221401000', '087771399192', '', '', '', NULL, '1990-05-11 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (204, '20003', 'Didi Turmudi', 'didi.turmudi@krakatau-it.co.id ', '', '1967-09-16 00:00:00', '', '1', 'K3', '', '', '', '', '3604071102074995', NULL, '091573055401000', '081317472726', '', '', '', NULL, '1990-05-11 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (205, '20005', 'Usep Ali Rahman', 'usep.arahman@krakatau-it.co.id ', '', '1973-02-06 00:00:00', '', '1', 'K2', '', '', '', '', '3604023110040015', NULL, '091612812401000', '081932167050', '', '', '', NULL, '1996-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (206, '20006', 'Kris Sunarhadi', 'kris.sunarhadi@krakatau-it.co.id ', '', '1973-07-26 00:00:00', '', '1', 'K2', '', '', '', '', '3604061811090003', NULL, '872631833401000', '085782760927', '', '', '', NULL, '2015-01-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (207, '20008', 'Makhfud', 'makhfud@krakatau-it.co.id', '', '1975-01-02 00:00:00', '', '1', 'K3', '', '', '', '', '3672080209090004', NULL, '872630082417000', '081295555885', '', '', '', NULL, '2010-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (208, '20010', 'Iwan Suarno', 'iwan.suarno@krakatau-it.co.id ', '', '1980-04-26 00:00:00', '', '1', 'K1', '', '', '', '', '3672010701100002', NULL, '', '085310339225', '', '', '', NULL, '2007-02-14 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (209, '20011', 'Ifan Fals', 'ifan.fals@krakatau-it.co.id ', '', '1984-11-30 00:00:00', '', '1', 'K3', '', '', '', '', '3673011612110013', NULL, '', '081806982656', '', '', '', NULL, '2007-08-14 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (210, '20012', 'Hendri Marsidi', 'hendri.marsidi@krakatau-it.co.id ', '', '1986-09-11 00:00:00', '', '1', 'K2', '', '', '', '', '3672021704140001', NULL, '494617616417000', '081932295621', '', '', '', NULL, '2007-08-14 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (211, '20013', 'Imalludin', 'imalludin@krakatau-it.co.id', '', '1987-07-15 00:00:00', '', '1', 'K2', '', '', '', '', '3673062309130003', NULL, '697066249401000', '081806491060', '', '', '', NULL, '2009-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (212, '20014', 'Dede Supriyatna', 'dede.supriyatna@krakatau-it.co.id', '', '1987-08-29 00:00:00', '', '1', 'K0', '', '', '', '', '3673031403190001', NULL, '697066322401000', '085959599741', '', '', '', NULL, '2009-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (213, '20015', 'Hari Deviyanto', 'hari.deviyanto@krakatau-it.co.id', '', '1987-12-21 00:00:00', '', '1', 'D0', '', '', '', '', '', NULL, '697066157417000', '085691988871', '', '', '', NULL, '2009-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (214, '20016', 'Habibi', 'habibi@krakatau-it.co.id', '', '1988-01-01 00:00:00', '', '1', 'K1', '', '', '', '', '3672051001170005', NULL, '448419671417000', '087871063240', '', '', '', NULL, '2017-08-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (215, '20017', 'Muhammad Ichwan', 'muhammad.ichwan@krakatau-it.co.id', '', '1988-06-24 00:00:00', '', '1', 'K2', '', '', '', '', '3604051506160006', NULL, '594090425417000', '087871509569', '', '', '', NULL, '2010-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (216, '20018', 'Akhmad Sulaiman', 'akhmad.sulaiman@krakatau-it.co.id', '', '1988-12-08 00:00:00', '', '1', 'K3', '', '', '', '', '3672071512110003', NULL, '697066256417000', '085959051114', '', '', '', NULL, '2009-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (217, '20019', 'Mualif', 'mualif@krakatau-it.co.id', '', '1989-03-22 00:00:00', '', '1', 'K2', '', '', '', '', '', NULL, '697066181417000', '081808212436', '', '', '', NULL, '2009-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (218, '20020', 'Ade Wahyu Hidayat', 'adew.hidayat@krakatau-it.co.id', '', '1989-04-03 00:00:00', '', '1', 'K2', '', '', '', '', '3604062001210001', NULL, '793764333522000', '087871298387', '', '', '', NULL, '2018-11-09 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (219, '20021', 'Ahmad Gufroni', 'ahmad.gufroni@krakatau-it.co.id', '', '1990-01-12 00:00:00', '', '1', 'K2', '', '', '', '', '3672070502160001', NULL, '', '081906059554', '', '', '', NULL, '2010-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (220, '20022', 'Irwan Hendrawan', 'irwan.hendrawan@krakatau-it.co.id', '', '1990-01-24 00:00:00', '', '1', 'K2', '', '', '', '', '3672072807160010', NULL, '', '089508537611', '', '', '', NULL, '2010-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (221, '20023', 'Sadroji', 'sadroji@krakatau-it.co.id', '', '1990-08-11 00:00:00', '', '1', 'K1', '', '', '', '', '3672061602150004', NULL, '', '087774572744', '', '', '', NULL, '2010-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (222, '20024', 'Dadan Lesmana', 'dadan.lesmana@krakatau-it.co.id', '', '1991-05-13 00:00:00', '', '1', 'K1', '', '', '', '', '3604072211170001', NULL, '', '087809011065', '', '', '', NULL, '2010-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (223, '20025', 'Ari Winarno', 'ari.winarno@krakatau-it.co.id', '', '1992-03-19 00:00:00', '', '1', 'K0', '', '', '', '', '', NULL, '460107717517000', '085779877800', '', '', '', NULL, '2012-07-02 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (224, '20026', 'Aris', 'aris@krakatau-it.co.id', '', '1992-12-01 00:00:00', '', '1', 'K0', '', '', '', '', '', NULL, '669639338419000', '087773269556', '', '', '', NULL, '2014-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (225, '20027', 'Muhamad Hanif', 'muhmad.hanif@krakatau-it.co.id', '', '1993-01-05 00:00:00', '', '1', 'TK', '', '', '', '', '3374062903190006', NULL, '460130727619000', '08562797279', '', '', '', NULL, '2012-07-02 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (226, '20028', 'Mas Andi Ibrahim', 'masa.ibrahim@krakatau-it.co.id', '', '1993-05-03 00:00:00', '', '1', 'K2', '', '', '', '', '3672033008160008', NULL, '447373457401000', '085710346344', '', '', '', NULL, '2012-01-27 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (227, '20032', 'Faizal Rizki', 'faizal.rizki@krakatau-it.co.id', '', '1993-09-06 00:00:00', '', '1', 'TK', '', '', '', '', '', NULL, '460130271618000', '081387564692', '', '', '', NULL, '2012-07-02 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (228, '20033', 'Lucky Firman Tri Cahyono', 'luckyf.cahyono@krakatau-it.co.id', '', '1993-12-20 00:00:00', '', '1', 'K1', '', '', '', '', '3604251211180009', NULL, '460110927518000', '085755751042', '', '', '', NULL, '2012-07-02 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (229, '20035', 'Triyana Eka Putra', 'triyanae.putra@krakatau-it.co.id', '', '1994-05-13 00:00:00', '', '1', 'TK', '', '', '', '', '3604052209160014', NULL, '669023921421000', '082115461116', '', '', '', NULL, '2014-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (230, '20036', 'Felix Andi Pradhitama', 'felixa.pradhitama@krakatau-it.co.id', '', '1994-05-25 00:00:00', '', '1', 'TK', '', '', '', '', '3277022111060068', NULL, '669017816421000', '085624654103', '', '', '', NULL, '2014-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (231, '20037', 'Galih Agung Wicaksono', 'galiha.wicaksono@krakatau-it.co.id', '', '1994-08-22 00:00:00', '', '1', 'K1', '', '', '', '', '3673060509180005', NULL, '669089484006000', '087781587537', '', '', '', NULL, '2014-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (232, '20038', 'Cecep Kurniawan', 'cecep.kurniawan@krakatau-it.co.id', '', '1994-10-23 00:00:00', '', '1', 'K0', '', '', '', '', '3673052204190002', NULL, '669230716401000', '083813705549', '', '', '', NULL, '2014-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (233, '20039', 'Anggilang', 'anggilang@krakatau-it.co.id', '', '1995-01-17 00:00:00', '', '1', 'TK', '', '', '', '', '3602240909090211', NULL, '669208035419000', '081910960191', '', '', '', NULL, '2014-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (234, '20041', 'Dian Nur Arifin', 'diann.arifin@krakatau-it.co.id', '', '1995-05-09 00:00:00', '', '1', 'TK', '', '', '', '', '3277011910061587', NULL, '643313042421000', '089636140580', '', '', '', NULL, '2018-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (235, '20042', 'Satiri', 'satiri@krakatau-it.co.id', '', '1995-08-18 00:00:00', '', '1', 'TK', '', '', '', '', '3672010806200011', NULL, '744014515417000', '083813096703', '', '', '', NULL, '2015-11-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (236, '20043', 'Maulana Yusuf', 'maulana.yusuf@krakatau-it.co.id', '', '1996-10-01 00:00:00', '', '1', 'TK', '', '', '', '', '3601090801082918', NULL, '815131784441900', '087781625952', '', '', '', NULL, '2018-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (237, '20044', 'Anang Mulyadi', 'anang.mulyadi@krakatau-it.co.id', '', '1996-12-07 00:00:00', '', '1', 'TK', '', '', '', '', '3672021412070334', NULL, '731988424441700', '087883975680', '', '', '', NULL, '2018-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (238, '20045', 'Rizky Dwi Ramadhan', 'rizkyd.ramadhan@krakatau-it.co.id', '', '1997-01-27 00:00:00', '', '1', 'TK', '', '', '', '', '3672050904210007', NULL, '815310958841700', '081287651947', '', '', '', NULL, '2018-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (239, '20046', 'Syarif Hidayatullah', 'syarif.hidayatullah@krakatau-it.co.id', '', '1998-12-16 00:00:00', '', '1', 'K0', '', '', '', '', '3672022009190002', NULL, '815574934441700', '089662528171', '', '', '', NULL, '2018-04-01 00:00:00', NULL, '', '', '', '', '0000-00-00 00:00:00', NULL);
INSERT INTO `mas_karyawan` VALUES (240, '2', 'Admin HC', 'admin.hc@krakatau-it.co.id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for mas_kota
-- ----------------------------
DROP TABLE IF EXISTS `mas_kota`;
CREATE TABLE `mas_kota`  (
  `prov_code` int NOT NULL,
  `city_code` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`city_code`, `prov_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9272 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mas_kota
-- ----------------------------
INSERT INTO `mas_kota` VALUES (11, 1101, 'KAB. ACEH SELATAN    ');
INSERT INTO `mas_kota` VALUES (11, 1102, 'KAB. ACEH TENGGARA   ');
INSERT INTO `mas_kota` VALUES (11, 1103, 'KAB. ACEH TIMUR ');
INSERT INTO `mas_kota` VALUES (11, 1104, 'KAB. ACEH TENGAH');
INSERT INTO `mas_kota` VALUES (11, 1105, 'KAB. ACEH BARAT ');
INSERT INTO `mas_kota` VALUES (11, 1106, 'KAB. ACEH BESAR ');
INSERT INTO `mas_kota` VALUES (11, 1107, 'KAB. PIDIE');
INSERT INTO `mas_kota` VALUES (11, 1108, 'KAB. ACEH UTARA ');
INSERT INTO `mas_kota` VALUES (11, 1109, 'KAB. SIMEULUE   ');
INSERT INTO `mas_kota` VALUES (11, 1110, 'KAB. ACEH SINGKIL    ');
INSERT INTO `mas_kota` VALUES (11, 1111, 'KAB. BIREUN');
INSERT INTO `mas_kota` VALUES (11, 1112, 'KAB. ACEH BARAT DAYA ');
INSERT INTO `mas_kota` VALUES (11, 1113, 'KAB. GAYO LUES  ');
INSERT INTO `mas_kota` VALUES (11, 1114, 'KAB. ACEH JAYA  ');
INSERT INTO `mas_kota` VALUES (11, 1115, 'KAB. NAGAN JAYA ');
INSERT INTO `mas_kota` VALUES (11, 1116, 'KAB. ACEH TAMIANG    ');
INSERT INTO `mas_kota` VALUES (11, 1117, 'KAB. BENER MERIAH    ');
INSERT INTO `mas_kota` VALUES (11, 1171, 'KOTA BANDA ACEH ');
INSERT INTO `mas_kota` VALUES (11, 1172, 'KOTA SABANG');
INSERT INTO `mas_kota` VALUES (11, 1173, 'KOTA LHOKSEUMAWE');
INSERT INTO `mas_kota` VALUES (11, 1174, 'KOTA LANGSA');
INSERT INTO `mas_kota` VALUES (12, 1201, 'KAB. TAPANULI TENGAH ');
INSERT INTO `mas_kota` VALUES (12, 1202, 'KAB. TAPANULI UTARA  ');
INSERT INTO `mas_kota` VALUES (12, 1203, 'KAB. TAPANULI SELATAN');
INSERT INTO `mas_kota` VALUES (12, 1204, 'KAB. NIAS ');
INSERT INTO `mas_kota` VALUES (12, 1205, 'KAB. LANGKAT    ');
INSERT INTO `mas_kota` VALUES (12, 1206, 'KAB. KARO ');
INSERT INTO `mas_kota` VALUES (12, 1207, 'KAB. DELI SERDANG    ');
INSERT INTO `mas_kota` VALUES (12, 1208, 'KAB. SIMALUNGUN ');
INSERT INTO `mas_kota` VALUES (12, 1209, 'KAB. ASAHAN');
INSERT INTO `mas_kota` VALUES (12, 1210, 'KAB. LABUHAN BATU    ');
INSERT INTO `mas_kota` VALUES (12, 1211, 'KAB. DAIRI');
INSERT INTO `mas_kota` VALUES (12, 1212, 'KAB. TOBA SAMOSIR    ');
INSERT INTO `mas_kota` VALUES (12, 1213, 'KAB. MANDAILING NATAL');
INSERT INTO `mas_kota` VALUES (12, 1214, 'KAB. NIAS SELATAN    ');
INSERT INTO `mas_kota` VALUES (12, 1215, 'KAB. PAKPAK BARAT    ');
INSERT INTO `mas_kota` VALUES (12, 1216, 'KAB. HUMBANG HASUNDUTAN');
INSERT INTO `mas_kota` VALUES (12, 1217, 'KAB. SAMOSIR ');
INSERT INTO `mas_kota` VALUES (12, 1218, 'KAB. SERDANG BEDAGAI ');
INSERT INTO `mas_kota` VALUES (12, 1271, 'KOTA MEDAN');
INSERT INTO `mas_kota` VALUES (12, 1272, 'KOTA PEMATANG SIANTAR');
INSERT INTO `mas_kota` VALUES (12, 1273, 'KOTA SIBOLGA    ');
INSERT INTO `mas_kota` VALUES (12, 1274, 'KOTA TANJUNG BALAI   ');
INSERT INTO `mas_kota` VALUES (12, 1275, 'KOTA BINJAI');
INSERT INTO `mas_kota` VALUES (12, 1276, 'KOTA TEBING TINGGI   ');
INSERT INTO `mas_kota` VALUES (12, 1277, 'KOTA PADANG SIDEMPUA ');
INSERT INTO `mas_kota` VALUES (12, 1278, 'BALIGE    ');
INSERT INTO `mas_kota` VALUES (12, 1279, 'SASASGGGGGGGGGG');
INSERT INTO `mas_kota` VALUES (13, 1301, 'KAB.PESISIR SELATAN  ');
INSERT INTO `mas_kota` VALUES (13, 1302, 'KAB. SOLOK');
INSERT INTO `mas_kota` VALUES (13, 1303, 'KAB. SW.LUNTO   ');
INSERT INTO `mas_kota` VALUES (13, 1304, 'KAB. TANAH DATAR');
INSERT INTO `mas_kota` VALUES (13, 1305, 'KAB. PADANG PARIAMAN ');
INSERT INTO `mas_kota` VALUES (13, 1306, 'KAB. AGAM ');
INSERT INTO `mas_kota` VALUES (13, 1307, 'KAB. LIMA PULUH KOTA ');
INSERT INTO `mas_kota` VALUES (13, 1308, 'KAB. PASAMAN ');
INSERT INTO `mas_kota` VALUES (13, 1309, 'KAB. KEPULAUAN MENTAWAI');
INSERT INTO `mas_kota` VALUES (13, 1310, 'KAB. DHARMASRAYA');
INSERT INTO `mas_kota` VALUES (13, 1311, 'KAB. SOLOK SELATAN ');
INSERT INTO `mas_kota` VALUES (13, 1312, 'KAB. PASAMAN BARAT ');
INSERT INTO `mas_kota` VALUES (13, 1371, 'KOTA PADANG');
INSERT INTO `mas_kota` VALUES (13, 1372, 'KOTA SOLOK');
INSERT INTO `mas_kota` VALUES (13, 1373, 'KOTA SAWHLUNTO  ');
INSERT INTO `mas_kota` VALUES (13, 1374, 'KOTA PADANG PANJANG  ');
INSERT INTO `mas_kota` VALUES (13, 1375, 'KOTA BUKITTINGGI');
INSERT INTO `mas_kota` VALUES (13, 1376, 'KOTA PAYAKUMBUH ');
INSERT INTO `mas_kota` VALUES (13, 1377, 'KOTA PARIAMAN   ');
INSERT INTO `mas_kota` VALUES (14, 1401, 'KAB. KAMPAR');
INSERT INTO `mas_kota` VALUES (14, 1402, 'KAB. INDRAGIRI HULU  ');
INSERT INTO `mas_kota` VALUES (14, 1403, 'KAB. BENGKALIS  ');
INSERT INTO `mas_kota` VALUES (14, 1404, 'KAB. INDRAGIRI HILIR ');
INSERT INTO `mas_kota` VALUES (14, 1405, 'KAB. PELALAWAN  ');
INSERT INTO `mas_kota` VALUES (14, 1406, 'KAB. ROKAN HULU ');
INSERT INTO `mas_kota` VALUES (14, 1407, 'KAB. ROKAN HILIR');
INSERT INTO `mas_kota` VALUES (14, 1408, 'KAB. SIAK ');
INSERT INTO `mas_kota` VALUES (14, 1409, 'KAB. KUANTAN SINGINGI');
INSERT INTO `mas_kota` VALUES (14, 1471, 'KOTA PEKAN BARU ');
INSERT INTO `mas_kota` VALUES (14, 1472, 'KOTA DUMAI');
INSERT INTO `mas_kota` VALUES (14, 1473, 'RIAU      ');
INSERT INTO `mas_kota` VALUES (15, 1501, 'KAB. KERINCI    ');
INSERT INTO `mas_kota` VALUES (15, 1502, 'KAB. MEANGIN    ');
INSERT INTO `mas_kota` VALUES (15, 1503, 'KAB. SAROLANGUN ');
INSERT INTO `mas_kota` VALUES (15, 1504, 'KAB. BATANGHARI ');
INSERT INTO `mas_kota` VALUES (15, 1505, 'KAB. MUARO JAMBI');
INSERT INTO `mas_kota` VALUES (15, 1506, 'KAB. TANJUNG JABUNG BARAT                                                                           ');
INSERT INTO `mas_kota` VALUES (15, 1507, 'KAB. TANJUNG JABUNG TIMUR                                                                           ');
INSERT INTO `mas_kota` VALUES (15, 1508, 'KAB. BUN');
INSERT INTO `mas_kota` VALUES (15, 1509, 'KAB. TEBO ');
INSERT INTO `mas_kota` VALUES (15, 1571, 'KOTA JAMBI');
INSERT INTO `mas_kota` VALUES (16, 1601, 'KAB. OGAN KOMERING ULU ');
INSERT INTO `mas_kota` VALUES (16, 1602, 'KAB. OGAN KOMERING ILIR ');
INSERT INTO `mas_kota` VALUES (16, 1603, 'KAB. MUARA ENIM ');
INSERT INTO `mas_kota` VALUES (16, 1604, 'KAB. LAHAT');
INSERT INTO `mas_kota` VALUES (16, 1605, 'KAB. MUSI RAWAS ');
INSERT INTO `mas_kota` VALUES (16, 1606, 'KAB. MUSI BANYUASIN  ');
INSERT INTO `mas_kota` VALUES (16, 1607, 'KAB. BANYUASIN  ');
INSERT INTO `mas_kota` VALUES (16, 1608, 'KAB. OKU TIMUR ');
INSERT INTO `mas_kota` VALUES (16, 1609, 'KAB. OKU SELATAN ');
INSERT INTO `mas_kota` VALUES (16, 1610, 'KAB. OGAN ILIR ');
INSERT INTO `mas_kota` VALUES (16, 1671, 'KOTA PALEMBANG  ');
INSERT INTO `mas_kota` VALUES (16, 1672, 'KOTA PAGAR ALAM ');
INSERT INTO `mas_kota` VALUES (16, 1673, 'KOTA LUBUK LINGGAU   ');
INSERT INTO `mas_kota` VALUES (16, 1674, 'KOTA PRABUMULIH ');
INSERT INTO `mas_kota` VALUES (17, 1701, 'KAB. BENGKULU SELATAN');
INSERT INTO `mas_kota` VALUES (17, 1702, 'KAB. REJANG LEBONG ');
INSERT INTO `mas_kota` VALUES (17, 1703, 'KAB. BENGKULU UTARA  ');
INSERT INTO `mas_kota` VALUES (17, 1704, 'KAB. KAUR ');
INSERT INTO `mas_kota` VALUES (17, 1705, 'KAB. SELUMA');
INSERT INTO `mas_kota` VALUES (17, 1706, 'KAB. MUKO MUKO  ');
INSERT INTO `mas_kota` VALUES (17, 1707, 'KAB. LEBONG ');
INSERT INTO `mas_kota` VALUES (17, 1708, 'KAB. KEPAHIANG ');
INSERT INTO `mas_kota` VALUES (17, 1771, 'KOTA BENGKULU   ');
INSERT INTO `mas_kota` VALUES (18, 1801, 'KAB. LAMPUNG SELATAN ');
INSERT INTO `mas_kota` VALUES (18, 1802, 'KAB. LAMPUNG TENGAH  ');
INSERT INTO `mas_kota` VALUES (18, 1803, 'KAB. LAMPUNG UTARA   ');
INSERT INTO `mas_kota` VALUES (18, 1804, 'KAB. LAMPUNG BARAT   ');
INSERT INTO `mas_kota` VALUES (18, 1805, 'KAB. TULANG BAWANG   ');
INSERT INTO `mas_kota` VALUES (18, 1806, 'KAB. TANGGAMUS  ');
INSERT INTO `mas_kota` VALUES (18, 1807, 'KAB. LAMPUNG TIMUR   ');
INSERT INTO `mas_kota` VALUES (18, 1808, 'KAB. WAY KANAN  ');
INSERT INTO `mas_kota` VALUES (18, 1871, 'KOTA BANDAR LAMPUNG  ');
INSERT INTO `mas_kota` VALUES (18, 1872, 'KOTA METRO');
INSERT INTO `mas_kota` VALUES (18, 1873, 'TANJUNG KARANG  ');
INSERT INTO `mas_kota` VALUES (19, 1901, 'KAB. BANGKA');
INSERT INTO `mas_kota` VALUES (19, 1902, 'KAB. BELITUNG   ');
INSERT INTO `mas_kota` VALUES (19, 1903, 'KAB. BANGKA SELATAN  ');
INSERT INTO `mas_kota` VALUES (19, 1904, 'KAB. BANGKA TENGAH   ');
INSERT INTO `mas_kota` VALUES (19, 1905, 'KAB. BANGKA BARAT    ');
INSERT INTO `mas_kota` VALUES (19, 1906, 'KAB. BANGKA TIMUR    ');
INSERT INTO `mas_kota` VALUES (19, 1971, 'KOTA PANGKAL PINANG  ');
INSERT INTO `mas_kota` VALUES (21, 2101, 'KAB. KEPULAUAN RIAU ');
INSERT INTO `mas_kota` VALUES (21, 2102, 'KAB. KARIMUN    ');
INSERT INTO `mas_kota` VALUES (21, 2103, 'KAB. NATUNA');
INSERT INTO `mas_kota` VALUES (21, 2104, 'KAB. LINGGA ');
INSERT INTO `mas_kota` VALUES (21, 2105, 'KOTA BATAM');
INSERT INTO `mas_kota` VALUES (21, 2106, 'KOTA TANJUNG PINANG  ');
INSERT INTO `mas_kota` VALUES (31, 3101, 'KAB.ADM.KEP.SERIBU   ');
INSERT INTO `mas_kota` VALUES (31, 3171, 'JAKARTA PUSAT   ');
INSERT INTO `mas_kota` VALUES (31, 3172, 'JAKARTA UTARA   ');
INSERT INTO `mas_kota` VALUES (31, 3173, 'JAKARTA BARAT   ');
INSERT INTO `mas_kota` VALUES (31, 3174, 'JAKARTA SELATAN ');
INSERT INTO `mas_kota` VALUES (31, 3175, 'JAKARTA TIMUR   ');
INSERT INTO `mas_kota` VALUES (31, 3176, 'DKI JAKARTA');
INSERT INTO `mas_kota` VALUES (32, 3201, 'KAB. BOR');
INSERT INTO `mas_kota` VALUES (32, 3202, 'KAB. SUKABUMI   ');
INSERT INTO `mas_kota` VALUES (32, 3203, 'KAB. CIANJUR    ');
INSERT INTO `mas_kota` VALUES (32, 3204, 'KAB. BANDUNG    ');
INSERT INTO `mas_kota` VALUES (32, 3205, 'KAB. GARUT');
INSERT INTO `mas_kota` VALUES (32, 3206, 'KAB. TASIKMALAYA');
INSERT INTO `mas_kota` VALUES (32, 3207, 'KAB. CIAMIS');
INSERT INTO `mas_kota` VALUES (32, 3208, 'KAB. KUNINGAN   ');
INSERT INTO `mas_kota` VALUES (32, 3209, 'KAB. CIREBON    ');
INSERT INTO `mas_kota` VALUES (32, 3210, 'KAB. MAJALENGKA ');
INSERT INTO `mas_kota` VALUES (32, 3211, 'KAB. SUMEDANG   ');
INSERT INTO `mas_kota` VALUES (32, 3212, 'KAB. INDRAMAYU  ');
INSERT INTO `mas_kota` VALUES (32, 3213, 'KAB. SUBANG');
INSERT INTO `mas_kota` VALUES (32, 3214, 'KAB. PURWAKARTA ');
INSERT INTO `mas_kota` VALUES (32, 3215, 'KAB. KARAWANG   ');
INSERT INTO `mas_kota` VALUES (32, 3216, 'KAB. BEKASI');
INSERT INTO `mas_kota` VALUES (32, 3217, 'CIKAMPEK  ');
INSERT INTO `mas_kota` VALUES (32, 3218, 'CIPANAS   ');
INSERT INTO `mas_kota` VALUES (32, 3271, 'KOTA BOR');
INSERT INTO `mas_kota` VALUES (32, 3272, 'KOTA SUKABUMI   ');
INSERT INTO `mas_kota` VALUES (32, 3273, 'KOTA BANDUNG    ');
INSERT INTO `mas_kota` VALUES (32, 3274, 'KOTA CIREBON    ');
INSERT INTO `mas_kota` VALUES (32, 3275, 'KOTA BEKASI');
INSERT INTO `mas_kota` VALUES (32, 3276, 'KOTA DEPOK');
INSERT INTO `mas_kota` VALUES (32, 3277, 'KOTA CIMAHI');
INSERT INTO `mas_kota` VALUES (32, 3278, 'KOTA TASIKMALAYA');
INSERT INTO `mas_kota` VALUES (32, 3279, 'KOTA BANJAR');
INSERT INTO `mas_kota` VALUES (32, 3280, 'CIKARANG  ');
INSERT INTO `mas_kota` VALUES (32, 3281, 'KOTA BOGOR');
INSERT INTO `mas_kota` VALUES (32, 3282, 'KAB. BOGOR');
INSERT INTO `mas_kota` VALUES (33, 3301, 'KAB. CILACAP    ');
INSERT INTO `mas_kota` VALUES (33, 3302, 'KAB. BANYUMAS   ');
INSERT INTO `mas_kota` VALUES (33, 3303, 'KAB. PURBALINGGA');
INSERT INTO `mas_kota` VALUES (33, 3304, 'KAB. BANJARNEGARA    ');
INSERT INTO `mas_kota` VALUES (33, 3305, 'KAB. KEBUMEN    ');
INSERT INTO `mas_kota` VALUES (33, 3306, 'KAB. PURWOREJO  ');
INSERT INTO `mas_kota` VALUES (33, 3307, 'KAB. WONOSOBO   ');
INSERT INTO `mas_kota` VALUES (33, 3308, 'KAB. MAGELANG   ');
INSERT INTO `mas_kota` VALUES (33, 3309, 'KAB. BOYOLALI   ');
INSERT INTO `mas_kota` VALUES (33, 3310, 'KAB. KLATEN');
INSERT INTO `mas_kota` VALUES (33, 3311, 'KAB. SUKOHARJO  ');
INSERT INTO `mas_kota` VALUES (33, 3312, 'KAB. WONOGIRI   ');
INSERT INTO `mas_kota` VALUES (33, 3313, 'KAB. KARANGANYAR');
INSERT INTO `mas_kota` VALUES (33, 3314, 'KAB. SRAGEN');
INSERT INTO `mas_kota` VALUES (33, 3315, 'KAB. GROBOGAN   ');
INSERT INTO `mas_kota` VALUES (33, 3316, 'KAB. BLORA');
INSERT INTO `mas_kota` VALUES (33, 3317, 'KAB. REMBANG    ');
INSERT INTO `mas_kota` VALUES (33, 3318, 'KAB. PATI ');
INSERT INTO `mas_kota` VALUES (33, 3319, 'KAB. KUDUS');
INSERT INTO `mas_kota` VALUES (33, 3320, 'KAB. JEPARA');
INSERT INTO `mas_kota` VALUES (33, 3321, 'KAB. DEMAK');
INSERT INTO `mas_kota` VALUES (33, 3322, 'KAB. SEMARANG   ');
INSERT INTO `mas_kota` VALUES (33, 3323, 'KAB. TEMANGGUNG ');
INSERT INTO `mas_kota` VALUES (33, 3324, 'KAB. KENDAL');
INSERT INTO `mas_kota` VALUES (33, 3325, 'KAB. BATANG');
INSERT INTO `mas_kota` VALUES (33, 3326, 'KAB. PEKALONGAN ');
INSERT INTO `mas_kota` VALUES (33, 3327, 'KAB. PEMALANG   ');
INSERT INTO `mas_kota` VALUES (33, 3328, 'KAB. TEGAL');
INSERT INTO `mas_kota` VALUES (33, 3329, 'KAB. BREBES');
INSERT INTO `mas_kota` VALUES (33, 3371, 'KOTA MAGELANG   ');
INSERT INTO `mas_kota` VALUES (31, 3372, 'xx        ');
INSERT INTO `mas_kota` VALUES (33, 3372, 'KOTA SURAKARTA  ');
INSERT INTO `mas_kota` VALUES (33, 3373, 'KOTA SALATIGA   ');
INSERT INTO `mas_kota` VALUES (33, 3374, 'KOTA SEMARANG   ');
INSERT INTO `mas_kota` VALUES (33, 3375, 'KOTA PEKALONGAN ');
INSERT INTO `mas_kota` VALUES (33, 3376, 'KOTA TEGAL');
INSERT INTO `mas_kota` VALUES (33, 3377, 'KAB. SOLO ');
INSERT INTO `mas_kota` VALUES (33, 3378, 'KOTA SLAWI');
INSERT INTO `mas_kota` VALUES (33, 3379, 'KOTA PURWOKERTO ');
INSERT INTO `mas_kota` VALUES (33, 3380, 'DELANGU   ');
INSERT INTO `mas_kota` VALUES (33, 3381, 'KAB. KABUMEN');
INSERT INTO `mas_kota` VALUES (34, 3401, 'KAB. KULON PRO');
INSERT INTO `mas_kota` VALUES (34, 3402, 'KAB. BANTUL');
INSERT INTO `mas_kota` VALUES (34, 3403, 'KAB. GUNUNG KIDUL    ');
INSERT INTO `mas_kota` VALUES (34, 3404, 'KAB. SLEMAN');
INSERT INTO `mas_kota` VALUES (34, 3471, 'KOTA YOGYAKARTA ');
INSERT INTO `mas_kota` VALUES (35, 3501, 'KAB. PACITAN    ');
INSERT INTO `mas_kota` VALUES (35, 3502, 'KAB. PONORO   ');
INSERT INTO `mas_kota` VALUES (35, 3503, 'KAB. TRENGGALEK ');
INSERT INTO `mas_kota` VALUES (35, 3504, 'KAB. TULUNGAGUNG');
INSERT INTO `mas_kota` VALUES (35, 3505, 'KAB. BLITAR');
INSERT INTO `mas_kota` VALUES (35, 3506, 'KAB. KEDIRI');
INSERT INTO `mas_kota` VALUES (35, 3507, 'KAB. MALANG');
INSERT INTO `mas_kota` VALUES (35, 3508, 'KAB. LUMAJANG   ');
INSERT INTO `mas_kota` VALUES (35, 3509, 'KAB. JEMBER');
INSERT INTO `mas_kota` VALUES (35, 3510, 'KAB. BANYUWANGI ');
INSERT INTO `mas_kota` VALUES (35, 3511, 'KAB. BONDOWOSO  ');
INSERT INTO `mas_kota` VALUES (35, 3512, 'KAB. SITUBONDO  ');
INSERT INTO `mas_kota` VALUES (35, 3513, 'KAB. PROBOLING');
INSERT INTO `mas_kota` VALUES (35, 3514, 'KAB. PASURUAN   ');
INSERT INTO `mas_kota` VALUES (35, 3515, 'KAB. SIDOARJO   ');
INSERT INTO `mas_kota` VALUES (35, 3516, 'KAB. MOJOKERTO  ');
INSERT INTO `mas_kota` VALUES (35, 3517, 'KAB. JOMBANG    ');
INSERT INTO `mas_kota` VALUES (35, 3518, 'KAB. NGANJUK    ');
INSERT INTO `mas_kota` VALUES (35, 3519, 'KAB. MADIUN');
INSERT INTO `mas_kota` VALUES (35, 3520, 'KAB. MAGETAN    ');
INSERT INTO `mas_kota` VALUES (35, 3521, 'KAB. NGAWI');
INSERT INTO `mas_kota` VALUES (35, 3522, 'KAB. BOJONERO ');
INSERT INTO `mas_kota` VALUES (35, 3523, 'KAB. TUBAN');
INSERT INTO `mas_kota` VALUES (35, 3524, 'KAB. LAMONGAN   ');
INSERT INTO `mas_kota` VALUES (35, 3525, 'KAB. GRESIK');
INSERT INTO `mas_kota` VALUES (35, 3526, 'KAB. BANGKALAN  ');
INSERT INTO `mas_kota` VALUES (35, 3527, 'KAB. SAMPANG    ');
INSERT INTO `mas_kota` VALUES (35, 3528, 'KAB. PAMEKASAN  ');
INSERT INTO `mas_kota` VALUES (35, 3529, 'KAB. SUMENEP    ');
INSERT INTO `mas_kota` VALUES (35, 3571, 'KOTA KEDIRI');
INSERT INTO `mas_kota` VALUES (35, 3572, 'KOTA BLITAR');
INSERT INTO `mas_kota` VALUES (35, 3573, 'KOTA MALANG');
INSERT INTO `mas_kota` VALUES (35, 3574, 'KOTA PROBOLING');
INSERT INTO `mas_kota` VALUES (35, 3575, 'KOTA PASURUAN   ');
INSERT INTO `mas_kota` VALUES (35, 3576, 'KOTA MOJOKERTO  ');
INSERT INTO `mas_kota` VALUES (35, 3577, 'KOTA MADIUN');
INSERT INTO `mas_kota` VALUES (35, 3578, 'KOTA SURABAYA   ');
INSERT INTO `mas_kota` VALUES (35, 3579, 'KOTA BATU ');
INSERT INTO `mas_kota` VALUES (36, 3601, 'KAB. PANDEGLANG ');
INSERT INTO `mas_kota` VALUES (36, 3602, 'KAB. LEBAK');
INSERT INTO `mas_kota` VALUES (36, 3603, 'KAB. TANGERANG  ');
INSERT INTO `mas_kota` VALUES (36, 3604, 'KAB. SERANG');
INSERT INTO `mas_kota` VALUES (36, 3671, 'KOTA TANGERANG  ');
INSERT INTO `mas_kota` VALUES (36, 3672, 'KOTA CILEN    ');
INSERT INTO `mas_kota` VALUES (36, 3673, 'KOTA RANGKAS    ');
INSERT INTO `mas_kota` VALUES (36, 3674, 'KOTA WALANTAKA  ');
INSERT INTO `mas_kota` VALUES (36, 3675, 'TANJUNG LESUNG  ');
INSERT INTO `mas_kota` VALUES (36, 3676, 'KARAWACI  ');
INSERT INTO `mas_kota` VALUES (36, 3677, 'KOTA CILEGON');
INSERT INTO `mas_kota` VALUES (36, 3678, 'KOTA SERANG');
INSERT INTO `mas_kota` VALUES (51, 5101, 'KAB. JEMBARANA  ');
INSERT INTO `mas_kota` VALUES (51, 5102, 'KAB. TABANAN    ');
INSERT INTO `mas_kota` VALUES (51, 5103, 'KAB. BADUNG');
INSERT INTO `mas_kota` VALUES (51, 5104, 'KAB. GIANYAR    ');
INSERT INTO `mas_kota` VALUES (51, 5105, 'KAB. KLUNGKUNG  ');
INSERT INTO `mas_kota` VALUES (51, 5106, 'KAB. BANGLI');
INSERT INTO `mas_kota` VALUES (51, 5107, 'KAB. KARANGASEM ');
INSERT INTO `mas_kota` VALUES (51, 5108, 'KAB. BULELENG   ');
INSERT INTO `mas_kota` VALUES (51, 5171, 'KOTA DENPASAR   ');
INSERT INTO `mas_kota` VALUES (52, 5201, 'KAB. LOMBOK BARAT    ');
INSERT INTO `mas_kota` VALUES (52, 5202, 'KAB. LOMBOK TENGAH   ');
INSERT INTO `mas_kota` VALUES (52, 5203, 'KAB. LOMBOK TIMUR    ');
INSERT INTO `mas_kota` VALUES (52, 5204, 'KAB. SUMBAWA ');
INSERT INTO `mas_kota` VALUES (52, 5205, 'KAB. DOMPU');
INSERT INTO `mas_kota` VALUES (52, 5206, 'KAB. BIMA ');
INSERT INTO `mas_kota` VALUES (52, 5207, 'KAB. SUMBAWA BARAT');
INSERT INTO `mas_kota` VALUES (52, 5271, 'KOTA MATARAM    ');
INSERT INTO `mas_kota` VALUES (52, 5272, 'KOTA BIMA ');
INSERT INTO `mas_kota` VALUES (53, 5301, 'KAB. KUPANG');
INSERT INTO `mas_kota` VALUES (53, 5302, 'KAB. TIMOR TENGAH SELATAN                                                                           ');
INSERT INTO `mas_kota` VALUES (53, 5303, 'KAB. TIMOR TENGAH UTARA');
INSERT INTO `mas_kota` VALUES (53, 5304, 'KAB. BELU ');
INSERT INTO `mas_kota` VALUES (53, 5305, 'KAB. ALOR ');
INSERT INTO `mas_kota` VALUES (53, 5306, 'KAB. FLORES TIMUR    ');
INSERT INTO `mas_kota` VALUES (53, 5307, 'KAB. SIKKA');
INSERT INTO `mas_kota` VALUES (53, 5308, 'KAB. ENDE ');
INSERT INTO `mas_kota` VALUES (53, 5309, 'KAB. NGADA');
INSERT INTO `mas_kota` VALUES (53, 5310, 'KAB. MANGGARAI  ');
INSERT INTO `mas_kota` VALUES (53, 5311, 'KAB. SUMBA TIMUR');
INSERT INTO `mas_kota` VALUES (53, 5312, 'KAB. SUMBA BARAT');
INSERT INTO `mas_kota` VALUES (53, 5313, 'KAB. LEMBATA    ');
INSERT INTO `mas_kota` VALUES (53, 5314, 'KAB. ROTE NDAO  ');
INSERT INTO `mas_kota` VALUES (53, 5315, 'KAB. MANGGARAI BARAT ');
INSERT INTO `mas_kota` VALUES (53, 5371, 'KOTA KUPANG');
INSERT INTO `mas_kota` VALUES (61, 6101, 'KAB. SAMBAS');
INSERT INTO `mas_kota` VALUES (61, 6102, 'KAB. PONTIANAK  ');
INSERT INTO `mas_kota` VALUES (61, 6103, 'KAB. SANGGAU ');
INSERT INTO `mas_kota` VALUES (61, 6104, 'KAB. KETAPANG   ');
INSERT INTO `mas_kota` VALUES (61, 6105, 'KAB. SINTANG ');
INSERT INTO `mas_kota` VALUES (61, 6106, 'KAB. KAPUAS HULU');
INSERT INTO `mas_kota` VALUES (61, 6107, 'KAB. BENGKAYANG ');
INSERT INTO `mas_kota` VALUES (61, 6108, 'KAB. LANDAK');
INSERT INTO `mas_kota` VALUES (61, 6109, 'KAB. MELAWI');
INSERT INTO `mas_kota` VALUES (61, 6110, 'KAB. SEKADAU ');
INSERT INTO `mas_kota` VALUES (61, 6171, 'KOTA PONTIANAK  ');
INSERT INTO `mas_kota` VALUES (61, 6172, 'KOTA SINGKAWANG ');
INSERT INTO `mas_kota` VALUES (62, 6201, 'KAB. KOTAWARINGIN BARAT');
INSERT INTO `mas_kota` VALUES (62, 6202, 'KAB. KOTAWARINGIN TIMUR');
INSERT INTO `mas_kota` VALUES (62, 6203, 'KAB. KAPUAS');
INSERT INTO `mas_kota` VALUES (62, 6204, 'KAB. BARITO SELATAN  ');
INSERT INTO `mas_kota` VALUES (62, 6205, 'KAB. BARITO UTARA    ');
INSERT INTO `mas_kota` VALUES (62, 6206, 'KAB. KATINGIN   ');
INSERT INTO `mas_kota` VALUES (62, 6207, 'KAB. SERUYAN    ');
INSERT INTO `mas_kota` VALUES (62, 6208, 'KAB. SUKAMARA   ');
INSERT INTO `mas_kota` VALUES (62, 6209, 'KAB. LAMANDAU   ');
INSERT INTO `mas_kota` VALUES (62, 6210, 'KAB. GUNUNG MAS ');
INSERT INTO `mas_kota` VALUES (62, 6211, 'KAB. PULANG PISAU    ');
INSERT INTO `mas_kota` VALUES (62, 6212, 'KAB. MURUNG RAYA');
INSERT INTO `mas_kota` VALUES (62, 6213, 'KAB. BARITO TIMUR    ');
INSERT INTO `mas_kota` VALUES (62, 6271, 'KOTA PALANGKARAYA    ');
INSERT INTO `mas_kota` VALUES (63, 6301, 'KAB. TANAH LAUT ');
INSERT INTO `mas_kota` VALUES (63, 6302, 'KAB. KOTABARU   ');
INSERT INTO `mas_kota` VALUES (63, 6303, 'KAB. BANJAR');
INSERT INTO `mas_kota` VALUES (63, 6304, 'KAB. BARITO KUALA    ');
INSERT INTO `mas_kota` VALUES (63, 6305, 'KAB. TAPIN');
INSERT INTO `mas_kota` VALUES (63, 6306, 'KAB. HULU SUNGAI SELATAN                                                                            ');
INSERT INTO `mas_kota` VALUES (63, 6307, 'KAB. HULU SUNGAI TENGAH');
INSERT INTO `mas_kota` VALUES (63, 6308, 'KAB. HULU SUNGAI UTARA ');
INSERT INTO `mas_kota` VALUES (63, 6309, 'KAB. TABALONG   ');
INSERT INTO `mas_kota` VALUES (63, 6310, 'KAB. TANAH BAMBU');
INSERT INTO `mas_kota` VALUES (63, 6311, 'KAB. BALANGAN   ');
INSERT INTO `mas_kota` VALUES (63, 6371, 'KOTA BANJARMASIN');
INSERT INTO `mas_kota` VALUES (63, 6372, 'KOTA BANJARBARU ');
INSERT INTO `mas_kota` VALUES (64, 6401, 'KAB. PASIR');
INSERT INTO `mas_kota` VALUES (64, 6402, 'KAB. KUTAI KERTANEGARA ');
INSERT INTO `mas_kota` VALUES (64, 6403, 'KAB. BERAU');
INSERT INTO `mas_kota` VALUES (64, 6404, 'KAB. BULUNGAN   ');
INSERT INTO `mas_kota` VALUES (64, 6405, 'KAB. NUNUKAN    ');
INSERT INTO `mas_kota` VALUES (64, 6406, 'KAB. MALINAU    ');
INSERT INTO `mas_kota` VALUES (64, 6407, 'KAB. KUTAI BARAT');
INSERT INTO `mas_kota` VALUES (64, 6408, 'KAB. KUTAI TIMUR');
INSERT INTO `mas_kota` VALUES (64, 6409, 'KAB. PENAJAM PASER UTARA                                                                            ');
INSERT INTO `mas_kota` VALUES (64, 6471, 'KOTA BALIKPAPAN ');
INSERT INTO `mas_kota` VALUES (64, 6472, 'KOTA SAMARINDA  ');
INSERT INTO `mas_kota` VALUES (64, 6473, 'KOTA TARAKAN    ');
INSERT INTO `mas_kota` VALUES (64, 6474, 'KOTA BONTANG    ');
INSERT INTO `mas_kota` VALUES (71, 7101, 'KAB. BOLAANG MANNDOW ');
INSERT INTO `mas_kota` VALUES (71, 7102, 'KAB. MINAHASA ');
INSERT INTO `mas_kota` VALUES (71, 7103, 'KAB. KEPULAUAN SANGIHE ');
INSERT INTO `mas_kota` VALUES (71, 7104, 'KAB. KEPULAUAN TALAUD');
INSERT INTO `mas_kota` VALUES (71, 7105, 'KAB. MINAHASA SELATAN');
INSERT INTO `mas_kota` VALUES (71, 7106, 'KAB. MINAHASA UTARA');
INSERT INTO `mas_kota` VALUES (71, 7171, 'KOTA MANADO');
INSERT INTO `mas_kota` VALUES (71, 7172, 'KOTA BITUNG');
INSERT INTO `mas_kota` VALUES (71, 7173, 'KOTA TOMOHON    ');
INSERT INTO `mas_kota` VALUES (72, 7201, 'KAB. BANGGAI    ');
INSERT INTO `mas_kota` VALUES (72, 7202, 'KAB. POSO ');
INSERT INTO `mas_kota` VALUES (72, 7203, 'KAB. DONGGALA   ');
INSERT INTO `mas_kota` VALUES (72, 7204, 'KAB. TOLOI TOLI ');
INSERT INTO `mas_kota` VALUES (72, 7205, 'KAB. BUOL ');
INSERT INTO `mas_kota` VALUES (72, 7206, 'KAB. MOROWALI   ');
INSERT INTO `mas_kota` VALUES (72, 7207, 'KAB. BANGGAI KEPULAUAN ');
INSERT INTO `mas_kota` VALUES (72, 7208, 'KAB. PARIGI MOUTONG  ');
INSERT INTO `mas_kota` VALUES (72, 7209, 'KAB. TOJO UNA UNA');
INSERT INTO `mas_kota` VALUES (72, 7271, 'KOTA PALU ');
INSERT INTO `mas_kota` VALUES (73, 7301, 'KAB. SELAYAR    ');
INSERT INTO `mas_kota` VALUES (73, 7302, 'KAB. BULUKUMBA  ');
INSERT INTO `mas_kota` VALUES (73, 7303, 'KAB. BANTAENG   ');
INSERT INTO `mas_kota` VALUES (73, 7304, 'KAB. JENEPONTO. ');
INSERT INTO `mas_kota` VALUES (73, 7305, 'KAB. TAKALAR    ');
INSERT INTO `mas_kota` VALUES (73, 7306, 'KAB. WA ');
INSERT INTO `mas_kota` VALUES (73, 7307, 'KAB. SINJAI');
INSERT INTO `mas_kota` VALUES (73, 7308, 'KAB. BONE ');
INSERT INTO `mas_kota` VALUES (73, 7309, 'KAB. MAROS');
INSERT INTO `mas_kota` VALUES (73, 7310, 'KAB. PANGKAJENE KEP. ');
INSERT INTO `mas_kota` VALUES (73, 7311, 'KAB. BARRU');
INSERT INTO `mas_kota` VALUES (73, 7312, 'KAB. SOPPENG    ');
INSERT INTO `mas_kota` VALUES (73, 7313, 'KAB. WAJO ');
INSERT INTO `mas_kota` VALUES (73, 7314, 'KAB. SIDENRENG RAPANG');
INSERT INTO `mas_kota` VALUES (73, 7315, 'KAB. PINRANG    ');
INSERT INTO `mas_kota` VALUES (73, 7316, 'KAB. ENREKANG   ');
INSERT INTO `mas_kota` VALUES (73, 7317, 'KAB. LUWU ');
INSERT INTO `mas_kota` VALUES (73, 7318, 'KAB. TANA TORAJA');
INSERT INTO `mas_kota` VALUES (73, 7322, 'KAB. LUWU UTARA ');
INSERT INTO `mas_kota` VALUES (73, 7324, 'KAB. LUWU TIMUR ');
INSERT INTO `mas_kota` VALUES (73, 7371, 'KOTA MAKASAR    ');
INSERT INTO `mas_kota` VALUES (73, 7372, 'KOTA PARE PARE  ');
INSERT INTO `mas_kota` VALUES (73, 7373, 'KOTA PALOPO');
INSERT INTO `mas_kota` VALUES (74, 7401, 'KAB. KOLAKA');
INSERT INTO `mas_kota` VALUES (74, 7402, 'KAB. KONAWE');
INSERT INTO `mas_kota` VALUES (74, 7403, 'KAB. MUNA ');
INSERT INTO `mas_kota` VALUES (74, 7404, 'KAB. BUTON');
INSERT INTO `mas_kota` VALUES (74, 7405, 'KAB. KONAWE SELATAN  ');
INSERT INTO `mas_kota` VALUES (74, 7406, 'KAB. BOMBANA');
INSERT INTO `mas_kota` VALUES (74, 7407, 'KAB. WAKATOB');
INSERT INTO `mas_kota` VALUES (74, 7408, 'KAB. KOLAKA UTARA');
INSERT INTO `mas_kota` VALUES (74, 7471, 'KOTA KENDARI    ');
INSERT INTO `mas_kota` VALUES (74, 7472, 'KOTA BAU BAU    ');
INSERT INTO `mas_kota` VALUES (75, 7501, 'KAB. RONTALO  ');
INSERT INTO `mas_kota` VALUES (75, 7502, 'KAB. BOALEMO    ');
INSERT INTO `mas_kota` VALUES (75, 7503, 'KAB. BONE BOLAN    ');
INSERT INTO `mas_kota` VALUES (75, 7504, 'KAB. PAHUWATO   ');
INSERT INTO `mas_kota` VALUES (75, 7571, 'KOTA RONTALO  ');
INSERT INTO `mas_kota` VALUES (76, 7601, 'KAB. MAMUJU UTARA    ');
INSERT INTO `mas_kota` VALUES (76, 7602, 'KAB. MAMUJU');
INSERT INTO `mas_kota` VALUES (76, 7603, 'KAB. MAMASA');
INSERT INTO `mas_kota` VALUES (76, 7604, 'KAB. POLOWALI MAMASA ');
INSERT INTO `mas_kota` VALUES (76, 7605, 'KAB. MAJENE');
INSERT INTO `mas_kota` VALUES (81, 8101, 'KAB. MALUKU TENGAH');
INSERT INTO `mas_kota` VALUES (81, 8102, 'KAB. MALUKU TENGGARA');
INSERT INTO `mas_kota` VALUES (81, 8103, 'KAB. MALUKU TENGGARA BRT                                                                            ');
INSERT INTO `mas_kota` VALUES (81, 8104, 'KAB. BURU ');
INSERT INTO `mas_kota` VALUES (81, 8105, 'KAB. SERAM BAGIAN TIMUR                                                                      ');
INSERT INTO `mas_kota` VALUES (81, 8106, 'KAB. SERAM BAGIAN BARAT                                                               ');
INSERT INTO `mas_kota` VALUES (81, 8107, 'KAB. KEPULAUAN ARU');
INSERT INTO `mas_kota` VALUES (81, 8171, 'KOTA AMBON');
INSERT INTO `mas_kota` VALUES (82, 8201, 'KAB. HALMAHERA BARAT ');
INSERT INTO `mas_kota` VALUES (82, 8202, 'KAB. HALMAHERA TENGAH');
INSERT INTO `mas_kota` VALUES (82, 8203, 'KAB. HALMAHERA UTARA ');
INSERT INTO `mas_kota` VALUES (82, 8204, 'KAB. HALMAHERA SELATAN ');
INSERT INTO `mas_kota` VALUES (82, 8205, 'KAB. KEPULAUAN SULA  ');
INSERT INTO `mas_kota` VALUES (82, 8206, 'KAB. HALMAHERA TIMUR ');
INSERT INTO `mas_kota` VALUES (82, 8271, 'KOTA TERNATE    ');
INSERT INTO `mas_kota` VALUES (82, 8272, 'KOTA TIDORE KEPULAUAN');
INSERT INTO `mas_kota` VALUES (91, 9101, 'KAB. MERAUKE    ');
INSERT INTO `mas_kota` VALUES (91, 9102, 'KAB. JAYAWIJAYA ');
INSERT INTO `mas_kota` VALUES (91, 9103, 'KAB. JAYAPURA   ');
INSERT INTO `mas_kota` VALUES (91, 9104, 'KAB. NABIRE');
INSERT INTO `mas_kota` VALUES (91, 9105, 'KAB. YAPEN WAROPEN   ');
INSERT INTO `mas_kota` VALUES (91, 9106, 'KAB. BIAK NUMFOR');
INSERT INTO `mas_kota` VALUES (91, 9107, 'KAB. PUNCAK JAYA');
INSERT INTO `mas_kota` VALUES (91, 9108, 'KAB. PANIAI');
INSERT INTO `mas_kota` VALUES (91, 9109, 'KAB. MIMIKA');
INSERT INTO `mas_kota` VALUES (91, 9110, 'KAB. SARMI');
INSERT INTO `mas_kota` VALUES (91, 9111, 'KAB. KEEROM');
INSERT INTO `mas_kota` VALUES (91, 9112, 'KAB. PEGUNUNGAN BINTANG');
INSERT INTO `mas_kota` VALUES (91, 9113, 'KAB. YAHUKIMO   ');
INSERT INTO `mas_kota` VALUES (91, 9114, 'KAB. TOLIKARA   ');
INSERT INTO `mas_kota` VALUES (91, 9115, 'KAB. WAROPEN    ');
INSERT INTO `mas_kota` VALUES (91, 9116, 'KAB. BOVEN DIEL    ');
INSERT INTO `mas_kota` VALUES (91, 9117, 'KABUPATEN. MAPPI');
INSERT INTO `mas_kota` VALUES (91, 9118, 'KAB. ASMAT');
INSERT INTO `mas_kota` VALUES (91, 9121, 'KAB. SUPIORI');
INSERT INTO `mas_kota` VALUES (91, 9171, 'KOTA JAYAPURA   ');
INSERT INTO `mas_kota` VALUES (92, 9201, 'KAB. SORONG');
INSERT INTO `mas_kota` VALUES (92, 9202, 'KAB. MANOKWARI  ');
INSERT INTO `mas_kota` VALUES (92, 9203, 'KAB. FAK FAK    ');
INSERT INTO `mas_kota` VALUES (92, 9204, 'KAB. SORONG SELATAN  ');
INSERT INTO `mas_kota` VALUES (92, 9205, 'KAB. RAJA AMPAT ');
INSERT INTO `mas_kota` VALUES (92, 9206, 'KAB. TELUK BENTUNI   ');
INSERT INTO `mas_kota` VALUES (92, 9207, 'KAB. TELUK WONDAMA   ');
INSERT INTO `mas_kota` VALUES (92, 9208, 'KAB. KAIMA');
INSERT INTO `mas_kota` VALUES (92, 9271, 'KOTA SORONG');

-- ----------------------------
-- Table structure for mas_maritalsts
-- ----------------------------
DROP TABLE IF EXISTS `mas_maritalsts`;
CREATE TABLE `mas_maritalsts`  (
  `MaritalStsCd` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DescMarital` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MaritalStsCd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mas_maritalsts
-- ----------------------------
INSERT INTO `mas_maritalsts` VALUES ('K0  ', 'Kawin Tanpa Anak   ');
INSERT INTO `mas_maritalsts` VALUES ('K1  ', 'Kawin Anak Satu    ');
INSERT INTO `mas_maritalsts` VALUES ('K2  ', 'Kawin Anak Dua     ');
INSERT INTO `mas_maritalsts` VALUES ('K3  ', 'Kawin Anak Tiga    ');
INSERT INTO `mas_maritalsts` VALUES ('K4  ', 'Kawin Anak Empat   ');
INSERT INTO `mas_maritalsts` VALUES ('K5  ', 'Kawin Anak Lima    ');
INSERT INTO `mas_maritalsts` VALUES ('K6  ', 'Kawin Anak Enam    ');
INSERT INTO `mas_maritalsts` VALUES ('K7  ', 'Kawin Anak Tujuh   ');
INSERT INTO `mas_maritalsts` VALUES ('K8  ', 'Kawin Anak Delapan ');
INSERT INTO `mas_maritalsts` VALUES ('TK  ', 'Lajang             ');

-- ----------------------------
-- Table structure for mas_pendidikan
-- ----------------------------
DROP TABLE IF EXISTS `mas_pendidikan`;
CREATE TABLE `mas_pendidikan`  (
  `edu_code` int NOT NULL AUTO_INCREMENT,
  `edu_detail` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`edu_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mas_pendidikan
-- ----------------------------
INSERT INTO `mas_pendidikan` VALUES (1, 'SD');
INSERT INTO `mas_pendidikan` VALUES (2, 'SMP');
INSERT INTO `mas_pendidikan` VALUES (3, 'SMA');
INSERT INTO `mas_pendidikan` VALUES (4, 'D1');
INSERT INTO `mas_pendidikan` VALUES (5, 'D2');
INSERT INTO `mas_pendidikan` VALUES (6, 'D3');
INSERT INTO `mas_pendidikan` VALUES (7, 'D4');
INSERT INTO `mas_pendidikan` VALUES (8, 'S1');
INSERT INTO `mas_pendidikan` VALUES (9, 'S2');
INSERT INTO `mas_pendidikan` VALUES (10, 'Sp-1');
INSERT INTO `mas_pendidikan` VALUES (11, 'Sp-2');
INSERT INTO `mas_pendidikan` VALUES (12, 'S3');

-- ----------------------------
-- Table structure for mas_perguruan_tinggi
-- ----------------------------
DROP TABLE IF EXISTS `mas_perguruan_tinggi`;
CREATE TABLE `mas_perguruan_tinggi`  (
  `id` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_perguruan_tinggi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mas_perguruan_tinggi
-- ----------------------------
INSERT INTO `mas_perguruan_tinggi` VALUES ('001001', 'Universitas Gadjah Mada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001002', 'Universitas Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001003', 'Universitas Sumatera Utara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001004', 'Universitas Airlangga');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001005', 'Universitas Hasanuddin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001006', 'Universitas Andalas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001007', 'Universitas Padjadjaran');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001008', 'Universitas Diponegoro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001009', 'Universitas Sriwijaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001010', 'Universitas Lambung Mangkurat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001011', 'Universitas Syiah Kuala');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001012', 'Universitas Sam Ratulangi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001013', 'Universitas Udayana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001014', 'Universitas Nusa Cendana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001015', 'Universitas Mulawarman');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001016', 'Universitas Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001017', 'Universitas Riau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001018', 'Universitas Cenderawasih');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001019', 'Universitas Brawijaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001020', 'Universitas Jambi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001021', 'Universitas Pattimura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001022', 'Universitas Tanjungpura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001023', 'Universitas Jenderal Soedirman');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001024', 'Universitas Palangka Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001025', 'Universitas Jember');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001026', 'Universitas Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001027', 'Universitas Sebelas Maret');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001028', 'Universitas Tadulako');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001029', 'Universitas Halu Oleo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001030', 'Universitas Bengkulu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001031', 'Universitas Terbuka');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001032', 'Universitas Negeri Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001033', 'Universitas Negeri Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001034', 'Universitas Pendidikan Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001035', 'Universitas Negeri Manado');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001036', 'Universitas Negeri Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001037', 'Universitas Negeri Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001038', 'Universitas Negeri Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001039', 'Universitas Negeri Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001040', 'Universitas Negeri Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001041', 'Universitas Negeri Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001042', 'Universitas Sultan Ageng Tirtayasa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001043', 'Universitas Trunojoyo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001044', 'Universitas Khairun');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001045', 'Universitas Papua');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001046', 'Universitas Malikussaleh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001047', 'Universitas Negeri Gorontalo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001048', 'Universitas Pendidikan Ganesha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001049', 'Universitas Bangka Belitung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001050', 'Universitas Borneo Tarakan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001051', 'Universitas Musamus Merauke');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001052', 'Universitas Maritim Raja Ali Haji (UMRAH)');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001053', 'Universitas Samudra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001054', 'Universitas Sulawesi Barat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001055', 'Universitas Sembilanbelas November Kolaka');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001056', 'Universitas Tidar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001057', 'Universitas Siliwangi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001058', 'Universitas Teuku Umar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001059', 'Universitas Pembangunan Nasional Veteran Jawa Timur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001060', 'Universitas Timor');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001061', 'Universitas Pembangunan Nasional Veteran Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001062', 'Universitas Pembangunan Nasional Veteran Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('001063', 'Universitas Singaperbangsa Karawang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('002001', 'Institut Teknologi Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('002002', 'Institut Teknologi Sepuluh Nopember');
INSERT INTO `mas_perguruan_tinggi` VALUES ('002003', 'Institut Pertanian Bogor');
INSERT INTO `mas_perguruan_tinggi` VALUES ('002005', 'Institut Seni Indonesia Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('002007', 'Institut Seni Indonesia Denpasar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('002008', 'Institut Seni Indonesia Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('002009', 'Institut Seni Indonesia Padang Panjang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('002010', 'Institut Seni Budaya Indonesia Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('002011', 'Institut Seni Budaya Indonesia Aceh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('002012', 'Institut Seni Budaya Indonesia Tanah Papua');
INSERT INTO `mas_perguruan_tinggi` VALUES ('002013', 'Institut Teknologi Kalimantan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('002014', 'Institut Teknologi Sumatera');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011001', 'Universitas Islam Sumatera Utara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011002', 'Universitas HKBP Nommensen');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011003', 'Universitas Muhammadiyah Sumatera Utara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011004', 'Universitas Pembangunan Panca Budi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011005', 'Universitas Simalungun');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011006', 'Universitas Methodist Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011007', 'Universitas Darma Agung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011008', 'Universitas Medan Area');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011009', 'Universitas Katolik Santo Thomas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011010', 'Universitas Amir Hamzah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011012', 'Universitas Dharmawangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011014', 'Universitas Muhammadiyah Tapanuli Selatan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011015', 'Universitas Graha Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011016', 'Universitas Asahan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011017', 'Universitas Alwashliyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011018', 'Universitas Sisingamangaraja XII Tapanuli Utara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011025', 'Universitas Pembinaan Masyarakat Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011026', 'Universitas Al-Azhar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011027', 'Universitas Muslim Nusantara Al-Washliyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011028', 'Universitas Islam Labuhan Batu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011029', 'Universitas Tjut Nyak Dhien');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011033', 'Universitas Prima Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011038', 'Universitas Al Washliyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011040', 'Universitas Quality');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011041', 'Universitas Sutomo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011044', 'Universitas Efarina');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011045', 'Universitas Sari Mutiara Indonesia Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011046', 'Universitas Potensi Utama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011047', 'Universitas Nahdlatul Ulama Sumatera Utara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011048', 'Universitas Quality Berastagi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011049', 'Universitas Harapan Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011050', 'Universitas HKBP Nommensen Pematangsiantar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011051', 'Universitas Aufa Royhan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011052', 'Universitas Labuhanbatu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011053', 'Universitas Audi Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011054', 'Universitas Imelda Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011055', 'Universitas Battuta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('011056', 'Universitas Budi Darma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('012001', 'IKIP Gunung Sitoli');
INSERT INTO `mas_perguruan_tinggi` VALUES ('012003', 'Institut Teknologi Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('012004', 'Institut Sains Dan Teknologi Td Pardede');
INSERT INTO `mas_perguruan_tinggi` VALUES ('012005', 'Institut Teknologi Del');
INSERT INTO `mas_perguruan_tinggi` VALUES ('012006', 'Institut Kesehatan Helvetia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('012007', 'Institut Kesehatan Deli Husada Deli Tua');
INSERT INTO `mas_perguruan_tinggi` VALUES ('012008', 'Institut Kesehatan Medistra Lubuk Pakam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('012009', 'Institut Pendidikan Tapanuli Selatan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('012010', 'Institut Bisnis Informasi Teknologi dan Bisnis');
INSERT INTO `mas_perguruan_tinggi` VALUES ('012011', 'Institut Teknologi dan Bisnis Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('012013', 'Institut Kesehatan Sumatera Utara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013001', 'Sekolah Tinggi Hukum YNI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013022', 'Sekolah Tinggi Ilmu Ekonomi Nusa Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013024', 'Sekolah Tinggi Olahraga Dan Kesehatan Bina Guna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013029', 'STKIP Budidaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013030', 'Sekolah Tinggi Ilmu Ekonomi Al-Washliyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013041', 'Sekolah Tinggi Teknologi Immanuel');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013042', 'Sekolah Tinggi Ilmu Komunikasi Pembangunan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013043', 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Asahan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013047', 'Sekolah Tinggi Ilmu Ekonomi Mars');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013051', 'Sekolah Tinggi Ilmu Ekonomi Surya Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013060', 'Sekolah Tinggi Ilmu Hukum Muhammadiyah Kisaran');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013061', 'STMIK Budi Darma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013063', 'STMIK Mikroskil');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013064', 'Sekolah Tinggi Ilmu Ekonomi Tricom');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013067', 'Sekolah Tinggi Ilmu Ekonomi Eka Prasetya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013068', 'Sekolah Tinggi Ilmu Ekonomi Graha Kirana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013069', 'Sekolah Tinggi Ilmu Hukum Graha Kirana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013072', 'STMIK Sisingamangaraja XII');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013074', 'Sekolah Tinggi Ilmu Ekonomi IBBI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013077', 'Sekolah Tinggi Ilmu Ekonomi LMII');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013085', 'Sekolah Tinggi Ilmu Manajemen Sukma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013088', 'Sekolah Tinggi Ilmu Ekonomi Sultan Agung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013089', 'Sekolah Tinggi Ilmu Ekonomi Pembangunan Nasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013090', 'Sekolah Tinggi Filsafat Theologi S Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013091', 'Sekolah Tinggi Ilmu Ekonomi ITMI Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013095', 'Sekolah Tinggi Perikanan Sibolga');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013097', 'Sekolah Tinggi Ilmu Ekonomi Bina Karya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013098', 'Sekolah Tinggi Ilmu Bahasa Asing ITMI Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013099', 'STIE IBMI Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013105', 'STMIK Time');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013109', 'STMIK Logika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013115', 'STMIK IBBI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013118', 'STMIK Kaputama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013119', 'Sekolah Tinggi Teknologi Sinar Husni');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013122', 'Sekolah Tinggi Ilmu Kesehatan Binalita Sudama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013130', 'STMIK ITMI Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013131', 'STIPER Agrobisnis Perkebunan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013134', 'STIE Akuntansi Dan Bisnis Internasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013140', 'STIKES Santa Elisabeth Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013141', 'STIKES Putra Abadi Langkat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013147', 'STMIK Pelita Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013148', 'Sekolah Tinggi Ilmu Komputer Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013150', 'STIE Nias Selatan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013151', 'STKIP Nias Selatan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013155', 'STMIK Kristen Neumann Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013157', 'STMIK Triguna Dharma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013158', 'Stba Persahabatan Internasional Asia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013161', 'Sekolah Tinggi Ilmu Kesehatan RS Haji Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013162', 'Sekolah Tinggi Ilmu Kesehatan Flora');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013163', 'STIE Professional Manajemen College Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013165', 'STIE Mikroskil');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013168', 'STIKES Nauli Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013171', 'STKIP Barus Tapanuli Tengah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013173', 'Sekolah Tinggi Manajemen Informatika dan Komputer Royal');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013175', 'STIKES Widya Husada Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013177', 'STIKES Syuhada di Padangsidimpuan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013178', 'Sekolah Tinggi Ilmu Hukum Nias Selatan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013179', 'S.T. Manajemen Bisnis Multi Sarana Manajemen Administrasi dan Rekayasa Teknologi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013180', 'STIKES Nurliana Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013181', 'STIKOM Tunas Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013182', 'STMIK Methodist Binjai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013183', 'STIKES Sakinah Husada Tanjung Balai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013184', 'STIKES Darmais Padangsidimpuan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013185', 'STIKES Senior Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013186', 'STIKES Siti Hajar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013187', 'Sekolah Tinggi Ilmu Ekonomi Profesional Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013188', 'STKIP Pangeran Antasari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013189', 'STIKES Murni Teguh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013190', 'Sekolah Tinggi Ilmu Kesehatan Mitra Husada Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013192', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Al Maksum');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013193', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Padang Lawas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013194', 'STIKES Namira Madina');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013195', 'STMIK Citra Mandiri Padangsidimpuan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013196', 'Sekolah Tinggi Perikanan dan Kelautan Matauli');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013197', 'Sekolah Tinggi Akuntansi dan Manajemen Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013198', 'STIKES As Syifa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013199', 'STKIP  Asy-Syafi iyah Internasional Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013200', 'Sekolah Tinggi Ilmu Hukum Asy-Syafi iyah Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013201', 'Sekolah Tinggi Ilmu Kesehatan Indah Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013202', 'Sekolah Tinggi Ilmu Hukum Deli Sumatera');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013203', 'Sekolah Tinggi Ilmu Ekonomi Deli Sumatera');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013204', 'Sekolah Tinggi Ilmu Kesehatan Arjuna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013205', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Amal Bakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013206', 'Sekolah Tinggi Ilmu Kesehatan Kesehatan Baru');
INSERT INTO `mas_perguruan_tinggi` VALUES ('013207', 'Sekolah Tinggi Ilmu Kesehatan Sehat Medan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021001', 'Universitas Muhammadiyah Palembang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021002', 'Universitas Muhammadiyah Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021003', 'Universitas Sang Bumi Ruwa Jurai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021004', 'Universitas Muhammadiyah Metro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021005', 'Universitas Prof Dr Hazairin SH');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021006', 'Universitas Palembang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021007', 'Universitas IBA');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021008', 'Universitas Tridinanti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021009', 'Universitas Malahayati');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021010', 'Universitas Muhammadiyah Bengkulu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021011', 'Universitas Tamansiswa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021012', 'Universitas Bandar Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021013', 'Universitas Sjakhyakirti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021014', 'Universitas Tulang Bawang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021015', 'Universitas Baturaja');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021016', 'Universitas PGRI Palembang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021017', 'Universitas Kader Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021018', 'Universitas Ratu Samban');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021019', 'Universitas Bina Darma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021021', 'Universitas Megou Pak Tulang Bawang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021022', 'Universitas Islam Ogan Komering Ilir Kayuagung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021023', 'Universitas Dehasen Bengkulu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021024', 'Universitas Indo Global Mandiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021025', 'Universitas Musi Rawas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021026', 'Universitas Nahdlatul Ulama Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021027', 'Universitas Katolik Musi Charitas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021028', 'Universitas Teknokrat Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021029', 'Universitas Mitra Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021030', 'Universitas Sumatera Selatan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021031', 'Universitas Aisyah Pringsewu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021032', 'Universitas Bina Insan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021033', 'Universitas Pat Petulai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021034', 'Universitas Muhammadiyah Pringsewu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('021035', 'Universitas Muhammadiyah Kotabumi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('022001', 'Institut Informatika Dan Bisnis Darmajaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('022002', 'Institut Sains dan Bisnis Atma Luhur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('022003', 'Institut Teknologi dan Bisnis Diniyyah Putri Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023002', 'STKIP PGRI Lubuk Linggau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023003', 'Sekolah Tinggi Ilmu Pertanian Surya Dharma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023004', 'Sekolah Tinggi Ilmu Administrasi Bengkulu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023005', 'STISIPOL Candradimuka');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023006', 'Sekolah Tinggi Ilmu Pertanian Dharma Wacana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023008', 'STKIP PGRI Metro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023009', 'Sekolah Tinggi Ilmu Ekonomi Pertiba');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023012', 'Sekolah Tinggi Ilmu Hukum Pertiba Pangkalpinang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023013', 'STKIP PGRI Bandar Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023016', 'Sekolah Tinggi Ilmu Ekonomi Ragam Tunas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023017', 'Sekolah Tinggi Ilmu Pertanian Sriwigama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023019', 'Sekolah Tinggi Ilmu Ekonomi Aprin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023021', 'STISIPOL Dharma Wacana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023022', 'Sekolah Tinggi Perkebunan Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023023', 'Sekolah Tinggi Ilmu Ekonomi Serasan Muara Enim');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023024', 'Sekolah Tinggi Ilmu Hukum Sumpah Pemuda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023025', 'Sekolah Tinggi Ilmu Ekonomi Serelo Lahat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023026', 'Sekolah Tinggi Teknologi Nusantara Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023027', 'Sekolah Tinggi Ilmu Ekonomi Trisna Negara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023030', 'STKIP Dharma Wacana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023031', 'Sekolah Tinggi Bahasa Asing Yunisla Bandar Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023033', 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Kalianda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023036', 'STMIK Tunas Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023037', 'Sekolah Tinggi Ilmu Hukum Serasan Muara Enim');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023038', 'Sekolah Tinggi Ilmu Teknik Serasan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023039', 'Sekolah Tinggi Ilmu Ekonomi Prasetiya Mandiri Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023041', 'STIPSI Widya Dharma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023042', 'Sekolah Tinggi Ilmu Ekonomi Mulia Darma Pratama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023043', 'Sekolah Tinggi Ilmu Ekonomi Dwi Sakti Baturaja');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023044', 'Sekolah Tinggi Ilmu Ekonomi Rahmaniyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023046', 'Sekolah Tinggi Ilmu Ekonomi Satu Nusa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023047', 'Sekolah Tinggi Bahasa Asing Methodist');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023051', 'STIKESMAS Widya Dharma Palembang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023052', 'Sekolah Tinggi Ilmu Administrasi Satya Negara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023053', 'Sekolah Tinggi Bahasa Asing Widya Dharma Palembang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023055', 'Sekolah Tinggi Ilmu Hukum Rahmaniyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023057', 'Sekolah Tinggi Ilmu Kesehatan Bina Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023059', 'Sekolah Tinggi Ilmu Ekonomi Prabumulih');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023060', 'STIE IBEK Pangkalpinang Bangka');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023061', 'STKIP Muhammadiyah Pagaralam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023062', 'Sekolah Tinggi Ilmu Ekonomi Lembah Dempo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023063', 'STMIK Surya Intan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023064', 'STMIK Dharma Wacana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023065', 'STIKESMAS Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023066', 'STMIK Prabumulih');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023067', 'Sekolah Tinggi Ilmu Teknik Prabumulih');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023068', 'Sekolah Tinggi Ilmu Ekonomi Abdi Nusa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023069', 'STIKESMAS Abdi Nusa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023071', 'Sekolah Tinggi Ilmu Hukum Muhammadiyah Kalianda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023073', 'Sekolah Tinggi Ilmu Ekonomi Mitra Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023074', 'Sekolah Tinggi Ilmu Pertanian Belitang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023075', 'STMIK Mitra Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023076', 'Sekolah Tinggi Ilmu Kesehatan Mitra Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023077', 'STIKES Tri Mandiri Sakti Bengkulu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023078', 'STIPSI Abdi Nusa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023079', 'Sekolah Tinggi Ilmu Kesehatan Abdi Nusa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023080', 'Sekolah Tinggi Ilmu Kesehatan Al Ma arif');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023081', 'Sekolah Tinggi Ilmu Maritim Mutiara Jaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023083', 'Sekolah Tinggi Ilmu Farmasi Bhakti Pertiwi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023084', 'STMIK Global Informatika Mdp');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023087', 'Sekolah Tinggi Ilmu Ekonomi Lantim Way Jepara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023088', 'Sekolah Tinggi Ilmu Teknik Trisula');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023089', 'STIKES Bhakti Husada Bengkulu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023094', 'STMIK Muara Dua');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023095', 'STIA & Pemerintahan Annisa Dwi Salfarizi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023097', 'Sekolah Tinggi Ilmu Kesehatan Siti Khadijah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023098', 'STIKES Pembina Palembang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023099', 'Sekolah Tinggi Ilmu Kesehatan Fitrah Aldar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023100', 'Sekolah Tinggi Ilmu Ekonomi Gentiaras');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023102', 'Sekolah Tinggi Teknologi Pagaralam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023103', 'STMIK Palcomtech');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023105', 'STIKES Muhammadiyah Palembang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023106', 'STISIPOL Pahlawan 12');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023107', 'STMIK Bina Nusantara Jaya Lubuk Linggau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023108', 'STKIP Nurul Huda di Sukaraja');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023109', 'STMIK Pringsewu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023111', 'Sekolah Tinggi Ilmu Kesehatan Mitra Adiguna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023112', 'STMIK Dian Cipta Cendikia Kotabumi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023113', 'STIE Multi Data Palembang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023115', 'Sekolah Tinggi Ilmu Kesehatan Permata Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023117', 'STIKES Citra Delima Bangka Belitung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023118', 'STMIK Atma Luhur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023119', 'STKIP Al Islam Tunas Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023120', 'STKIP Muhammadiyah Bangka Belitung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023122', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Kumala Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023123', 'STISIP Bina Marta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023124', 'STIKES Aisyiyah Palembang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023125', 'STMIK MBC Palembang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023126', 'STKIP Tunas Palapa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023127', 'STIA Bala Putra Dewa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023128', 'Sekolah Tinggi Ilmu Ekonomi Krakatau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023129', 'Sekolah Tinggi Teknologi Bengkulu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023130', 'Sekolah Tinggi Ilmu Ekonomi Al-Madani');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023131', 'Sekolah Tinggi Manajemen Informatika dan Komputer Kalirejo Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023132', 'sekolah Tinggi Keguruan dan Ilmu Pendidikan Rosalia Lampung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023133', 'Sekolah Tinggi Manajemen Informatika dan Komputer Lembah Dempo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023134', 'Sekolah Tinggi Ilmu Kesehatan Abdurahman Palembang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023135', 'STIKES Adila');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023137', 'Sekolah Tinggi Ilmu Ekonomi dan Bisnis Prana Putra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023138', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Muhammadiyah OKU Timur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023139', 'Sekolah Tinggi Ilmu Kesehatan Panca Bhakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('023140', 'Sekolah Tinggi Ilmu Kesehatan Sapta Bakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031001', 'Universitas Ibnu Chaldun');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031003', 'Universitas Islam Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031005', 'Universitas Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031006', 'Universitas Jayabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031007', 'Universitas Katolik Indonesia Atma Jaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031008', 'Universitas Krisnadwipayana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031009', 'Universitas Kristen Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031010', 'Universitas Kristen Krida Wacana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031011', 'Universitas Muhammadiyah Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031012', 'Universitas Nasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031013', 'Universitas Pancasila');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031014', 'Universitas Prof Dr Moestopo (Beragama)');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031015', 'Universitas Tarumanagara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031016', 'Universitas Trisakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031017', 'Universitas 17 Agustus 1945 Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031018', 'Universitas Borobudur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031019', 'Universitas Mercu Buana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031020', 'Universitas Persada Indonesia Yai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031021', 'Universitas Islam As-syafiiyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031022', 'Universitas Wiraswasta Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031023', 'Universitas Darma Persada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031024', 'Universitas Mpu Tantular');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031025', 'Universitas Satya Negara Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031026', 'Universitas Yarsi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031027', 'Universitas Respati Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031029', 'Universitas Surapati');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031030', 'Universitas Sahid');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031031', 'Universitas Satyagama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031032', 'Universitas Islam Attahiriyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031033', 'Universitas Esa Unggul');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031034', 'Universitas Pelita Harapan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031036', 'Universitas Bhayangkara Jakarta Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031037', 'Universitas Gunadarma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031038', 'Universitas Bina Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031039', 'Universitas Muhammadiyah Prof Dr Hamka');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031040', 'Universitas Azzahra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031041', 'Universitas Paramadina');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031042', 'Universitas Bung Karno');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031043', 'Universitas Dirgantara Marsekal Suryadarma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031044', 'Universitas Al-azhar Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031045', 'Universitas Budi Luhur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031047', 'Universitas Kejuangan 45 Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031048', 'Universitas Bunda Mulia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031049', 'Universitas Indraprasta PGRI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031050', 'Universitas Tama Jagakarsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031051', 'Universitas Multimedia Nusantara Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031053', 'Universitas Bakrie');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031054', 'Universitas Tanri Abeng');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031055', 'Universitas Trilogi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031056', 'Universitas Sampoerna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031057', 'Universitas Agung Podomoro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031059', 'Universitas Mohammad Husni Thamrin Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031060', 'Universitas Matana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031061', 'Universitas Nahdlatul Ulama Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031062', 'Universitas Pertamina');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031063', 'Universitas Prasetiya Mulya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031064', 'Universitas Binawan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031065', 'Universitas Bina Sarana Informatika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031066', 'Universitas Dian Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('031067', 'Universitas Pradita');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032002', 'Institut Kesenian Jakarta - LPKJ');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032004', 'Institut Sains Dan Teknologi Nasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032005', 'Institut Ilmu Sosial Dan Ilmu Politik Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032006', 'Institut Teknologi Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032007', 'Institut Teknologi Budi Utomo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032008', 'Institut Sains Dan Teknologi Al-Kamal');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032009', 'Institut Bisnis Dan Informatika Kwik Kian Gie');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032011', 'Institut Keuangan-Perbankan Dan Informatika Asia Perbanas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032012', 'Institut Bisnis Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032013', 'Institut Teknologi dan Bisnis Kalbis');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032014', 'Institut Bisnis dan Multimedia Asmi Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032015', 'Institut Bisnis dan Informatika (IBI) Kosgoro 1957');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032016', 'Institut Bio Scientia Internasional Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032017', 'Institut Ilmu Sosial dan Manajemen STIAMI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032018', 'Institut Kesehatan Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032020', 'Institut Transportasi  dan Logistik Trisakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032021', 'Institut Teknologi Calvin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032022', 'Institut Teknologi dan Bisnis Bank Rakyat Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032023', 'Institut Teknologi dan Bisnis Ahmad Dahlan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032024', 'Institut Teknologi dan Kesehatan Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032025', 'Institut Komunikasi Dan Bisnis LSPR');
INSERT INTO `mas_perguruan_tinggi` VALUES ('032026', 'Institut Teknologi Perusahaan Listrik Negara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033001', 'Sekolah Tinggi Filsafat Driyarkara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033004', 'STISIP Widuri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033006', 'Sekolah Tinggi Teknologi Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033009', 'Sekolah Tinggi Filsafat Theologi Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033011', 'STKIP Purnama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033012', 'Sekolah Tinggi Ilmu Ekonomi Indonesia Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033014', 'STKIP Kusumanegara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033015', 'Sekolah Tinggi Ilmu Ekonomi Swadaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033022', 'Sekolah Tinggi Manajemen Informatika dan Komputer Jakarta STI&K');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033024', 'Sekolah Tinggi Ilmu Ekonomi YAI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033031', 'STMIK Indonesia Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033032', 'Sekolah Tinggi Ilmu Ekonomi Kusuma Negara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033034', 'STMIK Kuwera');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033038', 'Sekolah Tinggi Ilmu Ekonomi Bhakti Pembangunan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033040', 'Sekolah Tinggi Ilmu Ekonomi Tri Dharma Widya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033044', 'Sekolah Tinggi Ilmu Ekonomi Nasional Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033046', 'Sekolah Tinggi Teknologi Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033050', 'Sekolah Tinggi Ilmu Administrasi Kawula Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033059', 'Sekolah Tinggi Ilmu Ekonomi Jayakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033060', 'Sekolah Tinggi Ilmu Ekonomi Bisnis Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033061', 'Sekolah Tinggi Hukum Indonesia Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033063', 'STMIK Swadharma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033064', 'Sekolah Tinggi Manajemen Labora');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033066', 'Sekolah Tinggi Ilmu Ekonomi Trisakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033068', 'Sekolah Tinggi Manajemen Ipmi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033069', 'Sekolah Tinggi Manajemen Ppm');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033070', 'Sekolah Tinggi Penerbangan Aviasi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033072', 'Sekolah Tinggi Ilmu Ekonomi IGI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033073', 'Sekolah Tinggi Ilmu Hukum IBLAM');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033074', 'Sekolah Tinggi Ilmu Ekonomi IPWI Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033076', 'Sekolah Tinggi Ilmu Ekonomi Ganesha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033077', 'Sekolah Tinggi Manajemen Immi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033080', 'STMIK Jayakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033082', 'STIE Jakarta International College');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033084', 'Sekolah Tinggi Ilmu Ekonomi Widya Jayakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033086', 'Sekolah Tinggi Ilmu Ekonomi Taman Siswa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033087', 'Sekolah Tinggi Ilmu Ekonomi Trianandra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033088', 'STMIK Muhammadiyah Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033092', 'STKIP Albana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033094', 'Sekolah Tinggi Perpajakan Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033095', 'Sekolah Tinggi Ilmu Ekonomi Indonesia Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033096', 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033099', 'Sekolah Tinggi Ilmu Ekonomi Dr Moechtar Talib');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033104', 'Sekolah Tinggi Teknik YPLN');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033105', 'Sekolah Tinggi Ilmu Ekonomi Triguna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033106', 'Sekolah Tinggi Ilmu Komunikasi Inter Studi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033107', 'Sekolah Tinggi Ilmu Ekonomi Tunas Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033111', 'Sekolah Tinggi Bahasa Asing LIA');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033114', 'Sekolah Tinggi Pariwisata Trisakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033115', 'STIE Pengembangan Bisnis Dan Manajemen');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033116', 'Sekolah Tinggi Bahasa Asing Pertiwi Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033117', 'Sekolah Tinggi Ilmu Kesehatan Sint Carolus');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033119', 'Sekolah Tinggi Ilmu Ekonomi Jayakusuma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033120', 'Sekolah Tinggi Ilmu Ekonomi Kasih Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033121', 'Sekolah Tinggi Ilmu Ekonomi Dharma Bumi Putra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033125', 'Sekolah Tinggi Ilmu Ekonomi Maiji');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033126', 'Sekolah Tinggi Ilmu Ekonomi Wiyatamandala');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033128', 'Sekolah Tinggi Ilmu Ekonomi YPBI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033129', 'Sekolah Tinggi Ilmu Kesehatan Indonesia Maju');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033132', 'STIE Pariwisata Internasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033134', 'Sekolah Tinggi Pariwisata Sahid');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033137', 'Sekolah Tinggi Bahasa Asing IEC Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033138', 'Sekolah Tinggi Ilmu Maritim Ami');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033139', 'Sekolah Tinggi Ilmu Kesehatan Pamentas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033140', 'STMIK Widuri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033143', 'Sekolah Tinggi Manajemen Transportasi Malahayati');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033147', 'Sekolah Tinggi Ilmu Kesehatan Istara Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033150', 'St Ilmu Komputer Cipta Karya Informatika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033151', 'Sekolah Tinggi Ilmu Komunikasi ITKP');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033152', 'Sekolah Tinggi Manajemen Asuransi Trisakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033154', 'Sekolah Tinggi Ilmu Komunikasi Profesi Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033156', 'Sekolah Tinggi Ilmu Kesehatan Medistra Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033157', 'Sekolah Tinggi Ilmu Ekonomi Widya Persada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033160', 'Sekolah Tinggi Teknologi Sapta Taruna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033163', 'Sekolah Tinggi Ilmu Komunikasi Indonesia Maju');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033164', 'STMIK Mahakarya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033165', 'Sekolah Tinggi Manajemen Informatika dan Komputer Nusa Mandiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033167', 'STIKES Kesetiakawanan Sosial Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033168', 'STIE Indonesia Banking School');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033170', 'STIKES Persada Husada Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033171', 'Sekolah Tinggi Ilmu Kesehatan Mitra Ria Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033173', 'Sekolah Tinggi Ilmu Kesehatan Abdi Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033175', 'Sekolah Tinggi Teknologi Informasi NIIT');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033176', 'Sekolah Tinggi Manajemen Risiko Dan Asuransi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033177', 'Sekolah Tinggi Ilmu Pemerintahan Abdi Negara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033178', 'STMIK Jayabaya Jakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033179', 'Sekolah Tinggi Ilmu Kesehatan Jayakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033183', 'Sekolah Tinggi Ilmu Ekonomi Santa Ursula');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033184', 'Sekolah Tinggi Desain Interstudi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033188', 'STIE Unisadhuguna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033189', 'Sekolah Tinggi Internasional Konservatori Musik Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033190', 'Sekolah Tinggi Ilmu Kesehatan Pertamedika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033192', 'Sekolah Tinggi Ilmu Kesehatan Sismadi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033194', 'STIKS Tarakanita');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033195', 'Sekolah Tinggi Media Komunikasi Trisakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033196', 'STMIK Eresha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033197', 'STIE Manajemen Bisnis Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033198', 'STMIK Islam Internasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033199', 'Sekolah Tinggi Desain LaSalle');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033200', 'STIKES Bhakti Pertiwi Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033201', 'STIKES Kharisma Persada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033203', 'Sekolah Tinggi Ilmu Ekonomi BPKP');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033205', 'Sekolah Tinggi Kepemerintahan dan Kebijakan Publik');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033206', 'Sekolah Tinggi Ilmu Manajemen dan Ilmu Komputer ESQ');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033208', 'STIH Indonesia Jentera');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033209', 'Sekolah Tinggi Ilmu Kesehatan Mitra Keluarga');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033210', 'STIH Litigasi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033211', 'Sekolah Tinggi Ilmu Manajemen Saint Mary');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033212', 'Sekolah Tinggi Ilmu Ekonomi Media Nusantara Citra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033213', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Media Nusantara Citra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033214', 'Sekolah Tinggi Ilmu Kesehatan Tarumanagara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033215', 'Sekolah Tinggi Ilmu Kesehatan Budi Kemuliaan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033216', 'Sekolah Tinggi Manajemen Informatika dan Komputer Indo Daya Suvana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033217', 'Sekolah Tinggi Ilmu Kesehatan RS Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('033218', 'Sekolah Tinggi Ilmu Ekonomi Darunnajah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041001', 'Universitas Ibn Khaldun');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041002', 'Universitas Islam Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041003', 'Universitas Islam Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041004', 'Universitas Pakuan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041005', 'Universitas Islam Syekh-Yusuf');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041006', 'Universitas Katolik Parahyangan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041007', 'Universitas Kristen Maranatha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041008', 'Universitas Pasundan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041009', 'Universitas Swadaya Gunung Djati');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041010', 'Universitas 17 Agustus 1945 Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041011', 'Universitas Advent Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041014', 'Universitas Wiralodra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041015', 'Universitas Langlang Buana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041016', 'Universitas Bandung Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041018', 'Universitas Islam 45');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041019', 'Universitas Djuanda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041020', 'Universitas Nusa Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041021', 'Universitas Jenderal Achmad Yani');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041022', 'Universitas Winaya Mukti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041023', 'Universitas Galuh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041024', 'Universitas Garut');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041025', 'Universitas Nurtanio');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041026', 'Universitas Swiss German');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041027', 'Universitas Komputer Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041029', 'Universitas Muhammadiyah Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041030', 'Universitas Suryakancana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041031', 'Universitas Nasional Pasim');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041032', 'Universitas Mathla ul Anwar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041033', 'Universitas Pamulang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041034', 'Universitas Widyatama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041035', 'Universitas Putra Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041036', 'Universitas Kebangsaan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041037', 'Universitas Al-ghifari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041038', 'Universitas Kuningan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041039', 'Universitas Pramita Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041040', 'Universitas Muhammadiyah Sukabumi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041041', 'Universitas Presiden');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041042', 'Universitas Subang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041043', 'Universitas Majalengka');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041044', 'Universitas Sangga Buana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041046', 'Universitas Informatika Dan Bisnis Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041047', 'Universitas Wanita Internasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041048', 'Universitas Bale Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041049', 'Universitas Serang Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041050', 'Universitas Teknologi Nusantara Cilegon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041051', 'Universitas Muhammadiyah Tangerang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041053', 'Universitas Pembangunan Jaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041054', 'Universitas Nahdlatul Ulama Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041055', 'Universitas Banten Jaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041056', 'Universitas Surya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041057', 'Universitas Telkom');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041058', 'Universitas Lintas Internasional Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041059', 'Universitas Islam Al-Ihya Kuningan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041060', 'Universitas Buddhi Dharma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041061', 'Universitas Muhammadiyah Tasikmalaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041062', 'Universitas Buana Perjuangan Karawang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041063', 'Universitas Perjuangan Tasikmalaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041064', 'Universitas Muhammadiyah Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041065', 'Universitas Bina Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041066', 'Universitas Halim sanusi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041067', 'Universitas Nusa Putra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041068', 'Universitas Bhakti Kencana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041069', 'Universitas Mitra Karya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041070', 'Universitas Faletehan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041071', 'Universitas Raharja');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041072', 'Universitas Pelita Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041073', 'Universitas Ma\'soem');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041074', 'Universitas Bina Insani');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041075', 'Universitas Catur Insan Cendekia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041076', 'Universitas Kartamulia Purwakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041077', 'Universitas Adhirajasa Reswara Sanjaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041078', 'Universitas Panca Sakti Bekasi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041079', 'Universitas Primagraha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('041080', 'Universitas Muhammadiyah Banten');
INSERT INTO `mas_perguruan_tinggi` VALUES ('042001', 'Institut Manajemen Koperasi Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('042002', 'Institut Teknologi Nasional Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('042005', 'Institut Teknologi Sains Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('042006', 'Institut Teknologi Harapan Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('042010', 'Institut Bisnis Muhammadiyah Bekasi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('042011', 'Institut Manajemen Wiyata Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('042012', 'Institut Keguruan dan Ilmu Pendidikan Siliwangi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('042013', 'Institut Pendidikan Indonesia Garut');
INSERT INTO `mas_perguruan_tinggi` VALUES ('042014', 'Institut Medika Drg. Suherman');
INSERT INTO `mas_perguruan_tinggi` VALUES ('042015', 'Institut Teknologi Tangerang Selatan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('042016', 'Institut Bisnis Dan Informatika Kesatuan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('042017', 'Institut Kesehatan Rajawali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043001', 'Sekolah Tinggi Hukum Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043002', 'Sekolah Tinggi Hukum Galunggung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043003', 'Sekolah Tinggi Hukum Pasundan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043010', 'Sekolah Tinggi Ilmu Administrasi Maulana Yusuf Banten');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043014', 'Sekolah Tinggi Ilmu Administrasi YPPT Tasikmalaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043018', 'Sekolah Tinggi Ilmu Ekonomi Tridharma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043019', 'STKIP Sebelas April');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043021', 'Sekolah Tinggi Ilmu Ekonomi Indonesia Membangun (Inaba)');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043022', 'Sekolah Tinggi Ilmu Ekonomi Ekuitas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043024', 'Sekolah Tinggi Ilmu Ekonomi Pertiwi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043026', 'Sekolah Tinggi Ilmu Ekonomi STEMBI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043027', 'STMIK Mardira Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043028', 'Sekolah Tinggi Teknologi Yupentek');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043029', 'Sekolah Tinggi Hukum Garut');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043033', 'Sekolah Tinggi Ilmu Administrasi Menara Siswa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043034', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Pasundan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043035', 'Sekolah Tinggi Bahasa Asing Yapari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043036', 'STKIP PGRI Sukabumi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043040', 'Sekolah Tinggi Teknologi Mandala');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043042', 'Sekolah Tinggi Ilmu Administrasi Bagasasi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043043', 'Sekolah Tinggi Ilmu Ekonomi Pasundan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043044', 'Sekolah Tinggi Teknologi Bina Tunggal');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043045', 'Sekolah Tinggi Ilmu Komunikasi Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043049', 'Sekolah Tinggi Teknologi Mineral Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043050', 'Sekolah Tinggi Teknologi Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043051', 'Sekolah Tinggi Teknologi Garut');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043056', 'Sekolah Tinggi Ilmu Ekonomi Pariwisata YAPARI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043057', 'Sekolah Tinggi Matematika & Ilmu Pengetahuan Alam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043059', 'Sekolah Tinggi Teknologi Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043061', 'Sekolah Tinggi Ilmu Ekonomi Binaniaga');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043063', 'STMIK Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043064', 'Sekolah Tinggi Ilmu Ekonomi La Tansa Mashiro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043071', 'STMIK Likmi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043072', 'Sekolah Tinggi Ilmu Bahasa Banten Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043073', 'STMIK IM');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043074', 'Sekolah Tinggi Ilmu Ekonomi Yasa Anggana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043075', 'Sekolah Tinggi Ilmu Ekonomi Triguna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043078', 'Sekolah Tinggi Pariwisata Ars Internasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043079', 'Sekolah Tinggi Desain Indonesia Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043081', 'Sekolah Tinggi Ilmu Ekonomi Sebelas April');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043082', 'Sekolah Tinggi Ilmu Ekonomi Penguji Sukabumi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043084', 'Sekolah Tinggi Ilmu Ekonomi PGRI Sukabumi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043085', 'STISIP Yupentek Tangerang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043086', 'STMIK Jabar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043088', 'Sekolah Tinggi Ilmu Ekonomi Miftahul Huda Subang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043089', 'Sekolah Tinggi Ilmu Ekonomi Mulia Pratama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043090', 'Sekolah Tinggi Ilmu Administrasi Sebelas April');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043091', 'Sekolah Tinggi Teknologi Mutu Muhammadiyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043093', 'Sekolah Tinggi Ilmu Ekonomi YP-Karya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043094', 'Sekolah Tinggi Ilmu Ekonomi Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043096', 'Sekolah Tinggi Ilmu Ekonomi Tri Bhakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043097', 'Sekolah Tinggi Ilmu Ekonomi Kesatuan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043100', 'Sekolah Tinggi Teknologi Cipasung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043103', 'STISIP Widyapuri Mandiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043104', 'STMIK Tulus Cendekia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043106', 'Sekolah Tinggi Ilmu Hukum Gunung Jati');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043107', 'Sekolah Tinggi Teknologi Texmaco');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043108', 'STMIK Bani Saleh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043109', 'STMIK Pranata Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043110', 'STISIP Tasikmalaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043111', 'STKIP Arrahmaniyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043113', 'Sekolah Tinggi Teknologi Jawa Barat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043114', 'Sekolah Tinggi Ilmu Ekonomi Yasmi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043115', 'Sekolah Tinggi Farmasi Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043118', 'STMIK DCI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043119', 'Sekolah Tinggi Ilmu Ekonomi Sutaatmadja');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043121', 'STMIK Cilegon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043122', 'STMIK Subang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043123', 'STKIP Subang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043127', 'Sekolah Tinggi Ilmu Ekonomi Fajar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043128', 'Sekolah Tinggi Ilmu Ekonomi Gema Widya Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043130', 'Sekolah Tinggi Ilmu Ekonomi Cipasung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043131', 'Sekolah Tinggi Bahasa Asing JIA');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043132', 'Sekolah Tinggi Teknologi Industri dan Farmasi Bogor');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043134', 'Sekolah Tinggi Ilmu Ekonomi YPN');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043135', 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043137', 'STMIK Amik Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043139', 'STMIK Rosma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043140', 'STKIP Yasika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043141', 'Sekolah Tinggi Ilmu Administrasi Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043142', 'STMIK Sumedang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043144', 'STMIK Pamitran');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043145', 'STMIK Kharisma Karawang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043148', 'STISIP Syamsul Ulum');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043149', 'Sekolah Tinggi Ilmu Ekonomi Pandu Madania');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043153', 'Sekolah Tinggi Ilmu Ekonomi Stan Im');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043155', 'Sekolah Tinggi Ilmu Ekonomi Stmy');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043156', 'Sekolah Tinggi Ilmu Ekonomi Dharma Agung Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043165', 'Sekolah Tinggi Bahasa Asing Sebelas April Sumedang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043166', 'STKIP Persatuan Islam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043167', 'Sekolah Tinggi Teknologi Wastukancana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043170', 'Sekolah Tinggi Ilmu Ekonomi Latifah Mubarokiyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043171', 'Sekolah Tinggi Ilmu Ekonomi Dewantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043172', 'Sekolah Tinggi Ilmu Ekonomi Wibawa Karta Raharja');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043176', 'Sekolah Tinggi Ilmu Ekonomi Kalpataru');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043177', 'Sekolah Tinggi Ilmu Komputer Poltek Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043178', 'Sekolah Tinggi Ilmu Kesehatan Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043180', 'Sekolah Tinggi Ilmu Ekonomi Bisma Lepisi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043181', 'Sekolah Tinggi Ilmu Ekonomi Tribuana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043182', 'Sekolah Tinggi Ilmu Teknik Bina Putra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043183', 'STISIP Bina Putera Banjar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043185', 'STMIK IKMI Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043186', 'Sekolah Tinggi Kesehatan Indonesia Wirautama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043187', 'Sekolah Tinggi Seni Musik Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043188', 'Sekolah Tinggi Ilmu Kesehatan Bina Putera Banjar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043189', 'Sekolah Tinggi Teknologi Dr Kh Ez Muttaqien');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043191', 'Sekolah Tinggi Farmasi Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043192', 'Sekolah Tinggi Teknologi Informatika Sony Sugema');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043193', 'Sekolah Tinggi Ilmu Ekonomi Insan Pembangunan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043194', 'Sekolah Tinggi Ilmu Ekonomi Ppi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043195', 'Sekolah Tinggi Ilmu Ekonomi Paripurna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043196', 'Sekolah Tinggi Bahasa Asing Technocrat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043197', 'Sekolah Tinggi Ilmu Ekonomi Al-Khairiyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043198', 'STMIK Ganesha Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043199', 'Sekolah Tinggi Ilmu Ekonomi Dr Kh Ez Mutaqien');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043200', 'STMIK Tasikmalaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043201', 'Sekolah Tinggi Farmasi YPIB Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043203', 'Sekolah Tinggi Ilmu Kesehatan Bhakti Kencana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043205', 'Sekolah Tinggi Ilmu Kesehatan Immanuel Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043207', 'Sekolah Tinggi Ilmu Manajemen Budi Bakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043211', 'Sekolah Tinggi Ilmu Kesehatan Garut');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043212', 'Sekolah Tinggi Ilmu Kesehatan Dharma Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043213', 'Sekolah Tinggi Ilmu Kesehatan Indramayu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043214', 'Sekolah Tinggi Ilmu Administrasi Sandikta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043215', 'Sekolah Tinggi Ilmu Administrasi Banten');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043216', 'Sekolah Tinggi Ilmu Kesehatan Mahardika Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043217', 'Sekolah Tinggi Teknik Karawang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043218', 'Sekolah Tinggi Teknologi Fatahillah Cilegon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043219', 'Sekolah Tinggi Ilmu Kesehatan Jenderal Achmad Yani');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043220', 'Sekolah Tinggi Ilmu Kesehatan Respati');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043223', 'STKIP Setiabudhi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043224', 'STMIK Triguna Utama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043225', 'STMIK Insan Pembangunan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043227', 'Sekolah Tinggi Ilmu Ekonomi BII Bekasi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043231', 'Sekolah Tinggi Ilmu Kesehatan Banten');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043232', 'STMIK Mercusuar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043233', 'STMIK Dharma Putra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043234', 'Sekolah Tinggi Teknologi Ilmu Komputer (STTIKOM) Insan Unggul');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043236', 'Sekolah Tinggi Ilmu Ekonomi Budi Pertiwi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043238', 'STMIK MIC Cikarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043239', 'STISIP Banten Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043240', 'Sekolah Tinggi Teknologi Banten');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043241', 'Sekolah Tinggi Ilmu Sosial Dan Ilmu Politik Bekasi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043242', 'STMIK PGRI Tangerang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043243', 'STMIK LPKIA Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043244', 'Sekolah Tinggi Ilmu Kesehatan Bakti Tunas Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043246', 'Sekolah Tinggi Bahasa Asing Cipto Hadi Pranoto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043247', 'Sekolah Tinggi Ilmu Hukum Dharma Andhiga');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043248', 'Sekolah Tinggi Ilmu Komputer Binaniaga');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043249', 'Sekolah Tinggi Teknik Multimedia Cendikia Abditama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043250', 'Sekolah Tinggi Ilmu Ekonomi Islamiyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043251', 'STMIK Masa Depan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043252', 'STISIP Setia Budhi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043253', 'Sekolah Tinggi Teknologi Muhammadiyah Cileungsi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043254', 'STMIK Cikarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043255', 'Sekolah Tinggi Ilmu Administrasi Cimahi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043257', 'Sekolah Tinggi Ilmu Bahasa Asing Invada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043258', 'Sekolah Tinggi Ilmu Komunikasi Wangsa Jaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043259', 'Sekolah Tinggi Analis Kimia Cilegon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043261', 'Sekolah Tinggi Ilmu Kesehatan YPIB');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043262', 'Sekolah Tinggi Teknologi Pratama Adi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043265', 'Sekolah Tinggi Ilmu Kesehatan Cikarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043266', 'Sekolah Tinggi Ilmu Ekonomi Banten');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043268', 'STMIK Dharma Negara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043269', 'STIE Dharma Negara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043270', 'STIKES Wijaya Husada Bogor');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043271', 'Sekolah Tinggi Farmasi Muhammadiyah Tangerang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043272', 'Sekolah Tinggi Bahasa Asing Bina Dinamika Cianjur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043273', 'Sekolah Tinggi Ilmu Ekonomi Gici');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043275', 'Sekolah Tinggi Ilmu Ekonomi Kridatama Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043276', 'Sekolah Tinggi Ilmu Kesehatan Yatsi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043277', 'STIKES Muhammadiyah Ciamis');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043278', 'Sekolah Tinggi Ilmu Komputer Al-khairiyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043279', 'Sekolah Tinggi Ilmu Kesehatan Mitra Kencana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043280', 'STIKES Sebelas April Sumedang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043282', 'STIKES Widya Dharma Husada Tangerang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043283', 'STMIK Bina Sarana Global');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043284', 'Sekolah Tinggi Ilmu Kesehatan Budhi Luhur Cimahi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043285', 'Sekolah Tinggi Bahasa Asing Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043286', 'Sekolah Tinggi Ilmu Kesehatan Sukabumi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043288', 'Sekolah Tinggi Ilmu Kesehatan Kuningan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043289', 'STKIP Banten');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043290', 'Sekolah Tinggi Teknologi Duta Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043291', 'STMIK WIT Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043292', 'STIKES Faathir Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043295', 'Sekolah Tinggi Ilmu Kesehatan Bani Saleh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043296', 'Sekolah Tinggi Ilmu Ekonomi Harapan Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043298', 'STIKES Karsa Husada Garut');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043301', 'Sekolah Tinggi Ilmu Kesehatan Santo Borromeus');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043305', 'STMIK Pasim Sukabumi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043306', 'STIE Pasim Sukabumi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043307', 'Sekolah Tinggi Ilmu Kesehatan Rajawali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043308', 'Sekolah Tinggi Ilmu Ekonomi Prima Graha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043309', 'STMIK Muhammadiyah Banten');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043310', 'Sekolah Tinggi Ilmu Ekonomi Hidayatullah Depok');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043311', 'STMIK Antar Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043312', 'Sekolah Tinggi Bahasa Asing IEC Bekasi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043313', 'STIKES Kharisma Karawang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043314', 'STIKES Ichsan Medical Centre Bintaro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043315', 'Sekolah Tinggi Ilmu Keperawatan PPNI Jawa Barat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043316', 'Sekolah Tinggi Ilmu Ekonomi Dwimulya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043317', 'Sekolah Tinggi Analis Bakti Asih');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043318', 'STIEB Perdana Mandiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043319', 'Sekolah Tinggi Pariwisata Bogor');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043320', 'STKIP Panca Sakti Bekasi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043321', 'STKIP Surya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043322', 'STKIP Muhammadiyah Bogor');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043323', 'STKIP Muhammadiyah Kuningan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043325', 'Sekolah Tinggi Teknologi YBS Internasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043326', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Bina Mutiara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043327', 'STISIP Guna Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043328', 'STIKES Bina Permata Medika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043329', 'Sekolah Tinggi Ilmu Hukum Painan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043330', 'Sekolah Tinggi Ilmu Kesehatan \'Aisyiyah Bandung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043331', 'Sekolah Tinggi Teknologi Terpadu Nurul Fikri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043332', 'Sekolah Tinggi Ilmu Kesehatan Holistik');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043333', 'STKIP Mutiara Banten');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043334', 'STKIP Nahdlatul Ulama Indramayu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043335', 'STKIP Purwakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043336', 'STKIP Pangeran Dharma Kusuma Segeran Juntinyuat Indramayu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043337', 'Sekolah Tinggi Manajemen Logistik Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043339', 'STKIP Situs Banten di Serang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043340', 'STKIP PANCAKARYA');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043341', 'STISIP Trimasda Cilegon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043342', 'STIE ISM');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043343', 'STKIP Pelita Pratama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043344', 'STKIP Syekh Manshur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043345', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Invada Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043346', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Al-Amin Indramayu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043347', 'STIKES An Nasher Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043348', 'STIKES Prima Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043349', 'Sekolah Tinggi Ilmu Ekonomi Ekadharma Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043350', 'STKIP Babunnajah Pandeglang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043351', 'STIKES Raflesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043354', 'STKIP Sera');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043355', 'Sekolah Tinggi Farmasi Muhammadiyah Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043356', 'STIKES Muhammadiyah Cirebon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043358', 'Sekolah Tinggi Ilmu Kesehatan Salsabila Serang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043359', 'Sekolah Tinggi Ilmu Komputer El Rahma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043360', 'STKIP Sinar Cendekia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043361', 'STIKES Muhammadiyah Kuningan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043362', 'STKIP  La Tansa Mashiro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043363', 'Sekolah Tinggi  Ilmu Ekonomi JIU');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043364', 'Sekolah Tinggi Ilmu Hukum dan Politik Pelopor Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043365', 'Sekolah Tinggi Ilmu Kesehatan Bogor Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043366', 'Sekolah Tinggi Ilmu Kesehatan Khas Kempek');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043367', 'STISIP Samudera Indonesia Selatan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043368', 'Sekolah Tinggi Pendidikan Holistik Berbasis Karekter');
INSERT INTO `mas_perguruan_tinggi` VALUES ('043369', 'Sekolah Tinggi Bahasa Asing Jiu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051001', 'Universitas Islam Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051002', 'Universitas Sarjanawiyata Tamansiswa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051003', 'Universitas Janabadra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051004', 'Universitas Proklamasi  45');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051005', 'Universitas Atma Jaya Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051006', 'Universitas Cokroaminoto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051007', 'Universitas Muhammadiyah Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051008', 'Universitas Widya Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051010', 'Universitas Kristen Immanuel');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051011', 'Universitas Kristen Duta Wacana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051012', 'Universitas Sanata Dharma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051013', 'Universitas Ahmad Dahlan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051015', 'Universitas PGRI Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051017', 'Universitas Gunung Kidul');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051018', 'Universitas Teknologi Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051019', 'Universitas Mercu Buana Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051020', 'Universitas Respati Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051021', 'Universitas Alma Ata');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051022', 'Universitas Aisyiyah Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051023', 'Universitas Nahdlatul Ulama Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051024', 'Universitas Amikom Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051025', 'Universitas Jenderal Achmad Yani Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('051026', 'Universitas Mahakarya Asia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('052001', 'IKIP PGRI Wates');
INSERT INTO `mas_perguruan_tinggi` VALUES ('052002', 'Institut Pertanian (Intan) Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('052003', 'Institut Sains Dan Teknologi Akprind');
INSERT INTO `mas_perguruan_tinggi` VALUES ('052004', 'Institut Pertanian Stiper');
INSERT INTO `mas_perguruan_tinggi` VALUES ('052005', 'Institut Teknologi Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('052006', 'Institut Teknologi Nasional Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053001', 'STIKIP Catur Sakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053003', 'Sekolah Tinggi Ilmu Ekonomi YKPN');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053004', 'Sekolah Tinggi Ilmu Ekonomi Widya Wiwaha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053005', 'Sekolah Tinggi Ilmu Ekonomi Nusa Megar Kencana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053006', 'STISIP Kartika Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053009', 'Sekolah Tinggi Pembangunan Masyarakat Desa APMD');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053010', 'STMIK Akakom');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053012', 'Sekolah Tinggi Ilmu Ekonomi SBI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053013', 'Sekolah Tinggi Ilmu Ekonomi Mitra Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053014', 'Sekolah Tinggi Ilmu Ekonomi Bisnis Dan Perbankan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053015', 'Sekolah Tinggi Ilmu Ekonomi Ykp');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053017', 'Sekolah Tinggi Ilmu Ekonomi Isti Ekatana Upaweda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053018', 'Sekolah Tinggi Teknologi Kedirgantaraan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053019', 'Sekolah Tinggi Ilmu Administrasi Aan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053020', 'Sekolah Tinggi Pariwisata Ampta Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053021', 'STMIK Amikom');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053022', 'Sekolah Tinggi Ilmu Ekonomi Pariwisata Api');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053023', 'Sekolah Tinggi Bahasa Asing LIA Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053024', 'Sekolah Tinggi Teknologi Adisutjipto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053025', 'STMIK El Rahma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053027', 'Sekolah Tinggi Ilmu Kesehatan Wira Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053028', 'Sekolah Tinggi Psikologi Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053030', 'Sekolah Tinggi Ilmu Kesehatan Surya Global');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053034', 'Sekolah Tinggi Ilmu Manajemen YKPN');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053037', 'Sekolah Tinggi Pariwisata Ambarrukmo Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053039', 'Sekolah Tinggi Seni Rupa Dan Desain Visi Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053040', 'Sekolah Tinggi Ilmu Kesehatan Bethesda Yakkum');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053041', 'STIKES Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053042', 'STIKES Guna Bangsa Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053043', 'STIKES AL-Islam Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053044', 'Sekolah Tinggi Ilmu Kesehatan Madani Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053045', 'Sekolah Tinggi Ilmu Kesehatan Panti Rapih Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053046', 'Sekolah Tinggi Ilmu Kesehatan Akbidyo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053047', 'Sekolah Tinggi Ilmu Komunikasi Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053048', 'Sekolah Tinggi Ilmu Kesehatan Notokusumo Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053049', 'Sekolah Tinggi Maritim Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('053050', 'Sekolah Tinggi Arsitektur YKPN Yogyakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061001', 'Universitas Kristen Satya Wacana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061002', 'Universitas Islam Sultan Agung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061003', 'Universitas 17 Agustus 1945 Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061004', 'Universitas Muhammadiyah Magelang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061006', 'Universitas Slamet Riyadi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061007', 'Universitas Wijaya Kusuma Purwokerto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061008', 'Universitas Muhammadiyah Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061009', 'Universitas Muria Kudus');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061010', 'Universitas Tunas Pembangunan Surakarta (UTP)');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061011', 'Universitas Pekalongan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061012', 'Universitas Katolik Soegijapranata');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061013', 'Universitas Pancasakti Tegal');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061014', 'Universitas Darul Ulum Islamic Centre Sudirman');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061015', 'Universitas Islam Batik');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061016', 'Universitas Veteran Bangun Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061017', 'Universitas Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061018', 'Universitas Widya Dharma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061019', 'Universitas Muhammadiyah Purwokerto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061020', 'Universitas Kristen Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061021', 'Universitas Pandanaran');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061022', 'Universitas Setia Budi Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061024', 'Universitas Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061025', 'Universitas Muhammadiyah Purworejo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061026', 'Universitas Muhammadiyah Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061027', 'Universitas Wahid Hasyim');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061028', 'Universitas Nahdlatul Ulama Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061029', 'Universitas Stikubank');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061030', 'Universitas Sains Alqur an');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061031', 'Universitas Dian Nuswantoro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061032', 'Universitas Sultan Fatah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061033', 'Universitas Sahid Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061034', 'Universitas Aki');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061035', 'Universitas Boyolali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061036', 'Universitas Muhadi Setiabudi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061037', 'Universitas Islam Nahdlatul Ulama Jepara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061038', 'Universitas PGRI Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061040', 'Universitas Ma\'arif Nahdlatul Ulama Kebumen');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061041', 'Universitas Nahdlatul Ulama Al Ghazali Cilacap');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061042', 'Universitas Peradaban');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061043', 'Universitas Selamat Sri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061044', 'Universitas Ngudi Waluyo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061045', 'Universitas Nahdlatul Ulama Purwokerto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061046', 'Universitas Nasional Karangturi Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061047', 'Universitas Duta Bangsa Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061048', 'Universitas  Harapan Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061049', 'Universitas Ivet');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061050', 'Universitas Muhammadiyah Kudus');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061051', 'Universitas Perwira Purbalingga');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061052', 'Universitas Muhammadiyah Pekajangan Pekalongan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061053', 'Universitas An Nuur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061054', 'Universitas Amikom Purwokerto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061055', 'Universitas Kusuma Husada Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061056', 'Universitas Maritim AMNI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061057', 'Universitas \'Aisyiyah Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061058', 'Universitas Sains dan Teknologi Komputer');
INSERT INTO `mas_perguruan_tinggi` VALUES ('061059', 'Universitas Widya Husada Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('062003', 'Institut Teknologi Telkom Purwokerto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('062004', 'Institut Teknologi Dan Sains Nahdlatul Ulama Pekalongan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('062005', 'Institut Teknologi Sains dan Kesehatan PKU Muhammadiyah Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('062006', 'Institut Teknologi dan Bisnis Kristen Bukit Pengharapan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('062007', 'Institut Teknologi dan Bisnis Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('062008', 'Institut Teknologi Bisnis AAS Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063001', 'Sekolah Tinggi Ilmu Komunikasi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063003', 'Sekolah Tinggi Ilmu Ekonomi Anindyaguna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063004', 'Sekolah Tinggi Ilmu Ekonomi Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063005', 'Sekolah Tinggi Ilmu Ekonomi Satria');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063006', 'Sekolah Tinggi Ilmu Ekonomi Atma Bhakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063007', 'Sekolah Tinggi Ilmu Ekonomi Widya Manggala');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063008', 'Sekolah Tinggi Ilmu Ekonomi Dharma Putra Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063009', 'Sekolah Tinggi Ilmu Pertanian Farming');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063010', 'Sekolah Tinggi Ilmu Ekonomi Pariwisata Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063011', 'Sekolah Tinggi Ilmu Ekonomi Cendekia Karya Utama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063012', 'Sekolah Tinggi Ilmu Ekonomi St Pignatelli');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063013', 'Sekolah Tinggi Ilmu Ekonomi Bank Bpd Jawa Tengah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063014', 'Sekolah Tinggi Ilmu Ekonomi Widya Manggalia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063016', 'Sekolah Tinggi Ilmu Ekonomi Trianandra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063018', 'Sekolah Tinggi Ilmu Ekonomi Swasta Mandiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063020', 'STMIK Widya Utama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063021', 'STMIK Bina Patria');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063022', 'Sekolah Tinggi Ilmu Ekonomi AMA');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063024', 'Sekolah Tinggi Ilmu Ekonomi Adi Unggul Bhirawa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063025', 'Sekolah Tinggi Ilmu Ekonomi Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063026', 'Sekolah Tinggi Ilmu Ekonomi Totalwin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063027', 'Sekolah Tinggi Ilmu Ekonomi Wijaya Mulya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063028', 'Sekolah Tinggi Ilmu Ekonomi Pelita Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063030', 'Sekolah Tinggi Ilmu Ekonomi Assholeh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063031', 'Sekolah Tinggi Ilmu Ekonomi YPPI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063032', 'Sekolah Tinggi Ilmu Farmasi Yayasan Pharmasi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063037', 'Sekolah Tinggi Ilmu Ekonomi Putra Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063038', 'Sekolah Tinggi Ilmu Perikanan Kalinyamat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063039', 'Sekolah Tinggi Ilmu Ekonomi Rajawali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063040', 'STMIK Sinar Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063042', 'STMIK AUB Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063043', 'STMIK Widya Pratama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063044', 'Sekolah Tinggi Teknik Wiworotomo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063045', 'Sekolah Tinggi Ilmu Administrasi Madani');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063046', 'Sekolah Tinggi Ilmu Kesehatan Harapan Bangsa Purwokerto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063047', 'STMIK Himsya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063048', 'Sekolah Tinggi Teknologi Muhammadiyah Kebumen');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063049', 'Sekolah Tinggi Elektronika & Komputer (STEKOM)');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063051', 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Gombong');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063052', 'Sekolah Tinggi Teknologi Ronggolawe');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063053', 'Sekolah Tinggi Ilmu Kesehatan Hakli');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063054', 'STMIK AKI Pati');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063056', 'Sekolah Tinggi Ilmu Ekonomi Tamansiswa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063057', 'Sekolah Tinggi Ilmu Kesehatan Cendekia Utama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063058', 'STIMIK Pro Visi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063060', 'Sekolah Tinggi Ilmu Kesehatan Kendal');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063061', 'STMIK YMI Tegal');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063064', 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Cilacap');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063066', 'Sekolah Tinggi Ilmu Kesehatan \'Aisyiyah Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063067', 'STIMIK Tunas Bangsa Banjarnegara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063069', 'Sekolah Tinggi Kesehatan Bina Cipta Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063070', 'Sekolah Tinggi Ilmu Kesehatan Duta Gama Klaten');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063071', 'STIKES Bhakti Mandala Husada Slawi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063072', 'STIKES Muhammadiyah Klaten');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063073', 'Sekolah Tinggi Ilmu Komputer Yos Sudarso');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063074', 'STIKES Karya Husada Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063075', 'Sekolah Tinggi Pariwisata Sahid Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063078', 'Sekolah Tinggi Ilmu Kesehatan Widya Husada Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063079', 'STIKES Telogorejo Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063080', 'Sekolah Tinggi Maritim Dan Transpor AMNI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063081', 'Sekolah Tinggi Ilmu Kesehatan Elisabeth Semarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063082', 'STIA Asuh Mitra Solo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063084', 'Sekolah Tinggi Ilmu Ekonomi AKA');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063087', 'STIKES  Al Irsyad Al Islamiyyah Cilacap');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063093', 'Sekolah Tinggi Ilmu Ekonomi AAS');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063095', 'STKIP Darussalam Cilacap');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063096', 'STIKES Mitra Husada Karanganyar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063097', 'STKIP Majenang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063098', 'STIKES Estu Utomo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063099', 'Sekolah Tinggi Ilmu Kesehatan Nasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063100', 'STKIP Nahdlatul Ulama Kabupaten Tegal');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063101', 'STMIK Muhammadiyah Paguyangan Brebes');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063102', 'STIKES Ibnu Sina Ajibarang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063103', 'STT Minyak dan Gas Cilacap');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063104', 'STIKES Mamba ul Ulum Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063105', 'STKIP Muhammadiyah Blora');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063106', 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Kendal');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063107', 'Sekolah Tinggi Manajemen Informatika dan Komputer Komputama Majenang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063108', 'Sekolah Tinggi Ilmu Kesehatan Uniska');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063109', 'Sekolah Tinggi Teknik Pati');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063110', 'Sekolah Tinggi Manajemen Informatika dan Komputer AMIKOM Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063111', 'STIKES Muhammadiyah Tegal');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063112', 'Sekolah Tinggi Ilmu Kesehatan Bakti Utama Pati');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063113', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Muhammadiyah Batang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063114', 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Wonosobo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063115', 'Sekolah Tinggi Ilmu Kesehatan Ar-Rum');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063116', 'Sekolah Tinggi Ilmu Kesehatan Tujuh Belas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063117', 'Sekolah Tinggi Ilmu Kesehatan Panti Wilasa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063118', 'Sekolah Tinggi Ilmu Kesehatan YLPP Purwokerto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063119', 'Sekolah Tinggi Ilmu Kesehatan Serulingmas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063120', 'Sekolah Tinggi Ilmu Kesehatan Brebes');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063121', 'Sekolah Tinggi Teknologi Warga Surakarta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('063122', 'Sekolah Tinggi Ilmu Farmasi Nusaputera');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071001', 'Universitas 17 Agustus 1945 Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071002', 'Universitas Kristen Petra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071003', 'Universitas Katolik Widya Mandala Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071004', 'Universitas Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071005', 'Universitas Dr Soetomo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071006', 'Universitas Merdeka Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071007', 'Universitas Sunan Giri Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071008', 'Universitas Narotama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071009', 'Universitas Wijaya Kusuma Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071010', 'Universitas Bhayangkara Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071011', 'Universitas Wijaya Putra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071012', 'Universitas Muhammadiyah Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071013', 'Universitas Yos Soedarso');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071014', 'Universitas W R Supratman');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071016', 'Universitas 45 Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071017', 'Universitas Widya Kartika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071018', 'Universitas Kartini');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071019', 'Universitas Katolik Darma Cendika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071020', 'Universitas Gresik');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071022', 'Universitas Mayjen Sungkono');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071023', 'Universitas Darul  ulum');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071024', 'Universitas Muhammadiyah Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071025', 'Universitas Merdeka Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071026', 'Universitas Katolik Widya Karya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071027', 'Universitas Islam Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071028', 'Universitas Wisnuwardhana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071029', 'Universitas Kristen Cipta Wacana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071030', 'Universitas Widya Gama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071031', 'Universitas Merdeka Pasuruan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071032', 'Universitas Muhammadiyah Jember');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071033', 'Universitas Mochammad Sroedji');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071034', 'Universitas Islam Jember');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071035', 'Universitas 17 Agustus 1945 Banyuwangi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071036', 'Universitas Abdurachman Saleh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071037', 'Universitas Bondowoso');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071038', 'Universitas Panca Marga');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071039', 'Universitas Kadiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071040', 'Universitas Islam Kadiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071041', 'Universitas Tulungagung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071042', 'Universitas Merdeka Madiun');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071043', 'Universitas Merdeka Ponorogo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071044', 'Universitas Muhammadiyah Ponorogo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071045', 'Universitas Soerjo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071046', 'Universitas Bojonegoro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071047', 'Universitas Sunan Bonang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071048', 'Universitas Madura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071049', 'Universitas PGRI Adi Buana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071050', 'Universitas Kanjuruhan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071051', 'Universitas Gajayana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071052', 'Universitas Pawyatan Daha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071053', 'Universitas Katolik Widya Mandala Madiun');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071055', 'Universitas Lumajang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071056', 'Universitas Hang Tuah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071057', 'Universitas Teknologi Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071058', 'Universitas Wiraraja');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071059', 'Universitas Muhammadiyah Gresik');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071060', 'Universitas Muhammadiyah Sidoarjo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071061', 'Universitas Tribhuwana Tungga Dewi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071062', 'Universitas Islam Darul `ulum');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071065', 'Universitas Pesantren Tinggi Darul  ulum');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071066', 'Universitas Islam Majapahit');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071067', 'Universitas Islam Lamongan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071068', 'Universitas Islam Madura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071069', 'Universitas Yudharta Pasuruan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071070', 'Universitas Islam Balitar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071071', 'Universitas Ciputra Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071072', 'Universitas Nusantara PGRI Kediri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071073', 'Universitas PGRI Ronggolawe');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071074', 'Universitas Ma Chung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071075', 'Universitas PGRI Banyuwangi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071078', 'Universitas Bakti Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071079', 'Universitas Nahdlatul Ulama Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071080', 'Universitas Hasyim Asy\'ari Tebuireng Jombang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071081', 'Universitas KH. A. Wahab Hasbullah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071082', 'Universitas Nahdlatul Ulama Sidoarjo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071083', 'Universitas Kahuripan Kediri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071084', 'Universitas Islam Raden Rahmat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071085', 'Universitas Darussalam Gontor');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071086', 'Universitas Maarif Hasyim Latif');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071087', 'Universitas Wahidiyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071088', 'Universitas Nahdlatul Ulama Sunan Giri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071089', 'Universitas Internasional Semen Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071090', 'Universitas Nahdlatul Ulama Blitar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071091', 'Universitas PGRI Madiun');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071092', 'Universitas Doktor Nugroho Magetan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071093', 'Universitas Billfath');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071094', 'Universitas Nurul Jadid');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071095', 'Universitas Ibrahimy');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071096', 'Universitas Muhammadiyah Lamongan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071097', 'Universitas Qomaruddin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071098', 'Universitas KH. Bahaudin Mudhary Madura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071099', 'Universitas Dinamika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('071100', 'Universitas PGRI Wiranegara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072001', 'Institut Teknologi Pembangunan Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072002', 'Institut Teknologi Adhi Tama Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072003', 'IKIP Widya Darma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072004', 'Institut Teknologi Nasional Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072005', 'IKIP Budi Utomo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072006', 'Institut Pertanian Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072007', 'IKIP PGRI Jember');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072011', 'IKIP PGRI Bojonegoro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072013', 'Institut Sains Dan Teknologi Palapa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072014', 'Institut Informatika Indonesia Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072015', 'Institut Ilmu Kesehatan Bhakti Wiyata Kediri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072018', 'Institut Teknologi dan Sains Nahdlatul Ulama Pasuruan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072019', 'Institut  Teknologi Telkom Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072020', 'Institut Sains Dan Teknologi Annuqayah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072021', 'Institut Sains dan Teknologi Terpadu Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072022', 'Institut Ilmu Kesehatan STRADA Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072023', 'Institut Teknologi dan Bisnis Asia Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072024', 'Institut Teknologi dan Bisnis Muhammadiyah Banyuwangi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('072025', 'Institut Teknologi dan Bisnis Nazhatut Thullab Al-Muafa Sampang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073001', 'Sekolah Tinggi Ilmu Ekonomi Indonesia Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073002', 'Sekolah Tinggi Ilmu Ekonomi Perbanas Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073003', 'Sekolah Tinggi Kesenian Wilwatikta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073004', 'Sekolah Tinggi Ilmu Ekonomi Mahardhika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073005', 'Sekolah Tinggi Teknik Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073006', 'Sekolah Tinggi Ilmu Ekonomi Urip Sumohardjo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073007', 'Sekolah Tinggi Ilmu Ekonomi Artha Bodhi Iswara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073010', 'Sekolah Tinggi Ilmu Komunikasi Aws');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073011', 'Sekolah Tinggi Ilmu Bahasa Dan Sastra Satya Widya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073017', 'STKIP PGRI Jombang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073018', 'Sekolah Tinggi Ilmu Ekonomi Jaya Negara Tamansiswa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073019', 'Sekolah Tinggi Ilmu Ekonomi Malangkucecwara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073020', 'Sekolah Tinggi Filsafat Teologi Widya Sasana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073021', 'Sekolah Tinggi Ilmu Hukum Sunan Giri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073022', 'Sekolah Tinggi Ilmu Ekonomi Kertanegara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073023', 'Sekolah Tinggi Ilmu Administrasi Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073024', 'Sekolah Tinggi Ilmu Ekonomi Indonesia Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073025', 'STIKI Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073026', 'Sekolah Tinggi Sosial Politik Waskita Darma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073028', 'Sekolah Tinggi Ilmu Ekonomi Dharma Nasional Jember');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073029', 'Sekolah Tinggi Ilmu Pertanian');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073030', 'Sekolah Tinggi Ilmu Ekonomi Mandala');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073032', 'STKIP PGRI Situbondo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073033', 'STKIP PGRI Lumajang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073034', 'Sekolah Tinggi Ilmu Hukum Jenderal Sudirman');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073035', 'STKIP Muhammadiyah Lumajang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073037', 'Sekolah Tinggi Ilmu Hukum Zainul Hasan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073038', 'Sekolah Tinggi Ilmu Administrasi Bayuangga');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073040', 'STKIP PGRI Tulungagung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073041', 'STKIP PGRI Nganjuk');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073042', 'STKIP Widya Yuwana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073043', 'STISIP Muhammadiyah Madiun');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073044', 'STKIP PGRI Ponorogo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073045', 'STKIP PGRI Trenggalek');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073046', 'STKIP PGRI Ngawi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073048', 'STKIP PGRI Lamongan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073049', 'STKIP PGRI Bangkalan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073050', 'STKIP PGRI Sampang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073051', 'STKIP PGRI Sumenep');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073052', 'Sekolah Tinggi Ilmu Administrasi Panglima Sudirman');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073053', 'Sekolah Tinggi Pariwisata Satya Widya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073054', 'Sekolah Tinggi Ilmu Ekonomi Wilwatikta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073055', 'Sekolah Tinggi Bahasa Asing Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073056', 'Sekolah Tinggi Ilmu Ekonomi Koperasi Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073057', 'Sekolah Tinggi Teknik Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073058', 'Sekolah Tinggi Ilmu Administrasi Pembangunan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073060', 'Sekolah Tinggi Teknik Industri Turen');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073061', 'Sekolah Tinggi Ilmu Ekonomi Widya Gama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073063', 'Sekolah Tinggi Ilmu Ekonomi Kesumanegara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073064', 'STKIP PGRI Sidoarjo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073065', 'STKIP PGRI Pacitan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073066', 'STMIK Yadika Bangil');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073067', 'Sekolah Tinggi Ilmu Perikanan Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073069', 'Sekolah Tinggi Ilmu Ekonomi IEU');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073072', 'Sekolah Tinggi Ilmu Komputer PGRI Banyuwangi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073075', 'Sekolah Tinggi Ilmu Ekonomi IBMT');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073076', 'Sekolah Tinggi Ilmu Ekonomi Nganjuk');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073079', 'Sekolah Tinggi Ilmu Ekonomi Widya Darma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073080', 'Sekolah Tinggi Ilmu Ekonomi PGRI Dewantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073081', 'Sekolah Tinggi Teknologi Cahaya Surya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073082', 'Sekolah Tinggi Ilmu Ekonomi Widya Dharma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073086', 'Sekolah Tinggi Ilmu Ekonomi Fatahillah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073087', 'STIE Muhammadiyah Paciran Lamongan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073088', 'STIA Dan Manajemen Kepelabuhan Barunawati');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073089', 'Sekolah Tinggi Ilmu Ekonomi Cendekia Bojonegoro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073090', 'Sekolah Tinggi Ilmu Ekonomi KH Ahmad Dahlan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073094', 'Sekolah Tinggi Ilmu Ekonomi Al-Anwar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073096', 'Sekolah Tinggi Teknologi Stikma Internasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073098', 'Sekolah Tinggi Ilmu Ekonomi Nu Trate');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073100', 'Sekolah Tinggi Teknik Atlas Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073102', 'Sekolah Tinggi Ilmu Ekonomi Pemnas Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073104', 'STMIK PPKIA Pradnya Paramita');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073105', 'Sekolah Tinggi Teknologi Gempol');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073106', 'Sekolah Tinggi Ilmu Ekonomi Gempol');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073107', 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Tuban');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073108', 'Sekolah Tinggi Ilmu Ekonomi Pemuda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073111', 'Sekolah Tinggi Ilmu Ekonomi Indocakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073112', 'STMIK Kadiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073113', 'Sekolah Tinggi Teknologi Pomosda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073114', 'Sekolah Tinggi Ilmu Ekonomi YAPAN');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073115', 'Sekolah Tinggi Ilmu Ekonomi Yadika Bangil');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073117', 'STMIK Cahaya Surya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073118', 'Sekolah Tinggi Bahasa Asing Cahaya Surya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073122', 'STIKES Surya Mitra Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073123', 'Sekolah Tinggi Ilmu Kesehatan Majapahit');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073125', 'Sekolah Tinggi Ilmu Kesehatan Artha Bodhi Iswara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073126', 'STIKES Bina Sehat PPNI Mojokerto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073127', 'STIKES Insan Cendekia Medika Jombang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073128', 'STIKES Karya Husada Kediri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073129', 'STKIP Bina Insan Mandiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073130', 'STIKES Muhammadiyah Lamongan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073132', 'Sekolah Tinggi Ilmu Kesehatan Hang Tuah Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073133', 'STIKES Katolik St Vincentius A Paulo Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073135', 'STIKES Patria Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073136', 'STIKES Bhakti Mulia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073137', 'STIKES Banyuwangi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073138', 'STIKES Satria Bhakti Nganjuk');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073139', 'Sekolah Tinggi Ilmu Kesehatan Husada Jombang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073140', 'STIKES Dian Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073142', 'STIKES RS Baptis Kediri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073143', 'Sekolah Tinggi Ilmu Kesehatan Maharani');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073144', 'Sekolah Tinggi Ilmu Kesehatan Pemkab Jombang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073145', 'STIKES Widyagama Husada Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073146', 'Sekolah Tinggi Ilmu Kesehatan Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073148', 'STIKES Bahrul Ulum Jombang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073149', 'STIKES Nahdlatul Ulama Tuban');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073150', 'Sekolah Tinggi Ilmu Kesehatan Kepanjen');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073151', 'STIKES Hafshawaty Pesantren Zainul Hasan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073152', 'Sekolah Tinggi Ilmu Kesehatan Kendedes');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073153', 'STIKES Dr. Soebandi Jember');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073154', 'Sekolah Tinggi Ilmu Kesehatan Ngudia Husada Madura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073155', 'STIKES Ganesha Husada Kediri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073156', 'STIKES Widya Cipta Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073158', 'STIKES Insan Cendekia Husada Bojonegoro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073159', 'STIKES Hutama Abdi Husada Tulungagung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073160', 'Sekolah Tinggi Ilmu Kesehatan William Booth');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073162', 'STIKES Bhakti Husada Mulia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073163', 'STIKES Yayasan RS. Dr. Soetomo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073164', 'STIKES Buana Husada Ponorogo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073166', 'STIKES Bhakti Al-Qodiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073167', 'STKIP Al Hikmah Surabaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073168', 'STIKES Karya Putra Bangsa Tulungagung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073169', 'STIKES Muhammadiyah Bojonegoro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073170', 'STKIP Modern Ngawi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073173', 'STIKES Rumah Sakit Anwar Medika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073174', 'STIE Bakti Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073175', 'Sekolah Tinggi Ilmu Kesehatan Harapan Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073176', 'STIKES Arrahma Mandiri Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073177', 'Sekolah Tinggi Kewirausahaan Selamat Pagi Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073178', 'STIKES Panti Waluya Malang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073179', 'Sekolah Tinggi Ilmu Ekonomi KH. Bahaudin Mudhary Madura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073180', 'STIKES Pamenang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073181', 'STIKES Adi Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073182', 'Sekolah Tinggi Teknologi Muhammadiyah AR Fachruddin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073183', 'Sekolah Tinggi Ilmu Kesehatan Nazhatut Thullab Sampang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('073184', 'Sekolah Tinggi Ilmu Kesehatan Rajekwesi Bojonegoro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081001', 'Universitas Mahendradatta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081002', 'Universitas Ngurah Rai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081003', 'Universitas Mahasaraswati Denpasar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081004', 'Universitas Pendidikan Nasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081005', 'Universitas Dwijendra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081006', 'Universitas Tabanan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081007', 'Universitas Warmadewa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081008', 'Universitas Panji Sakti Singaraja');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081009', 'Universitas Hindu Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081010', 'Universitas Muhammadiyah Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081012', 'Universitas Islam Al-azhar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081013', 'Universitas 45 Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081014', 'Universitas Nahdlatul Wathan Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081015', 'Universitas Gunung Rinjani');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081016', 'Universitas Samawa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081017', 'Universitas Nusa Tenggara Barat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081018', 'Universitas Katolik Widya Mandira Kupang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081019', 'Universitas Flores');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081020', 'Universitas Kristen Artha Wacana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081021', 'Universitas Muhammadiyah Kupang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081024', 'Universitas Nusa Lontar Rote');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081025', 'Universitas Nusa Nipa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081026', 'Universitas Teknologi Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081027', 'Universitas Tribuana Kalabahi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081028', 'Universitas Cordova');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081029', 'Universitas Dhyana Pura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081030', 'Universitas Teknologi Sumbawa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081031', 'Universitas Karyadarma Kupang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081032', 'Universitas Nahdlatul Ulama Nusa Tenggara Barat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081033', 'Universitas San Pedro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081034', 'Universitas Kristen Wira Wacana Sumba');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081035', 'Universitas Hamzanwadi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081036', 'Universitas Persatuan Guru 1945 NTT');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081037', 'Universitas Aryasatya Deo Muri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081038', 'Universitas Qamarul Huda Badaruddin Bagu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081039', 'Universitas Bali Dwipa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081040', 'Universitas Bumigora');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081041', 'Universitas Citra Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081042', 'Universitas Katolik Indonesia Santu Paulus Ruteng');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081043', 'Universitas Triatma Mulya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081044', 'Universitas Teknologi Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081045', 'Universitas Pendidikan Mandalika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('081046', 'Universitas Bali Internasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('082001', 'IKIP Saraswati');
INSERT INTO `mas_perguruan_tinggi` VALUES ('082002', 'IKIP PGRI Bali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('082003', 'IKIP Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('082004', 'IKIP Muhammadiyah Maumere');
INSERT INTO `mas_perguruan_tinggi` VALUES ('082005', 'Institut Keguruan dan Teknologi Larantuka');
INSERT INTO `mas_perguruan_tinggi` VALUES ('082006', 'Institut Ilmu Sosial dan Ilmu Budaya Samawa Rea');
INSERT INTO `mas_perguruan_tinggi` VALUES ('082007', 'Institut Ilmu Kesehatan Medika Persada Bali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('082008', 'Institut Pendidikan Nusantara Global');
INSERT INTO `mas_perguruan_tinggi` VALUES ('082009', 'Institut Teknologi dan Kesehatan Bali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('082010', 'Institut Teknologi dan Bisnis STIKOM Bali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('082011', 'Institut  Sains dan Teknologi Nahdlatul Ulama Bali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('082013', 'Institut Pariwisata dan Bisnis Internasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083001', 'Sekolah Tinggi Ilmu Administrasi Denpasar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083002', 'Sekolah Tinggi Ilmu Manajemen Indonesia Handayani');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083003', 'Sekolah Tinggi Ilmu Sosial Politik Wira Bhakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083004', 'STKIP Agama Hindu Singaraja');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083005', 'STISIP Margarana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083006', 'STKIP Agama Hindu Amlapura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083007', 'Sekolah Tinggi Manajemen Taman Pendidikan 45');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083008', 'Sekolah Tinggi Ilmu Ekonomi Satya Dharma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083010', 'STIE Bali Internasional Institute of Tourism Management');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083012', 'STKIP Bima');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083014', 'Sekolah Tinggi Ilmu Administrasi Muhammadiyah Selong');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083015', 'Sekolah Tinggi Ilmu Sosial Dan Politik Mbojo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083016', 'Sekolah Tinggi Ilmu Ekonomi 45 Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083017', 'Sekolah Tinggi Ilmu Hukum Muhammadiyah Bima');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083018', 'Sekolah Tinggi Ilmu Administrasi Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083020', 'Sekolah Tinggi Ilmu Ekonomi Nasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083021', 'Sekolah Tinggi Ilmu Ekonomi Yapis');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083022', 'Sekolah Tinggi Ilmu Kesehatan Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083023', 'Sekolah Tinggi Filsafat Katolik Ledalero');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083025', 'Sekolah Tinggi Ilmu Manajemen Kupang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083027', 'Sekolah Tinggi Manajemen Informatika Komputer Uyelindo Kupang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083028', 'Sekolah Tinggi Ilmu Ekonomi Oemathonis');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083029', 'Sekolah Tinggi Pembangunan Masyarakat Santa Ursula');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083030', 'STMIK - STIKOM');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083031', 'Sekolah Tinggi Bahasa Asing Cakrawala Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083034', 'Sekolah Tinggi Ilmu Ekonomi Bima');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083035', 'Sekolah Tinggi Bahasa Asing Mentari Kupang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083036', 'STMIK Bandung Bali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083037', 'Sekolah Tinggi Ilmu Ekonomi Putra Timor');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083040', 'Sekolah Tinggi Ilmu Sosial Dan Politik Fajar Timur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083041', 'STMIK Lombok');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083043', 'Sekolah Tinggi Ilmu Ekonomi AMM');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083044', 'STIMIK Kupang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083045', 'Sekolah Tinggi Teknik Lingkungan Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083046', 'STMIK Denpasar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083047', 'STIKES Yarsi Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083048', 'STMIK Syaikh Zainuddin Nahdlatul Wathan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083050', 'STIKES Bina Usada Bali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083051', 'STKIP Taman Siswa Bima');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083052', 'Sekolah Tinggi Pariwisata Bali Internasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083053', 'Sekolah Tinggi Informatika Komputer Artha Buana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083054', 'STIKES Wira Medika Bali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083056', 'Sekolah Tinggi Manajemen Informatika dan Komputer STIKOM Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083058', 'Sekolah Tinggi Pariwisata Triatma Jaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083062', 'STKIP Yapis Dompu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083063', 'STKIP Suar Bangli');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083064', 'Sekolah Tinggi Teknik Bima');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083065', 'STIKES Advaita Medika Tabanan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083066', 'STKIP Al Amin Dompu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083067', 'STIKES Hamzar Memben Lombok Timur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083068', 'STIKES Yahya Bima');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083069', 'STIKES Maranatha Kupang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083070', 'Sekolah Tinggi Ilmu Kesehatan Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083071', 'STKIP Hamzar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083072', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Citra Bakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083074', 'STKIP Nusa Bunga Floresta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083075', 'Sekolah Tinggi Desain Bali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083076', 'STKIP Paracendekia N W Sumbawa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083077', 'STKIP Soe');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083079', 'STKIP Sinar Pancasila');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083080', 'STMIK Primakara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083082', 'STKIP Weetebula');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083084', 'STKIP Nusa Timor');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083085', 'STKIP Simbiosis');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083086', 'STIKES Panca Atma Jaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083087', 'STKIP Muhammadiyah Kalabahi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083088', 'Sekolah Tinggi Manajemen Informatika Komputer Stella Maris Sumba');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083089', 'Sekolah Tinggi Ilmu Kesehatan Buleleng');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083091', 'STKIP Harapan Bima');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083092', 'Sekolah Tinggi Ilmu Ekonomi Karya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083094', 'STIKES Griya Husada Sumbawa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083095', 'Sekolah Tinggi Farmasi Mahaganesha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083096', 'Sekolah Tinggi Manajemen Informatika Komputer Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083099', 'Sekolah Tinggi Pariwisata Mataram');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083101', 'Sekolah Tinggi Ilmu Hukum Cendana Wangi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083102', 'Sekolah Tinggi Ilmu Hukum Prof. Dr. Yohanes Usfunan, SH, MH');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083103', 'Sekolah Tinggi Pariwisata  Soromandi Bima');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083104', 'STIKES Rana Wijaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083106', 'Sekolah Tinggi Bisnis Putra Harapan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083107', 'STIKES Kusuma Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083108', 'Sekolah Tinggi Ilmu Kesehatan Bali Wisnu Dharma Denpasar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083109', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Surya Kasih');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083110', 'Sekolah Tinggi Ilmu Kesehatan Kesdam IX/Udayana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('083111', 'Sekolah Tinggi Pertanian Flores Bajawa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091002', 'Universitas Muslim Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091003', 'Universitas Kristen Indonesia Paulus');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091004', 'Universitas Muhammadiyah Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091005', 'Universitas Kristen Indonesia Tomohon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091006', 'Universitas Dayanu Ikhsanuddin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091007', 'Universitas Klabat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091008', 'Universitas Pepabri Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091009', 'Universitas Atma Jaya Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091011', 'Universitas Muhammadiyah Palu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091012', 'Universitas Sintuwu Maroso Poso');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091013', 'Universitas Sawerigading Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091014', 'Universitas Dumoga Kotamobagu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091015', 'Universitas Sulawesi Tenggara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091017', 'Universitas Pancasakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091018', 'Universitas Alkhairaat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091019', 'Universitas Cokroaminoto Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091020', 'Universitas Kristen Indonesia Toraja');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091021', 'Universitas Lakidende Unaaha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091022', 'Universitas Nusantara Manado');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091023', 'Universitas Andi Djemma Palopo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091024', 'Universitas Muhammadiyah Pare-pare');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091025', 'Universitas Muhammadiyah Luwuk Banggai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091026', 'Universitas Tompotika Luwuk Banggai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091027', 'Universitas Sari Putra Indonesia Tomohon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091028', 'Universitas Islam Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091029', 'Universitas Katolik De La Salle');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091030', 'Universitas Pembangunan Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091031', 'Universitas Gorontalo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091032', 'Universitas Muhammadiyah Buton');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091033', 'Universitas Ichsan Gorontalo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091034', 'Universitas Indonesia Timur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091035', 'Universitas Madako Tolitoli');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091036', 'Universitas Muhammadiyah Kendari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091037', 'Universitas Al Asyariah Mandar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091039', 'Universitas Cokroaminoto Palopo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091040', 'Universitas Teknologi Sulawesi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091041', 'Universitas Teknologi Sulawesi Utara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091042', 'Universitas Kristen Tentena');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091044', 'Universitas Muhammadiyah Gorontalo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091045', 'Universitas Fajar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091046', 'Universitas Tomakaka');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091047', 'Universitas Patria Artha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091048', 'Universitas Pejuang Republik Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091049', 'Universitas Bosowa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091050', 'Universitas Nahdlatul Ulama Sulawesi Tenggara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091051', 'Universitas Karya Dharma Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091052', 'Universitas Prisma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091053', 'Universitas Muslim Maros');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091054', 'Universitas Nahdlatul Ulama Gorontalo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091055', 'Universitas Pohuwato');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091056', 'Universitas Megarezky');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091057', 'Universitas Puangrimaggalatung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091058', 'Universitas Muhammadiyah Sidenreng Rappang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091059', 'Universitas Muhammadiyah Palopo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091060', 'Universitas Trinita');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091061', 'Universitas Muhammadiyah Bulukumba');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091062', 'Universitas Muslim Buton');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091063', 'Universitas Bina Mandiri Gorontalo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('091064', 'Universitas Muhammadiyah Sinjai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('092001', 'Institut Sains Dan Teknologi Pembangunan Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('092002', 'Institut Teknologi Minaesa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('092004', 'Institut Teknologi dan Kesehatan Avicenna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('092005', 'Institut Bisnis dan Keuangan Nitro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('092006', 'Institut Teknologi dan Bisnis Kalla');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093001', 'STKIP Muhammadiyah Bone');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093002', 'STKIP Muhammadiyah Bulukumba');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093003', 'STKIP Muhammadiyah Enrekang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093005', 'Sekolah Tinggi Ilmu Administrasi Al Gazali Barru');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093006', 'STISIP 17-8-1945 Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093008', 'STKIP Cokroaminoto Pinrang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093009', 'STKIP YPUP Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093010', 'STKIP Muhammadiyah Barru');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093011', 'Sekolah Tinggi Ilmu Administrasi Al Gazali Soppeng');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093015', 'Sekolah Tinggi Filsafat Jaffray Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093016', 'Sekolah Tinggi Ilmu Ekonomi Indonesia Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093017', 'STISIP Veteran Palopo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093018', 'STKIP Veteran Sidrap');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093019', 'Sekolah Tinggi Ilmu Ekonomi YPUP Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093020', 'Sekolah Tinggi Ilmu Administrasi YAPPI Makassa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093021', 'STISIP Merdeka Manado');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093023', 'STITEK Dharma Yadi Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093027', 'Sekolah Tinggi Ilmu Ekonomi Makassar Bongaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093028', 'Sekolah Tinggi Ilmu Administrasi Pancamarga Palu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093029', 'STISIP Panca Bhakti Palu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093030', 'Sekolah Tinggi Ilmu Ekonomi Panca Bhakti Palu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093032', 'Sekolah Tinggi Filsafat Seminari Pineleng');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093033', 'Sekolah Tinggi Ilmu Ekonomi Amsir Pare-pare');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093034', 'STKIP Yapti Jeneponto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093035', 'Sekolah Tinggi Ilmu Kesejahteraan Sosial Manado');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093036', 'Sekolah Tinggi Ilmu Komunikasi Manado');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093037', 'STKIP Pembangunan Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093038', 'Sekolah Tinggi Ilmu Ekonomi Pembangunan Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093039', 'Sekolah Tinggi Ilmu Ekonomi Sulawesi Utara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093041', 'STKIP Yapim Maros');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093043', 'Sekolah Tinggi Ilmu Ekonomi Bajiminasa Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093044', 'STIKS Tamalanrea Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093045', 'STIM LPI Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093046', 'Sekolah Tinggi Ilmu Manajemen Indonesia YAPMI');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093048', 'Sekolah Tinggi Ilmu Ekonomi LPI Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093049', 'Sekolah Tinggi Ilmu Pertanian Wuna Raha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093050', 'Sekolah Tinggi Ilmu Ekonomi Yapman Majene');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093051', 'Sekolah Tinggi Ilmu Ekonomi Eben Haezer Manado');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093052', 'STMIK Dipanegara Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093053', 'Sekolah Tinggi Ilmu Ekonomi Nusantara Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093054', 'Sekolah Tinggi Ilmu Ekonomi El Fatah Manado');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093055', 'Sekolah Tinggi Ilmu Pertanian Mujahidin Toli-toli');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093057', 'STKIP PGRI Manado');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093058', 'STISIP Petta Baringeng Soppeng');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093059', 'Sekolah Tinggi Ilmu Ekonomi Dharma Barata Kendari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093060', 'Sekolah Tinggi Ilmu Ekonomi Enam Enam Kendari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093061', 'Sekolah Tinggi Ilmu Ekonomi Yapti Jeneponto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093062', 'Sekolah Tinggi Ilmu Hukum Damarica Palopo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093063', 'Sekolah Tinggi Ilmu Pertanian Kendari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093064', 'Sekolah Tinggi Ilmu Ekonomi Amkop Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093066', 'Sekolah Tinggi Ilmu Kesehatan Tamalatea Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093068', 'Sekolah Tinggi Ilmu Ekonomi Pioner Manado');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093069', 'STMIK Handayani Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093072', 'Sekolah Tinggi Ilmu Manajemen Yapim Maros');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093074', 'Sekolah Tinggi Theologia Intim Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093076', 'Sekolah Tinggi Ilmu Ekonomi Rizky');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093077', 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Mamuju');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093078', 'Sekolah Tinggi Ilmu Ekonomi Petra');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093079', 'Sekolah Tinggi Ilmu Ekonomi Swadaya Manado');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093080', 'Sekolah Tinggi Ilmu Kesehatan Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093081', 'Sekolah Tinggi Ilmu Ekonomi Makassar Maju');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093082', 'Sekolah Tinggi Ilmu Ekonomi Tri Dharma Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093083', 'Sekolah Tinggi Ilmu Administrasi Bina Taruna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093084', 'STIE Nobel Indonesia Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093085', 'Sekolah Tinggi Ilmu Ekonomi Pariwisata');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093087', 'Sekolah Tinggi Ilmu Farmasi dan  Pengetahuan Alam Pelita Mas Palu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093088', 'Sekolah Tinggi Ilmu Kesehatan Indonesia Jaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093089', 'Sekolah Tinggi Ilmu Bahasa Asing Bumi Beringin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093090', 'Sekolah Tinggi Ilmu Hukum Pengayoman');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093091', 'Sekolah Tinggi Ilmu Manajemen Publik Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093092', 'STITEK Bina Taruna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093093', 'STMIK Kharisma Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093094', 'Sekolah Tinggi Manajemen Informatika dan Komputer Ichsan Gorontalo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093095', 'Sekolah Tinggi Ilmu Ekonomi Ichsan Pohuwato');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093097', 'STKIP Andi Mattappa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093098', 'Sekolah Tinggi Ilmu Hukum Lamaddukelleng');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093099', 'Sekolah Tinggi Ilmu Ekonomi Lamaddukelleng');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093100', 'Sekolah Tinggi Ilmu Ekonomi Wira Bhakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093101', 'Sekolah Tinggi Teknik Baramuli');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093102', 'Sekolah Tinggi Ilmu Ekonomi Widya Darma Kotamobagu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093103', 'STMIK Bina Mulia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093104', 'Sekolah Tinggi Ilmu Ekonomi Lamappapoleonro Soppeng');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093106', 'Sekolah Tinggi Ilmu Administrasi Pembangunan Palu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093107', 'Sekolah Tinggi Ilmu Hukum Amsir');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093108', 'Sekolah Tinggi Ilmu Ekonomi Yapi Bone');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093109', 'Sekolah Tinggi Ilmu Pertanian Yapi Bone');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093110', 'Sekolah Tinggi Ilmu Administrasi Puangrimaggalatung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093111', 'STMIK Adhi Guna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093112', 'Sekolah Tinggi Ilmu Kesehatan Avicenna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093113', 'Sekolah Tinggi Ilmu Keperawatan Famika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093114', 'STIM Lasharan Jaya Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093115', 'Sekolah Tinggi Teknologi Kelautan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093116', 'STMIK Parnaraya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093117', 'STISIP Swadaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093118', 'Sekolah Tinggi Ilmu Hukum Cokroaminoto');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093120', 'STISIPOL Mujahidin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093121', 'Sekolah Tinggi Ilmu Ekonomi Mujahidin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093122', 'STIMIK Bina Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093123', 'Sekolah Tinggi Ilmu Pertanian Muhammadiyah Sinjai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093124', 'Sekolah Tinggi Teknologi Mekongga');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093125', 'STMIK Catur Sakti Kendari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093126', 'STIKES Gema Insan Akademik');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093127', 'Sekolah Tinggi Ilmu Pertanian Yapim Maros');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093128', 'STISIP Muhammadiyah Sinjai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093129', 'STIMED Nusa Palapa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093130', 'Sekolah Tinggi Pariwisata Tamalatea Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093132', 'STMIK Multicom Bolaan Mongondow');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093133', 'Sekolah Tinggi Ilmu Pariwisata Manado');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093134', 'Sekolah Tinggi Ilmu Kesehatan Yapika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093135', 'Sekolah Tinggi Manajemen Informatika Komputer Lamappapoleonro Soppeng');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093137', 'Sekolah Tinggi Perikanan Dan Kelautan Palu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093138', 'Sekolah Tinggi Ilmu Kesehatan Nani Hasanuddin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093139', 'Sekolah Tinggi Ilmu Administrasi Abdul Haris');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093140', 'Sekolah Tinggi Ilmu Kesehatan Bina Bangsa Majene');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093141', 'Sekolah Tinggi Ilmu Kesehatan Baramuli');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093142', 'Sekolah Tinggi Teknologi Nusantara Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093143', 'Sekolah Tinggi Ilmu Farmasi Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093144', 'Sekolah Tinggi Ilmu Kesehatan Tana Toraja');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093145', 'Sekolah Tinggi Ilmu Kesehatan Mega Rezky');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093147', 'Sekolah Tinggi Ilmu Kesehatan Mandala Waluya Kendari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093148', 'STIKES Tanawali Takalar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093149', 'STIKES Bhakti Pertiwi Luwu Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093150', 'STIKES Bina Generasi Polewali Mandar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093151', 'STIKES Kurnia Jaya Persada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093152', 'STIKES Panakkukang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093154', 'STKIP Darud Da wah Wal Irsyad Pinrang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093155', 'STIKES Lakipadada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093156', 'STIKES Graha Edukasi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093157', 'Sekolah Tinggi Ilmu Kesehatan Stella Maris Makasar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093158', 'STIKES Nusantara Lasinrang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093159', 'STIKES RSU Daya Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093160', 'Sekolah Tinggi Ilmu Komputer Rajawali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093161', 'STIKES Marendeng Majene');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093163', 'Sekolah Tinggi Ilmu Kesehatan St Fatimah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093164', 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Manado');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093166', 'STMIK AKBA');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093168', 'STISIP Bina Generasi Polewali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093169', 'STIKES Andini Persada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093170', 'Sekolah Tinggi Ilmu Kesehatan Widya Nusantara Palu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093171', 'STIKES Amanah Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093172', 'Sekolah Tinggi Ilmu Kesehatan Panrita Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093174', 'STIKES Mega Buana Palopo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093175', 'STIKES Muhammadiyah Sidrap');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093176', 'STIKES IST Buton');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093177', 'STMIK Profesional Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093178', 'STIKES Bataraguru Soroaka');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093179', 'Sekolah Tinggi Ilmu Hukum dan HAM');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093180', 'STIKES Graha Medika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093181', 'Sekolah Tinggi Ilmu Kesehatan Karya Kesehatan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093182', 'Sekolah Tinggi Ilmu Kesehatan Husada Mandiri Poso');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093183', 'STIKES Nusantara Jaya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093186', 'STIKES Bakti Nusantara Gorontalo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093187', 'Sekolah Tinggi Bisnis dan Manajemen Dua Saudara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093188', 'STKIP Mega Rezky');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093189', 'Sekolah Tinggi Manajemen Informatika dan Komputer Bina Adinata');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093190', 'Sekolah Tinggi Ilmu Kesehatan Pelamonia Kesdam VII Wirabuana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093192', 'Sekolah Tinggi Ilmu Kesehatan Budi Mulia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093193', 'STMIK Hasan Sulur Wonomulyo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093194', 'STKIP Pelita Nusantara Buton');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093195', 'Sekolah Tinggi Ilmu Hukum dan Politik Palu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093196', 'Sekolah Tinggi Ilmu Kesehatan Salewangang Maros');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093198', 'STIK Imanuel Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093199', 'Sekolah Tinggi Ilmu Maritim Makassar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093200', 'Sekolah Tinggi Ilmu Kesehatan Datu Kamanre');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093201', 'STKIP Tomakaka Tiwikrama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093202', 'STKIP Dampal Selatan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093203', 'Sekolah Tinggi Ilmu Kesehatan Trinita');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093204', 'Sekolah Tinggi Ilmu Kesehatan Surifatri Kotamobagu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093205', 'Sekolah Tinggi Ilmu Komputer 22 Januari Kendari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093206', 'STIKES Shinta Jaya Mamuju');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093207', 'STIKES Pelita Ibu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093208', 'Sekolah Tinggi Ilmu Kesehatan Gunung Sari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093209', 'Sekolah Tinggi Ilmu Ekonomi Ichsan Sidenreng Rappang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('093210', 'Institut Kesehatan dan Bisnis St. Fatimah Mamuju');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101001', 'Universitas Bung Hatta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101002', 'Universitas Muhammadiyah Sumatera Barat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101003', 'Universitas Ekasakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101004', 'Universitas Mahaputra Muhammad Yamin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101005', 'Universitas Tamansiswa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101006', 'Universitas Islam Riau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101007', 'Universitas Lancang Kuning');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101008', 'Universitas Batanghari Jambi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101009', 'Universitas Baiturrahmah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101010', 'Universitas Batam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101011', 'Universitas Internasional Batam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101012', 'Universitas Putra Indonesia Yptk Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101013', 'Universitas Abdurrab');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101014', 'Universitas Riau Kepulauan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101016', 'Universitas Muara Bungo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101017', 'Universitas Islam Indragiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101018', 'Universitas Muhammadiyah Riau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101019', 'Universitas Putera Batam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101020', 'Universitas Karimun');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101021', 'Universitas Pasir Pengaraian');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101023', 'Universitas Islam Kuantan Singingi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101024', 'Universitas Dharma Andalas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101025', 'Universitas Universal');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101026', 'Universitas Mohammad Natsir Bukittinggi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101027', 'Universitas Dharmas Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101028', 'Universitas Nahdlatul Ulama Sumatera Barat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101029', 'Universitas Pahlawan Tuanku Tambusai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101030', 'Universitas Adiwangsa Jambi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101031', 'Universitas Muhammadiyah Jambi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101032', 'Universitas Fort De Kock');
INSERT INTO `mas_perguruan_tinggi` VALUES ('101033', 'Universitas Ibnu Sina');
INSERT INTO `mas_perguruan_tinggi` VALUES ('102002', 'Institut Teknologi Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('102003', 'Institut Teknologi Batam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('102004', 'Institut Kesehatan Prima Nusantara Bukittinggi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('102005', 'Institut Bisnis Dan Teknologi Pelita Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103001', 'STKIP Yayasan Abdi Pendidikan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103002', 'STKIP Ahlussunnah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103003', 'STKIP PGRI Sumatera Barat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103004', 'STKIP YDB Lubuk Alung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103006', 'Sekolah Tinggi Ilmu Hukum Lubuk Sikaping');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103008', 'Sekolah Tinggi Ilmu Ekonomi Haji Agus Salim');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103009', 'Sekolah Tinggi Ilmu Ekonomi KBP');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103010', 'Sekolah Tinggi Ilmu Ekonomi Pasaman');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103011', 'Sekolah Tinggi Ilmu Ekonomi Sumbar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103012', 'Sekolah Tinggi Ilmu Administrasi Adabiah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103013', 'Sekolah Tinggi Bahasa Asing Prayoga');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103014', 'Sekolah Tinggi Ilmu Administrasi Lppn');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103015', 'STISIP Imam Bonjol');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103016', 'STISIP Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103017', 'Sekolah Tinggi Teknologi Industri Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103018', 'Sekolah Tinggi Ilmu Ekonomi Perdagangan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103020', 'STKIP YPM Bangko');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103021', 'STIP Graha Karya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103022', 'STKIP Muhammadiyah Sungai Penuh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103027', 'Sekolah Tinggi Ilmu Ekonomi Jambi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103029', 'Sekolah Tinggi Ilmu Ekonomi Purna Graha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103030', 'STMIK Nurdin Hamzah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103031', 'STMIK Amik Riau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103032', 'Sekolah Tinggi Ilmu Ekonomi Riau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103033', 'Sekolah Tinggi Farmasi Indonesia Perintis Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103035', 'STISIPOL Raja Haji');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103036', 'Sekolah Tinggi Ilmu Ekonomi Indragiri Rengat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103037', 'Sekolah Tinggi Ilmu Administrasi Lancang Kuning');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103038', 'Sekolah Tinggi Ilmu Ekonomi Bangkinang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103039', 'Sekolah Tinggi Ilmu Administrasi Pagaruyung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103040', 'Sekolah Tinggi Ilmu Hukum Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103041', 'Sekolah Tinggi Ilmu Kesehatan Harapan Ibu Jambi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103042', 'Sekolah Tinggi Ilmu Ekonomi Perbankan Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103043', 'Sekolah Tinggi Ilmu Ekonomi Pagaruyung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103044', 'Sekolah Tinggi Ilmu Ekonomi Sakti Alam Kerinci');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103045', 'Sekolah Tinggi Ilmu Ekonomi Dharma Putra Pekanbaru');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103046', 'STISIP Persada Bunda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103047', 'Sekolah Tinggi Ilmu Ekonomi Persada Bunda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103048', 'STIA Bina Nusantara Mandiri Pariaman');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103049', 'STIE Graha Karya Muara Bulian');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103050', 'Sekolah Tinggi Ilmu Ekonomi Bentara Persada Batam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103054', 'STMIK Indonesia Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103056', 'Sekolah Tinggi Ilmu Komputer Dinamika Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103057', 'STMIK Jaya Nusa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103058', 'Sekolah Tinggi Ilmu Farmasi Riau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103059', 'STMIK Putera Batam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103060', 'STKIP Aisyiyah Riau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103061', 'Sekolah Tinggi Ilmu Kesehatan Hang Tuah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103063', 'STIPER Sawahlunto Sijunjung');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103064', 'Sekolah Tinggi Ilmu Kesehatan Ceria Buana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103066', 'Sekolah Tinggi Pariwisata Riau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103067', 'Sekolah Tinggi Teknologi Nasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103068', 'Sekolah Tinggi Teknologi Dumai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103069', 'Sekolah Tinggi Ilmu Administrasi Setih Setio');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103071', 'Sekolah Tinggi Teknologi Pekanbaru');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103072', 'Sekolah Tinggi Bahasa Asing Persada Bunda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103074', 'STISIP Nurdin Hamzah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103076', 'Sekolah Tinggi Ilmu Kesehatan Alifah Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103077', 'Sekolah Tinggi Ilmu Kesehatan Baiturrahim');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103078', 'STIA Nusantara Sakti Sungai Penuh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103079', 'STMIK Dumai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103080', 'Sekolah Tinggi Teknologi Payakumbuh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103081', 'Sekolah Tinggi Ilmu Farmasi Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103082', 'STIKES Mercubaktijaya Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103084', 'STIKES Perintis Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103085', 'STIKES Piala Sakti Pariaman');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103086', 'STIKES Tengku Maharatu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103087', 'Sekolah Tinggi Ilmu Hukum Persada Bunda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103088', 'Sekolah Tinggi Ilmu Kesehatan Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103089', 'Sekolah Tinggi Ilmu Kesehatan YPAK Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103090', 'STMIK Dharmapala Riau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103093', 'STIKES Hang Tuah Tanjung Pinang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103096', 'Sekolah Tinggi Ilmu Kesehatan Payung Negeri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103098', 'STIKES Yarsi Sumatera Barat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103099', 'STIE Pembangunan Tanjungpinang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103101', 'Sekolah Tinggi Ilmu Ekonomi Cakrawala');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103102', 'Sekolah Tinggi Teknologi Indonesia Tanjung Pinang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103103', 'Sekolah Tinggi Ilmu Kesehatan Syedza Saintika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103104', 'STIKES Ranah Minang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103105', 'Sekolah Tinggi Teknologi Indragiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103106', 'Sekolah Tinggi Ilmu Ekonomi El Hakim');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103107', 'STKIP Al Azhar Diniyyah Jambi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103109', 'Sekolah Tinggi Ilmu Kesehatan Karimun');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103110', 'STIKES Dharma Landbouw');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103111', 'STBA Haji Agus Salim');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103112', 'STKIP Adzkia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103113', 'STKIP Widyaswara Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103114', 'STIE Widyaswara Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103115', 'STIKES Awal Bros Batam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103116', 'STIKES Pekanbaru Medical Center');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103117', 'STKIP Insan Madani Airmolek');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103118', 'STIKES Al-Insyirah Pekanbaru');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103119', 'STKIP Nasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103120', 'STIKES Nan Tongga');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103122', 'STIKES Mitra Bunda Persada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103123', 'STMIK Hang Tuah Pekanbaru');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103126', 'Sekolah Tinggi Pertanian Haji Agus Salim');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103127', 'Sekolah Tinggi Ilmu Kesehatan Merangin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103131', 'STIE Prakarti Mulya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103133', 'Sekolah Tinggi Ilmu Kesehatan (STIKES) Lenggogeni Padang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103134', 'STIE Mahaputra Riau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103135', 'STISIP Bunda Tanah Melayu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103136', 'Sekolah Tinggi Ilmu Komputer Muhammadiyah Batam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103137', 'STIA Indragiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103138', 'STKIP Pesisir Selatan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103139', 'STIE Nagoya Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103140', 'STIH Putri Maharaja');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103141', 'STKIP Rokania');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103142', 'STKIP Muhammadiyah Muara Bungo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103143', 'STMIK Indragiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103144', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Meranti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103145', 'Sekolah Tinggi Manajemen Informatika dan Komputer Gici');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103146', 'Sekolah Tinggi Teknologi Pelalawan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103147', 'Sekolah Tinggi Ilmu Ekonomi Galileo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103148', 'STIKES Awal Bros Pekanbaru');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103149', 'Sekolah Tinggi Ilmu Hukum Riau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103150', 'Sekolah Tinggi Ilmu Hukum YPM');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103151', 'STIE Harapan Duri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103152', 'Sekolah Tinggi Teknik Nusantara Mandiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103153', 'STIE YA Bangko');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103154', 'Sekolah Tinggi Ilmu Ekonomi Tuah Negeri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103155', 'Sekolah Tinggi Ilmu Kesehatan Sumatera Barat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103156', 'Sekolah Tinggi Ilmu Kesehatan Har-Kausyar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('103157', ' Sekolah Tinggi Ilmu Kesehatan Keluarga Bunda Jambi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111001', 'Universitas 17 Agustus 1945 Samarinda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111002', 'Universitas Achmad Yani Banjarmasin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111003', 'Universitas Islam Kalimantan Muhammad Arsyad Al Banjari Banjarmasin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111004', 'Universitas Panca Bhakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111005', 'Universitas Tridharma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111006', 'Universitas Balikpapan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111007', 'Universitas Widya Gama Mahakam Samarinda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111008', 'Universitas Kutai Kartanegara Tenggarong');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111009', 'Universitas Muhammadiyah Palangka Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111010', 'Universitas Kristen Palangka Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111012', 'Universitas Trunajaya Bontang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111013', 'Universitas Muhammadiyah Pontianak');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111014', 'Universitas Kapuas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111015', 'Universitas PGRI Palangka Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111017', 'Universitas Antakusuma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111018', 'Universitas Darwan Ali');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111019', 'Universitas Kaltara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111020', 'Universitas Nahdlatul Ulama Kalimantan Timur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111021', 'Universitas Nahdlatul Ulama Kalimantan Selatan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111022', 'Universitas Nahdlatul Ulama Kalimantan Barat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111023', 'Universitas Muhammadiyah Banjarmasin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111024', 'Universitas Muhammadiyah Kalimantan Timur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111025', 'Universitas Sari Mulia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111026', 'Universitas Mulia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111027', 'Universitas Widya Dharma Pontianak');
INSERT INTO `mas_perguruan_tinggi` VALUES ('111028', 'Universitas Oso');
INSERT INTO `mas_perguruan_tinggi` VALUES ('112001', 'IKIP PGRI Kaltim');
INSERT INTO `mas_perguruan_tinggi` VALUES ('112002', 'IKIP PGRI Pontianak');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113001', 'Sekolah Tinggi Ilmu Ekonomi Indonesia Banjarmasin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113002', 'STIA Bina Banua Banjarmasin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113003', 'STIMI Banjarmasin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113004', 'Sekolah Tinggi Ilmu Hukum Sultan Adam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113005', 'Sekolah Tinggi Ilmu Ekonomi Nasional Banjarmasin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113006', 'STKIP PGRI Banjarmasin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113007', 'Sekolah Tinggi Ilmu Ekonomi Pontianak');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113009', 'Sekolah Tinggi Ilmu Hukum Soelthan M Tsjafioeddin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113010', 'Sekolah Tinggi Ilmu Ekonomi Boedi Oetomo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113012', 'Sekolah Tinggi Ilmu Ekonomi Balikpapan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113013', 'Sekolah Tinggi Ilmu Komunikasi Mahakam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113014', 'STMIK Samarinda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113016', 'Sekolah Tinggi Ilmu Ekonomi Palangka Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113017', 'Sekolah Tinggi Ilmu Hukum Tambun Bungai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113018', 'Sekolah Tinggi Ilmu Ekonomi Sampit');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113019', 'Sekolah Tinggi Ilmu Hukum Habaring Hurung Sampit');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113020', 'STKIP Muhammadiyah Sampit');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113021', 'STIMI Samarinda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113022', 'Sekolah Tinggi Ilmu Ekonomi Pancasetia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113023', 'Sekolah Tinggi Ilmu Ekonomi Bulungan Tarakan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113025', 'Sekolah Tinggi Ilmu Ekonomi Samarinda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113026', 'Sekolah Tinggi Ilmu Ekonomi Kuala Kapuas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113027', 'STIE Muhammadiyah Tanjung Redeb');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113029', 'STMIK Pontianak');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113030', 'STMIK Widya Cipta Dharma');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113032', 'Sekolah Tinggi Ilmu Ekonomi Nasional Samarinda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113034', 'Sekolah Tinggi Ilmu Ekonomi Indonesia Pontianak');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113035', 'Sekolah Tinggi Ilmu Administrasi Amuntai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113036', 'Sekolah Tinggi Ilmu Ekonomi Muara Teweh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113039', 'STIPER Muhammadiyah Tanah Grogot');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113041', 'Sekolah Tinggi Teknologi Industri Bontang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113045', 'Sekolah Tinggi Ilmu Ekonomi Dahani Dahanai Buntok');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113046', 'Sekolah Tinggi Pertanian Kutai Timur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113047', 'Sekolah Tinggi Pertanian Panca Bhakti');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113048', 'STMIK Banjarbaru');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113049', 'Sekolah Tinggi Teknologi Migas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113051', 'Sekolah Tinggi Ilmu Kesehatan Cahaya Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113053', 'Sekolah Tinggi Ilmu Pertanian Berau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113054', 'Sekolah Tinggi Ilmu Pertanian Amuntai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113055', 'STMIK Indonesia Banjarmasin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113056', 'Sekolah Tinggi Teknologi Bontang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113057', 'Sekolah Tinggi Ilmu Administrasi Tabalong');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113058', 'Sekolah Tinggi Ilmu Ekonomi Tenggarong');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113059', 'STIE YBPK Palangka Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113060', 'STIK Muhammadiyah Pontianak');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113061', 'Sekolah Tinggi Ilmu Ekonomi Widya Praja');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113062', 'STKIP Persada Khatulistiwa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113063', 'STIKES Suaka Insan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113064', 'Sekolah Tinggi Ilmu Pendidikan Bunga Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113065', 'Sekolah Tinggi Ilmu Ekonomi Mulia Singkawang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113066', 'STMIK Palangka Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113067', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Melawi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113070', 'STMIK Sentra Pendidikan Bisnis');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113071', 'STIKES Husada Borneo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113072', 'STIKES Wiyata Husada Samarinda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113073', 'STIKES Darul Azhar Batulicin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113074', 'Sekolah Tinggi Ilmu Hukum Kuala Kapuas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113075', 'STMIK PPKIA Tarakanita Rahmawati Tarakan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113076', 'STIE Madani Balikpapan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113078', 'STMIK Borneo Internasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113079', 'Sekolah Tinggi Ilmu Ekonomi Nusantara Sangatta');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113080', 'STKIP Paris Barantai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113081', 'STIKES Kapuas Raya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113083', 'STIKES Yarsi Pontianak');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113084', 'STIKES Eka Harap');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113085', 'STKIP Singkawang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113086', 'STKIP Pamane Talino');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113087', 'Sekolah Tinggi Ilmu Kesehatan Borneo Lestari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113088', 'Sekolah Tinggi Bahasa Asing Pontianak');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113089', 'STIKES Borneo Cendekia Medika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113090', 'Sekolah Tinggi Bahasa Harapan Bersama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113091', 'Sekolah Tinggi Ilmu Manajemen Shanti Bhuana');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113092', 'Sekolah Tinggi Ilmu Hukum Awang Long');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113093', 'STKIP Islam Sabilal Muhtadin Banjarmasin');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113094', 'STIKES Dirgahayu Samarinda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113095', 'Sekolah Tinggi Ilmu Kesehatan Samarinda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113096', 'Sekolah Tinggi Ilmu Kesehatan Sambas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113097', 'Sekolah Tinggi Ilmu Kesehatan Intan Martapura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('113098', 'Sekolah Tinggi Ilmu Kesehatan Mutiara Mahakam Samarinda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('114104', 'Institut Teknologi Kesehatan dan Sains Wiyata Husada Samarinda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('121002', 'Universitas Darussalam Ambon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('121003', 'Universitas Kristen Indonesia Maluku');
INSERT INTO `mas_perguruan_tinggi` VALUES ('121004', 'Universitas Nuku');
INSERT INTO `mas_perguruan_tinggi` VALUES ('121005', 'Universitas Muhammadiyah Maluku Utara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('121007', 'Universitas Iqra Buru');
INSERT INTO `mas_perguruan_tinggi` VALUES ('121015', 'Universitas Halmahera');
INSERT INTO `mas_perguruan_tinggi` VALUES ('121017', 'Universitas Bumi Hijrah Tidore');
INSERT INTO `mas_perguruan_tinggi` VALUES ('121018', 'Universitas Pasifik Morotai');
INSERT INTO `mas_perguruan_tinggi` VALUES ('121019', 'Universitas Hein Namotemo');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123008', 'Sekolah Tinggi Ilmu Administrasi Trinitas');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123021', 'Sekolah Tinggi Perikanan Hatta-sjahrir');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123022', 'Sekolah Tinggi Ilmu Administrasi Darul Rachman Tual');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123023', 'STIA Abdul Azis Kataloka');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123026', 'Sekolah Tinggi Ilmu Ekonomi Umel');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123028', 'Sekolah Tinggi Ilmu-Ilmu Sosial (STIS) Tual');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123031', 'Sekolah Tinggi Ilmu Administrasi Langgur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123032', 'Sekolah Tinggi Ilmu Sosial Ilmu Politik Kebangsaan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123033', 'Sekolah Tinggi Ilmu Ekonomi Saumlaki');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123034', 'STKIP Kie Raha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123037', 'STKIP Gotong Royong Masohi');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123040', 'Sekolah Tinggi Ilmu Ekonomi Manajemen Rutu Nusa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123045', 'STMIK Tidore Mandiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123046', 'Sekolah Tinggi Ilmu Administrasi Said Perintah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123051', 'Sekolah Tinggi Pertanian Labuha');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123052', 'Sekolah Tinggi Ilmu Kesehatan Makariwo Halmahera');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123053', 'Sekolah Tinggi Ilmu Administrasi Saumlaki');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123055', 'Sekolah Tinggi Pertanian Kewirausahaan Banau');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123056', 'STKIP Hatta Sjahrir');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123058', 'STIKES Maluku Husada');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123059', 'STIKES Pasapua Ambon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123062', 'Sekolah Tinggi Ilmu Komputer Ambon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123065', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Saumlaki');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123067', 'Sekolah Tinggi Ilmu Hukum Muhammad Thaha Tual');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123068', 'STKIP Ita Wotu Nusa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123069', 'STKIP Hunimua');
INSERT INTO `mas_perguruan_tinggi` VALUES ('123070', 'Sekolah Tinggi Ilmu Maritim Indonesia Ternate');
INSERT INTO `mas_perguruan_tinggi` VALUES ('131001', 'Universitas Jabal Ghafur');
INSERT INTO `mas_perguruan_tinggi` VALUES ('131002', 'Universitas Iskandar Muda');
INSERT INTO `mas_perguruan_tinggi` VALUES ('131003', 'Universitas Abulyatama');
INSERT INTO `mas_perguruan_tinggi` VALUES ('131004', 'Universitas Muhammadiyah Aceh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('131005', 'Universitas Serambi Mekkah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('131006', 'Universitas Al-Muslim');
INSERT INTO `mas_perguruan_tinggi` VALUES ('131008', 'Universitas Gajah Putih');
INSERT INTO `mas_perguruan_tinggi` VALUES ('131009', 'Universitas Gunung Leuser Aceh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('131010', 'Universitas Ubudiyah Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('131011', 'Universitas Sains Cut Nyak Dhien');
INSERT INTO `mas_perguruan_tinggi` VALUES ('131012', 'Universitas Islam Kebangsaan Indonesia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133001', 'Sekolah Tinggi Ilmu Ekonomi Indonesia Banda Aceh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133002', 'Sekolah Tinggi Ilmu Manajemen');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133003', 'Sekolah Tinggi Ilmu Ekonomi Sabang');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133005', 'Sekolah Tinggi Ilmu Kehutanan Pante Kulu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133006', 'Sekolah Tinggi Ilmu Administrasi Iskandar Thani');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133007', 'Sekolah Tinggi Teknik Iskandar Thani');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133008', 'Sekolah Tinggi Ilmu Manajemen Pase');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133009', 'Sekolah Tinggi Ilmu Ekonomi YPHB');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133010', 'Sekolah Tinggi Teknik Bina Cendikia');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133011', 'Sekolah Tinggi Ilmu Hukum Muhammadiyah Takengon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133013', 'Sekolah Tinggi Ilmu Manajemen Indonesia Meulaboh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133014', 'Sekolah Tinggi Ilmu Psikologi Harapan Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133015', 'Sekolah Tinggi Ilmu Administrasi Nasional');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133016', 'STKIP Al-Washliyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133017', 'STKIP An-nur Nangro Aceh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133018', 'STKIP Bina Bangsa Getsempena');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133019', 'Sekolah Tinggi Ilmu Pertanian Yashafa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133020', 'STKIP Muhammadiyah Aceh Tengah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133021', 'Sekolah Tinggi Ilmu Kesehatan Harapan Bangsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133022', 'STIKES Payung Negeri Aceh Darussalam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133024', 'STISIP Al Washliyah Banda Aceh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133025', 'STIE Bumi Persada Lhokseumawe');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133026', 'STIKES Cut Nyak Dhien Langsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133027', 'Sekolah Tinggi Ilmu Ekonomi Lhokseumawe');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133029', 'Sekolah Tinggi Ilmu Kesehatan Langsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133030', 'STIKES Darussalam Lhokseumawe');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133031', 'STIKES Muhammadiyah Lhokseumawe');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133032', 'STIKES Medika Seramoe Barat');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133033', 'STIKES Medika Nurul Islam');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133034', 'Sekolah Tinggi Ilmu Administrasi Pelita Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133035', 'STIKES Bumi Persada Lhokseumawe');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133036', 'STIKES Getsempena Lhoksukon');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133040', 'STKIP Muhammadiyah Aceh Barat Daya');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133041', 'STIKES Nurul Hasanah Kutacane');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133042', 'STKIP Bina Bangsa Meulaboh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133043', 'STKIP Usman Safri Kutacane');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133044', 'STKIP Bumi Persada Lhokseumawe');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133045', 'STIKES Medika Teuku Umar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133046', 'STIKES Bustanul Ulum Langsa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133047', 'STMIK Indonesia Banda Aceh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133049', 'Sekolah Tinggi Manajemen Informatika dan Komputer Harapan Ibu');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133051', 'STIKES Assyifa Aceh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133052', 'Sekolah Tinggi Ilmu Hukum Al-Banna');
INSERT INTO `mas_perguruan_tinggi` VALUES ('133053', 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Aceh');
INSERT INTO `mas_perguruan_tinggi` VALUES ('141001', 'Universitas Muhammadiyah Sorong');
INSERT INTO `mas_perguruan_tinggi` VALUES ('141002', 'Universitas Sains Dan Teknologi Jayapura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('141003', 'Universitas Yapis Papua');
INSERT INTO `mas_perguruan_tinggi` VALUES ('141004', 'Universitas Satya Wiyata Mandala');
INSERT INTO `mas_perguruan_tinggi` VALUES ('141005', 'Universitas Kristen Papua');
INSERT INTO `mas_perguruan_tinggi` VALUES ('141006', 'Universitas Timika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('141007', 'Universitas Victory Sorong');
INSERT INTO `mas_perguruan_tinggi` VALUES ('141008', 'Universitas Ottow Geissler');
INSERT INTO `mas_perguruan_tinggi` VALUES ('141009', 'Universitas Nani Bili Nusantara');
INSERT INTO `mas_perguruan_tinggi` VALUES ('141010', 'Universitas Pendidikan Muhammadiyah Sorong');
INSERT INTO `mas_perguruan_tinggi` VALUES ('141011', 'Universitas Amal Ilmiah Yapis Wamena');
INSERT INTO `mas_perguruan_tinggi` VALUES ('142001', 'Iisip Yapis Biak');
INSERT INTO `mas_perguruan_tinggi` VALUES ('142002', 'Institut Sains Dan Teknologi Indonesia Manokwari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143001', 'Sekolah Tinggi Ilmu Hukum Manokwari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143002', 'STISIP Silas Papare Jayapura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143003', 'STFT Gki Izaak Samuel Kijne Jayapura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143004', 'Sekolah Tinggi Filsafat Fajar Timur Jayapura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143005', 'Sekolah Tinggi Ilmu Administrasi Karya Dharma Merauke');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143006', 'STKIP Abdi Wacana Wamena');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143007', 'STIE Ottow & Geissler Fak-fak');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143008', 'Sekolah Tinggi Ilmu Administrasi Asy Syafi iyah');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143009', 'Sekolah Tinggi Ilmu Ekonomi Port Numbay Jayapura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143010', 'STIPER Santo Thomas Aquinas Jayapura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143011', 'Sekolah Tinggi Ilmu Ekonomi Ottow & Geissler Serui');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143012', 'STIKOM Muhammadiyah Jayapura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143013', 'Sekolah Tinggi Ilmu Ekonomi Jambatan Bulan');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143014', 'Sekolah Tinggi Ilmu Hukum Bintuni');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143015', 'Sekolah Tinggi Ilmu Ekonomi Mah-eisa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143016', 'Sekolah Tinggi Ilmu Hukum Umel Mandiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143017', 'Sekolah Tinggi Ilmu Ekonomi Bukit Zaitun Sorong');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143021', 'Sekolah Tinggi Ilmu Kesehatan Papua');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143022', 'Sekolah Tinggi Ilmu Hukum Biak-Papua');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143023', 'STIMIK Sepuluh Nopember Jayapura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143024', 'Sekolah Tinggi Ilmu Pertanian Petra Baliem Wamena');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143025', 'STKIP Kristen Wamena');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143026', 'STISIPOL Yaleka Maro');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143027', 'STKIP Muhammadiyah Manokwari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143028', 'Sekolah Tinggi Ilmu Kesehatan Jayapura');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143029', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Nuuwar');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143031', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Biak');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143032', 'Sekolah Tinggi Ilmu Manajemen Informatika & Teknik Komputer Agamua Wamena Papua');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143033', 'Sekolah Tinggi Ilmu Eknomi Yapis Merauke');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143034', 'STIE Saint Theresa');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143035', 'STKIP Hermon Timika');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143036', 'STMIK Kreatindo Manokwari');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143037', 'STIE Trinitas Sorong');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143038', 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan PGRI Papua');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143039', 'Sekolah Tinggi Bio Sains Swadiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143040', 'Sekolah Tinggi Manajemen dan Ilmu Komputer Umel Mandiri');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143041', 'Sekolah Tinggi Ilmu Kesehatan Persada Nabire');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143042', 'Sekolah Tinggi Manajemen Informatika dan Komputer Pesat Nabire');
INSERT INTO `mas_perguruan_tinggi` VALUES ('143043', 'Sekolah Tinggi Ilmu Keguruan dan Ilmu Pendidikan Terang Bangsa');

-- ----------------------------
-- Table structure for mas_projek
-- ----------------------------
DROP TABLE IF EXISTS `mas_projek`;
CREATE TABLE `mas_projek`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_projek` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_cc` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `costcenter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_from` date NULL DEFAULT NULL,
  `date_to` date NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mas_projek
-- ----------------------------

-- ----------------------------
-- Table structure for mas_provinsi
-- ----------------------------
DROP TABLE IF EXISTS `mas_provinsi`;
CREATE TABLE `mas_provinsi`  (
  `country_code` int NOT NULL,
  `prov_code` int NOT NULL AUTO_INCREMENT,
  `descprov` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`prov_code`, `country_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of mas_provinsi
-- ----------------------------
INSERT INTO `mas_provinsi` VALUES (62, 11, 'NANGGROE ACEH DARUSSALAM');
INSERT INTO `mas_provinsi` VALUES (62, 12, 'SUMATERA UTARA  ');
INSERT INTO `mas_provinsi` VALUES (62, 13, 'SUMATERA BARAT  ');
INSERT INTO `mas_provinsi` VALUES (62, 14, 'RIAU            ');
INSERT INTO `mas_provinsi` VALUES (62, 15, 'JAMBI           ');
INSERT INTO `mas_provinsi` VALUES (62, 16, 'SUMATERA SELATAN');
INSERT INTO `mas_provinsi` VALUES (62, 17, 'BENGKULU        ');
INSERT INTO `mas_provinsi` VALUES (62, 18, 'LAMPUNG         ');
INSERT INTO `mas_provinsi` VALUES (62, 19, 'KEP. BANGKA BELITUNG    ');
INSERT INTO `mas_provinsi` VALUES (62, 21, 'KEPULAUAN RIAU  ');
INSERT INTO `mas_provinsi` VALUES (62, 31, 'DKI JAKARTA     ');
INSERT INTO `mas_provinsi` VALUES (62, 32, 'JAWA BARAT      ');
INSERT INTO `mas_provinsi` VALUES (62, 33, 'JAWA TENGAH     ');
INSERT INTO `mas_provinsi` VALUES (62, 34, 'DAISTA YOGYAKARTA       ');
INSERT INTO `mas_provinsi` VALUES (62, 35, 'JAWA TIMUR      ');
INSERT INTO `mas_provinsi` VALUES (62, 36, 'BANTEN          ');
INSERT INTO `mas_provinsi` VALUES (62, 51, 'BALI            ');
INSERT INTO `mas_provinsi` VALUES (62, 52, 'NUSA TENGGARA BARAT     ');
INSERT INTO `mas_provinsi` VALUES (62, 53, 'NUSA TENGGARA TIMUR     ');
INSERT INTO `mas_provinsi` VALUES (62, 61, 'KALIMANTAN BARAT');
INSERT INTO `mas_provinsi` VALUES (62, 62, 'KALIMANTAN TENGAH       ');
INSERT INTO `mas_provinsi` VALUES (62, 63, 'KALIMANTAN SELATAN      ');
INSERT INTO `mas_provinsi` VALUES (62, 64, 'KALIMANTAN TIMUR');
INSERT INTO `mas_provinsi` VALUES (62, 71, 'SULAWESI UTARA  ');
INSERT INTO `mas_provinsi` VALUES (62, 72, 'SULAWESI TENGAH ');
INSERT INTO `mas_provinsi` VALUES (62, 73, 'SULAWESI SELATAN');
INSERT INTO `mas_provinsi` VALUES (62, 74, 'SULAWESI TENGGARA       ');
INSERT INTO `mas_provinsi` VALUES (62, 75, 'RONTALO       ');
INSERT INTO `mas_provinsi` VALUES (62, 76, 'SULAWESI BARAT  ');
INSERT INTO `mas_provinsi` VALUES (62, 81, 'MALUKU          ');
INSERT INTO `mas_provinsi` VALUES (62, 82, 'MALUKU UTARA    ');
INSERT INTO `mas_provinsi` VALUES (62, 91, 'PAPUA           ');
INSERT INTO `mas_provinsi` VALUES (62, 92, 'IRIAN JAYA BARAT');

-- ----------------------------
-- Table structure for mas_relation
-- ----------------------------
DROP TABLE IF EXISTS `mas_relation`;
CREATE TABLE `mas_relation`  (
  `relation_code` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`relation_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mas_relation
-- ----------------------------
INSERT INTO `mas_relation` VALUES ('00', 'Suami');
INSERT INTO `mas_relation` VALUES ('01', 'Istri');
INSERT INTO `mas_relation` VALUES ('02', 'Anak ke 1');
INSERT INTO `mas_relation` VALUES ('03', 'Anak ke 2');
INSERT INTO `mas_relation` VALUES ('04', 'Anak ke 3');
INSERT INTO `mas_relation` VALUES ('05', 'Anak ke 4');
INSERT INTO `mas_relation` VALUES ('06', 'Anak ke 5');
INSERT INTO `mas_relation` VALUES ('07', 'Anak ke 6');
INSERT INTO `mas_relation` VALUES ('08', 'Anak ke 7');
INSERT INTO `mas_relation` VALUES ('09', 'Anak ke 8');
INSERT INTO `mas_relation` VALUES ('10', 'Anak ke 9');
INSERT INTO `mas_relation` VALUES ('11', 'Ayah kandung');
INSERT INTO `mas_relation` VALUES ('12', 'Ibu kandung');
INSERT INTO `mas_relation` VALUES ('13', 'Kakak kandung');
INSERT INTO `mas_relation` VALUES ('14', 'Adik kandung');
INSERT INTO `mas_relation` VALUES ('15', 'Kakak Ipar');
INSERT INTO `mas_relation` VALUES ('16', 'Adik ipar');
INSERT INTO `mas_relation` VALUES ('17', 'Paman');
INSERT INTO `mas_relation` VALUES ('18', 'Bibi');
INSERT INTO `mas_relation` VALUES ('20', 'Kakek');
INSERT INTO `mas_relation` VALUES ('21', 'Nenek');
INSERT INTO `mas_relation` VALUES ('22', 'Keponakan');
INSERT INTO `mas_relation` VALUES ('99', 'Lain-lain');

-- ----------------------------
-- Table structure for mas_status_kerja
-- ----------------------------
DROP TABLE IF EXISTS `mas_status_kerja`;
CREATE TABLE `mas_status_kerja`  (
  `id_status_kerja` int NOT NULL AUTO_INCREMENT,
  `nama_status_kerja` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_status_kerja`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mas_status_kerja
-- ----------------------------
INSERT INTO `mas_status_kerja` VALUES (1, 'JO');
INSERT INTO `mas_status_kerja` VALUES (2, 'KONTRAK');
INSERT INTO `mas_status_kerja` VALUES (3, 'ORGANIK');

-- ----------------------------
-- Table structure for mas_tipe_jadwal
-- ----------------------------
DROP TABLE IF EXISTS `mas_tipe_jadwal`;
CREATE TABLE `mas_tipe_jadwal`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_tipe` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desc_tipe` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mas_tipe_jadwal
-- ----------------------------

-- ----------------------------
-- Table structure for process_update_projek
-- ----------------------------
DROP TABLE IF EXISTS `process_update_projek`;
CREATE TABLE `process_update_projek`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_projek` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `result` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of process_update_projek
-- ----------------------------

-- ----------------------------
-- Table structure for sys_group_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_group_menu`;
CREATE TABLE `sys_group_menu`  (
  `group_id` int NOT NULL,
  `navbar_id` int NOT NULL,
  PRIMARY KEY (`group_id`, `navbar_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_group_menu
-- ----------------------------
INSERT INTO `sys_group_menu` VALUES (1, 1);
INSERT INTO `sys_group_menu` VALUES (1, 8);
INSERT INTO `sys_group_menu` VALUES (1, 9);
INSERT INTO `sys_group_menu` VALUES (1, 10);
INSERT INTO `sys_group_menu` VALUES (1, 11);
INSERT INTO `sys_group_menu` VALUES (1, 12);
INSERT INTO `sys_group_menu` VALUES (1, 13);
INSERT INTO `sys_group_menu` VALUES (1, 14);
INSERT INTO `sys_group_menu` VALUES (1, 15);
INSERT INTO `sys_group_menu` VALUES (1, 16);
INSERT INTO `sys_group_menu` VALUES (1, 17);
INSERT INTO `sys_group_menu` VALUES (1, 24);
INSERT INTO `sys_group_menu` VALUES (1, 31);
INSERT INTO `sys_group_menu` VALUES (1, 32);
INSERT INTO `sys_group_menu` VALUES (1, 33);
INSERT INTO `sys_group_menu` VALUES (1, 34);
INSERT INTO `sys_group_menu` VALUES (1, 35);
INSERT INTO `sys_group_menu` VALUES (1, 36);
INSERT INTO `sys_group_menu` VALUES (1, 37);
INSERT INTO `sys_group_menu` VALUES (1, 44);
INSERT INTO `sys_group_menu` VALUES (1, 52);
INSERT INTO `sys_group_menu` VALUES (1, 56);
INSERT INTO `sys_group_menu` VALUES (2, 18);
INSERT INTO `sys_group_menu` VALUES (2, 19);
INSERT INTO `sys_group_menu` VALUES (2, 20);
INSERT INTO `sys_group_menu` VALUES (2, 21);
INSERT INTO `sys_group_menu` VALUES (2, 22);
INSERT INTO `sys_group_menu` VALUES (2, 23);
INSERT INTO `sys_group_menu` VALUES (2, 25);
INSERT INTO `sys_group_menu` VALUES (2, 29);
INSERT INTO `sys_group_menu` VALUES (2, 30);
INSERT INTO `sys_group_menu` VALUES (2, 35);
INSERT INTO `sys_group_menu` VALUES (3, 1);
INSERT INTO `sys_group_menu` VALUES (3, 8);
INSERT INTO `sys_group_menu` VALUES (3, 10);
INSERT INTO `sys_group_menu` VALUES (3, 11);
INSERT INTO `sys_group_menu` VALUES (3, 12);
INSERT INTO `sys_group_menu` VALUES (3, 13);
INSERT INTO `sys_group_menu` VALUES (3, 14);
INSERT INTO `sys_group_menu` VALUES (3, 15);
INSERT INTO `sys_group_menu` VALUES (3, 16);
INSERT INTO `sys_group_menu` VALUES (3, 17);
INSERT INTO `sys_group_menu` VALUES (3, 33);
INSERT INTO `sys_group_menu` VALUES (3, 34);
INSERT INTO `sys_group_menu` VALUES (3, 35);
INSERT INTO `sys_group_menu` VALUES (3, 36);
INSERT INTO `sys_group_menu` VALUES (3, 37);
INSERT INTO `sys_group_menu` VALUES (3, 44);
INSERT INTO `sys_group_menu` VALUES (3, 47);
INSERT INTO `sys_group_menu` VALUES (4, 1);
INSERT INTO `sys_group_menu` VALUES (4, 41);
INSERT INTO `sys_group_menu` VALUES (4, 49);
INSERT INTO `sys_group_menu` VALUES (4, 51);
INSERT INTO `sys_group_menu` VALUES (4, 53);
INSERT INTO `sys_group_menu` VALUES (5, 41);
INSERT INTO `sys_group_menu` VALUES (5, 53);
INSERT INTO `sys_group_menu` VALUES (5, 54);

-- ----------------------------
-- Table structure for sys_navbar
-- ----------------------------
DROP TABLE IF EXISTS `sys_navbar`;
CREATE TABLE `sys_navbar`  (
  `navbar_id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT 0,
  `navbar_icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `navbar_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `link` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sort` int NOT NULL DEFAULT 0,
  `active` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`navbar_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_navbar
-- ----------------------------
INSERT INTO `sys_navbar` VALUES (1, 0, 'bi bi-grid', 'Dashboard', 'dashboard', 1, 'Y');
INSERT INTO `sys_navbar` VALUES (8, 0, 'bi bi-chevron-down ms-auto', 'Master Data', 'master_data', 3, 'Y');
INSERT INTO `sys_navbar` VALUES (9, 35, 'bi bi-circle', 'Master Menu', 'administrasi/master_menu', 1, 'Y');
INSERT INTO `sys_navbar` VALUES (10, 8, 'bi bi-circle', 'Master Level Jabatan', 'master_data/master_jabatan', 1, 'Y');
INSERT INTO `sys_navbar` VALUES (11, 8, 'bi bi-circle', 'Master Pendidikan', 'master_data/master_pendidikan', 6, 'Y');
INSERT INTO `sys_navbar` VALUES (12, 8, 'bi bi-circle', 'Master Projek', 'master_data/Master_projek', 2, 'Y');
INSERT INTO `sys_navbar` VALUES (13, 8, 'bi bi-circle', 'Master Relasi Keluarga', 'master_data/master_relasi', 4, 'Y');
INSERT INTO `sys_navbar` VALUES (14, 8, 'bi bi-circle', 'Master Wilayah', 'master_data/master_wilayah', 5, 'Y');
INSERT INTO `sys_navbar` VALUES (15, 8, 'bi bi-circle', 'Master Agama', 'master_data/master_agama', 6, 'Y');
INSERT INTO `sys_navbar` VALUES (16, 35, 'bi bi-circle', 'Master Karyawan', 'administrasi/master_karyawan', 3, 'Y');
INSERT INTO `sys_navbar` VALUES (17, 8, 'bi bi-circle', 'Master Status Perkawinan', 'master_data/master_maritalsts', 3, 'Y');
INSERT INTO `sys_navbar` VALUES (18, 35, 'bi bi-circle', 'Profil', 'administrasi/profil', 6, 'Y');
INSERT INTO `sys_navbar` VALUES (19, 35, 'bi bi-circle', 'Keluarga', 'administrasi/keluarga', 7, 'Y');
INSERT INTO `sys_navbar` VALUES (20, 35, 'bi bi-circle', 'Riwayat Alamat', 'administrasi/alamat', 8, 'Y');
INSERT INTO `sys_navbar` VALUES (21, 35, 'bi bi-circle', 'Skill', 'administrasi/skill', 9, 'Y');
INSERT INTO `sys_navbar` VALUES (22, 35, 'bi bi-circle', 'Pelatihan', 'administrasi/pelatihan', 10, 'Y');
INSERT INTO `sys_navbar` VALUES (23, 35, 'bi bi-circle', 'Penugasan', 'administrasi/penugasan', 11, 'Y');
INSERT INTO `sys_navbar` VALUES (24, 35, 'bi bi-circle', 'Master User', 'administrasi/user', 4, 'Y');
INSERT INTO `sys_navbar` VALUES (25, 35, 'bi bi-circle', 'Dokumen File', 'administrasi/dokumen', 13, 'Y');
INSERT INTO `sys_navbar` VALUES (29, 35, 'bi bi-circle', 'Riwayat Pendidikan', 'administrasi/pendidikan', 10, 'Y');
INSERT INTO `sys_navbar` VALUES (30, 35, 'bi bi-circle', 'Pengalaman Kerja', 'administrasi/pengalaman_kerja', 11, 'Y');
INSERT INTO `sys_navbar` VALUES (31, 35, 'bi bi-circle', 'Akses Menu', 'administrasi/aksesMenu', 2, 'Y');
INSERT INTO `sys_navbar` VALUES (32, 8, 'bi bi-circle', 'Master Perguruan Tinggi', 'master_ptn', 8, 'N');
INSERT INTO `sys_navbar` VALUES (33, 8, 'bi bi-circle', 'Master Jurusan', 'master_data/master_jurusan', 9, 'Y');
INSERT INTO `sys_navbar` VALUES (34, 35, 'bi bi-circle', 'Export Data', 'administrasi/master_export_data', 5, 'Y');
INSERT INTO `sys_navbar` VALUES (35, 0, 'bi bi-chevron-down ms-auto', 'Administrasi', 'administrasi', 2, 'Y');
INSERT INTO `sys_navbar` VALUES (36, 8, 'bi bi-circle', 'Master Divisi', 'master_data/master_divisi', 9, 'Y');
INSERT INTO `sys_navbar` VALUES (37, 8, 'bi bi-circle', 'Entri Penugasan', 'master_data/penugasan_admin', 12, 'Y');
INSERT INTO `sys_navbar` VALUES (38, 8, 'bi bi-circle', 'Master Jenis Izin', 'master_data/master_jenis_izin', 7, 'N');
INSERT INTO `sys_navbar` VALUES (39, 0, 'bi bi-chevron-down ms-auto', 'Master ESS', 'master_ess', 3, 'Y');
INSERT INTO `sys_navbar` VALUES (41, 0, 'bi bi-chevron-down ms-auto', 'ESS', 'ess', 5, 'Y');
INSERT INTO `sys_navbar` VALUES (42, 41, 'bi bi-circle', 'Slip Gaji', 'ess/slip_gaji_karyawan', 1, 'N');
INSERT INTO `sys_navbar` VALUES (44, 8, 'bi bi-circle', 'Master Jabatan', 'master_data/master_jabatan2', 4, 'Y');
INSERT INTO `sys_navbar` VALUES (45, 39, 'bi bi-circle', 'setting Tanggal  Merah', 'master_ess/setting_tanggal_merah', 3, 'Y');
INSERT INTO `sys_navbar` VALUES (46, 0, 'bi bi-chevron-down ms-auto', 'Performance Appraisal', 'performance_appraisal', 7, 'Y');
INSERT INTO `sys_navbar` VALUES (47, 46, 'bi bi-circle', 'Entry penilaian kerja', 'performance_appraisal/Performance_admin', 1, 'Y');
INSERT INTO `sys_navbar` VALUES (48, 46, 'bi bi-circle', 'Penilaian Kinerja', 'performance_appraisal/Performance', 1, 'Y');
INSERT INTO `sys_navbar` VALUES (49, 41, 'bi bi-circle', 'Izin Jam Kerja', 'ess/izin_jam_kerja', 5, 'Y');
INSERT INTO `sys_navbar` VALUES (50, 41, 'bi bi-circle', 'Persetujuan Izin Jam Kerja', 'ess/izin_jam_kerja_approve', 1, 'Y');
INSERT INTO `sys_navbar` VALUES (51, 41, 'bi bi-circle', 'Laporan Izin Jam Kerja ', 'ess/izin_jam_kerja_approve_report', 1, 'Y');
INSERT INTO `sys_navbar` VALUES (52, 35, 'bi bi-circle', 'Grup Akses', 'administrasi/group_akses', 3, 'Y');
INSERT INTO `sys_navbar` VALUES (53, 41, 'bi bi-circle', 'SPD', 'ess/spd', 2, 'Y');
INSERT INTO `sys_navbar` VALUES (54, 41, 'bi bi-circle', 'Pesetujuan SPD', 'ess/spd_approve', 3, 'Y');
INSERT INTO `sys_navbar` VALUES (55, 41, 'bi bi-circle', 'SPD Karyawan', 'ess/spd_karyawan', 4, 'Y');
INSERT INTO `sys_navbar` VALUES (56, 8, 'bi bi-circle', 'Master Grade', 'master_data/master_grade', 12, 'Y');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `userpass` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `group_id` int NULL DEFAULT NULL,
  `aktif` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telp` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idUser`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 199 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '1', 'administrator@krakatau-it.co.id', '$2y$10$hfpa0f9szmH38cVUsKPBtecHxpzCfAq8aU6NvI8MsSa/SKM6TaTsq', 1, '1', 'administrator@krakatau-it.co.id', '-');
INSERT INTO `sys_user` VALUES (2, '30060', 'boy.mridwan@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'boy.mridwan@krakatau-it.co.id', '');
INSERT INTO `sys_user` VALUES (3, '30062', 'budi.tjandra@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'budi.tjandra@krakatau-it.co.id', '081394478402');
INSERT INTO `sys_user` VALUES (4, '30064', 'buana.jaya@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'buana.jaya@krakatau-it.co.id', '081519014858');
INSERT INTO `sys_user` VALUES (5, '00066', 'madlias@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'madlias@krakatau-it.co.id', '0818833659');
INSERT INTO `sys_user` VALUES (6, '00076', 'Yani.Waspoadi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Yani.Waspoadi@krakatau-it.co.id', '08118003399');
INSERT INTO `sys_user` VALUES (7, '00099', 'Edi.Soewardi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Edi.Soewardi@krakatau-it.co.id', '08129293953');
INSERT INTO `sys_user` VALUES (8, '00106', 'rini@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'rini@krakatau-it.co.id', '085946444710');
INSERT INTO `sys_user` VALUES (9, '00114', 'elin@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'elin@krakatau-it.co.id', '081380250125');
INSERT INTO `sys_user` VALUES (10, '00119', 'roni@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'roni@krakatau-it.co.id', '081281233189');
INSERT INTO `sys_user` VALUES (11, '00120', 'rima@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'rima@krakatau-it.co.id', '08128512839');
INSERT INTO `sys_user` VALUES (12, '00125', 'rochmadi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'rochmadi@krakatau-it.co.id', '087741000275');
INSERT INTO `sys_user` VALUES (13, '00126', 'nuning@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'nuning@krakatau-it.co.id', '08159464419');
INSERT INTO `sys_user` VALUES (14, '00129', 'arni@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'arni@krakatau-it.co.id', '081381052555');
INSERT INTO `sys_user` VALUES (15, '00137', 'koen@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'koen@krakatau-it.co.id', '085946362340');
INSERT INTO `sys_user` VALUES (16, '00138', 'barkah@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'barkah@krakatau-it.co.id', '081318131345');
INSERT INTO `sys_user` VALUES (17, '00148', 'fatoni@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'fatoni@krakatau-it.co.id', '081808061360');
INSERT INTO `sys_user` VALUES (18, '00150', 'koko@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'koko@krakatau-it.co.id', '08128077685');
INSERT INTO `sys_user` VALUES (19, '00151', 'wisnu.sadewo@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'wisnu.sadewo@krakatau-it.co.id', '081385261600');
INSERT INTO `sys_user` VALUES (20, '00160', 'andikbs@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'andikbs@krakatau-it.co.id', '081218785135');
INSERT INTO `sys_user` VALUES (21, '00161', 'ramdhani@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ramdhani@krakatau-it.co.id', '082114229074');
INSERT INTO `sys_user` VALUES (22, '00162', 'tritego@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'tritego@krakatau-it.co.id', '087771512114');
INSERT INTO `sys_user` VALUES (23, '00164', 'tetty@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'tetty@krakatau-it.co.id', '085219025652');
INSERT INTO `sys_user` VALUES (24, '00165', 'anita@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'anita@krakatau-it.co.id', '0817874687');
INSERT INTO `sys_user` VALUES (25, '00166', 'bismannur.bahdar@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'bismannur.bahdar@krakatau-it.co.id', '082111440257');
INSERT INTO `sys_user` VALUES (26, '00168', 'asep.mabrur@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 5, '1', 'asep.mabrur@krakatau-it.co.id', '081322203991');
INSERT INTO `sys_user` VALUES (27, '00169', 'Ali.Marjan@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Ali.Marjan@krakatau-it.co.id', '08568030190');
INSERT INTO `sys_user` VALUES (28, '00172', 'Erwan.Susanto@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Erwan.Susanto@krakatau-it.co.id', '085691012346');
INSERT INTO `sys_user` VALUES (29, '00176', 'Christian.Putra@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Christian.Putra@krakatau-it.co.id', '08562020430');
INSERT INTO `sys_user` VALUES (30, '00177', 'fatah@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'fatah@krakatau-it.co.id', '085959696292');
INSERT INTO `sys_user` VALUES (31, '00180', 'farah.rr@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'farah.rr@krakatau-it.co.id', '0811939247');
INSERT INTO `sys_user` VALUES (32, '00182', 'djoko.supryadi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'djoko.supryadi@krakatau-it.co.id', '081513009525');
INSERT INTO `sys_user` VALUES (33, '00184', 'feriano@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'feriano@krakatau-it.co.id', '081315981356');
INSERT INTO `sys_user` VALUES (34, '00185', 'agus.sudono@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'agus.sudono@krakatau-it.co.id', '087771905303');
INSERT INTO `sys_user` VALUES (35, '10006', 'Rudi.hendri@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Rudi.hendri@krakatau-it.co.id', '0819112145190');
INSERT INTO `sys_user` VALUES (36, '10007', 'Syamsul@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Syamsul@krakatau-it.co.id', '087772109288');
INSERT INTO `sys_user` VALUES (37, '10008', 'lucky.Santana@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'lucky.Santana@krakatau-it.co.id', '081932509400');
INSERT INTO `sys_user` VALUES (38, '10011', 'Noory.muliantri@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Noory.muliantri@krakatau-it.co.id', '085217105767');
INSERT INTO `sys_user` VALUES (39, '10012', 'fahru.ramdan@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'fahru.ramdan@krakatau-it.co.id', '08191104616');
INSERT INTO `sys_user` VALUES (40, '10014', 'claudia.febrina@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'claudia.febrina@krakatau-it.co.id', '087808291993');
INSERT INTO `sys_user` VALUES (41, '10015', 'marlita.dewi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'marlita.dewi@krakatau-it.co.id', '087871672750');
INSERT INTO `sys_user` VALUES (42, '10016', 'yevilina.auliarizka@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'yevilina.auliarizka@krakatau-it.co.id', '08568451503');
INSERT INTO `sys_user` VALUES (43, '10017', 'Koen.Pancawati@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Koen.Pancawati@krakatau-it.co.id', '089666975490');
INSERT INTO `sys_user` VALUES (44, '10018', 'Fadia.putri@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Fadia.putri@krakatau-it.co.id', '081318387759');
INSERT INTO `sys_user` VALUES (45, '10020', 'annissa.mashur@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'annissa.mashur@krakatau-it.co.id', '087889443997');
INSERT INTO `sys_user` VALUES (46, '10022', 'galih.nugraha@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'galih.nugraha@krakatau-it.co.id', '087871038903');
INSERT INTO `sys_user` VALUES (47, '10025', 'rinny.lestari@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'rinny.lestari@krakatau-it.co.id', '083127367631');
INSERT INTO `sys_user` VALUES (48, '10026', 'septian.tp@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'septian.tp@krakatau-it.co.id', '082112233309');
INSERT INTO `sys_user` VALUES (49, '10027', 'munaji@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'munaji@krakatau-it.co.id', '085215929889');
INSERT INTO `sys_user` VALUES (50, '10029', 'yoiko.maison@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'yoiko.maison@krakatau-it.co.id', '08116602270');
INSERT INTO `sys_user` VALUES (51, '10030', 'indri.lestiani@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'indri.lestiani@krakatau-it.co.id', '081958636698');
INSERT INTO `sys_user` VALUES (52, '10031', 'erpan.gustira@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'erpan.gustira@krakatau-it.co.id', '081567818364');
INSERT INTO `sys_user` VALUES (53, '10032', 'auliaf.alindira@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'auliaf.alindira@krakatau-it.co.id', '08569067176');
INSERT INTO `sys_user` VALUES (54, '10034', 'Desi.sulistiani@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Desi.sulistiani@krakatau-it.co.id', '08561684458');
INSERT INTO `sys_user` VALUES (55, '10035', 'trijoko.wibowo@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'trijoko.wibowo@krakatau-it.co.id', '081806044401');
INSERT INTO `sys_user` VALUES (56, '10036', 'f.hajar.mahardicha@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'f.hajar.mahardicha@krakatau-it.co.id', '081212828007');
INSERT INTO `sys_user` VALUES (57, '10037', 'rendy.sutisna@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'rendy.sutisna@krakatau-it.co.id', '081288615177');
INSERT INTO `sys_user` VALUES (58, '10038', 'yunanto.andhika@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'yunanto.andhika@krakatau-it.co.id', '087850835223');
INSERT INTO `sys_user` VALUES (59, '10039', 'ade.wahyudi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ade.wahyudi@krakatau-it.co.id', '081573076389');
INSERT INTO `sys_user` VALUES (60, '10040', 'habib.rahman@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'habib.rahman@krakatau-it.co.id', '08179560856');
INSERT INTO `sys_user` VALUES (61, '10041', 'chandra@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'chandra@krakatau-it.co.id', '087824222464');
INSERT INTO `sys_user` VALUES (62, '10042', 'astari.rozalina@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'astari.rozalina@krakatau-it.co.id', '085363051276');
INSERT INTO `sys_user` VALUES (63, '10043', 'aditia.nugroho@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'aditia.nugroho@krakatau-it.co.id', '08561222313');
INSERT INTO `sys_user` VALUES (64, '10044', 'naufal.mutamar@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'naufal.mutamar@krakatau-it.co.id', '081222453804');
INSERT INTO `sys_user` VALUES (65, '10045', 'ihsanm.putra@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ihsanm.putra@krakatau-it.co.id', '085659307344');
INSERT INTO `sys_user` VALUES (66, '10046', 'edy.sbaji@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'edy.sbaji@krakatau-it.co.id', '087894368498');
INSERT INTO `sys_user` VALUES (67, '10048', 'ucu.yudi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ucu.yudi@krakatau-it.co.id', '081911194759');
INSERT INTO `sys_user` VALUES (68, '10049', 'restu.raharja@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'restu.raharja@krakatau-it.co.id', '08989301555');
INSERT INTO `sys_user` VALUES (69, '10050', 'diki.dewaputra@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'diki.dewaputra@krakatau-it.co.id', '087867097788');
INSERT INTO `sys_user` VALUES (70, '10051', 'Nana.supriatna@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Nana.supriatna@krakatau-it.co.id', '085710973405');
INSERT INTO `sys_user` VALUES (71, '10052', 'dani.agustian@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'dani.agustian@krakatau-it.co.id', '085286246098');
INSERT INTO `sys_user` VALUES (72, '10053', 'satya.mintharenza@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'satya.mintharenza@krakatau-it.co.id', '082226442644');
INSERT INTO `sys_user` VALUES (73, '10054', 'iskandar.zulkarnaen@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'iskandar.zulkarnaen@krakatau-it.co.id', '085743051217');
INSERT INTO `sys_user` VALUES (74, '10055', 'maulidya.rulinsha@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'maulidya.rulinsha@krakatau-it.co.id', '087889888982');
INSERT INTO `sys_user` VALUES (75, '10056', 'nada.lisdara@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'nada.lisdara@krakatau-it.co.id', '087774744641');
INSERT INTO `sys_user` VALUES (76, '10057', 'Afriyadi.Sauqi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Afriyadi.Sauqi@krakatau-it.co.id', '087771045723');
INSERT INTO `sys_user` VALUES (77, '10058', 'arkan.wira@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'arkan.wira@krakatau-it.co.id', '087845608084');
INSERT INTO `sys_user` VALUES (78, '10059', 'bagus.chandra@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'bagus.chandra@krakatau-it.co.id', '081380819771');
INSERT INTO `sys_user` VALUES (79, '10061', 'fajar.isnandio@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'fajar.isnandio@krakatau-it.co.id', '081703590406');
INSERT INTO `sys_user` VALUES (80, '10062', 'muchtadi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'muchtadi@krakatau-it.co.id', '087771689127');
INSERT INTO `sys_user` VALUES (81, '10063', 'dida.nurwanda@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'dida.nurwanda@krakatau-it.co.id', '085312098482');
INSERT INTO `sys_user` VALUES (82, '10064', 'ganes.aryudha@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ganes.aryudha@krakatau-it.co.id', '082111146008');
INSERT INTO `sys_user` VALUES (83, '10065', 'Zainul.Muttaqin@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Zainul.Muttaqin@krakatau-it.co.id', '087771617716');
INSERT INTO `sys_user` VALUES (84, '10066', 'elisa.anggraini@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'elisa.anggraini@krakatau-it.co.id', '081210086610');
INSERT INTO `sys_user` VALUES (85, '10067', 'entol.fakih@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'entol.fakih@krakatau-it.co.id', '08176960473');
INSERT INTO `sys_user` VALUES (86, '10068', 'widhi.danggoro@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'widhi.danggoro@krakatau-it.co.id', '081911121142');
INSERT INTO `sys_user` VALUES (87, '10069', 'zaenal.mutakin@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'zaenal.mutakin@krakatau-it.co.id', '081911265940');
INSERT INTO `sys_user` VALUES (88, '10070', 'm.taufik@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'm.taufik@krakatau-it.co.id', '081513229565');
INSERT INTO `sys_user` VALUES (89, '10071', 'novi.mayasari@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'novi.mayasari@krakatau-it.co.id', '085211735007');
INSERT INTO `sys_user` VALUES (90, '10072', 'devaraa.utami@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'devaraa.utami@krakatau-it.co.id', '087870041444');
INSERT INTO `sys_user` VALUES (91, '10073', 'andiarto.dimas@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'andiarto.dimas@krakatau-it.co.id', '081317163973');
INSERT INTO `sys_user` VALUES (92, '10074', 'briliyanp.handoko@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'briliyanp.handoko@krakatau-it.co.id', '087771303793');
INSERT INTO `sys_user` VALUES (93, '10075', 'alda.gumelar@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'alda.gumelar@krakatau-it.co.id', '085313232453');
INSERT INTO `sys_user` VALUES (94, '10076', 'furqon.fajri@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'furqon.fajri@krakatau-it.co.id', '082312053337');
INSERT INTO `sys_user` VALUES (95, '10077', 'iskandar.muda@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'iskandar.muda@krakatau-it.co.id', '0895391975527');
INSERT INTO `sys_user` VALUES (96, '10078', 'mukhamad.benny@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'mukhamad.benny@krakatau-it.co.id', '085946545791');
INSERT INTO `sys_user` VALUES (97, '10079', 'imamr.sanjaya@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'imamr.sanjaya@krakatau-it.co.id', '08780202004');
INSERT INTO `sys_user` VALUES (98, '10081', 'fery.indriyana@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'fery.indriyana@krakatau-it.co.id', '087809823323');
INSERT INTO `sys_user` VALUES (99, '10082', 'bonny.rizaldi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'bonny.rizaldi@krakatau-it.co.id', '081289677746');
INSERT INTO `sys_user` VALUES (100, '10083', 'ato.ulloh@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ato.ulloh@krakatau-it.co.id', '08176453312');
INSERT INTO `sys_user` VALUES (101, '10084', 'dwina.anindhita@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'dwina.anindhita@krakatau-it.co.id', '082136530289');
INSERT INTO `sys_user` VALUES (102, '10085', 'riska.indrayati@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'riska.indrayati@krakatau-it.co.id', '087771310940');
INSERT INTO `sys_user` VALUES (103, '10086', 'edwin.purnama@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'edwin.purnama@krakatau-it.co.id', '081211089158');
INSERT INTO `sys_user` VALUES (104, '10087', 'agung.betariandy@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'agung.betariandy@krakatau-it.co.id', '087883755323');
INSERT INTO `sys_user` VALUES (105, '10088', 'davin.alfarizkypb@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'davin.alfarizkypb@krakatau-it.co.id', '082133986101');
INSERT INTO `sys_user` VALUES (106, '10089', 'khoirul.ulum@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'khoirul.ulum@krakatau-it.co.id', '083813248255');
INSERT INTO `sys_user` VALUES (107, '10090', 'antoniat.hartanti@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'antoniat.hartanti@krakatau-it.co.id', '081280684455');
INSERT INTO `sys_user` VALUES (108, '10091', 'amelia.adiny@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'amelia.adiny@krakatau-it.co.id', '081384843202');
INSERT INTO `sys_user` VALUES (109, '90223', 'haris.permana@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'haris.permana@krakatau-it.co.id', '081911227456');
INSERT INTO `sys_user` VALUES (110, '90284', 'Lucky.Muslim@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Lucky.Muslim@krakatau-it.co.id', '081384146351');
INSERT INTO `sys_user` VALUES (111, '90305', 'fajar.setyawan@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'fajar.setyawan@krakatau-it.co.id', '083804631900');
INSERT INTO `sys_user` VALUES (112, '90343', 'rully.januar@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'rully.januar@krakatau-it.co.id', '085224912294');
INSERT INTO `sys_user` VALUES (113, '90398', 'ita.nurjanah@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ita.nurjanah@krakatau-it.co.id', '087778388170');
INSERT INTO `sys_user` VALUES (114, '90410', 'shoheh.azis@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'shoheh.azis@krakatau-it.co.id', '087772617331');
INSERT INTO `sys_user` VALUES (115, '90414', 'hanafi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'hanafi@krakatau-it.co.id', '087774818043');
INSERT INTO `sys_user` VALUES (116, '90429', 'jarkasih@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'jarkasih@krakatau-it.co.id', '087871136642');
INSERT INTO `sys_user` VALUES (117, '90430', 'arief.rudiyani@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'arief.rudiyani@krakatau-it.co.id', '087871370021');
INSERT INTO `sys_user` VALUES (118, '90437', 'novi.hotimah@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'novi.hotimah@krakatau-it.co.id', '081315825956');
INSERT INTO `sys_user` VALUES (119, '90463', 'Pandji@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Pandji@krakatau-it.co.id', '081291428659');
INSERT INTO `sys_user` VALUES (120, '90467', 'maulana.kelvin@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'maulana.kelvin@krakatau-it.co.id', '085945542413');
INSERT INTO `sys_user` VALUES (121, '90477', 'Agung.Syahputra@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Agung.Syahputra@krakatau-it.co.id', '081293241736');
INSERT INTO `sys_user` VALUES (122, '90483', 'nanangi.qosim@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'nanangi.qosim@krakatau-it.co.id', '087774824737');
INSERT INTO `sys_user` VALUES (123, '90485', 'rina.oktavialianti@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'rina.oktavialianti@krakatau-it.co.id', '081285028060');
INSERT INTO `sys_user` VALUES (124, '90487', 'attika.kurnia@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'attika.kurnia@krakatau-it.co.id', '085946599200');
INSERT INTO `sys_user` VALUES (125, '90498', 'didit.p.aji@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'didit.p.aji@krakatau-it.co.id', '083812837376');
INSERT INTO `sys_user` VALUES (126, '90501', 'fakhrizal@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'fakhrizal@krakatau-it.co.id', '08815689705');
INSERT INTO `sys_user` VALUES (127, '90505', 'annisa.resnianty@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'annisa.resnianty@krakatau-it.co.id', '085213522703');
INSERT INTO `sys_user` VALUES (128, '90506', 'sindu.riswanda@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'sindu.riswanda@krakatau-it.co.id', '081295070096');
INSERT INTO `sys_user` VALUES (129, '90507', 'reza.yanovan@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'reza.yanovan@krakatau-it.co.id', '087717111993');
INSERT INTO `sys_user` VALUES (130, '90508', 'malik.artanto@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'malik.artanto@krakatau-it.co.id', '081911250095');
INSERT INTO `sys_user` VALUES (131, '90511', 'ahmadh.hidayat@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ahmadh.hidayat@krakatau-it.co.id', '083127241929');
INSERT INTO `sys_user` VALUES (132, '90512', 'zainal.muttaqin@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'zainal.muttaqin@krakatau-it.co.id', '085216629761');
INSERT INTO `sys_user` VALUES (133, '90515', 'valdi.haris@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'valdi.haris@krakatau-it.co.id', '085773312149');
INSERT INTO `sys_user` VALUES (134, '90517', 'asry.febriana@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'asry.febriana@krakatau-it.co.id', '085693929897');
INSERT INTO `sys_user` VALUES (135, '90531', 'chelvina.olivia@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'chelvina.olivia@krakatau-it.co.id', '087888243655');
INSERT INTO `sys_user` VALUES (136, '90533', 'triar@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'triar@krakatau-it.co.id', '085946804994');
INSERT INTO `sys_user` VALUES (137, '90537', 'hesta.fernanda@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'hesta.fernanda@krakatau-it.co.id', '082330633708');
INSERT INTO `sys_user` VALUES (138, '90540', 'candra.kurniawan@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'candra.kurniawan@krakatau-it.co.id', '085774420596');
INSERT INTO `sys_user` VALUES (139, '90541', 'mistar@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'mistar@krakatau-it.co.id', '087871348070');
INSERT INTO `sys_user` VALUES (140, '90546', 'verdy.praseldy@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'verdy.praseldy@krakatau-it.co.id', '085782520421');
INSERT INTO `sys_user` VALUES (141, '90551', 'vendy.praseldy@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'vendy.praseldy@krakatau-it.co.id', '085691164293');
INSERT INTO `sys_user` VALUES (142, '90552', 'revi.afrianto@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'revi.afrianto@krakatau-it.co.id', '085974391220');
INSERT INTO `sys_user` VALUES (143, '90553', 'maeshat.galithra@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'maeshat.galithra@krakatau-it.co.id', '087872271640');
INSERT INTO `sys_user` VALUES (144, '90560', 'zaenudin@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'zaenudin@krakatau-it.co.id', '081911041883');
INSERT INTO `sys_user` VALUES (145, '90570', 'ahmad.rudi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ahmad.rudi@krakatau-it.co.id', '085212350010');
INSERT INTO `sys_user` VALUES (146, '90571', 'ranuy.umbara@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ranuy.umbara@krakatau-it.co.id', '08971824882');
INSERT INTO `sys_user` VALUES (147, '90572', 'ardisat.putri@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ardisat.putri@krakatau-it.co.id', '081315255753');
INSERT INTO `sys_user` VALUES (148, '90574', 'pithad.pameilia@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'pithad.pameilia@krakatau-it.co.id', '081210901841');
INSERT INTO `sys_user` VALUES (149, '90578', 'kurob@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'kurob@krakatau-it.co.id', '87855561244');
INSERT INTO `sys_user` VALUES (150, '90580', 'dwima.maoreta@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'dwima.maoreta@krakatau-it.co.id', '087783872724');
INSERT INTO `sys_user` VALUES (151, '90582', 'adib.pratama@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'adib.pratama@krakatau-it.co.id', '089524559362');
INSERT INTO `sys_user` VALUES (152, '90583', 'yuanitaa.hijriyah@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'yuanitaa.hijriyah@krakatau-it.co.id', '08953-3794-4392');
INSERT INTO `sys_user` VALUES (153, '90584', 'ilyasa.nugraha@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ilyasa.nugraha@krakatau-it.co.id', '0895606961933');
INSERT INTO `sys_user` VALUES (154, '#N/A', 'singgih.suripto@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'singgih.suripto@krakatau-it.co.id', '0895333466520');
INSERT INTO `sys_user` VALUES (155, '90586', 'muhamadf.afif@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'muhamadf.afif@krakatau-it.co.id', '082125460984');
INSERT INTO `sys_user` VALUES (156, '90589', 'maudy.mareta@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 4, '1', 'maudy.mareta@krakatau-it.co.id', '0877 64136919');
INSERT INTO `sys_user` VALUES (157, '90590', 'sobirin@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'sobirin@krakatau-it.co.id', '0859 20154499');
INSERT INTO `sys_user` VALUES (158, '90593', 'dessy.iaulia@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'dessy.iaulia@krakatau-it.co.id', '081297947976');
INSERT INTO `sys_user` VALUES (159, '90594', 'sigita.nugroho@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'sigita.nugroho@krakatau-it.co.id', '089654884260');
INSERT INTO `sys_user` VALUES (160, '90595', 'kamajh.lomri@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'kamajh.lomri@krakatau-it.co.id', '085966777774');
INSERT INTO `sys_user` VALUES (161, '90596', 'baguss.pratama@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'baguss.pratama@krakatau-it.co.id', '089627418930');
INSERT INTO `sys_user` VALUES (162, '90597', 'rizki.cahyana@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'rizki.cahyana@krakatau-it.co.id', '0895381955272');
INSERT INTO `sys_user` VALUES (163, '90601', 'ryanfernando1995@gmail.com', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ryanfernando1995@gmail.com', '087772400811');
INSERT INTO `sys_user` VALUES (164, '90602', 'ramadhandonny88@gmail.com', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ramadhandonny88@gmail.com', '08998612236');
INSERT INTO `sys_user` VALUES (165, '90603', 'sumiyati@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'sumiyati@krakatau-it.co.id', '083812303570');
INSERT INTO `sys_user` VALUES (166, '90604', 'muhammadf.fajariadi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'muhammadf.fajariadi@krakatau-it.co.id', '082127308617');
INSERT INTO `sys_user` VALUES (167, '90605', 'islahatun.nufusi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'islahatun.nufusi@krakatau-it.co.id', '085893324274');
INSERT INTO `sys_user` VALUES (168, '90606', 'niken.prastywi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'niken.prastywi@krakatau-it.co.id', '081327598000');
INSERT INTO `sys_user` VALUES (169, '90607', 'destiono@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'destiono@krakatau-it.co.id', '081218244722');
INSERT INTO `sys_user` VALUES (170, '90609', 'rahmatullah@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'rahmatullah@krakatau-it.co.id', '081906460124');
INSERT INTO `sys_user` VALUES (171, '90610', 'Agus.Taufik@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'Agus.Taufik@krakatau-it.co.id', '087871909116');
INSERT INTO `sys_user` VALUES (172, '90611', 'afu.fuad@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'afu.fuad@krakatau-it.co.id', '08176020391');
INSERT INTO `sys_user` VALUES (173, '90612', 'mutawali@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'mutawali@krakatau-it.co.id', '085716236862');
INSERT INTO `sys_user` VALUES (174, '90613', 'randy.aprilia@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'randy.aprilia@krakatau-it.co.id', '08998078789');
INSERT INTO `sys_user` VALUES (175, '90614', 'nadia.sofiana@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'nadia.sofiana@krakatau-it.co.id', '089686792593');
INSERT INTO `sys_user` VALUES (176, '90615', 'dania.septiani@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'dania.septiani@krakatau-it.co.id', '081285797294');
INSERT INTO `sys_user` VALUES (177, '90617', 'via.fajriyatin@krakatau-i.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'via.fajriyatin@krakatau-i.co.id', '085157712260');
INSERT INTO `sys_user` VALUES (178, '90618', 'ineke.aminata@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'ineke.aminata@krakatau-it.co.id', '089650577695');
INSERT INTO `sys_user` VALUES (179, '90619', 'galang.gema@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'galang.gema@krakatau-it.co.id', '081314340618');
INSERT INTO `sys_user` VALUES (180, '90620', 'uki.maswan@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'uki.maswan@krakatau-it.co.id', '081384861236');
INSERT INTO `sys_user` VALUES (181, '90621', 'yakub.sulvi@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'yakub.sulvi@krakatau-it.co.id', '087878851010');
INSERT INTO `sys_user` VALUES (182, '90623', 'fitriyani@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'fitriyani@krakatau-it.co.id', '0895321404433');
INSERT INTO `sys_user` VALUES (183, '90625', 'SARA.IASHA@KRAKATAU-IT.CO.ID', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'SARA.IASHA@KRAKATAU-IT.CO.ID', '081314999443');
INSERT INTO `sys_user` VALUES (184, '90626', 'AHMAD.IBROHIM@KRAKATAU-IT.CO.ID', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'AHMAD.IBROHIM@KRAKATAU-IT.CO.ID', '087853051382');
INSERT INTO `sys_user` VALUES (185, '90627', 'siti.masfiroh@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'siti.masfiroh@krakatau-it.co.id', '083890980848');
INSERT INTO `sys_user` VALUES (186, '90628', 'marie.muhammad@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'marie.muhammad@krakatau-it.co.id', '081318008602');
INSERT INTO `sys_user` VALUES (187, '90629', 'dewi.tjningtias@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'dewi.tjningtias@krakatau-it.co.id', '081283009713');
INSERT INTO `sys_user` VALUES (188, '90630', 'muhammad.indigo@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'muhammad.indigo@krakatau-it.co.id', '0895379315454');
INSERT INTO `sys_user` VALUES (189, '90631', 'nadia.prabandini@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'nadia.prabandini@krakatau-it.co.id', '08988654200');
INSERT INTO `sys_user` VALUES (190, '90632', 'dimas.sarifiandy@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'dimas.sarifiandy@krakatau-it.co.id', '0895392989845');
INSERT INTO `sys_user` VALUES (191, '90633', 'dinda.maharani@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'dinda.maharani@krakatau-it.co.id', '082177915591');
INSERT INTO `sys_user` VALUES (192, '90634', 'chandra.widiatmoko@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 2, '1', 'chandra.widiatmoko@krakatau-it.co.id', '08119088686');
INSERT INTO `sys_user` VALUES (193, '2', 'admin.hc@krakatau-it.co.id', '$2y$10$4K1jkZPSudL2OT3BYuz1.OfG/WFue526PURU8i7R5cH81DEGd.U8G', 3, '1', 'admin.hc@krakatau-it.co.id', '');

-- ----------------------------
-- Table structure for trans_alamat
-- ----------------------------
DROP TABLE IF EXISTS `trans_alamat`;
CREATE TABLE `trans_alamat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_pos` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_from` year NULL DEFAULT NULL,
  `date_to` year NULL DEFAULT NULL,
  `city_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 190 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trans_alamat
-- ----------------------------
INSERT INTO `trans_alamat` VALUES (1, '30062', 'Komplek Mako AKABRI RT 008 RW 003 Keluruahan Jatinegara Kaum Kecamatan Pulo Gadung - Jakarta Timur', '', NULL, NULL, '3175', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (2, '30064', 'Plaza Kuningan Menara Selatan Lt. 9 No. 31 Setia Budi - Jakarta Selatan', '', NULL, NULL, '3174', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (3, '00066', 'link leweung sawo RT/RW:003/009, Kota Bumi, Purwakarta, Cilegon ', '42434', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (4, '00076', 'Jalan Tegal Padang No. 5, RT 01/RW 01, Kel. Kotabumi, Kec. Purwakarta, Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (5, '00099', 'BBS III Blok E6/02 Cilegon BANTEN', '42415', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (6, '00106', 'KOMP.BUMI RAKATA ASRI BLOK A6 NO.9/10 CILEGON', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (7, '00114', 'JL. NUSA INDAH RAYA NO.49 BBS 2 CIWEDUS, CILEGON ', '42418', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (8, '00119', 'Taman Cilegon Indah Blok H9 No.6 RT02 RW05 Kelurahan Sukmajaya Kecamatan Jombang, Cilegon - Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (9, '00120', 'BBS III Blok F.1 No. 3 Cilegon', '42415', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (10, '00125', 'Jl. Tekukur IV no 12 BCK Cibeber-Cilegon-Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (11, '00126', 'Bulevar Hijau Blok I12 No.4  RT.06 RW.24 Kel. Pejuang, Kec. Medan Satria, Bekasi', '', NULL, NULL, '3275', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (12, '00129', 'BUMI RAKATA ASRI, CLUSTER 3, BLOK C4 NO. 7, RT/RW : 003/007,CIWEDUS-CILEGON', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (13, '00137', 'Komp. Taman Asri Blok B No. 10 RT. 24 RW. 06 Kel. Taman Baru Kec. Taktakan', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (14, '00138', 'TAMAN CILEGON INDAH BLOK H4 NO.21 RT.03 RW05 KEL.SUKMAJAYA KEC.JOMBANG KOTA CILEGON ', '42416', NULL, NULL, '3275', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (15, '00148', 'TCP BLOK F2 NO.17 RT.02/05 DESA.PELAWAD  KEC.CIRUAS  KAB.SERANG BANTEN', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (16, '00150', 'Jl. Cempaka Blok H2 No 50 BBS II Cilegon Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (17, '00151', 'Jl. Besi no.2 Komplek Krakatau Steel Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (18, '00160', 'Komplek BPP Blok E2 No 8 Kramatwatu Serang', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (19, '00161', 'Taman Cilegon Indah Blok H5 No 15 RT03/05 Sukmajaya, Jombang', '', NULL, NULL, '3517', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (20, '00162', 'Griya Permata Asri Blok C6 No. 25 RT. 07 RW. 04 - Dalung - Cipocok Jaya - Kota Serang - Banten', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (21, '00164', 'Perumahan Pesona Cilegon C5 No.28 Desa Kertasana Kec. Bojonegara Serang ', '42454', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (22, '00165', 'Perum. Puri Anggrek Blok F.12 No.5 Serang', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (23, '00166', 'PERUM BUMI RAKATA ASRI CLUSTER 3 BLOK.C-1 NO.16 RT.03 RW.07 CIWEDUS CILEGON BANTEN ', '42418', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (24, '00168', 'Komplek Griya Permata Asri Blok C14/22 Dalung CipocokJaya Serang', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (25, '00169', 'Metro Cilegon Cluster Grand Cendana Block N2 No.03A', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (26, '00172', 'JL. KH. SULAEMAN - KELAPA DUA RAYA, PERUMAHAN RAHAYU RESIDENCE BLOK D6 NO.12, KEL. KAGUNGAN, KEC. SERANG, KOTA SERANG', '42114', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (27, '00176', 'Villa permata hijau blok c4 no.20 desa serdang kecamatan kramatwatu', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (28, '00177', 'Griya Permata Asri C13 No 8 Zona Lotus Serang Banten', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (29, '00180', 'Perumahan Metro Cluster Cendana Blk M24 No.35 Cilegn', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (30, '00182', 'KOMP. BPI BLOK O NO 13 RW 002 RW 006 KEL. PANGGUNG RAWI KEC. JOMBANG KOTA CILEGON ', '42412', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (31, '00184', 'Lingkungan Taman Baru RT 018 RW 006 Taman Baru Taktakan Kota Serang', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (32, '00185', 'Metro Cilegon Blok M18 No.5 Cluster Metro Cendana', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (33, '10006', 'Jl. Pala Blok A1 No 15 Rt 09/10  BBS 2 Ciwaduk Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (34, '10007', 'KP. CADASARI CURUG RT. 002 RW. 001 DESA. CIINJUK KECAMATAN. CADASARI KABUPATEN. PANDEGLANG PROVINSI. BANTEN', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (35, '10008', 'Jln nusaindah 12 Block J-8 no 03 BBS 2 Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (36, '10011', 'KOMP. METRO CILEGON CLUSTER TROPICAL GARDEN BLOCK P4 NO 10', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (37, '10012', 'Perumahan Puri Delta Blok A No. 15. Kasemen Serang Banten', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (38, '10014', 'Jln. Kawat no.4 Komplek Krakatau Steel, Kel. Kotabumi, Kec. Purwakarta, Kota Cilegon, Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (39, '10015', 'Komp. Bumi Panggung Indah BPI Blok A.1 No.6 RT 004/RW 004 Kelurahan  Panggung Rawi Kecamatan Jombang Kot Cilegon – Banten.', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (40, '10016', 'PCI  BLOK C 14 NO 12 RT?RW 003/005 KEL/DESA HARJATANI KEC. KRAMATWATU', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (41, '10017', 'Jl. KH. Agus Salim No 15 Citangkil Disamping Masjid', '17530', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (42, '10018', 'Jl. Parikesit 3 No. 7 RT05/RW14 Bantarjati, Bogor Utara ', '16153', NULL, NULL, '3281', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (43, '10020', 'Komp. KS Taman Baru no 4 RT 16/005 kec Taktakan Serang Banten ', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (44, '10022', 'Perum BCK blok A15 no.23 rt02 rw06 kel/kec. Cibeber cilegon, banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (45, '10025', 'LINK TEGAL PADANG RT/RW 003/003 , KELURAHAN KEBON DALEM KECAMATAN PURWAKARTA CILEGON (BANTEN)', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (46, '10026', 'Komplek perumahan Lebak Indah Griya Asri Blok E6 No.16 - kramatwatu', '42161', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (47, '10027', 'LINK. DALIRAN RT 05 RW 02 KEL. KEBON DALEM KEC. PURWAKARTA CILEGON - BANTEN', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (48, '10029', 'Jl. Rasdan Blk Kantor Bapeda Bedeng Oren Kamr No.16', '', NULL, NULL, '', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (49, '10030', 'Perum Grand Sutra Cilegon Blok SB2 No. 7 Cilegon Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (50, '10031', 'PCI Blok D 63 No 4 Cilegon Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (51, '10032', 'PCI Blok C 48 No 12 Harjatani, Kramatwatu, Serang, Banten ', '42161', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (52, '10034', 'Link. Jombang Kali No. 64 RT 01/RW 01 Kelurahan Masigit Kecamatan Jombang Kota Cilegon ', '42414', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (53, '10035', 'Jl Kaswari No 7 Kompleks KS', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (54, '10036', 'Link Suka Jaya RT01 RW06 No.31 Kel. Kebon Sari, Kec. Citangkil, Cilegon, Banten.', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (55, '10037', 'Perum. Lebak Indah Griya Asri RT 05/07 Blok C4/No.4, Kramatwatu, Serang', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (56, '10038', 'Komplek Puri Cempaka Blok B5 no 02 Kel. Penancangan, Kec. Cipocok Jaya, Serang, Banten', '42124', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (57, '10039', 'Jl. Ir. Sutami Link. Krenceng No. 53 RT. 01/RW. 04,  Kebonsari - Citangkil, C40 Cilegon - Banten ', '42442', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (58, '10040', 'Graha Arradea Blok K No 15 RT 1 RW 12 Ciherang Dramaga Kab Bogor Jawa Barat ', '16680', NULL, NULL, '3282', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (59, '10041', 'Perum Rahayu Residence C1 / 20 Jl. Kh. Sulaeman desa cantilan Kel. Kagungan Kec. Serang Kota Serang', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (60, '10042', 'Jl. KH. Agus Salim No 15 Citangkil Disamping Masjid', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (61, '10043', 'Jl Kecubung Blok E-1 No14 RT07 RW04 Ciwedus Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (62, '10044', 'Komplek BBS 3 Blok C2 NO 11 A Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (63, '10045', 'Komplek PU, Jl. Sapta Taruna III Blok A3 no. 2 RT 01/08, Kel. Kujang Sari, Kec. Bandung Kidul, Bandung, Jawa Barat', '', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (64, '10046', 'SUKOHARJO IV, KEC. SUKOHARJO, KAB. PRINGSEWU LAMPUNG', '', NULL, NULL, '1874', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (65, '10048', 'Komplek GSI Blok B 8 No 16 RT/RW 004/004 Margatani Kramatwatu Serang', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (66, '10049', 'Bukit Cilegon Asri Blok CF No 1, Cilegon, Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (67, '10050', 'Kp Utan Rt 01 Rw 12 no 80 Cengkareng Timur Jakarta Barat', '', NULL, NULL, '3173', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (68, '10051', 'Perum Grand Sutra Cilegon Block D10 No 18 Kel.Lebak Denok Kec. Citangkil Kota Cilegon Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (69, '10052', 'Link. Weri RT.002 / RW. 002 No. 73 kel. Kebonsari Kec. Citangkil Kota Cilegon - Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (70, '10053', 'Perumahan Kramat Watu Griya Asri Blok C5 No 14', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (71, '10054', 'Jl hiu no 37 kavling blok c RT 002 RW 009 kel. Taman Baru kec. Citangkil Kota Cilegon Banten ', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (72, '10055', 'Jalan Semang Raya No 38 Komplek KS, Cilegon - Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (73, '10056', 'Link. Jombang Wetan RT 06 / RW 05, Cilegon', '42411', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (74, '10057', 'Komp. Bumi Panggung Indah BPI Blok A.1 No.6 RT 004/RW 004 Kelurahan  Panggung Rawi Kecamatan Jombang Kot Cilegon – Banten.', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (75, '10058', 'Jln Radio No 11 Komp Krakatausteel Cilegon Banten ', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (76, '10059', 'JL. PALEM PUTRI ATASN NO 6, CILEGON, BANTEN', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (77, '10061', 'Jl. Bukit Baja Permai IV blok F4 No. 11, Bukit Baja Sejahtera (BBS) III, Ciwaduk, Cilegon, Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (78, '10062', 'Link. Tegalmalang RT.001/002 Kel.Warnasari Citangkil Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (79, '10063', 'Kp. Kadu Aceng, RT/RW 01/06 Ds. Ciodeng, Kec. Sindangresmi Kab. Pandeglang, Banten', '42276', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (80, '10064', 'Jl. Arga Papandayan D1 No 12 RT.010 RW.004. Arga Baja Pura. Gerogol. Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (81, '10065', 'LINK. LEUWEUNG SAWO RT/W.03/09. KOTA BUMI. KEC. PURWAKARTA - CILEGON', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (82, '10066', 'JL.SADEWA KAV.BLOK E NO.59A CILEGON-BANTEN', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (83, '10067', 'Kp. Gudang Kopi RT/RW 16/03 Anyer Serang Banten ', '42466', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (84, '10068', 'bumi rakata asri cluster 3 c3 no 13', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (85, '10069', 'Jl. Sunan Kudus Link. Kelelet Kidul RT/RW 08/04 Kel.Deringo Kec. Citangkil Kota Cilegon Prov.Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (86, '10070', 'Kp. Cibucil Rt 004 Rw 002 No. 51 Desa Sukamanah Kec. Jonngol Kab. Bogor Jawa Barat', '', NULL, NULL, '3282', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (87, '10071', 'Perumnas BCK BLOK A7 No.2', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (88, '10072', 'PERUMAHAN METRO CILEGON BLOK B6 NO.17, RT 02/RW10', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (89, '10073', 'Kav. Brimob, jl. Letnan Jidun no. 92', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (90, '10074', 'Jalan Nusa Indah 1 No. 6 RT 015/RW 005 42418 Kelurahan Ciwedus kecamatan Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (91, '10075', 'JL. Cendana 3 NO. 2 Komp. Jerang Baru Permai RT.05 RW.03, Kel. Karangasem, Kec. Cibeber, Kota Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (92, '10076', 'LINK JOMBANG KALI', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (93, '10077', 'LINK.LUWUNG SAWO RT.001/RW.007 KEL. KEBON SARIKEC.CITANGKIL CILEGON', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (94, '10078', 'Jl. Kagungan Gang Pemuda Lontar Kidul No.37 rt.3/rw.3', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (95, '10079', 'Kp. Kadupereng RT001/RW 001 Kelurahan Cigadung Kecamatan Karang Tanjung,', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (96, '10081', 'Perum Taman Krakatau Block C12 No 09', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (97, '10082', 'Jl.Kecubung 07 Blok E 10 nomor 7, RT/RW 24/05, kelurahan ciwedus, kec : cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (98, '10083', 'Link. Sumber batu RT.01/08 Kel. Kebonsari Kec. Citangkil Kota Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (99, '10084', 'Pondok Cilegon Indah Blok C7 No 6 RT/RW 001/005 Harjatani, Kramatwatu, Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (100, '10085', 'Komplek LBS blok F no 6 Citangkil, Cilegon-Banten ', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (101, '10086', 'Jl. Kramat Eka 1 blok a2no.13 (TOMON) Kramatwatu Serang Banten', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (102, '10087', 'TAMAN BARU KOMP KS NO 26 RT 16 RW 05, KELURAHAN TAMAN BARU KEC TAKTAKAN SERANG BANTEN', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (103, '10088', 'Bunga Raya, Blok E1/8 taman Ciruas Permai, Ciruas Serang ', '42182', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (104, '10089', 'Kp. Sukamulya rt. 13/14 Desa Rancateurup Kec. Labuan Kab. Pandeglang Prov. Banten', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (105, '10090', 'Metro Villa Blok D1 No 27 Cilegon Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (106, '10091', 'Link. Kaligandu Bujang Boros RT 014/RW 006 Kelurahan Purwakarta Kecamatan Purwakarta Kota Cilegon ', '42437', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (107, '90223', 'Jalan Anggrek No 25 BBS 2', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (108, '90284', 'Perum Gedong Cilegon Damai Blok A 27 No 15 Rt.02 Rw.05 kel.kalitimbang kec.cibeber kota Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (109, '90305', 'Perum Bukit Cilegon Asri Blok B1 No. 9 Kelurahan Bagendung Kecamatan Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (110, '90343', 'Kamp. Cori Rt. 001/Rw. 004, Kel./Desa Taktakan, Kec. Taktakan, Kota Serang', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (111, '90398', 'Link kubang menyawak, rt/rw 03/01 kelurahan warnasari kecamatan citangkil, cilegon banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (112, '90410', 'Jl. Dharma Kusuma Link. Pagebangan RT 012 RW 003 Kelurahan Ketileng Kecamatan Cilegon Kota Cilegon - Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (113, '90414', 'Link. Kubang Weling RT 007 RW 003 Ds. Purwakarta Ke. Purwakarta - Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (114, '90429', 'Link. Ciora Wetan Rt/Rw 002/003, Kel. Gerogol, Kec. Gerogol, Kota Cilegon-Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (115, '90430', 'LINK LEUWEUNG SAWO RT 005 RW 009 KELURAHAN KOTABUMI KECAMATAN PURWAKARTA KOTA CILEGON', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (116, '90437', 'Link Rawa Gondang RT 03/06 No 33 Citangkil-Cilegon ', '42441', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (117, '90463', 'Link. Ketileng Barat RT 007/RW 002  Kelurahan Ketileng Kecamatan Cilegon', '42416', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (118, '90467', 'Komp. Taman Warnasari Indah  DWA 34/09 RT/RW 004/005  Kelurahan Warnasari Kecamatan Citangkil', '42443', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (119, '90477', 'Link. Kubang Menyawak RT/RW 001/001, Kel. Warnasari, Kec. Citangkil', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (120, '90483', 'Perm. Rahayu Residen Block C6/9 Rt/Rw 004/009', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (121, '90485', 'Perumahan serang city blok AA 31', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (122, '90487', 'Perumahan Bukit Cilegon Asri Blok CC03, Kelurahan - Bagendung, Kecamatan - Cilegon, Kota Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (123, '90498', 'Link. Kalentemu Barat RT 004 RW 001 Kel. Samang Raya Kec. Citangkil Kota Cilegon - Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (124, '90501', 'Perum Bukit Cilegon Asri Blok AK 09 GG. Edellwis RT 013/RW 006 Kelurahan Bagendung Kecamatan Cilegon ', '42419', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (125, '90505', 'Jl. Bukit Baja Arga BBS 3 B4 No. 5', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (126, '90506', 'Kp. pari kundur, des. Sinarjaya, kec. Mandalawangi, kab. Pandeglang', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (127, '90507', 'Kp.Nangor 004/002  Ds.sukabares Kec.Waringin Kurung   Kab.Serang - Banten', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (128, '90508', 'JL. RA LATIEF PIPA GAS PERUM H ARIF NO 53 LINK PECEK', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (129, '90511', 'Link.leuweung sawo Rt/Rw 005/009 Kota Bumi Purwakarta', '', NULL, NULL, '', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (130, '90512', 'LINK. SUMBER BATU RT 01 RW 08, KEBONSARI, CITANGKIL, CILEGON', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (131, '90515', 'Jl Lada Blok A2 No 49 Kec Cilegon, Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (132, '90517', 'Jl. Ir Sutami Link Linggar Jati RT/002/RW001 Kel. Lebak Denok Kec. Citangkil', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (133, '90531', 'LINK. KUBANG SEPAT INPRES RT. 002/ RW. 010 KEL. CITANGKIL KEC. CITANGKIL KOTA CILEGON - BANTEN', '42441', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (134, '90533', 'jl. kramat eka IV blok D4 No. 11 RT 03/05 ', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (135, '90537', 'Perumnas Cibeber Kencana Blok C 19 No 18', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (136, '90540', 'KOMP. BPI BLOK IB NO.6', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (137, '90541', 'Jl. Raya Palka KM.7 Kp. Nagreg RT, 005/002 Ds./Kec. Pabuaran Serang-Banten', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (138, '90546', 'Grand Pesona Cluster Grand Emerald Blok F6 No.3 Mangkunegara Bojonegara Kabupaten Serang', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (139, '90551', 'Grand Sutera Cilegon blok A1 no 19', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (140, '90552', 'LINK. KUBANG SEPAT RT.003 RW.007 CITANGKIL CILEGON BANTEN', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (141, '90553', 'Komp Grand Sutera blok c2 no 29 lebak denok citangkil cilegon banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (142, '90560', 'Kp. Cempaka Putih Rt 02/05 No. 28 Kec. Anyer Kel. Anyer Serang- Banten', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (143, '90570', 'Link curug masjid Rt/Rw 007/003 Kel/Desa Bagendung, Kecamatan cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (144, '90571', 'Grand Sutera Cilegon blok D10 no 15', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (145, '90572', 'Komp. BBS III A-4 No 06, Ciwaduk Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (146, '90574', 'Griya Cilegon Indah C1 No.34 Serang, Banten. Indonesia', '42161', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (147, '90578', 'Link. Jeruk Tipis RT 001/RW 003 Kelurahan Bulakan Kecamatan Cibeber Kota Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (148, '90580', 'Komplek BBS 2 Jl.Sakura no.21 RT 21/RW 05 Ciwedus – Cilegon, Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (149, '90582', 'Link. Sukadamai RT.03/RW 07N0 77Kel. Panggung Rawi Kec. Jombang Kota Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (150, '90583', 'Komp. GSI Blok H1 No.15 Serang,Indonesia', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (151, '90584', 'Komp. PCI Blok D78 No 19 RT 002/RW005 Kelurahan Cibeber Kecamatan Cibeber', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (152, '90586', 'Pondok Cilegon Indah Blok B 18 No.05, Kelurahan Kedaleman Kecamatan Cibeber', '42422', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (153, '90589', 'Kp. Samboja RT 02/01 Desa Cikoneng Kec Anyar Kab Serang ', '42166', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (154, '90590', 'Perumahan Ciruas', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (155, '90593', 'Jombang Tangsi Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (156, '90594', 'Perum Pejuang Jaya Blok C No 199 RT 06/RW/012 Kelurahan Pejuang Kecamatan Medan Satria, Bekasi', '', NULL, NULL, '3275', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (157, '90595', 'BBS III Blok E-7 No. 26 RT 020/ RW 009 Kelurahan Ciwaduk Kecamatan Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (158, '90596', 'Link. Sukajaya RT 002/RW 006 Kelurahan Kebonsari, Kota Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (159, '90597', 'Perumnas Ciracas Blok C2 No. 163 RT/RW 006/012 Kel. Serang, Kec. Serang, Kota Serang', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (160, '90601', 'Link. Tegal Wangi Solor RT/RW 002/006 Kel. Rawa Arum Kec. Gerogol Kota Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (161, '90602', 'Grand Pesona Cilegon Blok K2 No. 1 RT/RW 002/006 Kel. Mangkunegara Kec. Bojonegara', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (162, '90603', 'Kost Haji Markasan : Jl. Brigadir KH Syamun No. 20, Gang Parkit Ramanuju Lama', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (163, '90604', 'Jl. Trulek II Blok HG 15 No.9 RT/RW 001/008 Kel. Parigi, Kec. Pondok Aren, Kota Tangerang Selatan', '', NULL, NULL, '3679', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (164, '90605', 'Jl. H. Agus Salim Delingseng No. 18 Kebon Sari Kecamatan Citangkil Kota Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (165, '90606', 'Perum Bumi Rakata Asri C3 No. 02  Kelurahan Ciwedus Kecamatan Cilegon Kota Cilegon Banten', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (166, '90607', 'PERUM. METRO CILEGON CLUSTER GRAND CENDANA BLOK N 3 NO 5', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (167, '90609', 'perum praja mandiri blok c7 no.1, cibeber, cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (168, '90610', 'Jln.Garuda RT/RW :04/14 NO.18 Cimuncang Cilik Kel.Cimuncang  - Kota Serang Banten', '42111', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (169, '90611', 'PCI BLOK C61. No.12', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (170, '90612', 'Jl. Kedung Kemiri V No. 66A Kav. Blok F Rt 01/07 Ciwaduk -Cilegon Banten ', '42415', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (171, '90613', 'Link. Kelapa Dua RT 001 RW 007 Kel. Kagungan Kec. Serang Kota Serang', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (172, '90614', 'Bukit Permai Blok L15/16 RT 003 RW 015 Kel. Serang Kecamatan Serang Kota Serang', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (173, '90615', 'BBS III Blok C.8 No.09 RT 020 RW 009 Kel. Ciwaduk Kecamatan Cilegon Kota Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (174, '90617', 'Link. Jerang Tengah RT 002 RW 002 Kel. Karang Asem Kecamatan Cibeber Kota Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (175, '90618', 'Perum. Puri Kanaka Blok C.2 No. 18 RT 003 RW 007 Kel. Gelam Kec. Cipocok Jaya', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (176, '90619', 'Kp. Gunung Santri RT 001 RW 006 Kel. Bojonegara Kec. Bojonegara Serang', '', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (177, '90620', 'Komp. Korem Blk. D6 No.8 RT 002 RW 004 Kel. Cilaku Kec. Curug Kota Serang', '', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (178, '90621', 'Jl. Menteng Atas Selatan III No.51/2 RT 001 RW 005 Kel. Menteng Atas Kecamatan Setiabudi Jakarta Selatan', '', NULL, NULL, '3174', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (179, '90623', 'Link. Cigeceh RT 002 RW 001 kelurahan Gedong Dalem Kecamatan Jombang Kota Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (180, '90625', 'Jl. Klayan Blok C1 No. 19 RT 003 RW 017 Kel. Jatimakmur Kota Bekasi', '', NULL, NULL, '3275', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (181, '90626', 'Link Karang Jetak RTRW 007/002 Kel Banjar Negara Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (182, '90627', 'Link Daliran Rt/Rw 001/002 Kebon Dalem Purwakarta Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (183, '90628', 'Link Asem Gebog 3/6 Rawa Arum Gerogol Rt/Rw 003/005 Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (184, '90629', 'Komplek GSI Blok I.6 No 24 RT/RW 009/006 Margatani Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (185, '90630', 'Link Gerem Raya RT/RW 001/004 Gerem Grogol Cilegon Gerogol', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (186, '90631', 'JL.Melati Blok I-7 No.5 BBS II RT/RW 013/006 Bendungan Cilegon', '', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (187, '90632', 'Bukit Gading Balaraja M2 No. 16 RT/RW 002/007 Cangkudu Balaraja', '', NULL, NULL, '3603', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (188, '90633', 'Jl. Mayor Salim Batubara No. 01 AB RT/RW 009/003 Sekip Jaya Palembang', '', NULL, NULL, '1671', '1', NULL, NULL, NULL, NULL);
INSERT INTO `trans_alamat` VALUES (189, '90634', 'Jl. AMD 28 No. 58 B RT 06 RW 05 Balekambang, Kramatjati, Jakarta Timur, DKI Jakarta', '', NULL, NULL, '3176', '1', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for trans_cuti
-- ----------------------------
DROP TABLE IF EXISTS `trans_cuti`;
CREATE TABLE `trans_cuti`  (
  `FurloughNo` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nik` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cc` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_cuti` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keperluan` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_mulai` date NULL DEFAULT NULL,
  `tanggal_selesai` date NULL DEFAULT NULL,
  `jumlah_hari` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `periode` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `sisa_cuti_before` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sisa_cuti_after` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`FurloughNo`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trans_cuti
-- ----------------------------

-- ----------------------------
-- Table structure for trans_dokumen
-- ----------------------------
DROP TABLE IF EXISTS `trans_dokumen`;
CREATE TABLE `trans_dokumen`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file_cv` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_transkrip_nilai` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_sertifikat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_ktp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_kk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_npwp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `nik`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trans_dokumen
-- ----------------------------

-- ----------------------------
-- Table structure for trans_jatah_cuti
-- ----------------------------
DROP TABLE IF EXISTS `trans_jatah_cuti`;
CREATE TABLE `trans_jatah_cuti`  (
  `nik` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `periode` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `valid_from` date NULL DEFAULT NULL,
  `valid_to` date NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jatah_cuti` int NULL DEFAULT NULL,
  PRIMARY KEY (`nik`, `periode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trans_jatah_cuti
-- ----------------------------

-- ----------------------------
-- Table structure for trans_keluarga
-- ----------------------------
DROP TABLE IF EXISTS `trans_keluarga`;
CREATE TABLE `trans_keluarga`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `relation_code` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_kelamin` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `born_date` datetime NULL DEFAULT NULL,
  `born_city` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bloodtype` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `edu_code` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lembaga_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_ktp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_hp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_modified` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 176 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of trans_keluarga
-- ----------------------------
INSERT INTO `trans_keluarga` VALUES (1, '00066', '14', 'Sesi Mulyasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081388714626', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (2, '00076', '01', 'Eni Handayani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081213726034', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (3, '00106', '02', 'Yuni Rahma Puti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081311971770', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (4, '00114', '02', 'Dara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081290338825', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (5, '00119', '01', 'Srikanti Wardani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08129088090', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (6, '00120', '14', 'Khony Suminar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08119921092', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (7, '00125', '01', 'Tri Susanti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087870875020', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (8, '00126', '00', 'Aris Wahyu NJ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0818802733', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (9, '00129', '22', 'Niken', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081327598000', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (10, '00137', '01', 'Grace Marina Sophia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081906295009', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (11, '00138', '01', 'Ika Lianti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081383428514', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (12, '00148', '01', 'Maleha Akhir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085216711102', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (13, '00150', '14', 'Feri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081311044636', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (14, '00151', '01', 'Sulistyawati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081281476555', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (15, '00160', '01', 'Yuniatin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081317908870', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (16, '00161', '01', 'Dewi Kusumawati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082115930974', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (17, '00162', '01', 'Siti Ulfah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087773000866', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (18, '00164', '00', 'Triardi Setiyandoko', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085210194251', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (19, '00165', '00', 'Roy Amrullah Ritonga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087871718389', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (20, '00169', '', 'Alinda Mardiana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085711026694', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (21, '00172', '', 'Nuryadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08999783623', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (22, '00176', '01', 'Retna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087780698660', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (23, '00177', '01', 'Rina Febriani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '089618842724', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (24, '00180', '13', 'Syarifah Hanum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087871563254', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (25, '00182', '', 'Cut Intan Majid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087871790902', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (26, '00184', '01', 'Mahfudzoh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087808767757', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (27, '10007', '01', 'Nur Asih', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '089655394102', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (28, '10011', '11', 'Lili Somantri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085216216833', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (29, '10012', '01', 'Rosdiana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087871252205', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (30, '10014', '', 'Alfian Wiralodra Pramestha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087878227110', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (31, '10015', '00', 'AFRIYADI SAUQI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087771045723', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (32, '10016', '', 'Devina Itsnia Rizka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085778589313', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (33, '10017', '', 'Budiarto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081386763663', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (34, '10018', '', 'saheb adin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081314020909', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (35, '10020', '12', 'Tini Rostini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085921593946', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (36, '10022', '', 'Dwiki Ega Kusuma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087774058761', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (37, '10025', '', 'Rinny Lestari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085959453811', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (38, '10026', '', 'devi novianty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '088111222515', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (39, '10027', '', 'Merry Atika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085213926995', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (40, '10029', '', 'Azra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08126784102', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (41, '10030', '00', 'Hafiz Yunaz Aljazirah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081290488167', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (42, '10031', '', 'Deta Aulia Lestapiana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08986557624', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (43, '10032', '11', 'Suparyanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08176328716', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (44, '10034', '00', 'Adhi Nugraha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085776345777', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (45, '10035', '01', 'Arlina Purnamasari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08121576712', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (46, '10036', '', 'Sony Widodo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08128007119', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (47, '10037', '01', 'Yanti Nurhayanti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081250252969', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (48, '10038', '', 'Rachmawati Jihan Dewi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087788085765', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (49, '10039', '01', 'Lin Herlina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087771954582', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (50, '10040', '01', 'Yuli Nuryatin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087877274295', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (51, '10041', '01', 'Rani Daniati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087871036462', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (52, '10042', '', 'Yulia Antika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085355104347', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (53, '10043', '01', 'Juliana Agesni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081290378815', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (54, '10044', '11', 'Amirul Mutamar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08121182222', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (55, '10045', '', 'Arena Yogi Pratiwi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081219542213', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (56, '10048', '01', 'Ika Wahyuni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087871917000', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (57, '10049', '', 'Trias Karina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08996598991', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (58, '10050', '01', 'Endah Fajarwati Adawiyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08158256386', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (59, '10051', '16', 'Sri Sinta Paulina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '089685172806', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (60, '10052', '01', 'Handayani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082226660301', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (61, '10053', '', 'Wahyu Puspitasari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '083819434234', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (62, '10054', '01', 'Ratih Kurniasari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081933181118', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (63, '10055', '11', 'Bakhrul Ulum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08111213145', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (64, '10056', '', 'Gilang Risky Ariqsa Sohar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '083890573599', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (65, '10057', '01', 'Marlita Dewi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087871672750', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (66, '10058', '01', 'Ina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '089698096025', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (67, '10059', '11', 'Adi Purnomo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081319771809', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (68, '10061', '11', 'Abdul Halim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '083812168288', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (69, '10062', '01', 'Budiyawati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087774304378', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (70, '10063', '', 'Edi Efendi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085282534124', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (71, '10064', '01', 'Puspita Rahayu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081223584277', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (72, '10065', '', 'HAYUMI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087871590004', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (73, '10066', '', 'Huda cahyati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081806190403', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (74, '10067', '', 'Hudaefah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087774592286', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (75, '10068', '01', 'Jayanti Apriliyana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087808165556', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (76, '10069', '01', 'Siti Nafisah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (77, '10070', '01', 'Wulan Sri Rahayu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08561102115', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (78, '10071', '12', 'Sukriyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081224970184', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (79, '10072', '', 'Dedy Irmadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081911151996', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (80, '10073', '01', 'Fida Asfia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087880002444', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (81, '10074', '01', 'Ana Herawati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '089609782096', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (82, '10075', '14', 'Mirza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '083805341013', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (83, '10076', '01', 'Listayuniarti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08191120878', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (84, '10077', '01', 'Atikoh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0895392145970', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (85, '10078', '01', 'Ana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081311472545', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (86, '10079', '12', 'Ujfah Lolanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087772855586', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (87, '10081', '01', 'Khusnul Hotimah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087786657677', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (88, '10082', '01', 'Alifa Millayanti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081996418874', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (89, '10083', '01', 'Meti Amalia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087772245890', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (90, '10084', '12', 'Amining Sri R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081218594130', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (91, '10085', '00', 'Galih Pradipta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085643499188', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (92, '10086', '01', 'Listie Yuliastuti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082127506590', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (93, '10087', '11', 'H. Suwardi Eko Susilo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081911145240', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (94, '10088', '11', 'Bambang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0819672003', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (95, '10089', '11', 'Amad Imaduddin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087871852999', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (96, '10091', '11', 'Tohir As', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08176661664', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (97, '90223', '01', 'Meylin Afrianita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081318159035', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (98, '90284', '14', 'Rosyad Syarifudin Azzam ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085930045089', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (99, '90305', '01', 'Boungenville', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085776235118', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (100, '90343', '01', 'Eka Yunita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087808407843', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (101, '90398', '00', 'Deden Angga Rusdiana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087772070333', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (102, '90410', '01', 'Alfiani Nur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '089649306650', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (103, '90414', '01', 'Qurrotul Aini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '083873502616', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (104, '90429', '01', 'Lisnawati ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087873104197', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (105, '90430', '12', 'Siti Rukiyah ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081911198183', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (106, '90437', '14', 'Nunung Herawati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081289054232', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (107, '90463', '01', 'Eka Meiliawati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0813-8446-8203', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (108, '90467', '12', 'Dewi Rosita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087871412854', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (109, '90477', '12', 'Afridawani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082188617060', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (110, '90483', '11', 'M Kholid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085218923246', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (111, '90485', '00', 'Andria Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081380752788', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (112, '90487', '00', 'Lalu Sofyan Efendi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '083891789515', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (113, '90498', '13', 'Risye Andi Ariyanto ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08176012007', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (114, '90501', '01', 'Indah Mayasari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0877-7400-4327', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (115, '90505', '14', 'Ashifa ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085954504049', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (116, '90506', '13', 'Jodi Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '87772964005', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (117, '90507', '13', 'Ryandi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087777944153', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (118, '90508', '11', 'Maryanto ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08176349894', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (119, '90511', '13', 'Agus Munadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082210971196', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (120, '90512', '', 'Mufrodi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085313889415', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (121, '90515', '01', 'Aprilia Nur Hayati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081220360881', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (122, '90517', '14', 'Tatep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087771114699', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (123, '90531', '00', 'Feri Apriadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\'082110272947', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (124, '90533', '', 'Roihan ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081911229331', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (125, '90537', '01', 'Eka Zakiatul', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082334567355', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (126, '90540', '11', 'Sardjono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082122435729', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (127, '90541', '01', 'Yayu Sundari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082125908673', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (128, '90551', '01', 'Desi Pramilasari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085692161152', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (129, '90552', '11', 'Yanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087871984695', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (130, '90553', '01', 'Wiwi Widiastuti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '089690137719', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (131, '90560', '01', 'Dwi Lastri Welanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '083806635132', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (132, '90570', '01', 'Siti Nakiyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85939581766', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (133, '90571', '01', 'Oktevy Praselina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085945958693', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (134, '90572', '11', 'Fachrurrozi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08128152164', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (135, '90574', '', 'Siti Aminah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082111149423', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (136, '90578', '01', 'Titin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '083852592886', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (137, '90580', '11', 'Eko Supono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087771278158', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (138, '90582', '12', 'Rustini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087889167811', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (139, '90583', '12', 'Dadah Jubaedah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081288350840', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (140, '90584', '11', 'Syafrudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087871412770', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (141, '90586', '11', 'Slamet Riyanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08129596572', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (142, '90589', '11', 'Rohman Hidayat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08170757039', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (143, '90590', '13', 'Ratu Enna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08111772805', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (144, '90593', '14', 'Yuanita ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08953-3794-4392', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (145, '90594', '13', 'Teguh Noor Rachman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085156807956', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (146, '90595', '13', 'Rangga Gading', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0816612089', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (147, '90596', '12', 'Asih Yuningsih', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082311618835', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (148, '90597', '14', 'Rahmat Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '089633439407', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (149, '90601', '11', 'Fahrurohim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0817187822', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (150, '90602', '12', 'Sumarni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082310428247', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (151, '90603', '14', 'Najmudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082297481325', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (152, '90604', '12', 'Bintang Sundari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08111811340', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (153, '90605', '23', 'Khaerul Fatah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085781758862', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (154, '90607', '01', 'Rita Rosita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081283388263', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (155, '90610', '02', 'Doni Fitriana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087771010299', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (156, '90612', '', 'Novia Maylasari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '089696177541', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (157, '90613', '11', 'Baihaqi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085960006003', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (158, '90614', '11', 'Kumhari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08179008282', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (159, '90615', '11', 'Yayat Surya Hidayat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081289913899', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (160, '90617', '12', 'Suherni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081365701373', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (161, '90618', '13', 'Indriyani Erwita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087774569910', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (162, '90619', '13', 'Ucha Permata Annisa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '089651083425', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (163, '90620', '11', 'Toha Aliyudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082113259744', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (164, '90621', '01', 'Precillia Yeece M Rompis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081287555060', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (165, '90623', '13', 'Mesi Winenti ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '083896661137', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (166, '90625', '14', 'Syifa ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085710101212', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (167, '90626', '11', 'Arifudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087871078160', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (168, '90627', '11', 'Jahidi ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08978205580', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (169, '90628', '14', 'Faisal Ramli Muhamad ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081266088327', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (170, '90629', '11', 'Prabowo Sudarmono ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085219502979', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (171, '90630', '11', 'Sudarmin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081905554228', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (172, '90631', '11', 'Sufroni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085946998610', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (173, '90632', '12', 'Suhaeni ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0895321822256', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (174, '90633', '00', 'Fhielza Aditiya Pratama ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '082169025901', NULL, NULL, NULL, NULL);
INSERT INTO `trans_keluarga` VALUES (175, '90634', '12', 'Herlina ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0811908840', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for trans_pendidikan
-- ----------------------------
DROP TABLE IF EXISTS `trans_pendidikan`;
CREATE TABLE `trans_pendidikan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `educode` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jurusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `edu_place` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_from` year NULL DEFAULT NULL,
  `date_to` year NULL DEFAULT NULL,
  `city_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pendidikan_terakhir` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_modified` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 226 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of trans_pendidikan
-- ----------------------------
INSERT INTO `trans_pendidikan` VALUES (1, '30064', '8', '95405', 'Universitas Gunadarma', NULL, NULL, '3276', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (2, '00066', '3', '', 'SMK Krakatau Steel', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (3, '00076', '8', '20201', 'ITS Surabaya', NULL, NULL, '3578', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (4, '00099', '3', '', 'SMA', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (5, '00106', '3', '', 'SMAN  IX BANDUNG', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (6, '00114', '4', '63612', 'YAYASAN PATUHA BANDUNG', NULL, NULL, '3204', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (7, '00119', '6', '55401', 'UPN Jakarta', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (8, '00120', '6', '95406', 'PAAP - FE Universitas Padjadjara Bandung', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (9, '00125', '6', '56401', 'POLITEKNIK ITB', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (10, '00126', '8', '22201', 'Universitas Sebelas Maret', NULL, NULL, '3372', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (11, '00129', '6', '62401', 'UNIVERSITAS NEGERI SOEDIRMAN PURWOKERTO (UNSOED)', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (12, '00137', '6', '95407', 'IAI Bandung', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (13, '00138', '8', '61201', 'UNIVERSITAS TERBUKA', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (14, '00148', '5', '', 'APPRINTICE PT.KRAKATAU STEEL CILEGON ', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (15, '00150', '3', '', 'SMA PGRI II Surabaya', NULL, NULL, '3578', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (16, '00151', '6', '62401', 'Universitas Gadjahmada Yogyakarta', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (17, '00160', '8', '21201', 'ITS Surabaya', NULL, NULL, '3578', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (18, '00161', '6', '56401', 'POLITEKNIK ITB BANDUNG', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (19, '00162', '8', '57201', 'STMIK Muhammadiyah Jakarta', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (20, '00164', '6', '56401', 'POLITEKNIK ITB', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (21, '00165', '8', '57201', 'STIMIK Muhammadiyah Serang', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (22, '00166', '8', '55201', 'UNIVERSITAS GUNADARMA ', NULL, NULL, '3276', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (23, '00168', '8', '55201', 'STMIK Bandung', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (24, '00169', '8', '55201', 'Universitas Telkom Bandung', NULL, NULL, '3204', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (25, '00172', '8', '55201', 'STT-PLN ', NULL, NULL, '3173', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (26, '00176', '8', '55201', 'UNIKOM Bandung', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (27, '00177', '6', '55401', 'UNBAJA', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (28, '00180', '8', '95408', 'Universitas Indonesia', NULL, NULL, '3276', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (29, '00182', '8', '55201', 'STTIKOM Insan Unggul', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (30, '00184', '8', '61201', 'STMIK Bandung ', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (31, '00185', '6', '56401', 'AKAKOM YOGYAKARTA', NULL, NULL, '3402', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (32, '10007', '3', '', 'SMK NEGERI 1 PANDEGLANG ( PANDEGLANG )', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (33, '10008', '8', '55201', 'Universitas serang raya', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (34, '10011', '8', '95405', 'UNIVERSITAS KOMPUTER INDONESIA', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (35, '10012', '8', '55201', 'UNIKOM Bandung', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (36, '10014', '8', '57201', 'UNIVERSITAS GUNADARMA ', NULL, NULL, '3276', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (37, '10015', '8', '73201', 'UNIVERSITAS INDONESIA,', NULL, NULL, '3276', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (38, '10016', '8', '95408', 'IPB', NULL, NULL, '3282', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (39, '10017', '8', '45201', 'UNIVERSITAS NEGERI SEMARANG', NULL, NULL, '3374', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (40, '10018', '8', '61201', 'IPB', NULL, NULL, '3282', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (41, '10020', '8', '47201', 'Universitas Padjadjaran', NULL, NULL, '3211', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (42, '10022', '8', '21201', 'INSTITUT TEKNOLOGI SEPULUH NOPEMBER ', NULL, NULL, '3578', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (43, '10025', '8', '57201', 'Universitas Serang Raya (UNSERA)', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (44, '10026', '8', '55201', 'STMIK Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (45, '10027', '3', '', 'SMA BINA BANGSA CILEGON', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (46, '10029', '8', '26201', 'Universitas Komputer Indonesia', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (47, '10030', '8', '73201', 'UNSRI', NULL, NULL, '1671', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (48, '10031', '8', '62201', 'Universitas Telkom', NULL, NULL, '3204', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (49, '10032', '8', '26201', 'Universitas Islam Indonesia', NULL, NULL, '3404', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (50, '10034', '8', '26201', 'Universitas Sultan Ageng Tirtayasa ', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (51, '10035', '8', '41221', 'UGM', NULL, NULL, '3404', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (52, '10036', '8', '26201', 'Institut Teknologi Nasional Malang ', NULL, NULL, '3573', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (53, '10037', '8', '26201', 'UNIVERSITAS WIDYATAMA BANDUNG', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (54, '10038', '8', '26201', 'Universitas Katolik Parahyangan Bandung', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (55, '10039', '8', '55201', 'STMIK DHARMA NEGARA BANDUNG, ', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (56, '10040', '6', '55401', 'AMIKOM Yogyakarta ', NULL, NULL, '3404', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (57, '10041', '6', '95407', 'Politeknik LP3I Bandung', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (58, '10042', '8', '34201', 'Universitas Padjadjaran ', NULL, NULL, '3211', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (59, '10043', '8', '57201', 'UNIVERSITAS INDONESIA', NULL, NULL, '3276', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (60, '10044', '8', '57201', 'Telkom University', NULL, NULL, '3204', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (61, '10045', '8', '95409', 'Institut Pertanian Bogor', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (62, '10046', '8', '20201', 'UNIVERSITAS LAMPUNG', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (63, '10048', '8', '62201', 'Universitas Sultan Ageng Tirtayasa', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (64, '10049', '8', '95412', 'Universitas Gadjah Mada', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (65, '10050', '8', '55201', 'Universitas MercuBuana', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (66, '10051', '8', '57201', 'UNIVERSITAS GUNADARMA ', NULL, NULL, '3276', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (67, '10052', '8', '62201', 'Universitas Serang Raya', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (68, '10053', '8', '57201', 'Universitas Gunadarma', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (69, '10054', '6', '95413', 'Universitas Gadjah Mada ', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (70, '10055', '8', '73201', 'Universitas Brawijaya', NULL, NULL, '3573', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (71, '10056', '8', '62201', 'UNTIRTA', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (72, '10057', '8', '74201', 'UNTIRTA', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (73, '10058', '8', '20201', 'Universitas Islam Indonesia', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (74, '10059', '8', '62201', 'UNIVERSITAS MUHAMMADYAH YOGYAKARTA', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (75, '10061', '8', '55201', 'Universitas 17 Agustus 1945 Surabaya', NULL, NULL, '3578', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (76, '10062', '5', '95414', 'LP3i Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (77, '10063', '8', '55201', 'Universitas Banten Jaya', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (78, '10064', '8', '95415', 'Universitas Serang Raya (UNSERA)', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (79, '10065', '3', '', 'STM PGRI SERANG THN 1995', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (80, '10066', '6', '95416', 'INSTITUT PERTANIAN BOGOR', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (81, '10067', '8', '55201', 'STIKOM Al-Khairiyah Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (82, '10068', '6', '21401', 'STT WIWOROTOMO PURWOKERTO', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (83, '10069', '8', '55201', 'STIKOM AL-Khairiyah Citangkil', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (84, '10070', '8', '55201', 'STMIK Banten Jaya Serang', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (85, '10071', '8', '95417', 'Sekolah Tinggi Ilmu Ekonomi Manajemen', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (86, '10072', '8', '26201', 'UNTIRTA', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (87, '10073', '8', '32201', 'UPN Veteran Yogyakarta', NULL, NULL, '3404', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (88, '10074', '8', '41211', 'IPB', NULL, NULL, '3282', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (89, '10075', '8', '20201', 'UNIVERSITAS TEKNOLOGI NUSANTARA', NULL, NULL, '3281', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (90, '10076', '8', '55201', 'UNIVERSITAS BANTEN JAYA', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (91, '10077', '8', '55201', 'SEKOLAH TINGGI ILMU KOMPUTER AL-KHAIRIYAH CITANGKIL', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (92, '10078', '8', '55201', 'UNBAJA', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (93, '10079', '8', '62201', 'Universitas Sultan Ageng Tirtayasa', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (94, '10081', '8', '55201', 'STMIK CILEGON', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (95, '10082', '6', '95418', 'Universitas Padjadjaran', NULL, NULL, '3211', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (96, '10083', '8', '55201', 'STMIK Banten Jaya Serang  (UNBAJA)', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (97, '10084', '8', '13201', 'Universitas Diponegoro', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (98, '10085', '8', '95408', 'Universitas Indonesia ', NULL, NULL, '3276', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (99, '10086', '8', '55201', 'Universitas Komputer Indonesia', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (100, '10087', '8', '55201', 'UNIVERSTITAS PEMBANGUNAN NASIONAL \"VETERAN\" YOGYAKARTA, ', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (101, '10088', '8', '55201', 'Universitas Banten Jaya', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (102, '10089', '8', '55201', 'STIKOM Al-Khairiyah ', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (103, '10090', '8', '55201', 'Universitas Sanata Dharma Yogyakarta', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (104, '10091', '8', '26201', 'Universitas Sultan Ageng Tirtayasa', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (105, '90223', '8', '55201', 'Universitas Serang Raya ', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (106, '90284', '3', '', 'SMK Negeri 1 Cilegon Teknik Komputer Jaringan ', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (107, '90305', '8', '55201', 'STIKOM AL-KHAIRIYAH CILEGON ', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (108, '90343', '8', '21201', 'Universitas Subang ', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (109, '90398', '3', '', 'SMKN 2 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (110, '90410', '3', '', 'SMK NEGERI 1 CILEGON', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (111, '90414', '6', '57401', 'Politeknik Piksi Input Serang', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (112, '90429', '8', '55201', 'STMIK Cilegon ', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (113, '90430', '3', '', 'SMK', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (114, '90463', '3', '', 'SMK Yp 17 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (115, '90467', '3', '', 'SMK prisma kota serang', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (116, '90477', '8', '55201', 'Unsera', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (117, '90483', '8', '57201', 'STMIK BANTEN JAYA SERANG', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (118, '90485', '9', '61101', 'Universitas Sultan Ageng Tirtayasa', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (119, '90487', '8', '55201', 'STIKOM Insan Unggul', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (120, '90498', '8', '55201', 'STMIK BANTEN JAYA ', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (121, '90501', '8', '55201', 'INSAN UNGGUL', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (122, '90505', '8', '95419', 'UNIVERSITAS TELKOM', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (123, '90506', '3', '', 'SMKN 8 Pandeglang', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (124, '90507', '3', '', 'SMAN 1 Kramat Watu', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (125, '90508', '8', '55201', 'STTIKOM INSAN UNGGUL ', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (126, '90511', '3', '', 'SMK krakatau steel', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (127, '90512', '3', '', 'SMK YP Fatahillah 2 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (128, '90515', '6', '95418', 'Institut Pertanian Bogor ', NULL, NULL, '3282', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (129, '90517', '3', '', 'SMK Negeri 2 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (130, '90531', '8', '88203', 'UNIVERSITAS SULTAN AGENG TIRTAYASA', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (131, '90533', '8', '', 'Universitas Sultan Ageng Tirtayasa', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (132, '90537', '8', '55201', 'Universitas Negeri Malang', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (133, '90540', '8', '55201', 'Universitas Gunadarma Depok', NULL, NULL, '3276', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (134, '90541', '8', '55201', 'UNIVERSITAS BANTEN JAYA', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (135, '90546', '8', '55201', 'Universitas Bina Nusantara ', NULL, NULL, '3173', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (136, '90551', '8', '57201', 'Universitas Bina Nusantara,', NULL, NULL, '3173', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (137, '90552', '6', '57401', 'STIKOM AL-KHAIRIYAH ', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (138, '90553', '3', '', 'SMK PELITA NUSANTARA SERANG', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (139, '90560', '6', '95410', 'STT MANDALA BANDUNG ', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (140, '90570', '3', '', 'MA Bany nawawi gelereng Jalan Fatahilah Gelereng, RT.05/RW.02, Kepuh, Ciwandan, Kota Cilegon, Banten 42446', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (141, '90571', '8', '95408', 'Esa Unggul', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (142, '90572', '8', '55201', 'Universitas Brawijaya', NULL, NULL, '3573', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (143, '90574', '8', '95411', 'Universitas Telkom', NULL, NULL, '3204', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (144, '90578', '8', '55201', 'STIKOM Al-Khairiyah ', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (145, '90580', '8', '55201', 'Universitas Gunadarma', NULL, NULL, '3276', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (146, '90582', '8', '56201', 'Universitas Serang Raya', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (147, '90583', '7', '55301', 'ITB', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (148, '90584', '8', '55201', 'Universitas Brawijaya', NULL, NULL, '3573', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (149, '90586', '8', '55201', 'UII', NULL, NULL, '3404', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (150, '90589', '8', '61201', 'Sekolah Tinggi Ilmu Ekonomi Dwimulya', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (151, '90590', '3', '', 'SMK', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (152, '90593', '8', '95420', 'Universitas Pendidikan Indonesia', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (153, '90594', '6', '95421', 'Universitas Bina Sarana Informatika', NULL, NULL, '3174', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (154, '90595', '6', '95422', 'Universitas Padjajaran', NULL, NULL, '3211', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (155, '90596', '3', '', 'SMK YP Fatahillah 1 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (156, '90597', '8', '95423', 'Universitas  Pendidikan Indonesia', NULL, NULL, '3273', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (157, '90601', '8', '55201', 'STMIK Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (158, '90602', '8', '55201', 'Universitas Al-Khairiyah', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (159, '90603', '8', '55201', 'STIKOM Al-Khairiyah ', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (160, '90604', '8', '20201', 'Telkom University', NULL, NULL, '3204', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (161, '90605', '8', '55201', 'Universitas Banten Jaya', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (162, '90606', '8', '61201', 'Universitas Jendral Soedirman', NULL, NULL, '3302', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (163, '90607', '3', '', 'SMK NEGERI 1 CILEGON', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (164, '90609', '6', '', 'Poltek Muhamadiyah Serang', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (165, '90610', '3', '', 'STM PGRI KOTA SERANG', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (166, '90612', '6', '95424', 'IPB-Bogor ', NULL, NULL, '3282', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (167, '90613', '8', '20201', 'Universitas Sultan Ageng Tirtayasa', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (168, '90614', '8', '95425', 'Universitas Sultan Ageng Tirtayasa', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (169, '90615', '8', '46201', 'Universitas Indonesia', NULL, NULL, '3276', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (170, '90617', '3', '', 'SMA Negeri 3 Cilegon Matematika & IPA', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (171, '90618', '8', '62201', 'Sekolah Tinggi Ilmu Ekonomi (STIE) Banten', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (172, '90619', '8', '57201', 'S1 Sistem Informasi Universitas Banten Jaya', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (173, '90620', '8', '62201', 'Universitas Sultan Ageng Tirtayasa', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (174, '90621', '3', '', 'SMA Sunda Kelapa Jakarta Pusat Jurusan IPA', NULL, NULL, '3171', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (175, '90623', '3', '', 'SMK Swasta Yayasan Pendidikan 17 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (176, '90625', '8', '64201', 'President University', NULL, NULL, '3216', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (177, '90626', '3', '56401', 'SMK Fatahilah 2', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (178, '90627', '8', '62201', 'UNIVERSITAS SULTAN AGENG TIRTAYASA', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (179, '90628', '8', '62201', 'UNIVERSITAS SULTAN AGENG TIRTAYASA', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (180, '90629', '8', '62201', 'Universitas Trisakti', NULL, NULL, '3173', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (181, '90630', '8', '55201', 'UNIVERSITAS TEKNOKRAT INDONESIA', NULL, NULL, '1871', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (182, '90631', '8', '55201', 'Institut Teknologi Sepuluh Nopember', NULL, NULL, '3578', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (183, '90632', '8', '55201', 'Universita Serang Raya', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (184, '90633', '8', '55201', 'Universitas Sriwijaya', NULL, NULL, '1671', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (185, '90634', '7', '55301', 'Politeknik Negeri Jakarta', NULL, NULL, '3276', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (186, '20002', '3', '', 'STM PGRI Serang', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (187, '20003', '8', '', 'STMIK Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (188, '20005', '3', '', 'STM Swasta Lengkong Bandung', NULL, NULL, '', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (189, '20006', '3', '', 'STM Pusdikhubad Cimahi', NULL, NULL, '3277', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (190, '20008', '3', '', 'STM Muhammadiyah Pekalongan', NULL, NULL, '3375', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (191, '20010', '3', '', 'SMA IPA SMA Kogoro Kuningan', NULL, NULL, '3208', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (192, '20011', '3', '', 'SMK YPWKS', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (193, '20012', '8', '', 'STMIK Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (194, '20013', '3', '', 'SMKN 2 Serang', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (195, '20014', '3', '', 'SMKN 2 Serang', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (196, '20015', '3', '', 'SMK PGRI 1 Serang', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (197, '20016', '3', '', 'SMK Negeri 2 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (198, '20017', '3', '', 'SMKN 1 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (199, '20018', '3', '', 'SMKN 1 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (200, '20019', '3', '', 'SMKN 1 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (201, '20020', '3', '', 'SMKN 2 Kebumen', NULL, NULL, '3381', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (202, '20021', '3', '', 'SMKN 2 Serang', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (203, '20022', '3', '', 'SMKN 1 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (204, '20023', '3', '', 'SMKN 1 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (205, '20024', '3', '', 'SMK YP Fatahillah 1 Kramat Watu Serang', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (206, '20025', '3', '', 'SMKN7 (STM Pembangunan) Semarang', NULL, NULL, '3374', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (207, '20026', '3', '', 'SMK Negeri 1 Malimping Lebak', NULL, NULL, '3602', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (208, '20027', '3', '', 'SMKN7 (STM Pembangunan) Semarang', NULL, NULL, '3374', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (209, '20028', '3', '', 'SMK Negeri 4 Kota Serang', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (210, '20032', '3', '', 'SMKN 5 (STM Pembangunan) Surabaya', NULL, NULL, '3578', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (211, '20033', '3', '', 'SMKN 5 (STM Pembangunan) Surabaya', NULL, NULL, '3578', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (212, '20035', '3', '', 'SMK Negeri 1 Cimahi', NULL, NULL, '3277', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (213, '20036', '3', '', 'SMK Negeri 1 Cimahi', NULL, NULL, '3277', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (214, '20037', '3', '', 'SMK Negeri 26 Jakarta', NULL, NULL, '3175', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (215, '20038', '3', '', 'SMK Negeri 4 Kota Serang', NULL, NULL, '3678', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (216, '20039', '3', '', 'SMK Setia Budhi Rangkasbitung', NULL, NULL, '3602', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (217, '20041', '3', '', 'SMK Negeri 1 Cimahi', NULL, NULL, '3277', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (218, '20042', '3', '', 'SMKN 1 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (219, '20043', '3', '', 'SMA IPA SMAN 4 Pandeglang', NULL, NULL, '3604', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (220, '20044', '3', '', 'SMKN 1 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (221, '20045', '3', '', 'SMKN 1 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trans_pendidikan` VALUES (222, '20046', '3', '', 'SMKN 1 Cilegon', NULL, NULL, '3677', '1', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for trans_pengalaman_kerja
-- ----------------------------
DROP TABLE IF EXISTS `trans_pengalaman_kerja`;
CREATE TABLE `trans_pengalaman_kerja`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `posisi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `instansi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_from` datetime NULL DEFAULT NULL,
  `date_to` datetime NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trans_pengalaman_kerja
-- ----------------------------

-- ----------------------------
-- Table structure for trans_penugasan_detail
-- ----------------------------
DROP TABLE IF EXISTS `trans_penugasan_detail`;
CREATE TABLE `trans_penugasan_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_penugasan_header` int NOT NULL,
  `nik` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `posisi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `presentase` int NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `last_modified_by` int NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trans_penugasan_detail
-- ----------------------------

-- ----------------------------
-- Table structure for trans_penugasan_header
-- ----------------------------
DROP TABLE IF EXISTS `trans_penugasan_header`;
CREATE TABLE `trans_penugasan_header`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `projek` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_from` datetime NULL DEFAULT NULL,
  `date_to` datetime NULL DEFAULT NULL,
  `alasan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_batal` datetime NULL DEFAULT NULL,
  `surat_penugasan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of trans_penugasan_header
-- ----------------------------

-- ----------------------------
-- Table structure for trans_performance_appraisal
-- ----------------------------
DROP TABLE IF EXISTS `trans_performance_appraisal`;
CREATE TABLE `trans_performance_appraisal`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `periode` year NULL DEFAULT NULL,
  `nilai` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trans_performance_appraisal
-- ----------------------------

-- ----------------------------
-- Table structure for trans_skill
-- ----------------------------
DROP TABLE IF EXISTS `trans_skill`;
CREATE TABLE `trans_skill`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `skill_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trans_skill
-- ----------------------------

-- ----------------------------
-- Table structure for trans_training
-- ----------------------------
DROP TABLE IF EXISTS `trans_training`;
CREATE TABLE `trans_training`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_training` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_training` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date_from` datetime NULL DEFAULT NULL,
  `date_to` datetime NULL DEFAULT NULL,
  `date_valid_from` datetime NULL DEFAULT NULL,
  `date_valid_to` datetime NULL DEFAULT NULL,
  `pembayaran` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '0 jika pembayaran sendiri, 1 jika pembayaran perusahaan',
  `sertifikat_pelatihan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `city_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_date` datetime NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `last_modified_date` datetime NULL DEFAULT NULL,
  `last_modified_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of trans_training
-- ----------------------------

-- ----------------------------
-- View structure for approval_auth_vd
-- ----------------------------
DROP VIEW IF EXISTS `approval_auth_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `approval_auth_vd` AS SELECT
	approval_auth.id,
	approval_auth.cc,
	approval_auth.jobcode,
	approval_auth.urutan,
	approval_auth.created_by,
	approval_auth.created_date,
	approval_auth.last_modified_by,
	approval_auth.last_modified_date,
	mas_projek.nama_projek,
	mas_projek.jenis_cc,
	mas_projek.costcenter,
	mas_jabatan.job_detail
FROM
	approval_auth
		LEFT JOIN mas_projek ON approval_auth.cc = mas_projek.id
		LEFT JOIN mas_jabatan ON approval_auth.jobcode = mas_jabatan.job_code ;

-- ----------------------------
-- View structure for get_lama_kerja_vd
-- ----------------------------
DROP VIEW IF EXISTS `get_lama_kerja_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `get_lama_kerja_vd` AS SELECT
	nik,
	TIMESTAMPDIFF(
	YEAR,
	tmb_date,
	NOW()) as lama_kerja
FROM
	mas_karyawan
WHERE
	nik <> 1 ;

-- ----------------------------
-- View structure for mas_grade_vd
-- ----------------------------
DROP VIEW IF EXISTS `mas_grade_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mas_grade_vd` AS SELECT
											 mas_grade.id,
											 mas_grade.grade,
											 mas_grade.jobcode,
											 mas_jabatan.job_detail,
											 mas_jabatan.job_under
										 FROM
											 mas_grade
												 LEFT JOIN mas_jabatan ON mas_grade.jobcode = mas_jabatan.job_code ;

-- ----------------------------
-- View structure for mas_jadwal_reg_vd
-- ----------------------------
DROP VIEW IF EXISTS `mas_jadwal_reg_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mas_jadwal_reg_vd` AS SELECT
	mas_jadwal_reg.*,
	mas_tipe_jadwal.desc_tipe
FROM
		mas_jadwal_reg
JOIN mas_tipe_jadwal ON mas_jadwal_reg.tipe = mas_tipe_jadwal.kode_tipe ;

-- ----------------------------
-- View structure for mas_jurusan_vd
-- ----------------------------
DROP VIEW IF EXISTS `mas_jurusan_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mas_jurusan_vd` AS SELECT
	`mas_jurusan`.`id` AS `id`,
	`mas_jurusan`.`nama_jurusan` AS `nama_jurusan`,
	`mas_pendidikan`.`edu_detail` AS `edu_detail`,
	`mas_jurusan`.`id_jenjang` AS `id_jenjang`
FROM
	(
		`mas_jurusan`
			LEFT JOIN `mas_pendidikan` ON ((
				`mas_jurusan`.`id_jenjang` = `mas_pendidikan`.`edu_code`
			))); ;

-- ----------------------------
-- View structure for mas_karyawan_vd
-- ----------------------------
DROP VIEW IF EXISTS `mas_karyawan_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mas_karyawan_vd` AS select `mas_karyawan`.`id` AS `id`,`mas_karyawan`.`nik` AS `nik`,`mas_karyawan`.`name` AS `name`,`mas_karyawan`.`file_photo` AS `file_photo`,`mas_karyawan`.`email` AS `email`,`mas_karyawan`.`status_kerja` AS `status_kerja`,`mas_status_kerja`.`nama_status_kerja` AS `nama_status_kerja`,`mas_karyawan`.`last_edu` AS `last_edu`,date_format(`mas_karyawan`.`tmb_date`,'%Y-%m-%d') AS `tmb_date`,`mas_karyawan`.`address` AS `address`,date_format(`mas_karyawan`.`born_date`,'%Y-%m-%d') AS `born_date`,`mas_karyawan`.`born_city` AS `born_city`,`mas_karyawan`.`status_perkawinan` AS `status_perkawinan`,`mas_karyawan`.`kewarganegaraan` AS `kewarganegaraan`,`mas_karyawan`.`bloodtype` AS `bloodtype`,`mas_karyawan`.`bpjs_kesehatan` AS `bpjs_kesehatan`,`mas_karyawan`.`bpjs_ketenagakerjaan` AS `bpjs_ketenagakerjaan`,`mas_karyawan`.`no_kk` AS `no_kk`,`mas_karyawan`.`grade` AS `id_grade`,`mas_karyawan`.`npwp` AS `npwp`,`mas_karyawan`.`parent_name1` AS `parent_name1`,`mas_karyawan`.`parent_name2` AS `parent_name2`,`mas_karyawan`.`phone_number` AS `phone_number`,`mas_karyawan`.`religion_code` AS `religion_code`,`mas_karyawan`.`dept_code` AS `dept_code`,`mas_divisi`.`dept_name` AS `dept_name`,`mas_karyawan`.`level_job_code` AS `job_code`,`mas_jabatan`.`job_detail` AS `job_detail`,`mas_agama`.`religion_name` AS `religion_name`,`mas_kota`.`description` AS `description`,`mas_jenis_kelamin`.`jenis_kelamin` AS `jenis_kelamin`,`mas_jenis_kelamin`.`id` AS `kode_jenis_kelamin`,(date_format(from_days((to_days(now()) - to_days(`mas_karyawan`.`born_date`))),'%Y') + 0) AS `age`,`trans_pendidikan`.`edu_place` AS `edu_place`,`trans_pendidikan`.`jurusan` AS `jurusan`,`mas_jurusan`.`nama_jurusan` AS `nama_jurusan`,`mas_pendidikan`.`edu_detail` AS `edu_detail`,`trans_alamat`.`alamat` AS `alamat`,`trans_alamat`.`kode_pos` AS `kode_pos`,`trans_alamat`.`city_code` AS `city_code`,`mas_maritalsts`.`MaritalStsCd` AS `MaritalStsCd`,`mas_maritalsts`.`DescMarital` AS `DescMarital`,`mas_jabatan2`.`job_code` AS `jabatan`,`mas_jabatan2`.`job_detail` AS `detail_jabatan`,`mas_grade`.`grade` AS `grade` from (((((((((((((`mas_karyawan` left join `mas_divisi` on((`mas_divisi`.`dept_code` = `mas_karyawan`.`dept_code`))) left join `mas_jabatan` on((`mas_jabatan`.`job_code` = `mas_karyawan`.`level_job_code`))) left join `mas_agama` on((`mas_agama`.`id` = `mas_karyawan`.`religion_code`))) left join `mas_kota` on((`mas_kota`.`city_code` = `mas_karyawan`.`born_city`))) left join `mas_jenis_kelamin` on((`mas_jenis_kelamin`.`id` = `mas_karyawan`.`jenis_kelamin`))) left join `trans_pendidikan` on(((`mas_karyawan`.`nik` = `trans_pendidikan`.`nik`) and (`trans_pendidikan`.`pendidikan_terakhir` = '1')))) left join `mas_pendidikan` on((`trans_pendidikan`.`educode` = `mas_pendidikan`.`edu_code`))) left join `mas_jurusan` on((`trans_pendidikan`.`jurusan` = `mas_jurusan`.`id`))) left join `trans_alamat` on(((convert(`mas_karyawan`.`nik` using utf8mb4) = convert(`trans_alamat`.`nik` using utf8mb4)) and (`trans_alamat`.`status` = '1')))) left join `mas_maritalsts` on((convert(`mas_karyawan`.`status_perkawinan` using utf8mb4) = convert(`mas_maritalsts`.`MaritalStsCd` using utf8mb4)))) left join `mas_status_kerja` on((`mas_status_kerja`.`id_status_kerja` = `mas_karyawan`.`status_kerja`))) left join `mas_jabatan2` on((`mas_karyawan`.`jabatan` = `mas_jabatan2`.`job_code`))) left join `mas_grade` on((`mas_karyawan`.`grade` = `mas_grade`.`id`))) ;

-- ----------------------------
-- View structure for mas_projek_vd
-- ----------------------------
DROP VIEW IF EXISTS `mas_projek_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `mas_projek_vd` AS SELECT
	`mas_projek`.`nama_projek` AS `nama_projek`,
	`mas_projek`.`id` AS `id`,
	`mas_projek`.`jenis_cc` AS `jenis_cc`,
	`mas_projek`.`costcenter` AS `costcenter`,
	`mas_projek`.`date_from` AS `date_from`,
	`mas_projek`.`date_to` AS `date_to`,
	`mas_projek`.`status` AS `status`,
	`mas_projek`.`created_by` AS `created_by`,
	`mas_projek`.`created_date` AS `created_date`,
	`mas_projek`.`last_modified_by` AS `last_modified_by`,
	`mas_projek`.`last_modified_date` AS `last_modified_date` 
FROM
	(
		`mas_projek`
		LEFT JOIN `trans_penugasan_header` ON ((
				`mas_projek`.`id` = `trans_penugasan_header`.`projek` 
			))) 
WHERE
	(
	isnull( `trans_penugasan_header`.`projek` ) 
	AND ( `mas_projek`.`status` = 1 )) ;

-- ----------------------------
-- View structure for sys_menu_vd
-- ----------------------------
DROP VIEW IF EXISTS `sys_menu_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `sys_menu_vd` AS SELECT
	`sys_navbar`.`navbar_id` AS `navbar_id`,
	`sys_navbar`.`parent_id` AS `parent_id`,
	`sys_navbar`.`navbar_icon` AS `navbar_icon`,
	`sys_navbar`.`navbar_name` AS `navbar_name`,
	`sys_navbar`.`link` AS `link`,
	`sys_navbar`.`sort` AS `sort`,
	`sys_navbar`.`active` AS `active`,
	`sys_group_menu`.`group_id` AS `group_id` 
FROM
	(
	`sys_navbar`
	JOIN `sys_group_menu` ON ( `sys_navbar`.`navbar_id` = `sys_group_menu`.`navbar_id` )); ;

-- ----------------------------
-- View structure for trans_alamat_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_alamat_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_alamat_vd` AS SELECT
	`trans_alamat`.`id` AS `id`,
	`trans_alamat`.`nik` AS `nik`,
	`trans_alamat`.`alamat` AS `alamat`,
	`trans_alamat`.`kode_pos` AS `kode_pos`,
	date_format( `trans_alamat`.`date_from`, '%Y' ) AS `date_from`,
	date_format( `trans_alamat`.`date_to`, '%Y' ) AS `date_to`,
	`trans_alamat`.`city_code` AS `city_code`,
	`mas_karyawan`.`name` AS `name`,
	`mas_kota`.`description` AS `description`,
	`mas_kota`.`prov_code` AS `prov_code`,
	`mas_provinsi`.`descprov` AS `descprov`,
	`trans_alamat`.`status` AS `status` 
FROM
	(((
				`trans_alamat`
				JOIN `mas_karyawan` ON ((
						`trans_alamat`.`nik` = `mas_karyawan`.`nik` 
					)))
			LEFT JOIN `mas_kota` ON ((
					`trans_alamat`.`city_code` = `mas_kota`.`city_code` 
				)))
		LEFT JOIN `mas_provinsi` ON ((
			`mas_kota`.`prov_code` = `mas_provinsi`.`prov_code` 
	))) ;

-- ----------------------------
-- View structure for trans_dokumen_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_dokumen_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_dokumen_vd` AS SELECT
	`mas_karyawan`.`name` AS `name`,
	`trans_dokumen`.`id` AS `id`,
	`trans_dokumen`.`nik` AS `nik`,
	`trans_dokumen`.`file_cv` AS `file_cv`,
	`trans_dokumen`.`file_transkrip_nilai` AS `file_transkrip_nilai`,
	`trans_dokumen`.`file_sertifikat` AS `file_sertifikat`,
	`trans_dokumen`.`file_ktp` AS `file_ktp`,
	`trans_dokumen`.`file_kk` AS `file_kk`,
	`trans_dokumen`.`file_npwp` AS `file_npwp`
FROM
	(
		`trans_dokumen`
			JOIN `mas_karyawan` ON ((
				`trans_dokumen`.`nik` = `mas_karyawan`.`nik`
			))); ;

-- ----------------------------
-- View structure for trans_export_data_karyawan
-- ----------------------------
DROP VIEW IF EXISTS `trans_export_data_karyawan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_export_data_karyawan` AS SELECT
	mas_karyawan.nik AS nik,
	mas_karyawan.`name` AS `name`,
	mas_karyawan.email AS email,
	date_format( `mas_karyawan`.`born_date`, '%Y-%m-%d' ) AS born_date,
	mas_karyawan.kewarganegaraan AS kewarganegaraan,
	mas_karyawan.bloodtype AS bloodtype,
	mas_karyawan.bpjs_ketenagakerjaan AS bpjs_ketenagakerjaan,
	mas_karyawan.bpjs_kesehatan AS bpjs_kesehatan,
	mas_karyawan.no_kk AS no_kk,
	mas_karyawan.npwp AS npwp,
	mas_karyawan.phone_number AS phone_number,
	date_format( `mas_karyawan`.`tmb_date`, '%Y-%m-%d' ) AS tmb_date,
	mas_karyawan.status_kerja AS status_kerja,
	mas_karyawan.parent_name1 AS parent_name1,
	mas_karyawan.parent_name2 AS parent_name2,
	trans_alamat.alamat AS alamat,
	trans_alamat.kode_pos AS kode_pos,
	trans_pendidikan.edu_place AS edu_place,
	trans_pendidikan.pendidikan_terakhir AS pendidikan_terakhir,
	mas_pendidikan.edu_detail AS edu_detail,
	mas_jurusan.nama_jurusan AS nama_jurusan,
	mas_jenis_kelamin.jenis_kelamin AS jenis_kelamin,
	mas_kota.description AS description,
	mas_maritalsts.DescMarital AS DescMarital,
	mas_agama.religion_name AS religion_name,
	mas_divisi.dept_name AS dept_name,
	mas_jabatan.job_detail AS job_detail,
	(
		SELECT
			group_concat( COALESCE ( `trans_skill`.`skill_name`, '' ) SEPARATOR ',' )
		FROM
			`trans_skill`
		WHERE
			( `mas_karyawan`.`nik` = `trans_skill`.`nik` )) AS skill_list,
	trans_pendidikan.date_to
FROM
	(
	 (
		 (
			 (
				 (
					 (
						 (
							 (
								 (
									 ( mas_karyawan LEFT JOIN trans_alamat ON ( ( ( mas_karyawan.nik = trans_alamat.nik ) AND ( trans_alamat.`status` = 1 ) ) ) )
										 LEFT JOIN trans_pendidikan ON ( ( ( mas_karyawan.nik = trans_pendidikan.nik ) AND ( trans_pendidikan.pendidikan_terakhir = 1 ) ) )
									 )
									 LEFT JOIN mas_pendidikan ON ( ( trans_pendidikan.educode = mas_pendidikan.edu_code ) )
								 )
								 LEFT JOIN mas_jurusan ON ( ( trans_pendidikan.jurusan = mas_jurusan.id ) )
							 )
							 LEFT JOIN mas_jenis_kelamin ON ( ( mas_karyawan.jenis_kelamin = mas_jenis_kelamin.id ) )
						 )
						 LEFT JOIN mas_kota ON ( ( mas_karyawan.born_city = mas_kota.city_code ) )
					 )
					 LEFT JOIN mas_maritalsts ON ( ( mas_karyawan.status_perkawinan = mas_maritalsts.MaritalStsCd ) )
				 )
				 LEFT JOIN mas_agama ON ( ( mas_karyawan.religion_code = mas_agama.id ) )
			 )
			 LEFT JOIN mas_divisi ON ( ( mas_karyawan.dept_code = mas_divisi.dept_code ) )
		 )
		LEFT JOIN mas_jabatan ON ( ( mas_karyawan.level_job_code = mas_jabatan.job_code ) )
		)
WHERE
	( mas_karyawan.nik <> '1' ) ;

-- ----------------------------
-- View structure for trans_jatah_cuti_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_jatah_cuti_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_jatah_cuti_vd` AS SELECT
	trans_jatah_cuti.nik,
	trans_jatah_cuti.periode,
	trans_jatah_cuti.valid_from,
	trans_jatah_cuti.valid_to,
	IF
		( trans_jatah_cuti.`status` = 'Y', 'Aktif', 'Tidak Aktif' ) AS `status_display`,
	trans_jatah_cuti.jatah_cuti,
	trans_jatah_cuti.`status`,
	mas_karyawan.`name`
FROM
	trans_jatah_cuti
		LEFT JOIN mas_karyawan ON trans_jatah_cuti.nik = mas_karyawan.nik ;

-- ----------------------------
-- View structure for trans_keluarga_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_keluarga_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_keluarga_vd` AS SELECT
	`trans_keluarga`.`id` AS `id`,
	`trans_keluarga`.`nik` AS `nik`,
	`trans_keluarga`.`name` AS `name`,
	date_format( `trans_keluarga`.`born_date`, '%Y-%m-%d' ) AS `born_date`,
	`trans_keluarga`.`born_city` AS `born_city`,
	`trans_keluarga`.`bloodtype` AS `bloodtype`,
	`trans_keluarga`.`lembaga_name` AS `lembaga_name`,
	`trans_keluarga`.`no_ktp` AS `no_ktp`,
	`trans_keluarga`.`no_hp` AS `no_hp`,
	`mas_karyawan`.`name` AS `nama_karyawan`,
	`mas_relation`.`description` AS `description`,
	`mas_relation`.`relation_code` AS `relation_code`,
	`mas_pendidikan`.`edu_detail` AS `edu_detail`,
	`mas_pendidikan`.`edu_code` AS `edu_code`,
	`mas_jenis_kelamin`.`jenis_kelamin` AS `jenis_kelamin`,
	`mas_jenis_kelamin`.`id` AS `kode_jk`,
	`mas_kota`.`description` AS `nama_kota`
FROM
	(((((
		`trans_keluarga`
			LEFT JOIN `mas_relation` ON ( `trans_keluarga`.`relation_code` = `mas_relation`.`relation_code` ))
		LEFT JOIN `mas_karyawan` ON ( `trans_keluarga`.`nik` = `mas_karyawan`.`nik` ))
		LEFT JOIN `mas_pendidikan` ON ( `trans_keluarga`.`edu_code` = `mas_pendidikan`.`edu_code` ))
		LEFT JOIN `mas_jenis_kelamin` ON ( `trans_keluarga`.`jenis_kelamin` = `mas_jenis_kelamin`.`id` ))
		LEFT JOIN `mas_kota` ON ( `trans_keluarga`.`born_city` = `mas_kota`.`city_code` )) ; ;

-- ----------------------------
-- View structure for trans_pendidikan_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_pendidikan_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_pendidikan_vd` AS SELECT
		`trans_pendidikan`.`id` AS `id`,
	`trans_pendidikan`.`nik` AS `nik`,
	`trans_pendidikan`.`edu_place` AS `edu_place`,
	`trans_pendidikan`.`educode` AS `educode`,
	`trans_pendidikan`.`city_code` AS `city_code`,
	`trans_pendidikan`.`date_from` AS `date_from`,
	`trans_pendidikan`.`date_to` AS `date_to`,
	`trans_pendidikan`.`file` AS `file`,
	`mas_kota`.`description` AS `description`,
	`mas_pendidikan`.`edu_detail` AS `edu_detail`,
	`mas_karyawan`.`name` AS `name`,
	`trans_pendidikan`.`jurusan` AS `jurusan`,
	`mas_jurusan`.`nama_jurusan` AS `nama_jurusan` 
FROM
	((((
					`trans_pendidikan`
					JOIN `mas_karyawan` ON ((
							`trans_pendidikan`.`nik` = `mas_karyawan`.`nik` 
						)))
				LEFT JOIN `mas_kota` ON ((
						`trans_pendidikan`.`city_code` = `mas_kota`.`city_code` 
					)))
			JOIN `mas_pendidikan` ON ((
					`trans_pendidikan`.`educode` = `mas_pendidikan`.`edu_code` 
				)))
		LEFT JOIN `mas_jurusan` ON ((
			`trans_pendidikan`.`jurusan` = `mas_jurusan`.`id` 
	))) ;

-- ----------------------------
-- View structure for trans_pengalaman_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_pengalaman_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_pengalaman_vd` AS SELECT
	`trans_pengalaman_kerja`.`id` AS `id`,
	`trans_pengalaman_kerja`.`posisi` AS `posisi`,
	`trans_pengalaman_kerja`.`instansi` AS `instansi`,
	date_format( `trans_pengalaman_kerja`.`date_from`, '%Y-%m-%d' ) AS `date_from`,
	date_format( `trans_pengalaman_kerja`.`date_to`, '%Y-%m-%d' ) AS `date_to`,
	`trans_pengalaman_kerja`.`nik` AS `nik`,
	`mas_karyawan`.`name` AS `name` 
FROM
	(
	`trans_pengalaman_kerja`
	JOIN `mas_karyawan` ON ( `trans_pengalaman_kerja`.`nik` = `mas_karyawan`.`nik` )); ;

-- ----------------------------
-- View structure for trans_penugasan_detail_countpresentase_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_penugasan_detail_countpresentase_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_penugasan_detail_countpresentase_vd` AS SELECT
	`trans_penugasan_detail`.`nik` AS `nik`,
	sum( `trans_penugasan_detail`.`presentase` ) AS `presentase` 
FROM
	((
			`trans_penugasan_detail`
			JOIN `trans_penugasan_header` ON ((
					`trans_penugasan_detail`.`id_penugasan_header` = `trans_penugasan_header`.`id` 
				)))
		JOIN `mas_projek` ON ((
				`trans_penugasan_header`.`projek` = `mas_projek`.`id` 
			))) 
WHERE
	( `mas_projek`.`status` = '1' ) 
GROUP BY
	`trans_penugasan_detail`.`nik` ;

-- ----------------------------
-- View structure for trans_penugasan_detail_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_penugasan_detail_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_penugasan_detail_vd` AS SELECT
		`trans_penugasan_detail`.`id` AS `id`,
	`mas_projek`.`id` AS `projek`,
	`trans_penugasan_detail`.`id_penugasan_header` AS `id_penugasan_header`,
	`trans_penugasan_detail`.`nik` AS `nik`,
	`mas_karyawan`.`name` AS `name`,
	`trans_penugasan_detail`.`posisi` AS `posisi`,
	`trans_penugasan_detail`.`presentase` AS `presentase`,
	`mas_projek`.`status` AS `status`,
	`trans_penugasan_detail_countpresentase_vd`.`presentase` AS `presentase_sisa` 
FROM
	((((
					`trans_penugasan_header`
					JOIN `trans_penugasan_detail` ON ((
							`trans_penugasan_header`.`id` = `trans_penugasan_detail`.`id_penugasan_header` 
						)))
				JOIN `mas_karyawan` ON ((
					`trans_penugasan_detail`.`nik` = CONVERT ( `mas_karyawan`.`nik` USING utf8mb4 ))))
			JOIN `mas_projek` ON ((
					`trans_penugasan_header`.`projek` = `mas_projek`.`id` 
				)))
		LEFT JOIN `trans_penugasan_detail_countpresentase_vd` ON ((
			`trans_penugasan_detail`.`nik` = `trans_penugasan_detail_countpresentase_vd`.`nik` 
	))) ;

-- ----------------------------
-- View structure for trans_penugasan_karyawan_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_penugasan_karyawan_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_penugasan_karyawan_vd` AS SELECT
	`trans_penugasan_detail`.`id` AS `id`,
	`trans_penugasan_detail`.`id_penugasan_header` AS `id_penugasan_header`,
	`trans_penugasan_detail`.`nik` AS `nik`,
	`trans_penugasan_detail`.`posisi` AS `posisi`,
	`trans_penugasan_detail`.`presentase` AS `presentase`,
	`trans_penugasan_detail`.`created_by` AS `created_by`,
	`trans_penugasan_detail`.`created_date` AS `created_date`,
	`trans_penugasan_detail`.`last_modified_by` AS `last_modified_by`,
	`trans_penugasan_detail`.`last_modified_date` AS `last_modified_date`,
	`mas_projek`.`costcenter` AS `costcenter`,
	`mas_projek`.`status` AS `status`,(
	CASE
			
			WHEN ( `mas_projek`.`status` = 0 ) THEN
			'Selesai' ELSE 'Aktif' 
		END 
			) AS `status_projek`,(
		CASE
				
				WHEN isnull( `trans_penugasan_header`.`alasan` ) THEN
				'Aktif' ELSE 'Dibatalkan' 
			END 
			) AS `status_penugasan`,
			`mas_projek`.`nama_projek` AS `nama_projek`,
			date_format( `trans_penugasan_header`.`date_from`, '%Y-%m-%d' ) AS `date_from`,
			date_format( `trans_penugasan_header`.`date_to`, '%Y-%m-%d' ) AS `date_to`,(
				to_days(
					date_format( `trans_penugasan_header`.`date_to`, '%Y-%m-%d' )) - to_days(
				date_format( curdate(), '%Y-%m-%d' ))) AS `range_date`,
			`trans_penugasan_header`.`projek` AS `projek`,
			`trans_penugasan_header`.`surat_penugasan` AS `surat_penugasan`,
			`trans_penugasan_header`.`tanggal_batal` AS `tanggal_batal`,
			`trans_penugasan_header`.`alasan` AS `alasan`,
			`trans_penugasan_detail_countpresentase_vd`.`presentase` AS `presentase_total` 
		FROM
			(((
						`trans_penugasan_detail`
						JOIN `trans_penugasan_header` ON ((
								`trans_penugasan_detail`.`id_penugasan_header` = `trans_penugasan_header`.`id` 
							)))
					JOIN `mas_projek` ON ((
							`trans_penugasan_header`.`projek` = `mas_projek`.`id` 
						)))
				JOIN `trans_penugasan_detail_countpresentase_vd` ON ((
						`trans_penugasan_detail`.`nik` = `trans_penugasan_detail_countpresentase_vd`.`nik` 
					))) 
		WHERE
			( `trans_penugasan_header`.`surat_penugasan` IS NOT NULL ) 
		ORDER BY
		`mas_projek`.`status` DESC,
	`trans_penugasan_header`.`id` ;

-- ----------------------------
-- View structure for trans_penugasan_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_penugasan_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_penugasan_vd` AS SELECT
	`trans_penugasan_header`.`id` AS `id`,
	`trans_penugasan_header`.`projek` AS `projek`,
	`trans_penugasan_header`.`surat_penugasan` AS `surat_penugasan`,
	date_format( `trans_penugasan_header`.`date_from`, '%Y-%m-%d' ) AS `date_from`,
	date_format( `trans_penugasan_header`.`date_to`, '%Y-%m-%d' ) AS `date_to`,(
		to_days(
			date_format( `trans_penugasan_header`.`date_to`, '%Y-%m-%d' )) - to_days(
		date_format( curdate(), '%Y-%m-%d' ))) AS `range_date`,
	`mas_projek`.`nama_projek` AS `nama_projek`,
	`mas_projek`.`costcenter` AS `costcenter`,
	`mas_projek`.`status` AS `status`,
	`trans_penugasan_detail`.`nik` AS `nik`,
	`trans_penugasan_detail`.`posisi` AS `posisi`,
	`trans_penugasan_header`.`alasan` AS `alasan`,
	date_format( `trans_penugasan_header`.`tanggal_batal`, '%Y-%m-%d' ) AS `tanggal_batal`,
	`trans_penugasan_detail`.`presentase` AS `presentase` 
FROM
	((
			`trans_penugasan_header`
			JOIN `mas_projek` ON ((
					`trans_penugasan_header`.`projek` = `mas_projek`.`id` 
				)))
		LEFT JOIN `trans_penugasan_detail` ON ((
			`trans_penugasan_header`.`id` = `trans_penugasan_detail`.`id_penugasan_header` 
	))) ;

-- ----------------------------
-- View structure for trans_performance_appraisal_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_performance_appraisal_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_performance_appraisal_vd` AS SELECT
	trans_performance_appraisal.id,
	trans_performance_appraisal.nik,
	trans_performance_appraisal.periode,
	trans_performance_appraisal.nilai,
	trans_performance_appraisal.created_by,
	trans_performance_appraisal.created_date,
	trans_performance_appraisal.last_modified_by,
	trans_performance_appraisal.last_modified_date,
	mas_karyawan.`name`
FROM
	trans_performance_appraisal
		LEFT JOIN mas_karyawan ON trans_performance_appraisal.nik = mas_karyawan.nik ;

-- ----------------------------
-- View structure for trans_skill_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_skill_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_skill_vd` AS SELECT
	`trans_skill`.`id` AS `id`,
	`trans_skill`.`nik` AS `nik`,
	`trans_skill`.`skill_name` AS `skill_name`,
	`mas_karyawan`.`name` AS `name`
FROM
	(
		`trans_skill`
			JOIN `mas_karyawan` ON ((
				`trans_skill`.`nik` = `mas_karyawan`.`nik`
			))); ;

-- ----------------------------
-- View structure for trans_training_vd
-- ----------------------------
DROP VIEW IF EXISTS `trans_training_vd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `trans_training_vd` AS SELECT
	`trans_training`.`nik` AS `nik`,
	`trans_training`.`id` AS `id`,
	`trans_training`.`nama_training` AS `nama_training`,
	`trans_training`.`nama_lembaga` AS `nama_lembaga`,
	`trans_training`.`pembayaran` AS `pembayaran`,
	`trans_training`.`sertifikat_pelatihan` AS `sertifikat_pelatihan`,
	date_format( `trans_training`.`date_from`, '%Y-%m-%d' ) AS `date_from`,
	date_format( `trans_training`.`date_to`, '%Y-%m-%d' ) AS `date_to`,
	`mas_kota`.`description` AS `description`,
	date_format( `trans_training`.`date_valid_from`, '%Y-%m-%d' ) AS `date_valid_from`,
	date_format( `trans_training`.`date_valid_to`, '%Y-%m-%d' ) AS `date_valid_to`,
	`trans_training`.`jenis_training` AS `jenis_training` 
FROM
	((
			`trans_training`
			JOIN `mas_karyawan` ON ((
					`mas_karyawan`.`nik` = `trans_training`.`nik` 
				)))
		LEFT JOIN `mas_kota` ON ((
			`trans_training`.`city_code` = `mas_kota`.`city_code` 
	))) ;

SET FOREIGN_KEY_CHECKS = 1;
