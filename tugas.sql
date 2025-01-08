/*
 Navicat Premium Data Transfer

 Source Server         : _local
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : tugas

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 08/01/2025 09:52:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dosen
-- ----------------------------
DROP TABLE IF EXISTS `dosen`;
CREATE TABLE `dosen`  (
  `kd_dosen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_dosen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kd_dosen`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dosen
-- ----------------------------
INSERT INTO `dosen` VALUES ('000001', 'EKO PURWANTO, M.Kom', 'SUKOHARJO', NULL, NULL);
INSERT INTO `dosen` VALUES ('000002', 'FAULINDA ELY NASTITI, M.Eng', 'SUKOHARJO', NULL, NULL);
INSERT INTO `dosen` VALUES ('000003', 'JONI MAULINDAR, M.Eng', 'SUKOHARJO', NULL, NULL);
INSERT INTO `dosen` VALUES ('000004', 'SRI SUMARLINDA, M.Kom', 'YOGYAKARTA', NULL, NULL);
INSERT INTO `dosen` VALUES ('000005', 'SAUL PAULUS, M.Psy', 'AMBON', '2025-01-08 02:49:48', NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa`  (
  `nim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kd_prodi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nim`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------
INSERT INTO `mahasiswa` VALUES ('100101001', 'WAHYUDI', 'SURAKARTA', '01', NULL, NULL);
INSERT INTO `mahasiswa` VALUES ('100101002', 'SRIYONO', 'KLATEN', '01', NULL, NULL);
INSERT INTO `mahasiswa` VALUES ('100101003', 'SAUL', 'AMBON', '03', '2025-01-08 02:36:19', NULL);
INSERT INTO `mahasiswa` VALUES ('100103001', 'MARIYATUN', 'WONOGIRI', '03', NULL, NULL);
INSERT INTO `mahasiswa` VALUES ('100103002', 'EKO WAHYUDI', 'SURAKARTA', '03', NULL, NULL);
INSERT INTO `mahasiswa` VALUES ('100202001', 'RUSTANTO', 'SUKOHARJO', '02', NULL, NULL);
INSERT INTO `mahasiswa` VALUES ('100202002', 'SRI HANDAYANI', 'SRAGEN', '02', NULL, NULL);
INSERT INTO `mahasiswa` VALUES ('100204001', 'HANDAYANI', 'KLATEN', '04', NULL, NULL);
INSERT INTO `mahasiswa` VALUES ('100204002', 'MARIYATUN', 'SURAKARTA', '04', NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2025_01_07_065442_mahasiswa', 1);
INSERT INTO `migrations` VALUES (6, '2025_01_07_065654_dosen', 1);
INSERT INTO `migrations` VALUES (7, '2025_01_07_065735_prodi', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (26, 'App\\Models\\User', 2, 'api-access', 'fce2be7167b2d81951e417e513f723c0343cfa383456f6cc333a618ce8969c0f', '[\"*\"]', '2025-01-07 08:33:12', '2025-01-07 08:34:07', '2025-01-07 08:24:07', '2025-01-07 08:33:12');
INSERT INTO `personal_access_tokens` VALUES (27, 'App\\Models\\User', 2, 'api-access', 'f070ff378dd6164e755f6a38afa5a04503f39c1210cf00724ebe9b3d22375ad8', '[\"*\"]', '2025-01-07 08:36:30', '2025-01-07 08:46:15', '2025-01-07 08:36:15', '2025-01-07 08:36:30');
INSERT INTO `personal_access_tokens` VALUES (28, 'App\\Models\\User', 2, 'api-access', '609eab2a47f00204e1834574f0aab0593939c78e1a08941703989a0771450d28', '[\"*\"]', '2025-01-08 02:06:52', '2025-01-08 02:16:35', '2025-01-08 02:06:35', '2025-01-08 02:06:52');
INSERT INTO `personal_access_tokens` VALUES (29, 'App\\Models\\User', 2, 'api-access', '0d81c46bebc50990f3ce3f311e7725c9b79ad05e59dad7b45d60c79dc603d4ab', '[\"*\"]', '2025-01-08 02:42:43', '2025-01-08 02:43:03', '2025-01-08 02:33:03', '2025-01-08 02:42:43');
INSERT INTO `personal_access_tokens` VALUES (30, 'App\\Models\\User', 2, 'api-access', '1348fefaf2950147f118e0978de4aa37d1bafae44b3426ac786626d65facc968', '[\"*\"]', '2025-01-08 02:44:55', '2025-01-08 02:54:02', '2025-01-08 02:44:02', '2025-01-08 02:44:55');
INSERT INTO `personal_access_tokens` VALUES (31, 'App\\Models\\User', 2, 'api-access', '2b86fcfa92bfe042c3954e0c92e45d78c326ff9d913725ca7753020623469fa4', '[\"*\"]', '2025-01-08 02:49:48', '2025-01-08 02:58:01', '2025-01-08 02:48:01', '2025-01-08 02:49:48');
INSERT INTO `personal_access_tokens` VALUES (32, 'App\\Models\\User', 3, 'api-access', '46e461ed4324b5fd56f251f3515f87666ba85898b3883b0d34bb2937bdd8ff72', '[\"*\"]', NULL, '2025-01-08 03:00:40', '2025-01-08 02:50:40', '2025-01-08 02:50:40');

-- ----------------------------
-- Table structure for prodi
-- ----------------------------
DROP TABLE IF EXISTS `prodi`;
CREATE TABLE `prodi`  (
  `kd_prodi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_prodi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kd_dosen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kd_prodi`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prodi
-- ----------------------------
INSERT INTO `prodi` VALUES ('01', 'SISTEM INFORMASI', '000001', NULL, NULL);
INSERT INTO `prodi` VALUES ('02', 'MANAJEMEN INFORMATIKA', '000002', NULL, NULL);
INSERT INTO `prodi` VALUES ('03', 'TEKNIK INFORMATIKA', '000003', NULL, NULL);
INSERT INTO `prodi` VALUES ('04', 'TEKNIK KOMPUTER', '000004', NULL, NULL);
INSERT INTO `prodi` VALUES ('05', 'PSIKOLOG', '000005', '2025-01-08 02:44:55', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 'deni', 'deni@gmail.com', NULL, '$2y$10$rnRBo8zN0CZDLDciQTT7BuaH6RPgfbUaAC1OLT/sv6uO7naoExDw6', NULL, '2025-01-07 07:32:20', NULL);
INSERT INTO `users` VALUES (3, 'admin', 'superadmin@gmail.com', NULL, '$2y$10$T44XF8teLoLLnW9W5o7q5u7Vp84ihBKcRwlh3Lzb09uDnyvHy6R.W', NULL, '2025-01-08 02:50:23', NULL);

SET FOREIGN_KEY_CHECKS = 1;
