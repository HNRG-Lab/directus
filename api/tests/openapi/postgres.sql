-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 12. Aug 2020 um 17:34
-- Server-Version: 10.4.11-MariaDB
-- PHP-Version: 7.4.1

/* SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; */
AUTOCOMMIT := 0;
START TRANSACTION;
time_zone := "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `directus`
--
CREATE DATABASE `directus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE directus;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_activity`
--

CREATE TABLE directus_activity (
  id int CHECK (id > 0) NOT NULL,
  action varchar(45) NOT NULL,
  action_by char(36) DEFAULT NULL,
  action_on timestamp(0) NOT NULL DEFAULT current_timestamp(),
  ip varchar(50) NOT NULL,
  user_agent varchar(255) DEFAULT NULL,
  collection varchar(64) NOT NULL,
  item varchar(255) NOT NULL,
  comment text DEFAULT NULL
) ;

--
-- Daten für Tabelle `directus_activity`
--

INSERT INTO directus_activity (id, action, action_by, action_on, ip, user_agent, collection, item, comment) VALUES
(1, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:28:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(2, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:28:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_presets', '1', NULL),
(3, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:29:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_files', '8cbb43fe-4cdf-4991-8352-c461779cec02', NULL),
(4, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:31:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(5, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:31:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(6, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:32:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_presets', '2', NULL),
(7, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:32:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_settings', '1', NULL),
(8, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:33:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(9, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:37:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(10, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:37:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_settings', '2', NULL),
(11, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:38:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(12, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:39:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_settings', '2', NULL),
(13, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:45:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(14, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:52:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(15, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:54:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(16, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:55:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(17, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:55:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(18, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:56:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(19, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:02:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(20, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:04:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(21, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:04:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(22, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:04:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(23, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:05:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(24, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:05:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(25, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:08:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(26, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:08:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(27, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:09:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(28, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:10:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(29, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:11:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(30, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:12:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(31, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:15:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(32, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:21:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(33, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:22:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(34, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:22:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(35, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:23:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(36, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:23:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(37, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:38:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(38, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:40:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_collections', 'houses', NULL),
(39, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:40:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_fields', '82', NULL),
(40, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:40:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_fields', '83', NULL),
(41, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:41:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_fields', '84', NULL),
(42, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:41:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_fields', '85', NULL),
(43, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:42:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_fields', '86', NULL),
(44, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:42:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_presets', '3', NULL),
(45, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:42:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '1', NULL),
(46, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:48:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(47, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:51:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '1', NULL),
(48, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:51:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '1', NULL),
(49, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:52:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(50, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:52:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '1', NULL),
(51, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:52:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '1', NULL),
(52, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:52:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '1', NULL),
(53, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:53:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '1', NULL),
(54, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:56:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(55, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:56:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '1', NULL),
(56, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:59:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(57, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:59:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '1', NULL),
(58, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:59:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '1', NULL),
(59, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:59:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(60, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 18:59:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '1', NULL),
(61, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 19:02:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(62, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 19:06:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(63, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 19:13:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(64, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 19:14:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(65, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 19:14:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '1', NULL),
(66, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 19:29:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(67, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 19:44:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(68, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 19:58:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(69, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 20:13:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(70, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 20:28:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(71, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 20:43:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(72, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 20:58:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(73, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 21:13:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(74, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 21:27:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(75, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 21:42:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(76, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 21:57:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(77, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 22:02:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(78, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 22:17:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(79, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 22:32:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(80, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 22:47:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(81, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 23:01:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(82, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 23:16:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(83, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 23:31:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(84, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 23:46:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(85, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 08:32:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(86, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 08:47:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(87, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 09:02:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(88, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 09:17:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(89, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 09:31:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(90, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 09:46:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(91, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 10:01:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(92, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 10:16:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(93, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 10:31:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(94, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 10:46:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(95, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 11:00:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(96, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 11:15:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(97, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 11:30:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(98, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 11:45:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(99, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 12:00:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(100, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 12:15:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(101, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 12:29:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(102, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 12:44:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(103, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 12:59:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(104, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 13:14:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(105, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 13:29:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(106, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 13:44:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(107, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 13:58:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(108, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-06 14:13:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(109, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:28:47', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(110, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:28:59', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(111, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:32:11', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(112, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:32:12', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(113, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:40:43', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(114, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:43:37', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(115, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:51:24', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'undefined', NULL),
(116, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:51:25', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'a9c5c965-6970-4ba5-ae7b-d4c35040d97a', NULL),
(117, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:51:25', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'a9c5c965-6970-4ba5-ae7b-d4c35040d97a', NULL),
(118, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:51:26', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '93b37f74-538b-4332-97d3-2d8c04b70f29', NULL),
(119, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:51:26', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '93b37f74-538b-4332-97d3-2d8c04b70f29', NULL),
(120, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:51:27', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '93b37f74-538b-4332-97d3-2d8c04b70f29', NULL),
(121, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:51:27', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', '5e5806a5-840b-410f-b1d6-40e7e98d0b99', NULL),
(122, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 17:51:27', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', '5e5806a5-840b-410f-b1d6-40e7e98d0b99', NULL),
(123, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:00:21', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'undefined', NULL),
(124, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:00:22', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '9ca7989f-4348-4755-b913-361fc29135db', NULL),
(125, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:00:22', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '9ca7989f-4348-4755-b913-361fc29135db', NULL),
(126, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:00:23', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', 'e4923dcb-c8bd-40c6-9ac2-a45649c4d26a', NULL),
(127, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:00:23', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', 'e4923dcb-c8bd-40c6-9ac2-a45649c4d26a', NULL),
(128, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:00:23', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '8d9658db-1c0a-4581-bb2e-97ed597a342e', NULL),
(129, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:00:23', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '8d9658db-1c0a-4581-bb2e-97ed597a342e', NULL),
(130, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:00:23', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '8d9658db-1c0a-4581-bb2e-97ed597a342e', NULL),
(131, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:30:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '7af43141-5a7a-4e4d-bd57-db64804cef51', NULL),
(132, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:30:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '7af43141-5a7a-4e4d-bd57-db64804cef51', NULL),
(133, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:30:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', 'ecb108ad-f877-47c2-a7e2-53dbf19a10ee', NULL),
(134, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:30:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', 'ecb108ad-f877-47c2-a7e2-53dbf19a10ee', NULL),
(135, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:30:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', 'ecb108ad-f877-47c2-a7e2-53dbf19a10ee', NULL),
(136, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:30:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(137, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:30:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(138, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:30:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', '86f344f7-5114-452f-8ba7-38448012666b', NULL),
(139, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:30:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', '86f344f7-5114-452f-8ba7-38448012666b', NULL),
(140, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:48:36', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(141, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:48:40', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(142, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:48:45', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(143, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:48:46', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(144, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:48:54', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(145, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:48:56', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(146, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:48:59', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(147, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:49:15', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_collections', 'streets', NULL),
(148, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:49:15', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_fields', '87', NULL),
(149, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:49:19', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(150, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:50:06', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(151, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:50:27', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(152, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:50:34', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(153, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:50:49', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_fields', '88', NULL),
(154, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:50:52', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(155, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:51:09', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(156, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:51:29', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_fields', '89', NULL),
(157, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:51:32', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(158, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:51:42', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(159, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:51:43', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(160, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:51:44', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(161, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:51:45', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(162, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:51:47', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(163, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:51:52', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(164, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:51:58', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(165, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:00', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(166, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:02', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(167, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:10', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(168, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:19', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_fields', '90', NULL),
(169, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:22', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(170, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:25', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(171, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:25', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(172, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:27', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(173, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:33', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '1', NULL),
(174, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:36', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(175, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:38', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(176, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:45', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '2', NULL),
(177, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:48', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(178, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:50', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(179, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:55', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '3', NULL),
(180, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:57', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(181, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:52:59', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(182, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:53:04', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'houses', '4', NULL),
(183, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:53:05', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_presets', '4', NULL),
(184, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:53:06', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(185, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:53:07', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(186, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:53:08', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(187, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:53:13', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'streets', '1', NULL),
(188, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:53:16', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(189, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:53:17', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(190, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:53:19', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'streets', '2', NULL),
(191, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:53:22', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(192, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:53:24', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(193, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:56:19', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'undefined', NULL),
(194, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:56:20', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '9d2035c7-d803-4770-85cf-b4439509ed29', NULL),
(195, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:56:20', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '9d2035c7-d803-4770-85cf-b4439509ed29', NULL),
(196, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:56:21', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '6d2eda2a-2f00-45ca-87ac-166d0dda20f0', NULL),
(197, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:56:21', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', 'f8f5a832-bd39-4faf-963b-328bd3a8fb02', NULL),
(198, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:56:21', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '6d2eda2a-2f00-45ca-87ac-166d0dda20f0', NULL),
(199, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:56:21', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '6d2eda2a-2f00-45ca-87ac-166d0dda20f0', NULL),
(200, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:56:21', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', 'f8f5a832-bd39-4faf-963b-328bd3a8fb02', NULL),
(201, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:56:21', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_relations', '14', NULL),
(202, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:56:21', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_relations', '14', NULL),
(203, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:58:31', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(204, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:58:34', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(205, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:58:37', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(206, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:58:38', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(207, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:58:41', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(208, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:58:44', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(209, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:59:09', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(210, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:59:11', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(211, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 18:59:15', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(212, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:01:38', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(213, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:01:40', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(214, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:02:09', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(215, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:02:12', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(216, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:02:14', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(217, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:02:18', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(218, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:02:18', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(219, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:02:21', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(220, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:02:22', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(221, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:14:45', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL);
INSERT INTO directus_activity (id, action, action_by, action_on, ip, user_agent, collection, item, comment) VALUES
(222, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:16:12', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(223, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:16:15', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(224, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:16:17', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(225, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:16:19', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(226, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:17:09', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(227, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:31:22', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(228, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:31:59', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(229, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:35:08', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(230, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:35:11', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(231, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:35:14', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(232, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:04', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(233, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:07', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(234, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:09', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(235, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:23', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', 'c4594c85-6539-490f-a7b6-60057250f241', NULL),
(236, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:25', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(237, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:27', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(238, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:28', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(239, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:29', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(240, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:30', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(241, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:32', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(242, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:43', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(243, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:55', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(244, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:56', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(245, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:38:57', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(246, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:39:05', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(247, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:39:12', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(248, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:39:14', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(249, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:39:30', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '3ca7d6eb-09fe-4f00-bfaa-b23cfb6dec7d', NULL),
(250, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:39:32', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(251, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:48:35', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(252, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:48:45', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', 'bb001b64-dfe4-4cbb-92b1-70d213882c71', NULL),
(253, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:48:47', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(254, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:49:42', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', 'bf2a3e9c-85c5-46f7-980e-42586063d055', NULL),
(255, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:52:42', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '3be03217-db01-4313-8b80-dea8120dd81a', NULL),
(256, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:52:42', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '3be03217-db01-4313-8b80-dea8120dd81a', NULL),
(257, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:52:42', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '3be03217-db01-4313-8b80-dea8120dd81a', NULL),
(258, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:52:54', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(259, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:56:17', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'a0c1b06e-1f92-4a2b-ae0e-aa679ebeea69', NULL),
(260, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:56:17', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'a0c1b06e-1f92-4a2b-ae0e-aa679ebeea69', NULL),
(261, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:56:17', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'a0c1b06e-1f92-4a2b-ae0e-aa679ebeea69', NULL),
(262, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:58:11', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', 'f0fa96db-78c2-4d46-aa60-553e87591461', NULL),
(263, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:58:32', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', 'f0fa96db-78c2-4d46-aa60-553e87591461', NULL),
(264, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:59:52', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'de66f1ee-ae62-4aac-9d78-8149509ff8a2', NULL),
(265, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:59:52', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'de66f1ee-ae62-4aac-9d78-8149509ff8a2', NULL),
(266, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 19:59:52', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'de66f1ee-ae62-4aac-9d78-8149509ff8a2', NULL),
(267, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:03:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'fae6f74d-871f-41ec-bf6c-697093830c85', NULL),
(268, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:03:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'fae6f74d-871f-41ec-bf6c-697093830c85', NULL),
(269, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:03:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'fae6f74d-871f-41ec-bf6c-697093830c85', NULL),
(270, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:06:47', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '93f3750c-6733-4b57-b09f-08c517274abf', NULL),
(271, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:06:47', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '93f3750c-6733-4b57-b09f-08c517274abf', NULL),
(272, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:06:47', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '93f3750c-6733-4b57-b09f-08c517274abf', NULL),
(273, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:07:44', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(274, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:16:05', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'f1fec47c-c779-4693-818c-a55ac9ef4f1b', NULL),
(275, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:16:05', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'f1fec47c-c779-4693-818c-a55ac9ef4f1b', NULL),
(276, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:16:05', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'f1fec47c-c779-4693-818c-a55ac9ef4f1b', NULL),
(277, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:17:23', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'fbe7f243-35c1-440f-93f0-325d969ca008', NULL),
(278, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:17:23', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'fbe7f243-35c1-440f-93f0-325d969ca008', NULL),
(279, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:17:23', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'fbe7f243-35c1-440f-93f0-325d969ca008', NULL),
(280, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:21:36', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '2aa60725-9dcd-4185-889d-25aa36493654', NULL),
(281, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:21:36', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '2aa60725-9dcd-4185-889d-25aa36493654', NULL),
(282, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:21:36', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '2aa60725-9dcd-4185-889d-25aa36493654', NULL),
(283, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:22:34', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(284, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:27:00', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(285, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:32:18', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(286, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:32:22', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(287, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 20:47:08', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(288, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 21:01:58', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(289, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 21:16:48', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(290, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 21:31:38', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(291, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 21:46:28', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(292, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 22:01:18', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(293, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 22:16:08', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(294, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-07 22:30:58', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(295, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:21:21', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(296, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:21:26', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(297, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:25:59', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(298, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:26:02', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(299, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:26:04', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(300, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:26:25', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(301, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:26:25', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(302, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:26:26', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(303, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:26:27', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(304, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:26:29', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(305, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:26:30', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(306, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:26:37', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(307, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:26:38', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(308, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:26:44', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_settings', '2', NULL),
(309, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:27:55', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(310, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:28:13', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(311, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:28:15', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(312, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:28:34', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(313, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:28:53', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(314, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:29:04', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(315, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:33:45', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_settings', '2', NULL),
(316, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:40:28', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '5d621af0-8fea-47c7-afe1-36b6a30362db', NULL),
(317, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:40:28', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '5d621af0-8fea-47c7-afe1-36b6a30362db', NULL),
(318, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:40:28', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '5d621af0-8fea-47c7-afe1-36b6a30362db', NULL),
(319, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:41:24', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '33d8fd4e-e58f-41eb-80cd-a108e65a02ef', NULL),
(320, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:41:24', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '33d8fd4e-e58f-41eb-80cd-a108e65a02ef', NULL),
(321, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:41:25', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '33d8fd4e-e58f-41eb-80cd-a108e65a02ef', NULL),
(322, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:43:03', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(323, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:49:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_relations', '15', NULL),
(324, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:49:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_relations', '15', NULL),
(325, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:50:28', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_relations', '16', NULL),
(326, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:50:34', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_relations', '17', NULL),
(327, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:50:35', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_relations', '18', NULL),
(328, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:52:04', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_relations', '19', NULL),
(329, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:52:04', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_relations', '19', NULL),
(330, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:52:04', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_relations', '19', NULL),
(331, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 19:57:53', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(332, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:01:26', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(333, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:01:27', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(334, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:01:32', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(335, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:01:33', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(336, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:02:11', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_roles', '0879963d-047e-4eb7-b876-95e4b2df3c4b', NULL),
(337, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:02:14', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(338, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:02:16', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(339, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:02:20', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(340, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:05:03', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_permissions', '12', NULL),
(341, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:05:47', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '13', NULL),
(342, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:05:47', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '13', NULL),
(343, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:07:07', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '14', NULL),
(344, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:07:07', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '14', NULL),
(345, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:07:48', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '15', NULL),
(346, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:07:48', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '15', NULL),
(347, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:11:19', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '16', NULL),
(348, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:11:19', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '16', NULL),
(349, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:11:19', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '16', NULL),
(350, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:12:43', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(351, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:14:47', '::ffff:127.0.0.1', 'axios/0.19.2', 'streets', '3', NULL),
(352, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:14:47', '::ffff:127.0.0.1', 'axios/0.19.2', 'streets', '3', NULL),
(353, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:16:10', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(354, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:16:11', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(355, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:16:12', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(356, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:16:14', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(357, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:17:30', '::ffff:127.0.0.1', 'axios/0.19.2', 'streets', '4', NULL),
(358, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:17:30', '::ffff:127.0.0.1', 'axios/0.19.2', 'streets', '4', NULL),
(359, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:17:30', '::ffff:127.0.0.1', 'axios/0.19.2', 'streets', '4', NULL),
(360, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:17:59', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', '0cf0e03d-4364-45df-b77b-ca61f61869d2', NULL),
(361, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:17:59', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', '0cf0e03d-4364-45df-b77b-ca61f61869d2', NULL),
(362, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:21:03', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', '84fef90e-87c1-4867-aa4f-a475c1c66c8d', NULL),
(363, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:21:03', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', '84fef90e-87c1-4867-aa4f-a475c1c66c8d', NULL),
(364, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:22:22', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', '467cd0b5-46d4-47e0-821b-db15883072a2', NULL),
(365, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:22:22', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', '467cd0b5-46d4-47e0-821b-db15883072a2', NULL),
(366, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:22:59', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(367, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:23:02', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(368, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:23:05', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(369, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:23:07', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(370, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:23:11', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_folders', 'e2d1b468-7be9-4bf4-84f6-ea99e132a695', NULL),
(371, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:23:35', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', '08c1d0f4-e640-49c9-90e9-d4595c26e2a7', NULL),
(372, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:23:35', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', '08c1d0f4-e640-49c9-90e9-d4595c26e2a7', NULL),
(373, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:23:35', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', '08c1d0f4-e640-49c9-90e9-d4595c26e2a7', NULL),
(374, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:24:13', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', 'eaf04095-ee6b-4fc8-be27-e9ea430b383c', NULL),
(375, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:24:13', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', 'eaf04095-ee6b-4fc8-be27-e9ea430b383c', NULL),
(376, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:24:13', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', 'eaf04095-ee6b-4fc8-be27-e9ea430b383c', NULL),
(377, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:27:18', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '901e9b40-f6f9-4b00-af90-dada85ecbb61', NULL),
(378, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:27:18', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '901e9b40-f6f9-4b00-af90-dada85ecbb61', NULL),
(379, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:27:33', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(380, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:33:33', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '9270e9c9-9cf9-4210-854a-601744804c80', NULL),
(381, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:33:33', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '9270e9c9-9cf9-4210-854a-601744804c80', NULL),
(382, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:37:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '70a51229-ca91-46a1-9e47-e4f951c28184', NULL),
(383, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:37:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '70a51229-ca91-46a1-9e47-e4f951c28184', NULL),
(384, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:42:23', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(385, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:43:31', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '53c8985f-9cf7-479c-8d2a-9f0fb29f2b5e', NULL),
(386, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:43:31', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '53c8985f-9cf7-479c-8d2a-9f0fb29f2b5e', NULL),
(387, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:44:57', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(388, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:45:03', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(389, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:45:05', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(390, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:45:06', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_files', 'ecd66371-9528-43b8-9195-657eb7b47856', NULL),
(391, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:46:05', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(392, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:46:06', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(393, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:51:01', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '9f23248b-51ad-468d-b1e0-664c1324502b', NULL),
(394, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:51:01', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '9f23248b-51ad-468d-b1e0-664c1324502b', NULL),
(395, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:51:43', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(396, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:51:46', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(397, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:51:46', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_files', 'b990c9e1-e9a2-4212-b479-530b5412a165', NULL),
(398, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:51:50', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(399, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 20:57:13', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(400, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:12:03', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(401, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:13:01', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_files', 'e7084323-1a11-45f7-bec0-703a9cb5a2fa', NULL),
(402, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:13:02', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(403, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:13:05', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(404, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:13:07', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(405, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:13:10', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(406, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:13:11', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(407, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:13:17', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(408, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:13:20', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(409, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:19:26', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'undefined', NULL),
(410, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:19:26', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'undefined', NULL),
(411, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:26:53', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(412, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:31:30', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(413, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:31:39', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_presets', '2', NULL),
(414, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:31:40', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_presets', '2', NULL),
(415, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:31:41', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_presets', '2', NULL),
(416, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:31:42', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_presets', '2', NULL),
(417, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:31:42', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_presets', '2', NULL),
(418, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:31:47', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_files', 'e7084323-1a11-45f7-bec0-703a9cb5a2fa', NULL),
(419, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:31:47', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_files', 'ecd66371-9528-43b8-9195-657eb7b47856', NULL),
(420, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:31:47', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_files', 'b990c9e1-e9a2-4212-b479-530b5412a165', NULL),
(421, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:32:08', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'undefined', NULL),
(422, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:32:08', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'undefined', NULL),
(423, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:34:14', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_files', 'bbcdda50-efcc-477e-847a-5e7329e00a39', NULL),
(424, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:35:04', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '18519f89-1f01-4ce2-a74b-7d5c0ca8745f', NULL),
(425, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:35:04', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '18519f89-1f01-4ce2-a74b-7d5c0ca8745f', NULL),
(426, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:36:06', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'd09256ce-9dbc-4ee2-83df-d13f9aff3d12', NULL),
(427, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:36:06', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'd09256ce-9dbc-4ee2-83df-d13f9aff3d12', NULL),
(428, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:37:48', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_files', '78e3e49f-cac2-4357-b06b-d6e1d916291b', NULL),
(429, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:41:04', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'bb5ec354-4a26-456c-9b86-8c9e0ea2d3b0', NULL),
(430, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:41:04', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'bb5ec354-4a26-456c-9b86-8c9e0ea2d3b0', NULL),
(431, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:41:04', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'bb5ec354-4a26-456c-9b86-8c9e0ea2d3b0', NULL),
(432, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:41:43', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(433, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:44:24', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(434, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:44:25', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(435, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:44:25', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(436, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:44:26', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(437, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:44:27', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(438, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:44:30', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(439, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:44:58', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_fields', '91', NULL),
(440, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:45:01', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(441, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:46:36', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_fields', '92', NULL),
(442, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:50:12', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(443, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:50:15', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(444, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:50:24', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(445, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-08 21:50:27', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(446, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 15:28:22', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(447, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 15:28:26', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(448, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 15:30:29', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(449, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 15:30:32', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(450, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 15:32:24', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_fields', '93', NULL),
(451, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 15:45:19', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(452, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 15:54:06', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL);
INSERT INTO directus_activity (id, action, action_by, action_on, ip, user_agent, collection, item, comment) VALUES
(453, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 15:55:44', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_collections', 'test', NULL),
(454, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 15:55:44', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_fields', '94', NULL),
(455, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 15:56:04', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_collections', 'test', NULL),
(456, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 15:58:10', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_collections', 'test_collection', NULL),
(457, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 15:58:10', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_fields', '95', NULL),
(458, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 15:58:10', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_collections', 'test_collection', NULL),
(459, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 16:00:09', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(460, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 16:00:10', '::ffff:127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_collections', 'houses', NULL),
(461, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 16:00:55', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_collections', 'test_collection', NULL),
(462, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 16:00:55', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_fields', '96', NULL),
(463, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 16:00:55', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_collections', 'test_collection', NULL),
(464, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 16:00:55', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_collections', 'test_collection', NULL),
(465, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 16:14:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(466, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 16:29:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(467, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 16:44:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(468, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 16:59:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(469, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:14:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(470, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:28:56', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_presets', 'undefined', NULL),
(471, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:29:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(472, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:30:32', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_presets', 'undefined', NULL),
(473, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:32:54', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_presets', '8', NULL),
(474, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:32:54', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_presets', '8', NULL),
(475, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:32:54', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_presets', '8', NULL),
(476, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:40:16', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(477, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:41:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(478, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:41:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(479, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:41:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(480, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:43:03', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(481, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:44:02', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(482, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:46:10', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(483, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:46:34', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(484, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:47:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(485, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:49:02', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(486, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 17:49:41', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(487, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:03:54', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(488, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:04:58', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(489, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:05:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(490, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:05:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(491, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:05:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(492, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:05:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(493, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:10:31', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(494, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:10:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(495, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:11:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(496, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:12:21', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(497, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:12:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(498, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:12:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(499, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:13:10', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(500, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:13:50', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(501, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:14:58', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(502, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:15:36', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(503, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:16:15', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(504, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:19:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(505, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:20:30', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(506, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:20:30', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(507, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:21:07', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(508, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:21:07', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(509, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:21:42', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(510, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:21:42', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(511, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:14', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_collections', 'test_collection', NULL),
(512, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:14', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_fields', '97', NULL),
(513, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:14', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '17', NULL),
(514, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:14', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_collections', 'test_collection', NULL),
(515, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:14', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '17', NULL),
(516, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:14', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_collections', 'test_collection', NULL),
(517, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:14', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '17', NULL),
(518, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:14', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_fields', '98', NULL),
(519, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:15', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(520, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:15', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_presets', '9', NULL),
(521, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:15', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(522, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:15', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_presets', '9', NULL),
(523, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:15', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_presets', '9', NULL),
(524, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:15', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_relations', '20', NULL),
(525, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:15', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_relations', '20', NULL),
(526, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:15', '::ffff:127.0.0.1', 'axios/0.19.2', 'streets', '5', NULL),
(527, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:16', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_relations', '20', NULL),
(528, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:16', '::ffff:127.0.0.1', 'axios/0.19.2', 'streets', '5', NULL),
(529, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:16', '::ffff:127.0.0.1', 'axios/0.19.2', 'streets', '5', NULL),
(530, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:16', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'de79424e-135f-4efd-bc20-07dd286b4324', NULL),
(531, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:16', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'de79424e-135f-4efd-bc20-07dd286b4324', NULL),
(532, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:16', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_settings', '2', NULL),
(533, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:16', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', 'de79424e-135f-4efd-bc20-07dd286b4324', NULL),
(534, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:16', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'c653009f-9ba3-435a-a15f-8d7b5708c13e', NULL),
(535, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:16', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'c653009f-9ba3-435a-a15f-8d7b5708c13e', NULL),
(536, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:16', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', 'c653009f-9ba3-435a-a15f-8d7b5708c13e', NULL),
(537, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:17', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', 'cad02cf4-e386-4255-beca-3c666f94fe93', NULL),
(538, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:17', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', 'cad02cf4-e386-4255-beca-3c666f94fe93', NULL),
(539, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:17', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', 'cad02cf4-e386-4255-beca-3c666f94fe93', NULL),
(540, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:17', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '85cca229-78db-4a0b-a18b-0ee5844e9f6d', NULL),
(541, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:17', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '85cca229-78db-4a0b-a18b-0ee5844e9f6d', NULL),
(542, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:17', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', '85cca229-78db-4a0b-a18b-0ee5844e9f6d', NULL),
(543, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:42', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '18', NULL),
(544, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '18', NULL),
(545, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_collections', 'test_collection', NULL),
(546, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_fields', '99', NULL),
(547, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_permissions', '18', NULL),
(548, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_collections', 'test_collection', NULL),
(549, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_collections', 'test_collection', NULL),
(550, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'streets', '6', NULL),
(551, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:43', '::ffff:127.0.0.1', 'axios/0.19.2', 'streets', '6', NULL),
(552, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '6294ab2e-0dc3-4f89-8677-89055059975e', NULL),
(553, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'streets', '6', NULL),
(554, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '6294ab2e-0dc3-4f89-8677-89055059975e', NULL),
(555, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '6294ab2e-0dc3-4f89-8677-89055059975e', NULL),
(556, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_presets', '10', NULL),
(557, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_presets', '10', NULL),
(558, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_relations', '21', NULL),
(559, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_presets', '10', NULL),
(560, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_relations', '21', NULL),
(561, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:44', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_relations', '21', NULL),
(562, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:45', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(563, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:45', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(564, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:45', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_fields', '100', NULL),
(565, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:45', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', 'ff32082d-f2f1-4806-9b3b-d9bb5fd4f032', NULL),
(566, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:45', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', 'ff32082d-f2f1-4806-9b3b-d9bb5fd4f032', NULL),
(567, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:46', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '410f25d8-9d88-4359-87e8-ba6864f9b5b5', NULL),
(568, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:46', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_roles', 'ff32082d-f2f1-4806-9b3b-d9bb5fd4f032', NULL),
(569, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:46', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '410f25d8-9d88-4359-87e8-ba6864f9b5b5', NULL),
(570, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:46', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_files', '410f25d8-9d88-4359-87e8-ba6864f9b5b5', NULL),
(571, 'create', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:46', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', 'a2abf197-f0f5-4307-a723-bfef382d4126', NULL),
(572, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:46', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', 'a2abf197-f0f5-4307-a723-bfef382d4126', NULL),
(573, 'delete', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:46', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_folders', 'a2abf197-f0f5-4307-a723-bfef382d4126', NULL),
(574, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 18:26:46', '::ffff:127.0.0.1', 'axios/0.19.2', 'directus_settings', '2', NULL),
(575, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 20:56:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(576, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 20:56:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(577, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 20:56:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(578, 'update', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 20:56:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(579, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 21:11:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(580, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 21:26:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(581, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 21:41:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(582, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 21:56:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(583, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 22:11:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(584, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 22:25:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(585, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 22:40:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(586, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 22:55:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(587, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 23:10:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(588, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 23:25:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(589, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 23:40:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(590, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-09 23:54:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(591, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-10 00:09:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL),
(592, 'authenticate', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-10 20:41:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_collections`
--

CREATE TABLE directus_collections (
  collection varchar(255) NOT NULL,
  hidden smallint NOT NULL DEFAULT 0,
  singleton smallint NOT NULL DEFAULT 0,
  icon varchar(30) DEFAULT NULL,
  note text DEFAULT NULL,
  translation longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(translation)),
  display_template varchar(255) DEFAULT NULL
) ;

--
-- Daten für Tabelle `directus_collections`
--

INSERT INTO directus_collections (collection, hidden, singleton, icon, note, translation, display_template) VALUES
('directus_activity', 0, 0, NULL, NULL, NULL, NULL),
('directus_collections', 0, 0, NULL, NULL, NULL, NULL),
('directus_fields', 0, 0, NULL, NULL, NULL, NULL),
('directus_files', 0, 0, NULL, NULL, NULL, NULL),
('directus_folders', 0, 0, NULL, NULL, NULL, NULL),
('directus_permissions', 0, 0, NULL, NULL, NULL, NULL),
('directus_presets', 0, 0, NULL, NULL, NULL, NULL),
('directus_relations', 0, 0, NULL, NULL, NULL, NULL),
('directus_revisions', 0, 0, NULL, NULL, NULL, NULL),
('directus_roles', 0, 0, NULL, NULL, NULL, NULL),
('directus_settings', 0, 0, NULL, NULL, NULL, NULL),
('directus_users', 0, 0, NULL, NULL, NULL, NULL),
('directus_webhooks', 0, 0, NULL, NULL, NULL, NULL),
('houses', 0, 0, NULL, 'This is a note', NULL, NULL),
('streets', 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_fields`
--

CREATE TABLE directus_fields (
  id int CHECK (id > 0) NOT NULL,
  collection varchar(64) NOT NULL,
  field varchar(64) NOT NULL,
  special varchar(64) DEFAULT NULL,
  interface varchar(64) DEFAULT NULL,
  options longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(options)),
  display varchar(64) DEFAULT NULL,
  display_options longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(display_options)),
  locked smallint NOT NULL DEFAULT 0,
  readonly smallint NOT NULL DEFAULT 0,
  hidden smallint NOT NULL DEFAULT 0,
  sort int CHECK (sort > 0) DEFAULT NULL,
  width varchar(30) DEFAULT 'full',
  group int CHECK (group > 0) DEFAULT NULL,
  translation longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(translation)),
  note text DEFAULT NULL
) ;

--
-- Daten für Tabelle `directus_fields`
--

INSERT INTO directus_fields (id, collection, field, special, interface, options, display, display_options, locked, readonly, hidden, sort, width, group, translation, note) VALUES
(1, 'directus_collections', 'collection', NULL, 'text-input', '{"font":"monospace"}', NULL, NULL, 1, 1, 0, 1, 'half', NULL, NULL, NULL),
(2, 'directus_collections', 'icon', NULL, 'icon', NULL, NULL, NULL, 1, 0, 0, 2, 'half', NULL, NULL, NULL),
(3, 'directus_collections', 'note', NULL, 'text-input', '{"placeholder":"A description of this collection..."}', NULL, NULL, 1, 0, 0, 3, 'full', NULL, NULL, NULL),
(4, 'directus_collections', 'display_template', NULL, 'text-input', '{"placeholder":"Reference title for items, eg: {{ first_name }} {{ last_name }}"}', NULL, NULL, 1, 0, 0, 4, 'full', NULL, NULL, NULL),
(5, 'directus_collections', 'hidden', 'boolean', 'toggle', '{"label":"Hide within the App"}', NULL, NULL, 1, 0, 0, 5, 'half', NULL, NULL, NULL),
(6, 'directus_collections', 'singleton', 'boolean', 'toggle', '{"label":"Treat as single object"}', NULL, NULL, 1, 0, 0, 6, 'half', NULL, NULL, NULL),
(7, 'directus_collections', 'translation', 'json', 'repeater', '{"template":"{{ locale }}","fields":[{"field":"locale","type":"string","system":{"interface":"language","options":{"limit":true},"width":"half"}},{"field":"translation","type":"string","system":{"interface":"text-input","width":"half"}}]}', NULL, NULL, 1, 0, 0, 7, 'full', NULL, NULL, NULL),
(8, 'directus_roles', 'id', 'uuid', 'text-input', NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(9, 'directus_roles', 'name', NULL, 'text-input', NULL, NULL, NULL, 1, 0, 0, 1, 'half', NULL, NULL, NULL),
(10, 'directus_roles', 'icon', NULL, 'icon', NULL, NULL, NULL, 1, 0, 0, 2, 'half', NULL, NULL, NULL),
(11, 'directus_roles', 'description', NULL, 'text-input', '{"placeholder":"A description of this role..."}', NULL, NULL, 1, 0, 0, 3, 'full', NULL, NULL, NULL),
(12, 'directus_roles', 'ip_allow_list', 'json', 'tags', NULL, NULL, NULL, 1, 0, 0, 4, 'full', NULL, NULL, NULL),
(13, 'directus_roles', 'admin', 'boolean', 'toggle', NULL, NULL, NULL, 1, 0, 0, 6, 'half', NULL, NULL, NULL),
(14, 'directus_roles', 'app_access', 'boolean', 'toggle', NULL, NULL, NULL, 1, 0, 0, 7, 'half', NULL, NULL, NULL),
(15, 'directus_roles', 'enforce_tfa', 'boolean', 'toggle', NULL, NULL, NULL, 1, 0, 0, 8, 'half', NULL, NULL, NULL),
(16, 'directus_roles', 'users', 'o2m', 'one-to-many', '{"fields":["first_name","last_name"]}', NULL, NULL, 1, 0, 0, 9, 'full', NULL, NULL, NULL),
(17, 'directus_roles', 'module_list', 'json', 'repeater', '{"template":"{{ name }}","createItemText":"Add Module","fields":[{"name":"Icon","field":"icon","type":"string","system":{"interface":"icon","width":"half"}},{"name":"Name","field":"name","type":"string","system":{"interface":"text-input","width":"half","options":{"iconRight":"title","placeholder":"Enter a title..."}}},{"name":"Link","field":"link","type":"string","system":{"interface":"text-input","width":"full","options":{"iconRight":"link","placeholder":"Relative or absolute URL..."}}}]}', NULL, NULL, 1, 0, 0, 10, 'full', NULL, NULL, NULL),
(18, 'directus_roles', 'collection_list', 'json', 'repeater', '{"template":"{{ group_name }}","createItemText":"Add Group","fields":[{"name":"Group Name","field":"group_name","type":"string","system":{"width":"half","interface":"text-input","options":{"iconRight":"title","placeholder":"Label this group..."}}},{"name":"Accordion","field":"accordion","type":"string","database":{"default_value":"always_open"},"system":{"width":"half","interface":"dropdown","options":{"choices":[{"value":"always_open","text":"Always Open"},{"value":"start_open","text":"Start Open"},{"value":"start_collapsed","text":"Start Collapsed"}]}}},{"name":"Collections","field":"collections","type":"JSON","system":{"interface":"repeater","options":{"createItemText":"Add Collection","template":"{{ collection }}","fields":[{"name":"Collection","field":"collection","type":"string","system":{"interface":"collections","width":"full"}}]}}}]}', NULL, NULL, 1, 0, 0, 11, 'full', NULL, NULL, NULL),
(19, 'directus_users', 'first_name', NULL, 'text-input', '{"iconRight":"account_circle"}', NULL, NULL, 1, 0, 0, 1, 'half', NULL, NULL, NULL),
(20, 'directus_users', 'last_name', NULL, 'text-input', '{"iconRight":"account_circle"}', NULL, NULL, 1, 0, 0, 2, 'half', NULL, NULL, NULL),
(21, 'directus_users', 'email', NULL, 'text-input', '{"iconRight":"email"}', NULL, NULL, 1, 0, 0, 3, 'half', NULL, NULL, NULL),
(22, 'directus_users', 'password', 'hash', 'hash', '{"iconRight":"lock","masked":true}', NULL, NULL, 1, 0, 0, 4, 'half', NULL, NULL, NULL),
(23, 'directus_users', 'avatar', NULL, 'file', NULL, NULL, NULL, 1, 0, 0, 5, 'full', NULL, NULL, NULL),
(24, 'directus_users', 'location', NULL, 'text-input', '{"iconRight":"place"}', NULL, NULL, 0, 0, 0, 6, 'half', NULL, NULL, NULL),
(25, 'directus_users', 'title', NULL, 'text-input', '{"iconRight":"work"}', NULL, NULL, 0, 0, 0, 7, 'half', NULL, NULL, NULL),
(26, 'directus_users', 'description', NULL, 'textarea', NULL, NULL, NULL, 0, 0, 0, 8, 'full', NULL, NULL, NULL),
(27, 'directus_users', 'tags', 'json', 'tags', '{"iconRight":"local_offer"}', NULL, NULL, 0, 0, 0, 9, 'full', NULL, NULL, NULL),
(28, 'directus_users', 'preferences_divider', 'alias', 'divider', '{"icon":"face","title":"User Preferences","color":"#2F80ED"}', NULL, NULL, 0, 0, 0, 10, 'full', NULL, NULL, NULL),
(29, 'directus_users', 'timezone', NULL, 'dropdown', '{"choices":[{"value":"Pacific/Midway","text":"(UTC-11:00) Midway Island"},{"value":"Pacific/Samoa","text":"(UTC-11:00) Samoa"},{"value":"Pacific/Honolulu","text":"(UTC-10:00) Hawaii"},{"value":"US/Alaska","text":"(UTC-09:00) Alaska"},{"value":"America/Los_Angeles","text":"(UTC-08:00) Pacific Time (US & Canada)"},{"value":"America/Tijuana","text":"(UTC-08:00) Tijuana"},{"value":"US/Arizona","text":"(UTC-07:00) Arizona"},{"value":"America/Chihuahua","text":"(UTC-07:00) Chihuahua"},{"value":"America/Mexico/La_Paz","text":"(UTC-07:00) La Paz"},{"value":"America/Mazatlan","text":"(UTC-07:00) Mazatlan"},{"value":"US/Mountain","text":"(UTC-07:00) Mountain Time (US & Canada)"},{"value":"America/Managua","text":"(UTC-06:00) Central America"},{"value":"US/Central","text":"(UTC-06:00) Central Time (US & Canada)"},{"value":"America/Guadalajara","text":"(UTC-06:00) Guadalajara"},{"value":"America/Mexico_City","text":"(UTC-06:00) Mexico City"},{"value":"America/Monterrey","text":"(UTC-06:00) Monterrey"},{"value":"Canada/Saskatchewan","text":"(UTC-06:00) Saskatchewan"},{"value":"America/Bogota","text":"(UTC-05:00) Bogota"},{"value":"US/Eastern","text":"(UTC-05:00) Eastern Time (US & Canada)"},{"value":"US/East_Indiana","text":"(UTC-05:00) Indiana (East)"},{"value":"America/Lima","text":"(UTC-05:00) Lima"},{"value":"America/Quito","text":"(UTC-05:00) Quito"},{"value":"Canada/Atlantic","text":"(UTC-04:00) Atlantic Time (Canada)"},{"value":"America/New_York","text":"(UTC-04:00) New York"},{"value":"America/Caracas","text":"(UTC-04:30) Caracas"},{"value":"America/La_Paz","text":"(UTC-04:00) La Paz"},{"value":"America/Santiago","text":"(UTC-04:00) Santiago"},{"value":"America/Santo_Domingo","text":"(UTC-04:00) Santo Domingo"},{"value":"Canada/Newfoundland","text":"(UTC-03:30) Newfoundland"},{"value":"America/Sao_Paulo","text":"(UTC-03:00) Brasilia"},{"value":"America/Argentina/Buenos_Aires","text":"(UTC-03:00) Buenos Aires"},{"value":"America/Argentina/GeorgeTown","text":"(UTC-03:00) Georgetown"},{"value":"America/Godthab","text":"(UTC-03:00) Greenland"},{"value":"America/Noronha","text":"(UTC-02:00) Mid-Atlantic"},{"value":"Atlantic/Azores","text":"(UTC-01:00) Azores"},{"value":"Atlantic/Cape_Verde","text":"(UTC-01:00) Cape Verde Is."},{"value":"Africa/Casablanca","text":"(UTC+00:00) Casablanca"},{"value":"Europe/Edinburgh","text":"(UTC+00:00) Edinburgh"},{"value":"Etc/Greenwich","text":"(UTC+00:00) Greenwich Mean Time"},{"value":"Europe/Lisbon","text":"(UTC+00:00) Lisbon"},{"value":"Europe/London","text":"(UTC+00:00) London"},{"value":"Africa/Monrovia","text":"(UTC+00:00) Monrovia"},{"value":"UTC","text":"(UTC+00:00) UTC"},{"value":"Europe/Amsterdam","text":"(UTC+01:00) Amsterdam"},{"value":"Europe/Belgrade","text":"(UTC+01:00) Belgrade"},{"value":"Europe/Berlin","text":"(UTC+01:00) Berlin"},{"value":"Europe/Bern","text":"(UTC+01:00) Bern"},{"value":"Europe/Bratislava","text":"(UTC+01:00) Bratislava"},{"value":"Europe/Brussels","text":"(UTC+01:00) Brussels"},{"value":"Europe/Budapest","text":"(UTC+01:00) Budapest"},{"value":"Europe/Copenhagen","text":"(UTC+01:00) Copenhagen"},{"value":"Europe/Ljubljana","text":"(UTC+01:00) Ljubljana"},{"value":"Europe/Madrid","text":"(UTC+01:00) Madrid"},{"value":"Europe/Paris","text":"(UTC+01:00) Paris"},{"value":"Europe/Prague","text":"(UTC+01:00) Prague"},{"value":"Europe/Rome","text":"(UTC+01:00) Rome"},{"value":"Europe/Sarajevo","text":"(UTC+01:00) Sarajevo"},{"value":"Europe/Skopje","text":"(UTC+01:00) Skopje"},{"value":"Europe/Stockholm","text":"(UTC+01:00) Stockholm"},{"value":"Europe/Vienna","text":"(UTC+01:00) Vienna"},{"value":"Europe/Warsaw","text":"(UTC+01:00) Warsaw"},{"value":"Africa/Lagos","text":"(UTC+01:00) West Central Africa"},{"value":"Europe/Zagreb","text":"(UTC+01:00) Zagreb"},{"value":"Europe/Athens","text":"(UTC+02:00) Athens"},{"value":"Europe/Bucharest","text":"(UTC+02:00) Bucharest"},{"value":"Africa/Cairo","text":"(UTC+02:00) Cairo"},{"value":"Africa/Harare","text":"(UTC+02:00) Harare"},{"value":"Europe/Helsinki","text":"(UTC+02:00) Helsinki"},{"value":"Europe/Istanbul","text":"(UTC+02:00) Istanbul"},{"value":"Asia/Jerusalem","text":"(UTC+02:00) Jerusalem"},{"value":"Europe/Kyiv","text":"(UTC+02:00) Kyiv"},{"value":"Africa/Johannesburg","text":"(UTC+02:00) Pretoria"},{"value":"Europe/Riga","text":"(UTC+02:00) Riga"},{"value":"Europe/Sofia","text":"(UTC+02:00) Sofia"},{"value":"Europe/Tallinn","text":"(UTC+02:00) Tallinn"},{"value":"Europe/Vilnius","text":"(UTC+02:00) Vilnius"},{"value":"Asia/Baghdad","text":"(UTC+03:00) Baghdad"},{"value":"Asia/Kuwait","text":"(UTC+03:00) Kuwait"},{"value":"Europe/Minsk","text":"(UTC+03:00) Minsk"},{"value":"Africa/Nairobi","text":"(UTC+03:00) Nairobi"},{"value":"Asia/Riyadh","text":"(UTC+03:00) Riyadh"},{"value":"Europe/Volgograd","text":"(UTC+03:00) Volgograd"},{"value":"Asia/Tehran","text":"(UTC+03:30) Tehran"},{"value":"Asia/Abu_Dhabi","text":"(UTC+04:00) Abu Dhabi"},{"value":"Asia/Baku","text":"(UTC+04:00) Baku"},{"value":"Europe/Moscow","text":"(UTC+04:00) Moscow"},{"value":"Asia/Muscat","text":"(UTC+04:00) Muscat"},{"value":"Europe/St_Petersburg","text":"(UTC+04:00) St. Petersburg"},{"value":"Asia/Tbilisi","text":"(UTC+04:00) Tbilisi"},{"value":"Asia/Yerevan","text":"(UTC+04:00) Yerevan"},{"value":"Asia/Kabul","text":"(UTC+04:30) Kabul"},{"value":"Asia/Islamabad","text":"(UTC+05:00) Islamabad"},{"value":"Asia/Karachi","text":"(UTC+05:00) Karachi"},{"value":"Asia/Tashkent","text":"(UTC+05:00) Tashkent"},{"value":"Asia/Calcutta","text":"(UTC+05:30) Chennai"},{"value":"Asia/Kolkata","text":"(UTC+05:30) Kolkata"},{"value":"Asia/Mumbai","text":"(UTC+05:30) Mumbai"},{"value":"Asia/New_Delhi","text":"(UTC+05:30) New Delhi"},{"value":"Asia/Sri_Jayawardenepura","text":"(UTC+05:30) Sri Jayawardenepura"},{"value":"Asia/Katmandu","text":"(UTC+05:45) Kathmandu"},{"value":"Asia/Almaty","text":"(UTC+06:00) Almaty"},{"value":"Asia/Astana","text":"(UTC+06:00) Astana"},{"value":"Asia/Dhaka","text":"(UTC+06:00) Dhaka"},{"value":"Asia/Yekaterinburg","text":"(UTC+06:00) Ekaterinburg"},{"value":"Asia/Rangoon","text":"(UTC+06:30) Rangoon"},{"value":"Asia/Bangkok","text":"(UTC+07:00) Bangkok"},{"value":"Asia/Hanoi","text":"(UTC+07:00) Hanoi"},{"value":"Asia/Jakarta","text":"(UTC+07:00) Jakarta"},{"value":"Asia/Novosibirsk","text":"(UTC+07:00) Novosibirsk"},{"value":"Asia/Beijing","text":"(UTC+08:00) Beijing"},{"value":"Asia/Chongqing","text":"(UTC+08:00) Chongqing"},{"value":"Asia/Hong_Kong","text":"(UTC+08:00) Hong Kong"},{"value":"Asia/Krasnoyarsk","text":"(UTC+08:00) Krasnoyarsk"},{"value":"Asia/Kuala_Lumpur","text":"(UTC+08:00) Kuala Lumpur"},{"value":"Australia/Perth","text":"(UTC+08:00) Perth"},{"value":"Asia/Singapore","text":"(UTC+08:00) Singapore"},{"value":"Asia/Taipei","text":"(UTC+08:00) Taipei"},{"value":"Asia/Ulan_Bator","text":"(UTC+08:00) Ulaan Bataar"},{"value":"Asia/Urumqi","text":"(UTC+08:00) Urumqi"},{"value":"Asia/Irkutsk","text":"(UTC+09:00) Irkutsk"},{"value":"Asia/Osaka","text":"(UTC+09:00) Osaka"},{"value":"Asia/Sapporo","text":"(UTC+09:00) Sapporo"},{"value":"Asia/Seoul","text":"(UTC+09:00) Seoul"},{"value":"Asia/Tokyo","text":"(UTC+09:00) Tokyo"},{"value":"Australia/Adelaide","text":"(UTC+09:30) Adelaide"},{"value":"Australia/Darwin","text":"(UTC+09:30) Darwin"},{"value":"Australia/Brisbane","text":"(UTC+10:00) Brisbane"},{"value":"Australia/Canberra","text":"(UTC+10:00) Canberra"},{"value":"Pacific/Guam","text":"(UTC+10:00) Guam"},{"value":"Australia/Hobart","text":"(UTC+10:00) Hobart"},{"value":"Australia/Melbourne","text":"(UTC+10:00) Melbourne"},{"value":"Pacific/Port_Moresby","text":"(UTC+10:00) Port Moresby"},{"value":"Australia/Sydney","text":"(UTC+10:00) Sydney"},{"value":"Asia/Yakutsk","text":"(UTC+10:00) Yakutsk"},{"value":"Asia/Vladivostok","text":"(UTC+11:00) Vladivostok"},{"value":"Pacific/Auckland","text":"(UTC+12:00) Auckland"},{"value":"Pacific/Fiji","text":"(UTC+12:00) Fiji"},{"value":"Pacific/Kwajalein","text":"(UTC+12:00) International Date Line West"},{"value":"Asia/Kamchatka","text":"(UTC+12:00) Kamchatka"},{"value":"Asia/Magadan","text":"(UTC+12:00) Magadan"},{"value":"Pacific/Marshall_Is","text":"(UTC+12:00) Marshall Is."},{"value":"Asia/New_Caledonia","text":"(UTC+12:00) New Caledonia"},{"value":"Asia/Solomon_Is","text":"(UTC+12:00) Solomon Is."},{"value":"Pacific/Wellington","text":"(UTC+12:00) Wellington"},{"value":"Pacific/Tongatapu","text":"(UTC+13:00) Nuku'alofa"}],"placeholder":"Choose a timezone..."}', NULL, NULL, 0, 0, 0, 11, 'half', NULL, NULL, NULL),
(30, 'directus_users', 'language', NULL, 'dropdown', '{"choices":[{"text":"Afrikaans (South Africa)","value":"af-ZA"},{"text":"Arabic (Saudi Arabia)","value":"ar-SA"},{"text":"Catalan (Spain)","value":"ca-ES"},{"text":"Chinese (Simplified)","value":"zh-CN"},{"text":"Czech (Czech Republic)","value":"cs-CZ"},{"text":"Danish (Denmark)","value":"da-DK"},{"text":"Dutch (Netherlands)","value":"nl-NL"},{"text":"English (United States)","value":"en-US"},{"text":"Finnish (Finland)","value":"fi-FI"},{"text":"French (France)","value":"fr-FR"},{"text":"German (Germany)","value":"de-DE"},{"text":"Greek (Greece)","value":"el-GR"},{"text":"Hebrew (Israel)","value":"he-IL"},{"text":"Hungarian (Hungary)","value":"hu-HU"},{"text":"Icelandic (Iceland)","value":"is-IS"},{"text":"Indonesian (Indonesia)","value":"id-ID"},{"text":"Italian (Italy)","value":"it-IT"},{"text":"Japanese (Japan)","value":"ja-JP"},{"text":"Korean (Korea)","value":"ko-KR"},{"text":"Malay (Malaysia)","value":"ms-MY"},{"text":"Norwegian (Norway)","value":"no-NO"},{"text":"Polish (Poland)","value":"pl-PL"},{"text":"Portuguese (Brazil)","value":"pt-BR"},{"text":"Portuguese (Portugal)","value":"pt-PT"},{"text":"Russian (Russian Federation)","value":"ru-RU"},{"text":"Spanish (Spain)","value":"es-ES"},{"text":"Spanish (Latin America)","value":"es-419"},{"text":"Taiwanese Mandarin (Taiwan)","value":"zh-TW"},{"text":"Turkish (Turkey)","value":"tr-TR"},{"text":"Ukrainian (Ukraine)","value":"uk-UA"},{"text":"Vietnamese (Vietnam)","value":"vi-VN"}]}', NULL, NULL, 1, 0, 0, 12, 'half', NULL, NULL, NULL),
(31, 'directus_users', 'theme', NULL, 'dropdown', '{"choices":[{"value":"auto","text":"Automatic (Based on System)"},{"value":"light","text":"Light Mode"},{"value":"dark","text":"Dark Mode"}]}', NULL, NULL, 1, 0, 0, 13, 'half', NULL, NULL, NULL),
(32, 'directus_users', 'tfa_secret', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 14, 'half', NULL, NULL, NULL),
(33, 'directus_users', 'admin_divider', 'alias', 'divider', '{"icon":"verified_user","title":"Admin Options","color":"--F2994A"}', NULL, NULL, 1, 0, 0, 15, 'full', NULL, NULL, NULL),
(34, 'directus_users', 'status', 'status', 'status', '{"statuses":{"draft":{"name":"Draft","color":"#B0BEC5","backgroundColor":"#ECEFF1"},"invited":{"name":"Invited","color":"#FFFFFF","backgroundColor":"#2F80ED"},"active":{"name":"Active","color":"#FFFFFF","backgroundColor":"#27AE60"},"suspended":{"name":"Suspended","color":"#FFFFFF","backgroundColor":"#F2994A"},"deleted":{"name":"Deleted","color":"#FFFFFF","backgroundColor":"#EB5757","softDelete":true}}}', NULL, NULL, 1, 0, 0, 16, 'half', NULL, NULL, NULL),
(35, 'directus_users', 'role', 'm2o', 'many-to-one', '{"template":"{{ name }}"}', NULL, NULL, 1, 0, 0, 17, 'half', NULL, NULL, NULL),
(36, 'directus_users', 'token', NULL, 'token', '{"iconRight":"vpn_key","placeholder":"Enter a secure access token..."}', NULL, NULL, 1, 0, 0, 18, 'full', NULL, NULL, NULL),
(37, 'directus_users', 'id', 'uuid', 'text-input', '{"iconRight":"vpn_key"}', NULL, NULL, 1, 0, 0, 19, 'full', NULL, NULL, NULL),
(38, 'directus_fields', 'options', 'json', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(39, 'directus_fields', 'display_options', 'json', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(40, 'directus_fields', 'locked', 'boolean', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(41, 'directus_fields', 'readonly', 'boolean', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(42, 'directus_fields', 'hidden', 'boolean', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(43, 'directus_fields', 'translation', 'json', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(44, 'directus_folders', 'id', 'uuid', 'text-input', NULL, NULL, NULL, 1, 0, 0, NULL, 'full', NULL, NULL, NULL),
(45, 'directus_files', 'id', 'uuid', 'text-input', NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(46, 'directus_files', 'title', NULL, 'text-input', '{"iconRight":"title"}', NULL, NULL, 1, 0, 0, 1, 'full', NULL, NULL, NULL),
(47, 'directus_files', 'description', NULL, 'textarea', NULL, NULL, NULL, 1, 0, 0, 2, 'full', NULL, NULL, NULL),
(48, 'directus_files', 'tags', 'json', 'tags', '{"iconRight":"local_offer"}', NULL, NULL, 1, 0, 0, 3, 'full', NULL, NULL, NULL),
(49, 'directus_files', 'location', NULL, 'text-input', '{"iconRight":"place"}', NULL, NULL, 1, 0, 0, 4, 'half', NULL, NULL, NULL),
(50, 'directus_files', 'storage', NULL, 'text-input', '{"iconRight":"storage"}', NULL, NULL, 1, 0, 0, 5, 'half', NULL, NULL, NULL),
(51, 'directus_files', 'storage_divider', 'alias', 'divider', '{"icon":"insert_drive_file","title":"File Naming","color":"#B0BEC5"}', NULL, NULL, 1, 0, 0, 6, 'full', NULL, NULL, NULL),
(52, 'directus_files', 'filename_disk', NULL, 'text-input', '{"iconRight":"publish"}', NULL, NULL, 1, 0, 0, 7, 'half', NULL, NULL, NULL),
(53, 'directus_files', 'filename_download', NULL, 'text-input', '{"iconRight":"get_app"}', NULL, NULL, 1, 0, 0, 8, 'half', NULL, NULL, NULL),
(54, 'directus_files', 'metadata', 'json', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(55, 'directus_files', 'type', NULL, NULL, NULL, 'mime-type', NULL, 0, 0, 0, NULL, 'full', NULL, NULL, NULL),
(56, 'directus_files', 'filesize', NULL, NULL, NULL, 'filesize', NULL, 0, 0, 0, NULL, 'full', NULL, NULL, NULL),
(57, 'directus_permissions', 'permissions', 'json', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(58, 'directus_permissions', 'presets', 'json', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(59, 'directus_presets', 'filters', 'json', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(60, 'directus_presets', 'view_query', 'json', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(61, 'directus_presets', 'view_options', 'json', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(62, 'directus_revisions', 'data', 'json', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(63, 'directus_revisions', 'delta', 'json', NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(64, 'directus_settings', 'project_name', NULL, 'text-input', '{"iconRight":"title","placeholder":"My project..."}', NULL, NULL, 1, 0, 0, 1, 'half', NULL, '{"locale":"en-US","translation":"Name"}', NULL),
(65, 'directus_settings', 'project_url', NULL, 'text-input', '{"iconRight":"link","placeholder":"https://example.com"}', NULL, NULL, 1, 0, 0, 2, 'half', NULL, '{"locale":"en-US","translation":"Website"}', NULL),
(66, 'directus_settings', 'project_color', NULL, 'color', NULL, NULL, NULL, 1, 0, 0, 3, 'half', NULL, '{"locale":"en-US","translation":"Brand Color"}', 'Login & Logo Background'),
(67, 'directus_settings', 'project_logo', NULL, 'file', NULL, NULL, NULL, 1, 0, 0, 4, 'half', NULL, '{"locale":"en-US","translation":"Brand Logo"}', 'White 40x40 SVG/PNG'),
(68, 'directus_settings', 'public_divider', 'alias', 'divider', '{"icon":"public","title":"Public Pages","color":"#B0BEC5"}', NULL, NULL, 1, 0, 0, 5, 'full', NULL, NULL, NULL),
(69, 'directus_settings', 'public_foreground', NULL, 'file', NULL, NULL, NULL, 1, 0, 0, 6, 'half', NULL, '{"locale":"en-US","translation":"Login Foreground"}', NULL),
(70, 'directus_settings', 'public_background', NULL, 'file', NULL, NULL, NULL, 1, 0, 0, 7, 'half', NULL, '{"locale":"en-US","translation":"Login Background"}', NULL),
(71, 'directus_settings', 'public_note', NULL, 'textarea', '{"placeholder":"A short, public message that supports markdown formatting..."}', NULL, NULL, 1, 0, 0, 8, 'full', NULL, NULL, NULL),
(72, 'directus_settings', 'security_divider', 'alias', 'divider', '{"icon":"security","title":"Security","color":"#B0BEC5"}', NULL, NULL, 1, 0, 0, 9, 'full', NULL, NULL, NULL),
(73, 'directus_settings', 'auth_password_policy', NULL, 'dropdown', '{"choices":[{"value":null,"text":"None – Not Recommended"},{"value":"/^.{8,}$/","text":"Weak – Minimum 8 Characters"},{"value":"/(?=^.{8,}$)(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()_+}{';'?>.<,])(?!.*\\s).*$/","text":"Strong – Upper / Lowercase / Numbers / Special"}]}', NULL, NULL, 1, 0, 0, 10, 'half', NULL, NULL, NULL),
(74, 'directus_settings', 'auth_idle_timeout', NULL, 'numeric', '{"iconRight":"timer"}', NULL, NULL, 1, 0, 0, 11, 'half', NULL, NULL, NULL),
(75, 'directus_settings', 'auth_login_attempts', NULL, 'numeric', '{"iconRight":"lock"}', NULL, NULL, 1, 0, 0, 12, 'half', NULL, NULL, NULL),
(76, 'directus_settings', 'files_divider', 'alias', 'divider', '{"icon":"storage","title":"Files & Thumbnails","color":"#B0BEC5"}', NULL, NULL, 1, 0, 0, 13, 'full', NULL, NULL, NULL),
(77, 'directus_settings', 'storage_asset_presets', 'json', 'repeater', '{"fields":[{"field":"key","name":"Key","type":"string","system":{"interface":"slug","options":{"onlyOnCreate":false},"required":true,"width":"half"}},{"field":"fit","name":"Fit","type":"string","system":{"interface":"dropdown","options":{"choices":[{"value":"contain","text":"Contain (preserve aspect ratio)"},{"value":"cover","text":"Cover (forces exact size)"}]},"required":true,"width":"half"}},{"field":"width","name":"Width","type":"integer","system":{"interface":"numeric","required":true,"width":"half"}},{"field":"height","name":"Height","type":"integer","system":{"interface":"numeric","required":true,"width":"half"}},{"field":"quality","type":"integer","name":"Quality","database":{"default_value":80},"system":{"interface":"slider","options":{"max":100,"min":0,"step":1},"required":true,"width":"full"}}],"template":"{{key}}"}', NULL, NULL, 1, 0, 0, 14, 'full', NULL, NULL, NULL),
(78, 'directus_settings', 'storage_asset_transform', NULL, 'dropdown', '{"choices":[{"value":"all","text":"All"},{"value":"none","text":"None"},{"value":"presets","text":"Presets Only"}]}', NULL, NULL, 1, 0, 0, 15, 'half', NULL, NULL, NULL),
(79, 'directus_settings', 'misc_divider', 'alias', 'divider', '{"icon":"pending","title":"Miscellaneous","color":"#B0BEC5"}', NULL, NULL, 1, 0, 0, 16, 'full', NULL, NULL, NULL),
(80, 'directus_settings', 'telemetry', 'boolean', 'toggle', '{"label":"Send Anonymous Diagnostics"}', NULL, NULL, 1, 0, 0, 17, 'half', NULL, NULL, NULL),
(81, 'directus_settings', 'id', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'full', NULL, NULL, NULL),
(82, 'houses', 'id', NULL, 'numeric', NULL, NULL, NULL, 0, 1, 1, NULL, 'full', NULL, NULL, NULL),
(83, 'houses', 'name', NULL, 'text-input', NULL, NULL, NULL, 0, 0, 0, NULL, 'full', NULL, NULL, NULL),
(85, 'houses', 'garage', NULL, 'toggle', NULL, NULL, NULL, 0, 0, 0, NULL, 'full', NULL, NULL, NULL),
(86, 'houses', 'levels', NULL, 'slider', '{"minValue":"1","maxValue":"4","stepInterval":"1"}', 'template', NULL, 0, 0, 0, NULL, 'full', NULL, NULL, NULL),
(87, 'streets', 'id', NULL, 'numeric', NULL, NULL, NULL, 0, 1, 1, NULL, 'full', NULL, NULL, NULL),
(89, 'streets', 'name', NULL, 'text-input', NULL, 'format-title', NULL, 0, 0, 0, NULL, 'full', NULL, NULL, NULL),
(90, 'houses', 'street', NULL, 'numeric', NULL, NULL, NULL, 0, 0, 0, NULL, 'full', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_files`
--

CREATE TABLE directus_files (
  id char(36) NOT NULL,
  storage varchar(255) NOT NULL,
  filename_disk varchar(255) DEFAULT NULL,
  filename_download varchar(255) NOT NULL,
  title varchar(255) DEFAULT NULL,
  type varchar(255) DEFAULT NULL,
  folder char(36) DEFAULT NULL,
  uploaded_by char(36) DEFAULT NULL,
  uploaded_on timestamp(0) NOT NULL DEFAULT current_timestamp(),
  charset varchar(50) DEFAULT NULL,
  filesize int CHECK (filesize > 0) NOT NULL DEFAULT 0,
  width int CHECK (width > 0) DEFAULT NULL,
  height int CHECK (height > 0) DEFAULT NULL,
  duration int CHECK (duration > 0) DEFAULT NULL,
  embed varchar(200) DEFAULT NULL,
  description text DEFAULT NULL,
  location text DEFAULT NULL,
  tags text DEFAULT NULL,
  metadata longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(metadata))
) ;

--
-- Daten für Tabelle `directus_files`
--

INSERT INTO directus_files (id, storage, filename_disk, filename_download, title, type, folder, uploaded_by, uploaded_on, charset, filesize, width, height, duration, embed, description, location, tags, metadata) VALUES
('8cbb43fe-4cdf-4991-8352-c461779cec02', 'finder', '8cbb43fe-4cdf-4991-8352-c461779cec02.jpg', '31.jpg', '31', 'image/jpeg', NULL, '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-05 17:29:40', NULL, 14223483, 5501, 4000, NULL, NULL, NULL, NULL, NULL, '{"icc":{"version":"2.1","intent":"Perceptual","cmm":"Lino","deviceClass":"Monitor","colorSpace":"RGB","connectionSpace":"XYZ","platform":"Microsoft","manufacturer":"IEC","model":"sRGB","creator":"HP","copyright":"Copyright (c) 1998 Hewlett-Packard C","description":"sRGB IEC61966-2.1","deviceModelDescription":"IEC 61966-2.1 Default RGB colour space - sRGB","viewingConditionsDescription":"Reference Viewing Condition in IEC61966-2.1"},"exif":{"image":{"Make":"SONY","Model":"ILCE-7","XResolution":240,"YResolution":240,"ResolutionUnit":2,"Software":"Adobe Photoshop Lightroom Classic 7.3.1 (Windows)","ModifyDate":"2018-06-03T10:34:37.000Z","ExifOffset":210},"thumbnail":{"Compression":6,"XResolution":72,"YResolution":72,"ResolutionUnit":2,"ThumbnailOffset":912,"ThumbnailLength":19086},"exif":{"ExposureTime":0.002,"FNumber":5.6,"ExposureProgram":1,"ISO":160,"SensitivityType":2,"RecommendedExposureIndex":160,"ExifVersion":{"type":"Buffer","data":[48,50,51,48]},"DateTimeOriginal":"2017-08-03T12:13:42.000Z","DateTimeDigitized":"2017-08-03T12:13:42.000Z","ShutterSpeedValue":8.965784,"ApertureValue":4.970854,"BrightnessValue":9.38828125,"ExposureBiasValue":0,"MaxApertureValue":4,"MeteringMode":5,"LightSource":0,"Flash":16,"FocalLength":17,"ColorSpace":1,"FocalPlaneXResolution":1675.2573852539062,"FocalPlaneYResolution":1675.2573852539062,"FocalPlaneResolutionUnit":3,"FileSource":{"type":"Buffer","data":[3]},"SceneType":{"type":"Buffer","data":[1]},"CustomRendered":0,"ExposureMode":1,"WhiteBalance":0,"DigitalZoomRatio":1,"FocalLengthIn35mmFormat":17,"SceneCaptureType":0,"Contrast":0,"Saturation":0,"Sharpness":0,"LensSpecification":[17,40,4,4],"LensModel":"17-40mm F4 G SSM OSS"}},"iptc":{"dateCreated":"20170803"}}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_folders`
--

CREATE TABLE directus_folders (
  id char(36) NOT NULL,
  name varchar(255) NOT NULL,
  parent_folder char(36) DEFAULT NULL
) ;

--
-- Daten für Tabelle `directus_folders`
--

INSERT INTO directus_folders (id, name, parent_folder) VALUES
('e2d1b468-7be9-4bf4-84f6-ea99e132a695', 'Some folder', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_permissions`
--

CREATE TABLE directus_permissions (
  id int CHECK (id > 0) NOT NULL,
  role char(36) DEFAULT NULL,
  collection varchar(64) NOT NULL,
  operation varchar(10) NOT NULL,
  permissions longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(permissions)),
  presets longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(presets)),
  fields text DEFAULT NULL,
  limit int CHECK (limit > 0) DEFAULT NULL
) ;

--
-- Daten für Tabelle `directus_permissions`
--

INSERT INTO directus_permissions (id, role, collection, operation, permissions, presets, fields, limit) VALUES
(1, NULL, 'directus_settings', 'read', '{}', NULL, 'project_name,project_logo,project_color,public_foreground,public_background,public_note', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_presets`
--

CREATE TABLE directus_presets (
  id int CHECK (id > 0) NOT NULL,
  title varchar(255) DEFAULT NULL,
  user char(36) DEFAULT NULL,
  role char(36) DEFAULT NULL,
  collection varchar(64) DEFAULT NULL,
  search varchar(100) DEFAULT NULL,
  filters longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(filters)),
  view_type varchar(100) DEFAULT 'tabular',
  view_query longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(view_query)),
  view_options longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(view_options))
) ;

--
-- Daten für Tabelle `directus_presets`
--

INSERT INTO directus_presets (id, title, user, role, collection, search, filters, view_type, view_query, view_options) VALUES
(1, NULL, '63716273-0f29-4648-8a2a-2af2948f6f78', NULL, 'directus_users', NULL, NULL, 'cards', NULL, '{"cards":{"icon":"person","title":"{{first_name}} {{last_name}}","subtitle":"{{ title }}","size":4}}'),
(2, NULL, '63716273-0f29-4648-8a2a-2af2948f6f78', NULL, 'directus_files', NULL, NULL, 'cards', '{"cards":{"sort":"folder"}}', '{"cards":{"icon":"insert_drive_file","title":"{{title}}","subtitle":"{{type}} • {{filesize}}","size":3}}'),
(3, NULL, '63716273-0f29-4648-8a2a-2af2948f6f78', NULL, 'houses', NULL, NULL, 'tabular', NULL, NULL),
(4, NULL, '63716273-0f29-4648-8a2a-2af2948f6f78', NULL, 'streets', NULL, NULL, 'tabular', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_relations`
--

CREATE TABLE directus_relations (
  id int CHECK (id > 0) NOT NULL,
  many_collection varchar(64) NOT NULL,
  many_field varchar(64) NOT NULL,
  many_primary varchar(64) NOT NULL,
  one_collection varchar(64) NOT NULL,
  one_field varchar(64) DEFAULT NULL,
  one_primary varchar(64) NOT NULL,
  junction_field varchar(64) DEFAULT NULL
) ;

--
-- Daten für Tabelle `directus_relations`
--

INSERT INTO directus_relations (id, many_collection, many_field, many_primary, one_collection, one_field, one_primary, junction_field) VALUES
(1, 'directus_users', 'role', 'id', 'directus_roles', 'users', 'id', NULL),
(2, 'directus_users', 'avatar', 'id', 'directus_files', NULL, 'id', NULL),
(3, 'directus_revisions', 'activity', 'id', 'directus_activity', 'revisions', 'id', NULL),
(4, 'directus_presets', 'user', 'id', 'directus_users', NULL, 'id', NULL),
(5, 'directus_folders', 'parent_folder', 'id', 'directus_folders', NULL, 'id', NULL),
(6, 'directus_files', 'folder', 'id', 'directus_folders', NULL, 'id', NULL),
(7, 'directus_files', 'uploaded_by', 'id', 'directus_users', NULL, 'id', NULL),
(8, 'directus_fields', 'collection', 'id', 'directus_collections', 'fields', 'id', NULL),
(9, 'directus_activity', 'action_by', 'id', 'directus_users', NULL, 'id', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_revisions`
--

CREATE TABLE directus_revisions (
  id int CHECK (id > 0) NOT NULL,
  activity int CHECK (activity > 0) NOT NULL,
  collection varchar(64) NOT NULL,
  item varchar(255) NOT NULL,
  data longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(data)),
  delta longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(delta)),
  parent int CHECK (parent > 0) DEFAULT NULL
) ;

--
-- Daten für Tabelle `directus_revisions`
--

INSERT INTO directus_revisions (id, activity, collection, item, data, delta, parent) VALUES
(1, 2, 'directus_presets', '1', '{"title":null,"role":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","search_query":null,"filters":null,"view_type":"cards","view_query":null,"view_options":{"cards":{"icon":"person","title":"{{first_name}} {{last_name}}","subtitle":"{{ title }}","size":4}},"collection":"directus_users","id":1}', '{"title":null,"role":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","search_query":null,"filters":null,"view_type":"cards","view_query":null,"view_options":{"cards":{"icon":"person","title":"{{first_name}} {{last_name}}","subtitle":"{{ title }}","size":4}},"collection":"directus_users","id":1}', NULL),
(2, 3, 'directus_files', '8cbb43fe-4cdf-4991-8352-c461779cec02', '{"title":"31","uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_download":"31.jpg","type":"image/jpeg","storage":"finder","id":"8cbb43fe-4cdf-4991-8352-c461779cec02"}', '{"title":"31","uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_download":"31.jpg","type":"image/jpeg","storage":"finder","id":"8cbb43fe-4cdf-4991-8352-c461779cec02"}', NULL),
(3, 6, 'directus_presets', '2', '{"title":null,"role":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","search_query":null,"filters":null,"view_type":"cards","view_query":null,"view_options":{"cards":{"icon":"insert_drive_file","title":"{{title}}","subtitle":"{{type}} • {{filesize}}","size":4}},"collection":"directus_files","id":2}', '{"title":null,"role":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","search_query":null,"filters":null,"view_type":"cards","view_query":null,"view_options":{"cards":{"icon":"insert_drive_file","title":"{{title}}","subtitle":"{{type}} • {{filesize}}","size":4}},"collection":"directus_files","id":2}', NULL),
(4, 7, 'directus_settings', '1', '{"public_background":"8cbb43fe-4cdf-4991-8352-c461779cec02","id":1}', '{"public_background":"8cbb43fe-4cdf-4991-8352-c461779cec02","id":1}', NULL),
(5, 10, 'directus_settings', '2', '{"project_logo":"8cbb43fe-4cdf-4991-8352-c461779cec02","id":2}', '{"project_logo":"8cbb43fe-4cdf-4991-8352-c461779cec02","id":2}', NULL),
(6, 12, 'directus_settings', '2', '{"id":2,"project_name":"Directus","project_url":null,"project_color":null,"project_logo":"8cbb43fe-4cdf-4991-8352-c461779cec02","public_foreground":null,"public_background":null,"public_note":null,"auth_idle_timeout":10080,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"telemetry":true}', '{"project_logo":null,"public_background":"8cbb43fe-4cdf-4991-8352-c461779cec02"}', NULL),
(7, 38, 'directus_collections', 'houses', '{"collection":"houses"}', '{"collection":"houses"}', NULL),
(8, 39, 'directus_fields', '82', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"houses","id":82}', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"houses","id":82}', NULL),
(9, 40, 'directus_fields', '83', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"houses","field":"name","id":83}', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"houses","field":"name","id":83}', NULL),
(10, 41, 'directus_fields', '84', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"houses","field":"location","id":84}', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"houses","field":"location","id":84}', NULL),
(11, 42, 'directus_fields', '85', '{"hidden":false,"interface":"toggle","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"houses","field":"garage","id":85}', '{"hidden":false,"interface":"toggle","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"houses","field":"garage","id":85}', NULL),
(12, 43, 'directus_fields', '86', '{"hidden":false,"interface":"slider","options":{"minValue":"1","maxValue":"4","stepInterval":"1"},"display":"template","display_options":null,"readonly":false,"special":null,"collection":"houses","field":"levels","id":86}', '{"hidden":false,"interface":"slider","options":{"minValue":"1","maxValue":"4","stepInterval":"1"},"display":"template","display_options":null,"readonly":false,"special":null,"collection":"houses","field":"levels","id":86}', NULL),
(13, 44, 'directus_presets', '3', '{"title":null,"role":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","search_query":null,"filters":null,"view_type":"tabular","view_query":null,"view_options":null,"collection":"houses","id":3}', '{"title":null,"role":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","search_query":null,"filters":null,"view_type":"tabular","view_query":null,"view_options":null,"collection":"houses","id":3}', NULL),
(14, 45, 'houses', '1', '{"name":"House1","location":"Street","levels":3,"id":1}', '{"name":"House1","location":"Street","levels":3,"id":1}', NULL),
(15, 47, 'houses', '1', '{"id":1,"name":"House1","location":"Street","garage":null,"levels":3}', '{"garage":true}', NULL),
(16, 48, 'houses', '1', '{"id":1,"name":"House1","location":"Street","garage":1,"levels":3}', '{"garage":false}', NULL),
(17, 50, 'houses', '1', '{"id":1,"name":"House1","location":"Street","garage":0,"levels":3}', '{"garage":true}', NULL),
(18, 51, 'houses', '1', '{"id":1,"name":"House1","location":"Street","garage":1,"levels":3}', '{"garage":true}', NULL),
(19, 52, 'houses', '1', '{"id":1,"name":"House1","location":"Street","garage":1,"levels":3}', '{"garage":true}', NULL),
(20, 53, 'houses', '1', '{"id":1,"name":"House1","location":"Street","garage":1,"levels":3}', '{"name":"House11"}', NULL),
(21, 55, 'houses', '1', '{"id":1,"name":"House11","location":"Street","garage":1,"levels":3}', '{"name":"House11w"}', NULL),
(22, 57, 'houses', '1', '{"id":1,"name":"House11w","location":"Street","garage":1,"levels":3}', '{"name":"House11"}', NULL),
(23, 58, 'houses', '1', '{"id":1,"name":"House11","location":"Street","garage":1,"levels":3}', '{"name":"House1"}', NULL),
(24, 60, 'houses', '1', '{"id":1,"name":"House1","location":"Street","garage":1,"levels":3}', '{"name":"House11"}', NULL),
(25, 65, 'houses', '1', '{"id":1,"name":"House11","location":"Street","garage":1,"levels":3}', '{"name":"House111"}', NULL),
(26, 110, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-06T13:01:06.000Z","avatar":null,"last_page":"/collections/houses"}', '{"last_page":"/collections/"}', NULL),
(27, 111, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-07T17:28:59.000Z","avatar":null,"last_page":"/collections/"}', '{"last_page":"/users/all"}', NULL),
(28, 112, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-07T17:32:11.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/files/"}', NULL),
(29, 113, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-07T17:32:12.000Z","avatar":null,"last_page":"/files/"}', '{"last_page":"/collections/"}', NULL),
(30, 115, 'directus_users', 'undefined', NULL, '{"first_name":"OtherTest"}', NULL),
(31, 116, 'directus_files', 'a9c5c965-6970-4ba5-ae7b-d4c35040d97a', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"a9c5c965-6970-4ba5-ae7b-d4c35040d97a"}', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"a9c5c965-6970-4ba5-ae7b-d4c35040d97a"}', NULL),
(32, 117, 'directus_files', 'a9c5c965-6970-4ba5-ae7b-d4c35040d97a', '{"id":"a9c5c965-6970-4ba5-ae7b-d4c35040d97a","storage":"","filename_disk":null,"filename_download":"","title":null,"type":null,"folder":null,"uploaded_by":null,"uploaded_on":"2020-08-07T17:51:25.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(33, 118, 'directus_roles', '93b37f74-538b-4332-97d3-2d8c04b70f29', '{"name":"test_role","id":"93b37f74-538b-4332-97d3-2d8c04b70f29"}', '{"name":"test_role","id":"93b37f74-538b-4332-97d3-2d8c04b70f29"}', NULL),
(34, 119, 'directus_roles', '93b37f74-538b-4332-97d3-2d8c04b70f29', '{"id":"93b37f74-538b-4332-97d3-2d8c04b70f29","name":"test_role","icon":"people","description":null,"ip_allow_list":null,"enforce_tfa":false,"module_list":null,"collection_list":null,"admin":false,"app_access":true}', '{"description":"This is a description"}', NULL),
(35, 121, 'directus_folders', '5e5806a5-840b-410f-b1d6-40e7e98d0b99', '{"name":"Berlin","id":"5e5806a5-840b-410f-b1d6-40e7e98d0b99"}', '{"name":"Berlin","id":"5e5806a5-840b-410f-b1d6-40e7e98d0b99"}', NULL),
(36, 123, 'directus_users', 'undefined', NULL, '{"first_name":"OtherTest"}', NULL),
(37, 124, 'directus_files', '9ca7989f-4348-4755-b913-361fc29135db', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"9ca7989f-4348-4755-b913-361fc29135db"}', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"9ca7989f-4348-4755-b913-361fc29135db"}', NULL),
(38, 125, 'directus_files', '9ca7989f-4348-4755-b913-361fc29135db', '{"id":"9ca7989f-4348-4755-b913-361fc29135db","storage":"","filename_disk":null,"filename_download":"","title":null,"type":null,"folder":null,"uploaded_by":null,"uploaded_on":"2020-08-07T18:00:22.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(39, 126, 'directus_folders', 'e4923dcb-c8bd-40c6-9ac2-a45649c4d26a', '{"name":"Berlin","id":"e4923dcb-c8bd-40c6-9ac2-a45649c4d26a"}', '{"name":"Berlin","id":"e4923dcb-c8bd-40c6-9ac2-a45649c4d26a"}', NULL),
(40, 128, 'directus_roles', '8d9658db-1c0a-4581-bb2e-97ed597a342e', '{"name":"test_role","id":"8d9658db-1c0a-4581-bb2e-97ed597a342e"}', '{"name":"test_role","id":"8d9658db-1c0a-4581-bb2e-97ed597a342e"}', NULL),
(41, 129, 'directus_roles', '8d9658db-1c0a-4581-bb2e-97ed597a342e', '{"id":"8d9658db-1c0a-4581-bb2e-97ed597a342e","name":"test_role","icon":"people","description":null,"ip_allow_list":null,"enforce_tfa":false,"module_list":null,"collection_list":null,"admin":false,"app_access":true}', '{"description":"This is a description"}', NULL),
(42, 131, 'directus_files', '7af43141-5a7a-4e4d-bd57-db64804cef51', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"7af43141-5a7a-4e4d-bd57-db64804cef51"}', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"7af43141-5a7a-4e4d-bd57-db64804cef51"}', NULL),
(43, 132, 'directus_files', '7af43141-5a7a-4e4d-bd57-db64804cef51', '{"id":"7af43141-5a7a-4e4d-bd57-db64804cef51","storage":"","filename_disk":null,"filename_download":"","title":null,"type":null,"folder":null,"uploaded_by":null,"uploaded_on":"2020-08-07T18:30:43.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(44, 133, 'directus_roles', 'ecb108ad-f877-47c2-a7e2-53dbf19a10ee', '{"name":"test_role","id":"ecb108ad-f877-47c2-a7e2-53dbf19a10ee"}', '{"name":"test_role","id":"ecb108ad-f877-47c2-a7e2-53dbf19a10ee"}', NULL),
(45, 134, 'directus_roles', 'ecb108ad-f877-47c2-a7e2-53dbf19a10ee', '{"id":"ecb108ad-f877-47c2-a7e2-53dbf19a10ee","name":"test_role","icon":"people","description":null,"ip_allow_list":null,"enforce_tfa":false,"module_list":null,"collection_list":null,"admin":false,"app_access":true}', '{"description":"This is a description"}', NULL),
(46, 136, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"63716273-0f29-4648-8a2a-2af2948f6f78"}', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"63716273-0f29-4648-8a2a-2af2948f6f78"}', NULL),
(47, 137, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T17:51:13.000Z","avatar":null,"last_page":"/collections/"}', '{"first_name":"OtherTest"}', NULL),
(48, 138, 'directus_folders', '86f344f7-5114-452f-8ba7-38448012666b', '{"name":"Berlin","id":"86f344f7-5114-452f-8ba7-38448012666b"}', '{"name":"Berlin","id":"86f344f7-5114-452f-8ba7-38448012666b"}', NULL),
(49, 141, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:30:44.000Z","avatar":null,"last_page":"/collections/"}', '{"last_page":"/collections/"}', NULL),
(50, 142, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:30:44.000Z","avatar":null,"last_page":"/collections/"}', '{"last_page":"/collections/houses"}', NULL),
(51, 143, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:48:45.000Z","avatar":null,"last_page":"/collections/houses"}', '{"last_page":"/collections/houses/1"}', NULL),
(52, 144, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:48:46.000Z","avatar":null,"last_page":"/collections/houses/1"}', '{"last_page":"/collections/houses"}', NULL),
(53, 145, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:48:54.000Z","avatar":null,"last_page":"/collections/houses"}', '{"last_page":"/settings/project"}', NULL),
(54, 146, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:48:56.000Z","avatar":null,"last_page":"/settings/project"}', '{"last_page":"/settings/data-model"}', NULL),
(55, 147, 'directus_collections', 'streets', '{"collection":"streets"}', '{"collection":"streets"}', NULL),
(56, 148, 'directus_fields', '87', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"streets","id":87}', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"streets","id":87}', NULL),
(57, 149, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:48:59.000Z","avatar":null,"last_page":"/settings/data-model"}', '{"last_page":"/settings/data-model/streets"}', NULL),
(58, 150, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:49:19.000Z","avatar":null,"last_page":"/settings/data-model/streets"}', '{"last_page":"/settings/data-model/streets/+?type=o2m"}', NULL),
(59, 151, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:50:06.000Z","avatar":null,"last_page":"/settings/data-model/streets/+?type=o2m"}', '{"last_page":"/settings/data-model/streets"}', NULL),
(60, 152, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:50:27.000Z","avatar":null,"last_page":"/settings/data-model/streets"}', '{"last_page":"/settings/data-model/streets/+?type=standard"}', NULL),
(61, 153, 'directus_fields', '88', '{"hidden":false,"interface":"numeric","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"streets","field":"houses","id":88}', '{"hidden":false,"interface":"numeric","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"streets","field":"houses","id":88}', NULL),
(62, 154, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:50:34.000Z","avatar":null,"last_page":"/settings/data-model/streets/+?type=standard"}', '{"last_page":"/settings/data-model/streets"}', NULL),
(63, 155, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:50:52.000Z","avatar":null,"last_page":"/settings/data-model/streets"}', '{"last_page":"/settings/data-model/streets/+?type=standard"}', NULL),
(64, 156, 'directus_fields', '89', '{"hidden":false,"interface":"text-input","options":null,"display":"format-title","display_options":null,"readonly":false,"special":null,"collection":"streets","field":"name","id":89}', '{"hidden":false,"interface":"text-input","options":null,"display":"format-title","display_options":null,"readonly":false,"special":null,"collection":"streets","field":"name","id":89}', NULL),
(65, 157, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:51:09.000Z","avatar":null,"last_page":"/settings/data-model/streets/+?type=standard"}', '{"last_page":"/settings/data-model/streets"}', NULL),
(66, 158, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:51:32.000Z","avatar":null,"last_page":"/settings/data-model/streets"}', '{"last_page":"/collections/"}', NULL),
(67, 159, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:51:42.000Z","avatar":null,"last_page":"/collections/"}', '{"last_page":"/files/"}', NULL),
(68, 160, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:51:43.000Z","avatar":null,"last_page":"/files/"}', '{"last_page":"/settings/project"}', NULL),
(69, 161, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:51:44.000Z","avatar":null,"last_page":"/settings/project"}', '{"last_page":"/settings/data-model"}', NULL),
(70, 162, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:51:45.000Z","avatar":null,"last_page":"/settings/data-model"}', '{"last_page":"/settings/data-model/houses"}', NULL),
(71, 163, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:51:47.000Z","avatar":null,"last_page":"/settings/data-model/houses"}', '{"last_page":"/settings/data-model/houses/+?type=standard"}', NULL),
(72, 164, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:51:52.000Z","avatar":null,"last_page":"/settings/data-model/houses/+?type=standard"}', '{"last_page":"/settings/data-model/houses"}', NULL),
(73, 165, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:51:58.000Z","avatar":null,"last_page":"/settings/data-model/houses"}', '{"last_page":"/settings/data-model/houses/location"}', NULL),
(74, 166, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:52:00.000Z","avatar":null,"last_page":"/settings/data-model/houses/location"}', '{"last_page":"/settings/data-model/houses"}', NULL),
(75, 167, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:52:02.000Z","avatar":null,"last_page":"/settings/data-model/houses"}', '{"last_page":"/settings/data-model/houses/+?type=standard"}', NULL),
(76, 168, 'directus_fields', '90', '{"hidden":false,"interface":"numeric","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"houses","field":"street","id":90}', '{"hidden":false,"interface":"numeric","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"houses","field":"street","id":90}', NULL),
(77, 169, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:52:09.000Z","avatar":null,"last_page":"/settings/data-model/houses/+?type=standard"}', '{"last_page":"/settings/data-model/houses"}', NULL),
(78, 170, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:52:22.000Z","avatar":null,"last_page":"/settings/data-model/houses"}', '{"last_page":"/collections/"}', NULL),
(79, 171, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:52:25.000Z","avatar":null,"last_page":"/collections/"}', '{"last_page":"/collections/houses"}', NULL),
(80, 172, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:52:25.000Z","avatar":null,"last_page":"/collections/houses"}', '{"last_page":"/collections/houses/1"}', NULL),
(81, 173, 'houses', '1', '{"id":1,"name":"House111","garage":1,"levels":3,"street":null}', '{"name":"House1","street":"1"}', NULL),
(82, 174, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:52:27.000Z","avatar":null,"last_page":"/collections/houses/1"}', '{"last_page":"/collections/houses"}', NULL),
(83, 175, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:52:36.000Z","avatar":null,"last_page":"/collections/houses"}', '{"last_page":"/collections/houses/+"}', NULL),
(84, 176, 'houses', '2', '{"name":"House2","street":"1","id":2}', '{"name":"House2","street":"1","id":2}', NULL),
(85, 177, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:52:38.000Z","avatar":null,"last_page":"/collections/houses/+"}', '{"last_page":"/collections/houses"}', NULL),
(86, 178, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:52:48.000Z","avatar":null,"last_page":"/collections/houses"}', '{"last_page":"/collections/houses/+"}', NULL),
(87, 179, 'houses', '3', '{"name":"House3","street":"1","id":3}', '{"name":"House3","street":"1","id":3}', NULL),
(88, 180, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:52:50.000Z","avatar":null,"last_page":"/collections/houses/+"}', '{"last_page":"/collections/houses"}', NULL),
(89, 181, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:52:57.000Z","avatar":null,"last_page":"/collections/houses"}', '{"last_page":"/collections/houses/+"}', NULL),
(90, 182, 'houses', '4', '{"name":"House4","street":"2","id":4}', '{"name":"House4","street":"2","id":4}', NULL),
(91, 183, 'directus_presets', '4', '{"title":null,"role":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","search_query":null,"filters":null,"view_type":"tabular","view_query":null,"view_options":null,"collection":"streets","id":4}', '{"title":null,"role":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","search_query":null,"filters":null,"view_type":"tabular","view_query":null,"view_options":null,"collection":"streets","id":4}', NULL),
(92, 184, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:52:59.000Z","avatar":null,"last_page":"/collections/houses/+"}', '{"last_page":"/collections/houses"}', NULL),
(93, 185, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:53:06.000Z","avatar":null,"last_page":"/collections/houses"}', '{"last_page":"/collections/streets"}', NULL),
(94, 186, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:53:07.000Z","avatar":null,"last_page":"/collections/streets"}', '{"last_page":"/collections/streets/+"}', NULL),
(95, 187, 'streets', '1', '{"name":"Street 1","id":1}', '{"name":"Street 1","id":1}', NULL),
(96, 188, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:53:08.000Z","avatar":null,"last_page":"/collections/streets/+"}', '{"last_page":"/collections/streets"}', NULL),
(97, 189, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:53:16.000Z","avatar":null,"last_page":"/collections/streets"}', '{"last_page":"/collections/streets/+"}', NULL),
(98, 190, 'streets', '2', '{"name":"Street 2","id":2}', '{"name":"Street 2","id":2}', NULL),
(99, 191, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:53:17.000Z","avatar":null,"last_page":"/collections/streets/+"}', '{"last_page":"/collections/streets"}', NULL),
(100, 192, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:53:22.000Z","avatar":null,"last_page":"/collections/streets"}', '{"last_page":"/collections/houses"}', NULL),
(101, 193, 'directus_users', 'undefined', NULL, '{"first_name":"OtherTest"}', NULL),
(102, 194, 'directus_files', '9d2035c7-d803-4770-85cf-b4439509ed29', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"9d2035c7-d803-4770-85cf-b4439509ed29"}', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"9d2035c7-d803-4770-85cf-b4439509ed29"}', NULL),
(103, 195, 'directus_files', '9d2035c7-d803-4770-85cf-b4439509ed29', '{"id":"9d2035c7-d803-4770-85cf-b4439509ed29","storage":"","filename_disk":null,"filename_download":"","title":null,"type":null,"folder":null,"uploaded_by":null,"uploaded_on":"2020-08-07T18:56:20.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(104, 196, 'directus_roles', '6d2eda2a-2f00-45ca-87ac-166d0dda20f0', '{"name":"test_role","id":"6d2eda2a-2f00-45ca-87ac-166d0dda20f0"}', '{"name":"test_role","id":"6d2eda2a-2f00-45ca-87ac-166d0dda20f0"}', NULL);
INSERT INTO directus_revisions (id, activity, collection, item, data, delta, parent) VALUES
(105, 197, 'directus_folders', 'f8f5a832-bd39-4faf-963b-328bd3a8fb02', '{"name":"Berlin","id":"f8f5a832-bd39-4faf-963b-328bd3a8fb02"}', '{"name":"Berlin","id":"f8f5a832-bd39-4faf-963b-328bd3a8fb02"}', NULL),
(106, 198, 'directus_roles', '6d2eda2a-2f00-45ca-87ac-166d0dda20f0', '{"id":"6d2eda2a-2f00-45ca-87ac-166d0dda20f0","name":"test_role","icon":"people","description":null,"ip_allow_list":null,"enforce_tfa":false,"module_list":null,"collection_list":null,"admin":false,"app_access":true}', '{"description":"This is a description"}', NULL),
(107, 201, 'directus_relations', '14', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":14}', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":14}', NULL),
(108, 204, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:53:24.000Z","avatar":null,"last_page":"/collections/houses"}', '{"last_page":"/collections/houses"}', NULL),
(109, 205, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:53:24.000Z","avatar":null,"last_page":"/collections/houses"}', '{"last_page":"/collections/streets"}', NULL),
(110, 206, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:58:37.000Z","avatar":null,"last_page":"/collections/streets"}', '{"last_page":"/collections/houses"}', NULL),
(111, 207, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:58:38.000Z","avatar":null,"last_page":"/collections/houses"}', '{"last_page":"/users/all"}', NULL),
(112, 208, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:58:41.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/63716273-0f29-4648-8a2a-2af2948f6f78"}', NULL),
(113, 209, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"OtherTest","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:58:44.000Z","avatar":null,"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/63716273-0f29-4648-8a2a-2af2948f6f78"}', '{"first_name":"Admin"}', NULL),
(114, 210, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:59:09.000Z","avatar":null,"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/63716273-0f29-4648-8a2a-2af2948f6f78"}', '{"last_page":"/users/all"}', NULL),
(115, 211, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:59:11.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/collections/"}', NULL),
(116, 212, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T18:59:15.000Z","avatar":null,"last_page":"/collections/"}', '{"last_page":"/users/all"}', NULL),
(117, 213, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:01:38.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/users/+"}', NULL),
(118, 214, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"first_name":"A","last_name":"A","email":"A@A.com","password":"A","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","id":"63716273-0f29-4648-8a2a-2af2948f6f78"}', '{"first_name":"A","last_name":"A","email":"A@A.com","password":"A","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","id":"63716273-0f29-4648-8a2a-2af2948f6f78"}', NULL),
(119, 215, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:01:40.000Z","avatar":null,"last_page":"/users/+"}', '{"last_page":"/users/all"}', NULL),
(120, 216, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:02:12.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/"}', NULL),
(121, 217, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:02:14.000Z","avatar":null,"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/"}', '{"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/63716273-0f29-4648-8a2a-2af2948f6f78"}', NULL),
(122, 219, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:02:18.000Z","avatar":null,"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/63716273-0f29-4648-8a2a-2af2948f6f78"}', '{"last_page":"/users/all"}', NULL),
(123, 220, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:02:21.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/"}', NULL),
(124, 221, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:02:22.000Z","avatar":null,"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/"}', '{"last_page":"/users/+"}', NULL),
(125, 223, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:14:45.000Z","avatar":null,"last_page":"/users/+"}', '{"last_page":"/collections/"}', NULL),
(126, 224, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:16:15.000Z","avatar":null,"last_page":"/collections/"}', '{"last_page":"/users/all"}', NULL),
(127, 225, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:16:17.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/users/+"}', NULL),
(128, 229, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"first_name":"User Name","last_name":"User Name","email":"mail@mail.com","password":"password","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","status":"active","id":"63716273-0f29-4648-8a2a-2af2948f6f78"}', '{"first_name":"User Name","last_name":"User Name","email":"mail@mail.com","password":"password","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","status":"active","id":"63716273-0f29-4648-8a2a-2af2948f6f78"}', NULL),
(129, 230, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:16:19.000Z","avatar":null,"last_page":"/users/+"}', '{"last_page":"/users/all"}', NULL),
(130, 231, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:35:11.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/"}', NULL),
(131, 233, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:35:14.000Z","avatar":null,"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/"}', '{"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/"}', NULL),
(132, 234, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:35:14.000Z","avatar":null,"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/"}', '{"last_page":"/users/+"}', NULL),
(133, 235, 'directus_users', 'c4594c85-6539-490f-a7b6-60057250f241', '{"first_name":"A","last_name":"A","email":"A@A.co","password":"A","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","status":"active","id":"c4594c85-6539-490f-a7b6-60057250f241"}', '{"first_name":"A","last_name":"A","email":"A@A.co","password":"A","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","status":"active","id":"c4594c85-6539-490f-a7b6-60057250f241"}', NULL),
(134, 236, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:38:09.000Z","avatar":null,"last_page":"/users/+"}', '{"last_page":"/users/all"}', NULL),
(135, 237, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:38:25.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/63716273-0f29-4648-8a2a-2af2948f6f78"}', NULL),
(136, 238, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:38:27.000Z","avatar":null,"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/63716273-0f29-4648-8a2a-2af2948f6f78"}', '{"last_page":"/users/all"}', NULL),
(137, 239, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:38:28.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/c4594c85-6539-490f-a7b6-60057250f241"}', NULL),
(138, 240, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:38:29.000Z","avatar":null,"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/c4594c85-6539-490f-a7b6-60057250f241"}', '{"last_page":"/users/all"}', NULL),
(139, 241, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:38:30.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/c4594c85-6539-490f-a7b6-60057250f241"}', NULL),
(140, 242, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:38:32.000Z","avatar":null,"last_page":"/users/2f24211d-d928-469a-aea3-3c8f53d4e426/c4594c85-6539-490f-a7b6-60057250f241"}', '{"last_page":"/users/all"}', NULL),
(141, 243, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:38:43.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/collections/"}', NULL),
(142, 244, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:38:55.000Z","avatar":null,"last_page":"/collections/"}', '{"last_page":"/collections/houses"}', NULL),
(143, 245, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:38:56.000Z","avatar":null,"last_page":"/collections/houses"}', '{"last_page":"/collections/streets"}', NULL),
(144, 246, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:38:57.000Z","avatar":null,"last_page":"/collections/streets"}', '{"last_page":"/settings/project"}', NULL),
(145, 247, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:39:05.000Z","avatar":null,"last_page":"/settings/project"}', '{"last_page":"/users/all"}', NULL),
(146, 248, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:39:12.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/users/+"}', NULL),
(147, 249, 'directus_users', '3ca7d6eb-09fe-4f00-bfaa-b23cfb6dec7d', '{"first_name":"B","last_name":"B","email":"B@B.c","password":"B","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","status":"active","id":"3ca7d6eb-09fe-4f00-bfaa-b23cfb6dec7d"}', '{"first_name":"B","last_name":"B","email":"B@B.c","password":"B","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","status":"active","id":"3ca7d6eb-09fe-4f00-bfaa-b23cfb6dec7d"}', NULL),
(148, 250, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:39:14.000Z","avatar":null,"last_page":"/users/+"}', '{"last_page":"/users/all"}', NULL),
(149, 251, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:39:32.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/users/+"}', NULL),
(150, 252, 'directus_users', 'bb001b64-dfe4-4cbb-92b1-70d213882c71', '{"first_name":"D","last_name":"D","email":"d@d.d","password":"d","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","id":"bb001b64-dfe4-4cbb-92b1-70d213882c71"}', '{"first_name":"D","last_name":"D","email":"d@d.d","password":"d","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","id":"bb001b64-dfe4-4cbb-92b1-70d213882c71"}', NULL),
(151, 253, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T19:48:35.000Z","avatar":null,"last_page":"/users/+"}', '{"last_page":"/users/all"}', NULL),
(152, 254, 'directus_users', 'bf2a3e9c-85c5-46f7-980e-42586063d055', '{"first_name":"Test","last_name":"User","email":"test@user.com","password":"password","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","status":"active","id":"bf2a3e9c-85c5-46f7-980e-42586063d055"}', '{"first_name":"Test","last_name":"User","email":"test@user.com","password":"password","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","status":"active","id":"bf2a3e9c-85c5-46f7-980e-42586063d055"}', NULL),
(153, 255, 'directus_users', '3be03217-db01-4313-8b80-dea8120dd81a', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"3be03217-db01-4313-8b80-dea8120dd81a"}', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"3be03217-db01-4313-8b80-dea8120dd81a"}', NULL),
(154, 256, 'directus_users', '3be03217-db01-4313-8b80-dea8120dd81a', '{"id":"3be03217-db01-4313-8b80-dea8120dd81a","first_name":"Test","last_name":"User","email":"test@user.com","password":"$argon2i$v=19$m=4096,t=3,p=1$kx6+QlnANt4gOiFi0n+G+g$P5A9nPlHD8b38WzMPrf+aIHGqMeQNF3cCSeYPd3WKSA","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-07T19:52:42.000Z","avatar":null,"last_page":null}', '{"first_name":"OtherTest"}', NULL),
(155, 259, 'directus_users', 'a0c1b06e-1f92-4a2b-ae0e-aa679ebeea69', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"a0c1b06e-1f92-4a2b-ae0e-aa679ebeea69"}', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"a0c1b06e-1f92-4a2b-ae0e-aa679ebeea69"}', NULL),
(156, 260, 'directus_users', 'a0c1b06e-1f92-4a2b-ae0e-aa679ebeea69', '{"id":"a0c1b06e-1f92-4a2b-ae0e-aa679ebeea69","first_name":"Test","last_name":"User","email":"test@user.com","password":"$argon2i$v=19$m=4096,t=3,p=1$V28WVx9HeMRsCXs8Sxe5gQ$wLZp0T+3N//hHSM9HHpNgbIvmgKplyBUPsdbelh1qeY","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-07T19:56:17.000Z","avatar":null,"last_page":null}', '{"first_name":"OtherTest"}', NULL),
(157, 262, 'directus_users', 'f0fa96db-78c2-4d46-aa60-553e87591461', '{"first_name":"Test","last_name":"User","email":"test@user.com","password":"password","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","status":"active","id":"f0fa96db-78c2-4d46-aa60-553e87591461"}', '{"first_name":"Test","last_name":"User","email":"test@user.com","password":"password","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","status":"active","id":"f0fa96db-78c2-4d46-aa60-553e87591461"}', NULL),
(158, 264, 'directus_users', 'de66f1ee-ae62-4aac-9d78-8149509ff8a2', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"de66f1ee-ae62-4aac-9d78-8149509ff8a2"}', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"de66f1ee-ae62-4aac-9d78-8149509ff8a2"}', NULL),
(159, 265, 'directus_users', 'de66f1ee-ae62-4aac-9d78-8149509ff8a2', '{"id":"de66f1ee-ae62-4aac-9d78-8149509ff8a2","first_name":"Test","last_name":"User","email":"test@user.com","password":"$argon2i$v=19$m=4096,t=3,p=1$QpIseflhnXD9bqiV3j01Qw$HguxEFDHL7iPvSe9xQ5t7uLJ5GglROQTwLsG7gaAM84","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-07T19:59:52.000Z","avatar":null,"last_page":null}', '{"first_name":"OtherTest"}', NULL),
(160, 267, 'directus_users', 'fae6f74d-871f-41ec-bf6c-697093830c85', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"fae6f74d-871f-41ec-bf6c-697093830c85"}', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"fae6f74d-871f-41ec-bf6c-697093830c85"}', NULL),
(161, 268, 'directus_users', 'fae6f74d-871f-41ec-bf6c-697093830c85', '{"id":"fae6f74d-871f-41ec-bf6c-697093830c85","first_name":"Test","last_name":"User","email":"test@user.com","password":"$argon2i$v=19$m=4096,t=3,p=1$Izhafj8bzyYCdkdF64KRcA$71JO6456hbdJc+GEwyR3deVCSdPxniGZb296D27C3V8","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-07T20:03:44.000Z","avatar":null,"last_page":null}', '{"first_name":"OtherTest"}', NULL),
(162, 270, 'directus_users', '93f3750c-6733-4b57-b09f-08c517274abf', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"93f3750c-6733-4b57-b09f-08c517274abf"}', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"93f3750c-6733-4b57-b09f-08c517274abf"}', NULL),
(163, 271, 'directus_users', '93f3750c-6733-4b57-b09f-08c517274abf', '{"id":"93f3750c-6733-4b57-b09f-08c517274abf","first_name":"Test","last_name":"User","email":"test@user.com","password":"$argon2i$v=19$m=4096,t=3,p=1$kSVyQb9skZmaZ19URqlytQ$xe9qvoKe2KTykjERAVQn0c7m7xNVMUbswFIaFdGLyGE","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-07T20:06:47.000Z","avatar":null,"last_page":null}', '{"first_name":"OtherTest"}', NULL),
(164, 274, 'directus_users', 'f1fec47c-c779-4693-818c-a55ac9ef4f1b', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"f1fec47c-c779-4693-818c-a55ac9ef4f1b"}', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"f1fec47c-c779-4693-818c-a55ac9ef4f1b"}', NULL),
(165, 275, 'directus_users', 'f1fec47c-c779-4693-818c-a55ac9ef4f1b', '{"id":"f1fec47c-c779-4693-818c-a55ac9ef4f1b","first_name":"Test","last_name":"User","email":"test@user.com","password":"$argon2i$v=19$m=4096,t=3,p=1$KTJqhRIxjpyBnejib2Jw7Q$yQ5S74kEdrAZG7k4Bu6aqemXTYlReDEbP7nzVvT1QJI","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-07T20:16:05.000Z","avatar":null,"last_page":null}', '{"first_name":"OtherTest"}', NULL),
(166, 277, 'directus_users', 'fbe7f243-35c1-440f-93f0-325d969ca008', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"fbe7f243-35c1-440f-93f0-325d969ca008"}', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"fbe7f243-35c1-440f-93f0-325d969ca008"}', NULL),
(167, 278, 'directus_users', 'fbe7f243-35c1-440f-93f0-325d969ca008', '{"id":"fbe7f243-35c1-440f-93f0-325d969ca008","first_name":"Test","last_name":"User","email":"test@user.com","password":"$argon2i$v=19$m=4096,t=3,p=1$HzpdwkDn/VVYvVe0hmq32Q$LRv4jKrW9gIsiy7npnB26ph5HV12Aib/QjD6sOW0/i4","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-07T20:17:23.000Z","avatar":null,"last_page":null}', '{"first_name":"OtherTest"}', NULL),
(168, 280, 'directus_users', '2aa60725-9dcd-4185-889d-25aa36493654', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"2aa60725-9dcd-4185-889d-25aa36493654"}', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"2aa60725-9dcd-4185-889d-25aa36493654"}', NULL),
(169, 281, 'directus_users', '2aa60725-9dcd-4185-889d-25aa36493654', '{"id":"2aa60725-9dcd-4185-889d-25aa36493654","first_name":"Test","last_name":"User","email":"test@user.com","password":"$argon2i$v=19$m=4096,t=3,p=1$r660hvfk7nB9y4zU+xTfGg$hS7PUopW4dGNWhCKv/C8uxy4mxBNvgU+ZfNKb9jL2t0","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-07T20:21:36.000Z","avatar":null,"last_page":null}', '{"first_name":"OtherTest"}', NULL),
(170, 284, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T20:16:04.000Z","avatar":null,"last_page":"/settings"}', '{"last_page":"/settings"}', NULL),
(171, 286, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T20:16:04.000Z","avatar":null,"last_page":"/settings"}', '{"last_page":"/users/all"}', NULL),
(172, 296, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T20:32:22.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/users/all"}', NULL),
(173, 298, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T20:32:22.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/users/all"}', NULL),
(174, 299, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-07T20:32:22.000Z","avatar":null,"last_page":"/users/all"}', '{"last_page":"/settings/project"}', NULL),
(175, 300, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:26:04.000Z","avatar":null,"last_page":"/settings/project"}', '{"last_page":"/files/"}', NULL),
(176, 301, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:26:25.000Z","avatar":null,"last_page":"/files/"}', '{"last_page":"/settings/project"}', NULL),
(177, 302, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:26:25.000Z","avatar":null,"last_page":"/settings/project"}', '{"last_page":"/files/"}', NULL),
(178, 303, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:26:26.000Z","avatar":null,"last_page":"/files/"}', '{"last_page":"/settings/project"}', NULL),
(179, 304, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:26:27.000Z","avatar":null,"last_page":"/settings/project"}', '{"last_page":"/files/"}', NULL);
INSERT INTO directus_revisions (id, activity, collection, item, data, delta, parent) VALUES
(180, 305, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:26:28.000Z","avatar":null,"last_page":"/files/"}', '{"last_page":"/settings/project"}', NULL),
(181, 306, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:26:30.000Z","avatar":null,"last_page":"/settings/project"}', '{"last_page":"/files/"}', NULL),
(182, 307, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:26:37.000Z","avatar":null,"last_page":"/files/"}', '{"last_page":"/settings/project"}', NULL),
(183, 308, 'directus_settings', '2', '{"id":2,"project_name":"Directus","project_url":null,"project_color":null,"project_logo":null,"public_foreground":null,"public_background":"8cbb43fe-4cdf-4991-8352-c461779cec02","public_note":null,"auth_idle_timeout":10080,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"telemetry":true}', '{"project_name":"Directus2"}', NULL),
(184, 309, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:26:38.000Z","avatar":null,"last_page":"/settings/project"}', '{"last_page":"/settings/data-model"}', NULL),
(185, 311, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:27:55.000Z","avatar":null,"last_page":"/settings/data-model"}', '{"last_page":"/settings/data-model"}', NULL),
(186, 312, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:27:55.000Z","avatar":null,"last_page":"/settings/data-model"}', '{"last_page":"/settings/data-model/directus_settings"}', NULL),
(187, 313, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:28:34.000Z","avatar":null,"last_page":"/settings/data-model/directus_settings"}', '{"last_page":"/collections/"}', NULL),
(188, 314, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:28:53.000Z","avatar":null,"last_page":"/collections/"}', '{"last_page":"/settings/project"}', NULL),
(189, 315, 'directus_settings', '2', '{"id":2,"project_name":"Directus2","project_url":null,"project_color":null,"project_logo":null,"public_foreground":null,"public_background":"8cbb43fe-4cdf-4991-8352-c461779cec02","public_note":null,"auth_idle_timeout":10080,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"telemetry":true}', '{"public_note":"This is a public note!"}', NULL),
(190, 316, 'directus_roles', '5d621af0-8fea-47c7-afe1-36b6a30362db', '{"name":"test_role","id":"5d621af0-8fea-47c7-afe1-36b6a30362db"}', '{"name":"test_role","id":"5d621af0-8fea-47c7-afe1-36b6a30362db"}', NULL),
(191, 317, 'directus_roles', '5d621af0-8fea-47c7-afe1-36b6a30362db', '{"id":"5d621af0-8fea-47c7-afe1-36b6a30362db","name":"test_role","icon":"people","description":null,"ip_allow_list":null,"enforce_tfa":false,"module_list":null,"collection_list":null,"admin":false,"app_access":true}', '{"description":"This is a description"}', NULL),
(192, 319, 'directus_roles', '33d8fd4e-e58f-41eb-80cd-a108e65a02ef', '{"name":"test_role","id":"33d8fd4e-e58f-41eb-80cd-a108e65a02ef"}', '{"name":"test_role","id":"33d8fd4e-e58f-41eb-80cd-a108e65a02ef"}', NULL),
(193, 320, 'directus_roles', '33d8fd4e-e58f-41eb-80cd-a108e65a02ef', '{"id":"33d8fd4e-e58f-41eb-80cd-a108e65a02ef","name":"test_role","icon":"people","description":null,"ip_allow_list":null,"enforce_tfa":false,"module_list":null,"collection_list":null,"admin":false,"app_access":true}', '{"description":"This is a description"}', NULL),
(194, 323, 'directus_relations', '15', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":15}', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":15}', NULL),
(195, 325, 'directus_relations', '16', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":16}', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":16}', NULL),
(196, 326, 'directus_relations', '17', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":17}', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":17}', NULL),
(197, 327, 'directus_relations', '18', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":18}', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":18}', NULL),
(198, 328, 'directus_relations', '19', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":19}', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":19}', NULL),
(199, 329, 'directus_relations', '19', '{"id":19,"many_collection":"houses","many_field":"street","many_primary":"","one_collection":"streets","one_field":null,"one_primary":"","junction_field":null}', '{"one_field":"garage"}', NULL),
(200, 332, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T19:29:04.000Z","avatar":null,"last_page":"/settings/project"}', '{"last_page":"/settings/roles"}', NULL),
(201, 333, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:01:26.000Z","avatar":null,"last_page":"/settings/roles"}', '{"last_page":"/settings/roles/2f24211d-d928-469a-aea3-3c8f53d4e426"}', NULL),
(202, 334, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:01:27.000Z","avatar":null,"last_page":"/settings/roles/2f24211d-d928-469a-aea3-3c8f53d4e426"}', '{"last_page":"/settings/roles/"}', NULL),
(203, 335, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:01:32.000Z","avatar":null,"last_page":"/settings/roles/"}', '{"last_page":"/settings/roles/+"}', NULL),
(204, 336, 'directus_roles', '0879963d-047e-4eb7-b876-95e4b2df3c4b', '{"name":"Moderator","id":"0879963d-047e-4eb7-b876-95e4b2df3c4b"}', '{"name":"Moderator","id":"0879963d-047e-4eb7-b876-95e4b2df3c4b"}', NULL),
(205, 337, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:01:33.000Z","avatar":null,"last_page":"/settings/roles/+"}', '{"last_page":"/settings/roles"}', NULL),
(206, 338, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:02:14.000Z","avatar":null,"last_page":"/settings/roles"}', '{"last_page":"/settings/roles/0879963d-047e-4eb7-b876-95e4b2df3c4b"}', NULL),
(207, 339, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:02:16.000Z","avatar":null,"last_page":"/settings/roles/0879963d-047e-4eb7-b876-95e4b2df3c4b"}', '{"last_page":"/settings/roles/"}', NULL),
(208, 340, 'directus_permissions', '12', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":12}', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":12}', NULL),
(209, 341, 'directus_permissions', '13', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":13}', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":13}', NULL),
(210, 343, 'directus_permissions', '14', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":14}', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":14}', NULL),
(211, 345, 'directus_permissions', '15', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":15}', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":15}', NULL),
(212, 347, 'directus_permissions', '16', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":16}', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":16}', NULL),
(213, 348, 'directus_permissions', '16', '{"id":16,"role":"2f24211d-d928-469a-aea3-3c8f53d4e426","collection":"houses","operation":"","permissions":null,"presets":null,"fields":null,"limit":null}', '{"collection":"streets"}', NULL),
(214, 351, 'streets', '3', '{"status":"active","email":"test@1234.com","first_name":"Test","last_name":"Name","frequency":["weekly"],"id":3}', '{"status":"active","email":"test@1234.com","first_name":"Test","last_name":"Name","frequency":["weekly"],"id":3}', NULL),
(215, 353, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:02:20.000Z","avatar":null,"last_page":"/settings/roles/"}', '{"last_page":"/collections/"}', NULL),
(216, 354, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:16:10.000Z","avatar":null,"last_page":"/collections/"}', '{"last_page":"/collections/streets"}', NULL),
(217, 355, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:16:11.000Z","avatar":null,"last_page":"/collections/streets"}', '{"last_page":"/collections/streets/1"}', NULL),
(218, 356, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:16:12.000Z","avatar":null,"last_page":"/collections/streets/1"}', '{"last_page":"/collections/streets/"}', NULL),
(219, 357, 'streets', '4', '{"name":"Test street","id":4}', '{"name":"Test street","id":4}', NULL),
(220, 358, 'streets', '4', '{"id":4,"name":"Test street"}', '{"name":"Some other Street"}', NULL),
(221, 360, 'directus_folders', '0cf0e03d-4364-45df-b77b-ca61f61869d2', '{"name":"Berlin","id":"0cf0e03d-4364-45df-b77b-ca61f61869d2"}', '{"name":"Berlin","id":"0cf0e03d-4364-45df-b77b-ca61f61869d2"}', NULL),
(222, 362, 'directus_folders', '84fef90e-87c1-4867-aa4f-a475c1c66c8d', '{"name":"Berlin","id":"84fef90e-87c1-4867-aa4f-a475c1c66c8d"}', '{"name":"Berlin","id":"84fef90e-87c1-4867-aa4f-a475c1c66c8d"}', NULL),
(223, 364, 'directus_folders', '467cd0b5-46d4-47e0-821b-db15883072a2', '{"name":"Berlin","id":"467cd0b5-46d4-47e0-821b-db15883072a2"}', '{"name":"Berlin","id":"467cd0b5-46d4-47e0-821b-db15883072a2"}', NULL),
(224, 366, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:16:14.000Z","avatar":null,"last_page":"/collections/streets/"}', '{"last_page":"/settings/project"}', NULL),
(225, 367, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:22:59.000Z","avatar":null,"last_page":"/settings/project"}', '{"last_page":"/files/"}', NULL),
(226, 368, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:23:02.000Z","avatar":null,"last_page":"/files/"}', '{"last_page":"/files/+"}', NULL),
(227, 369, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:23:05.000Z","avatar":null,"last_page":"/files/+"}', '{"last_page":"/files"}', NULL),
(228, 370, 'directus_folders', 'e2d1b468-7be9-4bf4-84f6-ea99e132a695', '{"name":"Some folder","parent_folder":null,"id":"e2d1b468-7be9-4bf4-84f6-ea99e132a695"}', '{"name":"Some folder","parent_folder":null,"id":"e2d1b468-7be9-4bf4-84f6-ea99e132a695"}', NULL),
(229, 371, 'directus_folders', '08c1d0f4-e640-49c9-90e9-d4595c26e2a7', '{"name":"Berlin","id":"08c1d0f4-e640-49c9-90e9-d4595c26e2a7"}', '{"name":"Berlin","id":"08c1d0f4-e640-49c9-90e9-d4595c26e2a7"}', NULL),
(230, 372, 'directus_folders', '08c1d0f4-e640-49c9-90e9-d4595c26e2a7', '{"id":"08c1d0f4-e640-49c9-90e9-d4595c26e2a7","name":"Berlin","parent_folder":null}', '{"parent_folder":"e2d1b468-7be9-4bf4-84f6-ea99e132a695"}', NULL),
(231, 374, 'directus_folders', 'eaf04095-ee6b-4fc8-be27-e9ea430b383c', '{"name":"Berlin","id":"eaf04095-ee6b-4fc8-be27-e9ea430b383c"}', '{"name":"Berlin","id":"eaf04095-ee6b-4fc8-be27-e9ea430b383c"}', NULL),
(232, 375, 'directus_folders', 'eaf04095-ee6b-4fc8-be27-e9ea430b383c', '{"id":"eaf04095-ee6b-4fc8-be27-e9ea430b383c","name":"Berlin","parent_folder":null}', '{"parent_folder":"e2d1b468-7be9-4bf4-84f6-ea99e132a695"}', NULL),
(233, 377, 'directus_files', '901e9b40-f6f9-4b00-af90-dada85ecbb61', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"901e9b40-f6f9-4b00-af90-dada85ecbb61"}', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"901e9b40-f6f9-4b00-af90-dada85ecbb61"}', NULL),
(234, 378, 'directus_files', '901e9b40-f6f9-4b00-af90-dada85ecbb61', '{"id":"901e9b40-f6f9-4b00-af90-dada85ecbb61","storage":"","filename_disk":null,"filename_download":"","title":null,"type":null,"folder":null,"uploaded_by":null,"uploaded_on":"2020-08-08T20:27:18.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(235, 380, 'directus_files', '9270e9c9-9cf9-4210-854a-601744804c80', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"9270e9c9-9cf9-4210-854a-601744804c80"}', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"9270e9c9-9cf9-4210-854a-601744804c80"}', NULL),
(236, 381, 'directus_files', '9270e9c9-9cf9-4210-854a-601744804c80', '{"id":"9270e9c9-9cf9-4210-854a-601744804c80","storage":"","filename_disk":null,"filename_download":"","title":null,"type":null,"folder":null,"uploaded_by":null,"uploaded_on":"2020-08-08T20:33:33.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(237, 382, 'directus_files', '70a51229-ca91-46a1-9e47-e4f951c28184', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"70a51229-ca91-46a1-9e47-e4f951c28184"}', '{"data":"https://images.unsplash.com/photo-1576854531280-9087cfd26e86","id":"70a51229-ca91-46a1-9e47-e4f951c28184"}', NULL),
(238, 383, 'directus_files', '70a51229-ca91-46a1-9e47-e4f951c28184', '{"id":"70a51229-ca91-46a1-9e47-e4f951c28184","storage":"","filename_disk":null,"filename_download":"","title":null,"type":null,"folder":null,"uploaded_by":null,"uploaded_on":"2020-08-08T20:37:43.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(239, 385, 'directus_files', '53c8985f-9cf7-479c-8d2a-9f0fb29f2b5e', '{"data":"https://via.placeholder.com/150/FFFF00/000000","id":"53c8985f-9cf7-479c-8d2a-9f0fb29f2b5e"}', '{"data":"https://via.placeholder.com/150/FFFF00/000000","id":"53c8985f-9cf7-479c-8d2a-9f0fb29f2b5e"}', NULL),
(240, 386, 'directus_files', '53c8985f-9cf7-479c-8d2a-9f0fb29f2b5e', '{"id":"53c8985f-9cf7-479c-8d2a-9f0fb29f2b5e","storage":"","filename_disk":null,"filename_download":"","title":null,"type":null,"folder":null,"uploaded_by":null,"uploaded_on":"2020-08-08T20:43:31.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(241, 387, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:23:07.000Z","avatar":null,"last_page":"/files"}', '{"last_page":"/files/+"}', NULL),
(242, 388, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:44:57.000Z","avatar":null,"last_page":"/files/+"}', '{"last_page":"/files"}', NULL),
(243, 389, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:45:03.000Z","avatar":null,"last_page":"/files"}', '{"last_page":"/files/+"}', NULL),
(244, 390, 'directus_files', 'ecd66371-9528-43b8-9195-657eb7b47856', '{"title":"15","uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_download":"15.jpg","type":"image/jpeg","storage":"finder","id":"ecd66371-9528-43b8-9195-657eb7b47856"}', '{"title":"15","uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_download":"15.jpg","type":"image/jpeg","storage":"finder","id":"ecd66371-9528-43b8-9195-657eb7b47856"}', NULL),
(245, 391, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:45:05.000Z","avatar":null,"last_page":"/files/+"}', '{"last_page":"/files"}', NULL),
(246, 392, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:46:05.000Z","avatar":null,"last_page":"/files"}', '{"last_page":"/files/ecd66371-9528-43b8-9195-657eb7b47856"}', NULL),
(247, 393, 'directus_files', '9f23248b-51ad-468d-b1e0-664c1324502b', '{"data":"https://via.placeholder.com/150/FFFF00/000000","id":"9f23248b-51ad-468d-b1e0-664c1324502b"}', '{"data":"https://via.placeholder.com/150/FFFF00/000000","id":"9f23248b-51ad-468d-b1e0-664c1324502b"}', NULL),
(248, 394, 'directus_files', '9f23248b-51ad-468d-b1e0-664c1324502b', '{"id":"9f23248b-51ad-468d-b1e0-664c1324502b","storage":"","filename_disk":null,"filename_download":"","title":null,"type":null,"folder":null,"uploaded_by":null,"uploaded_on":"2020-08-08T20:51:01.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(249, 395, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:46:06.000Z","avatar":null,"last_page":"/files/ecd66371-9528-43b8-9195-657eb7b47856"}', '{"last_page":"/files/"}', NULL),
(250, 396, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:51:43.000Z","avatar":null,"last_page":"/files/"}', '{"last_page":"/files/+"}', NULL),
(251, 397, 'directus_files', 'b990c9e1-e9a2-4212-b479-530b5412a165', '{"title":"17","uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_download":"17.jpg","type":"image/jpeg","storage":"finder","id":"b990c9e1-e9a2-4212-b479-530b5412a165"}', '{"title":"17","uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_download":"17.jpg","type":"image/jpeg","storage":"finder","id":"b990c9e1-e9a2-4212-b479-530b5412a165"}', NULL),
(252, 398, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:51:46.000Z","avatar":null,"last_page":"/files/+"}', '{"last_page":"/files"}', NULL),
(253, 401, 'directus_files', 'e7084323-1a11-45f7-bec0-703a9cb5a2fa', '{"title":"Test File","uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_download":"test-file.txt","type":"text/plain","storage":"finder","id":"e7084323-1a11-45f7-bec0-703a9cb5a2fa"}', '{"title":"Test File","uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_download":"test-file.txt","type":"text/plain","storage":"finder","id":"e7084323-1a11-45f7-bec0-703a9cb5a2fa"}', NULL),
(254, 402, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T20:51:50.000Z","avatar":null,"last_page":"/files"}', '{"last_page":"/files/+"}', NULL),
(255, 403, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:13:02.000Z","avatar":null,"last_page":"/files/+"}', '{"last_page":"/files"}', NULL),
(256, 404, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:13:05.000Z","avatar":null,"last_page":"/files"}', '{"last_page":"/files/e7084323-1a11-45f7-bec0-703a9cb5a2fa"}', NULL),
(257, 405, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:13:07.000Z","avatar":null,"last_page":"/files/e7084323-1a11-45f7-bec0-703a9cb5a2fa"}', '{"last_page":"/files/"}', NULL),
(258, 406, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:13:10.000Z","avatar":null,"last_page":"/files/"}', '{"last_page":"/files/e7084323-1a11-45f7-bec0-703a9cb5a2fa"}', NULL),
(259, 407, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:13:11.000Z","avatar":null,"last_page":"/files/e7084323-1a11-45f7-bec0-703a9cb5a2fa"}', '{"last_page":"/files/"}', NULL),
(260, 408, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:13:17.000Z","avatar":null,"last_page":"/files/"}', '{"last_page":"/files/e7084323-1a11-45f7-bec0-703a9cb5a2fa"}', NULL),
(261, 409, 'directus_files', 'undefined', NULL, '{"description":"This is a description"}', NULL),
(262, 412, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:13:20.000Z","avatar":null,"last_page":"/files/e7084323-1a11-45f7-bec0-703a9cb5a2fa"}', '{"last_page":"/files/"}', NULL),
(263, 413, 'directus_presets', '2', '{"id":2,"title":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","role":null,"collection":"directus_files","search":null,"filters":null,"view_type":"cards","view_query":null,"view_options":{"cards":{"icon":"insert_drive_file","title":"{{title}}","subtitle":"{{type}} • {{filesize}}","size":4}}}', '{"title":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","role":null,"collection":"directus_files","search":null,"filters":null,"view_type":"cards","view_query":null,"view_options":"{\"cards\":{\"icon\":\"insert_drive_file\",\"title\":\"{{title}}\",\"subtitle\":\"{{type}} • {{filesize}}\",\"size\":5}}"}', NULL),
(264, 414, 'directus_presets', '2', '{"id":2,"title":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","role":null,"collection":"directus_files","search":null,"filters":null,"view_type":"cards","view_query":null,"view_options":{"cards":{"icon":"insert_drive_file","title":"{{title}}","subtitle":"{{type}} • {{filesize}}","size":5}}}', '{"title":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","role":null,"collection":"directus_files","search":null,"filters":null,"view_type":"cards","view_query":null,"view_options":"{\"cards\":{\"icon\":\"insert_drive_file\",\"title\":\"{{title}}\",\"subtitle\":\"{{type}} • {{filesize}}\",\"size\":2}}"}', NULL),
(265, 415, 'directus_presets', '2', '{"id":2,"title":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","role":null,"collection":"directus_files","search":null,"filters":null,"view_type":"cards","view_query":null,"view_options":{"cards":{"icon":"insert_drive_file","title":"{{title}}","subtitle":"{{type}} • {{filesize}}","size":2}}}', '{"title":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","role":null,"collection":"directus_files","search":null,"filters":null,"view_type":"cards","view_query":null,"view_options":"{\"cards\":{\"icon\":\"insert_drive_file\",\"title\":\"{{title}}\",\"subtitle\":\"{{type}} • {{filesize}}\",\"size\":3}}"}', NULL),
(266, 416, 'directus_presets', '2', '{"id":2,"title":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","role":null,"collection":"directus_files","search":null,"filters":null,"view_type":"cards","view_query":null,"view_options":{"cards":{"icon":"insert_drive_file","title":"{{title}}","subtitle":"{{type}} • {{filesize}}","size":3}}}', '{"title":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","role":null,"collection":"directus_files","search":null,"filters":null,"view_type":"cards","view_query":"{\"cards\":{\"sort\":\"-folder\"}}","view_options":"{\"cards\":{\"icon\":\"insert_drive_file\",\"title\":\"{{title}}\",\"subtitle\":\"{{type}} • {{filesize}}\",\"size\":3}}"}', NULL),
(267, 417, 'directus_presets', '2', '{"id":2,"title":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","role":null,"collection":"directus_files","search":null,"filters":null,"view_type":"cards","view_query":{"cards":{"sort":"-folder"}},"view_options":{"cards":{"icon":"insert_drive_file","title":"{{title}}","subtitle":"{{type}} • {{filesize}}","size":3}}}', '{"title":null,"user":"63716273-0f29-4648-8a2a-2af2948f6f78","role":null,"collection":"directus_files","search":null,"filters":null,"view_type":"cards","view_query":"{\"cards\":{\"sort\":\"folder\"}}","view_options":"{\"cards\":{\"icon\":\"insert_drive_file\",\"title\":\"{{title}}\",\"subtitle\":\"{{type}} • {{filesize}}\",\"size\":3}}"}', NULL),
(268, 421, 'directus_files', 'undefined', NULL, '{"description":"This is a description"}', NULL),
(269, 423, 'directus_files', 'bbcdda50-efcc-477e-847a-5e7329e00a39', '{"file":"test","id":"bbcdda50-efcc-477e-847a-5e7329e00a39"}', '{"file":"test","id":"bbcdda50-efcc-477e-847a-5e7329e00a39"}', NULL),
(270, 424, 'directus_files', '18519f89-1f01-4ce2-a74b-7d5c0ca8745f', '{"data":"https://via.placeholder.com/150/FFFF00/000000","id":"18519f89-1f01-4ce2-a74b-7d5c0ca8745f"}', '{"data":"https://via.placeholder.com/150/FFFF00/000000","id":"18519f89-1f01-4ce2-a74b-7d5c0ca8745f"}', NULL),
(271, 425, 'directus_files', '18519f89-1f01-4ce2-a74b-7d5c0ca8745f', '{"id":"18519f89-1f01-4ce2-a74b-7d5c0ca8745f","storage":"","filename_disk":null,"filename_download":"","title":null,"type":null,"folder":null,"uploaded_by":null,"uploaded_on":"2020-08-08T21:35:04.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(272, 426, 'directus_files', 'd09256ce-9dbc-4ee2-83df-d13f9aff3d12', '{"data":"https://via.placeholder.com/150/FFFF00/000000","id":"d09256ce-9dbc-4ee2-83df-d13f9aff3d12"}', '{"data":"https://via.placeholder.com/150/FFFF00/000000","id":"d09256ce-9dbc-4ee2-83df-d13f9aff3d12"}', NULL),
(273, 427, 'directus_files', 'd09256ce-9dbc-4ee2-83df-d13f9aff3d12', '{"id":"d09256ce-9dbc-4ee2-83df-d13f9aff3d12","storage":"","filename_disk":null,"filename_download":"","title":null,"type":null,"folder":null,"uploaded_by":null,"uploaded_on":"2020-08-08T21:36:06.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(274, 428, 'directus_files', '78e3e49f-cac2-4357-b06b-d6e1d916291b', '{"file":"test","filename_disk":"test.txt","id":"78e3e49f-cac2-4357-b06b-d6e1d916291b"}', '{"file":"test","filename_disk":"test.txt","id":"78e3e49f-cac2-4357-b06b-d6e1d916291b"}', NULL),
(275, 429, 'directus_files', 'bb5ec354-4a26-456c-9b86-8c9e0ea2d3b0', '{"uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_disk":"text.txt","type":"text/plain","title":"text","storage":"finder","id":"bb5ec354-4a26-456c-9b86-8c9e0ea2d3b0"}', '{"uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_disk":"text.txt","type":"text/plain","title":"text","storage":"finder","id":"bb5ec354-4a26-456c-9b86-8c9e0ea2d3b0"}', NULL),
(276, 430, 'directus_files', 'bb5ec354-4a26-456c-9b86-8c9e0ea2d3b0', '{"id":"bb5ec354-4a26-456c-9b86-8c9e0ea2d3b0","storage":"finder","filename_disk":"text.txt","filename_download":"","title":"text","type":"text/plain","folder":null,"uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","uploaded_on":"2020-08-08T21:41:04.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(277, 433, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:31:30.000Z","avatar":null,"last_page":"/files/"}', '{"last_page":"/collections/"}', NULL);
INSERT INTO directus_revisions (id, activity, collection, item, data, delta, parent) VALUES
(278, 434, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:44:24.000Z","avatar":null,"last_page":"/collections/"}', '{"last_page":"/files/"}', NULL),
(279, 435, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:44:25.000Z","avatar":null,"last_page":"/files/"}', '{"last_page":"/settings/project"}', NULL),
(280, 436, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:44:25.000Z","avatar":null,"last_page":"/settings/project"}', '{"last_page":"/settings/data-model"}', NULL),
(281, 437, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:44:26.000Z","avatar":null,"last_page":"/settings/data-model"}', '{"last_page":"/settings/data-model/streets"}', NULL),
(282, 438, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:44:27.000Z","avatar":null,"last_page":"/settings/data-model/streets"}', '{"last_page":"/settings/data-model/streets/+?type=standard"}', NULL),
(283, 439, 'directus_fields', '91', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"streets","field":"test","id":91}', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"streets","field":"test","id":91}', NULL),
(284, 440, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:44:30.000Z","avatar":null,"last_page":"/settings/data-model/streets/+?type=standard"}', '{"last_page":"/settings/data-model/streets"}', NULL),
(285, 441, 'directus_fields', '92', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"streets","field":"test","id":92}', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"streets","field":"test","id":92}', NULL),
(286, 442, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:45:01.000Z","avatar":null,"last_page":"/settings/data-model/streets"}', '{"last_page":"/settings/data-model"}', NULL),
(287, 443, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:50:12.000Z","avatar":null,"last_page":"/settings/data-model"}', '{"last_page":"/settings/data-model/streets"}', NULL),
(288, 445, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:50:15.000Z","avatar":null,"last_page":"/settings/data-model/streets"}', '{"last_page":"/settings/data-model/streets"}', NULL),
(289, 447, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:50:15.000Z","avatar":null,"last_page":"/settings/data-model/streets"}', '{"last_page":"/settings/data-model/streets"}', NULL),
(290, 449, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:50:15.000Z","avatar":null,"last_page":"/settings/data-model/streets"}', '{"last_page":"/settings/data-model/streets"}', NULL),
(291, 450, 'directus_fields', '93', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"streets","field":"test","id":93}', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"streets","field":"test","id":93}', NULL),
(292, 452, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-08T21:50:15.000Z","avatar":null,"last_page":"/settings/data-model/streets"}', '{"last_page":"/settings/data-model"}', NULL),
(293, 453, 'directus_collections', 'test', '{"collection":"test"}', '{"collection":"test"}', NULL),
(294, 454, 'directus_fields', '94', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"test","id":94}', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"test","id":94}', NULL),
(295, 456, 'directus_collections', 'test_collection', '{"collection":"test_collection"}', '{"collection":"test_collection"}', NULL),
(296, 457, 'directus_fields', '95', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"test_collection","id":95}', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"test_collection","id":95}', NULL),
(297, 460, 'directus_collections', 'houses', '{"collection":"houses","hidden":false,"singleton":false,"icon":null,"note":null,"translation":null,"display_template":null}', '{"note":"This is a note"}', NULL),
(298, 461, 'directus_collections', 'test_collection', '{"collection":"test_collection"}', '{"collection":"test_collection"}', NULL),
(299, 462, 'directus_fields', '96', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"test_collection","id":96}', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"test_collection","id":96}', NULL),
(300, 463, 'directus_collections', 'test_collection', '{"collection":"test_collection","hidden":false,"singleton":false,"icon":null,"note":null,"translation":null,"display_template":null}', '{"note":"This is a note."}', NULL),
(301, 470, 'directus_presets', 'undefined', NULL, '{"title":"Some other title"}', NULL),
(302, 472, 'directus_presets', 'undefined', NULL, '{"title":"Some other title"}', NULL),
(303, 473, 'directus_presets', '8', '{"collection":"streets","title":"Some test title","id":8}', '{"collection":"streets","title":"Some test title","id":8}', NULL),
(304, 474, 'directus_presets', '8', '{"id":8,"title":"Some test title","user":null,"role":null,"collection":"streets","search":null,"filters":null,"view_type":"tabular","view_query":null,"view_options":null}', '{"title":"Some other title"}', NULL),
(305, 490, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-09T15:54:06.000Z","avatar":null,"last_page":"/settings/data-model"}', '{"last_page":"/collections/"}', NULL),
(306, 492, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-09T18:05:41.000Z","avatar":null,"last_page":"/collections/"}', '{"last_page":"/collections/"}', NULL),
(307, 511, 'directus_collections', 'test_collection', '{"collection":"test_collection"}', '{"collection":"test_collection"}', NULL),
(308, 512, 'directus_fields', '97', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"test_collection","id":97}', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"test_collection","id":97}', NULL),
(309, 513, 'directus_permissions', '17', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":17}', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":17}', NULL),
(310, 514, 'directus_collections', 'test_collection', '{"collection":"test_collection","hidden":false,"singleton":false,"icon":null,"note":null,"translation":null,"display_template":null}', '{"note":"This is a note."}', NULL),
(311, 515, 'directus_permissions', '17', '{"id":17,"role":"2f24211d-d928-469a-aea3-3c8f53d4e426","collection":"houses","operation":"","permissions":null,"presets":null,"fields":null,"limit":null}', '{"collection":"streets"}', NULL),
(312, 518, 'directus_fields', '98', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"streets","field":"test","id":98}', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"streets","field":"test","id":98}', NULL),
(313, 520, 'directus_presets', '9', '{"collection":"streets","title":"Some test title","id":9}', '{"collection":"streets","title":"Some test title","id":9}', NULL),
(314, 522, 'directus_presets', '9', '{"id":9,"title":"Some test title","user":null,"role":null,"collection":"streets","search":null,"filters":null,"view_type":"tabular","view_query":null,"view_options":null}', '{"title":"Some other title"}', NULL),
(315, 524, 'directus_relations', '20', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":20}', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":20}', NULL),
(316, 526, 'streets', '5', '{"name":"Test street","id":5}', '{"name":"Test street","id":5}', NULL),
(317, 525, 'directus_relations', '20', '{"id":20,"many_collection":"houses","many_field":"street","many_primary":"","one_collection":"streets","one_field":null,"one_primary":"","junction_field":null}', '{"one_field":"garage"}', NULL),
(318, 528, 'streets', '5', '{"id":5,"name":"Test street"}', '{"name":"Some other Street"}', NULL),
(319, 530, 'directus_files', 'de79424e-135f-4efd-bc20-07dd286b4324', '{"uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_disk":"text.txt","type":"text/plain","title":"text","storage":"finder","id":"de79424e-135f-4efd-bc20-07dd286b4324"}', '{"uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_disk":"text.txt","type":"text/plain","title":"text","storage":"finder","id":"de79424e-135f-4efd-bc20-07dd286b4324"}', NULL),
(320, 531, 'directus_files', 'de79424e-135f-4efd-bc20-07dd286b4324', '{"id":"de79424e-135f-4efd-bc20-07dd286b4324","storage":"finder","filename_disk":"text.txt","filename_download":"","title":"text","type":"text/plain","folder":null,"uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","uploaded_on":"2020-08-09T18:26:16.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(321, 532, 'directus_settings', '2', '{"id":2,"project_name":"Directus2","project_url":null,"project_color":null,"project_logo":null,"public_foreground":null,"public_background":"8cbb43fe-4cdf-4991-8352-c461779cec02","public_note":"This is a public note!","auth_idle_timeout":10080,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"telemetry":true}', '{"public_note":"This is a public note!"}', NULL),
(322, 534, 'directus_users', 'c653009f-9ba3-435a-a15f-8d7b5708c13e', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"c653009f-9ba3-435a-a15f-8d7b5708c13e"}', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"c653009f-9ba3-435a-a15f-8d7b5708c13e"}', NULL),
(323, 535, 'directus_users', 'c653009f-9ba3-435a-a15f-8d7b5708c13e', '{"id":"c653009f-9ba3-435a-a15f-8d7b5708c13e","first_name":"Test","last_name":"User","email":"test@user.com","password":"$argon2i$v=19$m=4096,t=3,p=1$mXg2XkzO2/Jjy75bhFmxtw$q9T1bNyUUaWxtORTOnBIUrMG65WVCX6EtMebcZR0wS0","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-09T18:26:16.000Z","avatar":null,"last_page":null}', '{"first_name":"OtherTest"}', NULL),
(324, 537, 'directus_folders', 'cad02cf4-e386-4255-beca-3c666f94fe93', '{"name":"Berlin","id":"cad02cf4-e386-4255-beca-3c666f94fe93"}', '{"name":"Berlin","id":"cad02cf4-e386-4255-beca-3c666f94fe93"}', NULL),
(325, 538, 'directus_folders', 'cad02cf4-e386-4255-beca-3c666f94fe93', '{"id":"cad02cf4-e386-4255-beca-3c666f94fe93","name":"Berlin","parent_folder":null}', '{"parent_folder":"e2d1b468-7be9-4bf4-84f6-ea99e132a695"}', NULL),
(326, 540, 'directus_roles', '85cca229-78db-4a0b-a18b-0ee5844e9f6d', '{"name":"test_role","id":"85cca229-78db-4a0b-a18b-0ee5844e9f6d"}', '{"name":"test_role","id":"85cca229-78db-4a0b-a18b-0ee5844e9f6d"}', NULL),
(327, 541, 'directus_roles', '85cca229-78db-4a0b-a18b-0ee5844e9f6d', '{"id":"85cca229-78db-4a0b-a18b-0ee5844e9f6d","name":"test_role","icon":"people","description":null,"ip_allow_list":null,"enforce_tfa":false,"module_list":null,"collection_list":null,"admin":false,"app_access":true}', '{"description":"This is a description"}', NULL),
(328, 543, 'directus_permissions', '18', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":18}', '{"collection":"houses","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","read":"mine","id":18}', NULL),
(329, 544, 'directus_permissions', '18', '{"id":18,"role":"2f24211d-d928-469a-aea3-3c8f53d4e426","collection":"houses","operation":"","permissions":null,"presets":null,"fields":null,"limit":null}', '{"collection":"streets"}', NULL),
(330, 545, 'directus_collections', 'test_collection', '{"collection":"test_collection"}', '{"collection":"test_collection"}', NULL),
(331, 546, 'directus_fields', '99', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"test_collection","id":99}', '{"hidden":true,"interface":"numeric","readonly":true,"field":"id","collection":"test_collection","id":99}', NULL),
(332, 548, 'directus_collections', 'test_collection', '{"collection":"test_collection","hidden":false,"singleton":false,"icon":null,"note":null,"translation":null,"display_template":null}', '{"note":"This is a note."}', NULL),
(333, 550, 'streets', '6', '{"name":"Test street","id":6}', '{"name":"Test street","id":6}', NULL),
(334, 551, 'streets', '6', '{"id":6,"name":"Test street"}', '{"name":"Some other Street"}', NULL),
(335, 552, 'directus_users', '6294ab2e-0dc3-4f89-8677-89055059975e', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"6294ab2e-0dc3-4f89-8677-89055059975e"}', '{"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","first_name":"Test","last_name":"User","email":"test@user.com","password":"password","id":"6294ab2e-0dc3-4f89-8677-89055059975e"}', NULL),
(336, 554, 'directus_users', '6294ab2e-0dc3-4f89-8677-89055059975e', '{"id":"6294ab2e-0dc3-4f89-8677-89055059975e","first_name":"Test","last_name":"User","email":"test@user.com","password":"$argon2i$v=19$m=4096,t=3,p=1$vaNyKzi0RMIf3LJHNMLB7g$eCnI1VH90JuSx3N0nl4JRjRjbTykoUtwtnulyptvVz8","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":null,"last_login":"2020-08-09T18:26:44.000Z","avatar":null,"last_page":null}', '{"first_name":"OtherTest"}', NULL),
(337, 556, 'directus_presets', '10', '{"collection":"streets","title":"Some test title","id":10}', '{"collection":"streets","title":"Some test title","id":10}', NULL),
(338, 557, 'directus_presets', '10', '{"id":10,"title":"Some test title","user":null,"role":null,"collection":"streets","search":null,"filters":null,"view_type":"tabular","view_query":null,"view_options":null}', '{"title":"Some other title"}', NULL),
(339, 558, 'directus_relations', '21', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":21}', '{"many_collection":"houses","many_field":"street","one_collection":"streets","one_field":null,"id":21}', NULL),
(340, 560, 'directus_relations', '21', '{"id":21,"many_collection":"houses","many_field":"street","many_primary":"","one_collection":"streets","one_field":null,"one_primary":"","junction_field":null}', '{"one_field":"garage"}', NULL),
(341, 564, 'directus_fields', '100', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"streets","field":"test","id":100}', '{"hidden":false,"interface":"text-input","options":null,"display":null,"display_options":null,"readonly":false,"special":null,"collection":"streets","field":"test","id":100}', NULL),
(342, 565, 'directus_roles', 'ff32082d-f2f1-4806-9b3b-d9bb5fd4f032', '{"name":"test_role","id":"ff32082d-f2f1-4806-9b3b-d9bb5fd4f032"}', '{"name":"test_role","id":"ff32082d-f2f1-4806-9b3b-d9bb5fd4f032"}', NULL),
(343, 566, 'directus_roles', 'ff32082d-f2f1-4806-9b3b-d9bb5fd4f032', '{"id":"ff32082d-f2f1-4806-9b3b-d9bb5fd4f032","name":"test_role","icon":"people","description":null,"ip_allow_list":null,"enforce_tfa":false,"module_list":null,"collection_list":null,"admin":false,"app_access":true}', '{"description":"This is a description"}', NULL),
(344, 567, 'directus_files', '410f25d8-9d88-4359-87e8-ba6864f9b5b5', '{"uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_disk":"text.txt","type":"text/plain","title":"text","storage":"finder","id":"410f25d8-9d88-4359-87e8-ba6864f9b5b5"}', '{"uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","filename_disk":"text.txt","type":"text/plain","title":"text","storage":"finder","id":"410f25d8-9d88-4359-87e8-ba6864f9b5b5"}', NULL),
(345, 569, 'directus_files', '410f25d8-9d88-4359-87e8-ba6864f9b5b5', '{"id":"410f25d8-9d88-4359-87e8-ba6864f9b5b5","storage":"finder","filename_disk":"text.txt","filename_download":"","title":"text","type":"text/plain","folder":null,"uploaded_by":"63716273-0f29-4648-8a2a-2af2948f6f78","uploaded_on":"2020-08-09T18:26:46.000Z","charset":null,"filesize":0,"width":null,"height":null,"duration":null,"embed":null,"description":null,"location":null,"tags":null,"metadata":null}', '{"description":"This is a description"}', NULL),
(346, 571, 'directus_folders', 'a2abf197-f0f5-4307-a723-bfef382d4126', '{"name":"Berlin","id":"a2abf197-f0f5-4307-a723-bfef382d4126"}', '{"name":"Berlin","id":"a2abf197-f0f5-4307-a723-bfef382d4126"}', NULL),
(347, 572, 'directus_folders', 'a2abf197-f0f5-4307-a723-bfef382d4126', '{"id":"a2abf197-f0f5-4307-a723-bfef382d4126","name":"Berlin","parent_folder":null}', '{"parent_folder":"e2d1b468-7be9-4bf4-84f6-ea99e132a695"}', NULL),
(348, 574, 'directus_settings', '2', '{"id":2,"project_name":"Directus2","project_url":null,"project_color":null,"project_logo":null,"public_foreground":null,"public_background":"8cbb43fe-4cdf-4991-8352-c461779cec02","public_note":"This is a public note!","auth_idle_timeout":10080,"auth_login_attempts":25,"auth_password_policy":null,"storage_asset_transform":"all","storage_asset_presets":null,"telemetry":true}', '{"public_note":"This is a public note!"}', NULL),
(349, 576, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-09T18:26:16.000Z","avatar":null,"last_page":"/settings"}', '{"last_page":"/collections/"}', NULL),
(350, 577, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-09T20:56:35.000Z","avatar":null,"last_page":"/collections/"}', '{"last_page":"/settings/project"}', NULL),
(351, 578, 'directus_users', '63716273-0f29-4648-8a2a-2af2948f6f78', '{"id":"63716273-0f29-4648-8a2a-2af2948f6f78","first_name":"Admin","last_name":"User","email":"admin@example.com","password":"$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug","location":null,"title":null,"description":null,"tags":null,"timezone":"America/New_York","language":"en-US","theme":"auto","tfa_secret":null,"status":"active","role":"2f24211d-d928-469a-aea3-3c8f53d4e426","token":"admin","last_login":"2020-08-09T20:56:38.000Z","avatar":null,"last_page":"/settings/project"}', '{"last_page":"/settings/data-model"}', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_roles`
--

CREATE TABLE directus_roles (
  id char(36) NOT NULL,
  name varchar(100) NOT NULL,
  icon varchar(30) NOT NULL DEFAULT 'people',
  description text DEFAULT NULL,
  ip_allow_list longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(ip_allow_list)),
  enforce_tfa smallint NOT NULL DEFAULT 0,
  module_list longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(module_list)),
  collection_list longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(collection_list)),
  admin smallint NOT NULL DEFAULT 0,
  app_access smallint NOT NULL DEFAULT 1
) ;

--
-- Daten für Tabelle `directus_roles`
--

INSERT INTO directus_roles (id, name, icon, description, ip_allow_list, enforce_tfa, module_list, collection_list, admin, app_access) VALUES
('0879963d-047e-4eb7-b876-95e4b2df3c4b', 'Moderator', 'people', NULL, NULL, 0, NULL, NULL, 0, 1),
('2f24211d-d928-469a-aea3-3c8f53d4e426', 'Admin', 'verified_user', NULL, NULL, 0, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_sessions`
--

CREATE TABLE directus_sessions (
  token varchar(64) NOT NULL,
  user char(36) NOT NULL,
  expires timestamp(0) NOT NULL DEFAULT current_timestamp() (),
  ip varchar(255) DEFAULT NULL,
  user_agent varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `directus_sessions`
--

INSERT INTO directus_sessions (token, user, expires, ip, user_agent) VALUES
('6sKi1P4pK3pnJgaq6mp-cucOjAnM-xgJvzR1vi9QHTpc9B6rEi0vjjH6cBL-gaof', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:15:36', '::ffff:127.0.0.1', 'axios/0.19.2'),
('7Hi161DBFPVWxn2gOEjN8_Ls18EGEEz8sscnWTSWeItkjslR-TDRDHzh9Eivis45', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:04:58', '::ffff:127.0.0.1', 'axios/0.19.2'),
('aDOB0AysoXvd72l6xLEWKKAii_ccT4xCCtKBLzW10oPwNuCQ60j4AVMdwquXmn4y', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:14:57', '::ffff:127.0.0.1', 'axios/0.19.2'),
('Dnln2iXbzRbokt9iZFWW69FnVWs-czs6lunEbq6yAVuPVcsH1QWluTKTGu84OrfP', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:21:07', '::ffff:127.0.0.1', 'axios/0.19.2'),
('eh1o7utNuf1kMPoTPW_agMm_NxhS_l7u83g-IM0kynzONjR4JuylmyWwUC5xBOPi', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 17:41:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0'),
('eTR-tks6jzpDxVfc5AamGfEetosz7ii0t0LE-TV7qHZfXECD6LQE2EvbmhR8Iiiy', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:26:15', '::ffff:127.0.0.1', 'axios/0.19.2'),
('eXYgqUNDy7UcFGxASLVkRjFwTkbCpbaXUrkRysAelEXXHPE--pmk4pUIpWT03FdI', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 17:40:16', '::ffff:127.0.0.1', 'axios/0.19.2'),
('FaWVKj79Tt7YMwtCYjZ9uLxAT_Bs2_OK9i3dnF4yETS4OSah5YxwaQ92NL2n6GjM', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:10:31', '::ffff:127.0.0.1', 'axios/0.19.2'),
('fpfGE0Tpp2BroOeScPd73cd82Z-dgJwIKnu5A5Ht8wxNJ_Fjc13rg1wzBAWducd_', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 17:43:03', '::ffff:127.0.0.1', 'axios/0.19.2'),
('goyXnMN5DnqfSr4CW-wDe3pcnH2-iIUaQcgXoz1DN5_ckPZRRNBfsd0pOzoab4g0', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:16:15', '::ffff:127.0.0.1', 'axios/0.19.2'),
('LepKGe1dJBckLJhFhg5VtPEjLcUNFML0NXNdSCTbt5wexpbhUcspOms61Aks2Zyb', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:12:21', '::ffff:127.0.0.1', 'axios/0.19.2'),
('N_SzbDFAAXCDZzvgpC6gPrLafnu2ZKLnCR9UlcTY9heZ5NBAtxSjFrcBs6tJiAhB', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:13:10', '::ffff:127.0.0.1', 'axios/0.19.2'),
('Pdz1LbtCB9pQ4VTc1T3yMNVR5V6IEU9JfngZtXpY3JYPosQqhRWnxMPowsCYx2hj', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 17:47:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0'),
('pxoG9Fntqq1DWVnktnQiN7WY5BYvUiYfH3sw_z3S2XNeLr-4rcFFkT675PVzmjCx', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:26:45', '::ffff:127.0.0.1', 'axios/0.19.2'),
('PXwhSB2I0vSJxwPwo1ycAwvpjT2B5M5l2dT4ic3YPuVGeW8XWLrwsVr9r-eFuj9K', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:13:50', '::ffff:127.0.0.1', 'axios/0.19.2'),
('rOOIh6Me7hBPPBAIO3sqBs-MLdHnhenZrLXGAZXjF6jhpf5P2vCZZjTG_rAcVev6', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:20:30', '::ffff:127.0.0.1', 'axios/0.19.2'),
('t9yiejOIzur1bLnsOAkg_q67U91uSRkcYrb08PwX03qLeEuC0pgserFOeGvzsZVu', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:21:42', '::ffff:127.0.0.1', 'axios/0.19.2'),
('UFJG_P3IXx21Nak9gDDi9CfKUiKLCdB7uMexQNC0mt2VzvufohO-ZiAGup3zFZFA', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:19:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0'),
('vDfB1fhkUpaSqaV4_WTw_DKZFGyQSQvW5-Cc5cox-XLwkg_FSKWkhkxZzvk-mLjt', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 17:44:02', '::ffff:127.0.0.1', 'axios/0.19.2'),
('vo5ZbRUn4hXv23L6Kh7Xhz8jA6YiQiJRs6boUCI4NefctX4Owc3QbawF-NlJXuT8', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 17:46:10', '::ffff:127.0.0.1', 'axios/0.19.2'),
('W-FvRQvKSXX4sOhY2qPTDNv-2aNsunHzpJ11D3_RoVAs6SW-nlMbXV3v9ZllN8TV', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 17:46:34', '::ffff:127.0.0.1', 'axios/0.19.2'),
('WNVwQIFkVymDZ6uvXaXAMDsYvjEOzyfhanpEEkXKh9RfkQiWzajjpNWNwEdpmMQV', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 17:49:02', '::ffff:127.0.0.1', 'axios/0.19.2'),
('wOFH8nQ2YuJS11zaEamTEA2paTDBPmSbeoOwm059WBGpKIxO7Zrs93HCvyQJgbSp', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 18:03:54', '::ffff:127.0.0.1', 'axios/0.19.2'),
('XV2xh-3vPgR5EiZ23FTnafn1XHrNcNMl3PWsA-9JIQMQ-owd0vUOpWrlbs7CzrFW', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-17 20:41:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0'),
('_rU_xEUYeakSMdNp1hP5sDmokwrryZ4bK6IDIesaoDgnBerl8WE9Cfl7P9tP5eZX', '63716273-0f29-4648-8a2a-2af2948f6f78', '2020-08-16 17:49:41', '::ffff:127.0.0.1', 'axios/0.19.2');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_settings`
--

CREATE TABLE directus_settings (
  id int CHECK (id > 0) NOT NULL,
  project_name varchar(100) NOT NULL DEFAULT 'Directus',
  project_url varchar(255) DEFAULT NULL,
  project_color varchar(10) DEFAULT NULL,
  project_logo char(36) DEFAULT NULL,
  public_foreground char(36) DEFAULT NULL,
  public_background char(36) DEFAULT NULL,
  public_note text DEFAULT NULL,
  auth_idle_timeout int CHECK (auth_idle_timeout > 0) DEFAULT 10080,
  auth_login_attempts int CHECK (auth_login_attempts > 0) DEFAULT 25,
  auth_password_policy varchar(100) DEFAULT NULL,
  storage_asset_transform varchar(7) DEFAULT 'all',
  storage_asset_presets longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(storage_asset_presets)),
  telemetry smallint DEFAULT 1
) ;

--
-- Daten für Tabelle `directus_settings`
--

INSERT INTO directus_settings (id, project_name, project_url, project_color, project_logo, public_foreground, public_background, public_note, auth_idle_timeout, auth_login_attempts, auth_password_policy, storage_asset_transform, storage_asset_presets, telemetry) VALUES
(2, 'Directus2', NULL, NULL, NULL, NULL, '8cbb43fe-4cdf-4991-8352-c461779cec02', 'This is a public note!', 10080, 25, NULL, 'all', NULL, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_users`
--

CREATE TABLE directus_users (
  id char(36) NOT NULL,
  first_name varchar(50) DEFAULT NULL,
  last_name varchar(50) DEFAULT NULL,
  email varchar(128) NOT NULL,
  password varchar(255) DEFAULT NULL,
  location varchar(255) DEFAULT NULL,
  title varchar(50) DEFAULT NULL,
  description text DEFAULT NULL,
  tags longtext CHARACTER SET utf8mb4 DEFAULT NULL CHECK (json_valid(tags)),
  timezone varchar(255) DEFAULT 'America/New_York',
  language varchar(8) DEFAULT 'en-US',
  theme varchar(20) DEFAULT 'auto',
  tfa_secret varchar(255) DEFAULT NULL,
  status varchar(16) NOT NULL DEFAULT 'draft',
  role char(36) NOT NULL,
  token varchar(255) DEFAULT NULL,
  last_login timestamp(0) NOT NULL DEFAULT current_timestamp() (),
  avatar char(36) DEFAULT NULL,
  last_page varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `directus_users`
--

INSERT INTO directus_users (id, first_name, last_name, email, password, location, title, description, tags, timezone, language, theme, tfa_secret, status, role, token, last_login, avatar, last_page) VALUES
('63716273-0f29-4648-8a2a-2af2948f6f78', 'Admin', 'User', 'admin@example.com', '$argon2i$v=19$m=4096,t=3,p=1$epfhDfjbn3m36arjv32fzw$cL+ArLGpWpfwHkEVv1UXYvuK6MVXAw2dUxepb/zNPug', NULL, NULL, NULL, NULL, 'America/New_York', 'en-US', 'auto', NULL, 'active', '2f24211d-d928-469a-aea3-3c8f53d4e426', 'admin', '2020-08-10 20:41:06', NULL, '/collections/');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directus_webhooks`
--

CREATE TABLE directus_webhooks (
  id int CHECK (id > 0) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `houses`
--

CREATE TABLE houses (
  id int CHECK (id > 0) NOT NULL,
  name varchar(255) DEFAULT NULL,
  garage smallint DEFAULT NULL,
  levels int DEFAULT NULL,
  street int DEFAULT NULL
) ;

--
-- Daten für Tabelle `houses`
--

INSERT INTO houses (id, name, garage, levels, street) VALUES
(1, 'House1', 1, 3, 1),
(2, 'House2', NULL, NULL, 1),
(3, 'House3', NULL, NULL, 1),
(4, 'House4', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `streets`
--

CREATE TABLE streets (
  id int CHECK (id > 0) NOT NULL,
  name varchar(255) DEFAULT NULL
) ;

--
-- Daten für Tabelle `streets`
--

INSERT INTO streets (id, name) VALUES
(1, 'Street 1'),
(2, 'Street 2');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `directus_activity`
--
ALTER TABLE directus_activity
  ADD PRIMARY KEY (id),
  ADD KEY `directus_activity_collection_foreign` (collection);

--
-- Indizes für die Tabelle `directus_collections`
--
ALTER TABLE directus_collections
  ADD PRIMARY KEY (collection);

--
-- Indizes für die Tabelle `directus_fields`
--
ALTER TABLE directus_fields
  ADD PRIMARY KEY (id),
  ADD KEY `directus_fields_collection_foreign` (collection),
  ADD KEY `directus_fields_group_foreign` (group);

--
-- Indizes für die Tabelle `directus_files`
--
ALTER TABLE directus_files
  ADD PRIMARY KEY (id),
  ADD KEY `directus_files_folder_foreign` (folder),
  ADD KEY `directus_files_uploaded_by_foreign` (uploaded_by);

--
-- Indizes für die Tabelle `directus_folders`
--
ALTER TABLE directus_folders
  ADD PRIMARY KEY (id),
  ADD KEY `directus_folders_parent_folder_foreign` (parent_folder);

--
-- Indizes für die Tabelle `directus_permissions`
--
ALTER TABLE directus_permissions
  ADD PRIMARY KEY (id),
  ADD KEY `directus_permissions_role_foreign` (role),
  ADD KEY `directus_permissions_collection_foreign` (collection);

--
-- Indizes für die Tabelle `directus_presets`
--
ALTER TABLE directus_presets
  ADD PRIMARY KEY (id),
  ADD KEY `directus_presets_user_foreign` (user),
  ADD KEY `directus_presets_role_foreign` (role),
  ADD KEY `directus_presets_collection_foreign` (collection);

--
-- Indizes für die Tabelle `directus_relations`
--
ALTER TABLE directus_relations
  ADD PRIMARY KEY (id),
  ADD KEY `directus_relations_many_collection_foreign` (many_collection),
  ADD KEY `directus_relations_one_collection_foreign` (one_collection);

--
-- Indizes für die Tabelle `directus_revisions`
--
ALTER TABLE directus_revisions
  ADD PRIMARY KEY (id),
  ADD KEY `directus_revisions_activity_foreign` (activity),
  ADD KEY `directus_revisions_collection_foreign` (collection),
  ADD KEY `directus_revisions_parent_foreign` (parent);

--
-- Indizes für die Tabelle `directus_roles`
--
ALTER TABLE directus_roles
  ADD PRIMARY KEY (id);

--
-- Indizes für die Tabelle `directus_sessions`
--
ALTER TABLE directus_sessions
  ADD PRIMARY KEY (token),
  ADD KEY `directus_sessions_user_foreign` (user);

--
-- Indizes für die Tabelle `directus_settings`
--
ALTER TABLE directus_settings
  ADD PRIMARY KEY (id),
  ADD KEY `directus_settings_project_logo_foreign` (project_logo),
  ADD KEY `directus_settings_public_foreground_foreign` (public_foreground),
  ADD KEY `directus_settings_public_background_foreign` (public_background);

--
-- Indizes für die Tabelle `directus_users`
--
ALTER TABLE directus_users
  ADD PRIMARY KEY (id),
  ADD KEY `directus_users_role_foreign` (role);

--
-- Indizes für die Tabelle `directus_webhooks`
--
ALTER TABLE directus_webhooks
  ADD PRIMARY KEY (id);

--
-- Indizes für die Tabelle `houses`
--
ALTER TABLE houses
  ADD PRIMARY KEY (id);

--
-- Indizes für die Tabelle `streets`
--
ALTER TABLE streets
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `directus_activity`
--
ALTER TABLE directus_activity
  MODIFY id cast(10 as int) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=593;

--
-- AUTO_INCREMENT für Tabelle `directus_fields`
--
ALTER TABLE directus_fields
  MODIFY id cast(10 as int) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT für Tabelle `directus_permissions`
--
ALTER TABLE directus_permissions
  MODIFY id cast(10 as int) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT für Tabelle `directus_presets`
--
ALTER TABLE directus_presets
  MODIFY id cast(10 as int) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `directus_relations`
--
ALTER TABLE directus_relations
  MODIFY id cast(10 as int) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT für Tabelle `directus_revisions`
--
ALTER TABLE directus_revisions
  MODIFY id cast(10 as int) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT für Tabelle `directus_settings`
--
ALTER TABLE directus_settings
  MODIFY id cast(10 as int) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `directus_webhooks`
--
ALTER TABLE directus_webhooks
  MODIFY id cast(10 as int) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `houses`
--
ALTER TABLE houses
  MODIFY id cast(10 as int) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `streets`
--
ALTER TABLE streets
  MODIFY id cast(10 as int) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `directus_activity`
--
ALTER TABLE directus_activity
  ADD CONSTRAINT directus_activity_collection_foreign FOREIGN KEY (collection) REFERENCES directus_collections (collection);

--
-- Constraints der Tabelle `directus_fields`
--
ALTER TABLE directus_fields
  ADD CONSTRAINT directus_fields_collection_foreign FOREIGN KEY (collection) REFERENCES directus_collections (collection),
  ADD CONSTRAINT directus_fields_group_foreign FOREIGN KEY (group) REFERENCES `directus_fields` (id);

--
-- Constraints der Tabelle `directus_files`
--
ALTER TABLE directus_files
  ADD CONSTRAINT directus_files_folder_foreign FOREIGN KEY (folder) REFERENCES directus_folders (id),
  ADD CONSTRAINT directus_files_uploaded_by_foreign FOREIGN KEY (uploaded_by) REFERENCES `directus_users` (id);

--
-- Constraints der Tabelle `directus_folders`
--
ALTER TABLE directus_folders
  ADD CONSTRAINT directus_folders_parent_folder_foreign FOREIGN KEY (parent_folder) REFERENCES directus_folders (id);

--
-- Constraints der Tabelle `directus_permissions`
--
ALTER TABLE directus_permissions
  ADD CONSTRAINT directus_permissions_collection_foreign FOREIGN KEY (collection) REFERENCES directus_collections (collection),
  ADD CONSTRAINT directus_permissions_role_foreign FOREIGN KEY (role) REFERENCES `directus_roles` (id);

--
-- Constraints der Tabelle `directus_presets`
--
ALTER TABLE directus_presets
  ADD CONSTRAINT directus_presets_collection_foreign FOREIGN KEY (collection) REFERENCES directus_collections (collection),
  ADD CONSTRAINT directus_presets_role_foreign FOREIGN KEY (role) REFERENCES `directus_roles` (id),
  ADD CONSTRAINT directus_presets_user_foreign FOREIGN KEY (user) REFERENCES `directus_users` (id);

--
-- Constraints der Tabelle `directus_relations`
--
ALTER TABLE directus_relations
  ADD CONSTRAINT directus_relations_many_collection_foreign FOREIGN KEY (many_collection) REFERENCES directus_collections (collection),
  ADD CONSTRAINT directus_relations_one_collection_foreign FOREIGN KEY (one_collection) REFERENCES `directus_collections` (collection);

--
-- Constraints der Tabelle `directus_revisions`
--
ALTER TABLE directus_revisions
  ADD CONSTRAINT directus_revisions_activity_foreign FOREIGN KEY (activity) REFERENCES directus_activity (id),
  ADD CONSTRAINT directus_revisions_collection_foreign FOREIGN KEY (collection) REFERENCES `directus_collections` (collection),
  ADD CONSTRAINT directus_revisions_parent_foreign FOREIGN KEY (parent) REFERENCES `directus_revisions` (id);

--
-- Constraints der Tabelle `directus_sessions`
--
ALTER TABLE directus_sessions
  ADD CONSTRAINT directus_sessions_user_foreign FOREIGN KEY (user) REFERENCES directus_users (id);

--
-- Constraints der Tabelle `directus_settings`
--
ALTER TABLE directus_settings
  ADD CONSTRAINT directus_settings_project_logo_foreign FOREIGN KEY (project_logo) REFERENCES directus_files (id),
  ADD CONSTRAINT directus_settings_public_background_foreign FOREIGN KEY (public_background) REFERENCES `directus_files` (id),
  ADD CONSTRAINT directus_settings_public_foreground_foreign FOREIGN KEY (public_foreground) REFERENCES `directus_files` (id);

--
-- Constraints der Tabelle `directus_users`
--
ALTER TABLE directus_users
  ADD CONSTRAINT directus_users_role_foreign FOREIGN KEY (role) REFERENCES directus_roles (id);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
