-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2015 at 01:50 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `shop_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
`id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'vincentvad@gmail.com', '$2a$10$FJ7usVUshOmDdSvwGSAKA.CISeKFt33bJ4af4r0wVOd0ze92S6I7q', NULL, NULL, NULL, 10, '2015-12-18 09:25:59', '2015-12-18 08:44:20', '127.0.0.1', '127.0.0.1', '2015-12-15 08:19:34', '2015-12-18 09:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'action', '2015-12-14 09:33:12', '2015-12-14 10:30:21'),
(3, 'aventure', '2015-12-16 14:04:17', '2015-12-16 14:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
`id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `released_year` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` text,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `released_year`, `price`, `description`, `category_id`, `created_at`, `updated_at`, `image`, `active`) VALUES
(1, 'Ant-Man', 2015, 19.99, 'L''histoire d''Ant-Man est celle d''un petit escroc du nom de Scott Lang. Doté d''une capacité étonnante - celle de rétrécir à volonté tout en démultipliant sa force - ce dernier doit embrasser la part de héros qui est en lui afin d''aider son mentor, le docteur Hank Pym, à protéger d''une nouvelle génération de redoutables menaces, le secret du spectaculaire costume d''Ant-Man. Contre des obstacles en apparence insurmontables, Pym et Lang, doivent mettre au poing - et réussir - un audacieux cambriolage qui pourrait sauver le monde d''une issue fatale…\r\n', 2, '2015-12-15 10:27:36', '2015-12-15 14:00:16', 'ant-man.jpg', 1),
(2, 'Hunger Games : La révolte - 2ème partie', 2015, 15.99, 'Alors que Panem est ravagé par une guerre désormais totale, Katniss et le Président Snow vont s’affronter pour la dernière fois. Katniss et ses plus proches amis – Gale, Finnick, et Peeta – sont envoyés en mission pour le District 13 : ils vont risquer leur vie pour tenter d’assassiner le Président Snow, qui s’est juré de détruire Katniss. Les pièges mortels, les ennemis et les choix déchirants qui attendent Katniss seront des épreuves bien pires que tout ce qu’elle a déjà pu affronter dans l’arène…\r\n', 2, '2015-12-15 10:27:36', '2015-12-15 14:01:01', 'hunger-games.jpg', 1),
(3, 'Jurassic World', 2015, 19.99, 'Après le décès de son fondateur John Hammond, la société de biotechnologie InGen a été rachetée par Simon Masrani, PDG de la Masrani Global Corporation1. Deux décennies après les événements tragiques de 1993, un nouveau parc a ouvert ses portes sur Isla Nublar, au large du Costa Rica. C''est plus de vingt mille visiteurs qui débarquent chaque jour à « Jurassic World », le « plus grand parc à thèmes jamais construit dans l''histoire humaine » pour profiter pleinement du cadre idyllique de l''île et de ses attractions. Les scientifiques de la réserve biologique, sous la direction du Dr Henry Wu, étudient le comportement des animaux, des dinosaures vivants recréés à partir de leur ADN fossilisé ', 3, '2015-12-15 10:27:36', '2015-12-17 13:18:54', 'jurassic.jpg', 1),
(5, 'Star Wars, épisode VII - Le Réveil de la Force ', 1993, 88.78, 'Dans une galaxie lointaine, très lointaine, un nouvel épisode de la saga "Star Wars", 30 ans après les événements du "Retour du Jedi".\r\n', 3, '2015-12-15 14:04:12', '2015-12-17 09:27:05', 'star-wars.jpg', 1),
(6, 'Les Minions ', 2015, 12.99, 'À la nuit des temps des temps. À l''origine, de simples organismes monocellulaires de couleur jaune, les Minions ont évolué au cours des âges au service de maîtres plus abjects les uns que les autres. Les disparitions répétitives de ceux-ci, des tyrannosaures à Napoléon, ont plongé nos mignons personnages dans une profonde dépression. Mais l''un d''eux, prénommé Kevin, a une idée. Flanqué de Stuart, l''adolescent rebelle et de l''adorable petit Bob, Kevin part à la recherche d''un nouveau patron malfaisant pour guider les siens. Nos trois Minions se lancent dans un palpitant voyage qui va les conduire à leur nouveau maître... qui s''avère être une maîtresse : Scarlet Overkill, la première super-vilaine de l''histoire. De l''Antarctique au New York des années 60, nos trois compères arrivent finalement à Londres, à l''apogée des mods, où ils vont devoir faire face à la plus terrible menace de leur existence : l''annihilation de leur espèce.', 2, '2015-12-15 14:05:46', '2015-12-15 14:06:36', 'minions.jpg', 1),
(7, 'Mad Max: Fury Road ', 2015, 32.99, 'Hanté par un lourd passé, Mad Max estime que le meilleur moyen de survivre est de rester seul. Cependant, il se retrouve embarqué par une bande qui parcourt le désert à bord d''un véhicule militaire piloté par l''Impératrice Furiosa. Ils fuient la Citadelle où sévit le terrible Immortan Joe qui s''est fait voler un objet irremplaçable. Enragé, ce Seigneur de guerre envoie ses hommes pour traquer les rebelles impitoyablement…', 2, '2015-12-15 14:10:41', '2015-12-15 14:10:41', 'madmax.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
`id` int(11) NOT NULL,
  `subtotal` decimal(12,3) DEFAULT NULL,
  `tax` decimal(12,3) DEFAULT NULL,
  `shipping` decimal(12,3) DEFAULT NULL,
  `total` decimal(12,3) DEFAULT NULL,
  `order_status_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `subtotal`, `tax`, `shipping`, `total`, `order_status_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 179.910, NULL, NULL, NULL, 1, '2015-12-15 11:18:23', '2015-12-15 13:00:16', NULL),
(2, 283.910, NULL, NULL, NULL, 1, '2015-12-15 18:44:21', '2015-12-16 09:03:36', NULL),
(3, 151.950, NULL, NULL, NULL, 1, '2015-12-16 10:08:36', '2015-12-16 10:56:38', NULL),
(4, 115.920, NULL, NULL, NULL, 1, '2015-12-16 13:25:06', '2015-12-16 13:25:33', NULL),
(5, 55.970, NULL, NULL, NULL, 1, '2015-12-17 09:27:40', '2015-12-17 10:48:45', NULL),
(6, 119.940, NULL, NULL, NULL, 1, '2015-12-17 13:19:44', '2015-12-17 14:44:14', NULL),
(7, 19.990, NULL, NULL, NULL, 1, '2015-12-17 15:41:16', '2015-12-17 15:41:16', NULL),
(8, 19.990, NULL, NULL, NULL, 1, '2015-12-17 15:42:56', '2015-12-17 16:50:06', NULL),
(9, 19.990, NULL, NULL, NULL, 1, '2015-12-17 18:48:48', '2015-12-17 18:48:48', NULL),
(10, 552.670, NULL, NULL, NULL, 1, '2015-12-17 18:53:03', '2015-12-18 08:38:42', NULL),
(11, 59.970, NULL, NULL, NULL, 1, '2015-12-18 08:51:30', '2015-12-18 08:51:30', NULL),
(12, 15.990, NULL, NULL, NULL, 1, '2015-12-18 09:11:46', '2015-12-18 09:11:46', NULL),
(13, 143.920, NULL, NULL, NULL, 1, '2015-12-18 09:19:46', '2015-12-18 09:22:30', NULL),
(14, 19.990, NULL, NULL, NULL, 1, '2015-12-18 09:23:19', '2015-12-18 09:23:19', NULL),
(15, 19.990, NULL, NULL, NULL, 1, '2015-12-18 09:24:53', '2015-12-18 09:24:53', NULL),
(16, 12.990, NULL, NULL, NULL, 1, '2015-12-18 09:40:35', '2015-12-18 09:40:35', NULL),
(17, 168.740, NULL, NULL, NULL, 1, '2015-12-18 09:59:35', '2015-12-18 10:08:59', NULL),
(18, 15.990, NULL, NULL, NULL, 1, '2015-12-18 10:15:06', '2015-12-18 10:15:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
`id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `unit_price` decimal(12,3) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` decimal(12,3) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `movie_id`, `order_id`, `unit_price`, `quantity`, `total_price`, `created_at`, `updated_at`) VALUES
(8, 1, 1, 19.990, 2, 39.980, '2015-12-15 12:54:48', '2015-12-15 13:25:42'),
(20, 7, 2, 32.990, 8, 263.920, '2015-12-16 08:59:28', '2015-12-16 09:00:54'),
(22, 7, 3, 32.990, 1, 32.990, '2015-12-16 10:08:36', '2015-12-16 11:24:31'),
(23, 3, 3, 19.990, 1, 19.990, '2015-12-16 10:56:38', '2015-12-16 11:24:45'),
(25, 6, 4, 12.990, 4, 51.960, '2015-12-16 13:25:33', '2015-12-16 13:25:33'),
(27, 1, 5, 19.990, 3, 59.970, '2015-12-17 10:36:43', '2015-12-17 12:47:53'),
(28, 2, 5, 15.990, 1, 15.990, '2015-12-17 10:47:26', '2015-12-17 10:47:26'),
(30, 3, 6, 19.990, 5, 99.950, '2015-12-17 13:19:44', '2015-12-17 14:42:15'),
(31, 1, 6, 19.990, 1, 19.990, '2015-12-17 14:44:14', '2015-12-17 14:44:14'),
(35, 1, 8, 19.990, 4, 79.960, '2015-12-17 18:37:16', '2015-12-17 18:37:27'),
(36, 3, 9, 19.990, 1, 19.990, '2015-12-17 18:48:48', '2015-12-17 18:48:48'),
(37, 5, 10, 88.780, 6, 532.680, '2015-12-17 18:53:03', '2015-12-18 08:13:01'),
(38, 3, 10, 19.990, 1, 19.990, '2015-12-18 08:38:42', '2015-12-18 08:38:42'),
(39, 3, 11, 19.990, 3, 59.970, '2015-12-18 08:51:30', '2015-12-18 08:51:30'),
(40, 2, 12, 15.990, 1, 15.990, '2015-12-18 09:11:46', '2015-12-18 09:11:46'),
(41, 3, 13, 19.990, 4, 79.960, '2015-12-18 09:19:46', '2015-12-18 09:19:46'),
(42, 2, 13, 15.990, 4, 63.960, '2015-12-18 09:22:30', '2015-12-18 09:22:30'),
(43, 1, 14, 19.990, 1, 19.990, '2015-12-18 09:23:19', '2015-12-18 09:23:19'),
(44, 1, 15, 19.990, 1, 19.990, '2015-12-18 09:24:53', '2015-12-18 09:24:53'),
(45, 6, 16, 12.990, 1, 12.990, '2015-12-18 09:40:35', '2015-12-18 09:40:35'),
(46, 3, 17, 19.990, 1, 19.990, '2015-12-18 09:59:35', '2015-12-18 09:59:35'),
(51, 2, 18, 15.990, 1, 15.990, '2015-12-18 10:15:06', '2015-12-18 10:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'In Progress', '2015-12-15 10:27:36', '2015-12-15 10:27:36'),
(2, 'Placed', '2015-12-15 10:27:36', '2015-12-15 10:27:36'),
(3, 'Shipped', '2015-12-15 10:27:36', '2015-12-15 10:27:36'),
(4, 'Cancelled', '2015-12-15 10:27:36', '2015-12-15 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20151214090018'),
('20151214090040'),
('20151214090417'),
('20151214131832'),
('20151214133737'),
('20151214153129'),
('20151215081331'),
('20151215081727'),
('20151215092311'),
('20151215093900'),
('20151215093931'),
('20151215093942'),
('20151215100709'),
('20151215101813'),
('20151215101950'),
('20151215102233'),
('20151215102445'),
('20151216091608'),
('20151216092725'),
('20151216093028'),
('20151216093404'),
('20151216093553'),
('20151217184250'),
('20151218081514'),
('20151218082009'),
('20151218082111'),
('20151218082119'),
('20151218083140'),
('20151218090709');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
`id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `data` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session_id`, `data`, `created_at`, `updated_at`) VALUES
(2, '2d958c98e4de3e03d42f91a0737bf266', 'BAh7B0kiEF9jc3JmX3Rva2VuBjoGRUZJIjFMS2poNSs5OFVrZG5GSU45MWlt\nbDAxaVh3TDQ0VDRMVVp6QTR4MSttc01nPQY7AEZJIg1vcmRlcl9pZAY7AEZp\nDg==\n', '2015-12-17 18:48:41', '2015-12-17 18:48:48'),
(6, 'abf13797c7b390fea836aa0428a0bbe2', 'BAh7B0kiEF9jc3JmX3Rva2VuBjoGRUZJIjFobVBZOVlYeGZoYlI4UExQbFNk\nNUM3TWp3VTA3VW1GdGVucWplY2ttOHdnPQY7AEZJIg1vcmRlcl9pZAY7AEZp\nEA==\n', '2015-12-18 08:51:19', '2015-12-18 08:51:30'),
(18, 'ff7b5b058477b4e66e22b9854bc7eae4', 'BAh7CEkiDW9yZGVyX2lkBjoGRUZpFkkiGXdhcmRlbi51c2VyLnVzZXIua2V5\nBjsAVFsHWwZpB0kiIiQyYSQxMCQ2UUV3ZTIyek8wcEZsYWNITEliYW91BjsA\nVEkiEF9jc3JmX3Rva2VuBjsARkkiMTR4S2hNYko5bjZqTGhQQVpTS1RFQm9T\nMElDWDk0a2ppa2FIVDF4Rk5URG89BjsARg==\n', '2015-12-18 10:05:21', '2015-12-18 10:05:30'),
(19, 'b2447aa4989ee352e57a5273dd6735e5', 'BAh7B0kiEF9jc3JmX3Rva2VuBjoGRUZJIjEyV0c3RDNpYXV0cmsvWjh5VFMx\neTdBMFJUcEsra2swaHZRNDRPbE14SEFRPQY7AEZJIg1vcmRlcl9pZAY7AEZp\nFw==\n', '2015-12-18 10:15:00', '2015-12-18 10:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
`id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `avatar`, `order_id`) VALUES
(2, 'yab@yopmail.com', '$2a$10$6QEwe22zO0pFlacHLIbaouoJ/c.aT6GYfA5ciAUYYLlQ0JAwBE2re', NULL, NULL, NULL, 14, '2015-12-18 10:05:21', '2015-12-18 09:25:09', '127.0.0.1', '127.0.0.1', '2015-12-14 15:37:32', '2015-12-18 10:05:21', 'chain-789870_1280.jpg', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `index_admins_on_email` (`email`), ADD UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`), ADD KEY `index_orders_on_order_status_id` (`order_status_id`), ADD KEY `index_orders_on_user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
 ADD PRIMARY KEY (`id`), ADD KEY `index_order_items_on_movie_id` (`movie_id`), ADD KEY `index_order_items_on_order_id` (`order_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
 ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `index_sessions_on_session_id` (`session_id`), ADD KEY `index_sessions_on_updated_at` (`updated_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `index_users_on_email` (`email`), ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`), ADD KEY `index_users_on_order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
ADD CONSTRAINT `fk_rails_f868b47f6a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
ADD CONSTRAINT `fk_rails_7a22cf8b0e` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
ADD CONSTRAINT `fk_rails_e3cb28f071` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
ADD CONSTRAINT `fk_rails_69c21ac0a3` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `fk_rails_c1e9b98e31` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
