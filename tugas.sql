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

 Date: 10/01/2025 13:53:43
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
INSERT INTO `mahasiswa` VALUES ('10020030', 'Tes', 'Jakarta', '01', '2025-01-09 06:29:47', NULL);
INSERT INTO `mahasiswa` VALUES ('10020031', 'Tes1', 'Jakarta', '01', '2025-01-09 06:29:47', NULL);
INSERT INTO `mahasiswa` VALUES ('10020032', 'Tes2', 'Jakarta', '01', '2025-01-09 06:29:47', '2025-01-09 08:37:34');

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
) ENGINE = InnoDB AUTO_INCREMENT = 206 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `personal_access_tokens` VALUES (33, 'App\\Models\\User', 3, 'api-access', '21a9a73797e908b22d11975990a8d50393a029efc002c438702346aae2976482', '[\"*\"]', '2025-01-08 06:48:08', '2025-01-08 06:57:04', '2025-01-08 06:47:04', '2025-01-08 06:48:08');
INSERT INTO `personal_access_tokens` VALUES (34, 'App\\Models\\User', 3, 'api-access', '0bf9aac84e8c1b7ac9fb9005efb001fe42e54c2b4dc5d42e381196bfec87b0e7', '[\"*\"]', '2025-01-08 07:17:37', '2025-01-08 07:17:51', '2025-01-08 07:07:51', '2025-01-08 07:17:37');
INSERT INTO `personal_access_tokens` VALUES (35, 'App\\Models\\User', 3, 'api-access', '3156de48efd5051d6712c3d9a270bd1d1c3a2726b00e0518be80c79837fa8c72', '[\"*\"]', '2025-01-08 07:26:18', '2025-01-08 07:28:03', '2025-01-08 07:18:03', '2025-01-08 07:26:18');
INSERT INTO `personal_access_tokens` VALUES (36, 'App\\Models\\User', 3, 'api-access', '87ee688f083b68a8e8aeb83e02195a4d6eac54df4e44fe03139db1b5c9224132', '[\"*\"]', '2025-01-08 07:34:16', '2025-01-08 07:38:31', '2025-01-08 07:28:31', '2025-01-08 07:34:16');
INSERT INTO `personal_access_tokens` VALUES (37, 'App\\Models\\User', 3, 'api-access', '9f6ea94a3612938ae38878dfb375af64baa4a89b4923ac583dba55ebbf54e465', '[\"*\"]', '2025-01-08 07:35:38', '2025-01-08 07:41:49', '2025-01-08 07:31:49', '2025-01-08 07:35:38');
INSERT INTO `personal_access_tokens` VALUES (38, 'App\\Models\\User', 3, 'api-access', '8d6bf82ddb341022c57ce5bd741133874daf3dd89fb52846d285b10e0e86360b', '[\"*\"]', NULL, '2025-01-08 08:08:52', '2025-01-08 07:58:52', '2025-01-08 07:58:52');
INSERT INTO `personal_access_tokens` VALUES (39, 'App\\Models\\User', 3, 'api-access', '86ea8ab32fed0b8564a5c766296d4ec8669e445ff8c49fc9e26fc4a83ae3c961', '[\"*\"]', '2025-01-08 08:24:36', '2025-01-08 08:34:35', '2025-01-08 08:24:35', '2025-01-08 08:24:36');
INSERT INTO `personal_access_tokens` VALUES (40, 'App\\Models\\User', 3, 'api-access', '92fb26aabd0d659528fe13bb2ceadf96d549d14a8e02c058381ba2aee7505f6d', '[\"*\"]', '2025-01-08 08:28:18', '2025-01-08 08:38:09', '2025-01-08 08:28:09', '2025-01-08 08:28:18');
INSERT INTO `personal_access_tokens` VALUES (41, 'App\\Models\\User', 3, 'api-access', 'aa62993234d84617af72abde413f6df0e31fe38dd480891cffd41b69ab35bbbc', '[\"*\"]', '2025-01-08 08:32:37', '2025-01-08 08:42:36', '2025-01-08 08:32:36', '2025-01-08 08:32:37');
INSERT INTO `personal_access_tokens` VALUES (42, 'App\\Models\\User', 3, 'api-access', 'ad4da0c8675cc70441a6a4abc8f8ca8ccb4fcf05981cf9cfa43e77fc2c277729', '[\"*\"]', '2025-01-08 08:34:03', '2025-01-08 08:44:02', '2025-01-08 08:34:02', '2025-01-08 08:34:03');
INSERT INTO `personal_access_tokens` VALUES (43, 'App\\Models\\User', 3, 'api-access', '6d758aa55cad33f508c350fe716898df664f235192132728b87f78898a9e70dd', '[\"*\"]', '2025-01-08 08:55:48', '2025-01-08 09:05:47', '2025-01-08 08:55:47', '2025-01-08 08:55:48');
INSERT INTO `personal_access_tokens` VALUES (44, 'App\\Models\\User', 3, 'api-access', '7de27a87552a2ac2f472309e4453c2c5845b759b7788ade8f9b32dafda7513b6', '[\"*\"]', '2025-01-08 09:12:34', '2025-01-08 09:22:33', '2025-01-08 09:12:33', '2025-01-08 09:12:34');
INSERT INTO `personal_access_tokens` VALUES (45, 'App\\Models\\User', 3, 'api-access', '17e65601b47b50790a335455537fb8e79d55f9d9953d7352209adadd7e4ffb22', '[\"*\"]', '2025-01-08 09:17:32', '2025-01-08 09:27:32', '2025-01-08 09:17:32', '2025-01-08 09:17:32');
INSERT INTO `personal_access_tokens` VALUES (46, 'App\\Models\\User', 3, 'api-access', 'bf202dcd4aa7fce0e0cee372063be781d1a2ff4f74b9c610c4de8fe2208f5749', '[\"*\"]', '2025-01-08 09:27:13', '2025-01-08 09:37:12', '2025-01-08 09:27:12', '2025-01-08 09:27:13');
INSERT INTO `personal_access_tokens` VALUES (47, 'App\\Models\\User', 3, 'api-access', '90d469e4103009a172847f786947076d4c3e3296220f8e0344654f8e2f0e377d', '[\"*\"]', '2025-01-08 09:29:58', '2025-01-08 09:39:58', '2025-01-08 09:29:58', '2025-01-08 09:29:58');
INSERT INTO `personal_access_tokens` VALUES (48, 'App\\Models\\User', 3, 'api-access', 'ce79868ed3e49cf2f2cfcd7fbfa5b6b495995c073b6f7350aefcba8242b4cc15', '[\"*\"]', '2025-01-08 09:38:59', '2025-01-08 09:48:58', '2025-01-08 09:38:58', '2025-01-08 09:38:59');
INSERT INTO `personal_access_tokens` VALUES (49, 'App\\Models\\User', 3, 'api-access', '8cdd34b4829a64e62f521ffd871b620e92486c2b844af44536d67c2ed78e4755', '[\"*\"]', '2025-01-08 09:42:14', '2025-01-08 09:52:14', '2025-01-08 09:42:14', '2025-01-08 09:42:14');
INSERT INTO `personal_access_tokens` VALUES (50, 'App\\Models\\User', 3, 'api-access', 'd23d21b63155b24af390ddf7aecfa904c27f976ea181342c8998cfe55f42dc7b', '[\"*\"]', '2025-01-08 09:54:26', '2025-01-08 10:04:24', '2025-01-08 09:54:24', '2025-01-08 09:54:26');
INSERT INTO `personal_access_tokens` VALUES (51, 'App\\Models\\User', 3, 'api-access', '317e01b54a8036aadd4a8f8d86e6c8b95e5dc37ed5947a2c7692e89552f69e45', '[\"*\"]', '2025-01-08 09:58:12', '2025-01-08 10:08:11', '2025-01-08 09:58:11', '2025-01-08 09:58:12');
INSERT INTO `personal_access_tokens` VALUES (52, 'App\\Models\\User', 3, 'api-access', 'c7896030ded64c78f096f43e79f36036338702415be06c8bfea31cbd771502ba', '[\"*\"]', NULL, '2025-01-09 03:12:28', '2025-01-09 03:02:29', '2025-01-09 03:02:29');
INSERT INTO `personal_access_tokens` VALUES (53, 'App\\Models\\User', 3, 'api-access', '58959c77b7bd6af914df622afb00bc5f6e6a09263c365684ecae8786fbc0ba5e', '[\"*\"]', '2025-01-09 03:06:21', '2025-01-09 03:16:15', '2025-01-09 03:06:15', '2025-01-09 03:06:21');
INSERT INTO `personal_access_tokens` VALUES (54, 'App\\Models\\User', 3, 'api-access', '2a6943ff194139cc2f44b705bcbdd5a9fd4f210435909810307e74ee8c0a8def', '[\"*\"]', '2025-01-09 03:09:54', '2025-01-09 03:17:08', '2025-01-09 03:07:08', '2025-01-09 03:09:54');
INSERT INTO `personal_access_tokens` VALUES (55, 'App\\Models\\User', 3, 'api-access', 'd52cf82c16074f4561ca716428353bcfb39f5a2e8670f3c564d160b29d7ff1cd', '[\"*\"]', '2025-01-09 03:09:48', '2025-01-09 03:19:06', '2025-01-09 03:09:06', '2025-01-09 03:09:48');
INSERT INTO `personal_access_tokens` VALUES (56, 'App\\Models\\User', 3, 'api-access', 'e3586180535f9134e9462fbfdb21ebdbd3d97c51c4b2269a0de3c1224a0caec2', '[\"*\"]', '2025-01-09 03:38:22', '2025-01-09 03:48:21', '2025-01-09 03:38:21', '2025-01-09 03:38:22');
INSERT INTO `personal_access_tokens` VALUES (57, 'App\\Models\\User', 3, 'api-access', 'e61219bd97ed6f1d17639c59596c437429787cecabc7beeb8298196cf8dd199e', '[\"*\"]', '2025-01-09 03:41:07', '2025-01-09 03:51:06', '2025-01-09 03:41:06', '2025-01-09 03:41:07');
INSERT INTO `personal_access_tokens` VALUES (58, 'App\\Models\\User', 3, 'api-access', 'b30801aa29ff27143623e4d4386ba2628a64694e01c890254716f9ce6df022e5', '[\"*\"]', '2025-01-09 03:42:57', '2025-01-09 03:52:57', '2025-01-09 03:42:57', '2025-01-09 03:42:57');
INSERT INTO `personal_access_tokens` VALUES (59, 'App\\Models\\User', 3, 'api-access', '1b9d63fc7df55571a3cece9faf5afa6541ac6605e70e0333cc8cd1af50747dfd', '[\"*\"]', '2025-01-09 03:43:00', '2025-01-09 03:53:00', '2025-01-09 03:43:00', '2025-01-09 03:43:00');
INSERT INTO `personal_access_tokens` VALUES (60, 'App\\Models\\User', 3, 'api-access', '8fa9c2b8732d8cb44f4936280661a8a41ab4add41d40dba001095c41ea969728', '[\"*\"]', '2025-01-09 03:43:05', '2025-01-09 03:53:05', '2025-01-09 03:43:05', '2025-01-09 03:43:05');
INSERT INTO `personal_access_tokens` VALUES (61, 'App\\Models\\User', 3, 'api-access', 'a4e971cc3aff922a6bc50d13575098f479fb2edcb428fb20a66bb7df6b2c647b', '[\"*\"]', '2025-01-09 04:02:07', '2025-01-09 04:12:06', '2025-01-09 04:02:06', '2025-01-09 04:02:07');
INSERT INTO `personal_access_tokens` VALUES (62, 'App\\Models\\User', 3, 'api-access', '8563cc3780305819b3ede4a2154487e7a846a28450e6a82bcd5aa63960e7c8bc', '[\"*\"]', '2025-01-09 04:02:45', '2025-01-09 04:12:45', '2025-01-09 04:02:45', '2025-01-09 04:02:45');
INSERT INTO `personal_access_tokens` VALUES (63, 'App\\Models\\User', 3, 'api-access', 'f12a58a4e4c41eb40b9a002f9b336c1f7ec661c2242ee432cf27947f774dac2e', '[\"*\"]', '2025-01-09 04:02:49', '2025-01-09 04:12:48', '2025-01-09 04:02:48', '2025-01-09 04:02:49');
INSERT INTO `personal_access_tokens` VALUES (64, 'App\\Models\\User', 3, 'api-access', 'cab290970f39605fe3f634a4191ee7cae064f0853a3752505630159dd2ce57a3', '[\"*\"]', '2025-01-09 04:06:48', '2025-01-09 04:12:50', '2025-01-09 04:02:50', '2025-01-09 04:06:48');
INSERT INTO `personal_access_tokens` VALUES (65, 'App\\Models\\User', 3, 'api-access', '7f77404253303edfef55b6abb42d16cc7ba3c471a2b3061e69ea76e14d69439c', '[\"*\"]', '2025-01-09 04:07:47', '2025-01-09 04:17:47', '2025-01-09 04:07:47', '2025-01-09 04:07:47');
INSERT INTO `personal_access_tokens` VALUES (66, 'App\\Models\\User', 3, 'api-access', '1f9485466f73082d8d17f9dc953e82d01ac69abfc44e52a319de88999a3b460d', '[\"*\"]', '2025-01-09 04:11:04', '2025-01-09 04:17:51', '2025-01-09 04:07:51', '2025-01-09 04:11:04');
INSERT INTO `personal_access_tokens` VALUES (67, 'App\\Models\\User', 3, 'api-access', '6e7e51d5c24ce9fcddefdd5eedab7f77b209518a8b7eaf1f045477446bf55176', '[\"*\"]', '2025-01-09 04:11:34', '2025-01-09 04:21:34', '2025-01-09 04:11:34', '2025-01-09 04:11:34');
INSERT INTO `personal_access_tokens` VALUES (68, 'App\\Models\\User', 3, 'api-access', '6c9f638332bebb2b41836d1b3e98dc9d8fb5fdf2efaca12b851697e617277122', '[\"*\"]', '2025-01-09 04:11:48', '2025-01-09 04:21:40', '2025-01-09 04:11:40', '2025-01-09 04:11:48');
INSERT INTO `personal_access_tokens` VALUES (69, 'App\\Models\\User', 3, 'api-access', 'cd0c0d8c60806dfea4cffcad621fe43ce8f6b9a9750641e5213eb6995121036f', '[\"*\"]', '2025-01-09 04:12:23', '2025-01-09 04:22:23', '2025-01-09 04:12:23', '2025-01-09 04:12:23');
INSERT INTO `personal_access_tokens` VALUES (70, 'App\\Models\\User', 3, 'api-access', 'b61f9bd4fd90bec048da5ae49398467ecfd55b07be21bfa9a5c2758449493a57', '[\"*\"]', '2025-01-09 04:12:44', '2025-01-09 04:22:26', '2025-01-09 04:12:26', '2025-01-09 04:12:44');
INSERT INTO `personal_access_tokens` VALUES (71, 'App\\Models\\User', 3, 'api-access', 'c58bf9e31295280040106d09edb1d32ac0c2d0dce23eddbb0b447370cecf64f1', '[\"*\"]', '2025-01-09 04:12:59', '2025-01-09 04:22:58', '2025-01-09 04:12:58', '2025-01-09 04:12:59');
INSERT INTO `personal_access_tokens` VALUES (72, 'App\\Models\\User', 3, 'api-access', 'c6435a4ddcd70a4cdfdc2fd929520f6fa84fb7eeb498bfb9c5b7aede86d3a7f6', '[\"*\"]', '2025-01-09 04:13:15', '2025-01-09 04:23:03', '2025-01-09 04:13:03', '2025-01-09 04:13:15');
INSERT INTO `personal_access_tokens` VALUES (73, 'App\\Models\\User', 3, 'api-access', 'd7b3bf15de8f9454cea095d4f24f6302109cdf164daaa0e1ca2d7eed1d212a30', '[\"*\"]', '2025-01-09 04:13:20', '2025-01-09 04:23:19', '2025-01-09 04:13:19', '2025-01-09 04:13:20');
INSERT INTO `personal_access_tokens` VALUES (74, 'App\\Models\\User', 3, 'api-access', '3d4fc0d06efc8230032d462197016ec55089ee1f8124e07f126223b07aeaa89d', '[\"*\"]', '2025-01-09 04:13:22', '2025-01-09 04:23:21', '2025-01-09 04:13:21', '2025-01-09 04:13:22');
INSERT INTO `personal_access_tokens` VALUES (75, 'App\\Models\\User', 3, 'api-access', '907a17768486b8756a4c9009b12a45c23387e62fd3efa4aaa3a3ed5d3593fa15', '[\"*\"]', '2025-01-09 04:36:52', '2025-01-09 04:46:52', '2025-01-09 04:36:52', '2025-01-09 04:36:52');
INSERT INTO `personal_access_tokens` VALUES (76, 'App\\Models\\User', 3, 'api-access', 'd1db21620ba93f7dd306460c647342cfeaf71eef9b7f7ad05420fd5bf70ac806', '[\"*\"]', '2025-01-09 04:37:08', '2025-01-09 04:47:02', '2025-01-09 04:37:02', '2025-01-09 04:37:08');
INSERT INTO `personal_access_tokens` VALUES (77, 'App\\Models\\User', 3, 'api-access', 'b65bfccbd99fe1a7d31d30e57caa86a17cbaec8611ce5dbf8b3bff597b9123d9', '[\"*\"]', '2025-01-09 04:37:10', '2025-01-09 04:47:10', '2025-01-09 04:37:10', '2025-01-09 04:37:10');
INSERT INTO `personal_access_tokens` VALUES (78, 'App\\Models\\User', 3, 'api-access', '568dd71acda606366e2c11b07cd18a09e598b906c68bf1dcab233e428f8dff6b', '[\"*\"]', '2025-01-09 04:41:41', '2025-01-09 04:51:22', '2025-01-09 04:41:22', '2025-01-09 04:41:41');
INSERT INTO `personal_access_tokens` VALUES (79, 'App\\Models\\User', 3, 'api-access', '3a6b8336dbc57053f383a0ab9f23e905358e8bad686cd38df5aff15e4034ae28', '[\"*\"]', '2025-01-09 04:48:50', '2025-01-09 04:57:55', '2025-01-09 04:47:55', '2025-01-09 04:48:50');
INSERT INTO `personal_access_tokens` VALUES (80, 'App\\Models\\User', 3, 'api-access', 'cfa931850d096a8b7f43799dfedfb8c81db90a0ca17d33259e58756a82820c73', '[\"*\"]', '2025-01-09 04:51:34', '2025-01-09 05:01:05', '2025-01-09 04:51:05', '2025-01-09 04:51:34');
INSERT INTO `personal_access_tokens` VALUES (81, 'App\\Models\\User', 3, 'api-access', 'de6e984afcc0bd4c7b32e577097a39ac693cdfcc4a0ce256fca9d4038e9b2093', '[\"*\"]', '2025-01-09 04:52:05', '2025-01-09 05:01:59', '2025-01-09 04:51:59', '2025-01-09 04:52:05');
INSERT INTO `personal_access_tokens` VALUES (82, 'App\\Models\\User', 3, 'api-access', '7283a10ab1ec9cf2186e0c53d6b6594160bcbd90c70d97e25639f4075405a549', '[\"*\"]', '2025-01-09 04:52:27', '2025-01-09 05:02:26', '2025-01-09 04:52:26', '2025-01-09 04:52:27');
INSERT INTO `personal_access_tokens` VALUES (83, 'App\\Models\\User', 3, 'api-access', '9c63a23cb97cb6c218f8f5adda73af86bfddd48635e579741a9f4ffb2524b734', '[\"*\"]', '2025-01-09 04:52:28', '2025-01-09 05:02:28', '2025-01-09 04:52:28', '2025-01-09 04:52:28');
INSERT INTO `personal_access_tokens` VALUES (84, 'App\\Models\\User', 3, 'api-access', '86f60101a3f0dfb8b2095b08d7154788daf5a0855302e1e2bd619a205743f96d', '[\"*\"]', '2025-01-09 04:53:01', '2025-01-09 05:03:00', '2025-01-09 04:53:00', '2025-01-09 04:53:01');
INSERT INTO `personal_access_tokens` VALUES (85, 'App\\Models\\User', 3, 'api-access', '88f37840f56c13a0fb2d5464d28f3e74092584d762bd8e84c81db57762ae5eba', '[\"*\"]', '2025-01-09 04:53:14', '2025-01-09 05:03:05', '2025-01-09 04:53:05', '2025-01-09 04:53:14');
INSERT INTO `personal_access_tokens` VALUES (86, 'App\\Models\\User', 3, 'api-access', '2b555dc362638c09cecb36f6f8bb557f40d4eced319acce5635a024623c8357a', '[\"*\"]', '2025-01-09 04:54:46', '2025-01-09 05:04:33', '2025-01-09 04:54:33', '2025-01-09 04:54:46');
INSERT INTO `personal_access_tokens` VALUES (87, 'App\\Models\\User', 3, 'api-access', 'ad7c0d1ecfb24e74ea7a43022528b4156b80b4c20210c575a72ff6b77ddf7c08', '[\"*\"]', '2025-01-09 04:54:49', '2025-01-09 05:04:49', '2025-01-09 04:54:49', '2025-01-09 04:54:49');
INSERT INTO `personal_access_tokens` VALUES (88, 'App\\Models\\User', 3, 'api-access', '22d809a95210809422e8e1a3fa439f3a3193500d305a058460deb35260ee0f4d', '[\"*\"]', '2025-01-09 04:56:33', '2025-01-09 05:06:07', '2025-01-09 04:56:07', '2025-01-09 04:56:33');
INSERT INTO `personal_access_tokens` VALUES (89, 'App\\Models\\User', 3, 'api-access', '258c57aa892577c772eea81a755f31063726d2fc0e6f4fd6fc162fb722a4d354', '[\"*\"]', NULL, '2025-01-09 05:13:07', '2025-01-09 05:03:07', '2025-01-09 05:03:07');
INSERT INTO `personal_access_tokens` VALUES (90, 'App\\Models\\User', 3, 'api-access', '4d98121d5f5e4cb747f6ed4299b21547845abc3824d1f5c1eebd90d470188824', '[\"*\"]', '2025-01-09 05:03:09', '2025-01-09 05:13:09', '2025-01-09 05:03:09', '2025-01-09 05:03:09');
INSERT INTO `personal_access_tokens` VALUES (91, 'App\\Models\\User', 3, 'api-access', '0d7c40d0c4eb8b2d937c6ab126c2f1996abd392d89df8b4e8150f1e12186a4ad', '[\"*\"]', '2025-01-09 05:10:35', '2025-01-09 05:20:35', '2025-01-09 05:10:35', '2025-01-09 05:10:35');
INSERT INTO `personal_access_tokens` VALUES (92, 'App\\Models\\User', 3, 'api-access', '138e07d27d89dc9136e5de2150712560b0a4d385d241081fec9ac19a0f4cc744', '[\"*\"]', '2025-01-09 05:10:51', '2025-01-09 05:20:41', '2025-01-09 05:10:41', '2025-01-09 05:10:51');
INSERT INTO `personal_access_tokens` VALUES (93, 'App\\Models\\User', 3, 'api-access', '01eda0e3f41c8b661720c1ebda9ed226b0f0d44c8e20358d9852168158ed87e3', '[\"*\"]', '2025-01-09 05:10:53', '2025-01-09 05:20:53', '2025-01-09 05:10:53', '2025-01-09 05:10:53');
INSERT INTO `personal_access_tokens` VALUES (94, 'App\\Models\\User', 3, 'api-access', 'a3ae8788bffad7824c4122a551053fd08a6d80d1e3762aa0b8273e76af1d78ab', '[\"*\"]', NULL, '2025-01-09 05:21:00', '2025-01-09 05:11:00', '2025-01-09 05:11:00');
INSERT INTO `personal_access_tokens` VALUES (95, 'App\\Models\\User', 3, 'api-access', '07568c0e2cfcde8459bbe432d03c38ffa9e7931463edaa8a9902dacb35ed2fb2', '[\"*\"]', '2025-01-09 05:31:22', '2025-01-09 05:41:22', '2025-01-09 05:31:22', '2025-01-09 05:31:22');
INSERT INTO `personal_access_tokens` VALUES (96, 'App\\Models\\User', 3, 'api-access', '36a1ccb494170413ec19da037146e9f07498f105eb1a7bdf8858704f1be843e3', '[\"*\"]', NULL, '2025-01-09 05:41:39', '2025-01-09 05:31:39', '2025-01-09 05:31:39');
INSERT INTO `personal_access_tokens` VALUES (97, 'App\\Models\\User', 3, 'api-access', '237cd44105c75bb1de2c9da22460afec066d5ed43ff50b1bcf7f364abb72238a', '[\"*\"]', '2025-01-09 05:32:21', '2025-01-09 05:42:20', '2025-01-09 05:32:20', '2025-01-09 05:32:21');
INSERT INTO `personal_access_tokens` VALUES (98, 'App\\Models\\User', 3, 'api-access', '1323fa083659586211102dfbb64a1e3def90c5e89ac74eaaf3904b3f08eba8f4', '[\"*\"]', NULL, '2025-01-09 05:42:27', '2025-01-09 05:32:27', '2025-01-09 05:32:27');
INSERT INTO `personal_access_tokens` VALUES (99, 'App\\Models\\User', 3, 'api-access', '0235e3c42efd52782765857f99c346608288155897adc79856f7000aa5588758', '[\"*\"]', '2025-01-09 05:32:44', '2025-01-09 05:42:44', '2025-01-09 05:32:44', '2025-01-09 05:32:44');
INSERT INTO `personal_access_tokens` VALUES (100, 'App\\Models\\User', 3, 'api-access', 'aa81b6b8ec8f9617e0d7ff76345bcf34dc8b871b44ff2613cc57139ed8870cc5', '[\"*\"]', NULL, '2025-01-09 05:42:49', '2025-01-09 05:32:49', '2025-01-09 05:32:49');
INSERT INTO `personal_access_tokens` VALUES (101, 'App\\Models\\User', 3, 'api-access', 'd8430c96ce1bad33b253acae018fd3e6bdbd5d68b2cefb4109260b6c2942378f', '[\"*\"]', '2025-01-09 05:33:53', '2025-01-09 05:43:53', '2025-01-09 05:33:53', '2025-01-09 05:33:53');
INSERT INTO `personal_access_tokens` VALUES (102, 'App\\Models\\User', 3, 'api-access', '9cf6e09a82bd1d941dce6c11cfeec1fb938c6eb03cabef8ddd1d415f5d91b6b3', '[\"*\"]', NULL, '2025-01-09 05:44:03', '2025-01-09 05:34:03', '2025-01-09 05:34:03');
INSERT INTO `personal_access_tokens` VALUES (103, 'App\\Models\\User', 3, 'api-access', '6d17a8262db77cbc8a8b79e98bdec3e72a34926d716f04ed9924e4b8109d70b0', '[\"*\"]', '2025-01-09 05:36:15', '2025-01-09 05:46:14', '2025-01-09 05:36:15', '2025-01-09 05:36:15');
INSERT INTO `personal_access_tokens` VALUES (104, 'App\\Models\\User', 3, 'api-access', '37195c3cb71164222c96220e2a5505ddfc42458fe7bf29affed40b0559bf3457', '[\"*\"]', NULL, '2025-01-09 05:46:21', '2025-01-09 05:36:21', '2025-01-09 05:36:21');
INSERT INTO `personal_access_tokens` VALUES (105, 'App\\Models\\User', 3, 'api-access', '892478d4e2c1856dacb9836d4e4eab3f75e0f2cb4468341d10a930945d0b3e6e', '[\"*\"]', '2025-01-09 05:36:32', '2025-01-09 05:46:31', '2025-01-09 05:36:31', '2025-01-09 05:36:32');
INSERT INTO `personal_access_tokens` VALUES (106, 'App\\Models\\User', 3, 'api-access', 'cd34638c3b769f5f8099fc2b9abe57670ce20755c1fc68040052bc32e7d41455', '[\"*\"]', '2025-01-09 05:37:08', '2025-01-09 05:47:08', '2025-01-09 05:37:08', '2025-01-09 05:37:08');
INSERT INTO `personal_access_tokens` VALUES (107, 'App\\Models\\User', 3, 'api-access', '3b1a5feb1535e2bed791f3595bd1dd9a2635625f725fd749dff25e892e86496d', '[\"*\"]', NULL, '2025-01-09 05:47:13', '2025-01-09 05:37:13', '2025-01-09 05:37:13');
INSERT INTO `personal_access_tokens` VALUES (108, 'App\\Models\\User', 3, 'api-access', '3052454154ade5ee0ee8535790b788e4331e73d5413808a1eeea2b5ee0d139ef', '[\"*\"]', '2025-01-09 05:37:46', '2025-01-09 05:47:46', '2025-01-09 05:37:46', '2025-01-09 05:37:46');
INSERT INTO `personal_access_tokens` VALUES (109, 'App\\Models\\User', 3, 'api-access', 'a90c0a32cf5afa6e958df092ff75d1676997d3693abcec908b790ede30e78d10', '[\"*\"]', '2025-01-09 05:37:55', '2025-01-09 05:47:51', '2025-01-09 05:37:51', '2025-01-09 05:37:55');
INSERT INTO `personal_access_tokens` VALUES (110, 'App\\Models\\User', 3, 'api-access', '7192266d803d06068950d447581656e12705aa511444a33febae5922cef26947', '[\"*\"]', '2025-01-09 05:37:59', '2025-01-09 05:47:58', '2025-01-09 05:37:58', '2025-01-09 05:37:59');
INSERT INTO `personal_access_tokens` VALUES (111, 'App\\Models\\User', 3, 'api-access', '8191c309f247f3366be221b801ae9cab728fb70bd379f6854d6873ff4bdf42e4', '[\"*\"]', '2025-01-09 05:38:31', '2025-01-09 05:48:16', '2025-01-09 05:38:16', '2025-01-09 05:38:31');
INSERT INTO `personal_access_tokens` VALUES (112, 'App\\Models\\User', 3, 'api-access', '4c6299fc9f3a35f603fc464b6f01ea4540f6321397a9956f58e6ea32e2b7de3a', '[\"*\"]', '2025-01-09 05:38:35', '2025-01-09 05:48:35', '2025-01-09 05:38:35', '2025-01-09 05:38:35');
INSERT INTO `personal_access_tokens` VALUES (113, 'App\\Models\\User', 3, 'api-access', 'b07c7152623bc2ef6eb5bb2f2b52aebfd2b9b9e0c15badbbbbe8401d17b86457', '[\"*\"]', '2025-01-09 05:39:00', '2025-01-09 05:48:55', '2025-01-09 05:38:55', '2025-01-09 05:39:00');
INSERT INTO `personal_access_tokens` VALUES (114, 'App\\Models\\User', 3, 'api-access', 'b884bdeb54a851c359ff507c5f424f85dccd258f2cd25606e59a0f5cf09a687e', '[\"*\"]', '2025-01-09 05:39:07', '2025-01-09 05:49:07', '2025-01-09 05:39:07', '2025-01-09 05:39:07');
INSERT INTO `personal_access_tokens` VALUES (115, 'App\\Models\\User', 3, 'api-access', '50aeeb82cc65f1a3077f85d324fe84a74d56fe4c34c8b5280d63c04a680de709', '[\"*\"]', '2025-01-09 05:39:21', '2025-01-09 05:49:21', '2025-01-09 05:39:21', '2025-01-09 05:39:21');
INSERT INTO `personal_access_tokens` VALUES (116, 'App\\Models\\User', 3, 'api-access', '5512446cd4e4115fc99e8610ef6dc8799ab913f21c10fdb0c1e62525af7b4993', '[\"*\"]', '2025-01-09 06:12:11', '2025-01-09 06:22:11', '2025-01-09 06:12:11', '2025-01-09 06:12:11');
INSERT INTO `personal_access_tokens` VALUES (117, 'App\\Models\\User', 3, 'api-access', 'a56fa865343c4d3c21dbd4cfd7b5f9e06601ebdf2099c43569d9e1a205893438', '[\"*\"]', '2025-01-09 06:12:47', '2025-01-09 06:22:32', '2025-01-09 06:12:32', '2025-01-09 06:12:47');
INSERT INTO `personal_access_tokens` VALUES (118, 'App\\Models\\User', 3, 'api-access', '829b7212f464c4e583b5df133fcaef1c92ab89cfddc4c0d210d79e71d4d16619', '[\"*\"]', '2025-01-09 06:12:49', '2025-01-09 06:22:49', '2025-01-09 06:12:49', '2025-01-09 06:12:49');
INSERT INTO `personal_access_tokens` VALUES (119, 'App\\Models\\User', 3, 'api-access', '1c78e86e5cc172ac86a1d6aa314ab37628a6fd1d8a69ead17f39f16ded2ac994', '[\"*\"]', '2025-01-09 06:13:17', '2025-01-09 06:23:07', '2025-01-09 06:13:07', '2025-01-09 06:13:17');
INSERT INTO `personal_access_tokens` VALUES (120, 'App\\Models\\User', 3, 'api-access', 'cc2424728efe055c185165882f132df999a54fc9067f18c5983b5fd6fae4528d', '[\"*\"]', '2025-01-09 06:13:35', '2025-01-09 06:23:20', '2025-01-09 06:13:20', '2025-01-09 06:13:35');
INSERT INTO `personal_access_tokens` VALUES (121, 'App\\Models\\User', 3, 'api-access', '5876a2115137172669e39df29e00a0f08b6953fd1ba867f5e0a5b5877c6eaaed', '[\"*\"]', '2025-01-09 06:14:25', '2025-01-09 06:24:25', '2025-01-09 06:14:25', '2025-01-09 06:14:25');
INSERT INTO `personal_access_tokens` VALUES (122, 'App\\Models\\User', 3, 'api-access', 'e6bf4f12cba5ba81c756a6480f910711763c1220eff8b540d7dd07557bf20aa9', '[\"*\"]', '2025-01-09 06:14:27', '2025-01-09 06:24:27', '2025-01-09 06:14:27', '2025-01-09 06:14:27');
INSERT INTO `personal_access_tokens` VALUES (123, 'App\\Models\\User', 3, 'api-access', 'e53d4a88e20724ee2347bf18e75a79fb1ee69cd775d370671d8eda85bb40fa09', '[\"*\"]', '2025-01-09 06:14:29', '2025-01-09 06:24:28', '2025-01-09 06:14:28', '2025-01-09 06:14:29');
INSERT INTO `personal_access_tokens` VALUES (124, 'App\\Models\\User', 3, 'api-access', '9d56641361a534c03b0abe605dc8f9b55f1f484b07608ffd9888d67ceecf52d1', '[\"*\"]', '2025-01-09 06:14:30', '2025-01-09 06:24:30', '2025-01-09 06:14:30', '2025-01-09 06:14:30');
INSERT INTO `personal_access_tokens` VALUES (125, 'App\\Models\\User', 3, 'api-access', '07017436cb1acd4d2a977b6c6a0ed168248e8824586c5cc6ac48530886ec9dac', '[\"*\"]', '2025-01-09 06:14:32', '2025-01-09 06:24:32', '2025-01-09 06:14:32', '2025-01-09 06:14:32');
INSERT INTO `personal_access_tokens` VALUES (126, 'App\\Models\\User', 3, 'api-access', '7529ac6a02292a28186a710a8f17fc6f6d53fd81aa5c9e7c303837928082c9b6', '[\"*\"]', NULL, '2025-01-09 06:25:37', '2025-01-09 06:15:37', '2025-01-09 06:15:37');
INSERT INTO `personal_access_tokens` VALUES (127, 'App\\Models\\User', 3, 'api-access', '2fd7888b957a6790d29f0179df4b74d06d0326f3f661f0d7b96e4f3c0f124260', '[\"*\"]', '2025-01-09 06:15:58', '2025-01-09 06:25:58', '2025-01-09 06:15:58', '2025-01-09 06:15:58');
INSERT INTO `personal_access_tokens` VALUES (128, 'App\\Models\\User', 3, 'api-access', '025819d09fcaaa878135c224e93066d0ef6afed62d60708c07f2923bdb0cc2d4', '[\"*\"]', NULL, '2025-01-09 06:26:05', '2025-01-09 06:16:05', '2025-01-09 06:16:05');
INSERT INTO `personal_access_tokens` VALUES (129, 'App\\Models\\User', 3, 'api-access', 'cffe78a37ac2855764db774818ae22fd800b0f5fda08bc4eaac12c85d5fcc262', '[\"*\"]', '2025-01-09 06:16:08', '2025-01-09 06:26:08', '2025-01-09 06:16:08', '2025-01-09 06:16:08');
INSERT INTO `personal_access_tokens` VALUES (130, 'App\\Models\\User', 3, 'api-access', '72947b247b1f8f369db12491f136157716a5888cda9bf85e9511bfc3a474962d', '[\"*\"]', '2025-01-09 06:26:50', '2025-01-09 06:36:35', '2025-01-09 06:26:35', '2025-01-09 06:26:50');
INSERT INTO `personal_access_tokens` VALUES (131, 'App\\Models\\User', 3, 'api-access', 'f91719472828a300e1be7ab64c23e9ed552bd4afa26d53b750ff89d0ab8d65cb', '[\"*\"]', '2025-01-09 06:26:53', '2025-01-09 06:36:53', '2025-01-09 06:26:53', '2025-01-09 06:26:53');
INSERT INTO `personal_access_tokens` VALUES (132, 'App\\Models\\User', 3, 'api-access', 'e717a23ed2ffaf6cba83cb21e3e607a6d34562521bad8a16c335329ed951d015', '[\"*\"]', '2025-01-09 06:27:13', '2025-01-09 06:37:02', '2025-01-09 06:27:02', '2025-01-09 06:27:13');
INSERT INTO `personal_access_tokens` VALUES (133, 'App\\Models\\User', 3, 'api-access', 'f1926d9970f250e5e5a77c0026d9cfba3d36c21809fbe72a3c50d07fb622b575', '[\"*\"]', '2025-01-09 06:27:16', '2025-01-09 06:37:16', '2025-01-09 06:27:16', '2025-01-09 06:27:16');
INSERT INTO `personal_access_tokens` VALUES (134, 'App\\Models\\User', 3, 'api-access', '08c4ae0e3cc90f5f23fc13a81724ceebf7b29010c0f68f87e2ea3006ed20d828', '[\"*\"]', '2025-01-09 06:27:33', '2025-01-09 06:37:23', '2025-01-09 06:27:23', '2025-01-09 06:27:33');
INSERT INTO `personal_access_tokens` VALUES (135, 'App\\Models\\User', 3, 'api-access', 'ef0e10f3ef922c111692702040aa8e2bde34e3d87e39eee5f523ee2bef2c1467', '[\"*\"]', '2025-01-09 06:27:49', '2025-01-09 06:37:36', '2025-01-09 06:27:36', '2025-01-09 06:27:49');
INSERT INTO `personal_access_tokens` VALUES (136, 'App\\Models\\User', 3, 'api-access', '607305b2fd40c3185a544cc8d66b686d48e151ee5a266a56e5e7594dfea7fe64', '[\"*\"]', '2025-01-09 06:27:56', '2025-01-09 06:37:56', '2025-01-09 06:27:56', '2025-01-09 06:27:56');
INSERT INTO `personal_access_tokens` VALUES (137, 'App\\Models\\User', 3, 'api-access', '5f9803380cb88ac02ece5553c8aa57cbc8b09fe8fb08c07459a759b70e745a27', '[\"*\"]', '2025-01-09 06:29:31', '2025-01-09 06:39:31', '2025-01-09 06:29:31', '2025-01-09 06:29:31');
INSERT INTO `personal_access_tokens` VALUES (138, 'App\\Models\\User', 3, 'api-access', 'fee87cc3b9c7fb312e5e2a23fcb1ed3aa27086d74da39b4129cc9fdc0aeccb7a', '[\"*\"]', '2025-01-09 06:29:47', '2025-01-09 06:39:36', '2025-01-09 06:29:36', '2025-01-09 06:29:47');
INSERT INTO `personal_access_tokens` VALUES (139, 'App\\Models\\User', 3, 'api-access', '38f850308be2e66be479e126d5e84b10266f3e1c0fa7a62de6f956dc2fc67c05', '[\"*\"]', '2025-01-09 06:29:50', '2025-01-09 06:39:50', '2025-01-09 06:29:50', '2025-01-09 06:29:50');
INSERT INTO `personal_access_tokens` VALUES (140, 'App\\Models\\User', 3, 'api-access', 'f1f65aaba7da06cad521d7d5244f2509a87c959213639bab5a66f57cff726fa2', '[\"*\"]', NULL, '2025-01-09 07:16:29', '2025-01-09 07:06:29', '2025-01-09 07:06:29');
INSERT INTO `personal_access_tokens` VALUES (141, 'App\\Models\\User', 3, 'api-access', '9f8cacd58f2a8b3d04d3cd7a88ffc69635ec8b4e336d4ecc0c78c8730d6d65b3', '[\"*\"]', '2025-01-09 07:06:30', '2025-01-09 07:16:30', '2025-01-09 07:06:30', '2025-01-09 07:06:30');
INSERT INTO `personal_access_tokens` VALUES (142, 'App\\Models\\User', 3, 'api-access', '97f07372acff7cb79adb0b4d7c88b7bab34d16df94a6dcb2e4623b065bb660b7', '[\"*\"]', NULL, '2025-01-09 07:18:53', '2025-01-09 07:08:53', '2025-01-09 07:08:53');
INSERT INTO `personal_access_tokens` VALUES (143, 'App\\Models\\User', 3, 'api-access', '6bbff0d2e149c12e608b1926c96034418364c53394f5e1bddb074f1415a79f15', '[\"*\"]', '2025-01-09 07:08:53', '2025-01-09 07:18:53', '2025-01-09 07:08:53', '2025-01-09 07:08:53');
INSERT INTO `personal_access_tokens` VALUES (144, 'App\\Models\\User', 3, 'api-access', 'a996e4b632903a8f04e227f6c94138417f354b575643035d8aadb8735eba1f93', '[\"*\"]', NULL, '2025-01-09 07:32:23', '2025-01-09 07:22:23', '2025-01-09 07:22:23');
INSERT INTO `personal_access_tokens` VALUES (145, 'App\\Models\\User', 3, 'api-access', 'c0b67ea013cac4989b6267df0dbfa1112a5b230cffdb145a170f75a2aad4f356', '[\"*\"]', '2025-01-09 07:22:24', '2025-01-09 07:32:24', '2025-01-09 07:22:24', '2025-01-09 07:22:24');
INSERT INTO `personal_access_tokens` VALUES (146, 'App\\Models\\User', 3, 'api-access', '18326f20a086bbb51842cf8c4874080e6c483c1c2fca91732c115059b3d72f45', '[\"*\"]', NULL, '2025-01-09 07:32:46', '2025-01-09 07:22:46', '2025-01-09 07:22:46');
INSERT INTO `personal_access_tokens` VALUES (147, 'App\\Models\\User', 3, 'api-access', 'ce2555bbae498d8989473b7010d39388a2390684abc0b78427bc771817967c70', '[\"*\"]', '2025-01-09 07:22:47', '2025-01-09 07:32:47', '2025-01-09 07:22:47', '2025-01-09 07:22:47');
INSERT INTO `personal_access_tokens` VALUES (148, 'App\\Models\\User', 3, 'api-access', 'd25b8d42d6181b1660ca1c1c555ad4e36bc00b7c2a945ca14c94c3eaa90de714', '[\"*\"]', NULL, '2025-01-09 08:08:58', '2025-01-09 07:58:58', '2025-01-09 07:58:58');
INSERT INTO `personal_access_tokens` VALUES (149, 'App\\Models\\User', 3, 'api-access', 'c0c1bcd68ee3f902f9831d72d694b3c1258d3fa68ec8d730e7e2af3ea859228f', '[\"*\"]', '2025-01-09 07:58:58', '2025-01-09 08:08:58', '2025-01-09 07:58:58', '2025-01-09 07:58:58');
INSERT INTO `personal_access_tokens` VALUES (150, 'App\\Models\\User', 3, 'api-access', '8d499456369283d0e5bff084d8a4bd0a274b0192145dc70133edf62a808a9d0c', '[\"*\"]', NULL, '2025-01-09 08:09:11', '2025-01-09 07:59:11', '2025-01-09 07:59:11');
INSERT INTO `personal_access_tokens` VALUES (151, 'App\\Models\\User', 3, 'api-access', '97b060215fcc84aad568672ce5acae19134be5568a9cd75e715e29f4393ee4c1', '[\"*\"]', '2025-01-09 07:59:12', '2025-01-09 08:09:12', '2025-01-09 07:59:12', '2025-01-09 07:59:12');
INSERT INTO `personal_access_tokens` VALUES (152, 'App\\Models\\User', 3, 'api-access', 'be2b02765be456749b4bfb983627ac0031c69b272cff9925688cdd9d9b9a90bc', '[\"*\"]', NULL, '2025-01-09 08:35:55', '2025-01-09 08:25:55', '2025-01-09 08:25:55');
INSERT INTO `personal_access_tokens` VALUES (153, 'App\\Models\\User', 3, 'api-access', '5ab431d7f6803d9403b302947a71ed34e2b5c56be85fa6a9f218b4a6853a3ed5', '[\"*\"]', '2025-01-09 08:25:55', '2025-01-09 08:35:55', '2025-01-09 08:25:55', '2025-01-09 08:25:55');
INSERT INTO `personal_access_tokens` VALUES (154, 'App\\Models\\User', 3, 'api-access', '07c0f8f60bc16c09086e9ec50ddecc74d2b5805442efedae232099371cf7c78a', '[\"*\"]', NULL, '2025-01-09 08:38:10', '2025-01-09 08:28:10', '2025-01-09 08:28:10');
INSERT INTO `personal_access_tokens` VALUES (155, 'App\\Models\\User', 3, 'api-access', 'f47cfcff740f213221b315f88cc8a29e3bc58bbdeb7e224da91962289d27745d', '[\"*\"]', '2025-01-09 08:28:10', '2025-01-09 08:38:10', '2025-01-09 08:28:10', '2025-01-09 08:28:10');
INSERT INTO `personal_access_tokens` VALUES (156, 'App\\Models\\User', 3, 'api-access', '3c30f591e4662acca01f86b88feda5ffae0c0dd7d8af1e18a2e7d3b8a4fa9773', '[\"*\"]', NULL, '2025-01-09 08:42:26', '2025-01-09 08:32:26', '2025-01-09 08:32:26');
INSERT INTO `personal_access_tokens` VALUES (157, 'App\\Models\\User', 3, 'api-access', '04664b4c7fef6575f4e191efde5902314638c6572f0ace20bd263ea101fb61e9', '[\"*\"]', '2025-01-09 08:32:27', '2025-01-09 08:42:26', '2025-01-09 08:32:26', '2025-01-09 08:32:27');
INSERT INTO `personal_access_tokens` VALUES (158, 'App\\Models\\User', 3, 'api-access', 'ba891b91770ccc51dd36cf3bea05bc83fa4ba54751138a16bb605f3c04e93be1', '[\"*\"]', NULL, '2025-01-09 08:45:21', '2025-01-09 08:35:21', '2025-01-09 08:35:21');
INSERT INTO `personal_access_tokens` VALUES (159, 'App\\Models\\User', 3, 'api-access', 'c56b70a4a4ac39fe1638c7030c0b323c27efc91192158df74ae41df68ee14a45', '[\"*\"]', '2025-01-09 08:35:22', '2025-01-09 08:45:22', '2025-01-09 08:35:22', '2025-01-09 08:35:22');
INSERT INTO `personal_access_tokens` VALUES (160, 'App\\Models\\User', 3, 'api-access', '1af5cf2d1e55760d5180e9e23509120155a418871704e0267df236c1b4efe35c', '[\"*\"]', '2025-01-09 08:35:42', '2025-01-09 08:45:42', '2025-01-09 08:35:42', '2025-01-09 08:35:42');
INSERT INTO `personal_access_tokens` VALUES (161, 'App\\Models\\User', 3, 'api-access', 'd167862712960473c40f60cfa93160358903e4b35ba6c5158ae87dff28d00de5', '[\"*\"]', '2025-01-09 08:35:46', '2025-01-09 08:45:46', '2025-01-09 08:35:46', '2025-01-09 08:35:46');
INSERT INTO `personal_access_tokens` VALUES (162, 'App\\Models\\User', 3, 'api-access', '2956d35f99ff6d9e1b0368d816800906de38591afba41b241631a6f2588cd4d9', '[\"*\"]', '2025-01-09 08:35:48', '2025-01-09 08:45:48', '2025-01-09 08:35:48', '2025-01-09 08:35:48');
INSERT INTO `personal_access_tokens` VALUES (163, 'App\\Models\\User', 3, 'api-access', '10af730721c234aea716dab0082cc8570fb9223e8f90d6e02036d50b9fcd5046', '[\"*\"]', '2025-01-09 08:37:34', '2025-01-09 08:47:32', '2025-01-09 08:37:32', '2025-01-09 08:37:34');
INSERT INTO `personal_access_tokens` VALUES (164, 'App\\Models\\User', 3, 'api-access', 'ae5bbc765b08f480a4a32d1b58c6eb81ddd0c79fc20101dacf88058eb000565f', '[\"*\"]', '2025-01-09 08:37:39', '2025-01-09 08:47:38', '2025-01-09 08:37:38', '2025-01-09 08:37:39');
INSERT INTO `personal_access_tokens` VALUES (165, 'App\\Models\\User', 3, 'api-access', '890f58b680176dc3cc78368fb4f9f2108b5eeb88d8df75e328a2b6b72e9424e9', '[\"*\"]', NULL, '2025-01-09 08:47:41', '2025-01-09 08:37:41', '2025-01-09 08:37:41');
INSERT INTO `personal_access_tokens` VALUES (166, 'App\\Models\\User', 3, 'api-access', '9e0b47fee0c997921d7b270e8496671599ce0ecdc1b9d381b5449ef1ca661446', '[\"*\"]', '2025-01-09 08:37:47', '2025-01-09 08:47:47', '2025-01-09 08:37:47', '2025-01-09 08:37:47');
INSERT INTO `personal_access_tokens` VALUES (167, 'App\\Models\\User', 3, 'api-access', 'e2af64a589635f2f6cf48f359179137adaf054ab09c88ee572465edcafc151a2', '[\"*\"]', NULL, '2025-01-09 08:47:50', '2025-01-09 08:37:50', '2025-01-09 08:37:50');
INSERT INTO `personal_access_tokens` VALUES (168, 'App\\Models\\User', 3, 'api-access', '7e6eff7679256036c0a303c96bb67e2f06af74d2871cda2284e86d37231295b2', '[\"*\"]', '2025-01-09 08:38:04', '2025-01-09 08:48:04', '2025-01-09 08:38:04', '2025-01-09 08:38:04');
INSERT INTO `personal_access_tokens` VALUES (169, 'App\\Models\\User', 3, 'api-access', 'a6dc63bdfde751d053658e10eb361016fea2a7a8a0d90f59de09797c830fd48a', '[\"*\"]', NULL, '2025-01-09 08:58:43', '2025-01-09 08:48:43', '2025-01-09 08:48:43');
INSERT INTO `personal_access_tokens` VALUES (170, 'App\\Models\\User', 3, 'api-access', '13e6b958343498f1fc93d0630f857dfcd6f4889f7a2b8aa953affdfff8f7d28c', '[\"*\"]', '2025-01-09 08:48:43', '2025-01-09 08:58:43', '2025-01-09 08:48:43', '2025-01-09 08:48:43');
INSERT INTO `personal_access_tokens` VALUES (171, 'App\\Models\\User', 3, 'api-access', '16ab9bbaa836f3f9908a2e8bfb1f5ac20974f0580240ff5900447b58e7a0aac2', '[\"*\"]', NULL, '2025-01-09 08:59:13', '2025-01-09 08:49:13', '2025-01-09 08:49:13');
INSERT INTO `personal_access_tokens` VALUES (172, 'App\\Models\\User', 3, 'api-access', '8652be0cfd37953edc8a0f847acdfd43810c9b866748e5171b548f70d1834aa4', '[\"*\"]', '2025-01-09 08:49:14', '2025-01-09 08:59:14', '2025-01-09 08:49:14', '2025-01-09 08:49:14');
INSERT INTO `personal_access_tokens` VALUES (173, 'App\\Models\\User', 3, 'api-access', '44882f764a845c8b352c47453dfcb99cddb1c4f5ef0c4733f46a3aa38bf84e32', '[\"*\"]', '2025-01-09 08:52:45', '2025-01-09 09:02:45', '2025-01-09 08:52:45', '2025-01-09 08:52:45');
INSERT INTO `personal_access_tokens` VALUES (174, 'App\\Models\\User', 3, 'api-access', '8bd715e438ab5d2268e12d2e5304dcfdfccd58bf8b33a919439343e62f83f05d', '[\"*\"]', '2025-01-09 08:53:01', '2025-01-09 09:03:01', '2025-01-09 08:53:01', '2025-01-09 08:53:01');
INSERT INTO `personal_access_tokens` VALUES (175, 'App\\Models\\User', 3, 'api-access', '435f9fdf3801d0017c3e07ce69f655249198316de43656a6b53afb9578df9d47', '[\"*\"]', '2025-01-09 08:53:17', '2025-01-09 09:03:17', '2025-01-09 08:53:17', '2025-01-09 08:53:17');
INSERT INTO `personal_access_tokens` VALUES (176, 'App\\Models\\User', 3, 'api-access', '40d31148020575baa5b9d4280a33058345904fc440d09c96977b1d61ffe954ef', '[\"*\"]', NULL, '2025-01-09 09:05:04', '2025-01-09 08:55:04', '2025-01-09 08:55:04');
INSERT INTO `personal_access_tokens` VALUES (177, 'App\\Models\\User', 3, 'api-access', '3e49e85651c6bd600c8937625ecf4eb73429ad76ecf29884d46b96e1c9ff4a47', '[\"*\"]', '2025-01-09 08:55:05', '2025-01-09 09:05:05', '2025-01-09 08:55:05', '2025-01-09 08:55:05');
INSERT INTO `personal_access_tokens` VALUES (178, 'App\\Models\\User', 3, 'api-access', '18520ad0fe79a6a1172c57775fbf6e0226b5ce1fd2aee149ab988095e4c537e3', '[\"*\"]', NULL, '2025-01-09 09:20:18', '2025-01-09 09:10:18', '2025-01-09 09:10:18');
INSERT INTO `personal_access_tokens` VALUES (179, 'App\\Models\\User', 3, 'api-access', '2c990f38a001fc1d01fdc2f2d0459ebb02c66d7485d779724a0ee3685d130462', '[\"*\"]', '2025-01-09 09:10:19', '2025-01-09 09:20:18', '2025-01-09 09:10:18', '2025-01-09 09:10:19');
INSERT INTO `personal_access_tokens` VALUES (180, 'App\\Models\\User', 3, 'api-access', 'abddf6d84f9e586c783a176d70e04d0d9114823a873dd2ddebdaad51babeb179', '[\"*\"]', NULL, '2025-01-09 09:20:34', '2025-01-09 09:10:34', '2025-01-09 09:10:34');
INSERT INTO `personal_access_tokens` VALUES (181, 'App\\Models\\User', 3, 'api-access', 'e126e4abd3128472cd718aa6a4f13b2ef8e4b4e64cfc55a9daec7ac3b8a3ad81', '[\"*\"]', '2025-01-09 09:10:35', '2025-01-09 09:20:35', '2025-01-09 09:10:35', '2025-01-09 09:10:35');
INSERT INTO `personal_access_tokens` VALUES (182, 'App\\Models\\User', 3, 'api-access', '19eb8b0070531714e68e1c5e89e327e06a110c7d8ca40253b084e8293f19d56a', '[\"*\"]', '2025-01-09 09:17:10', '2025-01-09 09:27:10', '2025-01-09 09:17:10', '2025-01-09 09:17:10');
INSERT INTO `personal_access_tokens` VALUES (183, 'App\\Models\\User', 3, 'api-access', 'fe8a4864996d6dc4012c69c4cbbfdcf03e5971ac1087f1f2cafa296837a87334', '[\"*\"]', '2025-01-09 09:17:13', '2025-01-09 09:27:13', '2025-01-09 09:17:13', '2025-01-09 09:17:13');
INSERT INTO `personal_access_tokens` VALUES (184, 'App\\Models\\User', 3, 'api-access', '360120c25147e24639432be3790128cbca714f45616621dd5250cd441f9bbf97', '[\"*\"]', '2025-01-09 09:17:16', '2025-01-09 09:27:16', '2025-01-09 09:17:16', '2025-01-09 09:17:16');
INSERT INTO `personal_access_tokens` VALUES (185, 'App\\Models\\User', 3, 'api-access', 'dea08fb2e19a9dcba38b11ac993ace8c824baea9f18e6907d7e2d72449b4c77b', '[\"*\"]', NULL, '2025-01-09 09:27:42', '2025-01-09 09:17:42', '2025-01-09 09:17:42');
INSERT INTO `personal_access_tokens` VALUES (186, 'App\\Models\\User', 3, 'api-access', 'd2a548e37993126851ffb2b6c36f01e08df04eac9baff306bc81dd2604167dc8', '[\"*\"]', '2025-01-09 09:17:46', '2025-01-09 09:27:46', '2025-01-09 09:17:46', '2025-01-09 09:17:46');
INSERT INTO `personal_access_tokens` VALUES (187, 'App\\Models\\User', 3, 'api-access', '871622d2193fa26ab671bc293093e10ba148a2248c8ed5e9804cbb967f66ac45', '[\"*\"]', NULL, '2025-01-09 09:27:50', '2025-01-09 09:17:50', '2025-01-09 09:17:50');
INSERT INTO `personal_access_tokens` VALUES (188, 'App\\Models\\User', 3, 'api-access', '586fd8a51140f1ab99c0d5672955ec80621ce54c7a61de2d4d4dc8dcd832c1b8', '[\"*\"]', '2025-01-09 09:17:52', '2025-01-09 09:27:51', '2025-01-09 09:17:51', '2025-01-09 09:17:52');
INSERT INTO `personal_access_tokens` VALUES (189, 'App\\Models\\User', 3, 'api-access', 'c95b621e0ad6666261c20c25bb2f41ea57a80735edd33a7edde5e15225310da8', '[\"*\"]', NULL, '2025-01-09 09:27:54', '2025-01-09 09:17:54', '2025-01-09 09:17:54');
INSERT INTO `personal_access_tokens` VALUES (190, 'App\\Models\\User', 3, 'api-access', 'a5385eb5428c5b2e36a0650e79e493dfad235b9c8ef18376125e64905693347e', '[\"*\"]', '2025-01-09 09:17:55', '2025-01-09 09:27:55', '2025-01-09 09:17:55', '2025-01-09 09:17:55');
INSERT INTO `personal_access_tokens` VALUES (191, 'App\\Models\\User', 3, 'api-access', '722784a6d3a091408fb54bf083076e464f24f4ed6bfc221976ecc3bd06754152', '[\"*\"]', NULL, '2025-01-09 09:27:59', '2025-01-09 09:17:59', '2025-01-09 09:17:59');
INSERT INTO `personal_access_tokens` VALUES (192, 'App\\Models\\User', 3, 'api-access', '3eece3b30ff44337ddc82de2eaffd1d7364b57aafc8c026e0375e9813fecdad6', '[\"*\"]', '2025-01-09 09:18:02', '2025-01-09 09:28:02', '2025-01-09 09:18:02', '2025-01-09 09:18:02');
INSERT INTO `personal_access_tokens` VALUES (193, 'App\\Models\\User', 3, 'api-access', '447c810fed7878a3ef177b512af5a5201c39c04ead9d3dc9bdd5c667d559eb6f', '[\"*\"]', NULL, '2025-01-09 09:28:11', '2025-01-09 09:18:11', '2025-01-09 09:18:11');
INSERT INTO `personal_access_tokens` VALUES (194, 'App\\Models\\User', 3, 'api-access', 'ae9c43473db07551e4c8c559bfdbf607b37d33648d52d7d20a5abaf1cfa2de8e', '[\"*\"]', '2025-01-09 09:18:17', '2025-01-09 09:28:16', '2025-01-09 09:18:16', '2025-01-09 09:18:17');
INSERT INTO `personal_access_tokens` VALUES (195, 'App\\Models\\User', 3, 'api-access', '61e618a558048196fb33e95bbe28468947c83b90fc3c9b018328ba434cddfbec', '[\"*\"]', NULL, '2025-01-09 09:29:03', '2025-01-09 09:19:03', '2025-01-09 09:19:03');
INSERT INTO `personal_access_tokens` VALUES (196, 'App\\Models\\User', 3, 'api-access', '4fa3a13350b73109a7bbc87286751e8537a9d80e7760611a0121c0ec1f24578f', '[\"*\"]', '2025-01-09 09:19:03', '2025-01-09 09:29:03', '2025-01-09 09:19:03', '2025-01-09 09:19:03');
INSERT INTO `personal_access_tokens` VALUES (197, 'App\\Models\\User', 3, 'api-access', '31633ece154df5a485d7905b81e707e3b0950732d9a1e56177bbcaa6f06386c3', '[\"*\"]', NULL, '2025-01-09 09:34:13', '2025-01-09 09:24:13', '2025-01-09 09:24:13');
INSERT INTO `personal_access_tokens` VALUES (198, 'App\\Models\\User', 3, 'api-access', 'a322b435010cbe6f1a5c37fc41da696a12cdfc9f741de946bcc2ce498400e75e', '[\"*\"]', '2025-01-09 09:24:13', '2025-01-09 09:34:13', '2025-01-09 09:24:13', '2025-01-09 09:24:13');
INSERT INTO `personal_access_tokens` VALUES (199, 'App\\Models\\User', 3, 'api-access', '0b649c82f869e70e8073e96b60ea1a4644f1d1cbdc02028b9266ca76c57a2afb', '[\"*\"]', NULL, '2025-01-09 09:38:04', '2025-01-09 09:28:04', '2025-01-09 09:28:04');
INSERT INTO `personal_access_tokens` VALUES (200, 'App\\Models\\User', 3, 'api-access', '96efccbebfee3b1d546a17f4358e392f883dc488badb7bff0f388ca31a61edb0', '[\"*\"]', '2025-01-09 09:28:05', '2025-01-09 09:38:05', '2025-01-09 09:28:05', '2025-01-09 09:28:05');
INSERT INTO `personal_access_tokens` VALUES (201, 'App\\Models\\User', 3, 'api-access', 'bdd513ad2bdb9798fb8e729a17d3ecc26da51e4976b72d2228fb1e052f2ea643', '[\"*\"]', '2025-01-09 09:28:14', '2025-01-09 09:38:14', '2025-01-09 09:28:14', '2025-01-09 09:28:14');
INSERT INTO `personal_access_tokens` VALUES (202, 'App\\Models\\User', 3, 'api-access', '1e8195ea644d5a125c95d387a4a2e591cf0cf254dd6c83b79275de4ce3aa770d', '[\"*\"]', NULL, '2025-01-09 09:40:40', '2025-01-09 09:30:40', '2025-01-09 09:30:40');
INSERT INTO `personal_access_tokens` VALUES (203, 'App\\Models\\User', 3, 'api-access', '18251172505dea4f27d41196316ce057e5a351c92795402982743ce31a577cf5', '[\"*\"]', '2025-01-09 09:30:41', '2025-01-09 09:40:40', '2025-01-09 09:30:40', '2025-01-09 09:30:41');
INSERT INTO `personal_access_tokens` VALUES (204, 'App\\Models\\User', 3, 'api-access', 'b34a188cade7f2b265eb256568de760b02fd57477bf250d2705b587a6bc426ec', '[\"*\"]', NULL, '2025-01-09 09:48:59', '2025-01-09 09:38:59', '2025-01-09 09:38:59');
INSERT INTO `personal_access_tokens` VALUES (205, 'App\\Models\\User', 3, 'api-access', 'd2c4b4266170eb3a056230272eb4a21ab62d6cd6a52eceedf48493d609c0fa40', '[\"*\"]', '2025-01-09 09:38:59', '2025-01-09 09:48:59', '2025-01-09 09:38:59', '2025-01-09 09:38:59');

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
INSERT INTO `prodi` VALUES ('01', 'SISTEM INFORMASI', '000001', NULL, '2025-01-08 07:21:58');
INSERT INTO `prodi` VALUES ('02', 'MANAJEMEN INFORMATIKA', '000002', NULL, NULL);
INSERT INTO `prodi` VALUES ('03', 'TEKNIK INFORMATIKA', '000003', NULL, NULL);
INSERT INTO `prodi` VALUES ('04', 'TEKNIK KOMPUTER', '000004', NULL, NULL);

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
