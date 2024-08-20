-- Create "users" table
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL,
  `updated_at` datetime(3) NULL,
  `deleted_at` datetime(3) NULL,
  `name` longtext NULL,
  `age` tinyint unsigned NULL,
  `email` longtext NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_users_deleted_at` (`deleted_at`)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
-- Create "cars" table
CREATE TABLE `cars` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL,
  `updated_at` datetime(3) NULL,
  `deleted_at` datetime(3) NULL,
  `owner_id` bigint unsigned NULL,
  `name` longtext NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cars_user` (`owner_id`),
  INDEX `idx_cars_deleted_at` (`deleted_at`),
  CONSTRAINT `fk_cars_user` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
-- Create "languages" table
CREATE TABLE `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) NULL,
  `updated_at` datetime(3) NULL,
  `deleted_at` datetime(3) NULL,
  `name` longtext NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_languages_deleted_at` (`deleted_at`)
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
-- Create "user_languages" table
CREATE TABLE `user_languages` (
  `user_id` bigint unsigned NOT NULL,
  `language_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`, `language_id`),
  INDEX `fk_user_languages_language` (`language_id`),
  CONSTRAINT `fk_user_languages_language` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT `fk_user_languages_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
) CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
