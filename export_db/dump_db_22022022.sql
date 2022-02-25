/*
 Navicat Premium Data Transfer

 Source Server         : TISLA
 Source Server Type    : PostgreSQL
 Source Server Version : 100018
 Source Host           : localhost:5432
 Source Catalog        : tisla
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100018
 File Encoding         : 65001

 Date: 22/02/2022 13:13:51
*/


-- ----------------------------
-- Type structure for enum_city_type
-- ----------------------------
DROP TYPE IF EXISTS "public"."enum_city_type";
CREATE TYPE "public"."enum_city_type" AS ENUM (
  'Kabupaten',
  'Kota'
);
ALTER TYPE "public"."enum_city_type" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for a_institution_packages_details_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."a_institution_packages_details_id_seq";
CREATE SEQUENCE "public"."a_institution_packages_details_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for a_institution_packages_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."a_institution_packages_id_seq";
CREATE SEQUENCE "public"."a_institution_packages_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for c11_g_lecture_seqs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."c11_g_lecture_seqs_id_seq";
CREATE SEQUENCE "public"."c11_g_lecture_seqs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for failed_jobs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."failed_jobs_id_seq";
CREATE SEQUENCE "public"."failed_jobs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for g_institution_codes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."g_institution_codes_id_seq";
CREATE SEQUENCE "public"."g_institution_codes_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for g_sequence_codes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."g_sequence_codes_id_seq";
CREATE SEQUENCE "public"."g_sequence_codes_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for g_user_codes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."g_user_codes_id_seq";
CREATE SEQUENCE "public"."g_user_codes_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for m_feature_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."m_feature_permissions_id_seq";
CREATE SEQUENCE "public"."m_feature_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for m_features_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."m_features_id_seq";
CREATE SEQUENCE "public"."m_features_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for m_features_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."m_features_permissions_id_seq";
CREATE SEQUENCE "public"."m_features_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for m_institution_categories_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."m_institution_categories_id_seq";
CREATE SEQUENCE "public"."m_institution_categories_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for m_institution_levels_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."m_institution_levels_id_seq";
CREATE SEQUENCE "public"."m_institution_levels_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for m_package_features_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."m_package_features_id_seq";
CREATE SEQUENCE "public"."m_package_features_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for m_package_prices_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."m_package_prices_id_seq";
CREATE SEQUENCE "public"."m_package_prices_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for m_packages_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."m_packages_id_seq";
CREATE SEQUENCE "public"."m_packages_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for m_permission_categories_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."m_permission_categories_id_seq";
CREATE SEQUENCE "public"."m_permission_categories_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."migrations_id_seq";
CREATE SEQUENCE "public"."migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for a_institution_packages
-- ----------------------------
DROP TABLE IF EXISTS "public"."a_institution_packages";
CREATE TABLE "public"."a_institution_packages" (
  "id" int8 NOT NULL DEFAULT nextval('a_institution_packages_id_seq'::regclass),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of a_institution_packages
-- ----------------------------

-- ----------------------------
-- Table structure for a_institution_packages_details
-- ----------------------------
DROP TABLE IF EXISTS "public"."a_institution_packages_details";
CREATE TABLE "public"."a_institution_packages_details" (
  "id" int8 NOT NULL DEFAULT nextval('a_institution_packages_details_id_seq'::regclass),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of a_institution_packages_details
-- ----------------------------

-- ----------------------------
-- Table structure for a_institutions
-- ----------------------------
DROP TABLE IF EXISTS "public"."a_institutions";
CREATE TABLE "public"."a_institutions" (
  "id" uuid NOT NULL,
  "institution_code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "institution_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "institution_location" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "institution_domain" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "institution_level" int4 NOT NULL,
  "institution_category" int4 NOT NULL,
  "institution_image" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_by" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of a_institutions
-- ----------------------------
INSERT INTO "public"."a_institutions" VALUES ('95a2c3bf-493d-4c40-8a25-cb420d4fd087', 'HKAH00001BB', 'Hamill, Kling and Hayes', 'Tennessee | South Zane', 'tisla.com', 1, 1, '/assets/images/insitutions.png', '95a2c3bf-4236-48c0-a988-277386e84c58', '2022-02-19 09:30:13', '2022-02-19 09:30:13', NULL);
INSERT INTO "public"."a_institutions" VALUES ('95a2c3bf-8bc1-4e93-8f7f-fad962f267d4', 'B00002BB', 'Beier-Rolfson', 'Ohio | Cecileville', 'tisla.co.id', 1, 1, '/assets/images/insitutions.png', '95a2c3bf-88b1-4fc9-a660-f272fcc77ea1', '2022-02-19 09:30:13', '2022-02-19 09:30:13', NULL);

-- ----------------------------
-- Table structure for c11_assesment_files
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_assesment_files";
CREATE TABLE "public"."c11_assesment_files" (
  "id" uuid NOT NULL,
  "file_id" uuid NOT NULL,
  "created_by" uuid NOT NULL,
  "error_message" text COLLATE "pg_catalog"."default",
  "is_rendered" int4 NOT NULL DEFAULT 0,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_assesment_files
-- ----------------------------
INSERT INTO "public"."c11_assesment_files" VALUES ('95a2faee-aae4-4900-8252-4c68afc84721', '95a2faee-8fbb-4535-9cef-04a0a6e42c8e', '95a2c3bf-8c71-4371-96cb-8884c57155cf', NULL, 1, '2022-02-19 12:04:31', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_assesment_files" VALUES ('95a884bb-188a-4943-a903-6e9ec3ddf61d', '95a884b9-e7bc-4da5-ab09-cd4bf19bbff8', '95a2cfed-e5ac-4deb-a9da-cb406592455f', NULL, 1, '2022-02-22 06:08:58', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_assesment_files" VALUES ('95a2eaee-3edb-4f98-9aea-65e74d83d022', '95a2eaee-27c3-4a68-b5de-fcdffb76ba17', '95a2cfed-e5ac-4deb-a9da-cb406592455f', NULL, 1, '2022-02-19 11:19:47', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_assesment_files" VALUES ('95a2eae6-bb53-404e-a5be-e344b340587f', '95a2eae6-9f54-4b92-bdbf-722ce21cac61', '95a2cfed-e5ac-4deb-a9da-cb406592455f', NULL, 1, '2022-02-19 11:19:42', '2022-02-19 12:11:29', NULL);

-- ----------------------------
-- Table structure for c11_c_cpls
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_cpls";
CREATE TABLE "public"."c11_c_cpls" (
  "id" uuid NOT NULL,
  "m_cpl_id" uuid NOT NULL,
  "institution_id" uuid NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_cpls
-- ----------------------------
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb59-f763-4905-8d78-3fa6e1e0bf12', '95a2eb59-f453-4d42-9400-cf802825854a', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb59-faef-4554-99a0-339246c0521f', '95a2eb59-f8d5-4f46-bcba-3665ac5dc199', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb59-fe37-4838-9b5a-1c974d65dec7', '95a2eb59-fc4c-4eac-8dad-408eca6b36c3', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-01a7-43b0-bf34-24a7dbf49d56', '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-04d5-449d-ac4c-64ddf333eceb', '95a2eb5a-02f7-4c84-9451-0c4f9d2f407c', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-08b5-4610-b93a-def50a4c3518', '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-0bf9-4366-9b58-92f6d041ffa7', '95a2eb5a-0a0e-468a-a870-69442fbe313f', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-0f5a-4e98-851b-8d6e6ad6a7ff', '95a2eb5a-0d5e-42fa-a530-8c9b79b4df4a', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-1283-43e5-b2f9-a207a86cf939', '95a2eb5a-10a0-42af-b537-249619cfa286', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-15fb-4ed1-85b0-6fa0c110f40e', '95a2eb5a-13ff-48b3-9ea5-fa9ce3efe882', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-1920-430f-8fd9-1cf8cd461e64', '95a2eb5a-173d-4fd8-be3c-0267bb58d917', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-1c88-49c4-abd2-1c08fc940e97', '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-1fcd-4413-9541-f891fd13cb66', '95a2eb5a-1dd0-4834-96f9-9287fa2586c6', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-232e-463a-8967-f2d60cb38314', '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-266a-4081-bc1f-80649d657542', '95a2eb5a-2472-49c0-b4ba-b64ed31885d3', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-29cc-4024-a636-7baaebdece9f', '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-2d01-442a-8fa2-032b2ef3a61a', '95a2eb5a-2b0d-46e5-a615-3fcb54fca437', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-3055-423a-b17d-561f0b49306a', '95a2eb5a-2e66-4207-8466-190784cd7b47', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-33a0-448d-8773-340b185d1df0', '95a2eb5a-319d-4ce1-b82a-2e5eefbc49d3', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-3707-4654-bcdf-cae399ab00f6', '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-3a53-45f9-9575-61a27e80283a', '95a2eb5a-3859-4307-a2fa-095ae5adce84', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-3e67-47a2-86ea-fd3a5dc07d01', '95a2eb5a-3bb8-4c70-b664-78fd339f043e', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-41ef-4985-aa6a-50e1e7565845', '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-4540-49a4-adbc-50648cfd6834', '95a2eb5a-433e-4d86-bdad-fddd721049fa', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-4892-4a6f-b2ad-44d0ea2f1095', '95a2eb5a-4688-47a1-b9f1-c8e76aace4a1', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-4bd3-4590-9823-87d58fa530f2', '95a2eb5a-49db-4a77-b971-a900302e0a45', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-4f2b-4546-84d5-df66bd645cd8', '95a2eb5a-4d1c-4257-ba72-cba65184809b', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_cpls" VALUES ('95a2eb5a-5270-4848-97b4-ce6f615d0029', '95a2eb5a-5089-4e4d-951e-2815f0a92361', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);

-- ----------------------------
-- Table structure for c11_c_curriculum_cpls
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_curriculum_cpls";
CREATE TABLE "public"."c11_c_curriculum_cpls" (
  "id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_curriculum_cpls
-- ----------------------------

-- ----------------------------
-- Table structure for c11_c_curriculum_lectures
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_curriculum_lectures";
CREATE TABLE "public"."c11_c_curriculum_lectures" (
  "id" uuid NOT NULL,
  "curriculum_id" uuid NOT NULL,
  "lecture_id" uuid NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_curriculum_lectures
-- ----------------------------
INSERT INTO "public"."c11_c_curriculum_lectures" VALUES ('95a2eb59-b126-40e3-a623-e68942e10707', '95a2ea91-7cb9-4572-876b-16c3fa206b91', '95a2eb59-ae78-4dc2-b0b5-ea0893bc5315', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_curriculum_lectures" VALUES ('95a2fd66-1d1c-45ac-a29b-7a7188cf0a40', '95a2ea91-7cb9-4572-876b-16c3fa206b91', '95a2fd66-1713-49ed-9fe8-43fcf9ec9998', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_curriculum_lectures" VALUES ('95a88575-ec77-4ae0-b59c-44f022cdffe0', '95a2ea91-7cb9-4572-876b-16c3fa206b91', '95a88575-e168-4545-b69a-ce74159b7aa5', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);

-- ----------------------------
-- Table structure for c11_c_department_collegers
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_department_collegers";
CREATE TABLE "public"."c11_c_department_collegers" (
  "id" uuid NOT NULL,
  "m_department_id" uuid NOT NULL,
  "m_colleger_id" uuid NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_department_collegers
-- ----------------------------
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2eb59-be9d-4c45-8009-4d8ffc05d5f5', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2eb59-c48d-4e51-a8e2-a0a2ded878f4', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2eb59-c94f-4abd-ad96-efed974691e7', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2eb59-cde1-4b44-9d31-e6926fa4e64a', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2eb59-d258-43ac-b6d7-5c0eeec4029d', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2eb59-d7eb-4260-b6a1-0964f93c12f2', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2eb59-dc49-4806-beb4-7dcb4f5a3dd6', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2eb59-e04b-4b32-b71a-8ab66ffbae6a', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2eb59-e447-440c-a6c1-743631d66b53', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-e2f3-4850-a7eb-c336c3235780', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2eb59-e853-4887-a127-77365343d2a7', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2eb59-ec40-4f99-a6cf-ab254d30e7ed', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2eb59-f097-482f-8cdf-5368bc64a7c7', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2fd66-2be0-4071-b184-9515e08b8b55', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2fd66-281b-490e-9504-19809ab7a683', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2fd66-3300-4c1b-8eb1-07debee30de7', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a2fd66-5df5-4206-8e8b-4c5c0fdc4c08', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a88576-604a-460d-af47-ad5b178c0c19', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a88576-5ea4-49dd-9885-1407f4c80021', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a88576-6572-4190-9488-3459123df60e', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a88576-63ea-430d-b8a7-b57e1d3d184a', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a88576-6ab0-4b69-b1a3-37f37e8222d3', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a88576-68ef-4910-bb48-118c41a2e9e7', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a88576-7063-4036-8589-5192af4c37a0', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a88576-6dfb-4e3f-a531-a859bd023562', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a88576-75b7-4c13-a104-aa951d3b71fb', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a88576-73d2-4c30-98c4-ea5e3c251eae', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a88576-79de-40d7-9828-f4ea1c348ef9', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a88576-7884-49d1-ad8a-b923f2f3f77d', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a88576-7e36-40f5-8828-f3f95cc58ff3', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a88576-7ce8-4182-a386-dae7857a8b69', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a88576-8267-4ced-9719-6203e94f3410', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a88576-80ce-42d0-97dc-afbc108def26', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_department_collegers" VALUES ('95a88576-8689-4e39-b247-ff1fa1ce0efd', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a88576-854b-4016-9b67-5eff66739e61', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);

-- ----------------------------
-- Table structure for c11_c_department_curricula
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_department_curricula";
CREATE TABLE "public"."c11_c_department_curricula" (
  "id" uuid NOT NULL,
  "department_id" uuid NOT NULL,
  "curriculum_id" uuid NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_department_curricula
-- ----------------------------
INSERT INTO "public"."c11_c_department_curricula" VALUES ('95a2eb59-a981-4e81-b3c4-4cebc4d72c2f', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2ea91-7cb9-4572-876b-16c3fa206b91', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);

-- ----------------------------
-- Table structure for c11_c_department_lecturers
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_department_lecturers";
CREATE TABLE "public"."c11_c_department_lecturers" (
  "id" uuid NOT NULL,
  "department_id" uuid NOT NULL,
  "lecturer_id" uuid NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_department_lecturers
-- ----------------------------
INSERT INTO "public"."c11_c_department_lecturers" VALUES ('95a2eb59-b6b3-4927-aa39-d98d29a2ef5e', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-b42e-40ec-a304-ad1ab643b08b', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);

-- ----------------------------
-- Table structure for c11_c_departments
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_departments";
CREATE TABLE "public"."c11_c_departments" (
  "id" uuid NOT NULL,
  "c_faculty_id" uuid NOT NULL,
  "m_department_id" uuid NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_departments
-- ----------------------------
INSERT INTO "public"."c11_c_departments" VALUES ('95a2eb04-9855-46d9-89d9-e23386dcb43b', '95a2eb04-917e-4cdf-a1c3-7296b6a45b36', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:01', '2022-02-19 11:20:01', NULL);

-- ----------------------------
-- Table structure for c11_c_faculties
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_faculties";
CREATE TABLE "public"."c11_c_faculties" (
  "id" uuid NOT NULL,
  "m_faculty_id" uuid NOT NULL,
  "institution_id" uuid NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_faculties
-- ----------------------------
INSERT INTO "public"."c11_c_faculties" VALUES ('95a2eb04-917e-4cdf-a1c3-7296b6a45b36', '95a2eb04-8960-492a-ad9a-db1bc0a9f869', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:01', '2022-02-19 11:20:01', NULL);

-- ----------------------------
-- Table structure for c11_c_lecture_classes
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_lecture_classes";
CREATE TABLE "public"."c11_c_lecture_classes" (
  "id" uuid NOT NULL,
  "m_faculty_id" uuid NOT NULL,
  "m_department_id" uuid NOT NULL,
  "m_lecture_id" uuid NOT NULL,
  "m_lecturer_id" uuid NOT NULL,
  "assement_file_id" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_lecture_classes
-- ----------------------------
INSERT INTO "public"."c11_c_lecture_classes" VALUES ('95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb04-8960-492a-ad9a-db1bc0a9f869', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-ae78-4dc2-b0b5-ea0893bc5315', '95a2eb59-b42e-40ec-a304-ad1ab643b08b', '95a2eaee-27c3-4a68-b5de-fcdffb76ba17', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_lecture_classes" VALUES ('95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb04-8960-492a-ad9a-db1bc0a9f869', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2eb59-ae78-4dc2-b0b5-ea0893bc5315', '95a2eb59-b42e-40ec-a304-ad1ab643b08b', '95a2faee-8fbb-4535-9cef-04a0a6e42c8e', '2022-02-19 12:04:40', '2022-02-19 12:04:40', NULL);
INSERT INTO "public"."c11_c_lecture_classes" VALUES ('95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb04-8960-492a-ad9a-db1bc0a9f869', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a2fd66-1713-49ed-9fe8-43fcf9ec9998', '95a2eb59-b42e-40ec-a304-ad1ab643b08b', '95a2eae6-9f54-4b92-bdbf-722ce21cac61', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_classes" VALUES ('95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb04-8960-492a-ad9a-db1bc0a9f869', '95a2eb04-94d4-41cd-bc09-089628209d1f', '95a88575-e168-4545-b69a-ce74159b7aa5', '95a2eb59-b42e-40ec-a304-ad1ab643b08b', '95a884b9-e7bc-4da5-ab09-cd4bf19bbff8', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);

-- ----------------------------
-- Table structure for c11_c_lecture_collegers
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_lecture_collegers";
CREATE TABLE "public"."c11_c_lecture_collegers" (
  "id" uuid NOT NULL,
  "c_lecture_class_id" uuid NOT NULL,
  "m_colleger_id" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_lecture_collegers
-- ----------------------------
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2eb59-c135-4807-a835-123e5b364057', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2eb59-c632-4fc5-aa4d-2d5d48b6c0ce', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2eb59-cad1-43e3-8e04-b3789eb1dc5f', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2eb59-cf53-47db-a095-8210ed1b2bba', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2eb59-d3e3-4fad-9cf2-72086596a7d6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2eb59-d99a-4c93-a052-f2b34ff9af5e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2eb59-dd93-4905-b062-bddffb13611f', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2eb59-e19b-418a-b0f8-b83f3b81946b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2eb59-e590-49a8-b418-56bf3862ae4e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2eb59-e9aa-488d-8988-0413b886e3c1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2eb59-eda8-4761-96ef-462a4ffbaa30', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2eb59-f1e0-436a-a2ed-de0bb302e2b7', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fafc-3ade-47d9-9427-4229084b19eb', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', '2022-02-19 12:04:40', '2022-02-19 12:04:40', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fafc-3e64-4366-bd0b-b54fcadd6d9b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', '2022-02-19 12:04:40', '2022-02-19 12:04:40', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fafc-4179-4fb2-8bb3-628f4952cc68', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', '2022-02-19 12:04:40', '2022-02-19 12:04:40', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fafc-44d4-49a0-9cf2-2c0f34a6f053', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', '2022-02-19 12:04:40', '2022-02-19 12:04:40', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fafc-479c-4367-8377-51b949451b26', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', '2022-02-19 12:04:40', '2022-02-19 12:04:40', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fafc-4acb-400e-9af7-6e07fb80151b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', '2022-02-19 12:04:40', '2022-02-19 12:04:40', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fafc-4d79-4d3f-b194-d71a20d644bf', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', '2022-02-19 12:04:40', '2022-02-19 12:04:40', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fafc-509d-422b-a1b3-888de9b9a3d3', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', '2022-02-19 12:04:40', '2022-02-19 12:04:40', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fafc-5343-4630-a4ba-2ac8d832e566', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', '2022-02-19 12:04:40', '2022-02-19 12:04:40', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fafc-5604-43ad-84ee-e8493c0079ff', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', '2022-02-19 12:04:40', '2022-02-19 12:04:40', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fafc-59c1-4228-a88b-2378cde023d5', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', '2022-02-19 12:04:40', '2022-02-19 12:04:40', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fafc-5df1-408e-a448-12c5dc427dac', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', '2022-02-19 12:04:40', '2022-02-19 12:04:40', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-2f1e-4fd2-a1fd-aa0517bb95af', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-3503-4004-ae27-2355a999e7da', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-3822-41c8-bc6c-027f80aecf10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-3b2d-45ef-9668-aa210b8c2964', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-3dac-4789-bb8f-19ad8399a460', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-40ce-46fc-a717-df84da6418d0', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-436e-4e74-9128-757fe8d0485b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-461e-498c-850d-88e0d5b35a49', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-4911-43b8-9f70-c0a17fad5162', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-4bcc-4368-832a-152adacc179b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-4f35-4fd0-9edd-356ab1e699c1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-5346-4033-bdcf-72006a84ec0a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-56fe-43f0-a28c-5f637229111d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-5add-49cb-b203-bb7b633f09fb', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a2fd66-5f6f-4f8b-8169-e46c28682c1d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-3d90-4afd-b67e-f7e4b31cb518', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-4094-42f9-8f7b-2d5680958a4f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-43dc-4986-863f-d643db698f5b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-46dd-4d90-92b4-093c8d421bde', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-4a19-4fba-960e-6b8d370ea0b7', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-4d03-4b83-870e-60bb68b7798d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-504e-4c15-a894-a0c7019f3ef6', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-5344-4266-b6b0-bf8586903056', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-56bb-4c69-86eb-c31dd33a9dd1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-599f-453a-9889-6da1e4ef1458', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-5d09-49e1-ad56-c0217245517a', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-6257-4319-a220-46b803832d8f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-66fb-468e-a31d-2c63275677f9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-6c39-412a-990f-3b12047e1974', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-7235-451d-a4f3-2cab82057b0d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-7744-4541-8b89-396b79ae684d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-7b26-4014-9139-51b46f2b4ec9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-7f79-44b0-9665-054f9db66b0d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-8402-4456-b520-ec652aee22d1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_c_lecture_collegers" VALUES ('95a88576-87ef-4452-b0fe-4ba3d5ed3b86', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);

-- ----------------------------
-- Table structure for c11_c_lecture_course_work_cpls
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_lecture_course_work_cpls";
CREATE TABLE "public"."c11_c_lecture_course_work_cpls" (
  "id" uuid NOT NULL,
  "marks" int4 NOT NULL,
  "m_cpl_id" uuid NOT NULL,
  "m_cw_detail_id" uuid NOT NULL,
  "c_lecture_class_id" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_lecture_course_work_cpls
-- ----------------------------
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5a-a020-47e0-b0cb-23729a186494', 25, '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5a-a28c-4573-8df6-178ee150ae59', 25, '95a2eb5a-2472-49c0-b4ba-b64ed31885d3', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5a-a4cf-4152-8e4d-f6741f1d3b4f', 25, '95a2eb5a-49db-4a77-b971-a900302e0a45', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5a-aa75-4465-a454-0df74ceb3f5d', 25, '95a2eb5a-1dd0-4834-96f9-9287fa2586c6', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5a-ac95-4f50-8ef4-12272377b15c', 25, '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5a-b264-44d2-98ad-d3811005abee', 25, '95a2eb5a-1dd0-4834-96f9-9287fa2586c6', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5a-b492-4366-aed9-4135a04d5bd2', 25, '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5a-ba52-49d6-b404-7069518fdefb', 25, '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5a-bc70-44fa-9c50-9fac1ce42667', 25, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5a-beae-46b3-b62d-21540919a1c3', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5b-5157-4fd2-b981-ac826d54be60', 25, '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5b-53b1-4ddc-9b62-3a945638588a', 25, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5b-55c5-4981-9a3a-9dfb13d35203', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5b-5b7c-4e60-a51c-f5d5f4fac186', 25, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5b-5d90-4dae-8c57-c91584a80301', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5b-6342-4d4c-91c6-3fb8a53f88c1', 25, '95a2eb5a-2472-49c0-b4ba-b64ed31885d3', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5b-656c-42fd-a863-0556120899f0', 25, '95a2eb5a-4688-47a1-b9f1-c8e76aace4a1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5b-6b53-41e4-979a-604c68820714', 25, '95a2eb5a-10a0-42af-b537-249619cfa286', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5b-6d9c-403b-90c5-b84f0b7ef72f', 25, '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5b-6fb6-4292-9e8b-fcd64017dd60', 25, '95a2eb5a-49db-4a77-b971-a900302e0a45', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5c-0246-4c7e-88d8-781842b78edf', 25, '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5c-048d-497e-8f58-6496c31e7a27', 25, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5c-06a6-4e5b-99c6-8a47499f8e6b', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5c-0c74-430a-9978-167e0d0fe623', 25, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5c-0e82-4e7f-bd3a-ff47eed77872', 25, '95a2eb5a-2472-49c0-b4ba-b64ed31885d3', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5c-10ec-4470-9bbe-92cd61d15402', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5c-130a-4326-804f-edc377f1025f', 25, '95a2eb5a-4688-47a1-b9f1-c8e76aace4a1', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5c-18d5-43e7-bd1e-3fe8fadd4d2c', 25, '95a2eb5a-10a0-42af-b537-249619cfa286', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5c-1af4-4b35-9918-32233df2f7e4', 25, '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5c-1d47-4c82-851d-99ca0e1b0fea', 25, '95a2eb5a-49db-4a77-b971-a900302e0a45', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5c-2315-4aa7-8ba3-515c2dffce43', 25, '95a2eb5a-10a0-42af-b537-249619cfa286', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5c-2545-4be8-b790-1c3aeb9290bb', 25, '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2eb5c-275f-403a-9740-bb030cf44896', 25, '95a2eb5a-49db-4a77-b971-a900302e0a45', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-0190-466d-9598-8bf6a9c6d56d', 25, '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-03e4-4a37-a156-0453e4871954', 25, '95a2eb5a-2472-49c0-b4ba-b64ed31885d3', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-0688-4c66-a40a-23e797bbe7ed', 25, '95a2eb5a-49db-4a77-b971-a900302e0a45', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-0be6-4f0f-9647-b2f99b999b52', 25, '95a2eb5a-1dd0-4834-96f9-9287fa2586c6', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-0ea7-47fd-b0af-91579b039547', 25, '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-1462-405b-8b26-44f2d24cf3b1', 25, '95a2eb5a-1dd0-4834-96f9-9287fa2586c6', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-16b4-4df2-9a5d-2ba7043b1d1e', 25, '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-1c94-4efd-b517-cd7d223733f1', 25, '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-1ffb-4781-8ffd-ae437339a8eb', 25, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-2329-4812-8452-ee9fe59671b9', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-da41-4010-ad37-759b768e3eb0', 25, '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-dd9b-44d6-b666-448f7fcc3363', 25, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-e0df-4132-8a4e-5892bad84331', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-e7d3-49b4-9141-2ae7b801abdf', 25, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-eac7-411d-9b2e-fb44f9b2f2de', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-f009-4fb8-b9dd-2f4da238d915', 25, '95a2eb5a-2472-49c0-b4ba-b64ed31885d3', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-f2d0-4daf-a46e-1f801636fd88', 25, '95a2eb5a-4688-47a1-b9f1-c8e76aace4a1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-f89b-4825-9b06-0849a18384de', 25, '95a2eb5a-10a0-42af-b537-249619cfa286', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-fae5-4efa-b085-32c718b879f7', 25, '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafd-fda4-4730-b7ee-43c5324830b4', 25, '95a2eb5a-49db-4a77-b971-a900302e0a45', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafe-b4c2-40a3-9898-b752264532c5', 25, '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafe-b70c-46d8-a812-b2706758468f', 25, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafe-b94b-4cd5-8392-aafdcf234ea7', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafe-beca-4836-b042-d4190f89b8cc', 25, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafe-c164-4aa0-9035-a6e55c3950b3', 25, '95a2eb5a-2472-49c0-b4ba-b64ed31885d3', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafe-c3c6-4e71-aef9-d76c30ee32d9', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafe-c6b8-47f0-a43e-a17f607f1476', 25, '95a2eb5a-4688-47a1-b9f1-c8e76aace4a1', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafe-ceca-4755-bb38-dd8afa4267a7', 25, '95a2eb5a-10a0-42af-b537-249619cfa286', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafe-d189-4074-bdfa-8b9620a70b18', 25, '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafe-d461-4dcc-8aa5-60ebe61fa08b', 25, '95a2eb5a-49db-4a77-b971-a900302e0a45', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafe-d9bf-4367-bb50-792f4ffb6f22', 25, '95a2eb5a-10a0-42af-b537-249619cfa286', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafe-dc7f-4330-b530-317091091225', 25, '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fafe-deb5-4050-84b9-8581a609a543', 25, '95a2eb5a-49db-4a77-b971-a900302e0a45', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd66-f7a0-4e91-aab4-bbfb5066b4f2', 20, '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd66-fa25-4d3d-8332-3f72e34ea74c', 20, '95a2eb5a-49db-4a77-b971-a900302e0a45', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd67-008f-4289-85f7-9cbe9b0bc875', 20, '95a2eb5a-1dd0-4834-96f9-9287fa2586c6', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd67-06d7-49c8-96e3-1373baecd55b', 20, '95a2eb5a-1dd0-4834-96f9-9287fa2586c6', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd67-0c6a-4d2b-8ab1-010c000f808d', 25, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd67-0fab-40af-8851-165e758b0a35', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd67-17bf-4762-8919-589f4f05ef07', 15, '95a2eb5a-10a0-42af-b537-249619cfa286', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd67-1aac-47c2-ae26-de69b823ace3', 15, '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd68-2067-45e7-876d-7f5c007fee0f', 20, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd68-2364-4ac7-99db-2530a7409aa0', 20, '95a2eb5a-49db-4a77-b971-a900302e0a45', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd68-2bb1-4ad5-90ce-c37eec462217', 20, '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd68-2eca-49c9-a837-aa7d6ee742ce', 20, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd68-36f1-4f90-baf4-eda17ce7c2c2', 15, '95a2eb5a-2472-49c0-b4ba-b64ed31885d3', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd68-3d9b-431f-8dfb-82b3d79c492e', 30, '95a2eb5a-4688-47a1-b9f1-c8e76aace4a1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd68-4494-4bc1-9d5d-0356e9b83669', 15, '95a2eb5a-10a0-42af-b537-249619cfa286', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd68-4811-4027-ba98-007c89de4105', 15, '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd69-5420-4157-800c-7055e4c30189', 20, '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd69-5a84-408d-bf4a-b7eaa2747eed', 25, '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd69-60fa-4d5b-a509-dc3e2064d834', 20, '95a2eb5a-1dd0-4834-96f9-9287fa2586c6', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd69-68c7-4d33-952a-4974179878fb', 40, '95a2eb5a-1dd0-4834-96f9-9287fa2586c6', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd6a-4ae5-4c60-b47e-1ff219b13428', 20, '95a2eb5a-1dd0-4834-96f9-9287fa2586c6', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd6a-523c-4822-9571-33a86356b00c', 25, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd6a-595b-44e1-9470-6a2808d43016', 25, '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a2fd6a-60c7-4a83-a280-51850e35faf6', 30, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-bf7d-4f8c-b1b5-42785514fff6', 20, '95a2eb59-f8d5-4f46-bcba-3665ac5dc199', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-c343-4eb5-9958-229654fdd4e3', 20, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-c5ea-46e1-b674-1b50ba81bd0c', 20, '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-cbed-4d3d-8314-22e83b5d5b96', 20, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-ce8b-4a28-b0eb-746651b3f599', 20, '95a2eb5a-0a0e-468a-a870-69442fbe313f', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-d126-4545-ae39-fcc617cce404', 20, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-d38b-4b6a-a0c0-af01606f40d7', 20, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-da67-43b8-aced-cf17035aa609', 30, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-dd5c-414d-bc00-0155b3633aa4', 30, '95a2eb5a-0a0e-468a-a870-69442fbe313f', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-e05c-4df1-9869-cc76f9019cf1', 30, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-e33f-4747-a1a2-804fd2068463', 30, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-ea0c-448d-bc16-1681f671eeb3', 30, '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-ec4a-48cc-af99-dd4152484f2e', 30, '95a2eb5a-0a0e-468a-a870-69442fbe313f', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88577-ee4f-4958-8979-e61858763b6c', 30, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88578-fe8f-49f2-94cc-701c64b32b93', 25, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88579-0109-4587-964d-39cd2bde5de3', 25, '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88579-03e4-470d-9724-72e4db597bef', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88579-0976-4ba8-b476-ed4b6d54ab65', 25, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88579-0b96-45ef-aaa2-9eca0c8fc572', 25, '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88579-0e22-411e-9736-c59f58d8a71c', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88579-139f-4873-85ab-102ec9d09bbd', 20, '95a2eb59-f8d5-4f46-bcba-3665ac5dc199', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88579-1600-46b2-89d6-1ca4df858f05', 20, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88579-1808-4deb-b2f9-e214b7033d7f', 20, '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88579-1a3d-46e2-8ca7-a172d490dbd3', 20, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88579-1f32-42c1-8699-5ae08741e5b8', 30, '95a2eb59-f8d5-4f46-bcba-3665ac5dc199', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88579-21e3-4317-a10e-553289e88a7e', 30, '95a2eb5a-0a0e-468a-a870-69442fbe313f', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88579-23ff-404a-9f15-9bcc60dba2e1', 30, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a88579-260b-4507-bc6c-2079ad32f8c0', 30, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-1de2-4078-9d74-2f77089d95e7', 25, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-209a-423b-9df3-31406f01b15b', 25, '95a2eb5a-0a0e-468a-a870-69442fbe313f', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-22ae-4f6d-bddd-b082c69ee5fe', 25, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-24cf-4de4-94a4-f821e24fd604', 25, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-2ab2-406b-bdb6-3085ec661004', 30, '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-2dda-4e1e-8192-678cb73fd377', 30, '95a2eb5a-0a0e-468a-a870-69442fbe313f', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-3020-4fe9-8414-ca3aec5039b6', 30, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-3630-444c-9aee-3b1ffb08723a', 20, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-3865-47ad-a4d3-52b2dd101335', 20, '95a2eb5a-0a0e-468a-a870-69442fbe313f', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-3b02-4bbd-8d84-ef4ace25165c', 20, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-3d0d-4e9f-9d3d-120b6d5a966b', 20, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-42f7-49da-a75c-daa37d788cc4', 25, '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-452e-4a71-ab57-a3536ed8a5fd', 25, '95a2eb5a-0a0e-468a-a870-69442fbe313f', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857a-47bb-4d8c-a205-54e322bf2b22', 25, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-40ff-49c9-92d6-bcffe4a08a12', 30, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-4314-4fd6-a3bf-8bdec0aeec41', 30, '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-4593-48b5-9c3b-6dc364b91e65', 30, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-4b98-4bc8-9e40-fad3bc2ab1df', 25, '95a2eb59-f8d5-4f46-bcba-3665ac5dc199', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-4da6-4866-9654-4f8772d94d12', 25, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-4fb9-49c5-aeb7-1438cb5eda97', 25, '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-5278-404d-a715-6d8799f13860', 25, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-58f4-44e5-8434-5fa5b3dd353f', 20, '95a2eb59-f8d5-4f46-bcba-3665ac5dc199', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-5b19-4362-afb8-e3ca30a63962', 20, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-5d51-447e-9977-002da001d6b7', 20, '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-5fd8-469d-9ddb-3b77533ede1b', 20, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-65e6-4db4-9392-8407ea715e4b', 25, '95a2eb59-f8d5-4f46-bcba-3665ac5dc199', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-682c-4fe1-9a32-848b8a870057', 25, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-6a44-4398-a020-a66aef58df42', 25, '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857b-6cd1-4e7e-b061-631246671016', 25, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-6598-4f5d-a8fb-955b5fa831be', 20, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-6800-4817-af6c-85774ece931f', 20, '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-6ac4-4471-afa8-9e625b3baa20', 20, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-7203-4b0e-ab73-347af0d8d6c9', 20, '95a2eb59-f8d5-4f46-bcba-3665ac5dc199', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-74c6-4739-b93d-d18790fad909', 20, '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-77da-458f-be0f-e749c6cadcef', 20, '95a2eb5a-061f-4fad-a442-799e5935fdb5', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-7b30-481a-9bce-ed473c18e6f7', 20, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-8234-4da5-ba98-a2e0c3c2e3d4', 20, '95a2eb59-f8d5-4f46-bcba-3665ac5dc199', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-851f-4a3e-b93b-612fb081f08e', 20, '95a2eb5a-0a0e-468a-a870-69442fbe313f', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-881c-4f1c-8e56-640c6555aa55', 20, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-8b18-4ae7-ab30-4c772a2d91cc', 20, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-927f-4dda-be84-4c07d5160718', 20, '95a2eb59-f8d5-4f46-bcba-3665ac5dc199', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-953a-4d8e-850d-31f8a6151b07', 20, '95a2eb5a-0a0e-468a-a870-69442fbe313f', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-982f-4f77-87f8-a2b807e36f04', 20, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-9ad2-41f0-97d7-3edae4bdcbed', 20, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-a117-413e-91bc-d1604f0b7870', 20, '95a2eb59-f8d5-4f46-bcba-3665ac5dc199', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-a36b-4165-b29a-73bc60fbf18b', 20, '95a2eb5a-0a0e-468a-a870-69442fbe313f', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-a5a4-4204-850b-e14c260c0fce', 20, '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpls" VALUES ('95a8857c-a7a5-4dc5-9cc1-18b5e9cb7b19', 20, '95a2eb5a-3516-47f6-abb2-d29e7587d010', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);

-- ----------------------------
-- Table structure for c11_c_lecture_course_work_cpmks
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_lecture_course_work_cpmks";
CREATE TABLE "public"."c11_c_lecture_course_work_cpmks" (
  "id" uuid NOT NULL,
  "marks" int4 NOT NULL,
  "m_cpmk_id" uuid NOT NULL,
  "m_cw_detail_id" uuid NOT NULL,
  "c_lecture_class_id" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_lecture_course_work_cpmks
-- ----------------------------
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2eb5a-9d09-416b-bd20-09eb096f83a2', 25, '95a2eb5a-54bc-499e-9812-19eae6a98720', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2eb5a-a835-4435-8d31-41e1cc6d6321', 25, '95a2eb5a-63e2-4e04-b9af-6519a8431443', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2eb5a-b041-4343-bba4-88eee38eeb72', 25, '95a2eb5a-63e2-4e04-b9af-6519a8431443', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2eb5a-b821-42e2-8bea-87e238095f71', 25, '95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2eb5b-4f41-44fa-b941-ebb65e316727', 25, '95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2eb5b-5951-4cb8-9b8e-84012e7d8849', 25, '95a2eb5a-78be-44c2-be66-427141c417b6', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2eb5b-6129-4125-8d82-a1d2ebd42c9e', 25, '95a2eb5a-78be-44c2-be66-427141c417b6', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2eb5b-68f7-47dd-8504-648e52864aec', 25, '95a2eb5a-85fc-43ab-9e2c-6ec595ffc987', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2eb5c-0034-4303-a422-093dc190e7c3', 25, '95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2eb5c-0a56-4bb7-bb68-4deb09c25b47', 25, '95a2eb5a-78be-44c2-be66-427141c417b6', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2eb5c-16b3-438d-b71a-83661bb15317', 25, '95a2eb5a-85fc-43ab-9e2c-6ec595ffc987', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2eb5c-20b4-4481-9ff0-326f0a633fbe', 25, '95a2eb5a-85fc-43ab-9e2c-6ec595ffc987', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fafc-fd74-495b-a825-4dcb29231e7a', 25, '95a2eb5a-54bc-499e-9812-19eae6a98720', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fafd-098f-4248-9aba-9ad9bf45f1a0', 25, '95a2eb5a-63e2-4e04-b9af-6519a8431443', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fafd-117e-4fca-b3b4-c180a156ffbb', 25, '95a2eb5a-63e2-4e04-b9af-6519a8431443', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fafd-19ef-4c14-af8c-3205dfe12684', 25, '95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fafd-d771-4ff7-95c2-f73ee45cae81', 25, '95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fafd-e526-41ea-96d9-b13183268da8', 25, '95a2eb5a-78be-44c2-be66-427141c417b6', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fafd-edbf-4bf0-8c4c-3069a77df89a', 25, '95a2eb5a-78be-44c2-be66-427141c417b6', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fafd-f5b7-444c-80eb-5f9bf98139f1', 25, '95a2eb5a-85fc-43ab-9e2c-6ec595ffc987', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fafe-b219-4182-b908-fb293c65ee51', 25, '95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fafe-bc90-457e-8ace-209cfbd1179f', 25, '95a2eb5a-78be-44c2-be66-427141c417b6', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fafe-cb05-4698-b23e-7bb2761d0bbe', 25, '95a2eb5a-85fc-43ab-9e2c-6ec595ffc987', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fafe-d787-430c-a0a8-a0d7c7af95af', 25, '95a2eb5a-85fc-43ab-9e2c-6ec595ffc987', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd66-f30e-4c40-83ec-99974a04d472', 20, '95a2eb5a-54bc-499e-9812-19eae6a98720', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd66-fe80-4f49-9c4b-d0468a340221', 20, '95a2eb5a-63e2-4e04-b9af-6519a8431443', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd67-0497-447c-a6f6-cd2f2ac44a6e', 20, '95a2eb5a-63e2-4e04-b9af-6519a8431443', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd67-0a21-4900-b7a7-d8c8df0b8765', 25, '95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd67-1452-4c1b-9e32-dac4b12fc021', 15, '95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd68-1dd8-4061-a9f4-93154ddf308c', 20, '95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd68-2875-4f80-9ebb-719d6d7f6085', 20, '95a2eb5a-78be-44c2-be66-427141c417b6', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd68-342c-4ecf-874f-a6ef92d89115', 15, '95a2eb5a-78be-44c2-be66-427141c417b6', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd68-3afd-43a6-90aa-20d5ca08ed13', 30, '95a2eb5a-78be-44c2-be66-427141c417b6', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd68-41ac-4116-afd0-b502d0e6cca3', 15, '95a2eb5a-85fc-43ab-9e2c-6ec595ffc987', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd69-5163-4e30-bb91-bb4ed31c3be4', 20, '95a2eb5a-54bc-499e-9812-19eae6a98720', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd69-57c5-473f-ae8f-1aeddee7d95b', 25, '95a2eb5a-54bc-499e-9812-19eae6a98720', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd69-5e44-4df7-8c98-88a618d7162e', 25, '95a2eb5a-63e2-4e04-b9af-6519a8431443', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd69-659a-40b0-b045-960a52ad4842', 30, '95a2eb5a-63e2-4e04-b9af-6519a8431443', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd6a-482c-4e26-b719-9dcead7006d4', 20, '95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd6a-4ed8-47ed-9a9d-0092c7eb6c94', 25, '95a2eb5a-78be-44c2-be66-427141c417b6', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd6a-560a-47e9-bc7e-9e773c1f70e2', 25, '95a2eb5a-78be-44c2-be66-427141c417b6', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a2fd6a-5d52-48b8-ae94-7126e0eaa396', 30, '95a2eb5a-85fc-43ab-9e2c-6ec595ffc987', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a88577-ae3d-40bd-b55f-1806c44dd630', 20, '95a88576-f702-4a14-8d55-e23bd2792fa7', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a88577-c960-407a-99ba-693d608b1a05', 20, '95a88577-163d-41de-819e-f8cb5f3d9acd', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a88577-d7f6-4af6-aa4a-5fe965c5f209', 30, '95a88577-163d-41de-819e-f8cb5f3d9acd', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a88577-e739-4e7a-9578-14f040f8eb89', 30, '95a88577-287f-456d-9721-99f80b86ea07', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a88578-fc7b-4c92-aa82-d1c97e613527', 25, '95a88577-3374-4bb0-b691-582de758b773', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a88579-074e-4a97-ab08-8f459f008992', 25, '95a88577-3374-4bb0-b691-582de758b773', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a88579-1183-472c-9922-1819fee40c27', 20, '95a88577-3de5-4425-aab2-0f40dfe97ae7', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a88579-1d2d-4eae-9fad-db6b0caee432', 30, '95a88577-4ce4-4e51-ac78-aa38e58ee953', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a8857a-1bdb-4051-aff8-7027e3ce1f5e', 25, '95a88577-163d-41de-819e-f8cb5f3d9acd', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a8857a-28a3-4d24-a5a3-bd33d9930d78', 30, '95a88577-287f-456d-9721-99f80b86ea07', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a8857a-340f-47f4-a38a-2b1e84118dd5', 20, '95a88577-163d-41de-819e-f8cb5f3d9acd', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a8857a-40e6-4d79-8773-00a332a64a3b', 25, '95a88577-287f-456d-9721-99f80b86ea07', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a8857b-3ee7-4593-bc20-f3bd06f85b3c', 30, '95a88577-3374-4bb0-b691-582de758b773', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a8857b-4905-4897-88e1-cedffb847775', 25, '95a88577-3de5-4425-aab2-0f40dfe97ae7', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a8857b-5616-4eaf-9b50-fd54047cd646', 20, '95a88577-3de5-4425-aab2-0f40dfe97ae7', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a8857b-6340-457b-ac84-ace0ea47025b', 25, '95a88577-3de5-4425-aab2-0f40dfe97ae7', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a8857c-632f-4e4c-b9b7-8817e7cc6214', 20, '95a88577-3374-4bb0-b691-582de758b773', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a8857c-6eee-4b6c-bf3e-4521fda4be66', 20, '95a88577-3de5-4425-aab2-0f40dfe97ae7', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a8857c-7fdb-49c2-9a14-bc52b7283d57', 20, '95a88577-4ce4-4e51-ac78-aa38e58ee953', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a8857c-8fc9-41b6-9332-1a9d4591d8da', 20, '95a88577-4ce4-4e51-ac78-aa38e58ee953', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_course_work_cpmks" VALUES ('95a8857c-9f18-4cf8-9382-6ccda813cd1d', 20, '95a88577-4ce4-4e51-ac78-aa38e58ee953', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);

-- ----------------------------
-- Table structure for c11_c_lecture_course_works
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_lecture_course_works";
CREATE TABLE "public"."c11_c_lecture_course_works" (
  "id" uuid NOT NULL,
  "c_lecture_class_id" uuid NOT NULL,
  "m_course_works_id" uuid NOT NULL,
  "m_course_work_marks_id" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_lecture_course_works
-- ----------------------------
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a2eb5a-96d7-4283-b0c5-c2d02bfc8553', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9472-4d31-836a-48abe09e604c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a2eb5b-4bbd-4aec-b757-6904da0be437', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5a-9472-4d31-836a-48abe09e604c', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a2eb5b-fcd5-4b53-bb58-50fbf1262291', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fb5e-4ae6-b779-c73f1dc78860', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a2fafc-f614-499b-9826-ee64edf03606', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9472-4d31-836a-48abe09e604c', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a2fafd-d404-4854-8164-8190cca17e32', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5a-9472-4d31-836a-48abe09e604c', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a2fafe-af06-461f-8c8f-128242a90b11', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fb5e-4ae6-b779-c73f1dc78860', '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a2fd66-eadc-4ef5-8133-6caed79aafac', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9472-4d31-836a-48abe09e604c', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a2fd68-19cf-49b8-a126-6d0669725025', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5a-9472-4d31-836a-48abe09e604c', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a2fd69-4dd7-4569-a343-370df45fad87', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4c30-43e2-a67a-64897d624687', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a2fd6a-4364-4794-a240-6e91aa837694', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd69-4c30-43e2-a67a-64897d624687', '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a88577-8416-4a76-89d9-a19e3a8fa4bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd69-4c30-43e2-a67a-64897d624687', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a88578-f90d-4aa1-bc5b-1a02abdf5fac', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd69-4c30-43e2-a67a-64897d624687', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a8857a-1820-40f5-be7e-2d89d0c7d6b5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4c30-43e2-a67a-64897d624687', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a8857b-3ac8-4062-a475-08e2d66eb8e9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a2fd69-4c30-43e2-a67a-64897d624687', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_course_works" VALUES ('95a8857c-5fbc-47a4-8c11-0e9000fb9df8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd69-4c30-43e2-a67a-64897d624687', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);

-- ----------------------------
-- Table structure for c11_c_lecture_cpls
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_lecture_cpls";
CREATE TABLE "public"."c11_c_lecture_cpls" (
  "id" uuid NOT NULL,
  "c_lecture_class_id" uuid NOT NULL,
  "m_cpl_id" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_lecture_cpls
-- ----------------------------
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2eb5a-5bb6-4f7a-a269-ad859000af60', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2eb5a-5f21-4177-851d-ddfc6f436628', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-2472-49c0-b4ba-b64ed31885d3', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2eb5a-626b-4929-9361-e44b88ef14da', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-49db-4a77-b971-a900302e0a45', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2eb5a-6864-4706-8f20-f57da62dceb0', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-1dd0-4834-96f9-9287fa2586c6', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2eb5a-6ba5-4ffc-a9e6-16ca58422e34', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2eb5a-741f-4e45-a524-8609a99b18d9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2eb5a-7776-4fed-bbce-e3135f396b2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-3516-47f6-abb2-d29e7587d010', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2eb5a-84af-474d-990d-83b0a21df0f0', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-4688-47a1-b9f1-c8e76aace4a1', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2eb5a-8a97-4adc-b87d-79f1f477b3d9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-10a0-42af-b537-249619cfa286', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fafc-b07e-4bdc-90f2-2262d605d96f', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fafc-b457-4513-b90a-85a3c6a8f52c', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-2472-49c0-b4ba-b64ed31885d3', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fafc-b866-45d3-bf1b-b385020ea059', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-49db-4a77-b971-a900302e0a45', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fafc-bdc4-425c-876f-2c3a41b787f2', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-1dd0-4834-96f9-9287fa2586c6', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fafc-c191-4614-a8ab-c07e61ce13a7', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fafc-cc0a-4ef6-8fa5-a73d07e69e3b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fafc-d0f3-4e01-b928-a54c5dd48c1a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-3516-47f6-abb2-d29e7587d010', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fafc-e15b-44c8-9e3e-e6f7985e820e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-4688-47a1-b9f1-c8e76aace4a1', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fafc-e72f-4f37-9225-5b4062e9903d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-10a0-42af-b537-249619cfa286', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fd66-ad5e-4474-8648-72d2dca127a5', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fd66-b15f-40cd-9f91-781919d7121f', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-49db-4a77-b971-a900302e0a45', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fd66-b74b-4f77-960c-566d77367be1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-1dd0-4834-96f9-9287fa2586c6', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fd66-c0e6-4ced-aa2b-4f026a50633a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-213c-4f6b-82de-16b1e085f1be', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fd66-c5d1-4eae-b846-94a599f0e8b6', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-2472-49c0-b4ba-b64ed31885d3', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fd66-caac-45fa-8c96-dcf542fc45eb', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-3516-47f6-abb2-d29e7587d010', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fd66-d9b4-4d68-9524-526ff58a1e46', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-4688-47a1-b9f1-c8e76aace4a1', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fd66-dfc3-4021-a1a7-20a2552baa79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-10a0-42af-b537-249619cfa286', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a2fd66-e3a0-4ec7-b163-a2d3c523eeef', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a88577-0d1d-412e-b45f-9706ba3f72a4', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-f8d5-4f46-bcba-3665ac5dc199', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a88577-10a2-4b7f-8d4b-d726e08fe891', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ff7b-48bb-9037-19852ddf3b15', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a88577-14be-4f8a-a21c-c062d4b59bfb', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb5a-061f-4fad-a442-799e5935fdb5', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a88577-1f5b-453f-a6d7-4e50bf1eea78', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb5a-0a0e-468a-a870-69442fbe313f', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a88577-2311-44dc-8238-22522c353745', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb5a-27da-42c8-b901-f31e57d3c8a1', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_cpls" VALUES ('95a88577-2733-4264-b751-cb30875e588e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb5a-3516-47f6-abb2-d29e7587d010', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);

-- ----------------------------
-- Table structure for c11_c_lecture_marks_collegers
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_lecture_marks_collegers";
CREATE TABLE "public"."c11_c_lecture_marks_collegers" (
  "id" uuid NOT NULL,
  "m_course_works_id" uuid NOT NULL,
  "m_cw_detail_id" uuid NOT NULL,
  "c_lecture_class_id" uuid NOT NULL,
  "m_colleger_id" uuid NOT NULL,
  "student_marks" float8 NOT NULL,
  "cw_detail_marks" float8 NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_lecture_marks_collegers
-- ----------------------------
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-c26e-4ae1-ab96-ea4665dbe809', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 15, 60, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-c4bf-4b05-b749-141e9655068e', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 11, 44, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-c728-4b75-91dc-ea0bdbb9f71f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 12, 48, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-c929-4dac-9c10-37bfb9084a1f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 16, 64, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-cf75-4905-9d58-9c63505a85d3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 12.5, 50, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-d1a7-4042-a822-814b0d260b4c', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 11, 44, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-d3a2-4504-8e53-50da1b4dad5c', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 11.5, 46, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-d599-4552-9956-862a30da6e28', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 18, 72, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-da9c-43f0-9492-0c711d6bb9b3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 14, 56, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-dc8b-465f-9dcc-4c22d93915c4', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 13, 52, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-deae-4b24-8d6b-dee78f272753', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 13, 52, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-e0aa-4b79-8335-9ab8327a1644', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 18, 72, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-e60d-47c1-90ae-efd09a35be76', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 14, 56, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-e815-4cd3-a931-d300665895ba', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 12, 48, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-ea2e-49fa-a697-779cee3e947d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 13, 52, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-ec5c-4e63-8733-12cc6e5275fd', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 17, 68, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-f174-4c84-9f73-eceebd19c8ee', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 10, 40, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-f37a-4b03-84ba-2e9e7f8eb785', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 11, 44, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-f576-44a7-b308-9e848e19f938', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 12.5, 50, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-f7d6-4a14-b587-9c6a321ee65a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 20, 80, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-fcca-433d-8207-da2518bfe33f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 10.5, 42, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5a-fef7-4e04-8685-7bf29591c08b', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 13, 52, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-00fb-4417-9aa0-c6a5caaaa52d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 14, 56, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-0310-4f7d-9b7a-b62785949ff5', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 15, 60, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-0816-48db-995a-cb00c32afadb', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 12, 48, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-0a30-48b3-b357-c2569c5b2e0a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 13, 52, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-0c68-4097-a0a9-7db43a175f8d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 15, 60, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-0e79-4013-a1d7-070e1dda98ee', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 20, 80, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-137c-4f92-ad36-aacc7b9bc729', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 15, 60, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-1596-4f83-a9b2-d1b2d3102f2b', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 13, 52, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-1796-4695-8c38-6bc25c8e1beb', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 13.5, 54, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-19b3-49b8-9c00-772196a390ee', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 20, 80, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-1ec0-49d4-8db6-0952d301b7f6', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 14, 56, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-20ca-444e-b365-0b017203e825', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 12, 48, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-22c0-4599-b73f-9a1d30943b05', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 12, 48, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-24b7-4716-9328-fb24790128d1', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 17, 68, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-29c4-4e11-b22d-48c9f8f99aee', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 11.5, 46, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-2be6-4e51-9bcf-fe8fb99053ee', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 11, 44, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-2e06-4782-af86-c7c077cb6ed6', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 12, 48, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-2fff-43bf-953e-fd03bbb05a96', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 15, 60, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-3517-4b7f-acb7-ef73fff752e7', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 20, 80, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-3714-49ce-bdbc-23a5399c28ef', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 21, 84, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-3944-4afe-81e6-5c1fea5a0c6a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 22, 88, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-3b4f-4781-8aa7-45127e1c575c', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 22, 88, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-4045-4c00-840f-15b3bdebc020', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 14, 56, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-4249-4d4a-92a9-83b234c7cf23', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 12, 48, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-4443-4c34-ab31-d9413bd6f17a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 13, 52, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-4677-450c-b808-72c8212d1ba8', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 17, 68, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-729a-4548-85e2-798fbff8f53e', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 16, 64, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-74bc-4efc-94d3-37630cb91e53', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 12.5, 50, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-76cd-4311-bd8c-5083d52735b3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 9.5, 38, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-78c7-4dd7-970a-7ce8a0f4cf3f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 19.5, 78, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-7ddc-454a-8e6f-1f699f115e3f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 15.5, 62, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-7fd4-4cd4-be1c-416cc10ce8d3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 13, 52, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-81f0-48d9-8b96-390966d8614a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 9, 36, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-83ef-48f4-a79b-ab207896a63a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 19.5, 78, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-89c7-4906-920f-21420be1c0dd', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 17, 68, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-8bca-412c-97da-7971fb5c88c3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 14, 56, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-8df7-4a01-a44f-2f870e168f79', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 9.5, 38, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-906d-4911-8bda-b64a0dc362d0', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 17.5, 70, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-9579-4678-bd7f-baab8c2428d1', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 13, 52, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-9774-49cd-ba3d-761fc26b41b0', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 12.5, 50, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-9969-4d0e-805a-d5b1e25a5a9a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 10, 40, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-9baa-4b23-a873-c06c033ebb25', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 21.5, 86, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-a07a-4021-8813-d0c1ebea39cc', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 10, 40, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-a2ad-4076-9c61-49f2ce3fd5cb', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 12, 48, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-a4ae-4bee-8d70-ab6aeabad225', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 9.5, 38, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-a6a4-4f39-8106-5850d7315f5d', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 18.5, 74, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-abc1-4bc1-a108-ffc25d1266b0', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 10.5, 42, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-adec-4005-9afe-bb6f0d1f2ed1', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 14, 56, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-affa-487a-974a-94655e9ca4b8', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 10.5, 42, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-b1f7-43c5-8548-c06f39d056ba', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 23, 92, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-b704-4f40-9c55-43ac5cb56f54', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 11, 44, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-b904-43a4-943a-3ffba4b9b74f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 12.5, 50, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-bb3c-4a06-bff7-c608e7b3fe48', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 11.5, 46, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-bd41-4ebc-af01-a554577afceb', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 20, 80, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-c241-4663-8414-3deedea8b182', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 16, 64, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-c445-48d2-8266-9dfafbee6ebc', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 15, 60, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-c663-4a88-867e-36c707499efa', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 10.5, 42, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-c894-4f02-be2e-08bc7cb53f60', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 22, 88, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-cd6b-43df-ae9a-60176f12180a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 15, 60, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-cf96-4f2a-bd91-876f6000751a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 15, 60, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-d19f-4620-815a-0fdbd21bca22', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 9, 36, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-d3bb-4bf3-ae68-0350d27d2912', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 22.5, 90, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-d8d7-491f-b2c4-7f88bef5145e', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 12, 48, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-dad7-4fb0-a672-29c362e06fc8', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 12, 48, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-dcf1-4e1a-b7d9-d831dcfbb745', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 9, 36, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-def2-4406-a3be-e8da31e6cac7', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 20.5, 82, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-e40e-4ede-a786-32ff8ef2a096', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 17, 68, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-e609-45e8-bb20-93ba5c5bb8f9', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 16, 64, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-e7fc-4fe3-bdc8-4b3c48428b05', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 13, 52, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-ea2d-4783-ab42-93577ec31063', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 27, 108, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-f061-4705-a5df-297935f15e1e', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 10, 40, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-f26b-4964-bd23-8f16b3526fa0', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 12, 48, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-f466-4f8b-ae9b-f65a8fa0ec09', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 9.5, 38, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5b-f6a7-46b5-89cd-3bd830538956', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 18.5, 74, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-2ba3-49cf-91bd-3036bea4fe9b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 17, 68, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-2da6-416a-bf5a-a67f1f29f0f8', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 23, 92, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-2f9d-4b88-bac3-68caf31d7678', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 15, 60, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-31c9-4420-97b8-caa37dde5d7d', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 13, 52, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-36d8-4f60-aab8-5b5e3a39fb33', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 17, 68, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-38d4-44a1-98e6-4215a9afe4b9', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 21, 84, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-3ae4-49ad-b2bf-2d5ec739a783', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 15, 60, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-3ce0-4b10-b51f-4b860d1c98c1', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 16, 64, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-41f7-4f12-aadc-d14870635c3f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 19, 76, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-4408-419b-9d0c-fd27db659455', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 18, 72, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-462f-4e6f-b6bc-92736115edd5', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 25, 100, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-483c-4ddd-b433-78bf94cf46ee', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 18, 72, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-4d2f-45ff-aeca-0db269621b92', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 16, 64, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-4f32-4005-a4e1-63f62456614d', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 19, 76, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-5152-4535-9e4d-e0353122e36d', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 17, 68, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-5381-4e51-aa84-2eed1dcbd0ff', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 20, 80, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-5887-469b-99f0-ffc48a59fb10', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 12, 48, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-5a85-4104-9bdd-c627d864f604', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 25, 100, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-5c7e-47d5-99ad-3f3e0bcccc1b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 22, 88, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-5eaa-4215-b882-b8b11cb2fd36', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 15, 60, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-6379-4649-a631-4cec6402f7d5', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 14, 56, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-65a4-4a76-9427-f3b9c6775146', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 19, 76, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-67a0-4f90-b962-9d9d0cb18261', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 25, 100, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-6999-417e-9269-a8266eca74a5', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 12, 48, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-6f0e-434e-a313-a94de2d0df30', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 17, 68, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-7188-4b7c-b70e-1b6eb892c447', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 19, 76, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-739a-42b7-97c4-6b7fb927ffba', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 23, 92, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-759c-4492-b70a-2e30a9577d68', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 16, 64, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-7b08-467a-b3e5-4a8b462345f2', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 18, 72, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-7d03-471d-8dd2-77c749e48061', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 16, 64, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-7f37-4dba-a7c4-dee8792191c7', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 15, 60, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-8137-47f3-bd8c-546e2656b25b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 17, 68, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-8651-4b66-b339-799ae546e2af', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 17, 68, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-884c-4210-87f4-41eead940f50', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 20, 80, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-8a4a-4c54-81d3-784e035d7b1f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 18, 72, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-8c85-469c-8e43-12644ce62e79', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 15, 60, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-918f-483c-acfc-29f2336772f9', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 19, 76, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-93b2-434f-983d-eabf4d5be282', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 25, 100, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-95ad-4d5b-9663-3c7ad0e82fd8', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 22, 88, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-97c2-424b-810a-124d3303dd88', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 16, 64, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-9d0a-4180-afde-c217443e1a20', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 17, 68, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-9fbc-4958-ac99-adf06df2bc3c', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 19, 76, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-a1bd-4d4e-aa4d-67e1dfa7f637', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 19, 76, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-a3d6-408a-b1cb-11d8e778517c', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 20, 80, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-a8ea-465a-a96c-8427ca2f4dab', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 15, 60, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-aaed-49fa-a1e1-08f60891f940', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 22, 88, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-ad0b-4e90-81a8-82606e2b64f7', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 21, 84, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2eb5c-af11-4e95-82ac-fbeed01cf11c', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 17, 68, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-28c8-441b-ac6c-a3298d1a8f16', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 15, 60, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-2be5-48c7-b0b5-bebf6c74e815', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 11, 44, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-2ecb-4d42-aac6-40fb68d5ef92', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 12, 48, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-30d6-467b-874f-a14752ec03c9', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 16, 64, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-3902-48dd-a2a3-61b4d827b71b', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 12.5, 50, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-3c21-4135-8730-8de950c8b1c3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 11, 44, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-3ef2-4403-9864-3a0f4f3dc87c', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 11.5, 46, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-421c-449a-8fe9-f42441f33201', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 18, 72, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-483f-4448-b1b6-b853b140ea6d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 14, 56, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-4a7f-4ff2-8d28-3df154c57f42', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 13, 52, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-4d15-4321-a91a-07e81cd42582', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 13, 52, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-4fa2-40e4-ac34-20593df0fc84', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 18, 72, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-558e-4b7e-9bc7-f85083dde4ca', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 14, 56, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-57d4-4cc9-b4da-87ae1547701f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 12, 48, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-59fb-48d3-bc83-c606ffffcc25', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 13, 52, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-5c92-460c-b644-4396a7a48b9a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 17, 68, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-6260-48f6-95bd-9c75540c793a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 10, 40, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-653e-4be3-8695-854300d50757', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 11, 44, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-683a-4805-a39c-cea26cbd52be', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 12.5, 50, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-6b93-4608-9a27-507c080b4ef0', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 20, 80, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-728b-48fd-b326-f36b3b156dbf', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 10.5, 42, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-7564-43c8-afe1-aad8dd527c4b', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 13, 52, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-77b2-4cc8-831f-bac4d608467d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 14, 56, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-79d4-40e7-8c5e-b8431ca65c54', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 15, 60, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-7f96-40f0-a84c-911a5915f715', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 12, 48, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-8231-46a0-a2ce-0ae3ac95b99d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 13, 52, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-8490-49d2-a82d-52fe07e4b044', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 15, 60, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-869a-47ab-89b1-ffc11f7eade8', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 20, 80, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-8c6d-4258-beb4-19ef851e2266', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 15, 60, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-8edf-4049-8832-58579a8e2d04', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 13, 52, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-915a-44e6-ab2d-ffe47cb0f92a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 13.5, 54, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-9492-461a-9190-221f1fee3606', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 20, 80, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-9bfd-445a-abff-5238d0c3bacb', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 14, 56, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-9f1e-421f-af1f-cce95707eaf9', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 12, 48, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-a1be-49db-968c-75907d9dbf77', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 12, 48, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-a44f-4d3a-bc7b-a41a4944f456', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 17, 68, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-a9ed-4e2c-8e56-f9d888f1c0d8', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 11.5, 46, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-ac23-4d13-89f4-034f26565c9c', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 11, 44, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-ae65-4640-b404-c0dbbd357267', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 12, 48, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-b124-4539-84d6-7c98e2000dc9', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 15, 60, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-b89b-4e6c-9279-73abafe15d7b', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 20, 80, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-bb73-433c-b0af-0b29b13f7be6', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 21, 84, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-bedf-453a-8656-98d4996e2d0e', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 22, 88, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-c168-4635-9bc8-44209799619a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 22, 88, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-c75d-48e1-abcd-b8277eb182cc', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-9936-43e3-81e8-110c5f2a52a6', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 14, 56, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-c9da-45d4-a7cd-3a7db680e215', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 12, 48, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-cc2c-4d97-986e-39f7dc954e45', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 13, 52, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafd-ce67-48b8-a7e2-88253bc70bc4', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 17, 68, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-01c2-4762-af30-d3cfe86b5bcf', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 16, 64, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-054e-4252-89a2-76e9c58b3625', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 12.5, 50, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-087e-43fa-b708-9ffd61a45739', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 9.5, 38, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-0bd8-47ec-99ef-36e3fe87fc40', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 19.5, 78, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-128e-448a-b34a-d58caf339bba', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 15.5, 62, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-1512-412c-a662-4a280410e014', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 13, 52, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-17e4-4e95-8d80-89d1ccd99dfd', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 9, 36, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-1a3f-4a23-8066-64c347ad3ca1', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 19.5, 78, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-2073-4a75-a1e1-a4dc42c5de8b', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 17, 68, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-22fa-4b57-9555-596247b13279', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 14, 56, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-25e7-4c1d-92ef-b053bd63be10', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 9.5, 38, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-28da-4c30-8d1a-856ebeb57d85', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 17.5, 70, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-3061-4ccb-9d93-a38149f4277c', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 13, 52, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-3383-4a47-9a3e-fce050805bbc', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 12.5, 50, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-35da-47c9-b108-88a409f13cdf', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 10, 40, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-388a-43c9-91bb-9044301be37c', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 21.5, 86, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-3edd-40a8-a1ce-f2e43e89c922', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 10, 40, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-4143-4ffe-8224-fd933379029e', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 12, 48, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-4388-4bb4-9060-bf40eb8ace0a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 9.5, 38, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-4619-4ced-85de-5a2d762f0416', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 18.5, 74, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-4bf3-49cf-a2c9-5d9834ed40d8', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 10.5, 42, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-4e77-4d61-8a40-d59f7077e531', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 14, 56, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-50c2-447b-8101-0e800ce4fb5f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 10.5, 42, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-536d-48b3-8a79-08da9ea1fc00', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 23, 92, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-5a8c-4c25-930f-d9b0820cf3ee', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 11, 44, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-5d3d-432d-9f7b-ccd7e9855d4a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 12.5, 50, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-606e-4979-868e-5c1ceb62812a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 11.5, 46, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-62e5-4b59-8c3a-c28fe5c88815', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 20, 80, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-68f6-40fd-b137-13c1573b6917', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 16, 64, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-6b3e-4c97-a74c-678e8faf1248', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 15, 60, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-6dde-4af5-94f3-059ca43be064', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 10.5, 42, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-70b8-4045-8f39-5675b0381d16', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 22, 88, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-77a4-4ccb-b467-8c935192e1eb', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 15, 60, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-7aa9-4ca1-a108-27f4bd96608f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 15, 60, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-7d06-4272-8d3b-0fde2addd59c', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 9, 36, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-7fbc-4ba6-a603-4c9c312dc4a4', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 22.5, 90, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-855d-4337-8fe2-26c3142f0205', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 12, 48, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-8809-4248-bd00-0710c5656c4b', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 12, 48, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-8a45-4dc2-9433-5395b28f645e', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 9, 36, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-8cae-4e1a-ad30-91b3ff2d45da', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 20.5, 82, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-9228-4fcf-9b05-ae563dd38bcb', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 17, 68, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-94bc-41c6-8e31-0e4b9a3dc25f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 16, 64, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-9712-40cc-ba5b-27cb439de9f9', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 13, 52, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-9986-4c7d-bea6-8a52d0843b6c', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 27, 108, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-a05e-415e-bc72-cd3e0588eed1', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 10, 40, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-a35d-413f-8073-583812ff3810', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 12, 48, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-a5f7-4cc9-a407-12fe2371aab4', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5ef0-4d09-b212-7116cb07fb38', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 9.5, 38, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-a942-4700-9aed-75c13ba717a1', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-66dc-454e-8141-37c4ab45af2d', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 18.5, 74, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-e394-4942-adab-fa69c9969842', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 17, 68, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-e599-4420-95a5-55f66547b383', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 23, 92, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-e80c-49ca-b865-06e1d4ce8c53', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 15, 60, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-ea74-4012-899d-75e84f17d6da', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 13, 52, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-f1d6-4507-bbdb-c0591a1282f9', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 17, 68, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-f481-4e5d-b5ae-766430ecb7ef', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 21, 84, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-f794-433b-9f4e-74f4fb4bb24a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 15, 60, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-fa0c-4233-8375-97b6665b29a6', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 16, 64, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fafe-ffe4-4660-9ff1-581160ad2323', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 19, 76, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-0266-46cf-9451-005c94632e78', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 18, 72, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-0494-4586-8251-68d36cb1b54f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 25, 100, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-069a-43a4-aba8-c2f9bbd23f76', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 18, 72, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-0c70-46fb-9d85-5d8fda7b64c0', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 16, 64, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-0fac-48ac-a017-193cf8fbe919', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 19, 76, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-12e9-4f12-a596-48f23406502f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 17, 68, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-1775-4471-8aaf-2f778bee64b4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 20, 80, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-1ee8-40ae-9cb4-b3030db4ca5d', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 12, 48, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-2133-43b7-b5b3-0d1264bd7c5d', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 25, 100, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-23f9-4cc8-b480-24cb010d8dcc', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 22, 88, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-2648-44bb-94de-953ae1d6a60f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 15, 60, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-2be9-402b-8418-ad58d2ad2992', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 14, 56, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-2e1b-4213-9341-b4b7509681cd', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 19, 76, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-30d3-4434-8583-2e260f6df05b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 25, 100, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-3314-4ded-91d3-0e4321799753', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 12, 48, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-3949-4b57-98eb-0f53cce91024', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 17, 68, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-3ccb-4930-8260-381d26435397', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 19, 76, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-3fd5-4082-87a0-fce2064285e4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 23, 92, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-42dc-4af3-b84f-2a18a5c5efbb', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 16, 64, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-49b0-4d2d-a103-d6b67abc76a7', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 18, 72, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-4be2-4f4a-987c-42c3f68ef286', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 16, 64, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-4e1c-492f-ad55-1cbbb4cfcc03', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 15, 60, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-50a9-4f17-9824-bb9589efd608', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 17, 68, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-55e0-4ba6-835c-a5aa0b932803', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 17, 68, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-587a-4f77-ab79-9e0815fd7683', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 20, 80, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-5aa9-48ce-b464-d30390b3aa6e', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 18, 72, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-5d1c-47ac-8ffe-adc68afd0d3b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 15, 60, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-63eb-4730-a56e-7f25212948f4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 19, 76, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-66fe-4ade-84ad-b9fcc662fccd', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 25, 100, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-69ce-4d09-b25b-daa826c27091', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 22, 88, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-6cef-4241-8ccb-4e15c71161a3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 16, 64, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-737a-4d5f-adfb-e4d81e737736', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 17, 68, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-75bf-45b7-a0f6-44892bd3f683', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 19, 76, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-7836-4c89-a681-634eb8e80b78', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 19, 76, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-7a3f-40ed-8cb7-49204a54cca9', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 20, 80, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-7fe1-4f18-96e7-bc33998b9028', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5b-fe20-4d97-b05f-214b88cfbac1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 15, 60, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-81ef-4ad8-a72b-a4caca5d4889', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 22, 88, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-84a4-4200-9745-26d44d6d01fc', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 21, 84, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2faff-873d-41a9-8284-d54b462ce93a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-1e9a-4c75-a258-1469cff25c6a', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 17, 68, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-2031-48f4-bae0-9a6f5f310078', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 15, 75, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-2390-4dba-aa4c-500eb049b0fb', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 11, 55, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-25f5-4ae9-8fe1-382c8ef21848', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 12, 60, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-283a-41d6-be60-0fb062fa0c73', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 16, 64, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-2b1b-46d6-b218-c36acec00159', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 10, 66.666666666667, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-32e5-4fce-affe-130b2c509800', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 12.5, 62.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-3609-47b0-baa9-7beb4238f56b', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 11, 55, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-3937-4d3a-b37f-96f852c8f97b', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 11.5, 57.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-3c43-4fce-84da-2cf4f73ab9a5', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 18, 72, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-3f71-4f3b-97d9-149c2024fb33', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 9, 60, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-4567-403e-a694-ce84ac1a7756', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 14, 70, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-47a0-4332-b093-12a206fcb7da', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 13, 65, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-49bf-403e-95ff-839fbee8a75d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 13, 65, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-4c59-4bb5-a355-be61b03f647e', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 18, 72, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-4e7f-49e4-bba4-c0d2ea8a9c80', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 12, 80, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-5428-4b23-8b02-7cf8be64bfad', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 14, 70, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-5644-484c-bc21-768eb1e4b925', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 12, 60, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-58db-4cbd-bcf5-c43efc1b3439', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 13, 65, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-5b3b-4711-93a6-13399388737e', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 17, 68, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-5d78-4c46-9e74-414189b2e4f2', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 10, 66.666666666667, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-6437-4ca2-a220-53fe0aafe5af', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 10, 50, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-6765-4781-8192-fce9dcea18e6', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 11, 55, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-69dd-4dca-b30c-5f7909165d31', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 12.5, 62.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-6cfb-4e1f-8f37-7fbd356ffc38', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 20, 80, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-6f52-40bf-b160-6f2a13d49d2e', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 9, 60, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-752d-4bd5-853a-3c4ba5ea1a53', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 10.5, 52.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-7766-4b59-8c5b-302036bf3c01', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 13, 65, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-7a16-4f6c-b661-06f628b98cb8', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 14, 70, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-7c46-46ee-8e7c-d1ae7d5edc39', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 15, 60, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-7e90-4242-8915-4619824b3ec7', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 10, 66.666666666667, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-8424-42d6-8f4a-164befce6313', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 12, 60, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-86ee-4c7a-be32-b0f7733b41be', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 13, 65, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-89ad-4869-99f0-0429e1767d2f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 15, 75, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-8cc7-46f2-9434-97fec4f3a7f1', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 20, 80, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-8fa2-4d53-acab-c468d0921e76', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 11, 73.333333333333, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-9646-48e7-9973-28830f86bf1d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 15, 75, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-98f6-4390-b83e-16d9ca9c561b', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 13, 65, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-9b52-4700-8b17-b737964d1530', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 13.5, 67.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-9d7c-4739-8e5e-0992b0a71e77', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 20, 80, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-a034-4160-8ec0-718fcc223451', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 12, 80, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-a5e5-47b7-93b1-cc4fd1ccfb5c', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 14, 70, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-a818-439c-81f0-c59a9c526fea', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 12, 60, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-aa28-430c-85ac-1d720e9e7760', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 12, 60, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-ace5-4c31-83a7-9030c405a35c', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 17, 68, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-af63-40a0-821b-7532c05e256b', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 10, 66.666666666667, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-b6a9-45aa-91f4-172f9f53f4bb', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 11.5, 57.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-b9ad-49e1-a204-55f227032d48', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 11, 55, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-bc2f-478b-a4b6-00c830b15f5c', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 12, 60, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-be97-423d-a11d-bfd366398298', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 15, 60, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-c14b-4703-a1fd-515ff850da91', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 10, 66.666666666667, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-c72b-42e4-88c7-f8472b72948d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 17, 85, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-c968-4212-ad8d-a08b125283ae', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 16, 80, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-cb8d-48fe-858b-989b68f386b3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 15, 75, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-ce25-4a2c-8bc7-0897c8d68779', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 22, 88, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-d03f-4330-bef9-e2bf56d89087', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 12, 80, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-d69a-4b90-8a08-18478a39690f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 14, 70, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-da19-4822-95ff-ad1b042668c9', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 12, 60, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-dd24-41c3-99ed-609aaa4d02d1', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 13, 65, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-e028-477a-aae0-d4425239ec39', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 17, 68, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-e325-4abb-9f28-133ce03683e3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 15, 100, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-e94a-4e01-a98d-1408ba583e73', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 10, 50, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-eb5a-4bdf-aed3-144ce151f9af', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 11, 55, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-ee22-455b-ace0-6cee9015923e', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 12.5, 62.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-f060-4f1b-b88f-6b54f41547d7', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 20, 80, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-f270-4cab-862a-b08ea1e4dc37', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 15, 100, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-f833-4da1-84a3-3073cf4081b7', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 10.5, 52.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-fafc-46f8-a26d-17552e319763', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 13, 65, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd67-fd87-4961-b0b3-60446ae1a9be', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 14, 70, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-00f4-406b-954c-6a5661ed2df3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 15, 60, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-040b-41da-a27f-218c8d25ce36', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 15, 100, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-0ad7-45d6-b1d7-cd77d30e7219', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 17, 85, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-0d85-4761-9199-5595c3f8b3f9', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 14, 70, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-0ff6-4ede-8268-877136f9ff4d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-01f1-486c-8638-594d778b6e9b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 15, 75, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-1200-42ec-9abc-1ab605e53cd4', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb5a-b5df-4a7d-b234-74ba297cf52a', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 21, 84, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-14ba-4967-a608-ebe0944e24c8', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd67-1173-463c-81a4-5be36bd2f699', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 12, 80, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-4c7d-40c5-b50d-20aba1718208', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 16, 80, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-4ff1-46a5-82e3-be08614de744', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 12.5, 62.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-52d1-454c-8bca-226d11eda66c', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 9.5, 63.333333333333, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-557d-4125-9817-5e04526f7548', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 19.5, 65, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-57e7-4c3f-a86d-4bb4dd162dc2', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 10, 66.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-5d90-450d-a6bf-28a006a4344a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 15.5, 77.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-5fbe-4c39-bda2-394cdbcdc63d', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 13, 65, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-6201-44a1-979d-db4322f21f71', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 9, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-6555-4dbc-973d-0edcf60b715d', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 19.5, 65, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-676e-4921-a2ab-eb0601f1a407', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 9, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-6e91-4bb1-a1eb-aa8c641cb288', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 17, 85, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-71c2-4929-924e-ba4ab83901f9', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 14, 70, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-74c0-4a7e-b8bd-2468d236913d', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 9.5, 63.333333333333, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-77fd-4671-b7b9-5e348f7f3422', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 17.5, 58.333333333333, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-7a7b-431a-a20a-7f5ab4e0e8b3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 10, 66.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-8051-4ce7-9dbb-545522f11b6f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 13, 65, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-8281-4c74-a3ac-96a63eb4d5dc', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 12.5, 62.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-8506-4321-81d6-b681636a74cd', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 10, 66.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-86fc-46c1-beeb-cae1c0c45795', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 21.5, 71.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-8959-4680-9706-3d3799374c29', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 11.5, 76.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-8ed6-4014-ad08-5d9dc974e690', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 10, 50, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-917c-477d-98cd-a4b3d3917eee', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 12, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-9371-4d47-8019-ad6d4dff1736', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 9.5, 63.333333333333, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-95e9-442b-a026-e4bcb26b08bf', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 18.5, 61.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-98a1-41da-ac2b-c1767b2a8e00', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 8, 53.333333333333, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-9fd1-4a08-becc-982d6bc906d3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 10.5, 52.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-a2ca-4a0d-8b2c-24015f6605da', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 14, 70, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-a5e5-4a46-848c-b1900dab008f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 10.5, 70, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-a87d-435c-b283-9dc25c5fa7a0', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 23, 76.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-ab4f-42b2-aedb-0db85dbb588d', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 9.5, 63.333333333333, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-b0d7-4a6f-ab1a-1d6c68569eac', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 11, 55, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-b321-4821-b0e7-46a5d97c4fce', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 12.5, 62.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-b549-4469-bae3-103ed96a6675', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 11.5, 76.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-b7f0-43a5-860d-8a7806dbb0be', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 20, 66.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-ba1d-4052-ba22-513798194d9b', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 9, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-c015-4ab5-8d6c-8bd3baab1afa', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 16, 80, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-c308-4d58-af1f-e061e1231385', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 15, 75, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-c659-4341-9b8b-21e5c0dc00c8', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 10.5, 70, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-c911-4d9d-9191-9535adcc6331', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 22, 73.333333333333, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-cc26-4f45-bcf0-4116d80560ba', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 12.5, 83.333333333333, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-d264-4bef-b125-fff46e14ed7a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 15, 75, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-d470-4a08-bfa4-e54f5b9785d5', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 15, 75, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-d666-4a04-8ef0-a470cc17d70f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 9, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-d901-4802-bce0-0ace0766ba1b', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 22.5, 75, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-db28-4c7f-bf77-c8816726e446', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 11.5, 76.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-e0cf-456d-8b93-6c48233e4334', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 12, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-e307-4086-85f9-dd823af2c303', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 12, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-e5f4-4cb6-8a15-df4f2e294784', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 9, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-e823-4235-808a-bd0b153f71fb', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 20.5, 68.333333333333, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-ea35-4c32-af17-2e5e75bf8879', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 9, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-f10d-40ea-a990-54e9bfe2e3cd', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 17, 85, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-f44f-4194-8d95-1aaf72c6fe5c', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 16, 80, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-f6f5-4fd0-a982-1cd8f2d58939', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 13, 86.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-fa2e-4dce-9f0e-97cf339b0400', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 27, 90, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd68-fcad-4e94-afc8-dfed90a0614a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 12, 80, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-0405-4d6f-a4fd-6766aad3a3db', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 10, 50, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-06da-4fe0-bab9-c4d59c2f306a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 12, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-0d66-4735-b678-d1a863d701dd', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 9.5, 63.333333333333, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-104c-40e0-8e4a-fb34843366d0', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 18.5, 61.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-1371-4e29-a22f-300f54d876b3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 15, 100, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-1a27-47d9-888d-77ad9dfd065b', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 12, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-1cf2-4c90-b873-68a705d72438', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 14, 70, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-1fbf-4072-b244-aa52d2dc7628', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 10.5, 70, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-2248-46b0-a1ee-b5da5e5b8284', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 23, 76.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-248c-481f-8143-aff22c12a2ea', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 15, 100, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-2ab1-4370-8b82-0cbd155d133f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 11, 55, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-2d4b-4cc1-a5c9-1352d66dc23a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 15, 75, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-2fc7-41ed-8d3d-ddc8deeed648', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 11.5, 76.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-323c-45b7-bd57-e55ef38ee2be', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 20, 66.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-3524-4234-903f-98dc9f4d8a2f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 9, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-3cd6-46ce-ad29-7b16c801ec4d', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 16, 80, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-3f78-47b7-b467-4dd2cc31863d', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-251c-41e3-a309-ba6dca5a31b1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 15, 75, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-4249-47c2-9105-289240e4e739', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-319d-46aa-9ead-798ade98b95b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 10.5, 70, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-4491-4154-acd0-43ebf0ab2955', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 22, 73.333333333333, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-4732-4677-838b-c4303972f256', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3f41-4c67-8e04-a1d595a14a7d', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 15, 100, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-6c5a-44fa-9aca-b8f3531a9fb4', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 14.5, 72.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-6f97-48ff-a0ca-e6a6f3f590b3', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 12.5, 50, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-71e2-4e7e-91e2-f80af3978e0f', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 12, 48, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-74c7-47de-906f-51b5c1a940df', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 26, 86.666666666667, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-7a27-4bf5-9aee-d559c10313e4', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 13, 65, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-7caf-4ae6-83b2-13e0f6002f74', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 14, 56, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-7fd8-4f47-9219-2490d6faf562', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 15, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-82f3-44e8-a82b-cabd2597bbff', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 28, 93.333333333333, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-89cb-4c51-b876-f07fb73345bd', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 17, 85, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-8c71-4521-be96-0f746c11ed8b', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 15.5, 62, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-8f29-4456-b5b9-82c5d09ac56b', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 15, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-9149-40d2-8d9d-e62265e4fa60', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 28, 93.333333333333, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-96c0-4d9d-b394-f45e55e672f7', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 16, 80, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-98e2-4b6c-9f14-b2900a4dbd9d', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 15, 60, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-9b74-4df1-83b4-c536d1795ef0', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 11.5, 46, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-9da6-46d9-a3e0-91dc06faf720', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 27, 90, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-a343-410f-854e-d39f520b2a66', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 14.5, 72.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-a5b0-439a-8328-2c34ea0a25cc', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 12.5, 50, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-a8b6-4d52-8164-411fe3a95a70', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 13, 52, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-ab3b-4c2b-9588-55e5c90278ab', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 30, 100, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-b26f-4d73-ac2c-0842c79395a4', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 17, 85, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-b542-4243-b56b-b77a56a95fbe', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 18, 72, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-b7e5-465b-994b-a8a7fbb56694', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 12.5, 50, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-ba4a-4ea1-9c0e-87245b5d2e76', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 25, 83.333333333333, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-c08a-4ecb-ac90-f59c97d27027', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 16.5, 82.5, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-c31c-4171-a63c-568c5cd43173', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 16.5, 66, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-c523-4775-8c5b-4b55582b3e13', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 14, 56, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-c718-4d42-88a4-832a83f153fe', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 30, 100, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-cc95-4cd1-b8a9-733cd3a967e9', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 16, 80, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-cf27-4323-b459-290c9152a641', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 15, 60, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-d1ab-4c9a-bc1c-da3f7c69e36c', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 14, 56, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-d49f-453d-9dd6-53e2ab2a7336', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 30, 100, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-dbdc-4f96-bcd8-b6a6999b2f75', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 14, 70, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-df06-4c26-8549-bebff38a72fc', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 14, 56, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-e186-4f56-a24a-7a1e40f5f136', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 13, 52, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-e459-4431-bf54-86c685097e9b', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 27, 90, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-ea68-4004-a195-bba75f9f7299', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 15.5, 77.5, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-ec87-484e-a2b7-d79cf0f54ead', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 17, 68, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-ee8a-4ab4-9909-0b8ef6c9cf8e', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 16, 64, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-f108-4973-b499-d721a11bdfeb', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 25, 83.333333333333, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-f69a-4200-a072-dcb1fd074bf3', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 12, 60, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-f90d-45bd-ab63-2a870c37616a', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 13, 52, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-fc47-4088-991d-5d13d8359a89', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 18, 72, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd69-ff40-4177-97c7-29fa1925f35e', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 29, 96.666666666667, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-05f6-4b5e-b680-1b9b41c95a84', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 17, 85, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-085a-4e8b-bda9-2892df7060ed', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 15.5, 62, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-0b0f-4120-9f2a-8d961de47666', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 15, 60, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-0d53-4a27-9ad9-d2099efb286e', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 28, 93.333333333333, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-1323-40ad-9fc6-77366765f53a', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 16, 80, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-1544-404d-9bb0-4f0be27cd53d', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 15, 60, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-17ef-4f46-995b-543aa96d92f5', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 18, 72, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-1a1d-48aa-aa3b-32de6c8b38c9', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 27, 90, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-203b-4b4a-aa22-b09ab79e05d6', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 14.5, 72.5, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-23d2-4be7-adc4-4339161bda37', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 20, 80, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-26eb-4ba6-8d20-fef92b6ba6f0', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 18, 72, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-2ef1-4dbb-820b-691eed60d063', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 30, 100, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-35ed-465b-b4fe-675fb8ebf353', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-4f31-4316-b55d-7a439cd3bb10', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 17, 85, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-38c1-4420-8454-be03dc66ac1c', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5594-41a5-8f83-d975509c84f2', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 18, 72, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-3b7e-4aeb-b285-4ecc78151d0a', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 12.5, 50, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-3e34-4189-95c2-34182296be45', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd69-6282-4055-9128-a1599f9d0af1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 25, 83.333333333333, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-65ec-477a-a5a4-9b2d49d15457', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 17, 85, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-680f-4304-a6fb-f910f386a82e', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 23, 92, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-6a66-4439-976d-b2d5021eaee7', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 15, 60, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-6d69-4125-b56a-c529bc41ef1f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 13, 43.333333333333, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-74ba-48b9-8325-00da95787c73', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 17, 85, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-7759-48fd-8ccb-7fe336f94f36', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 21, 84, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-7a5e-4ac7-a931-68477289eaea', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 15, 60, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-7cad-4134-89f9-8959ba44509e', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 16, 53.333333333333, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-8267-4468-80b4-5630da44b26f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 19, 95, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-8488-4453-b250-b6e4d3f28b02', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 18, 72, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-872c-4df2-856f-cc8ee710ec74', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 25, 100, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-8953-4aa1-a33a-bdf4b903cf4a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 18, 60, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-8eae-4344-be7a-f839e63d8dd3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 16, 80, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-90fb-4a9d-9e78-09cc7f6b0869', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 19, 76, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-93a8-44eb-9aab-467c80fbded3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 17, 68, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-9655-4dfc-84bb-6c7c8184349d', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 20, 66.666666666667, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-9d7c-47ce-9a42-f42d5ebdc3a8', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 12, 60, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-a098-49db-a6e4-9c144db19f3a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 25, 100, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-a2ee-4a33-a661-4fff003e7969', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 22, 88, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-a561-47dc-ae41-b25689009f2f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 15, 50, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-aae5-48ec-b20a-088a684cb676', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 14, 70, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-ad6f-4d23-9186-e3a9b1ab4272', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 19, 76, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-af9a-4ae6-809b-22436cd9d9e5', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 25, 100, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-b1a2-41ab-8712-50e582354fc6', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 12, 40, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-b73b-43c3-b686-3fff3ef4a84b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 17, 85, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-b9f8-4c90-998f-274e02c0678e', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 19, 76, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-bc68-475f-892e-5d568cf921b5', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 23, 92, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-bfcd-4c3b-a9ed-13e28182a8ed', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 16, 53.333333333333, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-c725-4a75-8c1c-5ef82e57152a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 18, 90, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-c9a2-4378-81bb-42f41eb4b844', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 16, 64, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-cc16-4d3f-92b4-c7b55eb3db4e', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 15, 60, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-ce90-43a0-8165-1deb1e96b15d', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 17, 56.666666666667, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-d445-454e-8628-4074623ca368', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 17, 85, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-d673-4378-b254-7e11c4efebee', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 20, 80, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-d889-465d-b426-c5dd734290f6', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 18, 72, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-db36-4fb1-a364-d027a1628285', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 15, 50, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-e0dc-47da-93f1-1d1a3327d84f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 19, 95, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-e316-4e4b-9801-e73fafddc7bd', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 25, 100, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-e51f-4729-846b-a41b0f9fa09a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 22, 88, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-e7e4-413a-8753-c62eebb62a70', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 16, 53.333333333333, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-ef0c-4f2f-bdb6-478d5bb6808e', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 17, 85, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-f23d-44f3-914c-cb9fb26b949e', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 19, 76, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-f5d8-4691-b5e6-1a98459954de', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 19, 76, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-f82c-47ce-b1a2-421257604193', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 20, 66.666666666667, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6a-fe20-44a4-afe3-23fa283a5b82', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 15, 75, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-00c5-4352-b633-126e7ac16c29', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 22, 88, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-0350-41a3-a63f-50816e7ef3f2', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 21, 84, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-0682-470b-a213-4b7266573691', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 17, 56.666666666667, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-0e22-4697-b181-6ea52abb641a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 19, 95, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-1129-421f-88b7-1053df2a4ae7', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 16, 64, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-13ba-4d38-8508-2a7f76ed68d1', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 20, 80, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-1641-44fb-a29c-7de11595a856', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 15, 50, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-1c2a-4ef7-9757-5d1915b1d3e1', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 18, 90, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-1e70-4d6e-923b-f81174dadbed', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 15, 60, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-208f-4d04-b96d-4b98cd06eee3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 23, 92, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-236f-4e94-ae3d-1d048f3c07c3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 12, 40, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-293c-4e91-bda6-aa5df76eb802', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 12, 60, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-2b63-472d-818b-8fa5fce666a3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-07f4-48c2-bec9-a058447d2011', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 23, 92, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-2dc6-4c8a-860a-5abf0ade3be8', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb5c-145a-4353-87e9-431f782aa4f9', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 17, 68, '2022-02-19 12:11:29', '2022-02-19 12:11:29', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a2fd6b-30c6-4544-a448-6e25980d8dc3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-5af0-4c11-896b-b1470cebbd56', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 13, 43.333333333333, '2022-02-19 12:11:29', '2022-02-19 12:11:29', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88577-fc87-4b1e-a64c-a1405bb5e917', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 14, 70, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88577-ff79-4696-9807-2bf1ea2fbce9', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 15, 75, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-01d0-49f5-8b8b-3fbc06a8a572', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 24, 80, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-0486-4067-8b8b-daf6a2118c67', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 25, 83.333333333333, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-13ab-43d7-8eea-ac51c91f226d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 10, 50, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-1673-4c77-9579-68626b830273', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 10, 50, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-18ec-40d5-a322-a183a1d5cbe4', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 23, 76.666666666667, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-1b45-4e3a-86f4-69ac8862a32f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 17, 56.666666666667, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-2163-41e1-b8b6-8db68a8493de', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 14, 70, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-2436-4e47-8973-55c8b6ced79d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 16, 80, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-2665-420c-a986-6e93135e23ec', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 13, 43.333333333333, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-285d-482f-9e7d-f03f437f7c6a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 22, 73.333333333333, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-2d95-4f2b-affa-47a87ff65a59', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 16, 80, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-2faa-4aea-a66c-3e1a5599847f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 15, 75, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-3225-4a8f-959e-228446cdf1eb', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 15, 50, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-341b-48c7-a99a-976ffb8fbd16', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 12, 40, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-397a-463b-9a5b-9a8ccabbc0f9', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 10, 50, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-3bb0-4f91-a206-11c9852ebde4', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 12, 60, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-3e7b-4274-a89d-1b858b912ce7', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 14, 46.666666666667, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-40a8-4d85-8157-940bc8ac5e94', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 17, 56.666666666667, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-45f2-4723-87da-9820937c08e8', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 8, 40, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-47f9-4911-a4f2-bf47379b6ba6', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 11, 55, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-4a64-4a8b-9139-777cb7134a03', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 20, 66.666666666667, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-4c8b-409a-b749-182758da6559', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 12, 40, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-5203-448c-bb84-893accdaf25f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 13, 65, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-5428-430d-b433-0e31cf6b264d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 9, 45, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-5622-49b9-9025-be05ab5d2610', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 13, 43.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-58d4-45e5-a537-a928d534d5ba', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 15, 50, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-5e22-40b7-babb-c58ae1322209', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 8, 40, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-603b-4c1e-8a71-08b9e439754e', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 16, 80, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-6241-42c5-964c-1fbe0952d07e', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 14, 46.666666666667, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-64b1-4abe-9ad4-60135d510319', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 13, 43.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-69a1-4916-bd80-527044daa666', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 14, 70, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-6c40-45b4-92c3-9cc620abb9d4', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 14, 70, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-6e49-4be2-a589-2ac37fb39299', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 18, 60, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-703d-45a2-8ade-45b8f6276d94', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 12, 40, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-75c3-4e00-91ff-c8ff5e7aa10a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 9, 45, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-7823-461c-b7d4-8d3af4587770', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 10, 50, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-7a45-4c4c-9959-ab181e01bfbf', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 13, 43.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-7c37-43f0-a333-abf49c39ba25', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 21, 70, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-81c4-418f-82f5-2b12a15e5eb1', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 11, 55, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-83ba-4a0d-a43b-61d08b6eec2e', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 16, 80, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-8657-4446-9024-a66fd900db45', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 13, 43.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-8853-41c1-b732-62424b969321', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 19, 63.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-8db6-4c67-89d9-0ae86c21957e', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 16, 80, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-8fb3-4f10-afb8-4ffa992c7acc', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 14, 70, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-9211-4e19-abe6-bd321e38f414', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 16, 53.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-9425-435d-b8dc-a4ebb1c5744a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 15, 50, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-9987-44c7-9998-f28e49befc61', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 8, 40, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-9b83-4448-867a-d6672a19c8d3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 14, 70, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-9d7c-4572-a584-f7cee1d6a5bd', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 18, 60, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-a017-471f-94a2-9ec995eae4bd', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 13, 43.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-a548-46f2-a440-28d44b49f6c4', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 10, 50, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-a78f-4168-bfdf-b42f38aec5a6', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 12, 60, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-a989-45ee-8d68-be6e3c6a8a26', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 23, 76.666666666667, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-abf8-46f0-b573-a710bcc96a5f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 18, 60, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-b0f8-4189-920a-aeb59fd3cbd4', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 13, 65, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-b377-4972-8712-e57a2ccbbbb3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 13, 65, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-b575-4603-94b6-640db0530b5c', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 17, 56.666666666667, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-b788-4047-96ce-e66641bc0bcd', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 12, 40, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-bcfe-492a-98b6-8fabd43869a2', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 9, 45, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-bf13-4b74-a98d-ac99f3421c48', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 14, 70, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-c157-4bb1-8d43-e0fc0c11e279', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 23, 76.666666666667, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-c363-4a4c-94f9-33a9a052a801', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 16, 53.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-c8a4-4c55-b6bf-8e0d38fe961b', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 15, 75, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-cb3a-489f-8142-9d1a1f626b85', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 15, 75, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-cdcf-4691-b3e2-cf8d44ead45d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 14, 46.666666666667, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-cfda-4be4-b442-19cf98bcbb3a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 18, 60, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-d553-448d-8fe2-9e9e896b816b', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 9, 45, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-d770-4cc0-b50b-4b75eee055d5', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 13, 65, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-d9de-44ed-a53f-fb6a9acd1350', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 12, 40, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-dcaf-4199-905b-656926fbb223', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 15, 50, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-e215-4976-bee7-71bde5dbbfe6', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 8, 40, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-e418-47ea-8198-50ec0e0fbf0f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 13, 65, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-e63a-4a2a-8688-a895f9343dbd', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 16, 53.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-e8a1-4b41-8d8f-34a151477d62', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 14, 46.666666666667, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-ee0b-456e-9539-49685536ce27', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-ee00-475a-b051-0543370ffd97', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 15, 75, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-f00d-45d2-a087-a906c7370cba', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 15, 75, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-f1fc-4bf1-9666-581f28650efc', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-d571-4551-92ef-0e2ecf3d40cd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 21, 70, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88578-f485-4a62-ae48-5c46d697edc6', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88577-e4da-4935-98f8-87f9fcb0f3bd', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 17, 56.666666666667, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-2976-47aa-ac15-2ee0e0250a3a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 10, 40, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-2b72-49a7-82a8-eb548177aaf6', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 22, 88, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-2d6f-49d3-828e-3eaceb5faab0', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 17, 85, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-2fde-4ebb-ae11-c030f33532ed', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 21, 70, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-350c-48da-a37d-8e213db9bcd5', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 9, 36, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-3720-4dbf-ae8f-8bfdbc5ac645', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 12, 48, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-390f-45c8-ba42-ac7ef351c976', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 17, 85, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-3ba7-472a-abc9-3623037a2608', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 25, 83.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-4083-478e-99e9-f934abdfdac2', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 12, 48, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-431e-482c-9e15-8ea827194e4e', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 16, 64, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-452f-4a77-9096-076bd2e148bb', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 9, 45, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-473a-4c8e-85ba-12705e37b2d7', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 21, 70, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-4ce3-45a8-bb02-bf23d1e3ead5', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 19, 76, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-4f80-49ab-8225-8ac327308b52', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 20, 80, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-5182-4c89-bcd3-b0b975b437f3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 15, 75, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-539a-444d-863f-bbf70aab24a0', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 24, 80, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-58f6-48db-b9ff-79404f2f9b27', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 19, 76, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-5af2-45e8-9d9b-6623a3b4ba78', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 17, 68, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-5d80-4acd-aef7-b6f3fad70b11', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 11, 55, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-5fa3-4b99-944e-5969373106de', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 13, 43.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-6511-4054-9d07-5ee5bc7020ba', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 18, 72, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-6722-414e-b521-9b8b46c1c1fc', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 21, 84, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-69a9-443b-bf93-18d2fd613487', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 13, 65, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-6bbf-498f-8c84-5f022a7e802f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 20, 66.666666666667, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-7112-44eb-8dda-1f692fb1fcce', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 15, 60, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-731b-4864-8dbd-2b2b846adb6f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 8, 32, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-750e-4b13-a6b3-be2edcc6d810', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 9, 45, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-7792-422f-94fc-ff827c61a077', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 17, 56.666666666667, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-7d1b-4e01-9327-e83f180a2456', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 12, 48, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-7f48-4e4a-b965-33d7fb991a1f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 9, 36, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-813d-4eba-8911-5f612d1375a1', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 8, 40, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-83da-485a-87a4-d8c9dfc33f82', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 21, 70, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-88a3-4a67-a436-376192111263', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 13, 52, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-8b37-4d6d-8b14-97aae2826567', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 21, 84, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-8d2f-458a-8717-2106bcc49504', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 12, 60, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-8f1b-492d-b671-da57da763693', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 8, 26.666666666667, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-9493-455e-8167-6d148840a52e', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 8, 32, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-971c-4f88-ba36-aceb6e3f2181', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 10, 40, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-9926-41fc-b195-e27e4bb5534e', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 16, 80, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-9b18-4566-8499-897cd82c0c3b', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 10, 33.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-a068-4a21-b7c7-c0e0ee4b787c', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 9, 36, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-a25f-45b7-9328-9e9712a0864e', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 16, 64, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-a4f2-42d5-97c8-30376b63e868', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 9, 45, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-a6ed-474e-8983-e25af58dd23b', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 16, 53.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-ac38-4e6f-9e28-4658b012e7d4', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 11, 44, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-ae35-4632-9afa-9d5243b104c6', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 15, 60, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-b09f-4e00-82f4-d24646751916', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 16, 80, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-b2c0-4971-8775-b5f6a3af1f3c', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 20, 66.666666666667, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-b838-4b04-afbb-c1e7d9ecfdfc', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 18, 72, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-ba2e-4620-a332-0210886ff25f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 12, 48, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-bc39-4a24-a09a-fa1a1f1929a5', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 15, 75, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-bee1-44b1-a1e5-c041129c03be', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 8, 26.666666666667, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-c41f-4e0f-be8a-8436535fc93d', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 10, 40, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-c636-46b5-974a-592f786a655d', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 18, 72, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-c829-47a8-94d7-8618bb6a3b30', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 16, 80, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-cada-40ae-9791-3c72ab4398f3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 23, 76.666666666667, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-d048-41a9-920d-a9a070aacbea', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 11, 44, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-d2dc-46e9-a973-bbb0bc3c25a7', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 11, 44, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-d4e3-4239-95af-7730bd218661', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 9, 45, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-d71b-4b2a-b3e0-33a28ec06ee3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 16, 53.333333333333, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-dc82-4de9-bd09-67ddd8f5c73f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 20, 80, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-df09-4a5c-95ec-529d005d182b', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 16, 64, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-e118-4782-80bc-edfd0a046c93', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 17, 85, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-e317-4bc0-8dd8-53e8e99c2596', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 21, 70, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-e87c-4003-acf4-d602a5fe0950', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 20, 80, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-eac9-44ca-9f7e-15ec4689210c', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 13, 52, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-ed04-41c0-818d-1322a754b911', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 17, 85, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-ef0f-45e1-9e6f-552abd2c857d', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 13, 43.333333333333, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-f478-4cd0-98b7-c3f4d0e1f1b3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 15, 60, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-f67c-44f2-adb0-8002cd83e325', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 8, 32, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-f903-48b2-84c5-c026f491a8d5', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 9, 45, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a88579-fb24-43b4-9929-fa271bc98783', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 22, 73.333333333333, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-00a5-4822-aff2-b26c8d5c6ebd', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 21, 84, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-02a7-4b20-9cc8-ab473886c436', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 10, 40, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-04f2-4a45-a3e0-26511f64c2e5', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 13, 65, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-0745-4a6e-af6e-a1fd9911cec7', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 12, 40, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-0cd5-4607-a323-5aee3cedc148', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-4d2a-442d-80c3-1f8c951a783b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 15, 60, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-0ee9-4cfe-b15c-628c731849a1', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 12, 48, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-10e8-4379-bef6-4ef19853fd4c', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88579-0f7c-46dd-87ef-b1b133aaf96c', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 15, 75, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-1384-42c2-9ede-b285bc3863e2', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd68-3892-48f2-8462-9a3315bf50ba', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 12, 40, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-4a95-434f-aeb7-4ed92c1baca4', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 18, 72, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-4cfd-4096-ae7b-e249c6be499c', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 21, 70, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-4f14-4c27-a807-fe252d4aac5e', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 17, 85, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-516f-4dfe-bcae-a768e6412a33', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 22, 88, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-56dd-429d-a5cc-2037d09f7457', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 20, 80, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-58d8-4a89-b77d-9f21c18741ee', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 23, 76.666666666667, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-5b4b-401c-8cf1-7957cc029119', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 17, 85, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-5d61-4dd8-8718-a5c69bceb86d', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 13, 52, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-629c-4f7a-8692-06cb98943198', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 13, 52, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-64ce-4275-bcd4-620645ae4b0c', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 13, 43.333333333333, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-675e-477f-bced-597fd93eb1f5', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 12, 60, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-6973-40ef-bc23-1a2750b92ad2', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 17, 68, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-6ec5-4519-ad5c-d7005e77599e', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 20, 80, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-70ca-414a-8e28-6803d5a76515', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 12, 40, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-72ba-40bd-976d-1525b0626ff5', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 17, 85, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-7533-48dc-aac5-5b0d88d2a00b', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 12, 48, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-7a7d-44b3-ac30-8217322e28ac', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 20, 80, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-7c95-416f-94c4-9d573e5bd121', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 25, 83.333333333333, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-7e87-4740-aa44-4e7d8308a5e1', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 15, 75, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-80e2-4738-bc41-3195b2dc2278', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 14, 56, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-85e3-4602-b19f-6dd762d47b65', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 19, 76, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-888a-4940-ae75-f87078f56478', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 24, 80, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-8a8f-4acf-8a71-5cff9be72f8f', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 18, 90, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-8c85-48c6-a2f2-1f63284a0e85', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 22, 88, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-92fd-49ff-8e29-7ff22c2fc66f', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 21, 84, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-959c-4766-b981-40f846f065dc', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 18, 60, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-9794-4bcc-9d65-f3593fe537e7', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 16, 80, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-9981-4237-8736-87a7c19543cd', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 22, 88, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-9ecc-4861-ba92-3c050effb672', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 21, 84, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-a12f-4ad7-8130-cbd920d6ed36', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 21, 70, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-a35d-4186-9afd-aa8b263c718b', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 14, 70, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-a550-4134-9ad7-cc2e6e153d3f', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 23, 92, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-aa7b-414e-983c-210acde5f778', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 13, 52, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-ac75-4a5f-8e14-49f44708ce58', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 20, 66.666666666667, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-af12-4775-84f3-c39591bc4a15', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 12, 60, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-b10c-4ae6-b759-8bf293e14d70', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 20, 80, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-b64f-4706-b11c-9cd8a5417fb2', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 20, 80, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-b84d-4f85-b57a-7a1426a0a13d', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 17, 56.666666666667, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-ba4f-44d9-9aea-63baae01d436', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 13, 65, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-bcdb-4f23-a87a-0762d6f96583', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 18, 72, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-c229-4449-9543-209f8f52972f', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 18, 72, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-c444-4065-9e8e-6ae5f903bbe5', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 23, 76.666666666667, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-c654-4849-bfda-14df20134b07', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 12, 60, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-c8dd-4106-9af6-0553b23eef66', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 18, 72, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-cdd6-4cda-9faf-0f41fdb4cd53', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 19, 76, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-d090-4bd9-a77a-912a4c97ea04', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 24, 80, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-d2b6-4286-82f9-b9a8e8f58988', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 18, 90, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-d4f2-451e-976a-acc0e99e49d5', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 18, 72, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-da8d-40c6-965d-06910f641361', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 15, 60, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-dd1e-4bd4-923b-cd6622b68f52', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 22, 73.333333333333, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-df1c-4025-aacd-75c7fe860dce', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 12, 60, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-e10d-4c51-8cae-c009494915bc', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 20, 80, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-e685-44d2-bded-1d79dc57ab39', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 21, 84, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-e8fd-42e5-b853-b8b96f9f9838', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 23, 76.666666666667, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-eb1e-4b16-9da3-5a83eda79adf', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 17, 85, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-ed10-4d3b-881e-afe5a0f69de7', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 15, 60, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-f29f-4e61-a2ff-b8ef0cf7f8bb', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 19, 76, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-f499-428e-9764-6c1c1ca5046b', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 22, 73.333333333333, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-f71e-4748-ad9c-91ae146c0e5d', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 17, 85, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-f91f-4f22-995a-0c1445785f2a', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 12, 48, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857a-febf-4988-9faf-7aba5a7f03da', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 12, 48, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-00bf-4f3d-ace8-c5a04ef4bc97', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 23, 76.666666666667, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-0335-4cd0-bf97-95b215db15e3', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 17, 85, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-0581-43e9-b5b4-7d7b9007d5c3', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 13, 52, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-0ae7-4024-b834-0f6eeefdac0e', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 13, 52, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-0ce7-479e-ac11-e9efd1f53e4e', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 12, 40, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-0ede-4618-a968-a1b93a98dea6', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 13, 65, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-1160-4a86-8587-c704243d0698', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 20, 80, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-16a3-4e50-84c2-f737d8be4a03', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 19, 76, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-194d-471b-9df5-c56d64651aa5', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 23, 76.666666666667, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-1b51-428a-a85d-ab090098ce0b', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 18, 90, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-1dd0-427e-a027-1243e4690d59', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 21, 84, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-229f-4e59-878a-8a67d0794421', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 12, 48, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-2510-4f07-a096-c5eeb428f306', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 20, 66.666666666667, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-2704-42ed-ad92-5d5cd1a78a3d', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 12, 60, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-28f9-4413-9614-b8ef8c24fa35', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 22, 88, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-2e52-479a-90a5-5c6174763ed1', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-19d0-4425-9644-5f3146dfd77f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 21, 84, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-30e6-4525-a200-e8556caef441', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-268d-434e-9be8-056ab4146770', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 22, 73.333333333333, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-32f0-4940-8c11-f31cea4699f4', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-316c-428f-97c7-94a76f436954', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 12, 60, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-34ea-4f4d-a648-d07d2551aaf1', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a8857a-3e59-4957-b598-989f62f3489d', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 18, 72, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-6f96-4bfe-99dc-bb458d314e54', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 22, 73.333333333333, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-7210-4f9d-9205-70221fdfc8b7', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 17, 68, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-7448-4e0c-8fa5-b177f7674162', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 14, 70, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-7646-4685-8554-193c7b07fc52', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 16, 64, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-7bb1-45c0-bff2-2d63c25e9562', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 19, 63.333333333333, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-7da9-4db0-a32a-9aae1aebe084', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 17, 68, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-8027-46c4-a16c-6d2e03bea5df', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 14, 70, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-822e-457b-be3d-a207fe5757cc', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 14, 56, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-878a-418c-a454-491ec5c8b782', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 13, 43.333333333333, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-898d-46ee-a829-773ea3b9b723', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 20, 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-8c0a-4acd-ad0b-985ea1b396d9', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 13, 65, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-8e25-4413-8842-e60a812b61fa', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 20, 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-93a5-47fb-a8dd-1418ac845398', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 17, 56.666666666667, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-95ac-433e-b7fd-3ed65aabe2a3', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 19, 76, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-979e-4734-8908-f184401af72c', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 15, 75, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-9a1e-4cf0-9d84-03c1465e016b', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 19, 76, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-9f78-4cf4-9415-ebff77b4b636', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 13, 43.333333333333, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-a194-444f-b6cb-e811db6956e8', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 21, 84, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-a380-4c6e-9520-cf267848142d', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 16, 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-a5ed-452d-b6a3-88e8bf05cf61', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 16, 64, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-aae5-4777-9213-3d58dac8d9ba', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 22, 73.333333333333, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-ad7b-4cfa-9448-502f24b07c87', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 16, 64, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-af79-4cf2-8682-3672af956e20', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 14, 70, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-b16c-4915-bda9-e4bb0fbb5f2e', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 16, 64, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-b6d0-4853-9a8b-d35431953707', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 20, 66.666666666667, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-b95b-4ecf-b17b-315feb982578', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 20, 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-bb73-4953-b1f4-2ee1f5e26e51', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 15, 75, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-bd70-4634-9e12-b559b1b8a582', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 14, 56, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-c2fc-45a9-8841-c0c6b411971e', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 24, 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-c4fb-4ede-aafe-16e2976ab991', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 20, 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-c7a2-4878-9717-4c3f463e1fad', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 14, 70, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-c9a5-4185-8aab-c18ddb1a7929', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 19, 76, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-cef8-48b3-bc1f-6a7bdc15204a', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 23, 76.666666666667, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-d105-40e7-96f3-bca3358a364b', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 19, 76, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-d37b-47a1-9f2a-499099099c29', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 12, 60, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-d597-4a67-8070-e084b1b74919', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 19, 76, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-db34-4ff7-8044-bae6d6d0fbb1', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 17, 56.666666666667, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-dd37-4444-b99f-d92341b286eb', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 14, 56, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-df35-4a8b-91d3-bf8304946c9d', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 18, 90, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-e1bf-4d6c-9c32-9ee95674c246', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 13, 52, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-e6f7-4cd8-89d7-6dc37cfde5e4', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 19, 63.333333333333, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-e912-453e-aad0-2850d4e1f7bd', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 19, 76, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-eb1d-488e-a677-bf85cf49dec3', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 12, 60, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-ed93-49d0-b55c-51a311fc2af5', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 19, 76, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-f2b4-4ade-b555-c8cfc238cb55', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 13, 43.333333333333, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-f534-4d28-afc8-289acdc20a1c', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 15, 60, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-f74f-42b0-86f5-389ebdf064f5', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 14, 70, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-f947-437d-b2d5-6beab2581c7a', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 21, 84, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857b-fea8-4c26-82de-0e1423b785f4', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 20, 66.666666666667, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-0120-4287-875d-03248cb2e881', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 14, 56, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-032f-407b-8837-f67ea95d650c', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 13, 65, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-0525-40b8-8730-427ae59f7b86', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 19, 76, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-0ac2-4d44-b5ab-2c24e6f7506c', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 14, 46.666666666667, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-0cc2-4939-b053-38c5a4696011', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 17, 68, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-0f4c-4a7b-a510-02db3c6d9bfc', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 15, 75, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-114d-4e53-85a8-5e589930771d', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 16, 64, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-16c4-45c0-bf3d-4f7b984dfaee', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 13, 43.333333333333, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-18bd-4b2c-86a8-b34090f9c8eb', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 20, 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-1b19-48a0-8794-6c7ffa7fc820', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 12, 60, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-1d9d-4c67-8dae-298224694a66', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 18, 72, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-2397-4205-a2c4-1b4fb7174f32', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 13, 43.333333333333, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-2592-4a2d-9c08-240d42eef4f0', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 15, 60, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-27ec-4ab4-9ea7-7268591f2e0d', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 13, 65, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-2a04-4caf-a8cb-ddee172ceeaa', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 16, 64, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-2f48-4815-b78e-466af842075a', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 21, 70, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-3142-4fc7-b9d7-0ec1616fa30d', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 15, 60, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-3337-4ef8-886e-9233f1ff6583', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 18, 90, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-35ad-415b-b5ff-007e4a790ed3', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 16, 64, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-3a92-40ec-94aa-b6d3d3cc987b', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 12, 40, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-3d08-4530-ad58-d39b5823f7c3', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 13, 52, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-3f09-46aa-8b47-11486ceed592', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 18, 90, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-4107-45b2-8df4-e71593a7e2a1', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 12, 48, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-4667-47ab-997b-793af81545fa', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 15, 50, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-48f4-4229-852d-794f77dcdd4f', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 18, 72, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-4b02-4fb9-bcfd-9dff6c25bfe3', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 15, 75, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-4cf5-4c99-8d35-c27468e9fb8e', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 18, 72, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-5276-4a7d-ae22-51995f3f0e62', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-3c27-4bbc-bd51-188b6073353f', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 15, 50, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-5498-408d-a8d1-192e23a80b55', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-46dc-4c0b-9841-a0301b3bab65', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 21, 84, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-574e-404a-aa1d-34afbe8a506c', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-53cf-4859-9cc1-2e352d646724', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 18, 90, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-5a28-4825-aa3b-47bce5a1e410', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a8857b-6130-4e25-b8ec-aba6379e8f55', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 15, 60, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-ac10-48a2-94ec-a2c434b21fa2', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 14, 70, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-adea-4d49-9dae-e6125cfe6dea', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 15, 75, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-afe9-4050-ad81-a81c6e8df623', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 16, 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-b261-4f92-80c0-e7906eefcbad', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 16, 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-b45f-4a79-8d4a-febda5e26a02', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 17, 85, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-b9d7-4c5b-bb30-4ca377c943d8', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 13, 65, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-bbd9-4024-b5b4-1003fd251a39', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 12, 60, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-be6c-4a8f-aeb1-f472c08d52df', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 17, 85, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-c075-4892-8752-5fb656fe9193', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 12, 60, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-c272-4f5c-a79e-ab9f350d5e1c', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 15, 75, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-c7c0-4aca-83f9-ce6c679f2159', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 17, 85, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-c9bc-4843-b956-b8a78cda2dfb', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 15, 75, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-cc24-479c-a787-271cecb1d3cf', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 16, 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-ce26-420e-9791-c55b3cd38d8b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 16, 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-d02d-4b2c-9e9e-434835a8d23c', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 16, 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-d56c-426d-a23b-e2c56c823716', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 18, 90, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-d7e2-47e0-b9d9-6891342b90ce', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 15, 75, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-d9f4-4474-9e13-522f92d13193', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 16, 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-dbe9-4bf0-8f5e-7f6f324616d4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 13, 65, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-de54-4fff-97ae-6f6cc0ee9ec0', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 15, 75, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-e388-4826-a5f3-ce8373145840', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 14, 70, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-e697-403d-a4f8-de0273b9046a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 13, 65, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-e8ac-4cfe-939f-352fba3e4c0f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 16, 80, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-eb12-48fd-bcd8-64282146c4e4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 17, 85, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-ed2f-46d2-99f0-de429c48da75', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 17, 85, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-f327-4052-8194-8d4859fd5012', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-f524-4596-a0c2-4aa4d234efa0', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 18, 90, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-f721-4df8-ab1a-eeaa6f43957c', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 15, 75, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-f99c-46df-b6ff-2b637c69817a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 12, 60, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857c-fbad-418a-b5e3-37f6c3aadc4f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 15, 75, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-010f-4289-83f7-c5ef660e5445', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 18, 90, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-03d0-403b-92f2-b8eebe41ccc7', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 17, 85, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-0663-4977-a50c-fd52deaff9aa', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 16, 80, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-086a-4d95-87ff-cf79d68a94de', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-0a60-49eb-9af7-1be3c85c87e7', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-0fcc-4e94-a5b2-73b39d640850', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-1233-4ad0-b3a1-0d79d02e35d3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 18, 90, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-1478-48c2-a2b6-224eb64369cb', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-166d-40db-9951-18abaf67d953', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 17, 85, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-1900-4895-bbe3-76f02d53b755', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 18, 90, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-1df2-455c-b968-2957fc18ab0a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-2071-43f1-a647-c252233780f3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 15, 75, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-2273-47ee-9b79-5077a7572088', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-246b-4ee9-8db3-7627f20a810f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 12, 60, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-271c-4f8d-906b-85f4e0b22795', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 12, 60, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-2c53-4b79-98a9-83b960fe43ba', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 17, 85, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-2e6b-437c-98a4-90d512d929c0', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-3064-42d5-a6d2-ad9e663aff8c', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 12, 60, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-32eb-4235-83d9-5ba8eacf38e4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-350a-4346-af1a-3dac3f90c814', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 16, 80, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-3a7f-413a-acb1-9c80d2f79189', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 18, 90, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-3c89-4663-b435-6ecb0d2e2c61', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-3e8d-4d74-a421-7b3dd6887cca', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 15, 75, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-411f-4c34-8a6b-d9dbcc3cf4ab', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-431e-44dd-8954-0de2f96e495b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 18, 90, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-4895-47c0-98e7-9a5172d2a4c4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-4ab8-4821-9e7f-3c6bcd10f0bc', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-4d4a-4fd7-8f2e-37314ed937f0', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-4f5b-46d7-b644-9e443b847d71', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-5150-4e72-98a1-3af3117f405c', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-56de-48cf-9efd-3c3617ddaf29', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 12, 60, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-59ce-420d-80c3-234fc75c7cca', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 15, 75, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-5c34-4334-aae6-c8789007dcc2', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 17, 85, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-5ef7-4142-9ed5-6604594cebd9', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 15, 75, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-61ab-4112-89a1-5179ba00ae5b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 17, 85, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-6833-44ca-a738-9439f7b1979e', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-6af3-465b-9f1d-ad74ba4c758b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-6e73-4a0a-bfec-fd7c44280cf3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-714d-4a1e-84c5-4ad5b59d133a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 12, 60, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-740d-406e-9afd-36f3e85cd94b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 17, 85, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-7afa-4dbc-8ef3-a637047a9201', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 18, 90, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-7d06-4381-9489-0e148ebadd39', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 17, 85, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-7efe-43db-88f8-fb87974d5826', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-816d-45fc-88c3-ba01f9779e06', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-8393-4014-bcfd-b1d0632b4755', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-88de-43b4-94c9-f1f5ff542426', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-8af3-4220-8ab2-7d2548ff1f79', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-8cee-4d81-bd9f-362f07f7175b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 17, 85, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-8f7f-4e26-802e-c194360da76a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 16, 80, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-918e-4030-954e-645bccecb534', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 15, 75, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-96f2-4036-84d6-608baa79048d', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 15, 75, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-98e6-49ed-9e0f-10553ac50f0e', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-9b7c-4959-a2c4-3ddac2209c1f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-9d8f-4969-9177-d41f7c196f46', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-9f7a-4326-85e0-00b273feba49', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 17, 85, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-a4e2-440d-b433-0eb56b01aecd', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 12, 60, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-a6d3-433b-b3d8-f890121853e4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-a997-4f32-995b-bffb1ec48d51', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-ac01-461d-8007-4233dc58bdda', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 15, 75, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-ae4e-4d29-8370-ed90bce9e211', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 12, 60, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-b324-4acb-9bf4-d6abdc2d1eff', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 15, 75, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-b5a1-4cbe-b121-3b47a149b35b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 17, 85, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-b7a4-4fc4-b1ca-448baec57be4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 13, 65, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-b98e-4034-80d3-748154544699', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 14, 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-bc08-4b44-9630-f39b886bcde4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 16, 80, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-c0f2-4428-957d-65fa3c756f51', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd6a-456e-4c5f-aea6-cdfb106ee305', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 12, 60, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-c358-4e3a-9e17-afd9f6b20984', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-6c51-4abf-8d83-52e60bfc3e3b', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 16, 80, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-c550-470c-a31b-f17d607e583c', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-7d11-4f03-8d0d-2e43393d4b07', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 18, 90, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-c757-4413-8621-f7931ed8a066', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-8cdd-4944-9472-ad3f0d5b60d5', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 15, 75, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_marks_collegers" VALUES ('95a8857d-c9ec-4c6b-9d74-9be00f3c2718', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 12, 60, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);

-- ----------------------------
-- Table structure for c11_c_lecture_total_marks_collegers
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_lecture_total_marks_collegers";
CREATE TABLE "public"."c11_c_lecture_total_marks_collegers" (
  "id" uuid NOT NULL,
  "m_course_works_id" uuid NOT NULL,
  "c_lecture_class_id" uuid NOT NULL,
  "m_colleger_id" uuid NOT NULL,
  "student_total_marks" float8 NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_lecture_total_marks_collegers
-- ----------------------------
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5a-cb91-4e35-9866-498ee4066a5f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 54, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5a-d6f9-4e9a-bb59-9252dd2d25bb', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 53, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5a-e1f8-4a54-9a79-1f59fcc6901f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 58, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5a-edb0-4e9b-8926-e3c6b5edae28', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 56, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5a-f936-411a-bcf0-d74441ca767c', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 53.5, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-0468-4732-b0bf-8f8c3f5762f7', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 52.5, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-0fd8-4fa0-9f96-7bb42b56a460', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 60, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-1b0c-41b3-94fc-113276eda68d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 61.5, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-262e-4184-ae1f-46389b571723', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 55, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-314e-41af-b995-176bf212e2cb', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 49.5, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-3ca7-46de-aa88-d46b1c3b7edf', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 85, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-47cc-441b-97c5-5198bb956d26', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 56, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-7a4d-4ff1-91d7-84d326a80b6a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 57.5, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-85d8-48dd-bbfa-353afeb973f2', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 57, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-91c7-444b-a37e-40615113d896', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 58, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-9cfe-44de-868e-ac932aaf8983', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 57, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-a833-41f9-9a96-187f1168e30c', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 50, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-b35b-41c0-8d8a-6bd8c148ddf3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 58, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-be8e-4300-9670-cc603f96527a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 55, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-c9e7-4d8a-8a1e-5ee77b453562', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 63.5, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-d527-445e-919e-7dc2d1bbd7f3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 61.5, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-e041-4951-a239-3ebc02a28e30', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 53.5, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-ec69-414b-8e4c-60145cdf22ae', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 73, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5b-f803-4ba8-b9e8-dc859a2bdcd1', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 50, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5c-298d-4aae-88ca-dafb17d1ab6b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 68, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5c-34b9-4d1a-8776-b8ed319c906b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 69, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5c-3ff9-4fb5-97e3-fd9fb5b1e97f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 80, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5c-4b2c-480d-893e-f71145276992', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 72, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5c-565c-4c08-b08e-3a3a5eaadc63', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 74, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5c-6189-4d9f-b1f7-06b68b302e37', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 70, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5c-6cf7-42b7-921f-35d8d71eb830', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 75, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5c-78ff-481e-9e21-abf85b3465b7', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 66, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5c-8423-41aa-875c-2b67314d92a8', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 70, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5c-8f65-426c-b784-a0ad5349100a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 82, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5c-9ace-4a2c-9668-e96ba3ccd363', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 75, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2eb5c-a6e0-4769-aa19-2a2d5d1c2971', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 75, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafd-3401-462d-a762-d57a9092a0fe', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 54, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafd-43bc-46b5-bf63-088356359691', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 53, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafd-5128-44ca-805b-3d2bb0f0fa8e', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 58, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafd-5e27-4438-a9d5-04d6a0ad9831', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 56, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafd-6d7d-4ce3-987b-0825aea69035', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 53.5, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafd-7b9c-470f-a2c2-23a698b13f74', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 52.5, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafd-888c-40f4-bddd-fac2578f8526', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 60, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafd-96b4-4211-b0b5-ad2c6cf44eea', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 61.5, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafd-a5ac-4bc1-ba6c-6919776121ec', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 55, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafd-b2d8-4950-923a-cb91a19c0f56', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 49.5, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafd-c36a-46b5-8b8a-b6b5e00491c2', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 85, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafd-d04f-460b-9e65-4df2bb3dd234', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 56, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-0daa-4b48-9809-8b2c417543e2', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 57.5, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-1be4-48df-ab39-e7f0f0d823da', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 57, '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-2b31-4993-bc12-fe734414818c', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 58, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-3a3f-4152-94ae-32846b75c287', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 57, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-47ab-4a4b-847f-9b181f84215d', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 50, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-550a-406f-b0f5-940fa76c1870', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 58, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-647e-4d40-b812-65df28a48e99', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 55, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-72c7-44c4-9acc-ae76af33989b', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 63.5, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-815a-4d4a-9b3d-bf22d7f89bec', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 61.5, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-8e34-4b21-b064-e353045b4f20', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 53.5, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-9b43-4ed1-9a52-3e4be0dfab15', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 73, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-aad3-4d6e-9de5-9dc4e05216bf', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 50, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-e125-4e25-8257-047cb26cb401', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 68, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-eeed-4118-b8d1-22566e86322d', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 69, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fafe-fdc2-419e-9f2e-d9328c3a24c8', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 80, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2faff-0a48-4658-b2c7-901ee6f97f1c', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 72, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2faff-1bce-4ec6-971b-0c78512a96a3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 74, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2faff-29b8-4218-ab48-7efafd93b66f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 70, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2faff-36d4-4eaa-8346-79a6055fdf01', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 75, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2faff-46fa-44be-8e56-b849d8226a36', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 66, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2faff-53ad-4eba-bf40-f74623e41fb5', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 70, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2faff-60b9-44d7-8fa2-f171e1dec754', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 82, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2faff-70bc-4856-b0db-44629a59445a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 75, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2faff-7d8d-437a-9ba3-9d9460efe9bd', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 75, '2022-02-19 12:04:42', '2022-02-19 12:04:42', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd67-2dec-4259-a82f-2f6fe4e96e2d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 64, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd67-4120-4642-8544-1ec20dec19c3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 62, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd67-4fe5-49b4-9e17-17e63f652ce2', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 70, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd67-5f7b-47e9-af70-af9e8289680b', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 66, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd67-70ef-4a79-8a4f-17144dd78e72', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 62.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd67-803f-41fa-ab91-fa69bc4f4084', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 62.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd67-9153-4598-aead-e076ef7d4893', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 71, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd67-a1b1-4632-aa71-ee07769c0e56', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 73.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd67-b180-49b0-b3e1-0699b1ffc0a8', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 65, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd67-c2cf-46c2-9a53-39c4b095af3f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 59.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd67-d1db-461f-be49-b4f75d0f97c0', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 82, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd67-e4c7-4a18-a379-ba02f4b0ef54', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 71, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd67-f465-4d3e-b055-3127fa62948d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 68.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd68-05f2-40af-9a61-c7a63ce0beee', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 67.5, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd68-1632-4f83-83a2-d8069338af88', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 79, '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd68-5952-458d-a064-a52670c96171', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 67.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd68-697f-4ba8-8ce1-7665f6b28a2e', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 66, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd68-7c5c-4f82-9852-9c3f8eaee524', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 68, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd68-8b0c-45c3-9551-c101dd24488a', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 68.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd68-9a70-4b69-a7a5-44c73af2823d', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 58, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd68-accf-476a-bfd7-c09aebca8ff1', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 67.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd68-bb86-4680-80d5-61dd14a3ab79', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 64, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd68-cdcc-4125-a9c1-ceaad37bcdbd', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 76, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd68-dc76-410f-914d-7b9b6c73fabb', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 73, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd68-ec21-418a-828b-3aa2ff907d69', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 62.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd68-fe92-4ce1-a1fa-8d62e81106d8', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 85, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-151b-4c7d-8249-58bf6d9c3d74', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 65, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-267d-47e8-82d8-71c3822d5cf3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 74.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-3790-43d3-84dc-4bb49a19a42e', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 66.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-48bb-4db0-b487-0a607c7d057b', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 78.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-762b-4ff8-a7e0-def3558597f1', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 65, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-84c5-4e15-9cc4-0c7665b25e2a', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 70, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-92ba-4971-8dd8-890440f05f3b', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 75.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-9f1f-4682-ba62-680e4e239c33', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 69.5, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-ad6f-488b-a728-f968dd608fe5', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 70, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-bc50-43e4-9a73-9715ffc7fd68', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 72.5, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-c8eb-4154-9657-b086f3b06dba', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 77, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-d6c6-4151-a485-f2ae3147f77c', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 75, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-e5c6-4695-ae60-b503d3ce3380', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 68, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd69-f256-4c3d-8d9e-09a7a0b80158', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 73.5, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-0103-4739-8601-87931e53cf14', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 72, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-0eb7-4931-a6df-8dee8c6ad69f', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 75.5, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-1b9f-441d-9eb4-09139de192ac', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 76, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-3160-4be4-bd83-349f28ecd526', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 82.5, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-3fcd-4b84-9b43-299f7bdec3c8', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 72.5, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-6312-4e35-bd49-2bb335990b4c', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-281b-490e-9504-19809ab7a683', 68, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-71c3-4ea7-a1e4-54bffafdbd6f', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 69, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-8052-40c7-bd98-6b2b9c08b0c2', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 80, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-8cba-45af-af79-cf0c7f2b6175', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 72, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-9aaf-42ea-80e7-ba93c66d4350', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 74, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-a8cb-4bda-8762-57f39cb09420', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 70, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-b522-44d3-90c7-092b63093ca7', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 75, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-c3ed-4e24-8ff1-5f206a80204a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 66, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-d195-40b7-8027-34c69fecc562', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 70, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-de32-424c-a4e1-e830284bf097', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 82, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-ebe2-4251-8afd-8b2a42760274', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 75, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6a-fbec-48ba-b6fc-546093dd7928', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 75, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6b-0af3-43e7-be2e-5af9bbccd885', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 70, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6b-1968-4486-b49f-26508f41d401', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb59-ef0f-499e-ac59-f2da5614eb93', 68, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a2fd6b-2691-4a36-a1cd-c22e85198a1a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 65, '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-0e98-47ee-a8d2-241dccb90960', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 78, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-1d53-4db8-9677-8c9b83591f1c', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 60, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-2a12-4e7b-949a-69ba368f023c', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 65, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-3588-4d1a-9eb1-a6aac35f68bc', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 58, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-41f8-4ddd-bc6f-434758b71936', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 53, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-4ded-4f50-b677-a20605b5c76f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 51, '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-5a41-4438-a536-553c90eef736', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 50, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-6620-4d2f-a264-076dd4ad1b4d', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 51, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-721a-41a9-b5ac-dbbae2ed2e60', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 58, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-7d84-4b7a-8ed1-1faa3c12a3c8', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 53, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-8996-4c84-bb15-b0a2f3c5cce3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 59, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-9582-4108-8e7f-b5c02b065ff7', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 61, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-a177-421b-b3a1-2ef30dd429c7', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 53, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-ad73-49fd-a9dc-c89f6c46ef9a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 63, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-b94f-4c50-9d19-7006e0ee9057', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 55, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-c4ad-4103-abf7-8d42a4ecbf2a', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 62, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-d126-4faf-bc80-7552068f4b3f', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 62, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-ddf7-45ea-a1f8-0abb99c365e3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 49, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-ea07-4054-a3d0-b3d532ce74a1', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 51, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88578-f5eb-4ec2-8a85-8f7404452127', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 68, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-3127-42f3-8989-05abd1725228', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 70, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-3d0c-4269-bcba-d1a8bccb0326', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 63, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-4939-4488-b8fd-0f307b691f29', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 58, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-5560-47c3-a64e-568cab998a00', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 78, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-60f4-49a0-ba28-0bd888d9f069', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 60, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-6d0a-41f0-bb7c-28472476fc9b', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 72, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-7917-4f4e-b7f5-c909c649693f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 49, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-8535-4d08-bedf-782b08cdf284', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 50, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-910d-485f-b69f-411a00bb9d6f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 54, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-9cc4-4607-b8a2-07af0b126109', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 44, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-a839-4d6f-87a8-546b27aafe5f', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 50, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-b40c-4c3e-9f8e-9335acb14244', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 62, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-c037-444c-95de-87f23e3591f1', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 53, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-ccaf-4bbb-8bff-04c3e9420c4e', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 67, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-d8c9-44e6-8a7d-0b2ef23f8cc0', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 47, '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-e4db-471c-88b8-75ab94184eb2', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 74, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-f05e-4121-857c-2d8de1bb38f4', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 63, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a88579-fc73-4028-b357-6f8fecffb257', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 54, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-08a7-4b17-8eae-045cb90235a1', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 56, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-14d2-4692-afe3-c28fe70c2165', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 54, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-5337-4d9e-ab53-0f0a74101ad2', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 78, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-5eb1-40c8-871f-227a01040756', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 73, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-6acc-4fa8-b045-9a24b0cbb45a', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 55, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-769b-4192-ab82-87b9c94d5244', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 61, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-8264-428d-9e7c-99f8f43356ff', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 74, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-8e80-4038-bc9a-3238f62dfabc', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 83, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-9b56-4e06-b186-f8c9fb9e421c', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 77, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-a693-44f4-8950-402dbeb69c57', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 79, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-b253-4224-a945-e205f115febb', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 65, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-be2c-4ac2-8820-b83190a77191', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 68, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-ca37-4074-8775-38c4849bcc70', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 71, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-d6a6-4aad-a43c-fba44ab4e4a4', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 79, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-e2e2-4cf4-9b67-7e771e483b36', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 69, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-ee5c-446c-b5f4-cfaad8955cfc', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 76, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857a-fa68-4309-ad24-d4f0bf95c90c', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 70, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-06ce-4225-aa24-dea38da53086', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 65, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-12ac-42b3-b14d-c38024ec824c', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 58, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-1f22-4db4-83c6-b56d0ac3a588', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 81, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-2ac4-47f5-9593-79b0618d4d7f', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 66, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-364f-4e8d-96d9-cdba5d4fffc4', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 73, '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-77f8-4cbf-8496-793a21d26397', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 69, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-8378-48f5-9a61-90f9665a490f', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 64, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-8f6e-4fdf-9732-f340dff635ea', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 66, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-9b85-41e5-9bcb-c06c3c33acb2', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 70, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-a76f-4a59-af6b-b86d319e02cc', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 66, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-b350-4174-bff9-5d7cf8f5ceda', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 68, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-beff-4873-ade9-da57c6932f8a', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 69, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-cb01-40ce-8e93-ea44a817dbf7', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 77, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-d6df-4329-b6a9-9cace7482e08', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 73, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-e317-4fa1-888f-427a26a6302d', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 62, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-eefd-4497-946f-d4287de581a5', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 69, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857b-fb09-4e8c-82c1-7e08f7968eef', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 63, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-0675-42b0-962f-fe5dffa1631d', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 66, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-1299-42a8-b5b9-7d6edb9e84b4', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 62, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-1f6a-4ad5-90ed-8acecc199fc2', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 63, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-2b50-4811-99e9-a86c90be5157', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 57, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-3708-49a4-a736-c0006ce4e407', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 70, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-42d2-45ee-82da-9420221e2c54', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 55, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-4e8d-44eb-a509-6c6f8c9f31d6', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 66, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-5c09-41bc-ad1f-375598fe42fb', '95a8857b-38de-483f-8f18-d0ad37f40f22', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 69, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-aa03-43d4-bb91-86bc6ea283b5', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-281b-490e-9504-19809ab7a683', 78, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-b7d3-48fb-a54b-aa17ca49b213', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 69, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-c5c3-40cd-ab2b-763f70465432', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-bc1a-4844-8742-54b3b90c62ef', 80, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-d37d-4f0d-ae04-65fdd70546e3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 77, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-e136-4411-90b5-f1741acc8819', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 77, '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-f0b8-4888-a128-9e275ce5f3bf', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 74, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857c-fee5-496e-b35f-e6d947b7d75b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 77, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857d-0dd0-4869-8a2d-b07c0b57a0d6', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 80, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857d-1bfd-4ab6-aefa-593934fe424e', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 66, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857d-29eb-49cb-bac8-2518ae54771a', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-ded9-4fb9-afe4-a8791f66053c', 72, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857d-37d5-49d2-b727-e5cc910d92d4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a2eb59-e2f3-4850-a7eb-c336c3235780', 79, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857d-4673-45b8-a69f-220a0e14e293', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-5ea4-49dd-9885-1407f4c80021', 68, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857d-54bf-4957-9de2-636c3accc904', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-63ea-430d-b8a7-b57e1d3d184a', 76, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857d-6541-4558-831d-0cebbe088140', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-68ef-4910-bb48-118c41a2e9e7', 70, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857d-7835-4741-bf5f-5c084bef631b', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-6dfb-4e3f-a531-a859bd023562', 76, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857d-8675-4be2-bd07-ba500c7909f4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-73d2-4c30-98c4-ea5e3c251eae', 74, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857d-94ce-4321-8f20-358ae271af69', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7884-49d1-ad8a-b923f2f3f77d', 73, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857d-a2d9-4868-934f-1f41ad5bbec5', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-7ce8-4182-a386-dae7857a8b69', 66, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857d-b134-44e8-9e58-d16a27af9f5c', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-80ce-42d0-97dc-afbc108def26', 75, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);
INSERT INTO "public"."c11_c_lecture_total_marks_collegers" VALUES ('95a8857d-bef8-4b41-94d2-bed78ba766f5', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-854b-4016-9b67-5eff66739e61', 73, '2022-02-22 06:11:06', '2022-02-22 06:11:06', NULL);

-- ----------------------------
-- Table structure for c11_c_lectures_cpmks
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_c_lectures_cpmks";
CREATE TABLE "public"."c11_c_lectures_cpmks" (
  "id" uuid NOT NULL,
  "c_lecture_class_id" uuid NOT NULL,
  "m_cpmk_id" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_c_lectures_cpmks
-- ----------------------------
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2eb5a-5741-4b03-b2fb-dcb8f62dbcec', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-54bc-499e-9812-19eae6a98720', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2eb5a-6533-47b5-af5e-e542f9f8c357', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-63e2-4e04-b9af-6519a8431443', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2eb5a-6e37-41e8-801a-f3057cb9729c', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2eb5a-7a04-470a-8409-466cbacb587d', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-78be-44c2-be66-427141c417b6', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2eb5a-873c-43e9-b1fc-5d4b3b0279e7', '95a2eb59-b971-4934-9f5b-79a54dba196c', '95a2eb5a-85fc-43ab-9e2c-6ec595ffc987', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2fafc-ab21-48e9-9177-85c574ef13df', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-54bc-499e-9812-19eae6a98720', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2fafc-ba71-4dff-accd-cff54085d65e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-63e2-4e04-b9af-6519a8431443', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2fafc-c3b0-4701-ab8e-eabf520448bc', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2fafc-d42b-4639-9007-fa989d0dda7e', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-78be-44c2-be66-427141c417b6', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2fafc-e36f-4a1e-ad36-18111214ba14', '95a2fafc-2f6e-45e0-9f00-3cb188370d77', '95a2eb5a-85fc-43ab-9e2c-6ec595ffc987', '2022-02-19 12:04:41', '2022-02-19 12:04:41', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2fd66-a7c2-425a-adbb-1f3a3b0905ac', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-54bc-499e-9812-19eae6a98720', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2fd66-b39b-453d-9a35-116694b7e449', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-63e2-4e04-b9af-6519a8431443', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2fd66-b946-4d2b-8a5c-f00d8f638c82', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2fd66-cd8a-4e34-a314-09213559e22b', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-78be-44c2-be66-427141c417b6', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a2fd66-dc2a-4d3b-a56d-f40420d06850', '95a2fd66-24af-4335-8a31-7f794cf4e1c7', '95a2eb5a-85fc-43ab-9e2c-6ec595ffc987', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a88577-0360-48ad-ba17-44f6c4c768d9', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88576-f702-4a14-8d55-e23bd2792fa7', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a88577-17c6-4648-939d-947c06393b00', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88577-163d-41de-819e-f8cb5f3d9acd', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a88577-29be-4afb-958e-0084fc468936', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88577-287f-456d-9721-99f80b86ea07', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a88577-34c9-42d1-b8e6-d3ef95283c17', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88577-3374-4bb0-b691-582de758b773', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a88577-3fc0-4f58-a45e-434ce5e080ed', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88577-3de5-4425-aab2-0f40dfe97ae7', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_c_lectures_cpmks" VALUES ('95a88577-4e3b-4ec4-a8d6-b87d26a38f2e', '95a88576-11e8-42a6-b8d3-0455d520152e', '95a88577-4ce4-4e51-ac78-aa38e58ee953', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);

-- ----------------------------
-- Table structure for c11_g_lecture_seqs
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_g_lecture_seqs";
CREATE TABLE "public"."c11_g_lecture_seqs" (
  "id" int8 NOT NULL DEFAULT nextval('c11_g_lecture_seqs_id_seq'::regclass),
  "code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_g_lecture_seqs
-- ----------------------------

-- ----------------------------
-- Table structure for c11_m_collegers
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_m_collegers";
CREATE TABLE "public"."c11_m_collegers" (
  "id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "nim" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "flag" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_m_collegers
-- ----------------------------
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2eb59-bc1a-4844-8742-54b3b90c62ef', 'ALFIAN PUTRA WICAKSANA', '41315010004', 'alfianputrawicaksana-41315010004-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2eb59-c2eb-40bc-a2a1-3c073f4d0348', 'LUTFI ABDUSSALAM', '41315010006', 'lutfiabdussalam-41315010006-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2eb59-c7b9-4864-bc71-ed2e4700eaeb', 'AGUS SETIAWAN', '41315010010', 'agussetiawan-41315010010-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2eb59-cc69-48ac-abe5-3f1dd9614d8a', 'DEJAN PUTRANTA PRIMA', '41315010014', 'dejanputrantaprima-41315010014-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2eb59-d0dd-4eac-bcd7-326ab4a8d2b0', 'ADITYA SUPRIYADI', '41315010015', 'adityasupriyadi-41315010015-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2eb59-d55b-4cf1-a8ec-a1b66d182d69', 'HASABI AUFAR', '41315010019', 'hasabiaufar-41315010019-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2eb59-dafd-4e04-abb6-cdb1cd2563fe', 'DANANG BAGAS PANGESTU', '41315010020', 'danangbagaspangestu-41315010020-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2eb59-ded9-4fb9-afe4-a8791f66053c', 'MAHENDRA', '41315010027', 'mahendra-41315010027-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2eb59-e2f3-4850-a7eb-c336c3235780', 'KEVIN ISKANDAR WINATA', '41315010028', 'keviniskandarwinata-41315010028-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2eb59-e706-4dcd-ab79-9f801f5f03c6', 'PUTRANTA PRIMA', '41315010029', 'putrantaprima-41315010029-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2eb59-eaf3-4537-b86a-59d7c6c518e9', 'SUPRIYADI', '41315010030', 'supriyadi-41315010030-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2eb59-ef0f-499e-ac59-f2da5614eb93', 'PUTRA WICAKSANA', '41315010031', 'putrawicaksana-41315010031-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2fd66-281b-490e-9504-19809ab7a683', 'I MADE ARISUDANA GIRI', '41313010024', 'imadearisudanagiri-41313010024-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2fd66-30ec-4f81-8e1d-474fee54a1c3', 'TAUFAN YUNIANTO', '41314010034', 'taufanyunianto-41314010034-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a2fd66-5c6b-44fb-99cd-fca6407b7fcf', 'BAGAS PANGESTU', '41315010032', 'bagaspangestu-41315010032-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a88576-5ea4-49dd-9885-1407f4c80021', 'PUTRANTA PRIMA', '41316010029', 'putrantaprima-41316010029-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a88576-63ea-430d-b8a7-b57e1d3d184a', 'SUPRIYADI', '41316010030', 'supriyadi-41316010030-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a88576-68ef-4910-bb48-118c41a2e9e7', 'PUTRA WICAKSANA', '41316010031', 'putrawicaksana-41316010031-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a88576-6dfb-4e3f-a531-a859bd023562', 'BAGAS PANGESTU', '41316010032', 'bagaspangestu-41316010032-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a88576-73d2-4c30-98c4-ea5e3c251eae', 'WINATA PRIMA', '41316010033', 'winataprima-41316010033-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a88576-7884-49d1-ad8a-b923f2f3f77d', 'PUTRANTA BAGAS', '41316010034', 'putrantabagas-41316010034-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a88576-7ce8-4182-a386-dae7857a8b69', 'ISKANDAR', '41316010035', 'iskandar-41316010035-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a88576-80ce-42d0-97dc-afbc108def26', 'SUPRIYADI', '41316010036', 'supriyadi-41316010036-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);
INSERT INTO "public"."c11_m_collegers" VALUES ('95a88576-854b-4016-9b67-5eff66739e61', 'YUNIANTO ARISUDANA', '41316010037', 'yuniantoarisudana-41316010037-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);

-- ----------------------------
-- Table structure for c11_m_course_work_details
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_m_course_work_details";
CREATE TABLE "public"."c11_m_course_work_details" (
  "id" uuid NOT NULL,
  "marks" int4 NOT NULL,
  "question_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "m_course_works_id" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_m_course_work_details
-- ----------------------------
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2eb5a-9936-43e3-81e8-110c5f2a52a6', 25, 'P1', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2eb5a-a618-4cc0-91bf-abf7915f4c1b', 25, 'P2', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2eb5a-ae0c-45dd-8a7d-c43cc2f95846', 25, 'P3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2eb5a-b5df-4a7d-b234-74ba297cf52a', 25, 'P4', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2eb5b-4d2a-442d-80c3-1f8c951a783b', 25, 'P1', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2eb5b-5717-456a-8c1a-9f98d6b07bc9', 25, 'P2', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2eb5b-5ef0-4d09-b212-7116cb07fb38', 25, 'P3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2eb5b-66dc-454e-8141-37c4ab45af2d', 25, 'P4', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2eb5b-fe20-4d97-b05f-214b88cfbac1', 25, 'P1', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2eb5c-07f4-48c2-bec9-a058447d2011', 25, 'P2', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2eb5c-145a-4353-87e9-431f782aa4f9', 25, 'P3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2eb5c-1e9a-4c75-a258-1469cff25c6a', 25, 'P4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd66-ee00-475a-b051-0543370ffd97', 20, 'P1', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd66-fbb1-4f7c-b577-0d4106db0e8c', 20, 'P2', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd67-01f1-486c-8638-594d778b6e9b', 20, 'P3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd67-1173-463c-81a4-5be36bd2f699', 15, 'P5', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd68-1bb0-4a51-86e3-e83c1b7276ab', 20, 'P1', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '2022-02-19 12:11:26', '2022-02-19 12:11:26', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd68-251c-41e3-a309-ba6dca5a31b1', 20, 'P2', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd68-319d-46aa-9ead-798ade98b95b', 15, 'P3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd68-3892-48f2-8462-9a3315bf50ba', 30, 'P4', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd68-3f41-4c67-8e04-a1d595a14a7d', 15, 'P5', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd69-4f31-4316-b55d-7a439cd3bb10', 20, 'P1', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd69-5594-41a5-8f83-d975509c84f2', 25, 'P2', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd69-5c02-4aae-a4b1-3bb1bdc1a09b', 25, 'P3', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd69-6282-4055-9128-a1599f9d0af1', 30, 'P4', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd6a-456e-4c5f-aea6-cdfb106ee305', 20, 'P1', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a2fd6a-5af0-4c11-896b-b1470cebbd56', 30, 'P4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '2022-02-19 12:11:28', '2022-02-19 12:11:28', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a88577-d571-4551-92ef-0e2ecf3d40cd', 30, 'P3', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a88577-e4da-4935-98f8-87f9fcb0f3bd', 30, 'P4', '95a2eb5a-9202-4f2e-9a35-b20e18555f8e', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a88579-0f7c-46dd-87ef-b1b133aaf96c', 20, 'P3', '95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', '2022-02-22 06:11:03', '2022-02-22 06:11:03', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a8857a-19d0-4425-9644-5f3146dfd77f', 25, 'P1', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a8857a-268d-434e-9be8-056ab4146770', 30, 'P2', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a8857a-316c-428f-97c7-94a76f436954', 20, 'P3', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a8857a-3e59-4957-b598-989f62f3489d', 25, 'P4', '95a2fd69-4ad0-44fe-a2de-c70217efab79', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a8857b-3c27-4bbc-bd51-188b6073353f', 30, 'P1', '95a8857b-38de-483f-8f18-d0ad37f40f22', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a8857b-46dc-4c0b-9841-a0301b3bab65', 25, 'P2', '95a8857b-38de-483f-8f18-d0ad37f40f22', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a8857b-53cf-4859-9cc1-2e352d646724', 20, 'P3', '95a8857b-38de-483f-8f18-d0ad37f40f22', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a8857b-6130-4e25-b8ec-aba6379e8f55', 25, 'P4', '95a8857b-38de-483f-8f18-d0ad37f40f22', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a8857c-6c51-4abf-8d83-52e60bfc3e3b', 20, 'P2', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a8857c-7d11-4f03-8d0d-2e43393d4b07', 20, 'P3', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a8857c-8cdd-4944-9472-ad3f0d5b60d5', 20, 'P4', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);
INSERT INTO "public"."c11_m_course_work_details" VALUES ('95a8857c-9c8f-4d6f-8a9b-0039b061e7a8', 20, 'P5', '95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', '2022-02-22 06:11:05', '2022-02-22 06:11:05', NULL);

-- ----------------------------
-- Table structure for c11_m_course_work_marks
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_m_course_work_marks";
CREATE TABLE "public"."c11_m_course_work_marks" (
  "id" uuid NOT NULL,
  "marks" int4 NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_m_course_work_marks
-- ----------------------------
INSERT INTO "public"."c11_m_course_work_marks" VALUES ('95a2eb5a-9472-4d31-836a-48abe09e604c', 30, '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_course_work_marks" VALUES ('95a2eb5b-fb5e-4ae6-b779-c73f1dc78860', 40, '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_m_course_work_marks" VALUES ('95a2fd69-4c30-43e2-a67a-64897d624687', 20, '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);

-- ----------------------------
-- Table structure for c11_m_course_works
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_m_course_works";
CREATE TABLE "public"."c11_m_course_works" (
  "id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "flag" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_m_course_works
-- ----------------------------
INSERT INTO "public"."c11_m_course_works" VALUES ('95a2eb5a-9202-4f2e-9a35-b20e18555f8e', 'COURSE WORK 1', 'TUGAS 1', 'coursework1-tugas1', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_course_works" VALUES ('95a2eb5b-49d7-4f7b-b549-4a8501e7bbf1', 'COURSE WORK 2', 'TUGAS 2', 'coursework2-tugas2', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_course_works" VALUES ('95a2eb5b-fa16-4fc8-950b-fcaf328fb8bc', 'EXAM', 'UAS', 'exam-uas', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:59', '2022-02-19 11:20:59', NULL);
INSERT INTO "public"."c11_m_course_works" VALUES ('95a2fd69-4ad0-44fe-a2de-c70217efab79', 'COURSE WORK 3', 'TES 1', 'coursework3-tes1', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 12:11:27', '2022-02-19 12:11:27', NULL);
INSERT INTO "public"."c11_m_course_works" VALUES ('95a8857b-38de-483f-8f18-d0ad37f40f22', 'COURSE WORK 4', 'TES 2', 'coursework4-tes2', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:04', '2022-02-22 06:11:04', NULL);

-- ----------------------------
-- Table structure for c11_m_cpls
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_m_cpls";
CREATE TABLE "public"."c11_m_cpls" (
  "id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "flag" text COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_m_cpls
-- ----------------------------
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb59-f453-4d42-9400-cf802825854a', 'CPL1', 'cpl1-bertakwakepadatuhanyangmahaesadanmampumenunjukkansikapreligius', 'BERTAKWA KEPADA TUHAN YANG MAHA ESA DAN MAMPU MENUNJUKKAN SIKAP RELIGIUS;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb59-f8d5-4f46-bcba-3665ac5dc199', 'CPL2', 'cpl2-menjunjungtingginilaikemanusiaandalammenjalankantugasberdasarkanagama,moral,danetika', 'MENJUNJUNG TINGGI NILAI KEMANUSIAAN DALAM MENJALANKAN TUGAS BERDASARKAN AGAMA,MORAL, DAN ETIKA;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb59-fc4c-4eac-8dad-408eca6b36c3', 'CPL3', 'cpl3-berkontribusidalampeningkatanmutukehidupanbermasyarakat,berbangsa,bernegara,dankemajuanperadabanberdasarkanpancasila', 'BERKONTRIBUSI DALAM PENINGKATAN MUTU KEHIDUPAN BERMASYARAKAT, BERBANGSA, BERNEGARA, DAN KEMAJUAN PERADABAN BERDASARKAN PANCASILA;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb59-ff7b-48bb-9037-19852ddf3b15', 'CPL4', 'cpl4-berperansebagaiwarganegarayangbanggadancintatanahair,memilikinasionalismesertarasatanggungjawabpadanegaradanbangsa', 'BERPERAN SEBAGAI WARGA NEGARA YANG BANGGA DAN CINTA TANAH AIR, MEMILIKI NASIONALISME SERTA RASA TANGGUNGJAWAB PADA NEGARA DAN BANGSA;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-02f7-4c84-9451-0c4f9d2f407c', 'CPL5', 'cpl5-menghargaikeanekaragamanbudaya,pandangan,agama,dankepercayaan,sertapendapatatautemuanorisinaloranglain', 'MENGHARGAI KEANEKARAGAMAN BUDAYA, PANDANGAN, AGAMA, DAN KEPERCAYAAN, SERTA PENDAPAT ATAU TEMUAN ORISINAL ORANG LAIN;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-061f-4fad-a442-799e5935fdb5', 'CPL6', 'cpl6-bekerjasamadanmemilikikepekaansosialsertakepedulianterhadapmasyarakatdanlingkungan', 'BEKERJA SAMA DAN MEMILIKI KEPEKAAN SOSIAL SERTA KEPEDULIAN TERHADAP MASYARAKAT DAN LINGKUNGAN;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-0a0e-468a-a870-69442fbe313f', 'CPL7', 'cpl7-taathukumdandisiplindalamkehidupanbermasyarakatdanbernegara', 'TAAT HUKUM DAN DISIPLIN DALAM KEHIDUPAN BERMASYARAKAT DAN BERNEGARA;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-0d5e-42fa-a530-8c9b79b4df4a', 'CPL8', 'cpl8-menginternalisasinilai,norma,danetikaakademik', 'MENGINTERNALISASI NILAI, NORMA, DAN ETIKA AKADEMIK;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-10a0-42af-b537-249619cfa286', 'CPL9', 'cpl9-menunjukkansikapbertanggungjawabataspekerjaandibidangkeahliannyasecaramandiri', 'MENUNJUKKAN SIKAP BERTANGGUNGJAWAB ATAS PEKERJAAN DI BIDANG KEAHLIANNYA SECARA MANDIRI;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-13ff-48b3-9ea5-fa9ce3efe882', 'CPL10', 'cpl10-menginternalisasisemangatkemandirian,kejuangan,dankewirausahaanmemilikikemampuanmemahamikebutuhanakanpembelajaransepanjanghayat,termasukaksesterhadappengetahuanterkaitisuisumutakhiryangrelevan', 'MENGINTERNALISASI SEMANGAT KEMANDIRIAN, KEJUANGAN, DAN KEWIRAUSAHAAN; MEMILIKI KEMAMPUAN MEMAHAMI KEBUTUHAN AKAN PEMBELAJARAN SEPANJANG HAYAT, TERMASUK AKSES TERHADAP PENGETAHUAN TERKAIT ISU-ISU MUTAKHIR YANG RELEVAN.', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-173d-4fd8-be3c-0267bb58d917', 'CPL11', 'cpl11-mampumenganalisispersoalandalamdisiplinteknikmesindenganmenerapkanpengetahuandasarmatematika,metodenumerik,analisisstatistikdanilmusainsdasar(fisika,kimiadanilmuhayat)', 'MAMPU MENGANALISIS PERSOALAN DALAM DISIPLIN TEKNIK MESIN DENGAN MENERAPKAN PENGETAHUAN DASAR MATEMATIKA, METODE NUMERIK, ANALISIS STATISTIK DAN ILMU SAINS DASAR (FISIKA, KIMIA DAN ILMU HAYAT)', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-1a97-4fb4-96b6-53c6f96079aa', 'CPL12', 'cpl12-mampumerancangkomponen,sistemdanatauprosesmekanikaluntukmemenuhikebutuhanyangdiharapkandidalambatasanbatasanrealistis,misalnyahukum,ekonomi,lingkungan,sosial,politik,kesehatandankeselamatan,keberlanjutansertauntukmengenalidanataumemanfaatkanpotensisumberdayalokaldannasionaldenganwawasanglobal', 'MAMPU MERANCANG KOMPONEN, SISTEM DAN/ATAU PROSES MEKANIKAL UNTUK MEMENUHI KEBUTUHAN YANG DIHARAPKAN DIDALAM BATASAN-BATASAN REALISTIS, MISALNYA HUKUM, EKONOMI, LINGKUNGAN, SOSIAL, POLITIK, KESEHATAN DAN KESELAMATAN, KEBERLANJUTAN SERTA UNTUK MENGENALI DAN/ATAU MEMANFAATKAN POTENSI SUMBER DAYA LOKAL DAN NASIONAL DENGAN WAWASAN GLOBAL', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-1dd0-4834-96f9-9287fa2586c6', 'CPL13', 'cpl13-mampumerancang,melakukansimulasidaneksperimenlaboratoriumdanataulapangansertamenganalisisdaninterpretasidatauntukmemperkuatpenilaianteknik', 'MAMPU MERANCANG, MELAKUKAN SIMULASI DAN EKSPERIMEN  LABORATORIUM DAN/ATAU LAPANGAN SERTA MENGANALISIS DAN INTERPRETASI DATA UNTUK MEMPERKUAT PENILAIAN TEKNIK.', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-213c-4f6b-82de-16b1e085f1be', 'CPL14', 'cpl14-mampumengidentifikasi,merumuskan,menganalisisdanmenyelesaikanpermasalahanteknikmesindansistempermesinan', 'MAMPU MENGIDENTIFIKASI, MERUMUSKAN, MENGANALISIS DAN MENYELESAIKAN PERMASALAHAN TEKNIK MESIN DAN SISTEM PERMESINAN', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-2472-49c0-b4ba-b64ed31885d3', 'CPL15', 'cpl15-mampumenerapkanprinsipprinsipmanajemendanekonomiuntukmengelolaproyekteknikdanmengembangkanproyekbarusebagaiwirausahawanbidangteknikdilingkunganmultidisiplin', 'MAMPU MENERAPKAN PRINSIP-PRINSIP MANAJEMEN DAN EKONOMI UNTUK MENGELOLA PROYEK TEKNIK DAN MENGEMBANGKAN PROYEK BARU SEBAGAI WIRAUSAHAWAN BIDANG TEKNIK DI LINGKUNGAN MULTIDISIPLIN', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-27da-42c8-b901-f31e57d3c8a1', 'CPL21', 'cpl21-mampumenerapkanpemikiranlogis,kritis,sistematis,daninovatifdalamkontekspengembanganatauimplementasiilmupengetahuandanteknologiyangmemperhatikandanmenerapkannilaihumaniorayangsesuaidenganbidangkeahliannya', 'MAMPU MENERAPKAN PEMIKIRAN LOGIS, KRITIS, SISTEMATIS, DAN INOVATIF DALAM KONTEKS PENGEMBANGAN ATAU IMPLEMENTASI ILMU PENGETAHUAN DAN TEKNOLOGI YANG MEMPERHATIKAN DAN MENERAPKAN NILAI HUMANIORA YANG SESUAI DENGAN BIDANG KEAHLIANNYA;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-2b0d-46e5-a615-3fcb54fca437', 'CPL22', 'cpl22-mampumenunjukkankinerjamandiri,bermutu,danterukur', 'MAMPU MENUNJUKKAN KINERJA MANDIRI, BERMUTU, DAN TERUKUR;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-2e66-4207-8466-190784cd7b47', 'CPL23', 'cpl23-mampumengkajiimplikasipengembanganatauimplementasiilmupengetahuanteknologiyangmemperhatikandanmenerapkannilaihumaniorasesuaidengankeahliannyaberdasarkankaidah,tatacaradanetikailmiahdalamrangkamenghasilkansolusi,gagasan,desainataukritikseni,menyusundeskripsisaintifikhasilkajiannyadalambentukskripsiataulaporantugasakhir,danmengunggahnyadalamlamanperguruantinggi', 'MAMPU MENGKAJI IMPLIKASI PENGEMBANGAN ATAU IMPLEMENTASI ILMU PENGETAHUAN TEKNOLOGI YANG MEMPERHATIKAN DAN MENERAPKAN NILAI HUMANIORA SESUAI DENGAN KEAHLIANNYA BERDASARKAN KAIDAH, TATA CARA DAN ETIKA ILMIAH DALAM RANGKA MENGHASILKAN SOLUSI, GAGASAN, DESAIN ATAU KRITIK SENI, MENYUSUN DESKRIPSI SAINTIFIK HASIL KAJIANNYA DALAM BENTUK SKRIPSI ATAU LAPORAN TUGAS AKHIR, DAN MENGUNGGAHNYA DALAM LAMAN PERGURUAN TINGGI;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-319d-4ce1-b82a-2e5eefbc49d3', 'CPL24', 'cpl24-menyusundeskripsisaintifikhasilkajiantersebutdiatasdalambentukskripsiataulaporantugasakhir,danmengunggahnyadalamlamanperguruantinggi', 'MENYUSUN DESKRIPSI SAINTIFIK HASIL KAJIAN TERSEBUT DI ATAS DALAM BENTUK SKRIPSI ATAU LAPORAN TUGAS AKHIR, DAN MENGUNGGAHNYA DALAM LAMAN PERGURUAN TINGGI;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-3516-47f6-abb2-d29e7587d010', 'CPL25', 'cpl25-mampumengambilkeputusansecaratepatdalamkontekspenyelesaianmasalahdibidangkeahliannya,berdasarkanhasilanalisisinformasidandata', 'MAMPU MENGAMBIL KEPUTUSAN SECARA TEPAT DALAM KONTEKS PENYELESAIAN MASALAH DI BIDANG KEAHLIANNYA, BERDASARKAN HASIL ANALISIS INFORMASI DAN DATA;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-3859-4307-a2fa-095ae5adce84', 'CPL26', 'cpl26-mampumemeliharadanmengembangkanjaringankerjadenganpembimbing,kolega,sejawatbaikdidalammaupundiluarlembaganya', 'MAMPU MEMELIHARA DAN MENGEMBANGKAN JARINGAN KERJA DENGAN PEMBIMBING, KOLEGA, SEJAWAT BAIK DI DALAM MAUPUN DI LUAR LEMBAGANYA;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-3bb8-4c70-b664-78fd339f043e', 'CPL27', 'cpl27-mampubertanggungjawabataspencapaianhasilkerjakelompokdanmelakukansupervisidanevaluasiterhadappenyelesaianpekerjaanyangditugaskankepadapekerjayangberadadibawahtanggungjawabnya', 'MAMPU BERTANGGUNGJAWAB ATAS PENCAPAIAN HASIL KERJA KELOMPOK DAN MELAKUKAN SUPERVISI DAN EVALUASI TERHADAP PENYELESAIAN PEKERJAAN YANG DITUGASKAN KEPADA PEKERJA YANG BERADA DI BAWAH TANGGUNGJAWABNYA;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-3fd7-4c5e-9e32-3f811d81a1cc', 'CPL28', 'cpl28-mampumelakukanprosesevaluasidiriterhadapkelompokkerjayangberadadibawahtanggungjawabnya,danmampumengelolapembelajaransecaramandiri', 'MAMPU MELAKUKAN PROSES EVALUASI DIRI TERHADAP KELOMPOK KERJA YANG BERADA DIBAWAH TANGGUNG JAWABNYA, DAN MAMPU MENGELOLA PEMBELAJARAN SECARA MANDIRI;', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-433e-4d86-bdad-fddd721049fa', 'CPL29', 'cpl29-mampumendokumentasikan,menyimpan,mengamankan,danmenemukankembalidatauntukmenjaminkesahihandanmencegahplagiasi', 'MAMPU MENDOKUMENTASIKAN, MENYIMPAN, MENGAMANKAN, DAN MENEMUKAN KEMBALI DATA UNTUK MENJAMIN KESAHIHAN DAN MENCEGAH PLAGIASI', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-4688-47a1-b9f1-c8e76aace4a1', 'CPL30', 'cpl30-mampuberkomunikasiefektifsecaralisan,tulisan,bentukgrafis,sketsa,dancadbaikdalambahasaindonesiamaupunbahasainggris', 'MAMPU BERKOMUNIKASI EFEKTIF SECARA LISAN, TULISAN, BENTUK GRAFIS, SKETSA, DAN CAD BAIK DALAM BAHASA INDONESIA MAUPUN BAHASA INGGRIS', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-49db-4a77-b971-a900302e0a45', 'CPL31', 'cpl31-mampumenerapkanmetode,keterampilandanpirantiteknikyangmodernyangdiperlukanuntukpraktekketeknikan', 'MAMPU MENERAPKAN METODE, KETERAMPILAN DAN PIRANTI TEKNIK YANG MODERN YANG DIPERLUKAN UNTUK PRAKTEK KETEKNIKAN.', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-4d1c-4257-ba72-cba65184809b', 'CPL32', 'cpl32-mampumerencanakan,menyelesaikandanmengevaluasitugasdidalambatasanbatasanyangada', 'MAMPU MERENCANAKAN, MENYELESAIKAN DAN MENGEVALUASI TUGAS DIDALAM BATASAN-BATASAN YANG ADA.', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_cpls" VALUES ('95a2eb5a-5089-4e4d-951e-2815f0a92361', 'CPL33', 'cpl33-mampumenggunakanteknologiinformasi(it)yangrelevandalammencarisumberinformasi,mengolahdata,menyiapkandokumendanpresentasi', 'MAMPU MENGGUNAKAN TEKNOLOGI INFORMASI (IT) YANG RELEVAN DALAM MENCARI SUMBER INFORMASI, MENGOLAH DATA, MENYIAPKAN DOKUMEN DAN PRESENTASI', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);

-- ----------------------------
-- Table structure for c11_m_cpmks
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_m_cpmks";
CREATE TABLE "public"."c11_m_cpmks" (
  "id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "flag" text COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_m_cpmks
-- ----------------------------
INSERT INTO "public"."c11_m_cpmks" VALUES ('95a2eb5a-54bc-499e-9812-19eae6a98720', 'CPMK1', 'cpmk1-mampumemahamiprosesdesaindananalisisprodukteknik', 'MAMPU MEMAHAMI PROSES DESAIN DAN ANALISIS PRODUK TEKNIK', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_cpmks" VALUES ('95a2eb5a-63e2-4e04-b9af-6519a8431443', 'CPMK2', 'cpmk2-mampumenyiapkanrancangandesainuntuktujuanperbaikanproduk', 'MAMPU MENYIAPKAN RANCANGAN DESAIN UNTUK TUJUAN PERBAIKAN PRODUK', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_cpmks" VALUES ('95a2eb5a-6ced-47c0-ae9c-7ca871f7eeeb', 'CPMK3', 'cpmk3-mampumerencanakandanmelakukanevaluasidesainkonsep', 'MAMPU MERENCANAKAN DAN MELAKUKAN EVALUASI DESAIN KONSEP', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_cpmks" VALUES ('95a2eb5a-78be-44c2-be66-427141c417b6', 'CPMK4', 'cpmk4-mampumenyiapkansolusidesainyanglayakdaninovatif', 'MAMPU MENYIAPKAN SOLUSI DESAIN YANG LAYAK DAN INOVATIF', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_cpmks" VALUES ('95a2eb5a-85fc-43ab-9e2c-6ec595ffc987', 'CPMK5', 'cpmk5-mampubekerjadalamkelompok', 'MAMPU BEKERJA DALAM KELOMPOK', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:58', '2022-02-19 11:20:58', NULL);
INSERT INTO "public"."c11_m_cpmks" VALUES ('95a88576-f702-4a14-8d55-e23bd2792fa7', 'CPMK1', 'cpmk1-mampumenjelaskandanmemahamidefinisi,sejarah,konsep,jenispadasistemcedas', 'MAMPU MENJELASKAN DAN MEMAHAMI DEFINISI, SEJARAH, KONSEP, JENIS PADA SISTEM CEDAS ', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_m_cpmks" VALUES ('95a88577-163d-41de-819e-f8cb5f3d9acd', 'CPMK2', 'cpmk2-mampumemahamidanmensimulasikanmetodesistemfuzzy', 'MAMPU MEMAHAMI DAN MENSIMULASIKAN METODE SISTEM FUZZY', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_m_cpmks" VALUES ('95a88577-287f-456d-9721-99f80b86ea07', 'CPMK3', 'cpmk3-mampumemahamidanmensimulasikanmetodejaringansyaraftiruan', 'MAMPU MEMAHAMI DAN MENSIMULASIKAN METODE JARINGAN SYARAF TIRUAN', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_m_cpmks" VALUES ('95a88577-3374-4bb0-b691-582de758b773', 'CPMK4', 'cpmk4-mampumemahamidanmensimulasikanmetodeadaptiveneurofuzzyinferencesystem(anfis)', 'MAMPU MEMAHAMI DAN MENSIMULASIKAN METODE ADAPTIVE NEURO FUZZY INFERENCE SYSTEM (ANFIS)', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_m_cpmks" VALUES ('95a88577-3de5-4425-aab2-0f40dfe97ae7', 'CPMK5', 'cpmk5-mampumerancangsistemcerdasmenggunakanmetodesistemcerdas', 'MAMPU MERANCANG SISTEM CERDAS MENGGUNAKAN METODE SISTEM CERDAS', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);
INSERT INTO "public"."c11_m_cpmks" VALUES ('95a88577-4ce4-4e51-ac78-aa38e58ee953', 'CPMK6', 'cpmk6-mampumerancangsistemcerdasberbasisinterntofthings', 'MAMPU MERANCANG SISTEM CERDAS BERBASIS INTERNT OF THINGS', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:02', '2022-02-22 06:11:02', NULL);

-- ----------------------------
-- Table structure for c11_m_curricullums
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_m_curricullums";
CREATE TABLE "public"."c11_m_curricullums" (
  "id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "flag" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "year" int4 NOT NULL,
  "created_by" uuid NOT NULL,
  "institution_id" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_m_curricullums
-- ----------------------------
INSERT INTO "public"."c11_m_curricullums" VALUES ('95a2ea91-7cb9-4572-876b-16c3fa206b91', 'OUTCOME-BASED EDUCATION &  MERDEKA BELAJAR KAMPUS MERDEKA', 'OE&MBKM', 'outcomebasededucation&merdekabelajarkampusmerdeka', 2020, '95a2c3bf-8c71-4371-96cb-8884c57155cf', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '2022-02-19 11:18:46', '2022-02-19 11:18:46', NULL);

-- ----------------------------
-- Table structure for c11_m_departments
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_m_departments";
CREATE TABLE "public"."c11_m_departments" (
  "id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "flag" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_m_departments
-- ----------------------------
INSERT INTO "public"."c11_m_departments" VALUES ('95a2eb04-94d4-41cd-bc09-089628209d1f', 'TEKNIK ELEKTRO', 'teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:01', '2022-02-19 11:20:01', NULL);

-- ----------------------------
-- Table structure for c11_m_faculties
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_m_faculties";
CREATE TABLE "public"."c11_m_faculties" (
  "id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "flag" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_m_faculties
-- ----------------------------
INSERT INTO "public"."c11_m_faculties" VALUES ('95a2eb04-8960-492a-ad9a-db1bc0a9f869', 'TEKNIK', 'teknik', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:01', '2022-02-19 11:20:01', NULL);

-- ----------------------------
-- Table structure for c11_m_lecture_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_m_lecture_categories";
CREATE TABLE "public"."c11_m_lecture_categories" (
  "id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "prefix" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_m_lecture_categories
-- ----------------------------

-- ----------------------------
-- Table structure for c11_m_lecturers
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_m_lecturers";
CREATE TABLE "public"."c11_m_lecturers" (
  "id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "nik" varchar(255) COLLATE "pg_catalog"."default",
  "nidn" varchar(255) COLLATE "pg_catalog"."default",
  "flag" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_m_lecturers
-- ----------------------------
INSERT INTO "public"."c11_m_lecturers" VALUES ('95a2eb59-b42e-40ec-a304-ad1ab643b08b', 'ZENDI IKLIMA', NULL, '0314069303', 'zendiiklima-0314069303-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);

-- ----------------------------
-- Table structure for c11_m_lectures
-- ----------------------------
DROP TABLE IF EXISTS "public"."c11_m_lectures";
CREATE TABLE "public"."c11_m_lectures" (
  "id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "level_marks" varchar(255) COLLATE "pg_catalog"."default",
  "semester" varchar(255) COLLATE "pg_catalog"."default",
  "flag" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_by" uuid NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c11_m_lectures
-- ----------------------------
INSERT INTO "public"."c11_m_lectures" VALUES ('95a2eb59-ae78-4dc2-b0b5-ea0893bc5315', 'TEKNIK OPTIMASI', 'P131700012', 'Sarjana Strata 1 (S1) / 3', '2017/2018-1', 'teknikoptimasi-p131700012-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 11:20:57', '2022-02-19 11:20:57', NULL);
INSERT INTO "public"."c11_m_lectures" VALUES ('95a2fd66-1713-49ed-9fe8-43fcf9ec9998', 'PEMROGRAMAN KOMPUTER 1', 'W131700002', 'Sarjana Strata 1 (S1) / 3', '2017/2018-1', 'pemrogramankomputer1-w131700002-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-19 12:11:25', '2022-02-19 12:11:25', NULL);
INSERT INTO "public"."c11_m_lectures" VALUES ('95a88575-e168-4545-b69a-ce74159b7aa5', 'SISTEM CERDAS', 'W1317000033', 'Sarjana Strata 1 (S1) / 3', '2017/2018-1', 'sistemcerdas-w1317000033-teknikelektro', '95a2cfed-e5ac-4deb-a9da-cb406592455f', '2022-02-22 06:11:01', '2022-02-22 06:11:01', NULL);

-- ----------------------------
-- Table structure for c_user_institutions
-- ----------------------------
DROP TABLE IF EXISTS "public"."c_user_institutions";
CREATE TABLE "public"."c_user_institutions" (
  "id" uuid NOT NULL,
  "institution_id" uuid,
  "user_id" uuid NOT NULL,
  "assigned_by" uuid,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of c_user_institutions
-- ----------------------------
INSERT INTO "public"."c_user_institutions" VALUES ('95a2c3bf-4c84-4768-9a23-4c5dc1e906b5', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2c3bf-4236-48c0-a988-277386e84c58', '95a2c3bf-4236-48c0-a988-277386e84c58', '2022-02-19 09:30:13', '2022-02-19 09:30:13', NULL);
INSERT INTO "public"."c_user_institutions" VALUES ('95a2c3bf-8c71-4371-96cb-8884c57155cf', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2c3bf-88b1-4fc9-a660-f272fcc77ea1', '95a2c3bf-88b1-4fc9-a660-f272fcc77ea1', '2022-02-19 09:30:13', '2022-02-19 09:30:13', NULL);
INSERT INTO "public"."c_user_institutions" VALUES ('95a2cfed-e5ac-4deb-a9da-cb406592455f', '95a2c3bf-493d-4c40-8a25-cb420d4fd087', '95a2cfed-daac-45ab-aaaf-d1a32018f071', '95a2c3bf-4236-48c0-a988-277386e84c58', '2022-02-19 10:04:17', '2022-02-19 10:04:17', NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."failed_jobs";
CREATE TABLE "public"."failed_jobs" (
  "id" int8 NOT NULL DEFAULT nextval('failed_jobs_id_seq'::regclass),
  "uuid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "connection" text COLLATE "pg_catalog"."default" NOT NULL,
  "queue" text COLLATE "pg_catalog"."default" NOT NULL,
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "exception" text COLLATE "pg_catalog"."default" NOT NULL,
  "failed_at" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for file_uploads
-- ----------------------------
DROP TABLE IF EXISTS "public"."file_uploads";
CREATE TABLE "public"."file_uploads" (
  "id" uuid NOT NULL,
  "file_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "file_path" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "collection_type" varchar(255) COLLATE "pg_catalog"."default",
  "mime_type" varchar(255) COLLATE "pg_catalog"."default",
  "file_size" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of file_uploads
-- ----------------------------
INSERT INTO "public"."file_uploads" VALUES ('95a2c417-cd78-4c78-afbd-c8ee5991a23d', '1645263069341.xlsm', 'files/uploads/', 'assesment', 'application/vnd.ms-excel.sheet.macroEnabled.12', '3.725162 MB', '2022-02-19 09:31:11', '2022-02-19 09:31:11', NULL);
INSERT INTO "public"."file_uploads" VALUES ('95a2c44d-766c-4bd4-82e8-1b3d3aca1271', '1645263104781.xlsm', 'files/uploads/', 'assesment', 'application/vnd.ms-excel.sheet.macroEnabled.12', '3.735529 MB', '2022-02-19 09:31:46', '2022-02-19 09:31:46', NULL);
INSERT INTO "public"."file_uploads" VALUES ('95a2c612-503c-4d6c-90c5-17b7fae36b7d', '1645263401654.xlsm', 'files/uploads/', 'assesment', 'application/vnd.ms-excel.sheet.macroEnabled.12', '3.735529 MB', '2022-02-19 09:36:43', '2022-02-19 09:36:43', NULL);
INSERT INTO "public"."file_uploads" VALUES ('95a2c649-ce28-4989-b750-25012695aa78', '1645263437684.xlsm', 'files/uploads/', 'assesment', 'application/vnd.ms-excel.sheet.macroEnabled.12', '3.725162 MB', '2022-02-19 09:37:19', '2022-02-19 09:37:19', NULL);
INSERT INTO "public"."file_uploads" VALUES ('95a2c6fe-b614-455a-abe1-5a5c53b39558', '1645263556220.xlsm', 'files/uploads/', 'assesment', 'application/vnd.ms-excel.sheet.macroEnabled.12', '3.725162 MB', '2022-02-19 09:39:18', '2022-02-19 09:39:18', NULL);
INSERT INTO "public"."file_uploads" VALUES ('95a2d08a-2936-4f0f-87b1-7014287c4ee0', '1645265157604.xlsm', 'files/uploads/', 'assesment', 'application/vnd.ms-excel.sheet.macroEnabled.12', '3.735529 MB', '2022-02-19 10:05:59', '2022-02-19 10:05:59', NULL);
INSERT INTO "public"."file_uploads" VALUES ('95a2d092-8b69-426d-8217-ab23062048c9', '1645265163097.xlsm', 'files/uploads/', 'assesment', 'application/vnd.ms-excel.sheet.macroEnabled.12', '3.725162 MB', '2022-02-19 10:06:05', '2022-02-19 10:06:05', NULL);
INSERT INTO "public"."file_uploads" VALUES ('95a2eae6-9f54-4b92-bdbf-722ce21cac61', '1645269580176.xlsm', 'files/uploads/', 'assesment', 'application/vnd.ms-excel.sheet.macroEnabled.12', '3.735529 MB', '2022-02-19 11:19:42', '2022-02-19 11:19:42', NULL);
INSERT INTO "public"."file_uploads" VALUES ('95a2eaee-27c3-4a68-b5de-fcdffb76ba17', '1645269585255.xlsm', 'files/uploads/', 'assesment', 'application/vnd.ms-excel.sheet.macroEnabled.12', '3.725162 MB', '2022-02-19 11:19:47', '2022-02-19 11:19:47', NULL);
INSERT INTO "public"."file_uploads" VALUES ('95a2faee-8fbb-4535-9cef-04a0a6e42c8e', '1645272269821.xlsm', 'files/uploads/', 'assesment', 'application/vnd.ms-excel.sheet.macroEnabled.12', '3.725162 MB', '2022-02-19 12:04:31', '2022-02-19 12:04:31', NULL);
INSERT INTO "public"."file_uploads" VALUES ('95a884b9-e7bc-4da5-ab09-cd4bf19bbff8', '1645510133048.xlsm', 'files/uploads/', 'assesment', 'application/vnd.ms-excel.sheet.macroEnabled.12', '3.764773 MB', '2022-02-22 06:08:58', '2022-02-22 06:08:58', NULL);

-- ----------------------------
-- Table structure for g_institution_codes
-- ----------------------------
DROP TABLE IF EXISTS "public"."g_institution_codes";
CREATE TABLE "public"."g_institution_codes" (
  "id" int8 NOT NULL DEFAULT nextval('g_institution_codes_id_seq'::regclass),
  "institution_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of g_institution_codes
-- ----------------------------
INSERT INTO "public"."g_institution_codes" VALUES (1, 'Hamill, Kling and Hayes', NULL, NULL);
INSERT INTO "public"."g_institution_codes" VALUES (2, 'Beier-Rolfson', NULL, NULL);

-- ----------------------------
-- Table structure for g_sequence_codes
-- ----------------------------
DROP TABLE IF EXISTS "public"."g_sequence_codes";
CREATE TABLE "public"."g_sequence_codes" (
  "id" int8 NOT NULL DEFAULT nextval('g_sequence_codes_id_seq'::regclass),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of g_sequence_codes
-- ----------------------------

-- ----------------------------
-- Table structure for g_user_codes
-- ----------------------------
DROP TABLE IF EXISTS "public"."g_user_codes";
CREATE TABLE "public"."g_user_codes" (
  "id" int8 NOT NULL DEFAULT nextval('g_user_codes_id_seq'::regclass),
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of g_user_codes
-- ----------------------------
INSERT INTO "public"."g_user_codes" VALUES (1, 'lesch.rachel@example.org', NULL, NULL);
INSERT INTO "public"."g_user_codes" VALUES (2, 'jerde.craig@example.org', NULL, NULL);
INSERT INTO "public"."g_user_codes" VALUES (3, 'zendi@example.com@claudia51@example.net', NULL, NULL);

-- ----------------------------
-- Table structure for m_auth_routes
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_auth_routes";
CREATE TABLE "public"."m_auth_routes" (
  "id" uuid NOT NULL,
  "inst_category" int4 NOT NULL,
  "inst_level" int4 NOT NULL,
  "deleted_at" timestamp(0),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of m_auth_routes
-- ----------------------------
INSERT INTO "public"."m_auth_routes" VALUES ('95a2c3bf-98e1-4749-a16e-3d774cc3435b', 1, 1, NULL, '2022-02-19 09:30:13', '2022-02-19 09:30:13');
INSERT INTO "public"."m_auth_routes" VALUES ('95a2c3bf-9a3e-4676-8934-6d2bc7ea5347', 1, 2, NULL, '2022-02-19 09:30:13', '2022-02-19 09:30:13');
INSERT INTO "public"."m_auth_routes" VALUES ('95a2c3bf-9ad2-4b73-8de8-225207bea29c', 1, 3, NULL, '2022-02-19 09:30:13', '2022-02-19 09:30:13');
INSERT INTO "public"."m_auth_routes" VALUES ('95a2c3bf-9b59-47f7-98b6-29651cae3f7e', 1, 4, NULL, '2022-02-19 09:30:13', '2022-02-19 09:30:13');
INSERT INTO "public"."m_auth_routes" VALUES ('95a2c3bf-9bdd-45cd-a962-6f38b3b901f2', 2, 5, NULL, '2022-02-19 09:30:13', '2022-02-19 09:30:13');
INSERT INTO "public"."m_auth_routes" VALUES ('95a2c3bf-9c61-43ad-98d1-3fbb5fea52af', 2, 6, NULL, '2022-02-19 09:30:13', '2022-02-19 09:30:13');
INSERT INTO "public"."m_auth_routes" VALUES ('95a2c3bf-9ce8-463b-96c5-4e32ec703bd4', 2, 7, NULL, '2022-02-19 09:30:13', '2022-02-19 09:30:13');

-- ----------------------------
-- Table structure for m_code_country
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_code_country";
CREATE TABLE "public"."m_code_country" (
  "id" int4 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "country_code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "iso_code_2" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "iso_code_3" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of m_code_country
-- ----------------------------
INSERT INTO "public"."m_code_country" VALUES (1, 'Afghanistan', '93', 'AF', 'AFG', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (2, 'Albania', '355', 'AL', 'ALB', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (3, 'Algeria', '213', 'DZ', 'DZA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (4, 'American Samoa', '1684', 'AS', 'ASM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (5, 'Andorra', '376', 'AD', 'AND', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (6, 'Angola', '244', 'AO', 'AGO', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (7, 'Anguilla', '1264', 'AI', 'AIA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (8, 'Antarctica', '672', 'AQ', 'ATA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (9, 'Antigua and Barbuda', '1268', 'AG', 'ATG', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (10, 'Argentina', '54', 'AR', 'ARG', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (11, 'Armenia', '374', 'AM', 'ARM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (12, 'Aruba', '297', 'AW', 'ABW', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (13, 'Australia', '61', 'AU', 'AUS', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (14, 'Austria', '43', 'AT', 'AUT', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (15, 'Azerbaijan', '994', 'AZ', 'AZE', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (16, 'Bahamas', '1242', 'BS', 'BHS', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (17, 'Bahrain', '973', 'BH', 'BHR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (18, 'Bangladesh', '880', 'BD', 'BGD', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (19, 'Barbados', '1246', 'BB', 'BRB', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (20, 'Belarus', '375', 'BY', 'BLR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (21, 'Belgium', '32', 'BE', 'BEL', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (22, 'Belize', '501', 'BZ', 'BLZ', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (23, 'Benin', '229', 'BJ', 'BEN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (24, 'Bermuda', '1441', 'BM', 'BMU', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (25, 'Bhutan', '975', 'BT', 'BTN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (26, 'Bolivia', '591', 'BO', 'BOL', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (27, 'Bosnia and Herzegovina', '387', 'BA', 'BIH', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (28, 'Botswana', '267', 'BW', 'BWA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (29, 'Brazil', '55', 'BR', 'BRA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (30, 'British Indian Ocean Territory', '0', 'IO', 'IOT', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (31, 'British Virgin Islands', '1284', 'VG', 'VGB', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (32, 'Brunei', '673', 'BN', 'BRN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (33, 'Bulgaria', '359', 'BG', 'BGR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (34, 'Burkina Faso', '226', 'BF', 'BFA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (35, 'Burma (Myanmar)', '95', 'MM', 'MMR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (36, 'Burundi', '257', 'BI', 'BDI', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (37, 'Cambodia', '855', 'KH', 'KHM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (38, 'Cameroon', '237', 'CM', 'CMR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (39, 'Canada', '1', 'CA', 'CAN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (40, 'Cape Verde', '238', 'CV', 'CPV', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (41, 'Cayman Islands', '1345', 'KY', 'CYM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (42, 'Central African Republic', '236', 'CF', 'CAF', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (43, 'Chad', '235', 'TD', 'TCD', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (44, 'Chile', '56', 'CL', 'CHL', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (45, 'China', '86', 'CN', 'CHN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (46, 'Christmas Island', '61', 'CX', 'CXR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (47, 'Cocos (Keeling) Islands', '61', 'CC', 'CCK', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (48, 'Colombia', '57', 'CO', 'COL', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (49, 'Comoros', '269', 'KM', 'COM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (50, 'Cook Islands', '682', 'CK', 'COK', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (51, 'Costa Rica', '506', 'CR', 'CRC', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (52, 'Croatia', '385', 'HR', 'HRV', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (53, 'Cuba', '53', 'CU', 'CUB', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (54, 'Cyprus', '357', 'CY', 'CYP', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (55, 'Czech Republic', '420', 'CZ', 'CZE', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (56, 'Democratic Republic of the Congo', '243', 'CD', 'COD', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (57, 'Denmark', '45', 'DK', 'DNK', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (58, 'Djibouti', '253', 'DJ', 'DJI', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (59, 'Dominica', '1767', 'DM', 'DMA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (60, 'Dominican Republic', '1809', 'DO', 'DOM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (61, 'Ecuador', '593', 'EC', 'ECU', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (62, 'Egypt', '20', 'EG', 'EGY', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (63, 'El Salvador', '503', 'SV', 'SLV', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (64, 'Equatorial Guinea', '240', 'GQ', 'GNQ', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (65, 'Eritrea', '291', 'ER', 'ERI', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (66, 'Estonia', '372', 'EE', 'EST', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (67, 'Ethiopia', '251', 'ET', 'ETH', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (68, 'Falkland Islands', '500', 'FK', 'FLK', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (69, 'Faroe Islands', '298', 'FO', 'FRO', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (70, 'Fiji', '679', 'FJ', 'FJI', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (71, 'Finland', '358', 'FI', 'FIN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (72, 'France', '33', 'FR', 'FRA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (73, 'French Polynesia', '689', 'PF', 'PYF', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (74, 'Gabon', '241', 'GA', 'GAB', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (75, 'Gambia', '220', 'GM', 'GMB', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (76, 'Gaza Strip', '970', '4', '', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (77, 'Georgia', '995', 'GE', 'GEO', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (78, 'Germany', '49', 'DE', 'DEU', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (79, 'Ghana', '233', 'GH', 'GHA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (80, 'Gibraltar', '350', 'GI', 'GIB', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (81, 'Greece', '30', 'GR', 'GRC', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (82, 'Greenland', '299', 'GL', 'GRL', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (83, 'Grenada', '1473', 'GD', 'GRD', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (84, 'Guam', '1671', 'GU', 'GUM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (85, 'Guatemala', '502', 'GT', 'GTM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (86, 'Guinea', '224', 'GN', 'GIN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (87, 'Guinea-Bissau', '245', 'GW', 'GNB', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (88, 'Guyana', '592', 'GY', 'GUY', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (89, 'Haiti', '509', 'HT', 'HTI', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (90, 'Holy See (Vatican City)', '39', 'VA', 'VAT', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (91, 'Honduras', '504', 'HN', 'HND', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (92, 'Hong Kong', '852', 'HK', 'HKG', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (93, 'Hungary', '36', 'HU', 'HUN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (94, 'Iceland', '354', 'IS', 'IS', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (95, 'India', '91', 'IN', 'IND', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (96, 'Indonesia', '62', 'ID', 'IDN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (97, 'Iran', '98', 'IR', 'IRN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (98, 'Iraq', '964', 'IQ', 'IRQ', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (99, 'Ireland', '353', 'IE', 'IRL', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (100, 'Isle of Man', '44', 'IM', 'IMN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (101, 'Israel', '972', 'IL', 'ISR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (102, 'Italy', '39', 'IT', 'ITA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (103, 'Ivory Coast', '225', 'CI', 'CIV', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (104, 'Jamaica', '1876', 'JM', 'JAM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (105, 'Japan', '81', 'JP', 'JPN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (106, 'Jersey', '0', 'JE', 'JEY', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (107, 'Jordan', '962', 'JO', 'JOR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (108, 'Kazakhstan', '7', 'KZ', 'KAZ', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (109, 'Kenya', '254', 'KE', 'KEN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (110, 'Kiribati', '686', 'KI', 'KIR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (111, 'Kosovo', '381', '3', '', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (112, 'Kuwait', '965', 'KW', 'KWT', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (113, 'Kyrgyzstan', '996', 'KG', 'KGZ', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (114, 'Laos', '856', 'LA', 'LAO', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (115, 'Latvia', '371', 'LV', 'LVA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (116, 'Lebanon', '961', 'LB', 'LBN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (117, 'Lesotho', '266', 'LS', 'LSO', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (118, 'Liberia', '231', 'LR', 'LBR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (119, 'Libya', '218', 'LY', 'LBY', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (120, 'Liechtenstein', '423', 'LI', 'LIE', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (121, 'Lithuania', '370', 'LT', 'LTU', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (122, 'Luxembourg', '352', 'LU', 'LUX', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (123, 'Macau', '853', 'MO', 'MAC', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (124, 'Macedonia', '389', 'MK', 'MKD', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (125, 'Madagascar', '261', 'MG', 'MDG', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (126, 'Malawi', '265', 'MW', 'MWI', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (127, 'Malaysia', '60', 'MY', 'MYS', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (128, 'Maldives', '960', 'MV', 'MDV', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (129, 'Mali', '223', 'ML', 'MLI', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (130, 'Malta', '356', 'MT', 'MLT', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (131, 'Marshall Islands', '692', 'MH', 'MHL', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (132, 'Mauritania', '222', 'MR', 'MRT', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (133, 'Mauritius', '230', 'MU', 'MUS', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (134, 'Mayotte', '262', 'YT', 'MYT', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (135, 'Mexico', '52', 'MX', 'MEX', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (136, 'Micronesia', '691', 'FM', 'FSM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (137, 'Moldova', '373', 'MD', 'MDA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (138, 'Monaco', '377', 'MC', 'MCO', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (139, 'Mongolia', '976', 'MN', 'MNG', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (140, 'Montenegro', '382', 'ME', 'MNE', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (141, 'Montserrat', '1664', 'MS', 'MSR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (142, 'Morocco', '212', 'MA', 'MAR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (143, 'Mozambique', '258', 'MZ', 'MOZ', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (144, 'Namibia', '264', 'NA', 'NAM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (145, 'Nauru', '674', 'NR', 'NRU', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (146, 'Nepal', '977', 'NP', 'NPL', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (147, 'Netherlands', '31', 'NL', 'NLD', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (148, 'Netherlands Antilles', '599', 'AN', 'ANT', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (149, 'New Caledonia', '687', 'NC', 'NCL', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (150, 'New Zealand', '64', 'NZ', 'NZL', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (151, 'Nicaragua', '505', 'NI', 'NIC', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (152, 'Niger', '227', 'NE', 'NER', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (153, 'Nigeria', '234', 'NG', 'NGA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (154, 'Niue', '683', 'NU', 'NIU', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (155, 'Norfolk Island', '672', '1', 'NFK', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (156, 'North Korea', '850', 'KP', 'PRK', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (157, 'Northern Mariana Islands', '1670', 'MP', 'MNP', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (158, 'Norway', '47', 'NO', 'NOR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (159, 'Oman', '968', 'OM', 'OMN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (160, 'Pakistan', '92', 'PK', 'PAK', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (161, 'Palau', '680', 'PW', 'PLW', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (162, 'Panama', '507', 'PA', 'PAN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (163, 'Papua New Guinea', '675', 'PG', 'PNG', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (164, 'Paraguay', '595', 'PY', 'PRY', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (165, 'Peru', '51', 'PE', 'PER', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (166, 'Philippines', '63', 'PH', 'PHL', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (167, 'Pitcairn Islands', '870', 'PN', 'PCN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (168, 'Poland', '48', 'PL', 'POL', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (169, 'Portugal', '351', 'PT', 'PRT', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (170, 'Puerto Rico', '1', 'PR', 'PRI', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (171, 'Qatar', '974', 'QA', 'QAT', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (172, 'Republic of the Congo', '242', 'CG', 'COG', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (173, 'Romania', '40', 'RO', 'ROU', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (174, 'Russia', '7', 'RU', 'RUS', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (175, 'Rwanda', '250', 'RW', 'RWA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (176, 'Saint Barthelemy', '590', 'BL', 'BLM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (177, 'Saint Helena', '290', 'SH', 'SHN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (178, 'Saint Kitts and Nevis', '1869', 'KN', 'KNA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (179, 'Saint Lucia', '1758', 'LC', 'LCA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (180, 'Saint Martin', '1599', 'MF', 'MAF', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (181, 'Saint Pierre and Miquelon', '508', 'PM', 'SPM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (182, 'Saint Vincent and the Grenadines', '1784', 'VC', 'VCT', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (183, 'Samoa', '685', 'WS', 'WSM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (184, 'San Marino', '378', 'SM', 'SMR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (185, 'Sao Tome and Principe', '239', 'ST', 'STP', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (186, 'Saudi Arabia', '966', 'SA', 'SAU', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (187, 'Senegal', '221', 'SN', 'SEN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (188, 'Serbia', '381', 'RS', 'SRB', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (189, 'Seychelles', '248', 'SC', 'SYC', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (190, 'Sierra Leone', '232', 'SL', 'SLE', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (191, 'Singapore', '65', 'SG', 'SGP', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (192, 'Slovakia', '421', 'SK', 'SVK', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (193, 'Slovenia', '386', 'SI', 'SVN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (194, 'Solomon Islands', '677', 'SB', 'SLB', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (195, 'Somalia', '252', 'SO', 'SOM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (196, 'South Africa', '27', 'ZA', 'ZAF', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (197, 'South Korea', '82', 'KR', 'KOR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (198, 'Spain', '34', 'ES', 'ESP', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (199, 'Sri Lanka', '94', 'LK', 'LKA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (200, 'Sudan', '249', 'SD', 'SDN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (201, 'Suriname', '597', 'SR', 'SUR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (202, 'Svalbard', '0', 'SJ', 'SJM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (203, 'Swaziland', '268', 'SZ', 'SWZ', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (204, 'Sweden', '46', 'SE', 'SWE', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (205, 'Switzerland', '41', 'CH', 'CHE', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (206, 'Syria', '963', 'SY', 'SYR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (207, 'Taiwan', '886', 'TW', 'TWN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (208, 'Tajikistan', '992', 'TJ', 'TJK', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (209, 'Tanzania', '255', 'TZ', 'TZA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (210, 'Thailand', '66', 'TH', 'THA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (211, 'Timor-Leste', '670', 'TL', 'TLS', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (212, 'Togo', '228', 'TG', 'TGO', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (213, 'Tokelau', '690', 'TK', 'TKL', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (214, 'Tonga', '676', 'TO', 'TON', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (215, 'Trinidad and Tobago', '1868', 'TT', 'TTO', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (216, 'Tunisia', '216', 'TN', 'TUN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (217, 'Turkey', '90', 'TR', 'TUR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (218, 'Turkmenistan', '993', 'TM', 'TKM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (219, 'Turks and Caicos Islands', '1649', 'TC', 'TCA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (220, 'Tuvalu', '688', 'TV', 'TUV', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (221, 'Uganda', '256', 'UG', 'UGA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (222, 'Ukraine', '380', 'UA', 'UKR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (223, 'United Arab Emirates', '971', 'AE', 'ARE', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (224, 'United Kingdom', '44', 'GB', 'GBR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (225, 'United States', '1', 'US', 'USA', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (226, 'Uruguay', '598', 'UY', 'URY', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (227, 'US Virgin Islands', '1340', 'VI', 'VIR', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (228, 'Uzbekistan', '998', 'UZ', 'UZB', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (229, 'Vanuatu', '678', 'VU', 'VUT', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (230, 'Venezuela', '58', 'VE', 'VEN', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (231, 'Vietnam', '84', 'VN', 'VNM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (232, 'Wallis and Futuna', '681', 'WF', 'WLF', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (233, 'West Bank', '970', '2', '', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (234, 'Western Sahara', '0', 'EH', 'ESH', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (235, 'Yemen', '967', 'YE', 'YEM', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (236, 'Zambia', '260', 'ZM', 'ZMB', '2021-07-24 15:33:49', NULL, NULL);
INSERT INTO "public"."m_code_country" VALUES (237, 'Zimbabwe', '263', 'ZW', 'ZWE', '2021-07-24 15:33:49', NULL, NULL);

-- ----------------------------
-- Table structure for m_code_letters
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_code_letters";
CREATE TABLE "public"."m_code_letters" (
  "id" int4 NOT NULL,
  "first" int4 NOT NULL,
  "last" int4 NOT NULL,
  "suffix" varchar(191) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of m_code_letters
-- ----------------------------
INSERT INTO "public"."m_code_letters" VALUES (1, 0, 99999, '-', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (2, 100000, 199999, 'A', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (3, 200000, 299999, 'B', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (4, 300000, 399999, 'C', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (5, 400000, 499999, 'D', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (6, 500000, 599999, 'E', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (7, 600000, 699999, 'F', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (8, 700000, 799999, 'G', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (9, 800000, 899999, 'H', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (10, 900000, 999999, 'I', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (11, 1000000, 1099999, 'J', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (12, 1100000, 1199999, 'K', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (13, 1200000, 1299999, 'L', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (14, 1300000, 1399999, 'M', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (15, 1400000, 1499999, 'N', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (16, 1500000, 1599999, 'O', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (17, 1600000, 1699999, 'P', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (18, 1700000, 1799999, 'Q', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (19, 1800000, 1899999, 'R', '2019-07-15 21:53:53', NULL, NULL);
INSERT INTO "public"."m_code_letters" VALUES (20, 1900000, 1999999, 'S', '2019-07-15 21:53:53', NULL, NULL);

-- ----------------------------
-- Table structure for m_code_month
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_code_month";
CREATE TABLE "public"."m_code_month" (
  "id" int4 NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "month" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of m_code_month
-- ----------------------------
INSERT INTO "public"."m_code_month" VALUES (1, 'A', 'January', '2021-07-25 13:15:39', NULL, NULL);
INSERT INTO "public"."m_code_month" VALUES (2, 'B', 'February', '2021-07-25 13:15:39', NULL, NULL);
INSERT INTO "public"."m_code_month" VALUES (3, 'C', 'March', '2021-07-25 13:15:39', NULL, NULL);
INSERT INTO "public"."m_code_month" VALUES (4, 'D', 'April', '2021-07-25 13:15:39', NULL, NULL);
INSERT INTO "public"."m_code_month" VALUES (5, 'E', 'May', '2021-07-25 13:15:39', NULL, NULL);
INSERT INTO "public"."m_code_month" VALUES (6, 'F', 'June', '2021-07-25 13:15:39', NULL, NULL);
INSERT INTO "public"."m_code_month" VALUES (7, 'G', 'July', '2021-07-25 13:15:39', NULL, NULL);
INSERT INTO "public"."m_code_month" VALUES (8, 'H', 'August', '2021-07-25 13:15:39', NULL, NULL);
INSERT INTO "public"."m_code_month" VALUES (9, 'I', 'September', '2021-07-25 13:15:39', NULL, NULL);
INSERT INTO "public"."m_code_month" VALUES (10, 'J', 'October', '2021-07-25 13:15:39', NULL, NULL);
INSERT INTO "public"."m_code_month" VALUES (11, 'K', 'November', '2021-07-25 13:15:39', NULL, NULL);
INSERT INTO "public"."m_code_month" VALUES (12, 'L', 'December', '2021-07-25 13:15:39', NULL, NULL);

-- ----------------------------
-- Table structure for m_code_roman
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_code_roman";
CREATE TABLE "public"."m_code_roman" (
  "id" int4 NOT NULL,
  "first" int4 NOT NULL,
  "last" int4 NOT NULL,
  "suffix" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of m_code_roman
-- ----------------------------
INSERT INTO "public"."m_code_roman" VALUES (1, 0, 99999, '-', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (2, 100000, 199999, 'I', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (3, 200000, 299999, 'II', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (4, 300000, 399999, 'III', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (5, 400000, 499999, 'IV', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (6, 500000, 599999, 'V', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (7, 600000, 699999, 'VI', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (8, 700000, 799999, 'VII', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (9, 800000, 899999, 'VIII', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (10, 900000, 999999, 'IX', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (11, 1000000, 1099999, 'X', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (12, 1100000, 1199999, 'XI', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (13, 1200000, 1299999, 'XII', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (14, 1300000, 1399999, 'XIII', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (15, 1400000, 1499999, 'XIV', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (16, 1500000, 1599999, 'XV', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (17, 1600000, 1699999, 'XVI', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (18, 1700000, 1799999, 'XVII', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (19, 1800000, 1899999, 'XVIII', '2019-07-16 04:53:53', NULL, NULL);
INSERT INTO "public"."m_code_roman" VALUES (20, 1900000, 1999999, 'XIX', '2019-07-16 04:53:53', NULL, NULL);

-- ----------------------------
-- Table structure for m_code_suffix
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_code_suffix";
CREATE TABLE "public"."m_code_suffix" (
  "id" int4 NOT NULL,
  "sequence" int4,
  "suffix" varchar(10) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of m_code_suffix
-- ----------------------------
INSERT INTO "public"."m_code_suffix" VALUES (1, 100000, 'A');
INSERT INTO "public"."m_code_suffix" VALUES (2, 200000, 'B');
INSERT INTO "public"."m_code_suffix" VALUES (3, 300000, 'C');
INSERT INTO "public"."m_code_suffix" VALUES (4, 400000, 'D');
INSERT INTO "public"."m_code_suffix" VALUES (5, 500000, 'E');
INSERT INTO "public"."m_code_suffix" VALUES (6, 600000, 'F');
INSERT INTO "public"."m_code_suffix" VALUES (7, 700000, 'G');
INSERT INTO "public"."m_code_suffix" VALUES (8, 800000, 'H');
INSERT INTO "public"."m_code_suffix" VALUES (9, 900000, 'I');
INSERT INTO "public"."m_code_suffix" VALUES (10, 1000000, 'J');
INSERT INTO "public"."m_code_suffix" VALUES (11, 1100000, 'K');
INSERT INTO "public"."m_code_suffix" VALUES (12, 1200000, 'L');
INSERT INTO "public"."m_code_suffix" VALUES (13, 1300000, 'M');
INSERT INTO "public"."m_code_suffix" VALUES (14, 1400000, 'N');
INSERT INTO "public"."m_code_suffix" VALUES (15, 1500000, 'O');
INSERT INTO "public"."m_code_suffix" VALUES (16, 1600000, 'P');
INSERT INTO "public"."m_code_suffix" VALUES (17, 1700000, 'Q');
INSERT INTO "public"."m_code_suffix" VALUES (18, 1800000, 'R');
INSERT INTO "public"."m_code_suffix" VALUES (19, 1900000, 'S');
INSERT INTO "public"."m_code_suffix" VALUES (20, 2000000, 'T');
INSERT INTO "public"."m_code_suffix" VALUES (21, 2100000, 'U');
INSERT INTO "public"."m_code_suffix" VALUES (22, 2200000, 'V');
INSERT INTO "public"."m_code_suffix" VALUES (23, 2300000, 'W');
INSERT INTO "public"."m_code_suffix" VALUES (24, 2400000, 'X');
INSERT INTO "public"."m_code_suffix" VALUES (25, 2500000, 'Y');
INSERT INTO "public"."m_code_suffix" VALUES (26, 2600000, 'Z');

-- ----------------------------
-- Table structure for m_code_year
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_code_year";
CREATE TABLE "public"."m_code_year" (
  "id" int4 NOT NULL,
  "code" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "year" int4 NOT NULL,
  "created_at" timestamp(6),
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;

-- ----------------------------
-- Records of m_code_year
-- ----------------------------
INSERT INTO "public"."m_code_year" VALUES (1, 'A', 2021, '2021-07-25 13:34:20', NULL, NULL);
INSERT INTO "public"."m_code_year" VALUES (2, 'B', 2022, '2021-07-25 13:34:20', NULL, NULL);
INSERT INTO "public"."m_code_year" VALUES (3, 'C', 2023, '2021-07-25 13:34:20', NULL, NULL);
INSERT INTO "public"."m_code_year" VALUES (4, 'D', 2024, '2021-07-25 13:34:20', NULL, NULL);
INSERT INTO "public"."m_code_year" VALUES (5, 'E', 2025, '2021-07-25 13:34:20', NULL, NULL);
INSERT INTO "public"."m_code_year" VALUES (6, 'F', 2026, '2021-07-25 13:34:20', NULL, NULL);
INSERT INTO "public"."m_code_year" VALUES (7, 'G', 2027, '2021-07-25 13:34:20', NULL, NULL);
INSERT INTO "public"."m_code_year" VALUES (8, 'H', 2028, '2021-07-25 13:34:20', NULL, NULL);
INSERT INTO "public"."m_code_year" VALUES (9, 'I', 2029, '2021-07-25 13:34:20', NULL, NULL);
INSERT INTO "public"."m_code_year" VALUES (10, 'J', 2030, '2021-07-25 13:34:20', NULL, NULL);
INSERT INTO "public"."m_code_year" VALUES (11, 'K', 2031, '2021-07-25 13:34:20', NULL, NULL);

-- ----------------------------
-- Table structure for m_feature_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_feature_permissions";
CREATE TABLE "public"."m_feature_permissions" (
  "id" int8 NOT NULL DEFAULT nextval('m_feature_permissions_id_seq'::regclass),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of m_feature_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for m_features
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_features";
CREATE TABLE "public"."m_features" (
  "id" int8 NOT NULL DEFAULT nextval('m_features_id_seq'::regclass),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of m_features
-- ----------------------------

-- ----------------------------
-- Table structure for m_features_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_features_permissions";
CREATE TABLE "public"."m_features_permissions" (
  "id" int8 NOT NULL DEFAULT nextval('m_features_permissions_id_seq'::regclass),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of m_features_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for m_institution_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_institution_categories";
CREATE TABLE "public"."m_institution_categories" (
  "id" int8 NOT NULL DEFAULT nextval('m_institution_categories_id_seq'::regclass),
  "category" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of m_institution_categories
-- ----------------------------
INSERT INTO "public"."m_institution_categories" VALUES (1, 'Education', '2022-02-19 09:30:13', NULL);
INSERT INTO "public"."m_institution_categories" VALUES (2, 'Industry', '2022-02-19 09:30:13', NULL);

-- ----------------------------
-- Table structure for m_institution_levels
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_institution_levels";
CREATE TABLE "public"."m_institution_levels" (
  "id" int8 NOT NULL DEFAULT nextval('m_institution_levels_id_seq'::regclass),
  "level" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "institution_category_id" int4 NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of m_institution_levels
-- ----------------------------
INSERT INTO "public"."m_institution_levels" VALUES (1, 'University', 1, '2022-02-19 09:30:13', NULL);
INSERT INTO "public"."m_institution_levels" VALUES (2, 'Senior High School', 1, '2022-02-19 09:30:13', NULL);
INSERT INTO "public"."m_institution_levels" VALUES (3, 'Junior High School', 1, '2022-02-19 09:30:13', NULL);
INSERT INTO "public"."m_institution_levels" VALUES (4, 'Elementary School', 1, '2022-02-19 09:30:13', NULL);
INSERT INTO "public"."m_institution_levels" VALUES (5, '(1 - 100) Employees', 2, '2022-02-19 09:30:13', NULL);
INSERT INTO "public"."m_institution_levels" VALUES (6, '(100 - 200) Employees', 2, '2022-02-19 09:30:13', NULL);
INSERT INTO "public"."m_institution_levels" VALUES (7, '(200 - 300) Employees', 2, '2022-02-19 09:30:13', NULL);

-- ----------------------------
-- Table structure for m_package_features
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_package_features";
CREATE TABLE "public"."m_package_features" (
  "id" int8 NOT NULL DEFAULT nextval('m_package_features_id_seq'::regclass),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of m_package_features
-- ----------------------------

-- ----------------------------
-- Table structure for m_package_prices
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_package_prices";
CREATE TABLE "public"."m_package_prices" (
  "id" int8 NOT NULL DEFAULT nextval('m_package_prices_id_seq'::regclass),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of m_package_prices
-- ----------------------------

-- ----------------------------
-- Table structure for m_packages
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_packages";
CREATE TABLE "public"."m_packages" (
  "id" int8 NOT NULL DEFAULT nextval('m_packages_id_seq'::regclass),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of m_packages
-- ----------------------------

-- ----------------------------
-- Table structure for m_permission_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_permission_categories";
CREATE TABLE "public"."m_permission_categories" (
  "id" int8 NOT NULL DEFAULT nextval('m_permission_categories_id_seq'::regclass),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of m_permission_categories
-- ----------------------------

-- ----------------------------
-- Table structure for media
-- ----------------------------
DROP TABLE IF EXISTS "public"."media";
CREATE TABLE "public"."media" (
  "id" uuid NOT NULL,
  "model_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "model_id" uuid NOT NULL,
  "uuid" uuid,
  "collection_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "file_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "mime_type" varchar(255) COLLATE "pg_catalog"."default",
  "size" int8,
  "generated_conversions" json,
  "disk" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "conversions_disk" varchar(255) COLLATE "pg_catalog"."default",
  "manipulations" json NOT NULL,
  "custom_properties" json NOT NULL,
  "responsive_images" json NOT NULL,
  "order_column" int4,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of media
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."migrations";
CREATE TABLE "public"."migrations" (
  "id" int4 NOT NULL DEFAULT nextval('migrations_id_seq'::regclass),
  "migration" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "batch" int4 NOT NULL
)
;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO "public"."migrations" VALUES (977, '2021_12_09_104747_create_c11_assesment_files_table', 2);
INSERT INTO "public"."migrations" VALUES (978, '2021_12_19_033613_create_c11_m_faculties_table', 2);
INSERT INTO "public"."migrations" VALUES (979, '2021_12_19_070346_create_c11_c_faculties_table', 2);
INSERT INTO "public"."migrations" VALUES (980, '2021_12_20_064219_create_c11_m_departments_table', 2);
INSERT INTO "public"."migrations" VALUES (981, '2021_12_20_064223_create_c11_c_departments_table', 2);
INSERT INTO "public"."migrations" VALUES (982, '2021_12_20_064318_create_c11_m_lectures_table', 2);
INSERT INTO "public"."migrations" VALUES (983, '2021_12_20_064406_create_c11_g_lecture_seqs_table', 2);
INSERT INTO "public"."migrations" VALUES (984, '2021_12_20_064534_create_c11_m_lecturers_table', 2);
INSERT INTO "public"."migrations" VALUES (985, '2021_12_20_065719_create_c11_m_curricullums_table', 2);
INSERT INTO "public"."migrations" VALUES (986, '2021_12_21_042025_create_c11_c_department_curricula_table', 2);
INSERT INTO "public"."migrations" VALUES (987, '2021_12_21_042047_create_c11_c_department_lecturers_table', 2);
INSERT INTO "public"."migrations" VALUES (988, '2021_12_21_042130_create_c11_c_department_collegers_table', 2);
INSERT INTO "public"."migrations" VALUES (989, '2021_12_21_042153_create_c11_m_collegers_table', 2);
INSERT INTO "public"."migrations" VALUES (990, '2021_12_21_052552_create_c11_m_lecture_categories_table', 2);
INSERT INTO "public"."migrations" VALUES (991, '2021_12_21_053632_create_c11_m_cpls_table', 2);
INSERT INTO "public"."migrations" VALUES (992, '2021_12_21_053640_create_c11_c_curriculum_cpls_table', 2);
INSERT INTO "public"."migrations" VALUES (993, '2021_12_21_053654_create_c11_c_curriculum_lectures_table', 2);
INSERT INTO "public"."migrations" VALUES (994, '2021_12_21_053709_create_c11_c_lectures_cpmks_table', 2);
INSERT INTO "public"."migrations" VALUES (995, '2021_12_21_053716_create_c11_m_cpmks_table', 2);
INSERT INTO "public"."migrations" VALUES (996, '2021_12_25_081645_create_c11_m_course_works_table', 2);
INSERT INTO "public"."migrations" VALUES (997, '2021_12_25_081707_create_c11_m_course_work_details_table', 2);
INSERT INTO "public"."migrations" VALUES (998, '2021_12_25_101537_create_c11_c_cpls_table', 2);
INSERT INTO "public"."migrations" VALUES (999, '2021_12_27_044630_create_c11_c_lecture_classes_table', 2);
INSERT INTO "public"."migrations" VALUES (1000, '2021_12_27_044636_create_c11_c_lecture_collegers_table', 2);
INSERT INTO "public"."migrations" VALUES (1001, '2022_01_03_051234_create_c11_c_lecture_cpls_table', 2);
INSERT INTO "public"."migrations" VALUES (1002, '2022_01_03_053627_create_c11_c_lecture_course_works_table', 2);
INSERT INTO "public"."migrations" VALUES (1003, '2022_01_03_053952_create_c11_c_lecture_course_work_cpls_table', 2);
INSERT INTO "public"."migrations" VALUES (1004, '2022_01_03_053957_create_c11_c_lecture_course_work_cpmks_table', 2);
INSERT INTO "public"."migrations" VALUES (1005, '2022_01_18_041045_create_c11_m_course_work_marks_table', 2);
INSERT INTO "public"."migrations" VALUES (1006, '2022_01_20_112022_create_c11_c_lecture_marks_collegers_table', 2);
INSERT INTO "public"."migrations" VALUES (1007, '2022_01_21_055010_create_c11_c_lecture_total_marks_collegers_table', 2);
INSERT INTO "public"."migrations" VALUES (797, '2014_10_12_000000_create_users_table', 1);
INSERT INTO "public"."migrations" VALUES (798, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO "public"."migrations" VALUES (799, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1);
INSERT INTO "public"."migrations" VALUES (800, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO "public"."migrations" VALUES (801, '2020_11_07_031318_create_permission_tables', 1);
INSERT INTO "public"."migrations" VALUES (802, '2021_02_16_174209_create_media_table', 1);
INSERT INTO "public"."migrations" VALUES (803, '2021_10_27_130359_create_sessions_table', 1);
INSERT INTO "public"."migrations" VALUES (804, '2021_11_23_072508_create_file_uploads_table', 1);
INSERT INTO "public"."migrations" VALUES (805, '2021_11_25_023402_create_g_institution_codes_table', 1);
INSERT INTO "public"."migrations" VALUES (806, '2021_11_25_023415_create_g_user_codes_table', 1);
INSERT INTO "public"."migrations" VALUES (807, '2021_11_25_023437_create_m_features_table', 1);
INSERT INTO "public"."migrations" VALUES (808, '2021_11_25_023503_create_m_features_permissions_table', 1);
INSERT INTO "public"."migrations" VALUES (809, '2021_11_25_023528_create_m_institution_categories_table', 1);
INSERT INTO "public"."migrations" VALUES (810, '2021_11_25_023543_create_m_institution_levels_table', 1);
INSERT INTO "public"."migrations" VALUES (811, '2021_11_25_023557_create_m_package_prices_table', 1);
INSERT INTO "public"."migrations" VALUES (812, '2021_11_25_023614_create_m_packages_table', 1);
INSERT INTO "public"."migrations" VALUES (813, '2021_11_25_023630_create_m_package_features_table', 1);
INSERT INTO "public"."migrations" VALUES (814, '2021_11_25_023705_create_m_feature_permissions_table', 1);
INSERT INTO "public"."migrations" VALUES (815, '2021_11_25_023744_create_m_permission_categories_table', 1);
INSERT INTO "public"."migrations" VALUES (816, '2021_11_25_131740_create_c_user_institutions_table', 1);
INSERT INTO "public"."migrations" VALUES (817, '2021_11_26_024610_create_a_institutions_table', 1);
INSERT INTO "public"."migrations" VALUES (818, '2021_11_26_024901_create_a_institution_packages_table', 1);
INSERT INTO "public"."migrations" VALUES (819, '2021_11_26_025259_create_a_institution_packages_details_table', 1);
INSERT INTO "public"."migrations" VALUES (820, '2021_12_03_112154_create_g_sequence_codes_table', 1);
INSERT INTO "public"."migrations" VALUES (821, '2021_12_09_033406_create_m_auth_routes_table', 1);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."model_has_permissions";
CREATE TABLE "public"."model_has_permissions" (
  "permission_id" uuid NOT NULL,
  "model_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "model_id" uuid NOT NULL
)
;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."model_has_roles";
CREATE TABLE "public"."model_has_roles" (
  "role_id" uuid NOT NULL,
  "model_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "model_id" uuid NOT NULL
)
;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO "public"."model_has_roles" VALUES ('95a2c3be-ee42-463a-a902-1fb13dad580b', 'App\Models\User', '95a2c3bf-4236-48c0-a988-277386e84c58');
INSERT INTO "public"."model_has_roles" VALUES ('95a2c3bf-4ed5-4180-8ff2-14dc52544626', 'App\Models\User', '95a2c3bf-88b1-4fc9-a660-f272fcc77ea1');
INSERT INTO "public"."model_has_roles" VALUES ('95a2c3bf-4ed5-4180-8ff2-14dc52544626', 'App\Models\User', '95a2cfed-daac-45ab-aaaf-d1a32018f071');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS "public"."password_resets";
CREATE TABLE "public"."password_resets" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0)
)
;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."permissions";
CREATE TABLE "public"."permissions" (
  "id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "guard_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "m_institution_categories_id" varchar(255) COLLATE "pg_catalog"."default",
  "a_institutions_id" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO "public"."permissions" VALUES ('95a2c3be-0fca-4cb5-b1a6-e5f1e3da4e24', 'view_users', 'web', NULL, NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-12cc-4d45-98c9-464867b31389', 'add_users', 'web', NULL, NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-13b2-43d6-9df2-34ee07db54ee', 'edit_users', 'web', NULL, NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-1458-40b0-86ec-f46ff43a664a', 'delete_users', 'web', NULL, NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-14ef-492d-bce3-f55fb97a0397', 'view_roles', 'web', NULL, NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-1591-4325-a41a-a3aecf7c7570', 'add_roles', 'web', NULL, NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-162d-4cc6-a0a7-62968c96f219', 'edit_roles', 'web', NULL, NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-16c8-4a6b-8587-bca75cbc9909', 'delete_roles', 'web', NULL, NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-1763-4798-b052-2fee141a68c3', 'view_assesment', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-180a-46bf-850b-b5ace7fe3950', 'add_assesment', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-18b3-4d9d-a67d-22e0f24c5312', 'edit_assesment', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-1985-4fec-95dd-c98e766158b1', 'delete_assesment', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-1a1f-4d86-a77e-1eec0c36a963', 'download_assesment', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-1ab2-4c3c-b49d-50295743e16f', 'upload_assesment', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-1b44-41ab-8618-7c1e066cfaf3', 'view_recap_assesment', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-1bd5-43b7-87e1-3976a3e03db0', 'add_recap_assesment', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-1c6c-40d0-8128-138a6883d680', 'edit_recap_assesment', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-1d36-4386-9e33-1fa8cb444472', 'delete_recap_assesment', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-1e0d-436c-9d26-ae71ed9eb55e', 'download_recap_assesment', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-1edb-4c7e-9687-2b38afa295e0', 'upload_recap_assesment', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-1f9c-4b72-8066-ac9062c13446', 'view_curriculum', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-204e-40e0-ad9f-91698fd42e44', 'add_curriculum', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-2119-4666-b6f5-f5e168331db9', 'edit_curriculum', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-21d2-4d42-830d-be4b5db411dd', 'delete_curriculum', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');
INSERT INTO "public"."permissions" VALUES ('95a2c3be-2281-4a89-af05-e089088e46e3', 'download_curriculum', 'web', '1', NULL, '2022-02-19 09:30:12', '2022-02-19 09:30:12');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."role_has_permissions";
CREATE TABLE "public"."role_has_permissions" (
  "permission_id" uuid NOT NULL,
  "role_id" uuid NOT NULL
)
;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-0fca-4cb5-b1a6-e5f1e3da4e24', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-12cc-4d45-98c9-464867b31389', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-13b2-43d6-9df2-34ee07db54ee', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1458-40b0-86ec-f46ff43a664a', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-14ef-492d-bce3-f55fb97a0397', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1591-4325-a41a-a3aecf7c7570', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-162d-4cc6-a0a7-62968c96f219', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-16c8-4a6b-8587-bca75cbc9909', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1763-4798-b052-2fee141a68c3', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-180a-46bf-850b-b5ace7fe3950', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-18b3-4d9d-a67d-22e0f24c5312', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1985-4fec-95dd-c98e766158b1', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1a1f-4d86-a77e-1eec0c36a963', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1ab2-4c3c-b49d-50295743e16f', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1b44-41ab-8618-7c1e066cfaf3', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1bd5-43b7-87e1-3976a3e03db0', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1c6c-40d0-8128-138a6883d680', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1d36-4386-9e33-1fa8cb444472', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1e0d-436c-9d26-ae71ed9eb55e', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1edb-4c7e-9687-2b38afa295e0', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1f9c-4b72-8066-ac9062c13446', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-204e-40e0-ad9f-91698fd42e44', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-2119-4666-b6f5-f5e168331db9', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-21d2-4d42-830d-be4b5db411dd', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-2281-4a89-af05-e089088e46e3', '95a2c3be-ee42-463a-a902-1fb13dad580b');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1763-4798-b052-2fee141a68c3', '95a2c3bf-4ed5-4180-8ff2-14dc52544626');
INSERT INTO "public"."role_has_permissions" VALUES ('95a2c3be-1b44-41ab-8618-7c1e066cfaf3', '95a2c3bf-4ed5-4180-8ff2-14dc52544626');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."roles";
CREATE TABLE "public"."roles" (
  "id" uuid NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "a_institutions_id" varchar(255) COLLATE "pg_catalog"."default",
  "guard_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO "public"."roles" VALUES ('95a2c3be-ee42-463a-a902-1fb13dad580b', 'Admin', NULL, 'web', '2022-02-19 09:30:13', '2022-02-19 09:30:13');
INSERT INTO "public"."roles" VALUES ('95a2c3bf-4ed5-4180-8ff2-14dc52544626', 'User', NULL, 'web', '2022-02-19 09:30:13', '2022-02-19 09:30:13');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS "public"."sessions";
CREATE TABLE "public"."sessions" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8,
  "ip_address" varchar(45) COLLATE "pg_catalog"."default",
  "user_agent" text COLLATE "pg_catalog"."default",
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "last_activity" int4 NOT NULL
)
;

-- ----------------------------
-- Records of sessions
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" uuid NOT NULL,
  "user_code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email_verified_at" timestamp(0),
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "avatar" text COLLATE "pg_catalog"."default" NOT NULL,
  "remember_token" varchar(100) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "two_factor_secret" text COLLATE "pg_catalog"."default",
  "two_factor_recovery_codes" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES ('95a2cfed-daac-45ab-aaaf-d1a32018f071', 'ZE00003BB', 'Zendi Iklima', 'zendi@tisla.com', NULL, '$2y$10$obFi7IuOgzW60JyOsI.UNO00nOWmFAgt7T7e8wCRBCGhrBo3ST4dW', '/images/default-avatar.png', NULL, '2022-02-19 10:04:17', '2022-02-19 10:04:17', NULL, NULL);
INSERT INTO "public"."users" VALUES ('95a2c3bf-4236-48c0-a988-277386e84c58', 'LE00001BB', 'Alysson Braun', 'admin@tisla.com', '2022-02-19 09:30:13', '$2y$10$Ab9hlYw6Jq4LXiVIe16LierPUJmm.6nsI.8tteRGbjpNJnqTxmKjm', '/images/default-avatar.png', 'TPMvQh2skjWXVlt7ShKUr5WVtiThiJ2ExCw4JsK7lbYoqNsjiOD0QadtR3oJ', '2022-02-19 09:30:13', '2022-02-19 09:30:13', NULL, NULL);
INSERT INTO "public"."users" VALUES ('95a2c3bf-88b1-4fc9-a660-f272fcc77ea1', 'JE00002BB', 'Cristopher Willms', 'user@tisla.com', '2022-02-19 09:30:13', '$2y$10$BjQyORnDXdE1GpMlf4I12.fAj0sKVszr5ZwMkZ2x3BHzrNa2QXbwS', '/images/default-avatar.png', 'FfF26hz6eJnBMSio1nebmnh86iOMRFUehgQltoEPXnCtsLcDNX2Nf4wU9IYR', '2022-02-19 09:30:13', '2022-02-19 09:30:13', NULL, NULL);

-- ----------------------------
-- Function structure for assesment_by_file_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."assesment_by_file_id"("created_by" varchar, "file_id" varchar);
CREATE OR REPLACE FUNCTION "public"."assesment_by_file_id"("created_by" varchar, "file_id" varchar)
  RETURNS TABLE("assement_file_id" varchar, "file_name" varchar, "is_rendered" int2, "faculty_name" varchar, "department_name" varchar, "lecture_id" varchar, "lecture_code" varchar, "lecture_name" varchar, "level_marks" varchar, "semester" varchar, "lecturer_name" varchar, "lecturer_nidn" varchar, "created_at" timestamp) AS $BODY$
	
BEGIN
	RETURN QUERY
			select 
				clc.assement_file_id::varchar,
				fu.file_name,
				af.is_rendered::int2,
				mfc."name" as "faculty_name",
				mdp."name" as "department_name",
				mlc."id"::varchar as "lecture_id",
				mlc.code as "lecture_code",
				mlc."name" as "lecture_name",
				mlc.level_marks,
				mlc.semester,
				mlcr."name" as "lecturer_name",
				mlcr.nidn	 as "lecturer_nidn",
				af.created_at
			from c11_c_lecture_classes as clc
			
			inner join c11_m_lectures as mlc
						on clc.m_lecture_id = mlc."id"
						
			inner join c11_m_lecturers as mlcr
						on clc.m_lecturer_id = mlcr."id"
						
			inner join c11_m_departments as mdp
						on clc.m_department_id = mdp."id"
						
			inner join c11_m_faculties as mfc
						on clc.m_faculty_id = mfc."id"
						
			inner join c11_assesment_files as af
						on af.file_id = clc.assement_file_id
						
			inner join file_uploads as fu
			
						on fu."id" = af.file_id
			where af.is_rendered = 1
						and af.created_by::varchar = $1
						and clc.assement_file_id::varchar = $2
						
			group by af.created_at, clc.assement_file_id, mlc."id",
							 fu.file_name, af.is_rendered, mfc."name", 
							 mdp."name", mlc.code, mlc."name",
							 mlc.level_marks, mlc.semester, 
							 mlcr."name", mlcr.nidn	
			order by af.created_at, fu.file_name, mfc."name", 
							 af.is_rendered, mdp."name", mlc.code, mlc."name",
							 mlc.level_marks, mlc.semester, 
							 mlcr."name", mlcr.nidn	asc;
				 
END
$BODY$
  LANGUAGE plpgsql STABLE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for course_work_marks
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."course_work_marks"("c_lecture_class_id" varchar);
CREATE OR REPLACE FUNCTION "public"."course_work_marks"("c_lecture_class_id" varchar)
  RETURNS TABLE("cw_id" varchar, "cw_name" varchar, "cw_description" text, "marks" int4) AS $BODY$
	
	
	BEGIN
		RETURN QUERY
				select
					mcw."id"::varchar as cw_id,
					mcw."name" as cw_name,
					mcw.description as cw_description,
					mcm.marks
				from c11_c_lecture_course_works as clcw
						 inner join c11_m_course_works as mcw 
									 on clcw.m_course_works_id = mcw."id"
									 
						 inner join c11_m_course_work_marks as mcm
									 on clcw.m_course_work_marks_id = mcm."id"
									 
						 inner join c11_c_lecture_classes as clc
									 on clc."id" = clcw.c_lecture_class_id
				where clcw.c_lecture_class_id::varchar = $1
				group by 	mcw."id", mcw."name", mcw.description, mcm.marks
				order by mcw."name", mcw.description;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for cpl_list_by_course_work_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cpl_list_by_course_work_id"("clec_id" varchar, "cw_id" varchar);
CREATE OR REPLACE FUNCTION "public"."cpl_list_by_course_work_id"("clec_id" varchar, "cw_id" varchar)
  RETURNS TABLE("cpl_id" varchar, "cpl_name" varchar, "cpl_description" text) AS $BODY$
	
	BEGIN
		RETURN QUERY
			SELECT
			  mc."id"::varchar as cpl_id,
				mc."name" as cpl_name,
				mc.description as cpl_description
			FROM c11_c_lecture_course_work_cpls as clcwc
					INNER JOIN c11_m_course_work_details as mcwd
							ON clcwc.m_cw_detail_id = mcwd."id"
					INNER JOIN c11_m_cpls as mc
							ON mc."id" = clcwc.m_cpl_id
			WHERE mcwd.m_course_works_id::varchar = $2
			      AND clcwc.c_lecture_class_id::varchar = $1
			GROUP BY mc."name", mc.description, mc."id";
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for cpmk_list_by_course_work_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cpmk_list_by_course_work_id"("clec_id" varchar, "cw_id" varchar);
CREATE OR REPLACE FUNCTION "public"."cpmk_list_by_course_work_id"("clec_id" varchar, "cw_id" varchar)
  RETURNS TABLE("cpmk_id" varchar, "cpmk_name" varchar, "description" text) AS $BODY$
	
	
	BEGIN
		RETURN QUERY
			SELECT
			  mc."id"::varchar as cpmk_id,
				mc."name" as cpmk_name,
				mc.description
			FROM c11_c_lecture_course_work_cpmks as clcwc
					INNER JOIN c11_m_course_work_details as mcwd
							ON clcwc.m_cw_detail_id = mcwd."id"
					INNER JOIN c11_m_cpmks as mc
							ON mc."id" = clcwc.m_cpmk_id
			WHERE mcwd.m_course_works_id::varchar = $2
			      AND clcwc.c_lecture_class_id::varchar = $1
			GROUP BY mc."name", mc.description, mc."id";
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for cqi_stat_grades
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."cqi_stat_grades"("c_lecture_class_id" varchar);
CREATE OR REPLACE FUNCTION "public"."cqi_stat_grades"("c_lecture_class_id" varchar)
  RETURNS TABLE("grade" varchar, "total_grade" int8) AS $BODY$
	
	BEGIN
		RETURN QUERY 
				select 
					grade_ as grade ,
					count(stat_grade.grade_) as grade_stat
				from (

					SELECT
					*,
					case 
						when marks.final_marks >= 80 then 'A'::varchar
						when marks.final_marks >= 74 then 'B+'::varchar
						when marks.final_marks >= 68 then 'B'::varchar
						when marks.final_marks >= 62 then 'C+'::varchar
						when marks.final_marks >= 56 then 'C'::varchar
						when marks.final_marks >= 45 then 'D'::varchar
						else 'E'::varchar
						end as grade_
					FROM (	
							SELECT 
									mclg.nim,
									mclg."name" as "student_name",
									SUM(mcm.marks*clmc.student_total_marks/100) as "final_marks"
									
							FROM c11_c_lecture_course_works as clcw
								
									INNER JOIN c11_m_course_works as mcw 
												ON clcw.m_course_works_id = mcw."id"
															
									INNER JOIN c11_m_course_work_marks as mcm 
												ON clcw.m_course_work_marks_id = mcm."id"
											
									INNER JOIN c11_c_lecture_total_marks_collegers as clmc
												ON clcw.m_course_works_id = clmc.m_course_works_id
													 AND clcw.c_lecture_class_id = clmc.c_lecture_class_id
												
									INNER JOIN c11_m_collegers as mclg
												ON clmc.m_colleger_id = mclg."id"
							WHERE clcw.c_lecture_class_id::varchar = $1
							GROUP BY mclg.nim, mclg."name"
							ORDER BY mclg.nim, mclg."name" ASC
					) as  marks
				) as stat_grade
				GROUP BY stat_grade.grade_;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for dynamic_pivot
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."dynamic_pivot"("central_query" text, "headers_query" text);
CREATE OR REPLACE FUNCTION "public"."dynamic_pivot"("central_query" text, "headers_query" text)
  RETURNS "pg_catalog"."refcursor" AS $BODY$
	
	DECLARE
		left_column text;
		header_column text;
		value_column text;
		h_value text;
		headers_clause text;
		query text;
		j json;
		r record;
		curs refcursor;
		i int:=1;
	
	BEGIN
			-- find the column names of the source query
			EXECUTE 'select row_to_json(_r.*) from (' ||  central_query || ') AS _r' into j;
			FOR r in SELECT * FROM json_each_text(j)
			LOOP
				IF (i=1) THEN left_column := r.key;
					ELSEIF (i=2) THEN header_column := r.key;
					ELSEIF (i=3) THEN value_column := r.key;
				END IF;
				i := i+1;
			END LOOP;

			--  build the dynamic transposition query (based on the canonical model)
			FOR h_value in EXECUTE headers_query
			LOOP
				headers_clause := concat(headers_clause,
				 format(chr(10)||',min(case when %I=%L then %I::text end) as %I',
							 header_column,
				 h_value,
				 value_column,
				 h_value ));
			END LOOP;

			query := format('SELECT %I %s FROM (select *,row_number() over() as rn from (%s) AS _c) as _d GROUP BY %I order by min(rn)',
							 left_column,
				 headers_clause,
				 central_query,
				 left_column);

	-- open the cursor so the caller can FETCH right away
	OPEN curs FOR execute query;
  RETURN curs;
	
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for last_uploaded_assesment_file
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."last_uploaded_assesment_file"("created_by" varchar, "file_id" varchar);
CREATE OR REPLACE FUNCTION "public"."last_uploaded_assesment_file"("created_by" varchar, "file_id" varchar)
  RETURNS TABLE("assement_file_id" varchar, "file_name" varchar, "is_rendered" int2, "faculty_name" varchar, "department_name" varchar, "lecture_id" varchar, "lecture_code" varchar, "lecture_name" varchar, "level_marks" varchar, "semester" varchar, "lecturer_name" varchar, "lecturer_nidn" varchar, "created_at" timestamp) AS $BODY$
	
BEGIN
	RETURN QUERY
			select 
				clc.assement_file_id::varchar,
				fu.file_name,
				af.is_rendered::int2,
				mfc."name" as "faculty_name",
				mdp."name" as "department_name",
				mlc."id"::varchar as "lecture_id",
				mlc.code as "lecture_code",
				mlc."name" as "lecture_name",
				mlc.level_marks,
				mlc.semester,
				mlcr."name" as "lecturer_name",
				mlcr.nidn	 as "lecturer_nidn",
				af.created_at
			from c11_c_lecture_classes as clc
			inner join c11_m_lectures as mlc
						on clc.m_lecture_id = mlc."id"
			inner join c11_m_lecturers as mlcr
						on clc.m_lecturer_id = mlcr."id"
			inner join c11_m_departments as mdp
						on clc.m_department_id = mdp."id"
			inner join c11_m_faculties as mfc
						on clc.m_faculty_id = mfc."id"
			inner join c11_assesment_files as af
						on af.file_id = clc.assement_file_id
			inner join file_uploads as fu
						on fu."id" = af.file_id
			where af.is_rendered = 1
						and af.created_by::varchar = $1
						and clc.assement_file_id::varchar = $2
			group by af.created_at, clc.assement_file_id, mlc."id",
							 fu.file_name, af.is_rendered, mfc."name", 
							 mdp."name", mlc.code, mlc."name",
							 mlc.level_marks, mlc.semester, 
							 mlcr."name", mlcr.nidn	
			order by af.created_at, fu.file_name, mfc."name", 
							 af.is_rendered, mdp."name", mlc.code, mlc."name",
							 mlc.level_marks, mlc.semester, 
							 mlcr."name", mlcr.nidn	asc;
				 
END
$BODY$
  LANGUAGE plpgsql STABLE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for map_questions_cpl
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."map_questions_cpl"("clec_id" varchar, "cw_id" varchar);
CREATE OR REPLACE FUNCTION "public"."map_questions_cpl"("clec_id" varchar, "cw_id" varchar)
  RETURNS TABLE("cpl_name" varchar, "question_id" varchar, "question_name" text, "question_marks" int4) AS $BODY$
	
	
	BEGIN
	RETURN QUERY
	
			select
				mc."name" as cpl_name,
				mcwd."id"::varchar as question_id,
				mcwd.question_name,
				mcwd.marks as "question_marks"
			from c11_c_lecture_course_works as clcw
					 inner join c11_m_course_works as mcw 
								 on  mcw."id" = clcw.m_course_works_id
								 
					 inner join c11_m_course_work_marks as mcm
								 on mcm."id" = clcw.m_course_work_marks_id
					 
					 inner join c11_m_course_work_details as mcwd 
								 on mcwd.m_course_works_id = mcw."id"
								 
					 inner join c11_c_lecture_course_work_cpls as clcwp
								 on clcwp.m_cw_detail_id = mcwd."id"
								 
					 inner join c11_m_cpls as mc
								 on mc."id" = clcwp.m_cpl_id
								 
			where  mcwd.m_course_works_id::varchar = $2 AND clcwp.c_lecture_class_id::varchar = $1
			group by mcwd.question_name,  mc."name",  mcwd."id", mcwd.marks
			order by mc."name", mcwd.question_name ASC;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for map_questions_cpmk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."map_questions_cpmk"("clec_id" varchar, "cw_id" varchar);
CREATE OR REPLACE FUNCTION "public"."map_questions_cpmk"("clec_id" varchar, "cw_id" varchar)
  RETURNS TABLE("cpmk_name" varchar, "question_id" varchar, "question_name" text, "question_marks" int4) AS $BODY$
	
	BEGIN
		RETURN QUERY		
			select
				mc."name" as cpmk_name,
				mcwd."id"::varchar as question_id,
				mcwd.question_name,
				mcwd.marks as "question_marks"
			from c11_c_lecture_course_works as clcw
					 inner join c11_m_course_works as mcw 
								 on  mcw."id" = clcw.m_course_works_id
								 
					 inner join c11_m_course_work_marks as mcm
								 on mcm."id" = clcw.m_course_work_marks_id
					 
					 inner join c11_m_course_work_details as mcwd 
								 on mcwd.m_course_works_id = mcw."id"
								 
					 inner join c11_c_lecture_course_work_cpmks as clcwp
								 on clcwp.m_cw_detail_id = mcwd."id"
								 
					 inner join c11_m_cpmks as mc
								 on mc."id" = clcwp.m_cpmk_id
								 
			where  mcwd.m_course_works_id::varchar = $2 AND clcwp.c_lecture_class_id::varchar = $1
			group by mcwd.question_name,  mc."name",  mcwd."id", mcwd.marks
			order by mc."name", mcwd.question_name ASC;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for pivot_student_mark_by_cpl
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pivot_student_mark_by_cpl"("c_lecture_class_id" varchar, "cw_id" varchar);
CREATE OR REPLACE FUNCTION "public"."pivot_student_mark_by_cpl"("c_lecture_class_id" varchar, "cw_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "CPL1" numeric, "CPL2" numeric, "CPL3" numeric, "CPL4" numeric, "CPL5" numeric, "CPL6" numeric, "CPL7" numeric, "CPL8" numeric, "CPL9" numeric, "CPL10" numeric, "CPL11" numeric, "CPL12" numeric, "CPL13" numeric, "CPL14" numeric, "CPL15" numeric, "CPL16" numeric, "CPL17" numeric, "CPL18" numeric, "CPL19" numeric, "CPL20" numeric, "CPL21" numeric, "CPL22" numeric, "CPL23" numeric, "CPL24" numeric, "CPL25" numeric, "CPL26" numeric, "CPL27" numeric, "CPL28" numeric, "CPL29" numeric, "CPL30" numeric, "CPL31" numeric, "CPL32" numeric, "CPL33" numeric, "CPL34" numeric, "CPL35" numeric, "CPL36" numeric, "CPL37" numeric, "CPL38" numeric, "CPL39" numeric) AS $BODY$
BEGIN
	RETURN QUERY
				SELECT
	dt.nim, dt.student_name,
	SUM(dt.CPL1) as CPL1,
	SUM(dt.CPL2) as CPL2,
	SUM(dt.CPL3) as CPL3,
	SUM(dt.CPL4) as CPL4,
	SUM(dt.CPL5) as CPL5,
	SUM(dt.CPL6) as CPL6,
	SUM(dt.CPL7) as CPL7,
	SUM(dt.CPL8) as CPL8,
	
	SUM(dt.CPL9) as CPL9,
	SUM(dt.CPL10) as CPL10,
	SUM(dt.CPL11) as CPL11,
	SUM(dt.CPL12) as CPL12,
	SUM(dt.CPL13) as CPL13,
	SUM(dt.CPL14) as CPL14,
	SUM(dt.CPL15) as CPL15,
	SUM(dt.CPL16) as CPL16,
	
	SUM(dt.CPL17) as CPL17,
	SUM(dt.CPL18) as CPL18,
	SUM(dt.CPL19) as CPL19,
	SUM(dt.CPL20) as CPL20,
	SUM(dt.CPL21) as CPL21,
	SUM(dt.CPL22) as CPL22,
	SUM(dt.CPL23) as CPL23,
	SUM(dt.CPL24) as CPL24,
	
	SUM(dt.CPL25) as CPL25,
	SUM(dt.CPL26) as CPL26,
	SUM(dt.CPL27) as CPL27,
	SUM(dt.CPL28) as CPL28,
	SUM(dt.CPL29) as CPL29,
	SUM(dt.CPL30) as CPL30,
	SUM(dt.CPL31) as CPL31,
	SUM(dt.CPL32) as CPL32,
	
	SUM(dt.CPL33) as CPL33,
	SUM(dt.CPL34) as CPL34,
	SUM(dt.CPL35) as CPL35,
	SUM(dt.CPL36) as CPL36,
	SUM(dt.CPL37) as CPL37,
	SUM(dt.CPL38) as CPL38,
	SUM(dt.CPL39) as CPL39
	
FROM
(
SELECT 
	smbc.nim,
	smbc.student_name,
	case 
		when CPL_name = 'CPL1' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL1,
	case 
		when CPL_name = 'CPL2' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL2,
	case 
		when CPL_name = 'CPL3' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL3,
	case 
		when CPL_name = 'CPL4' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL4,
	case 
		when CPL_name = 'CPL5' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL5,
	case 
		when CPL_name = 'CPL6' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL6,
	case 
		when CPL_name = 'CPL7' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL7,
	case 
		when CPL_name = 'CPL8' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL8,
	
	case 
		when CPL_name = 'CPL9' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL9,
	case 
		when CPL_name = 'CPL10' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL10,
	case 
		when CPL_name = 'CPL11' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL11,
	case 
		when CPL_name = 'CPL12' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL12,
	case 
		when CPL_name = 'CPL13' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL13,
	case 
		when CPL_name = 'CPL14' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL14,
	case 
		when CPL_name = 'CPL15' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL15,
	case 
		when CPL_name = 'CPL16' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL16,
	case 
		when CPL_name = 'CPL17' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL17,
	case 
		when CPL_name = 'CPL18' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL18,
	case 
		when CPL_name = 'CPL19' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL19,
	case 
		when CPL_name = 'CPL20' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL20,
	
	case 
		when CPL_name = 'CPL21' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL21,
	case 
		when CPL_name = 'CPL22' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL22,
	case 
		when CPL_name = 'CPL23' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL23,
	case 
		when CPL_name = 'CPL24' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL24,
	case 
		when CPL_name = 'CPL25' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL25,
	case 
		when CPL_name = 'CPL26' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL26,
	case 
		when CPL_name = 'CPL27' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL27,
	case 
		when CPL_name = 'CPL28' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL28,
	case 
		when CPL_name = 'CPL29' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL29,
	case 
		when CPL_name = 'CPL30' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL30,
	case 
		when CPL_name = 'CPL31' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL31,
	case 
		when CPL_name = 'CPL32' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL32,
	case 
		when CPL_name = 'CPL33' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL33,
	case 
		when CPL_name = 'CPL34' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL34,
	case 
		when CPL_name = 'CPL35' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL35,
	case 
		when CPL_name = 'CPL36' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL36,
	case 
		when CPL_name = 'CPL37' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL37,
	case 
		when CPL_name = 'CPL38' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL38,
	case 
		when CPL_name = 'CPL39' then ROUND (smbc.avg_marks::numeric, 2)
	end as CPL39
FROM student_mark_by_cpl ( $1, $2) as smbc
GROUP BY smbc.nim, smbc.student_name, smbc.avg_marks, smbc.cpl_name
ORDER BY smbc.nim, smbc.student_name ASC
) as dt
WHERE dt.CPL1 is not null
		  OR dt.CPL2 is not null
			OR dt.CPL3 is not null
			OR dt.CPL4 is not null
			OR dt.CPL5 is not null
			OR dt.CPL6 is not null
			OR dt.CPL7 is not null
			OR dt.CPL8 is not null
			
			OR dt.CPL9 is not null
			OR dt.CPL10 is not null
			OR dt.CPL11 is not null
			OR dt.CPL12 is not null
			OR dt.CPL13 is not null
			OR dt.CPL14 is not null
			OR dt.CPL15 is not null
			
			OR dt.CPL16 is not null
			OR dt.CPL17 is not null
			OR dt.CPL18 is not null
			OR dt.CPL19 is not null
			OR dt.CPL20 is not null
			OR dt.CPL21 is not null
			OR dt.CPL22 is not null
			
			OR dt.CPL23 is not null
			OR dt.CPL24 is not null
			OR dt.CPL25 is not null
			OR dt.CPL26 is not null
			OR dt.CPL27 is not null
			OR dt.CPL28 is not null
			
			OR dt.CPL29 is not null
			OR dt.CPL30 is not null
			OR dt.CPL31 is not null
			OR dt.CPL32 is not null
			
			OR dt.CPL33 is not null
			OR dt.CPL34 is not null
			OR dt.CPL35 is not null
			
			OR dt.CPL36 is not null
			OR dt.CPL37 is not null
			OR dt.CPL38 is not null
			OR dt.CPL39 is not null
		
GROUP BY dt.nim, dt.student_name;


END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for pivot_student_mark_by_cpmk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."pivot_student_mark_by_cpmk"("c_lecture_class_id" varchar, "cw_id" varchar);
CREATE OR REPLACE FUNCTION "public"."pivot_student_mark_by_cpmk"("c_lecture_class_id" varchar, "cw_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "cpmk1" numeric, "cpmk2" numeric, "cpmk3" numeric, "cpmk4" numeric, "cpmk5" numeric, "cpmk6" numeric, "cpmk7" numeric, "cpmk8" numeric) AS $BODY$
	
BEGIN
	RETURN QUERY
				SELECT
					dt._nim::varchar as nim, 
					dt._student_name::varchar as student_name,
					SUM(dt.CPMK1) as cpmk1,
					SUM(dt.CPMK2) as cpmk2,
					SUM(dt.CPMK3) as cpmk3,
					SUM(dt.CPMK4) as cpmk4,
					SUM(dt.CPMK5) as cpmk5,
					SUM(dt.CPMK6) as cpmk6,
					SUM(dt.CPMK7) as cpmk7,
					SUM(dt.CPMK8) as cpmk8
				FROM
				(
				SELECT 
					smbc.nim as _nim,
					smbc.student_name as _student_name,
					case 
						when cpmk_name = 'CPMK1' then ROUND (avg_marks::numeric, 2)
					end as CPMK1,
					case 
						when cpmk_name = 'CPMK2' then ROUND (avg_marks::numeric, 2)
					end as CPMK2,
					case 
						when cpmk_name = 'CPMK3' then ROUND (avg_marks::numeric, 2)
					end as CPMK3,
					case 
						when cpmk_name = 'CPMK4' then ROUND (avg_marks::numeric, 2)
					end as CPMK4,
					case 
						when cpmk_name = 'CPMK5' then ROUND (avg_marks::numeric, 2)
					end as CPMK5,
					case 
						when cpmk_name = 'CPMK6' then ROUND (avg_marks::numeric, 2)
					end as CPMK6,
					case 
						when cpmk_name = 'CPMK7' then ROUND (avg_marks::numeric, 2)
					end as CPMK7,
					case 
						when cpmk_name = 'CPMK8' then ROUND (avg_marks::numeric, 2)
					end as CPMK8
				FROM student_mark_by_cpmk ( $1, $2) as smbc
				GROUP BY smbc.nim, smbc.student_name, smbc.avg_marks, smbc.cpmk_name
				ORDER BY smbc.nim, smbc.student_name ASC
				) as dt
				WHERE dt.CPMK1 is not null
							OR dt.CPMK2 is not null
							OR dt.CPMK3 is not null
							OR dt.CPMK4 is not null
							OR dt.CPMK5 is not null
							OR dt.CPMK6 is not null
							OR dt.CPMK7 is not null
							OR dt.CPMK8 is not null
				GROUP BY dt._nim, dt._student_name;	
	
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for stat_cqi_cmpk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."stat_cqi_cmpk"("c_lecture_class_id" varchar);
CREATE OR REPLACE FUNCTION "public"."stat_cqi_cmpk"("c_lecture_class_id" varchar)
  RETURNS TABLE("cpmk_id" varchar, "cpmk_name" varchar, "description" text, "avg_marks" float8, "rate_marks" float8, "stddev_marks" float8) AS $BODY$
	
	BEGIN
		RETURN QUERY
		-- 	CPMK OK
				SELECT
						mc."id"::varchar as cpmk_id,
						mc."name" as "cpmk_name",
						mc.description,
						AVG(clmc.cw_detail_marks) as avg_marks,				
						4 * avg(clmc.cw_detail_marks) / 100  as rate_marks,
						stddev(clmc.cw_detail_marks) as stddev_marks
				FROM c11_c_lecture_marks_collegers as clmc

				INNER JOIN c11_m_course_works as mcw 
								ON clmc.m_course_works_id = mcw."id"
																		
				INNER JOIN c11_c_lecture_course_work_cpmks as clcwp
										ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id
										AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
				INNER JOIN c11_m_cpmks as mc
										ON mc."id" = clcwp.m_cpmk_id
										
				INNER JOIN c11_m_collegers as mclg
									ON clmc.m_colleger_id = mclg."id"
																																	 
				WHERE clmc.c_lecture_class_id::varchar = $1
		-- 					AND mc."name" like '%1%'
		-- 					AND mclg."name" = 'BAGAS PANGESTU'
				GROUP BY mc."id", mc."name", mc.description
				ORDER BY mc."name" ASC;
		
END
$BODY$
  LANGUAGE plpgsql STABLE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for stat_cqi_cpl_by_course_work
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."stat_cqi_cpl_by_course_work"("c_lecture_class_id" varchar);
CREATE OR REPLACE FUNCTION "public"."stat_cqi_cpl_by_course_work"("c_lecture_class_id" varchar)
  RETURNS TABLE("cw_name" varchar, "cpl_name" varchar, "avg_marks" float8, "rate_marks" float8) AS $BODY$

	BEGIN
		RETURN QUERY
		-- 	CPMK OK
				SELECT
				    mcw."name" as "cw_name",
						mc."name" as "cpl_name",
						AVG(clmc.cw_detail_marks) as avg_marks,
						4 * avg(clmc.cw_detail_marks) / 100  as rate_marks
				FROM c11_c_lecture_marks_collegers as clmc

				INNER JOIN c11_m_course_works as mcw 
								ON clmc.m_course_works_id = mcw."id"
																		
				INNER JOIN c11_c_lecture_course_work_cpls as clcwp
										ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id
										AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
				INNER JOIN c11_m_cpls as mc
										ON mc."id" = clcwp.m_cpl_id
										
				INNER JOIN c11_m_collegers as mclg
									ON clmc.m_colleger_id = mclg."id"								 
				WHERE clmc.c_lecture_class_id::varchar = $1
				GROUP BY mcw."name", mc."name"
				ORDER BY mcw."name", mc."name" ASC;

END
$BODY$
  LANGUAGE plpgsql STABLE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for stat_cqi_cpls
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."stat_cqi_cpls"("c_lecture_class_id" varchar);
CREATE OR REPLACE FUNCTION "public"."stat_cqi_cpls"("c_lecture_class_id" varchar)
  RETURNS TABLE("cpl_id" varchar, "cpl_name" varchar, "description" text, "avg_marks" float8, "rate_marks" float8, "stddev_marks" float8) AS $BODY$
	
	BEGIN 
			RETURN QUERY
				-- cqi cpl
				SELECT
						mc."id"::varchar as "cpl_id",
						mc."name" as "cpl_name",
						mc.description,
						AVG(clmc.cw_detail_marks) as avg_marks,
						4 * AVG(clmc.cw_detail_marks) / 100  as rate_marks,
						stddev(clmc.cw_detail_marks) as stddev_marks
				FROM c11_c_lecture_marks_collegers as clmc

				INNER JOIN c11_m_course_works as mcw 
								ON clmc.m_course_works_id = mcw."id"
																		
				INNER JOIN c11_c_lecture_course_work_cpls as clcwp
										ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id
										AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
				INNER JOIN c11_m_cpls as mc
										ON mc."id" = clcwp.m_cpl_id
										
				INNER JOIN c11_m_collegers as mclg
									ON clmc.m_colleger_id = mclg."id"								 
				WHERE clmc.c_lecture_class_id::varchar = $1
			-- 				AND mc."id" = '958ef37b-43d3-4925-abd8-e218aecf3e26'
			-- 				AND mclg."name" = 'BAGAS PANGESTU'
				GROUP BY mc."id", mc."name", mc.description
				ORDER BY mc."name" ASC;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for stat_cqi_cpmk_by_course_work
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."stat_cqi_cpmk_by_course_work"("c_lecture_class_id" varchar);
CREATE OR REPLACE FUNCTION "public"."stat_cqi_cpmk_by_course_work"("c_lecture_class_id" varchar)
  RETURNS TABLE("cw_name" varchar, "cpmk_name" varchar, "avg_marks" float8, "rate_marks" float8) AS $BODY$

	BEGIN
		RETURN QUERY
		-- 	CPMK OK
				SELECT
					mcw."name" AS "cw_name",
					mc."name" AS "cpmk_name",
					AVG ( clmc.cw_detail_marks ) AS avg_marks,
					4 * AVG ( clmc.cw_detail_marks ) / 100 AS rate_marks 
				FROM
					c11_c_lecture_marks_collegers AS clmc
					INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw."id"
					
					INNER JOIN c11_c_lecture_course_work_cpmks AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
								AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
					INNER JOIN c11_m_cpmks AS mc ON mc."id" = clcwp.m_cpmk_id
					
					INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg."id" 
				WHERE
					clmc.c_lecture_class_id :: VARCHAR = $1
				GROUP BY
					mcw."name",
					mc."name" 
				ORDER BY
					mcw."name",
					mc."name" ASC;

END
$BODY$
  LANGUAGE plpgsql STABLE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for stat_obe_assesment_file
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."stat_obe_assesment_file"("created_by" varchar);
CREATE OR REPLACE FUNCTION "public"."stat_obe_assesment_file"("created_by" varchar)
  RETURNS TABLE("unrendered" int8, "rendered" int8, "errendered" int8) AS $BODY$ 
		
BEGIN
	RETURN QUERY
			SELECT
				count(CASE WHEN af.is_rendered = 0 THEN af.is_rendered END) AS "unrendered",
				count(CASE WHEN af.is_rendered = 1 THEN af.is_rendered END) AS "rendered",
				count(CASE WHEN af.is_rendered = 2 THEN af.is_rendered END) AS "errendered"
			FROM c11_assesment_files as af
			WHERE af.created_by::varchar = $1;	
END;
$BODY$
  LANGUAGE plpgsql STABLE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for student_grades_by_cpl
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."student_grades_by_cpl"("c_lecture_class_id" varchar);
CREATE OR REPLACE FUNCTION "public"."student_grades_by_cpl"("c_lecture_class_id" varchar)
  RETURNS TABLE("cpl_name" varchar, "grade" varchar, "total_grade" int8) AS $BODY$
		BEGIN
		RETURN QUERY 
			SELECT
				stat_grade.cpl_name,
				grade_ AS grade,
				COUNT ( stat_grade.grade_ ) AS total_grade 
			FROM
				(
				SELECT
					*,
				CASE						
						WHEN mark_.final_marks >= 80 THEN
						'A' :: VARCHAR 
						WHEN mark_.final_marks >= 74 THEN
						'B+' :: VARCHAR 
						WHEN mark_.final_marks >= 68 THEN
						'B' :: VARCHAR 
						WHEN mark_.final_marks >= 62 THEN
						'C+' :: VARCHAR 
						WHEN mark_.final_marks >= 56 THEN
						'C' :: VARCHAR 
						WHEN mark_.final_marks >= 45 THEN
						'D' :: VARCHAR ELSE'E' :: VARCHAR 
					END AS grade_ 
				FROM
					(
					SELECT
						mclg.nim,
						mclg."name" AS "student_name",
						mc."name" AS "cpl_name",
						AVG ( clmc.cw_detail_marks ) AS final_marks,
						4 * AVG ( clmc.cw_detail_marks ) / 100 AS rate_marks 
					FROM
						c11_c_lecture_marks_collegers AS clmc
						INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw."id"
						INNER JOIN c11_c_lecture_course_work_cpls AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
						AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
						INNER JOIN c11_m_cpls AS mc ON mc."id" = clcwp.m_cpl_id
						INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg."id" 
					WHERE
						clmc.c_lecture_class_id :: VARCHAR = $1
					GROUP BY
						mclg.nim,
						mclg."name",
						mc."name" 
					ORDER BY
						mclg.nim,
						mclg."name",
						mc."name" ASC 
					) AS mark_ 
				) AS stat_grade 
			GROUP BY
				stat_grade.cpl_name,
				grade_;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for student_grades_by_cpmk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."student_grades_by_cpmk"("c_lecture_class_id" varchar);
CREATE OR REPLACE FUNCTION "public"."student_grades_by_cpmk"("c_lecture_class_id" varchar)
  RETURNS TABLE("cpmk_name" varchar, "grade" varchar, "total_grade" int8) AS $BODY$
		BEGIN
		RETURN QUERY 
				SELECT
					stat_grade.cpmk_name,
					grade_ AS grade,
					COUNT ( stat_grade.grade_ ) AS total_grade 
				FROM
					(
					SELECT
						*,
					CASE
							
							WHEN mark_.final_marks >= 80 THEN
							'A' :: VARCHAR 
							WHEN mark_.final_marks >= 74 THEN
							'B+' :: VARCHAR 
							WHEN mark_.final_marks >= 68 THEN
							'B' :: VARCHAR 
							WHEN mark_.final_marks >= 62 THEN
							'C+' :: VARCHAR 
							WHEN mark_.final_marks >= 56 THEN
							'C' :: VARCHAR 
							WHEN mark_.final_marks >= 45 THEN
							'D' :: VARCHAR ELSE'E' :: VARCHAR 
						END AS grade_ 
					FROM
						(
						SELECT
							mclg.nim,
							mclg."name" AS "student_name",
							mc."name" AS "cpmk_name",
							AVG ( clmc.cw_detail_marks ) AS final_marks,
							4 * AVG ( clmc.cw_detail_marks ) / 100 AS rate_marks 
						FROM
							c11_c_lecture_marks_collegers AS clmc
							INNER JOIN c11_m_course_works AS mcw ON clmc.m_course_works_id = mcw."id"
							INNER JOIN c11_c_lecture_course_work_cpmks AS clcwp ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id 
							AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
							INNER JOIN c11_m_cpmks AS mc ON mc."id" = clcwp.m_cpmk_id
							INNER JOIN c11_m_collegers AS mclg ON clmc.m_colleger_id = mclg."id" 
						WHERE
							clmc.c_lecture_class_id :: VARCHAR = $1 
						GROUP BY
							mclg.nim,
							mclg."name",
							mc."name" 
						ORDER BY
							mclg.nim,
							mclg."name",
							mc."name" ASC 
						) AS mark_ 
						
					) AS stat_grade
					GROUP BY stat_grade.cpmk_name, grade_;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for student_mark_by_cpl
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."student_mark_by_cpl"("c_lecture_class_id" varchar, "cw_id" varchar);
CREATE OR REPLACE FUNCTION "public"."student_mark_by_cpl"("c_lecture_class_id" varchar, "cw_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "cpl_name" varchar, "avg_marks" float8, "rate_marks" float8) AS $BODY$
	
BEGIN
	RETURN QUERY
				SELECT
				    mclg.nim,
						mclg."name",
						mc."name" as "cpl_name",
						AVG(clmc.cw_detail_marks) as avg_marks,
						4 * avg(clmc.cw_detail_marks) / 100  as rate_marks
				FROM c11_c_lecture_marks_collegers as clmc

				INNER JOIN c11_m_course_works as mcw 
								ON clmc.m_course_works_id = mcw."id"
																		
				INNER JOIN c11_c_lecture_course_work_cpls as clcwp
										ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id
										AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
				INNER JOIN c11_m_cpls as mc
										ON mc."id" = clcwp.m_cpl_id
										
				INNER JOIN c11_m_collegers as mclg
									ON clmc.m_colleger_id = mclg."id"	
																 
				WHERE clmc.c_lecture_class_id::varchar = $1 
				      AND clmc.m_course_works_id::varchar =$2
				GROUP BY mclg.nim, mclg."name", mc."name"
				ORDER BY mclg.nim, mclg."name", mc."name" ASC;
	
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for student_mark_by_cpmk
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."student_mark_by_cpmk"("c_lecture_class_id" varchar, "cw_id" varchar);
CREATE OR REPLACE FUNCTION "public"."student_mark_by_cpmk"("c_lecture_class_id" varchar, "cw_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "cpmk_name" varchar, "avg_marks" float8, "rate_marks" float8) AS $BODY$
	
BEGIN
	RETURN QUERY
				SELECT
				    mclg.nim,
						mclg."name" as "student_name",
						mc."name" as "cpmk_name",
						AVG(clmc.cw_detail_marks) as avg_marks,
						4 * avg(clmc.cw_detail_marks) / 100  as rate_marks
				FROM c11_c_lecture_marks_collegers as clmc

				INNER JOIN c11_m_course_works as mcw 
								ON clmc.m_course_works_id = mcw."id"
																		
				INNER JOIN c11_c_lecture_course_work_cpmks as clcwp
										ON clcwp.m_cw_detail_id = clmc.m_cw_detail_id
										AND clcwp.c_lecture_class_id = clmc.c_lecture_class_id
				INNER JOIN c11_m_cpmks as mc
										ON mc."id" = clcwp.m_cpmk_id
										
				INNER JOIN c11_m_collegers as mclg
									ON clmc.m_colleger_id = mclg."id"
																	 
				WHERE clmc.c_lecture_class_id::varchar = $1 
				      AND clmc.m_course_works_id::varchar =$2
				GROUP BY mclg.nim, mclg."name", mc."name"
				ORDER BY mclg.nim, mclg."name", mc."name" ASC;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for student_mark_course_work
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."student_mark_course_work"("c_lecture_class_id" varchar);
CREATE OR REPLACE FUNCTION "public"."student_mark_course_work"("c_lecture_class_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "cw_name" varchar, "course_work_marks" int8, "avg_course_work_marks" float8, "final_course_work_marks" float8) AS $BODY$
	
	BEGIN
		RETURN QUERY 
			SELECT 
					mclg.nim,
					mclg."name" "student_name",
					'COURSE WORK'::varchar as "cw_name",
					SUM(mcm.marks) as course_work_marks,
					AVG(clmc.student_total_marks) as avg_course_work_marks,
					SUM(mcm.marks*clmc.student_total_marks/100) as "final_course_work_marks"
					
			FROM c11_c_lecture_course_works as clcw
				
					INNER JOIN c11_m_course_works as mcw 
								ON clcw.m_course_works_id = mcw."id"
											
					INNER JOIN c11_m_course_work_marks as mcm 
								ON clcw.m_course_work_marks_id = mcm."id"
							
					INNER JOIN c11_c_lecture_total_marks_collegers as clmc
								ON clcw.m_course_works_id = clmc.m_course_works_id
									 AND clcw.c_lecture_class_id = clmc.c_lecture_class_id
								
					INNER JOIN c11_m_collegers as mclg
								ON clmc.m_colleger_id = mclg."id"
			WHERE clcw.c_lecture_class_id::varchar = $1
						AND mcw."name" like '%COURSE WORK%'
			GROUP BY mclg.nim, mclg."name"
			ORDER BY mclg.nim, mclg."name" ASC;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for student_mark_final_exam
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."student_mark_final_exam"("c_lecture_class_id" varchar);
CREATE OR REPLACE FUNCTION "public"."student_mark_final_exam"("c_lecture_class_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "cw_name" varchar, "exam_marks" int8, "avg_exam_marks" float8, "final_exam_marks" float8) AS $BODY$
	
	BEGIN
		RETURN QUERY 
				SELECT 
						mclg.nim,
						mclg."name" as "student_name",
						mcw."name" as "cw_name",
						SUM(mcm.marks) as exam_marks,
						AVG(clmc.student_total_marks) as avg_exam_marks,
						SUM(mcm.marks*clmc.student_total_marks/100) as "final_exam_marks"
						
				FROM c11_c_lecture_course_works as clcw
					
						INNER JOIN c11_m_course_works as mcw 
									ON clcw.m_course_works_id = mcw."id"
												
						INNER JOIN c11_m_course_work_marks as mcm 
									ON clcw.m_course_work_marks_id = mcm."id"
								
						INNER JOIN c11_c_lecture_total_marks_collegers as clmc
									ON clcw.m_course_works_id = clmc.m_course_works_id
										 AND clcw.c_lecture_class_id = clmc.c_lecture_class_id
									
						INNER JOIN c11_m_collegers as mclg
									ON clmc.m_colleger_id = mclg."id"
				WHERE clcw.c_lecture_class_id::varchar = $1
							AND mcw."name" like '%EXAM%'
				GROUP BY mclg.nim, mclg."name", mcw."name"
				ORDER BY mclg.nim, mclg."name" ASC;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for student_mark_grades
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."student_mark_grades"("c_lecture_class_id" varchar);
CREATE OR REPLACE FUNCTION "public"."student_mark_grades"("c_lecture_class_id" varchar)
  RETURNS TABLE("nim" varchar, "student_name" varchar, "final_marks" float8, "grade" varchar) AS $BODY$
	
	BEGIN
		RETURN QUERY 
				SELECT
				*,
				case 
					when marks.final_marks >= 80 then 'A'::varchar
					when marks.final_marks >= 74 then 'B+'::varchar
					when marks.final_marks >= 68 then 'B'::varchar
					when marks.final_marks >= 62 then 'C+'::varchar
					when marks.final_marks >= 56 then 'C'::varchar
					when marks.final_marks >= 45 then 'D'::varchar
					else 'E'::varchar
					end as grade
				FROM (	
						SELECT 
								mclg.nim,
								mclg."name" as "student_name",
								SUM(mcm.marks*clmc.student_total_marks/100) as "final_marks"
								
						FROM c11_c_lecture_course_works as clcw
							
								INNER JOIN c11_m_course_works as mcw 
											ON clcw.m_course_works_id = mcw."id"
														
								INNER JOIN c11_m_course_work_marks as mcm 
											ON clcw.m_course_work_marks_id = mcm."id"
										
								INNER JOIN c11_c_lecture_total_marks_collegers as clmc
											ON clcw.m_course_works_id = clmc.m_course_works_id
												 AND clcw.c_lecture_class_id = clmc.c_lecture_class_id
											
								INNER JOIN c11_m_collegers as mclg
											ON clmc.m_colleger_id = mclg."id"
						WHERE clcw.c_lecture_class_id::varchar = $1
						GROUP BY mclg.nim, mclg."name"
						ORDER BY mclg.nim, mclg."name" ASC
				) as  marks;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."a_institution_packages_details_id_seq"
OWNED BY "public"."a_institution_packages_details"."id";
SELECT setval('"public"."a_institution_packages_details_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."a_institution_packages_id_seq"
OWNED BY "public"."a_institution_packages"."id";
SELECT setval('"public"."a_institution_packages_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."c11_g_lecture_seqs_id_seq"
OWNED BY "public"."c11_g_lecture_seqs"."id";
SELECT setval('"public"."c11_g_lecture_seqs_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."failed_jobs_id_seq"
OWNED BY "public"."failed_jobs"."id";
SELECT setval('"public"."failed_jobs_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."g_institution_codes_id_seq"
OWNED BY "public"."g_institution_codes"."id";
SELECT setval('"public"."g_institution_codes_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."g_sequence_codes_id_seq"
OWNED BY "public"."g_sequence_codes"."id";
SELECT setval('"public"."g_sequence_codes_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."g_user_codes_id_seq"
OWNED BY "public"."g_user_codes"."id";
SELECT setval('"public"."g_user_codes_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."m_feature_permissions_id_seq"
OWNED BY "public"."m_feature_permissions"."id";
SELECT setval('"public"."m_feature_permissions_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."m_features_id_seq"
OWNED BY "public"."m_features"."id";
SELECT setval('"public"."m_features_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."m_features_permissions_id_seq"
OWNED BY "public"."m_features_permissions"."id";
SELECT setval('"public"."m_features_permissions_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."m_institution_categories_id_seq"
OWNED BY "public"."m_institution_categories"."id";
SELECT setval('"public"."m_institution_categories_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."m_institution_levels_id_seq"
OWNED BY "public"."m_institution_levels"."id";
SELECT setval('"public"."m_institution_levels_id_seq"', 8, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."m_package_features_id_seq"
OWNED BY "public"."m_package_features"."id";
SELECT setval('"public"."m_package_features_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."m_package_prices_id_seq"
OWNED BY "public"."m_package_prices"."id";
SELECT setval('"public"."m_package_prices_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."m_packages_id_seq"
OWNED BY "public"."m_packages"."id";
SELECT setval('"public"."m_packages_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."m_permission_categories_id_seq"
OWNED BY "public"."m_permission_categories"."id";
SELECT setval('"public"."m_permission_categories_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."migrations_id_seq"
OWNED BY "public"."migrations"."id";
SELECT setval('"public"."migrations_id_seq"', 1008, true);

-- ----------------------------
-- Primary Key structure for table a_institution_packages
-- ----------------------------
ALTER TABLE "public"."a_institution_packages" ADD CONSTRAINT "a_institution_packages_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table a_institution_packages_details
-- ----------------------------
ALTER TABLE "public"."a_institution_packages_details" ADD CONSTRAINT "a_institution_packages_details_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table a_institutions
-- ----------------------------
ALTER TABLE "public"."a_institutions" ADD CONSTRAINT "a_institutions_institution_code_unique" UNIQUE ("institution_code");
ALTER TABLE "public"."a_institutions" ADD CONSTRAINT "a_institutions_institution_name_unique" UNIQUE ("institution_name");
ALTER TABLE "public"."a_institutions" ADD CONSTRAINT "a_institutions_institution_domain_unique" UNIQUE ("institution_domain");
ALTER TABLE "public"."a_institutions" ADD CONSTRAINT "a_institutions_created_by_unique" UNIQUE ("created_by");

-- ----------------------------
-- Primary Key structure for table a_institutions
-- ----------------------------
ALTER TABLE "public"."a_institutions" ADD CONSTRAINT "a_institutions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table c11_assesment_files
-- ----------------------------
CREATE INDEX "idx_c11_assesment_files_created_by" ON "public"."c11_assesment_files" USING btree (
  "created_by" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "idx_c11_assesment_files_file_id" ON "public"."c11_assesment_files" USING btree (
  "file_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table c11_assesment_files
-- ----------------------------
ALTER TABLE "public"."c11_assesment_files" ADD CONSTRAINT "c11_assesment_files_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_cpls
-- ----------------------------
ALTER TABLE "public"."c11_c_cpls" ADD CONSTRAINT "c11_c_cpls_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_curriculum_cpls
-- ----------------------------
ALTER TABLE "public"."c11_c_curriculum_cpls" ADD CONSTRAINT "c11_c_curriculum_cpls_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_curriculum_lectures
-- ----------------------------
ALTER TABLE "public"."c11_c_curriculum_lectures" ADD CONSTRAINT "c11_c_curriculum_lectures_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_department_collegers
-- ----------------------------
ALTER TABLE "public"."c11_c_department_collegers" ADD CONSTRAINT "c11_c_department_collegers_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_department_curricula
-- ----------------------------
ALTER TABLE "public"."c11_c_department_curricula" ADD CONSTRAINT "c11_c_department_curricula_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_department_lecturers
-- ----------------------------
ALTER TABLE "public"."c11_c_department_lecturers" ADD CONSTRAINT "c11_c_department_lecturers_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_departments
-- ----------------------------
ALTER TABLE "public"."c11_c_departments" ADD CONSTRAINT "c11_c_departments_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table c11_c_faculties
-- ----------------------------
CREATE INDEX "idx_c11_c_faculties_created_by" ON "public"."c11_c_faculties" USING btree (
  "created_by" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "idx_c11_c_faculties_institution_id" ON "public"."c11_c_faculties" USING btree (
  "institution_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "idx_c11_c_faculties_m_faculty_id" ON "public"."c11_c_faculties" USING btree (
  "m_faculty_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table c11_c_faculties
-- ----------------------------
ALTER TABLE "public"."c11_c_faculties" ADD CONSTRAINT "c11_c_faculties_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_lecture_classes
-- ----------------------------
ALTER TABLE "public"."c11_c_lecture_classes" ADD CONSTRAINT "c11_c_lecture_classes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_lecture_collegers
-- ----------------------------
ALTER TABLE "public"."c11_c_lecture_collegers" ADD CONSTRAINT "c11_c_lecture_collegers_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_lecture_course_work_cpls
-- ----------------------------
ALTER TABLE "public"."c11_c_lecture_course_work_cpls" ADD CONSTRAINT "c11_c_lecture_course_work_cpls_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_lecture_course_work_cpmks
-- ----------------------------
ALTER TABLE "public"."c11_c_lecture_course_work_cpmks" ADD CONSTRAINT "c11_c_lecture_course_work_cpmks_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_lecture_course_works
-- ----------------------------
ALTER TABLE "public"."c11_c_lecture_course_works" ADD CONSTRAINT "c11_c_lecture_course_works_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_lecture_cpls
-- ----------------------------
ALTER TABLE "public"."c11_c_lecture_cpls" ADD CONSTRAINT "c11_c_lecture_cpls_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_lecture_marks_collegers
-- ----------------------------
ALTER TABLE "public"."c11_c_lecture_marks_collegers" ADD CONSTRAINT "c11_c_lecture_marks_collegers_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_lecture_total_marks_collegers
-- ----------------------------
ALTER TABLE "public"."c11_c_lecture_total_marks_collegers" ADD CONSTRAINT "c11_c_lecture_total_marks_collegers_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_c_lectures_cpmks
-- ----------------------------
ALTER TABLE "public"."c11_c_lectures_cpmks" ADD CONSTRAINT "c11_c_lectures_cpmks_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_g_lecture_seqs
-- ----------------------------
ALTER TABLE "public"."c11_g_lecture_seqs" ADD CONSTRAINT "c11_g_lecture_seqs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_m_collegers
-- ----------------------------
ALTER TABLE "public"."c11_m_collegers" ADD CONSTRAINT "c11_m_collegers_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_m_course_work_details
-- ----------------------------
ALTER TABLE "public"."c11_m_course_work_details" ADD CONSTRAINT "c11_m_course_work_details_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_m_course_work_marks
-- ----------------------------
ALTER TABLE "public"."c11_m_course_work_marks" ADD CONSTRAINT "c11_m_course_work_marks_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_m_course_works
-- ----------------------------
ALTER TABLE "public"."c11_m_course_works" ADD CONSTRAINT "c11_m_course_works_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_m_cpls
-- ----------------------------
ALTER TABLE "public"."c11_m_cpls" ADD CONSTRAINT "c11_m_cpls_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_m_cpmks
-- ----------------------------
ALTER TABLE "public"."c11_m_cpmks" ADD CONSTRAINT "c11_m_cpmks_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_m_curricullums
-- ----------------------------
ALTER TABLE "public"."c11_m_curricullums" ADD CONSTRAINT "c11_m_curricullums_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_m_departments
-- ----------------------------
ALTER TABLE "public"."c11_m_departments" ADD CONSTRAINT "c11_m_departments_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table c11_m_faculties
-- ----------------------------
CREATE INDEX "idx_c11_m_faculties_created_by" ON "public"."c11_m_faculties" USING btree (
  "created_by" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table c11_m_faculties
-- ----------------------------
ALTER TABLE "public"."c11_m_faculties" ADD CONSTRAINT "c11_m_faculties_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_m_lecture_categories
-- ----------------------------
ALTER TABLE "public"."c11_m_lecture_categories" ADD CONSTRAINT "c11_m_lecture_categories_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_m_lecturers
-- ----------------------------
ALTER TABLE "public"."c11_m_lecturers" ADD CONSTRAINT "c11_m_lecturers_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c11_m_lectures
-- ----------------------------
ALTER TABLE "public"."c11_m_lectures" ADD CONSTRAINT "c11_m_lectures_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table c_user_institutions
-- ----------------------------
ALTER TABLE "public"."c_user_institutions" ADD CONSTRAINT "c_user_institutions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_uuid_unique" UNIQUE ("uuid");

-- ----------------------------
-- Primary Key structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table file_uploads
-- ----------------------------
ALTER TABLE "public"."file_uploads" ADD CONSTRAINT "file_uploads_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table g_institution_codes
-- ----------------------------
ALTER TABLE "public"."g_institution_codes" ADD CONSTRAINT "g_institution_codes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table g_sequence_codes
-- ----------------------------
ALTER TABLE "public"."g_sequence_codes" ADD CONSTRAINT "g_sequence_codes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table g_user_codes
-- ----------------------------
ALTER TABLE "public"."g_user_codes" ADD CONSTRAINT "g_user_codes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table m_auth_routes
-- ----------------------------
ALTER TABLE "public"."m_auth_routes" ADD CONSTRAINT "m_auth_routes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table m_code_country
-- ----------------------------
CREATE INDEX "idx_m_code_country" ON "public"."m_code_country" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table m_code_country
-- ----------------------------
ALTER TABLE "public"."m_code_country" ADD CONSTRAINT "m_code_country_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table m_code_letters
-- ----------------------------
CREATE INDEX "idx_m_code_letters" ON "public"."m_code_letters" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table m_code_letters
-- ----------------------------
ALTER TABLE "public"."m_code_letters" ADD CONSTRAINT "m_code_letters_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table m_code_month
-- ----------------------------
ALTER TABLE "public"."m_code_month" ADD CONSTRAINT "m_code_month_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table m_code_roman
-- ----------------------------
CREATE INDEX "idx_m_code_roman" ON "public"."m_code_roman" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table m_code_roman
-- ----------------------------
ALTER TABLE "public"."m_code_roman" ADD CONSTRAINT "m_code_roman_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table m_code_suffix
-- ----------------------------
CREATE INDEX "idx_m_code_suffix" ON "public"."m_code_suffix" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table m_code_suffix
-- ----------------------------
ALTER TABLE "public"."m_code_suffix" ADD CONSTRAINT "m_code_suffix_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table m_code_year
-- ----------------------------
CREATE INDEX "idx_m_code_year" ON "public"."m_code_year" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table m_code_year
-- ----------------------------
ALTER TABLE "public"."m_code_year" ADD CONSTRAINT "m_code_year_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table m_feature_permissions
-- ----------------------------
ALTER TABLE "public"."m_feature_permissions" ADD CONSTRAINT "m_feature_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table m_features
-- ----------------------------
ALTER TABLE "public"."m_features" ADD CONSTRAINT "m_features_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table m_features_permissions
-- ----------------------------
ALTER TABLE "public"."m_features_permissions" ADD CONSTRAINT "m_features_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table m_institution_categories
-- ----------------------------
ALTER TABLE "public"."m_institution_categories" ADD CONSTRAINT "m_institution_categories_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table m_institution_levels
-- ----------------------------
ALTER TABLE "public"."m_institution_levels" ADD CONSTRAINT "m_institution_levels_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table m_package_features
-- ----------------------------
ALTER TABLE "public"."m_package_features" ADD CONSTRAINT "m_package_features_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table m_package_prices
-- ----------------------------
ALTER TABLE "public"."m_package_prices" ADD CONSTRAINT "m_package_prices_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table m_packages
-- ----------------------------
ALTER TABLE "public"."m_packages" ADD CONSTRAINT "m_packages_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table m_permission_categories
-- ----------------------------
ALTER TABLE "public"."m_permission_categories" ADD CONSTRAINT "m_permission_categories_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table media
-- ----------------------------
CREATE INDEX "media_model_type_model_id_index" ON "public"."media" USING btree (
  "model_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "model_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table media
-- ----------------------------
ALTER TABLE "public"."media" ADD CONSTRAINT "media_uuid_unique" UNIQUE ("uuid");

-- ----------------------------
-- Primary Key structure for table media
-- ----------------------------
ALTER TABLE "public"."media" ADD CONSTRAINT "media_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table migrations
-- ----------------------------
ALTER TABLE "public"."migrations" ADD CONSTRAINT "migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table model_has_permissions
-- ----------------------------
CREATE INDEX "model_has_permissions_model_id_model_type_index" ON "public"."model_has_permissions" USING btree (
  "model_id" "pg_catalog"."uuid_ops" ASC NULLS LAST,
  "model_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table model_has_permissions
-- ----------------------------
ALTER TABLE "public"."model_has_permissions" ADD CONSTRAINT "model_has_permissions_pkey" PRIMARY KEY ("permission_id", "model_id", "model_type");

-- ----------------------------
-- Indexes structure for table model_has_roles
-- ----------------------------
CREATE INDEX "model_has_roles_model_id_model_type_index" ON "public"."model_has_roles" USING btree (
  "model_id" "pg_catalog"."uuid_ops" ASC NULLS LAST,
  "model_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table model_has_roles
-- ----------------------------
ALTER TABLE "public"."model_has_roles" ADD CONSTRAINT "model_has_roles_pkey" PRIMARY KEY ("role_id", "model_id", "model_type");

-- ----------------------------
-- Indexes structure for table password_resets
-- ----------------------------
CREATE INDEX "password_resets_email_index" ON "public"."password_resets" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table permissions
-- ----------------------------
ALTER TABLE "public"."permissions" ADD CONSTRAINT "permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table role_has_permissions
-- ----------------------------
ALTER TABLE "public"."role_has_permissions" ADD CONSTRAINT "role_has_permissions_pkey" PRIMARY KEY ("permission_id", "role_id");

-- ----------------------------
-- Primary Key structure for table roles
-- ----------------------------
ALTER TABLE "public"."roles" ADD CONSTRAINT "roles_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sessions
-- ----------------------------
CREATE INDEX "sessions_last_activity_index" ON "public"."sessions" USING btree (
  "last_activity" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "sessions_user_id_index" ON "public"."sessions" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sessions
-- ----------------------------
ALTER TABLE "public"."sessions" ADD CONSTRAINT "sessions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_email_unique" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table model_has_permissions
-- ----------------------------
ALTER TABLE "public"."model_has_permissions" ADD CONSTRAINT "model_has_permissions_permission_id_foreign" FOREIGN KEY ("permission_id") REFERENCES "public"."permissions" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table model_has_roles
-- ----------------------------
ALTER TABLE "public"."model_has_roles" ADD CONSTRAINT "model_has_roles_role_id_foreign" FOREIGN KEY ("role_id") REFERENCES "public"."roles" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table role_has_permissions
-- ----------------------------
ALTER TABLE "public"."role_has_permissions" ADD CONSTRAINT "role_has_permissions_permission_id_foreign" FOREIGN KEY ("permission_id") REFERENCES "public"."permissions" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."role_has_permissions" ADD CONSTRAINT "role_has_permissions_role_id_foreign" FOREIGN KEY ("role_id") REFERENCES "public"."roles" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
