create database userdb;

use userdb;

CREATE TABLE `users` (`id` bigint(20) UNSIGNED NOT NULL, `first_name` varchar(200) NOT NULL, `last_name` varchar(200) NOT NULL, `email` varchar(200) DEFAULT NULL) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `users` ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

ALTER TABLE `users` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
