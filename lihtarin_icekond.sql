-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Час створення: Сер 08 2022 р., 13:57
-- Версія сервера: 10.3.35-MariaDB-cll-lve
-- Версія PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `lihtarin_icekond`
--

-- --------------------------------------------------------

--
-- Структура таблиці `calculate`
--

CREATE TABLE `calculate` (
  `id` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `space` text DEFAULT NULL,
  `square` text DEFAULT NULL,
  `no-square` text DEFAULT NULL,
  `radio-time` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `language` text DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `calculate`
--

INSERT INTO `calculate` (`id`, `date_add`, `space`, `square`, `no-square`, `radio-time`, `name`, `phone`, `language`, `new`, `user_id`) VALUES
(1, 1657286352, 'on', '28', NULL, 'on', 'alex alxe', '+380634501990', '', 0, 1),
(2, 1657286536, 'on', NULL, 'Не пам’ятаю', 'Вже завтра', 'alex alxe', '+380634501990', '', 0, 1),
(3, 1657286589, 'Будинок', '19', NULL, 'Вже завтра', 'Neomancer', '123123123', '', 0, 1),
(4, 1657287192, 'Готель', '44', NULL, 'on', 'alex alxe', '+380634501990', '', 0, 1),
(5, 1657287244, 'Готель', '26', NULL, 'on', 'alex alxe', '+380634501990', '', 0, 1),
(6, 1657287403, 'Готель', '37', NULL, 'on', 'alex alxe', '+380634501990', '', 0, 1),
(7, 1657287502, 'Готель', '43', NULL, 'on', 'Neomancer', '123123123', '', 0, 1),
(8, 1657287781, 'Будинок', '37', NULL, 'Вже завтра', 'alex alxe', '+380634501990', '', 0, 1),
(9, 1657287863, 'Готель', '39', NULL, 'on', 'alex alxe', '+380634501990', '', 0, 1),
(10, 1657287954, 'Готель', '43', NULL, 'on', 'alex alxe', '+380634501990', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `call-me`
--

CREATE TABLE `call-me` (
  `id` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `phone` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `item` text DEFAULT NULL,
  `language` text DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `call-me`
--

INSERT INTO `call-me` (`id`, `date_add`, `phone`, `name`, `item`, `language`, `new`, `user_id`) VALUES
(1, 1657279796, '+380634501990', NULL, NULL, '', 0, 1),
(2, 1657279816, '+380634501990', NULL, NULL, '', 0, 1),
(3, 1657279818, '+380634501990', NULL, NULL, '', 0, 1),
(4, 1657279819, '+380634501990', NULL, NULL, '', 0, 1),
(5, 1657279819, '+380634501990', NULL, NULL, '', 0, 1),
(6, 1657280316, '+38111111', NULL, NULL, '', 0, 1),
(7, 1657280357, '+380634501990', NULL, NULL, '', 0, 1),
(8, 1657284338, '+380634501990', 'alex alxe', NULL, '', 0, 1),
(9, 1657284677, '+3020222222222', NULL, 'Cooper&amp;Hunter Prima Premium CH-S0', '', 0, 1),
(10, 1657285038, '+380634501990', 'wwwww', NULL, '', 0, 1),
(11, 1657285117, '6300000000', NULL, NULL, '', 0, 1),
(12, 1657532418, '654654654654', NULL, 'Prima Plus CH-S07XN79000', '', 0, 1),
(13, 1657533508, '111', NULL, 'Prima Plus CH-S07XN79000', '', 0, 1),
(14, 1657895252, '7686989', NULL, NULL, '', 0, 2),
(15, 1659953860, '76876786', NULL, 'Cooper&amp;Hunter Prima Plus CH-S07XN7000', '', 1, 2);

-- --------------------------------------------------------

--
-- Структура таблиці `s_shopshowcase_availability`
--

CREATE TABLE `s_shopshowcase_availability` (
  `id` int(11) NOT NULL,
  `color` text DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `s_shopshowcase_availability`
--

INSERT INTO `s_shopshowcase_availability` (`id`, `color`, `active`, `position`) VALUES
(1, 'rgb(2, 204, 2)', 1, 1),
(2, 'rgb(255, 163, 0)', 1, 2),
(3, 'red', 1, 3);

-- --------------------------------------------------------

--
-- Структура таблиці `s_shopshowcase_availability_name`
--

CREATE TABLE `s_shopshowcase_availability_name` (
  `id` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  `language` varchar(2) DEFAULT '',
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `s_shopshowcase_availability_name`
--

INSERT INTO `s_shopshowcase_availability_name` (`id`, `availability`, `language`, `name`) VALUES
(1, 1, '', 'В наявності'),
(2, 2, '', 'Очікується'),
(3, 3, '', 'Немає');

-- --------------------------------------------------------

--
-- Структура таблиці `s_shopshowcase_groups`
--

CREATE TABLE `s_shopshowcase_groups` (
  `id` int(11) NOT NULL,
  `wl_alias` int(11) NOT NULL,
  `alias` text DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `hide` tinyint(1) DEFAULT NULL,
  `author_add` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `author_edit` int(11) NOT NULL,
  `export_prom` tinyint(1) DEFAULT 1,
  `export_google` tinyint(1) DEFAULT 1,
  `export_facebook` tinyint(1) DEFAULT 1,
  `date_edit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `s_shopshowcase_groups`
--

INSERT INTO `s_shopshowcase_groups` (`id`, `wl_alias`, `alias`, `parent`, `position`, `active`, `hide`, `author_add`, `date_add`, `author_edit`, `export_prom`, `export_google`, `export_facebook`, `date_edit`) VALUES
(1, 8, 'kondycioner', 0, 1, 1, NULL, 1, 1656935920, 1, 1, 1, 1, 1656935920),
(2, 8, 'rekuperator', 0, 2, 1, NULL, 1, 1656935933, 1, 1, 1, 1, 1656935933),
(3, 8, '21', 1, 1, 1, NULL, 1, 1656935973, 1, 1, 1, 1, 1656935973),
(4, 8, '21-25', 1, 1, 1, NULL, 1, 1656935984, 1, 1, 1, 1, 1656935984),
(5, 8, '25-35', 1, 1, 1, NULL, 1, 1656936032, 1, 1, 1, 1, 1656936032),
(15, 8, '21', 2, 1, 1, NULL, 1, 1656936624, 1, 1, 1, 1, 1656936624),
(16, 8, '21-25', 2, 1, 1, NULL, 1, 1656936642, 1, 1, 1, 1, 1656936642),
(17, 8, '25-35', 2, 1, 1, NULL, 1, 1656936657, 1, 1, 1, 1, 1656936657);

-- --------------------------------------------------------

--
-- Структура таблиці `s_shopshowcase_options`
--

CREATE TABLE `s_shopshowcase_options` (
  `id` int(11) NOT NULL,
  `wl_alias` int(11) NOT NULL,
  `group` int(11) DEFAULT NULL,
  `alias` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `main` tinyint(1) DEFAULT 0,
  `changePrice` text DEFAULT NULL,
  `filter` tinyint(1) DEFAULT NULL,
  `toCart` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `sort` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `s_shopshowcase_options`
--

INSERT INTO `s_shopshowcase_options` (`id`, `wl_alias`, `group`, `alias`, `photo`, `position`, `type`, `main`, `changePrice`, `filter`, `toCart`, `active`, `sort`) VALUES
(1, 8, 0, '1-ekonom', NULL, 1, 9, 1, '0', 0, 0, 1, 0),
(2, 8, 0, '2-typ', NULL, 2, 9, 1, '0', 0, 0, 1, 0),
(3, 8, -2, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 1, NULL),
(4, 8, -2, NULL, NULL, 2, 0, 0, NULL, NULL, NULL, 1, NULL),
(5, 8, -1, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 1, NULL),
(6, 8, -1, NULL, NULL, 2, 0, 0, NULL, NULL, NULL, 1, NULL),
(7, 8, -1, NULL, NULL, 3, 0, 0, NULL, NULL, NULL, 1, NULL),
(8, 8, 0, '8-velychyna', NULL, 3, 9, 1, '0', 0, 0, 0, 0),
(9, 8, -8, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 1, NULL),
(10, 8, -8, NULL, NULL, 2, 0, 0, NULL, NULL, NULL, 1, NULL),
(11, 8, -8, NULL, NULL, 3, 0, 0, NULL, NULL, NULL, 1, NULL),
(12, 8, 0, '12-akcija', NULL, 3, 11, 1, '0', 0, 0, 1, 0),
(13, 8, -12, NULL, NULL, 3, 0, 0, NULL, NULL, NULL, 1, NULL),
(14, 8, -12, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 1, NULL),
(15, 8, -12, NULL, NULL, 2, 0, 0, NULL, NULL, NULL, 1, NULL),
(17, 8, 0, '17-oplata-chastynamy', NULL, 4, 11, 1, '0', 0, 0, 1, 0),
(18, 8, -17, NULL, '18_.png', 2, 0, 0, NULL, NULL, NULL, 1, NULL),
(19, 8, -17, NULL, '19_.png', 1, 0, 0, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `s_shopshowcase_options_name`
--

CREATE TABLE `s_shopshowcase_options_name` (
  `id` int(11) NOT NULL,
  `option` int(11) NOT NULL,
  `language` varchar(2) DEFAULT '',
  `name` text DEFAULT NULL,
  `sufix` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `s_shopshowcase_options_name`
--

INSERT INTO `s_shopshowcase_options_name` (`id`, `option`, `language`, `name`, `sufix`) VALUES
(1, 1, '', 'Тип монтажу', 'eco'),
(2, 2, '', 'Тип', ''),
(3, 3, '', 'Кондиціонер', NULL),
(4, 4, '', 'Рекуператор', NULL),
(5, 5, '', 'Економ', NULL),
(6, 6, '', 'Оптимальний', NULL),
(7, 7, '', 'VIP', NULL),
(8, 8, '', 'величина', ''),
(9, 9, '', '21', NULL),
(10, 10, '', '21-25', NULL),
(11, 11, '', '25-35', NULL),
(12, 12, '', 'Акція', ''),
(13, 13, '', 'Акція', NULL),
(14, 14, '', '-50% на монтаж', NULL),
(15, 15, '', 'Топ продаж', NULL),
(17, 17, '', 'Оплата частинами', ''),
(18, 18, '', 'MonoBank', NULL),
(19, 19, '', 'PrivateBank', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `s_shopshowcase_products`
--

CREATE TABLE `s_shopshowcase_products` (
  `id` int(11) NOT NULL,
  `wl_alias` int(11) NOT NULL,
  `article` text DEFAULT NULL,
  `article_show` text DEFAULT NULL,
  `alias` text DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `price` float UNSIGNED DEFAULT NULL,
  `old_price` float UNSIGNED DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  `promo` int(11) DEFAULT NULL,
  `availability` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `rating` float NOT NULL DEFAULT 0,
  `rating_votes` int(11) NOT NULL DEFAULT 0,
  `author_add` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `author_edit` int(11) NOT NULL,
  `date_edit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `s_shopshowcase_products`
--

INSERT INTO `s_shopshowcase_products` (`id`, `wl_alias`, `article`, `article_show`, `alias`, `group`, `price`, `old_price`, `currency`, `promo`, `availability`, `active`, `position`, `rating`, `rating_votes`, `author_add`, `date_add`, `author_edit`, `date_edit`) VALUES
(1, 8, '00c1', '00c1', '00c1-cooperamphunter-prima-plus-ch-s07xn7', 3, 7500, 20000, NULL, NULL, 1, 1, 1, 0, 0, 1, 1656938180, 1, 1657535230),
(2, 8, '1', '1', '1-cooperamphunter-prima-plus-ch-s07xn7000', 3, 8000, NULL, NULL, NULL, 1, 1, 2, 0, 0, 1, 1656938272, 1, 1657364389),
(3, 8, '00c3', '00c3', '00c3-cooperamphunter-prima-premium-ch-s0', 3, 9000, NULL, NULL, NULL, 1, 1, 3, 0, 0, 1, 1656938355, 1, 1657363089),
(4, 8, '00с4', '00с4', '00с4-cooper-prima-plus-ch-s07xn7', 4, 8000, NULL, NULL, NULL, 1, 1, 1, 0, 0, 1, 1656938414, 1, 1656938434),
(5, 8, '00c5', '00c5', '00c5-cooperamphunter-mediumplus-ch-s07xn7', 4, 8100, NULL, NULL, NULL, 1, 1, 2, 0, 0, 1, 1656938550, 1, 1656947373),
(6, 8, '00c6', '00c6', '00c6-cooperamphunter-plus', 4, 9000, NULL, NULL, NULL, 1, 1, 3, 0, 0, 1, 1656938611, 1, 1656947416),
(7, 8, '00c7', '00c7', '00c7-cooperamphunter-prima-plus', 5, 7400, NULL, NULL, NULL, 1, 1, 1, 0, 0, 1, 1656938661, 1, 1656947435),
(8, 8, '00c8', '00c8', '00c8-hunter-prima-plus-ch-s07xn7', 5, 8900, NULL, NULL, NULL, 1, 1, 2, 0, 0, 1, 1656938721, 1, 1656947475),
(9, 8, '00c9', '00c9', '00c9-prima-plus-ch-s07xn7', 5, 9400, 200000, NULL, NULL, 1, 1, 3, 0, 0, 1, 1656938767, 1, 1657528967),
(10, 8, '00r1', '00r1', '00r1-rec-hunter-prima-plus-ch-s07xn7', 15, 1999, NULL, NULL, NULL, 1, 1, 1, 0, 0, 1, 1656938839, 1, 1656938856),
(11, 8, '00r2', '00r2', '00r2-plus-ch-s07xn7-recuperator', 15, 12000, NULL, NULL, NULL, 1, 1, 2, 0, 0, 1, 1656938901, 1, 1656938910),
(12, 8, '00r3', '00r3', '00r3-recamphunter-prima-plus-ch-s07xn7', 15, 5000, NULL, NULL, NULL, 1, 1, 3, 0, 0, 1, 1656938946, 1, 1656938955),
(13, 8, '00r4', '00r4', '00r4-goter-prima-plus-ch-s07xn7', 16, 4030, NULL, NULL, NULL, 1, 1, 1, 0, 0, 1, 1656939005, 1, 1656939018),
(14, 8, '00r5', '00r5', '00r5-prima-plus-ch-s07xn79000', 16, 5600, NULL, NULL, NULL, 1, 1, 2, 0, 0, 1, 1656939091, 1, 1656939105),
(15, 8, '00r6', '00r6', '00r6-min-plus-ch-s07xn7', 16, 3000, NULL, NULL, NULL, 1, 1, 3, 0, 0, 1, 1656939131, 1, 1656947520),
(16, 8, '00r7', '00r7', '00r7-hunter-prima-plus', 17, 2500, NULL, NULL, NULL, 1, 1, 1, 0, 0, 1, 1656939165, 1, 1656939186),
(17, 8, '00r8', '00r8', '00r8-ch-s07xn7', 17, 6050, NULL, NULL, NULL, 1, 1, 2, 0, 0, 1, 1656939225, 1, 1656947584),
(18, 8, '00r9', '00r9', '00r9-cooperprima-plus-ch-s07xn7', 17, 7800, NULL, NULL, NULL, 1, 1, 3, 0, 0, 1, 1656939266, 1, 1657531577);

-- --------------------------------------------------------

--
-- Структура таблиці `s_shopshowcase_products_similar`
--

CREATE TABLE `s_shopshowcase_products_similar` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `group` int(11) NOT NULL,
  `folder` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `s_shopshowcase_product_options`
--

CREATE TABLE `s_shopshowcase_product_options` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `option` int(11) NOT NULL,
  `language` varchar(2) DEFAULT '',
  `value` text DEFAULT NULL,
  `changePrice` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `s_shopshowcase_product_options`
--

INSERT INTO `s_shopshowcase_product_options` (`id`, `product`, `option`, `language`, `value`, `changePrice`) VALUES
(1, 1, 1, '', '5', NULL),
(2, 1, 2, '', '3', NULL),
(4, 2, 1, '', '6', NULL),
(5, 2, 2, '', '3', NULL),
(7, 3, 1, '', '7', NULL),
(8, 3, 2, '', '3', NULL),
(9, 5, 1, '', '5', NULL),
(10, 5, 2, '', '3', NULL),
(11, 6, 1, '', '6', NULL),
(12, 6, 2, '', '3', NULL),
(13, 7, 1, '', '7', NULL),
(14, 7, 2, '', '3', NULL),
(15, 8, 1, '', '5', NULL),
(16, 8, 2, '', '3', NULL),
(17, 15, 1, '', '7', NULL),
(18, 15, 2, '', '3', NULL),
(19, 17, 1, '', '6', NULL),
(20, 17, 2, '', '3', NULL),
(22, 2, 12, '', '14,15,13', NULL),
(23, 2, 17, '', '19,18', NULL),
(24, 9, 12, '', '14,15,13', NULL),
(25, 9, 17, '', '19,18', NULL),
(26, 18, 12, '', '13', NULL),
(27, 1, 17, '', '18', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `s_shopshowcase_promo`
--

CREATE TABLE `s_shopshowcase_promo` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `percent` float NOT NULL,
  `info` text NOT NULL,
  `date_add` int(11) NOT NULL,
  `date_edit` int(11) NOT NULL,
  `manager_edit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_aliases`
--

CREATE TABLE `wl_aliases` (
  `id` int(11) NOT NULL,
  `alias` text NOT NULL COMMENT 'основне посилання',
  `service` int(11) DEFAULT 0,
  `table` text DEFAULT NULL,
  `seo_robot` tinyint(1) DEFAULT 0,
  `admin_sidebar` tinyint(1) DEFAULT 0,
  `admin_ico` text DEFAULT NULL,
  `admin_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_aliases`
--

INSERT INTO `wl_aliases` (`id`, `alias`, `service`, `table`, `seo_robot`, `admin_sidebar`, `admin_ico`, `admin_order`) VALUES
(1, 'main', 0, NULL, 0, 0, 'fa-home', 20),
(2, 'search', 0, NULL, 0, 0, NULL, NULL),
(3, 'profile', 0, NULL, 0, 0, NULL, NULL),
(4, 'login', 0, NULL, 0, 0, NULL, NULL),
(5, 'signup', 0, NULL, 0, 0, NULL, NULL),
(6, 'reset', 0, NULL, 0, 0, NULL, NULL),
(7, 'subscribe', 0, NULL, 0, 0, NULL, NULL),
(8, 'shop', 1, '_8_shop', 0, 0, 'fa-qrcode', 100);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_aliases_cooperation`
--

CREATE TABLE `wl_aliases_cooperation` (
  `id` int(11) NOT NULL,
  `alias1` int(11) NOT NULL,
  `alias2` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_audio`
--

CREATE TABLE `wl_audio` (
  `id` int(11) NOT NULL,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `name` text NOT NULL,
  `text` text NOT NULL,
  `extension` text NOT NULL,
  `author` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_comments`
--

CREATE TABLE `wl_comments` (
  `id` int(11) NOT NULL,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `reply` int(3) DEFAULT 0,
  `date_add` int(11) NOT NULL,
  `manager` int(11) DEFAULT NULL,
  `date_manage` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_fields`
--

CREATE TABLE `wl_fields` (
  `id` int(11) NOT NULL,
  `form` int(11) NOT NULL,
  `name` text NOT NULL,
  `position` int(11) DEFAULT 0,
  `input_type` int(11) NOT NULL,
  `required` tinyint(1) DEFAULT 0,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_fields`
--

INSERT INTO `wl_fields` (`id`, `form`, `name`, `position`, `input_type`, `required`, `title`) VALUES
(6, 3, 'phone', 0, 1, 0, 'Телефон'),
(7, 3, 'name', 0, 1, 0, 'Ім&#039;я'),
(8, 3, 'item', 0, 1, 0, 'Товар'),
(9, 4, 'space', 0, 1, 0, 'Тип об’єкту'),
(10, 4, 'square', 0, 1, 0, 'Орієнтовна площа приміщення'),
(11, 4, 'no-square', 0, 1, 0, 'Орієнтовна площа приміщення'),
(12, 4, 'radio-time', 0, 1, 0, 'Потрібні терміни виконання послуг?'),
(13, 4, 'name', 0, 1, 0, 'Ім&#039;я'),
(14, 4, 'phone', 0, 1, 0, 'Телефон');

-- --------------------------------------------------------

--
-- Структура таблиці `wl_fields_options`
--

CREATE TABLE `wl_fields_options` (
  `id` int(11) NOT NULL,
  `field` int(11) NOT NULL,
  `value` text DEFAULT NULL,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_files`
--

CREATE TABLE `wl_files` (
  `id` int(11) NOT NULL,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `name` text NOT NULL,
  `text` text NOT NULL,
  `extension` text NOT NULL,
  `author` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_forms`
--

CREATE TABLE `wl_forms` (
  `id` int(11) NOT NULL,
  `sidebar` tinyint(1) NOT NULL,
  `name` text NOT NULL,
  `captcha` tinyint(1) DEFAULT 0,
  `title` text DEFAULT NULL,
  `table` text DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1-GET, 2-POST',
  `type_data` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1-fields, 2-values',
  `send_mail` tinyint(1) DEFAULT NULL,
  `success` tinyint(1) DEFAULT NULL,
  `success_data` text DEFAULT NULL,
  `send_sms` tinyint(1) NOT NULL DEFAULT 0,
  `sms_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_forms`
--

INSERT INTO `wl_forms` (`id`, `sidebar`, `name`, `captcha`, `title`, `table`, `type`, `type_data`, `send_mail`, `success`, `success_data`, `send_sms`, `sms_text`) VALUES
(3, 1, 'call-me', 1, 'Зателефонуйте мені', 'call-me', 2, 2, 0, 4, 'Наш менеджер скоро вам зателефонує.', 0, ''),
(4, 1, 'calculate', 1, 'Розрахувати вартість', 'calculate', 2, 2, 0, 4, 'Наш менеджер скоро вам зателефонує.', 0, '');

-- --------------------------------------------------------

--
-- Структура таблиці `wl_images`
--

CREATE TABLE `wl_images` (
  `id` int(11) NOT NULL,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `file_name` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `author` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_images`
--

INSERT INTO `wl_images` (`id`, `alias`, `content`, `section_id`, `file_name`, `title`, `link`, `author`, `date_add`, `position`) VALUES
(1, 8, 1, 0, '-1.png', '', NULL, 1, 1656938180, 1),
(2, 8, 2, 0, '-2.png', '', NULL, 1, 1656938272, 1),
(4, 8, 4, 0, '-4.png', '', NULL, 1, 1656938414, 1),
(5, 8, 3, 0, '00c3-cooperamphunter-prima-premium-ch-s0-5.png', '', '', 1, 1656938489, 1),
(6, 8, 5, 0, '-6.png', '', NULL, 1, 1656938550, 1),
(7, 8, 6, 0, '-7.png', '', NULL, 1, 1656938611, 1),
(8, 8, 7, 0, '-8.png', '', NULL, 1, 1656938661, 1),
(9, 8, 8, 0, '-9.png', '', NULL, 1, 1656938721, 1),
(10, 8, 9, 0, '-10.png', '', NULL, 1, 1656938767, 1),
(11, 8, 10, 0, '-11.png', '', NULL, 1, 1656938839, 1),
(12, 8, 11, 0, '-12.png', '', NULL, 1, 1656938901, 1),
(13, 8, 12, 0, '-13.png', '', NULL, 1, 1656938946, 1),
(14, 8, 13, 0, '-14.png', '', NULL, 1, 1656939005, 1),
(15, 8, 14, 0, '-15.png', '', NULL, 1, 1656939091, 1),
(16, 8, 15, 0, '-16.png', '', NULL, 1, 1656939131, 1),
(17, 8, 16, 0, '-17.png', '', NULL, 1, 1656939165, 1),
(18, 8, 17, 0, '-18.png', '', NULL, 1, 1656939225, 1),
(21, 8, 18, 0, '00r9-cooperprima-plus-ch-s07xn7-21.png', '', '', 1, 1657531577, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_images_sizes`
--

CREATE TABLE `wl_images_sizes` (
  `id` int(11) NOT NULL,
  `alias` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `prefix` tinytext DEFAULT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1 resize, 2 preview',
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `quality` tinyint(2) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_images_sizes`
--

INSERT INTO `wl_images_sizes` (`id`, `alias`, `active`, `name`, `prefix`, `type`, `width`, `height`, `quality`) VALUES
(1, 0, 1, 'Значення по замовчуванню. Оригінал', NULL, 1, 1500, 1500, 100),
(2, 0, 1, 'Значення по замовчуванню. Панель керування', 'admin', 2, 150, 150, 100),
(3, 0, 1, 'Значення по замовчуванню. Header для соц. мереж', 'header', 2, 600, 315, 100),
(4, 8, 1, 'Відображення у корзині', 'cart', 2, 180, 180, 100),
(5, 8, 1, 'Відображення у каталозі товарів', 'catalog', 2, 250, 250, 100),
(6, 8, 1, 'Товар детально', 'detal', 2, 500, 500, 100),
(7, 8, 1, 'Товар детально міні', 'thumb', 2, 75, 75, 100),
(8, 8, 1, 'Підгрупа в каталозі', 'subgroup', 2, 230, 120, 100),
(9, 1, 1, 'Головна сторінка картка товара', 'small', 1, 260, 160, 100),
(10, 8, 1, 'Головна сторінка картка товару', 'small', 1, 260, 160, 100);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_input_types`
--

CREATE TABLE `wl_input_types` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `options` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_input_types`
--

INSERT INTO `wl_input_types` (`id`, `name`, `options`) VALUES
(1, 'text', 0),
(2, 'number', 0),
(3, 'email', 0),
(4, 'url', 0),
(5, 'date', 0),
(6, 'time', 0),
(7, 'datetime', 0),
(8, 'textarea', 0),
(9, 'radio', 1),
(10, 'select', 1),
(11, 'checkbox', 1),
(12, 'checkbox-select2', 1),
(13, 'file', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_language_values`
--

CREATE TABLE `wl_language_values` (
  `id` int(11) NOT NULL,
  `word` int(11) NOT NULL,
  `language` varchar(2) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_language_values`
--

INSERT INTO `wl_language_values` (`id`, `word`, `language`, `value`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(4, 4, NULL, NULL),
(5, 5, NULL, NULL),
(6, 6, NULL, NULL),
(7, 7, NULL, NULL),
(8, 8, NULL, NULL),
(9, 9, NULL, NULL),
(11, 11, NULL, '+38 (095) 055 50 07'),
(12, 12, NULL, '+38 (096) 055 50 07'),
(13, 13, NULL, NULL),
(14, 14, NULL, NULL),
(15, 15, NULL, NULL),
(16, 16, NULL, NULL),
(17, 17, NULL, NULL),
(18, 18, NULL, NULL),
(19, 19, NULL, NULL),
(20, 20, NULL, NULL),
(21, 21, NULL, NULL),
(22, 22, NULL, NULL),
(23, 23, NULL, NULL),
(24, 24, NULL, NULL),
(25, 25, NULL, NULL),
(26, 26, NULL, NULL),
(27, 27, NULL, NULL),
(28, 28, NULL, NULL),
(29, 29, NULL, NULL),
(30, 30, NULL, NULL),
(31, 31, NULL, NULL),
(32, 32, NULL, NULL),
(33, 33, NULL, NULL),
(34, 34, NULL, NULL),
(35, 35, NULL, NULL),
(36, 36, NULL, NULL),
(38, 38, NULL, NULL),
(39, 39, NULL, NULL),
(41, 41, NULL, NULL),
(42, 42, NULL, NULL),
(43, 43, NULL, NULL),
(44, 44, NULL, NULL),
(45, 45, NULL, NULL),
(46, 46, NULL, NULL),
(47, 47, NULL, NULL),
(48, 48, NULL, NULL),
(49, 49, NULL, NULL),
(50, 50, NULL, NULL),
(51, 51, NULL, NULL),
(52, 52, NULL, NULL),
(53, 53, NULL, NULL),
(54, 54, NULL, NULL),
(55, 55, NULL, NULL),
(56, 56, NULL, NULL),
(57, 57, NULL, NULL),
(58, 58, NULL, NULL),
(59, 59, NULL, NULL),
(60, 60, NULL, NULL),
(61, 61, NULL, NULL),
(62, 62, NULL, NULL),
(63, 63, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_language_words`
--

CREATE TABLE `wl_language_words` (
  `id` int(11) NOT NULL,
  `word` text DEFAULT NULL,
  `alias` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_language_words`
--

INSERT INTO `wl_language_words` (`id`, `word`, `alias`, `type`, `position`) VALUES
(1, 'Головна', 0, 1, 1),
(2, 'Кабінет', 0, 1, 2),
(3, 'Вийти', 0, 1, 3),
(4, 'Подібні', 8, 1, 1),
(5, 'Ще страви від', 8, 1, 2),
(6, 'Доставка та оплата', 8, 1, 3),
(7, 'Відгуки', 8, 1, 4),
(8, 'Замовити', 0, 1, 4),
(9, 'Відгуки відсутні. Будьте першим! Залиште відгук про товар', 8, 1, 5),
(11, 'tel2', 0, 1, 5),
(12, 'tel1', 0, 1, 6),
(13, 'telegram', 0, 1, 7),
(14, 'viber', 0, 1, 8),
(15, 'instagram', 0, 1, 9),
(16, 'facebook', 0, 1, 10),
(17, 'Реєстрація', 4, 1, 1),
(18, 'Ім\'я', 5, 1, 1),
(19, 'Прізвище', 5, 1, 2),
(20, 'Контактний телефон', 5, 1, 3),
(21, 'Пароль', 4, 1, 2),
(22, 'Повторіть пароль', 5, 1, 4),
(23, '*пороль має містити від 5 до 20 символів', 5, 1, 5),
(24, 'Зареєструватися', 5, 1, 6),
(25, 'Увійти', 4, 1, 3),
(26, 'Забули пароль?', 4, 1, 4),
(27, 'Вже зареєстровані?', 4, 1, 5),
(28, 'увійти за допомогою email та паролю', 4, 1, 6),
(29, 'Вкажіть свої персональні дані (ім\'я, емейл, телефон) та розпочнімо співпрацю з', 5, 1, 7),
(30, 'Поле пароль', 4, 1, 7),
(31, 'Помилка!', 0, 1, 11),
(32, 'Кабінет клієнта', 3, 1, 1),
(33, 'Мої замовлення', 3, 1, 2),
(34, 'Профіль', 3, 1, 3),
(35, 'Редагувати профіль', 3, 1, 4),
(36, 'Контактний номер', 5, 1, 8),
(38, 'Реєстрація пройшла успішно!', 5, 1, 10),
(39, 'На поштову скриньку відправлено лист з <b>кодом підтвердження</b> та подальшими інструкціями. <br><br> <b>УВАГА!</b> Лист може знаходитися у папці <b>СПАМ!</b>', 5, 1, 11),
(41, 'Заповніть \"Я не робот\"', 0, 1, 12),
(42, 'Загальні дані', 3, 1, 5),
(43, 'Безпека', 3, 1, 6),
(44, 'Моє ім\'я', 3, 1, 7),
(45, 'Мій', 3, 1, 8),
(46, 'Номер телефону', 3, 1, 9),
(47, 'Компанія', 3, 1, 10),
(48, 'Додати/оновити фото', 3, 1, 11),
(49, 'Тип', 3, 1, 12),
(50, 'Останній вхід', 3, 1, 13),
(51, 'Дата реєстрації', 3, 1, 14),
(52, 'Зберегти зміни', 3, 1, 15),
(53, 'Зміна паролю', 3, 1, 16),
(54, 'Введіть старий/поточний пароль', 3, 1, 17),
(55, 'Введіть новий пароль', 3, 1, 18),
(56, 'Повторіть новий пароль', 3, 1, 19),
(57, 'Оновити пароль', 3, 1, 20),
(58, 'Реєстр дій', 3, 1, 21),
(59, 'Додати відгук', 8, 1, 6),
(60, 'Оцінка', 8, 1, 7),
(61, 'Додати зображення', 8, 1, 8),
(62, 'Відгук', 8, 1, 9),
(63, 'Change image', 8, 1, 10);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_mail_active`
--

CREATE TABLE `wl_mail_active` (
  `id` int(11) NOT NULL,
  `template` int(11) NOT NULL,
  `form` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_mail_history`
--

CREATE TABLE `wl_mail_history` (
  `id` int(11) NOT NULL,
  `template` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `from` text DEFAULT NULL,
  `fromName` text DEFAULT NULL,
  `to` text DEFAULT NULL,
  `replyTo` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `attach` text DEFAULT NULL,
  `send_email` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_mail_history`
--

INSERT INTO `wl_mail_history` (`id`, `template`, `date`, `from`, `fromName`, `to`, `replyTo`, `subject`, `message`, `attach`, `send_email`) VALUES
(1, 0, 1657886047, 'info@kond', '', 'myteam.orest@gmail.com', 'info@kond', 'Реєстрація нового користувача у icekond.lihtar.in.ua', '<html><head><title>Реєстрація нового користувача на сайті icekond.lihtar.in.ua</title></head><body><p>Доброго дня <b>Орест Тест</b>!</p><p>Ви успішно зареєструвалися  на сайті icekond.lihtar.in.ua. Для завершення реєстрації Вашого аккаунту необхідно перейти по даному посиланню <br><b><a href=\"https://icekond.lihtar.in.ua/signup/get_confirmed?email=myteam.orest@gmail.com&code=80e6f49c829b0399a6c7b0b2a03d7e2e\">https://icekond.lihtar.in.ua/signup/get_confirmed?email=myteam.orest@gmail.com&code=80e6f49c829b0399a6c7b0b2a03d7e2e</a></b></p><p>Або увійдіть у систему за допомогою вашого email і паролю та введіть наступний код підтвердження: <b>80e6f49c829b0399a6c7b0b2a03d7e2e</b></p><p><p>Виникла помилка?</p><p>Напишить нам: info@kond Ми спробуємо зліквідувати Ваші проблеми найближчим часом.</p><p>З найкращими побажаннями, адміністрація icekond.lihtar.in.ua</p></body></html>', 'a:0:{}', 0),
(2, 0, 1657889917, 'info@kond', '', 'myteam.orest@gmail.com', 'info@kond', 'Підтвердження реєстрації Орест Тест на сайті icekond.lihtar.in.ua', '<html><head><title>Підтвердження реєстрації Орест Тест на сайті  icekond.lihtar.in.ua</title></head><body><p>Доброго дня <b>Орест Тест</b>!</p><p>Ваш профіль <strong>підтверджено</strong>. Дякуємо за реєстрацію!</p><p>З найкращими побажаннями, адміністрація icekond.lihtar.in.ua</p></body></html>', 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_mail_templates`
--

CREATE TABLE `wl_mail_templates` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `from` text DEFAULT NULL,
  `to` text DEFAULT NULL,
  `multilanguage` tinyint(1) DEFAULT NULL,
  `savetohistory` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_mail_templats_data`
--

CREATE TABLE `wl_mail_templats_data` (
  `id` int(11) NOT NULL,
  `template` int(11) NOT NULL,
  `language` varchar(2) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_media_text`
--

CREATE TABLE `wl_media_text` (
  `id` int(11) NOT NULL,
  `type` enum('photo','video','section') NOT NULL,
  `content` int(11) NOT NULL,
  `language` varchar(2) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_ntkd`
--

CREATE TABLE `wl_ntkd` (
  `id` int(11) NOT NULL,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `language` varchar(2) DEFAULT NULL,
  `section_id` smallint(6) NOT NULL DEFAULT 0,
  `get_sivafc` varchar(6) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `list` text DEFAULT NULL,
  `meta` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_ntkd`
--

INSERT INTO `wl_ntkd` (`id`, `alias`, `content`, `language`, `section_id`, `get_sivafc`, `name`, `title`, `description`, `keywords`, `text`, `list`, `meta`) VALUES
(1, 1, 0, NULL, 0, '', 'kond', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 0, NULL, 0, NULL, 'Пошук kond', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 0, NULL, 0, 'af', 'Мій кабінет kond', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 0, NULL, 0, 'af', 'Увійти у kond', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 0, NULL, 0, 'af', 'Реєстрація kond', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 0, NULL, 0, NULL, 'Відновлення паролю kond', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 0, NULL, 0, NULL, 'Підписка', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 0, '', 0, 'i', 'Магазин', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 8, -1, NULL, 0, '', 'Кондиціонер', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 8, -2, NULL, 0, NULL, 'Рекуператор', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 8, -3, NULL, 0, NULL, '21', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 8, -4, NULL, 0, NULL, '21-25', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 8, -5, NULL, 0, NULL, '25-35', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 8, -15, NULL, 0, NULL, '21', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 8, -16, NULL, 0, NULL, '21-25', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 8, -17, NULL, 0, NULL, '25-35', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 8, 1, NULL, 0, 'i', 'Test 2 Cooper&amp;Hunter Prima Plus CH-S07XN7 00c1', NULL, NULL, NULL, 'WWРекомендована площа: 20 м2 Продуктивність: 7000 Гарантія: 2 роки Країна виробник: Китай Китай Країна виробник: Китай Китай Країна виробник: Китай Китай', 'режим для сну SLEEP &ndash; ще менше шуму;\nінтенсивне охолодження або нагрівання повітря в режимі Turbo;\nповне очищення від алергенів та бактерій;\nможливість повернутися до заводських налаштувань одним кліком;', NULL),
(36, 8, 2, NULL, 0, 'i', 'Cooper&amp;Hunter Prima Plus CH-S07XN7000 1', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 20 м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 9000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n', NULL, NULL),
(37, 8, 3, NULL, 0, 'i', 'Cooper&amp;Hunter Prima Premium CH-S0 00c3', NULL, NULL, NULL, NULL, '', NULL),
(38, 8, 4, NULL, 0, 'i', 'Cooper Prima Plus CH-S07XN7 00с4', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 25&amp;nbsp;м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 7000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n\n&lt;p&gt;Країна виробник: Китай&lt;/p&gt;\n', NULL, NULL),
(39, 8, 5, NULL, 0, 'i', 'Cooper&amp;Hunter MediumPlus CH-S07XN7 00c5', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 20 м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 7000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n\n&lt;p&gt;Країна виробник: Китай&lt;/p&gt;\n', NULL, NULL),
(40, 8, 6, NULL, 0, 'i', 'Cooper&amp;Hunter Plus 00c6', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 20 м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 7000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n\n&lt;p&gt;Країна виробник: Китай&lt;/p&gt;\n', NULL, NULL),
(41, 8, 7, NULL, 0, 'i', 'Cooper&amp;Hunter Prima Plus 00c7', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 20 м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 7000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n\n&lt;p&gt;Країна виробник: Китай&lt;/p&gt;\n', NULL, NULL),
(42, 8, 8, NULL, 0, 'i', 'Hunter Prima Plus CH-S07XN7 00c8', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 35&amp;nbsp;м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 7000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n\n&lt;p&gt;Країна виробник: Китай&lt;/p&gt;\n', NULL, NULL),
(43, 8, 9, NULL, 0, 'i', '1Prima Plus For Test 00c9', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 32&amp;nbsp;м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 7000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n\n&lt;p&gt;Країна виробник: Китай&lt;/p&gt;\n', NULL, NULL),
(44, 8, 10, NULL, 0, 'i', 'Rec Hunter Prima Plus CH-S07XN7 00r1', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 20 м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 3000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n\n&lt;p&gt;Країна виробник: Китай&lt;/p&gt;\n', NULL, NULL),
(45, 8, 11, NULL, 0, 'i', 'Plus CH-S07XN7 Recuperator 00r2', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 20 м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 7000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n\n&lt;p&gt;Країна виробник: Китай&lt;/p&gt;\n', NULL, NULL),
(46, 8, 12, NULL, 0, 'i', 'Rec&amp;Hunter Prima Plus CH-S07XN7 00r3', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 20 м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 7000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n\n&lt;p&gt;Країна виробник: Китай&lt;/p&gt;\n', NULL, NULL),
(47, 8, 13, NULL, 0, 'i', 'Goter Prima Plus CH-S07XN7 00r4', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 25&amp;nbsp;м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 7000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n\n&lt;p&gt;Країна виробник: Китай&lt;/p&gt;\n', NULL, NULL),
(48, 8, 14, NULL, 0, 'i', 'Prima Plus CH-S07XN79000 00r5', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 23&amp;nbsp;м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 7000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n\n&lt;p&gt;Країна виробник: Китай&lt;/p&gt;\n', NULL, NULL),
(49, 8, 15, NULL, 0, 'i', 'Min Plus CH-S07XN7 00r6', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 8, 16, NULL, 0, 'i', 'Hunter Prima Plus 00r7', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 35&amp;nbsp;м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 7000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n\n&lt;p&gt;Країна виробник: Китай&lt;/p&gt;\n', NULL, NULL),
(51, 8, 17, NULL, 0, 'i', 'CH-S07XN7 00r8', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 20 м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 7000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n', NULL, NULL),
(52, 8, 18, NULL, 0, 'i', 'Тест 00r9', NULL, NULL, NULL, '&lt;p&gt;Рекомендована площа: 35&amp;nbsp;м2&lt;/p&gt;\n\n&lt;p&gt;Продуктивність: 7000&lt;/p&gt;\n\n&lt;p&gt;Гарантія: 2 роки&lt;/p&gt;\n\n&lt;p&gt;Країна виробник: Китай&lt;/p&gt;\n', 'Some text Some text Some text Some text Some text Some text ', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_ntkd_robot`
--

CREATE TABLE `wl_ntkd_robot` (
  `id` int(11) NOT NULL,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `language` varchar(2) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `list` text DEFAULT NULL,
  `meta` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_options`
--

CREATE TABLE `wl_options` (
  `id` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `alias` int(11) NOT NULL,
  `name` text NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_options`
--

INSERT INTO `wl_options` (`id`, `service`, `alias`, `name`, `value`) VALUES
(1, 0, 0, 'sitemap_active', '0'),
(2, 0, 0, 'sitemap_autosent', '0'),
(3, 0, 0, 'sitemap_lastgenerate', '0'),
(4, 0, 0, 'sitemap_lastsent', '0'),
(5, 0, 0, 'sitemap_lastedit', '1657535230'),
(6, 0, 0, 'statictic_set_page', '0'),
(7, 0, 0, 'sitemap_lastedit', '1657535230'),
(8, 0, 0, 'global_MetaTags', ''),
(9, 0, 0, 'showTimeSiteGenerate', '1'),
(10, 0, 0, 'sendEmailForce', '0'),
(11, 0, 0, 'sendEmailSaveHistory', '0'),
(12, 0, 0, 'new_user_type', '4'),
(13, 0, 0, 'showInAdminWl_comments', '0'),
(14, 0, 0, 'paginator_per_page', '30'),
(15, 0, 1, 'folder', 'main'),
(16, 0, 0, 'userSignUp', '0'),
(17, 1, 0, 'ProductUseArticle', '1'),
(18, 1, 0, 'useGroups', '1'),
(19, 1, 0, 'showProductsParentsPages', '1'),
(20, 1, 0, 'ProductMultiGroup', '0'),
(21, 1, 0, 'useAvailability', '0'),
(22, 1, 0, 'searchHistory', '0'),
(23, 1, 0, 'useMarkUp', '0'),
(24, 1, 0, 'export_ok', '0'),
(25, 1, 0, 'folder', 'shop'),
(26, 1, 0, 'productOrder', 'position DESC'),
(27, 1, 0, 'groupOrder', 'position ASC'),
(28, 1, 0, 'price_format', ''),
(29, 1, 0, 'userCanAdd', '0'),
(30, 1, 0, 'similarFolders', ''),
(31, 1, 8, 'folder', 'shopshowcase'),
(32, 1, -8, 'word:products_to_all', 'товарів'),
(33, 1, -8, 'word:product_to', 'До товару'),
(34, 1, -8, 'word:product_to_delete', 'товару'),
(35, 1, -8, 'word:product', 'товар'),
(36, 1, -8, 'word:products', 'товари'),
(37, 1, -8, 'word:product_add', 'Додати товар'),
(38, 1, -8, 'word:options_to_all', 'властивостей'),
(39, 1, -8, 'word:option', 'властивість товару'),
(40, 1, -8, 'word:option_add', 'Додати властивість товару'),
(41, 1, -8, 'sub-menu', 'a:2:{s:5:\"alias\";s:3:\"add\";s:4:\"name\";s:23:\"Додати товар\";}'),
(42, 1, -8, 'sub-menu', 'a:2:{s:5:\"alias\";s:3:\"all\";s:4:\"name\";s:28:\"До всіх товарів\";}'),
(43, 1, -8, 'sub-menu', 'a:2:{s:5:\"alias\";s:6:\"groups\";s:4:\"name\";s:10:\"Групи\";}'),
(44, 1, -8, 'sub-menu', 'a:2:{s:5:\"alias\";s:7:\"options\";s:4:\"name\";s:22:\"Властивості\";}'),
(45, 1, -8, 'sub-menu', 'a:2:{s:5:\"alias\";s:5:\"promo\";s:4:\"name\";s:10:\"Акції\";}'),
(46, 1, -8, 'sub-menu', 'a:2:{s:5:\"alias\";s:6:\"export\";s:4:\"name\";s:29:\"Експорт товарів\";}');

-- --------------------------------------------------------

--
-- Структура таблиці `wl_sections`
--

CREATE TABLE `wl_sections` (
  `id` int(11) NOT NULL,
  `alias_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `type` enum('text_single','text_multi','textarea_single','textarea_multi','images','videos','audios','files') NOT NULL DEFAULT 'text_single',
  `name` text NOT NULL,
  `access` enum('all','login','manager') NOT NULL DEFAULT 'all',
  `position` int(11) NOT NULL,
  `title` text NOT NULL,
  `value` text NOT NULL,
  `attr` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_services`
--

CREATE TABLE `wl_services` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL COMMENT 'службова назва (папки)',
  `title` text NOT NULL COMMENT 'публічна назва',
  `description` text NOT NULL,
  `table` text NOT NULL COMMENT 'службова таблиця',
  `group` tinytext NOT NULL,
  `multi_alias` tinyint(1) NOT NULL,
  `version` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_services`
--

INSERT INTO `wl_services` (`id`, `name`, `title`, `description`, `table`, `group`, `multi_alias`, `version`) VALUES
(1, 'shopshowcase', 'Магазин', 'Магазин товарів з підтримкою властифостей та фотогалереї. Мультимовна.', 's_shopshowcase', 'shop', 1, '3.3.3');

-- --------------------------------------------------------

--
-- Структура таблиці `wl_sitemap`
--

CREATE TABLE `wl_sitemap` (
  `id` int(11) NOT NULL,
  `link_sha1` char(40) NOT NULL,
  `link` text NOT NULL,
  `alias` smallint(6) DEFAULT NULL,
  `content` int(11) DEFAULT NULL,
  `code` smallint(5) UNSIGNED DEFAULT NULL,
  `data` text DEFAULT NULL,
  `time` int(11) NOT NULL,
  `changefreq` enum('always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT 'daily',
  `priority` tinyint(2) NOT NULL DEFAULT 5
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_sitemap`
--

INSERT INTO `wl_sitemap` (`id`, `link_sha1`, `link`, `alias`, `content`, `code`, `data`, `time`, `changefreq`, `priority`) VALUES
(1, 'b28b7af69320201d1cf206ebf28373980add1451', 'main', 1, 0, 200, '', 1656493131, 'daily', 5),
(3, '75181e9e8e8b64524a97ce24b1b3ab961e56ce7f', 'shop/kondycioner', 8, -1, 200, '', 1656935920, 'daily', 6),
(4, '175ac029bc7387aa1ebe5329287949cd55a8e386', 'shop/rekuperator', 8, -2, 200, '', 1656935933, 'daily', 6),
(5, 'eed54140f3a711c6b06e2f3a074fae5bb441c807', 'shop/kondycioner/21', 8, -3, 200, '', 1656935973, 'daily', 6),
(6, '763ba77b5f8506d56ea7d25cde191b1a81edfc99', 'shop/kondycioner/21-25', 8, -4, 200, '', 1656935984, 'daily', 6),
(7, '9ad623065174e0ddb8fec154d5c95bcdef7c992d', 'shop/kondycioner/25-35', 8, -5, 200, '', 1656936032, 'daily', 6),
(40, '624354911649a26aa681eebf5c17310011be7d59', 'shop/rekuperator/21/00r3-recamphunter-prima-plus-ch-s07xn7', 8, 12, 200, '', 1656938946, 'daily', 5),
(39, '958054e5f97463277ca51cafc79f23e069aefc0b', 'shop/rekuperator/21/00r2-plus-ch-s07xn7-recuperator', 8, 11, 200, '', 1656938901, 'daily', 5),
(38, '7b90c0408e2c1255044ff83962848662cbe498c4', 'shop/rekuperator/21/00r1-rec-hunter-prima-plus-ch-s07xn7', 8, 10, 200, '', 1656938839, 'daily', 5),
(37, 'e64f052f5f0bae2b2a8e9742e682260593054a7b', 'shop/kondycioner/25-35/00c9-prima-plus-ch-s07xn7', 8, 9, 200, '', 1656938767, 'daily', 5),
(36, '50ec176b2e4095dc31537d90e4db523734485a64', 'shop/kondycioner/25-35/00c8-hunter-prima-plus-ch-s07xn7', 8, 8, 200, '', 1656938721, 'daily', 5),
(35, '9a8f8a76fdca32b2c939751f2d66f60bc70c8ae3', 'shop/kondycioner/25-35/00c7-cooperamphunter-prima-plus', 8, 7, 200, '', 1656938661, 'daily', 5),
(17, 'ed7adaea96a7167c24553cf825ad9d1c1be40eba', 'shop/rekuperator/21', 8, -15, 200, '', 1656936624, 'daily', 6),
(18, '43ffae4df19b1dcbee2e58b6e176b0038e3e7ecc', 'shop/rekuperator/21-25', 8, -16, 200, '', 1656936642, 'daily', 6),
(19, '2cf1e08d68e25a50b3987161be3eff9417855ecc', 'shop/rekuperator/25-35', 8, -17, 200, '', 1656936657, 'daily', 6),
(34, 'de131b96945386c95f24093304d94e0091f04bd1', 'shop/kondycioner/21-25/00c6-cooperamphunter-plus', 8, 6, 200, '', 1656938611, 'daily', 5),
(33, '2e1122248e775c2cfebff384c6d03e65f0698f1e', 'shop/kondycioner/21-25/00c5-cooperamphunter-mediumplus-ch-s07xn7', 8, 5, 200, '', 1656938550, 'daily', 5),
(32, '631920e2d83cdb7c23521794be66eedf60c0019d', 'shop/kondycioner/21-25/00с4-cooper-prima-plus-ch-s07xn7', 8, 4, 200, '', 1656938414, 'daily', 5),
(31, 'eaa6c05105019774e64e0e07ba5fa67374e8ee76', 'shop/kondycioner/21/00c3-cooperamphunter-prima-premium-ch-s0', 8, 3, 200, '', 1656938355, 'daily', 5),
(30, 'dbe81e77a7af289e4681bcc9dfe49b2f42b2a861', 'shop/kondycioner/21/00c2-cooperamphunter-prima-plus-ch-s07xn7000', 8, 2, 200, '', 1656938272, 'daily', 5),
(29, '5ea0a6438211e9b391776ff25f2bfe99b9a4cacc', 'shop/kondycioner/21/00c1-cooperamphunter-prima-plus-ch-s07xn7', 8, 1, 200, '', 1656938180, 'daily', 5),
(41, '0a2d8efc6bf2b817dbfff66ad36d8fe8d6414e5e', 'shop/rekuperator/21-25/00r4-goter-prima-plus-ch-s07xn7', 8, 13, 200, '', 1656939005, 'daily', 5),
(42, '05a77af75f4b0d6d2858d17f5212ca679902e444', 'shop/rekuperator/21-25/00r5-prima-plus-ch-s07xn79000', 8, 14, 200, '', 1656939091, 'daily', 5),
(43, '13dcea1ed682ab1eec1854f5d02e436e5df72da1', 'shop/rekuperator/21-25/00r6-min-plus-ch-s07xn7', 8, 15, 200, '', 1656939131, 'daily', 5),
(44, '784405060677b1048efebbb876f69013d4bef3e9', 'shop/rekuperator/25-35/00r7-hunter-prima-plus', 8, 16, 200, '', 1656939165, 'daily', 5),
(45, '0b0f2d1bbb0ac8270c34bb3b6c5337934ce013d5', 'shop/rekuperator/25-35/00r8-ch-s07xn7', 8, 17, 200, '', 1656939225, 'daily', 5),
(46, '45e738a37ab352dda0496be0ed0328de3b0880a3', 'shop/rekuperator/25-35/00r9-cooperprima-plus-ch-s07xn7', 8, 18, 200, '', 1656939266, 'daily', 5),
(47, '2736fab291f04e69b62d490c3c09361f5b82461a', 'login', 4, 0, 202, '', 1657278545, 'daily', 5),
(48, '10c07f897e341946befa324e0e8702c4500ad350', 'admin/wl_forms/call-me/Ім\\\'я', 0, 0, 404, '', 1657278702, 'daily', 5),
(49, '9b14c430ed4ba7889cf592f4b8f929333e3dacf9', 'admin/wl_forms/call-me/style/images/logo-mobile.png', 0, 0, 404, '', 1657278702, 'daily', 5),
(50, 'cb5f003bd381493fb62b3ede79c3f557d6cd0ca4', 'admin/wl_forms/call-me/style/images/logo.png', 0, 0, 404, '', 1657278702, 'daily', 5),
(51, '06dcc9dc1bc86d4a3f18003b5455c703c55736ce', 'admin/wl_forms/call-me/style/images/tele.svg', 0, 0, 404, '', 1657278702, 'daily', 5),
(52, '2e5dd1bd7e9dcdc0f1c8d9028ac9be6accfb0efe', 'admin/wl_forms/call-me/style/images/telegram.svg', 0, 0, 404, '', 1657278702, 'daily', 5),
(53, 'ecc614c2b4149d9d21b5bb49cf7737a262896c8d', 'admin/wl_forms/call-me/style/images/viber.svg', 0, 0, 404, '', 1657278702, 'daily', 5),
(54, '4fe6e83cfe9a8a4d05563293e03e15362d6dd0a9', 'admin/wl_forms/call-me/style/images/instagram.svg', 0, 0, 404, '', 1657278702, 'daily', 5),
(55, '43e613da00c85afadbab4361fa117640a9caaf48', 'admin/wl_forms/call-me/style/images/tel.svg', 0, 0, 404, '', 1657278702, 'daily', 5),
(56, '2950905f99863b51f70b7b73ea3aec6aa4c77516', 'admin/wl_forms/call-me/style/images/facebook.svg', 0, 0, 404, '', 1657278702, 'daily', 5),
(57, '6c5418acaa97e0eea44739f3539ccf0bec01fef1', 'admin/wl_forms/call-me/style/images/tel-white.svg', 0, 0, 404, '', 1657278702, 'daily', 5),
(58, '475ddfe9dee1cf00617f8a9c2bd46441ef55e159', 'admin/wl_forms/call-me/style/images/headerheaderborder.png', 0, 0, 404, '', 1657278702, 'daily', 5),
(59, '002b9b739007c4c9b048e520007447da96ee6507', 'admin/wl_forms/call-me/style/images/headbor.svg', 0, 0, 404, '', 1657278702, 'daily', 5),
(60, '7f7428f4dc852baea30e0371f66a4650d15014e7', 'admin/wl_forms/call-me/style/images/calculate.svg', 0, 0, 404, '', 1657278702, 'daily', 5),
(61, '1a16a69fa8d5bd8c64c5d159091ce0b9e4078927', 'admin/wl_forms/call-me/style/images/stuff.svg', 0, 0, 404, '', 1657278702, 'daily', 5),
(62, '4b530986eacf1aa224c7cd6389fb749c6645af14', 'admin/wl_forms/call-me/style/images/close.svg', 0, 0, 404, '', 1657278702, 'daily', 5),
(63, '196b9404ca6689ccf97d3db8e25c3c725789d794', 'admin/wl_forms/call-me/images/заявка принята фото.png', 0, 0, 404, '', 1657278702, 'daily', 5),
(64, '22368285a4cba5c286615b799a814b3ee7dae0a4', 'telegram', 0, 0, 404, '', 1657288094, 'daily', 5),
(65, 'ab9b01233c83ef215d9d82e01109563709105688', 'viber', 0, 0, 404, '', 1657288098, 'daily', 5),
(66, '82713d34634ad4c2034526bcb451a599b986a758', 'shopshowcase/16/small_-17.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(67, '52230165640b9f377e12c2c54d3d8c486d141253', 'shopshowcase/13/small_-14.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(68, 'cbf421fd66bcb7560493b4403202ace85c2d1b03', 'shopshowcase/1/small_-1.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(69, 'e3495703b29ed6767894eb36df038d0896ee4fa7', 'shopshowcase/10/small_-11.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(70, 'ea1baa2d6eb74ba61602c7f32b0ca86389dc33f0', 'shopshowcase/7/small_-8.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(71, '7f446dd8dae9db61b5f4a576712f16429fb719e4', 'shopshowcase/4/small_-4.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(72, '596ecb1f5e55e790d954e8eb9721202115873b01', 'shopshowcase/17/small_-18.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(73, 'bf4c2dbde9f10d34b2ae3ef7c4bb79137c47d64b', 'shopshowcase/14/small_-15.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(74, 'f043787e37ff5173289339d55bfcb3cafd4b01b1', 'shopshowcase/11/small_-12.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(75, '4c6c7a4f7278914ce8b51036ead12ff534073f67', 'shopshowcase/8/small_-9.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(76, '38d055ffd21924968b90e467d5a2fa909f20a1ce', 'shopshowcase/5/small_-6.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(77, '383f0e0d14eb0555774e152c73fdf688cb7bbd7e', 'shopshowcase/2/small_-2.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(78, 'f919594e1d66273a91e6a0f07c7343275f8b0d45', 'shopshowcase/18/small_00r9-cooperprima-plus-ch-s07xn7-21.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(79, 'b3da44518996941d4631d8403034f6b94cd1a8c7', 'shopshowcase/15/small_-16.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(80, '42c8ccbf034a8e386d0d69520dd8a415df1b7529', 'shopshowcase/12/small_-13.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(81, 'c1e9ca1a43a8d72db2957b477a63b1d60cff8e20', 'shopshowcase/9/small_-10.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(82, 'd698904a0d38ac16b999822eb542de9b3502131b', 'shopshowcase/6/small_-7.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(83, '063165f2c05f99c1e92d11151a30246d0ff40892', 'shopshowcase/3/small_00c3-cooperamphunter-prima-premium-ch-s0-5.png', 0, 0, 404, '', 1657531647, 'daily', 5),
(84, 'fb523dca502cabc623aa30a121c0f9961ce7aed1', 'shopshowcase/16/-17.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(85, 'ee5789dac8172ef7a1689049a7f06d550bf374de', 'shopshowcase/13/-14.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(86, '30dcdcc780e8dc71b895665424c3f38388143d32', 'shopshowcase/10/-11.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(87, '2b80d4f631103a2883bd15d85f98582eab0c819e', 'shopshowcase/7/-8.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(88, '6c923aa021730c9c787a498df1e131c2759f28bd', 'shopshowcase/4/-4.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(89, '4d763970172b45ed27a409ef25b1b78b6f4cc855', 'shopshowcase/17/-18.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(90, '930bea795c09f7b5a1b2b9b72d87dadd461d4559', 'shopshowcase/14/-15.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(91, '20f1da49119562192e42e2b5feac96d7948f3c41', 'shopshowcase/11/-12.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(92, 'c5b6ce69f76f09282cd404f29443f55c5882962d', 'shopshowcase/1/-1.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(93, '51f393b3adf2a4c8272fb41c7b474c0e289e0d1d', 'shopshowcase/8/-9.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(94, 'b23e67379be5a213520ba77a816817d99d56bdaf', 'shopshowcase/5/-6.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(95, '36ab2bc69e8ed6c5c0a4491bce309ec36255d0c2', 'shopshowcase/2/-2.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(96, '18dd4b08e2ea89ce5e8a2e2bd399a722d37a56b2', 'shopshowcase/18/00r9-cooperprima-plus-ch-s07xn7-21.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(97, 'b68f1516d9205eed393ac508346d5380efc9a4e9', 'shopshowcase/15/-16.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(98, 'b4964bf3f2e7b98ffe80f730ddb340cfe636b122', 'shopshowcase/12/-13.png', 0, 0, 404, '', 1657531760, 'daily', 5),
(99, '67a7417e5255b59d4afd79eb423290173a99b25a', 'shopshowcase/9/-10.png', 0, 0, 404, '', 1657531761, 'daily', 5),
(100, '7855df43777daae811fb64598920f0c394195d3a', 'shopshowcase/3/00c3-cooperamphunter-prima-premium-ch-s0-5.png', 0, 0, 404, '', 1657531761, 'daily', 5),
(101, '8f3dd67b41f360ac80e4acb5ad0eaed214e7c270', 'shopshowcase/6/-7.png', 0, 0, 404, '', 1657531761, 'daily', 5),
(102, '9e8e39188f898267292c0a128cc958a2e5eff797', 'дщпщге', 0, 0, 404, '', 1657548160, 'daily', 5),
(103, '4e3d91444d2d47e7ed5711fdce33fc7928a8a7f9', 'signup', 5, 0, 202, '', 1657886047, 'daily', 5),
(104, '6cd00776a079723548b5fe2980449e5262e40641', 'admi', 0, 0, 404, '', 1657895740, 'daily', 5),
(105, '9672508b2027af66f8d79bc1abef3bb481b70b8a', ' 38 (095) 055 50 07', 0, 0, 404, '', 1657971986, 'daily', 5),
(106, '7903b9e64a47e3263de6c8c85bad68f797f3ca7f', 'l43', 0, 0, 404, '', 1658221472, 'daily', 5),
(107, 'cb27437f54233d52f51d3287329125a91ad4024d', 'vvn', 0, 0, 404, '', 1658247476, 'daily', 5),
(108, 'c35a9fc52bb556c79f8fa540df587a2bf465b940', '404', 0, 0, 404, '', 1658250819, 'daily', 5),
(109, '7567ef6986cf82c930c3c889a8603a54f988e3bc', 'administrator/index.php', 0, 0, 404, '', 1659380561, 'daily', 5),
(110, 'b84ea3a8823343208266944c21f82be1b8e74afe', ' 38 (096) 055 50 07', 0, 0, 404, '', 1659951864, 'daily', 5);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_sitemap_from`
--

CREATE TABLE `wl_sitemap_from` (
  `id` int(11) NOT NULL,
  `sitemap` int(11) NOT NULL,
  `from` text NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_sitemap_from`
--

INSERT INTO `wl_sitemap_from` (`id`, `sitemap`, `from`, `date`) VALUES
(1, 48, 'http://localhost/KOND/admin/wl_forms/call-me', 1657278702),
(2, 49, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(3, 50, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(4, 51, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(5, 52, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(6, 53, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(7, 54, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(8, 55, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(9, 56, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(10, 57, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(11, 58, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(12, 59, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(13, 60, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(14, 61, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(15, 62, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(16, 63, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278702),
(17, 0, 'http://localhost/KOND/admin/wl_forms/call-me', 1657278709),
(18, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278709),
(19, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278709),
(20, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278709),
(21, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278709),
(22, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278710),
(23, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278710),
(24, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278710),
(25, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278710),
(26, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278710),
(27, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278710),
(28, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278710),
(29, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278710),
(30, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278710),
(31, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278710),
(32, 0, 'http://localhost/KOND/admin/wl_forms/call-me/%D0%86%D0%BC\'%D1%8F', 1657278710),
(33, 64, 'http://localhost/kond/?', 1657288094),
(34, 65, 'http://localhost/kond/?', 1657288098),
(35, 66, 'http://localhost/kond/', 1657531647),
(36, 67, 'http://localhost/kond/', 1657531647),
(37, 68, 'http://localhost/kond/', 1657531647),
(38, 69, 'http://localhost/kond/', 1657531647),
(39, 70, 'http://localhost/kond/', 1657531647),
(40, 71, 'http://localhost/kond/', 1657531647),
(41, 72, 'http://localhost/kond/', 1657531647),
(42, 73, 'http://localhost/kond/', 1657531647),
(43, 74, 'http://localhost/kond/', 1657531647),
(44, 75, 'http://localhost/kond/', 1657531647),
(45, 76, 'http://localhost/kond/', 1657531647),
(46, 77, 'http://localhost/kond/', 1657531647),
(47, 78, 'http://localhost/kond/', 1657531647),
(48, 79, 'http://localhost/kond/', 1657531647),
(49, 80, 'http://localhost/kond/', 1657531647),
(50, 81, 'http://localhost/kond/', 1657531647),
(51, 82, 'http://localhost/kond/', 1657531647),
(52, 83, 'http://localhost/kond/', 1657531647),
(53, 66, 'http://localhost/kond/', 1657531650),
(54, 67, 'http://localhost/kond/', 1657531650),
(55, 70, 'http://localhost/kond/', 1657531650),
(56, 71, 'http://localhost/kond/', 1657531650),
(57, 69, 'http://localhost/kond/', 1657531650),
(58, 72, 'http://localhost/kond/', 1657531650),
(59, 73, 'http://localhost/kond/', 1657531650),
(60, 68, 'http://localhost/kond/', 1657531650),
(61, 74, 'http://localhost/kond/', 1657531650),
(62, 75, 'http://localhost/kond/', 1657531650),
(63, 76, 'http://localhost/kond/', 1657531650),
(64, 77, 'http://localhost/kond/', 1657531650),
(65, 78, 'http://localhost/kond/', 1657531650),
(66, 79, 'http://localhost/kond/', 1657531650),
(67, 80, 'http://localhost/kond/', 1657531650),
(68, 82, 'http://localhost/kond/', 1657531650),
(69, 81, 'http://localhost/kond/', 1657531650),
(70, 83, 'http://localhost/kond/', 1657531650),
(71, 66, 'http://localhost/kond/', 1657531675),
(72, 67, 'http://localhost/kond/', 1657531675),
(73, 69, 'http://localhost/kond/', 1657531675),
(74, 70, 'http://localhost/kond/', 1657531675),
(75, 71, 'http://localhost/kond/', 1657531675),
(76, 72, 'http://localhost/kond/', 1657531675),
(77, 68, 'http://localhost/kond/', 1657531675),
(78, 73, 'http://localhost/kond/', 1657531675),
(79, 74, 'http://localhost/kond/', 1657531675),
(80, 75, 'http://localhost/kond/', 1657531675),
(81, 76, 'http://localhost/kond/', 1657531675),
(82, 77, 'http://localhost/kond/', 1657531675),
(83, 78, 'http://localhost/kond/', 1657531675),
(84, 80, 'http://localhost/kond/', 1657531675),
(85, 79, 'http://localhost/kond/', 1657531675),
(86, 81, 'http://localhost/kond/', 1657531675),
(87, 82, 'http://localhost/kond/', 1657531675),
(88, 83, 'http://localhost/kond/', 1657531675),
(89, 84, 'http://localhost/kond/', 1657531760),
(90, 85, 'http://localhost/kond/', 1657531760),
(91, 86, 'http://localhost/kond/', 1657531760),
(92, 87, 'http://localhost/kond/', 1657531760),
(93, 88, 'http://localhost/kond/', 1657531760),
(94, 89, 'http://localhost/kond/', 1657531760),
(95, 90, 'http://localhost/kond/', 1657531760),
(96, 91, 'http://localhost/kond/', 1657531760),
(97, 92, 'http://localhost/kond/', 1657531760),
(98, 93, 'http://localhost/kond/', 1657531760),
(99, 94, 'http://localhost/kond/', 1657531760),
(100, 95, 'http://localhost/kond/', 1657531760),
(101, 96, 'http://localhost/kond/', 1657531760),
(102, 97, 'http://localhost/kond/', 1657531760),
(103, 98, 'http://localhost/kond/', 1657531760),
(104, 99, 'http://localhost/kond/', 1657531761),
(105, 100, 'http://localhost/kond/', 1657531761),
(106, 101, 'http://localhost/kond/', 1657531761),
(107, 102, 'direct link', 1657548160),
(108, 104, 'direct link', 1657895740),
(109, 105, 'https://icekond.lihtar.in.ua/', 1657971986),
(110, 65, 'https://icekond.lihtar.in.ua/', 1657971994),
(111, 106, 'direct link', 1658221472),
(112, 107, 'direct link', 1658247476),
(113, 107, 'direct link', 1658247502),
(114, 107, 'direct link', 1658247503),
(115, 107, 'direct link', 1658247504),
(116, 107, 'direct link', 1658247525),
(117, 107, 'direct link', 1658247534),
(118, 107, 'direct link', 1658247535),
(119, 107, 'direct link', 1658247541),
(120, 107, 'direct link', 1658247609),
(121, 107, 'direct link', 1658247725),
(122, 107, 'direct link', 1658247860),
(123, 107, 'direct link', 1658247868),
(124, 107, 'direct link', 1658247880),
(125, 107, 'direct link', 1658248367),
(126, 107, 'direct link', 1658248381),
(127, 107, 'direct link', 1658248383),
(128, 107, 'direct link', 1658248387),
(129, 107, 'direct link', 1658248436),
(130, 107, 'direct link', 1658248437),
(131, 107, 'direct link', 1658248438),
(132, 107, 'direct link', 1658248504),
(133, 107, 'direct link', 1658248516),
(134, 107, 'direct link', 1658248517),
(135, 107, 'direct link', 1658248519),
(136, 107, 'direct link', 1658248557),
(137, 107, 'direct link', 1658248559),
(138, 107, 'direct link', 1658248605),
(139, 107, 'direct link', 1658248606),
(140, 107, 'direct link', 1658248641),
(141, 107, 'direct link', 1658248642),
(142, 107, 'direct link', 1658248665),
(143, 107, 'direct link', 1658248666),
(144, 107, 'direct link', 1658248700),
(145, 107, 'direct link', 1658248720),
(146, 107, 'direct link', 1658248721),
(147, 107, 'direct link', 1658248746),
(148, 107, 'direct link', 1658248747),
(149, 107, 'direct link', 1658248748),
(150, 107, 'direct link', 1658248818),
(151, 107, 'direct link', 1658248849),
(152, 107, 'direct link', 1658248856),
(153, 107, 'direct link', 1658248857),
(154, 107, 'direct link', 1658248898),
(155, 107, 'direct link', 1658248900),
(156, 107, 'direct link', 1658248944),
(157, 107, 'direct link', 1658248950),
(158, 107, 'direct link', 1658248951),
(159, 107, 'direct link', 1658248980),
(160, 107, 'direct link', 1658248981),
(161, 107, 'direct link', 1658248993),
(162, 107, 'direct link', 1658248994),
(163, 107, 'direct link', 1658249008),
(164, 107, 'direct link', 1658249019),
(165, 107, 'direct link', 1658249020),
(166, 107, 'direct link', 1658249037),
(167, 107, 'direct link', 1658249038),
(168, 107, 'direct link', 1658249039),
(169, 107, 'direct link', 1658249060),
(170, 107, 'direct link', 1658249130),
(171, 107, 'direct link', 1658249132),
(172, 107, 'direct link', 1658249178),
(173, 107, 'direct link', 1658249179),
(174, 107, 'direct link', 1658249206),
(175, 107, 'direct link', 1658249207),
(176, 108, 'direct link', 1658250819),
(177, 109, 'direct link', 1659380561),
(178, 109, 'direct link', 1659476103),
(179, 109, 'direct link', 1659483722),
(180, 110, 'https://icekond.lihtar.in.ua/', 1659951864);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_statistic_pages`
--

CREATE TABLE `wl_statistic_pages` (
  `id` int(11) NOT NULL,
  `alias` int(11) DEFAULT NULL,
  `content` int(11) DEFAULT NULL,
  `language` varchar(2) DEFAULT NULL,
  `day` int(10) UNSIGNED NOT NULL,
  `unique` int(10) UNSIGNED NOT NULL,
  `views` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_statistic_views`
--

CREATE TABLE `wl_statistic_views` (
  `id` int(11) NOT NULL,
  `day` int(10) UNSIGNED NOT NULL,
  `cookie` int(10) UNSIGNED NOT NULL,
  `unique` int(10) UNSIGNED NOT NULL,
  `views` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_statistic_views`
--

INSERT INTO `wl_statistic_views` (`id`, `day`, `cookie`, `unique`, `views`) VALUES
(1, 1657843200, 11, 755, 755),
(2, 1657929600, 13, 24, 24),
(3, 1658016000, 4, 4, 4),
(4, 1658102400, 7, 22, 22),
(5, 1658188800, 7, 97, 97),
(6, 1658275200, 0, 4, 4),
(7, 1658361600, 4, 5, 5),
(8, 1658448000, 7, 12, 12),
(9, 1658534400, 1, 2, 2),
(10, 1658620800, 4, 6, 6),
(11, 1658707200, 1, 72, 72),
(12, 1658793600, 3, 7, 7),
(13, 1658966400, 3, 3, 3),
(14, 1659052800, 4, 7, 7),
(15, 1659225600, 3, 5, 5),
(16, 1659312000, 1, 4, 4),
(17, 1659398400, 3, 4, 4),
(18, 1659484800, 1, 3, 3),
(19, 1659571200, 3, 7, 7),
(20, 1659657600, 2, 12, 12),
(21, 1659744000, 1, 1, 1),
(22, 1659830400, 0, 1, 1),
(23, 1659916800, 0, 66, 66);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_users`
--

CREATE TABLE `wl_users` (
  `id` int(11) NOT NULL,
  `alias` text DEFAULT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `name` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `type` smallint(2) NOT NULL DEFAULT 4,
  `status` tinyint(1) NOT NULL DEFAULT 2,
  `language` varchar(2) NOT NULL DEFAULT '',
  `registered` int(11) DEFAULT 0,
  `last_login` int(11) NOT NULL,
  `auth_id` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `reset_key` text DEFAULT NULL,
  `reset_expires` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_users`
--

INSERT INTO `wl_users` (`id`, `alias`, `email`, `phone`, `name`, `photo`, `type`, `status`, `language`, `registered`, `last_login`, `auth_id`, `password`, `reset_key`, `reset_expires`) VALUES
(1, 'developer', 'developer@webspirit.com.ua', '', 'developer', NULL, 1, 1, '', 1656493077, 1658137709, 'af5311963596531bca9f504ef3a3efc4', '00a8097f5a125cb4440c6b395f5336846fc49079', NULL, 0),
(2, 'orest.test', 'myteam.orest@gmail.com', '380986702704', 'Орест Тест', '', 1, 1, '', 1657886047, 1659951493, 'e4c73d4d78ec34f916207205721e0915', 'f21ca661f6306dbe290df6cfe9203abb4ed85dcb', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_user_info`
--

CREATE TABLE `wl_user_info` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `field` text NOT NULL,
  `value` text DEFAULT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_user_info`
--

INSERT INTO `wl_user_info` (`id`, `user`, `field`, `value`, `date`) VALUES
(1, 2, 'phone', '380986702704', 1657886047);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_user_permissions`
--

CREATE TABLE `wl_user_permissions` (
  `user` int(11) NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `wl_user_register`
--

CREATE TABLE `wl_user_register` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `do` tinyint(4) NOT NULL,
  `user` int(11) NOT NULL,
  `additionally` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_user_register`
--

INSERT INTO `wl_user_register` (`id`, `date`, `do`, `user`, `additionally`) VALUES
(1, 1656493077, 1, 1, NULL),
(2, 1656935811, 13, 1, '1. shopshowcase (3.3.3)'),
(3, 1656935845, 11, 1, 'shop (8)'),
(4, 1657278557, 17, 1, 'By email. User IP: ::1'),
(5, 1657527705, 6, 1, 'User IP: ::1'),
(6, 1657527710, 17, 1, 'By email. User IP: ::1'),
(7, 1657548095, 17, 1, 'By email. User IP: ::1'),
(8, 1657548184, 6, 1, 'User IP: ::1'),
(9, 1657548191, 17, 1, 'By email. User IP: ::1'),
(10, 1657548211, 6, 1, 'User IP: ::1'),
(11, 1657548216, 17, 1, 'By email. User IP: ::1'),
(12, 1657874363, 17, 1, 'By email. User IP: 95.255.58.115'),
(13, 1657886047, 1, 2, ''),
(14, 1657889444, 6, 2, 'User IP: 192.162.32.133'),
(15, 1657889895, 17, 1, 'By email. User IP: 192.162.32.133'),
(16, 1657889917, 2, 2, 'Менеджер: #1 developer'),
(17, 1657889948, 5, 2, 'Змінено номер телефону: \'\' => \'380986702704\'. Менеджер: #1 developer'),
(18, 1657889948, 9, 2, 'Змінено пароль: 2719fde578e33435aba94bf3ccc28c8a73eaa953 => f21ca661f6306dbe290df6cfe9203abb4ed85dcb. Менеджер: #1 developer'),
(19, 1657892877, 17, 2, 'By email. User IP: 192.162.32.133'),
(20, 1657892950, 17, 2, 'By email. User IP: 192.162.32.133'),
(21, 1657895227, 17, 2, 'By email. User IP: 192.162.32.133'),
(22, 1657895302, 6, 1, 'User IP: 95.255.58.115'),
(23, 1657895312, 17, 1, 'By email. User IP: 95.255.58.115'),
(24, 1657895410, 17, 2, 'By email. User IP: 192.162.32.133'),
(25, 1657895526, 17, 2, 'By email. User IP: 192.162.32.133'),
(26, 1657895560, 17, 2, 'By email. User IP: 192.162.32.133'),
(27, 1657895628, 7, 2, '#4. Користувач (single) => #1. Адміністратор (admin) / Менеджер: #1 developer'),
(28, 1657895687, 17, 2, 'By email. User IP: 192.162.32.133'),
(29, 1658130503, 17, 2, 'By email. User IP: 188.163.28.56'),
(30, 1658138824, 17, 2, 'By email. User IP: 192.162.32.133');

-- --------------------------------------------------------

--
-- Структура таблиці `wl_user_register_do`
--

CREATE TABLE `wl_user_register_do` (
  `id` smallint(6) NOT NULL,
  `name` text NOT NULL,
  `public` tinyint(1) NOT NULL,
  `title` text NOT NULL,
  `title_public` text NOT NULL,
  `help_additionall` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_user_register_do`
--

INSERT INTO `wl_user_register_do` (`id`, `name`, `public`, `title`, `title_public`, `help_additionall`) VALUES
(1, 'signup', 1, 'Реєстрація нового користувача', 'Реєстрація користувача', ''),
(2, 'confirmed', 1, 'Підтвердження реєстрації користувача', 'Підтвердження реєстрації', ''),
(3, 'reset_sent', 0, 'Відновлення паролю. Вислано повідомлення із кодом відновлення.', '', ''),
(4, 'reset', 1, 'Відновлення паролю. Пароль змінено. Старий пароль у полі Додатково.', 'Зміна паролю користувачем', 'Попередній пароль у sha1'),
(5, 'profile_data', 0, 'Змінено особисті дані', '', 'field(id) - ід поля, value(text) - попередні дані'),
(6, 'login_bad', 0, 'Невірна спроба авторизації з ІР', '', 'ІР адреса'),
(7, 'profile_type', 1, 'Зміна типу користувача', 'Зміна типу користувача', 'user(id) - хто змінив, old_type(id) - попередній тип'),
(8, 'subscribe', 0, 'Підписався на оновлення', '', ''),
(9, 'reset_admin', 1, 'Відновлення паролю. Пароль змінено. Старий пароль у полі Додатково.', 'Зміна паролю адміністрацією', 'Зміна паролю адміністрацією. Пароль змінено. Старий пароль у полі Додатково.'),
(10, 'user_delete', 0, 'Видалив профіль користувача', 'Видалив профіль користувача', 'Id. Email. User name. Type. Date register'),
(11, 'alias_add', 0, 'Додано головну адресу', 'Додано головну адресу', 'Адреса посилання'),
(12, 'alias_delete', 0, 'Видалена головна адреса', 'Видалена головна адреса', 'Ід. Адреса. Сервіс.'),
(13, 'service_install', 0, 'Install service', 'Install service', 'Id. Service name (version)'),
(14, 'service_uninstall', 0, 'Uninstall service', 'Uninstall service', 'Id. Service name (version)'),
(15, 'login_as_user', 0, 'Вхід до профілю через панель керування', '', 'Хто зайшов'),
(16, 'logout_as_user', 0, 'Вихід з профілю через панель керування', '', 'Хто вийшов'),
(17, 'login_ok', 1, 'Успішна логінація', 'Успішна логінація', 'Спосіб, ip');

-- --------------------------------------------------------

--
-- Структура таблиці `wl_user_status`
--

CREATE TABLE `wl_user_status` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `title` text NOT NULL,
  `next` int(11) NOT NULL,
  `load` text NOT NULL,
  `color` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_user_status`
--

INSERT INTO `wl_user_status` (`id`, `name`, `title`, `next`, `load`, `color`) VALUES
(1, 'confirmed', 'Підтверджений', 0, 'profile', 'success'),
(2, 'registered', 'Новозареєстрований', 1, 'login/confirmed', 'warning'),
(3, 'banned', 'Заблокований', 0, '', 'danger');

-- --------------------------------------------------------

--
-- Структура таблиці `wl_user_types`
--

CREATE TABLE `wl_user_types` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `title` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `wl_user_types`
--

INSERT INTO `wl_user_types` (`id`, `name`, `title`, `active`) VALUES
(1, 'admin', 'Адміністратор', 1),
(2, 'manager', 'Менеджер', 1),
(3, 'reserved', 'Резерв', 1),
(4, 'single', 'Користувач', 1),
(5, 'subscribe', 'Підписник', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `wl_video`
--

CREATE TABLE `wl_video` (
  `id` int(11) NOT NULL,
  `alias` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `author` int(11) NOT NULL,
  `date_add` int(11) NOT NULL,
  `site` text DEFAULT NULL COMMENT 'youtube, vimeo',
  `link` text DEFAULT NULL,
  `active` int(1) DEFAULT 1 COMMENT '0 - видалене'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `calculate`
--
ALTER TABLE `calculate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `new` (`new`);

--
-- Індекси таблиці `call-me`
--
ALTER TABLE `call-me`
  ADD PRIMARY KEY (`id`),
  ADD KEY `new` (`new`);

--
-- Індекси таблиці `s_shopshowcase_availability`
--
ALTER TABLE `s_shopshowcase_availability`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `s_shopshowcase_availability_name`
--
ALTER TABLE `s_shopshowcase_availability_name`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `s_shopshowcase_groups`
--
ALTER TABLE `s_shopshowcase_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `wl_alias` (`wl_alias`),
  ADD KEY `parent` (`parent`),
  ADD KEY `position` (`position`),
  ADD KEY `active` (`active`);

--
-- Індекси таблиці `s_shopshowcase_options`
--
ALTER TABLE `s_shopshowcase_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `wl_alias` (`wl_alias`),
  ADD KEY `group` (`group`),
  ADD KEY `active` (`active`),
  ADD KEY `main` (`main`),
  ADD KEY `filter` (`filter`),
  ADD KEY `toCart` (`toCart`),
  ADD KEY `sort` (`sort`),
  ADD KEY `position` (`position`);

--
-- Індекси таблиці `s_shopshowcase_options_name`
--
ALTER TABLE `s_shopshowcase_options_name`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `option` (`option`);

--
-- Індекси таблиці `s_shopshowcase_products`
--
ALTER TABLE `s_shopshowcase_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `wl_alias` (`wl_alias`),
  ADD KEY `group` (`group`),
  ADD KEY `active` (`active`),
  ADD KEY `position` (`position`);

--
-- Індекси таблиці `s_shopshowcase_products_similar`
--
ALTER TABLE `s_shopshowcase_products_similar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product` (`product`,`group`);

--
-- Індекси таблиці `s_shopshowcase_product_options`
--
ALTER TABLE `s_shopshowcase_product_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `option` (`product`,`option`);

--
-- Індекси таблиці `s_shopshowcase_promo`
--
ALTER TABLE `s_shopshowcase_promo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`,`from`,`to`) USING BTREE;

--
-- Індекси таблиці `wl_aliases`
--
ALTER TABLE `wl_aliases`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `wl_aliases` ADD FULLTEXT KEY `alias` (`alias`);

--
-- Індекси таблиці `wl_aliases_cooperation`
--
ALTER TABLE `wl_aliases_cooperation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `alias1` (`alias1`),
  ADD KEY `alias2` (`alias2`);

--
-- Індекси таблиці `wl_audio`
--
ALTER TABLE `wl_audio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`,`content`) USING BTREE;

--
-- Індекси таблиці `wl_comments`
--
ALTER TABLE `wl_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`,`content`),
  ADD KEY `user` (`user`),
  ADD KEY `status` (`status`);

--
-- Індекси таблиці `wl_fields`
--
ALTER TABLE `wl_fields`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_fields_options`
--
ALTER TABLE `wl_fields_options`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_files`
--
ALTER TABLE `wl_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`,`content`) USING BTREE;

--
-- Індекси таблиці `wl_forms`
--
ALTER TABLE `wl_forms`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_images`
--
ALTER TABLE `wl_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `content` (`content`);

--
-- Індекси таблиці `wl_images_sizes`
--
ALTER TABLE `wl_images_sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Індекси таблиці `wl_input_types`
--
ALTER TABLE `wl_input_types`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_language_values`
--
ALTER TABLE `wl_language_values`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_language_words`
--
ALTER TABLE `wl_language_words`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_mail_active`
--
ALTER TABLE `wl_mail_active`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_mail_history`
--
ALTER TABLE `wl_mail_history`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_mail_templates`
--
ALTER TABLE `wl_mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_mail_templats_data`
--
ALTER TABLE `wl_mail_templats_data`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_media_text`
--
ALTER TABLE `wl_media_text`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content` (`type`,`content`,`language`) USING BTREE;

--
-- Індекси таблиці `wl_ntkd`
--
ALTER TABLE `wl_ntkd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `content` (`content`),
  ADD KEY `language` (`language`);
ALTER TABLE `wl_ntkd` ADD FULLTEXT KEY `name` (`name`);

--
-- Індекси таблиці `wl_ntkd_robot`
--
ALTER TABLE `wl_ntkd_robot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `content` (`content`),
  ADD KEY `language` (`language`);

--
-- Індекси таблиці `wl_options`
--
ALTER TABLE `wl_options`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_sections`
--
ALTER TABLE `wl_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias_id`,`content_id`),
  ADD KEY `position` (`position`);

--
-- Індекси таблиці `wl_services`
--
ALTER TABLE `wl_services`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_sitemap`
--
ALTER TABLE `wl_sitemap`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link_sha1` (`link_sha1`),
  ADD KEY `content` (`alias`,`content`) USING BTREE,
  ADD KEY `code` (`code`);
ALTER TABLE `wl_sitemap` ADD FULLTEXT KEY `link` (`link`);

--
-- Індекси таблиці `wl_sitemap_from`
--
ALTER TABLE `wl_sitemap_from`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sitemap` (`sitemap`);

--
-- Індекси таблиці `wl_statistic_pages`
--
ALTER TABLE `wl_statistic_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `content` (`content`),
  ADD KEY `language` (`language`);

--
-- Індекси таблиці `wl_statistic_views`
--
ALTER TABLE `wl_statistic_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `day` (`day`);

--
-- Індекси таблиці `wl_users`
--
ALTER TABLE `wl_users`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_user_info`
--
ALTER TABLE `wl_user_info`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_user_register`
--
ALTER TABLE `wl_user_register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Індекси таблиці `wl_user_register_do`
--
ALTER TABLE `wl_user_register_do`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_user_status`
--
ALTER TABLE `wl_user_status`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_user_types`
--
ALTER TABLE `wl_user_types`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `wl_video`
--
ALTER TABLE `wl_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `calculate`
--
ALTER TABLE `calculate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблиці `call-me`
--
ALTER TABLE `call-me`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблиці `s_shopshowcase_availability`
--
ALTER TABLE `s_shopshowcase_availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `s_shopshowcase_availability_name`
--
ALTER TABLE `s_shopshowcase_availability_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `s_shopshowcase_groups`
--
ALTER TABLE `s_shopshowcase_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблиці `s_shopshowcase_options`
--
ALTER TABLE `s_shopshowcase_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблиці `s_shopshowcase_options_name`
--
ALTER TABLE `s_shopshowcase_options_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблиці `s_shopshowcase_products`
--
ALTER TABLE `s_shopshowcase_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблиці `s_shopshowcase_products_similar`
--
ALTER TABLE `s_shopshowcase_products_similar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `s_shopshowcase_product_options`
--
ALTER TABLE `s_shopshowcase_product_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблиці `s_shopshowcase_promo`
--
ALTER TABLE `s_shopshowcase_promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wl_aliases`
--
ALTER TABLE `wl_aliases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблиці `wl_aliases_cooperation`
--
ALTER TABLE `wl_aliases_cooperation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wl_audio`
--
ALTER TABLE `wl_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wl_comments`
--
ALTER TABLE `wl_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wl_fields`
--
ALTER TABLE `wl_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблиці `wl_fields_options`
--
ALTER TABLE `wl_fields_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wl_files`
--
ALTER TABLE `wl_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wl_forms`
--
ALTER TABLE `wl_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `wl_images`
--
ALTER TABLE `wl_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблиці `wl_images_sizes`
--
ALTER TABLE `wl_images_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `wl_input_types`
--
ALTER TABLE `wl_input_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблиці `wl_language_values`
--
ALTER TABLE `wl_language_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблиці `wl_language_words`
--
ALTER TABLE `wl_language_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблиці `wl_mail_active`
--
ALTER TABLE `wl_mail_active`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wl_mail_history`
--
ALTER TABLE `wl_mail_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `wl_mail_templates`
--
ALTER TABLE `wl_mail_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wl_mail_templats_data`
--
ALTER TABLE `wl_mail_templats_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wl_media_text`
--
ALTER TABLE `wl_media_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wl_ntkd`
--
ALTER TABLE `wl_ntkd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблиці `wl_ntkd_robot`
--
ALTER TABLE `wl_ntkd_robot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wl_options`
--
ALTER TABLE `wl_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблиці `wl_sections`
--
ALTER TABLE `wl_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wl_services`
--
ALTER TABLE `wl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `wl_sitemap`
--
ALTER TABLE `wl_sitemap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT для таблиці `wl_sitemap_from`
--
ALTER TABLE `wl_sitemap_from`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT для таблиці `wl_statistic_pages`
--
ALTER TABLE `wl_statistic_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wl_statistic_views`
--
ALTER TABLE `wl_statistic_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблиці `wl_users`
--
ALTER TABLE `wl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `wl_user_info`
--
ALTER TABLE `wl_user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `wl_user_register`
--
ALTER TABLE `wl_user_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблиці `wl_user_register_do`
--
ALTER TABLE `wl_user_register_do`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблиці `wl_user_status`
--
ALTER TABLE `wl_user_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `wl_user_types`
--
ALTER TABLE `wl_user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `wl_video`
--
ALTER TABLE `wl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
