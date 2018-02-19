-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Хост: localhost:3306
-- Время создания: Фев 19 2018 г., 03:42
-- Версия сервера: 5.5.42
-- Версия PHP: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vitrovi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `nt_commentmeta`
--

CREATE TABLE `nt_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `nt_comments`
--

CREATE TABLE `nt_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `nt_comments`
--

INSERT INTO `nt_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-15 12:03:28', '2018-02-15 09:03:28', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `nt_links`
--

CREATE TABLE `nt_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `nt_options`
--

CREATE TABLE `nt_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `nt_options`
--

INSERT INTO `nt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/vit.loc', 'yes'),
(2, 'home', 'http://localhost/vit.loc', 'yes'),
(3, 'blogname', 'Vitrovi', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test@mail.kg', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=29&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:39:"categories-images/categories-images.php";i:2;s:22:"cyr3lat/cyr-to-lat.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'vitrovi', 'yes'),
(41, 'stylesheet', 'vitrovi', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '29', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'nt_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1518901408;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1518945958;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1518948173;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1518686800;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.4.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.4.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1518878626;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(120, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1518878631;s:7:"checked";a:4:{s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";s:7:"vitrovi";s:18:"1.0.0 License: MIT";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(121, '_site_transient_timeout_browser_804f621a93030d1fb62e775c4b592969', '1519290215', 'no'),
(122, '_site_transient_browser_804f621a93030d1fb62e775c4b592969', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"62.0.3202.94";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', 'Vitrovi', 'yes'),
(139, 'theme_mods_vitrovi', 'a:11:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:4:"main";i:26;}s:18:"custom_css_post_id";i:-1;s:6:"lozung";s:112:"МЫ СОЗДАЕМ АРТ-ВИТРАЖИ, А ТАК ЖЕ КАРТИНЫ ДЛЯ ВАШЕГО ИНТЕРЬЕРА\n";s:5:"insta";s:1:"#";s:5:"email";s:1:"#";s:8:"whatsapp";s:1:"#";s:8:"facebook";s:1:"#";s:7:"number1";s:19:"+(996) 558 09 89 95";s:7:"number2";s:30:"+(996) 700 09 89 95 (WhatsApp)";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1518697717;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:7:"woo-cat";a:0:{}}}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'acf_version', '5.6.2', 'yes'),
(155, 'z_taxonomy_image2', 'http://localhost/vit.loc/wp-content/uploads/2018/02/icon-vitraj.png', 'yes'),
(159, 'z_taxonomy_image3', 'http://localhost/vit.loc/wp-content/uploads/2018/02/icon-picture.png', 'yes'),
(161, 'z_taxonomy_image4', 'http://localhost/vit.loc/wp-content/uploads/2018/02/vit-item2.jpg', 'yes'),
(163, 'z_taxonomy_image5', '', 'yes'),
(165, 'z_taxonomy_image6', 'http://localhost/vit.loc/wp-content/uploads/2018/02/vit-item3.png', 'yes'),
(170, 'z_taxonomy_image7', '', 'yes'),
(172, 'z_taxonomy_image8', '', 'yes'),
(174, 'z_taxonomy_image9', '', 'yes'),
(176, 'z_taxonomy_image10', '', 'yes'),
(178, 'z_taxonomy_image11', 'http://localhost/vit.loc/wp-content/uploads/2018/02/icon-mosaic.png', 'yes'),
(180, 'z_taxonomy_image12', '', 'yes'),
(182, 'z_taxonomy_image13', '', 'yes'),
(184, 'z_taxonomy_image14', '', 'yes'),
(186, 'z_taxonomy_image15', '', 'yes'),
(192, 'z_taxonomy_image16', 'http://localhost/vit.loc/wp-content/uploads/2018/02/icon-picture.png', 'yes'),
(194, 'z_taxonomy_image17', 'http://localhost/vit.loc/wp-content/uploads/2018/02/jiv-item1.jpg', 'yes'),
(199, 'z_taxonomy_image18', 'http://localhost/vit.loc/wp-content/uploads/2018/02/icon-post.png', 'yes'),
(202, 'z_taxonomy_image19', '', 'yes'),
(205, 'z_taxonomy_image20', 'http://localhost/vit.loc/wp-content/uploads/2018/02/post-item1.jpg', 'yes'),
(208, 'z_taxonomy_image21', 'http://localhost/vit.loc/wp-content/uploads/2018/02/extra-item1.jpg', 'yes'),
(210, 'z_taxonomy_image22', '', 'yes'),
(212, 'z_taxonomy_image23', '', 'yes'),
(222, 'theme_mods_twentyfifteen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1518697721;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-1";a:0:{}}}}', 'yes'),
(228, 'z_taxonomy_image24', '', 'yes'),
(230, 'z_taxonomy_image25', '', 'yes'),
(249, 'z_taxonomy_image27', '', 'yes'),
(251, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(252, 'z_taxonomy_image28', '', 'yes'),
(253, 'category_children', 'a:8:{i:2;a:3:{i:0;i:4;i:1;i:5;i:2;i:6;}i:3;a:4:{i:0;i:7;i:1;i:8;i:2;i:9;i:3;i:10;}i:11;a:4:{i:0;i:12;i:1;i:13;i:2;i:14;i:3;i:15;}i:16;a:1:{i:0;i:17;}i:18;a:1:{i:0;i:20;}i:19;a:1:{i:0;i:21;}i:22;a:1:{i:0;i:23;}i:24;a:1:{i:0;i:25;}}', 'yes'),
(268, '_site_transient_timeout_theme_roots', '1518880430', 'no'),
(269, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:7:"vitrovi";s:7:"/themes";}', 'no'),
(270, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1518878632;s:7:"checked";a:3:{s:34:"advanced-custom-fields-pro/acf.php";s:5:"5.6.2";s:39:"categories-images/categories-images.php";s:5:"2.5.4";s:22:"cyr3lat/cyr-to-lat.php";s:3:"3.5";}s:8:"response";a:1:{s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":8:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.6.8";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:6:"tested";s:5:"4.9.9";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:39:"categories-images/categories-images.php";O:8:"stdClass":9:{s:2:"id";s:31:"w.org/plugins/categories-images";s:4:"slug";s:17:"categories-images";s:6:"plugin";s:39:"categories-images/categories-images.php";s:11:"new_version";s:5:"2.5.4";s:3:"url";s:48:"https://wordpress.org/plugins/categories-images/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/categories-images.2.5.4.zip";s:5:"icons";a:0:{}s:7:"banners";a:2:{s:2:"1x";s:72:"https://ps.w.org/categories-images/assets/banner-772x250.png?rev=1803373";s:7:"default";s:72:"https://ps.w.org/categories-images/assets/banner-772x250.png?rev=1803373";}s:11:"banners_rtl";a:0:{}}s:22:"cyr3lat/cyr-to-lat.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/cyr3lat";s:4:"slug";s:7:"cyr3lat";s:6:"plugin";s:22:"cyr3lat/cyr-to-lat.php";s:11:"new_version";s:3:"3.5";s:3:"url";s:38:"https://wordpress.org/plugins/cyr3lat/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip";s:5:"icons";a:0:{}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `nt_postmeta`
--

CREATE TABLE `nt_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `nt_postmeta`
--

INSERT INTO `nt_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_wp_trash_meta_status', 'publish'),
(3, 1, '_wp_trash_meta_time', '1518687288'),
(4, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(5, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(8, 6, '_wp_attached_file', '2018/02/icon-vitraj.png'),
(9, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:62;s:6:"height";i:61;s:4:"file";s:23:"2018/02/icon-vitraj.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(10, 7, '_wp_trash_meta_status', 'publish'),
(11, 7, '_wp_trash_meta_time', '1518688381'),
(12, 8, '_wp_trash_meta_status', 'publish'),
(13, 8, '_wp_trash_meta_time', '1518688419'),
(14, 9, '_wp_attached_file', '2018/02/icon-mosaic.png'),
(15, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:61;s:6:"height";i:61;s:4:"file";s:23:"2018/02/icon-mosaic.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(16, 10, '_wp_attached_file', '2018/02/icon-picture.png'),
(17, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:70;s:6:"height";i:60;s:4:"file";s:24:"2018/02/icon-picture.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(18, 11, '_wp_attached_file', '2018/02/icon-post.png'),
(19, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:56;s:6:"height";i:56;s:4:"file";s:21:"2018/02/icon-post.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(20, 12, '_edit_last', '1'),
(23, 12, '_edit_lock', '1518689028:1'),
(24, 12, '_wp_trash_meta_status', 'publish'),
(25, 12, '_wp_trash_meta_time', '1518690332'),
(26, 12, '_wp_desired_post_slug', 'dfdf'),
(27, 15, '_wp_attached_file', '2018/02/vit-item1.jpg'),
(28, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:225;s:4:"file";s:21:"2018/02/vit-item1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"vit-item1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(29, 16, '_wp_attached_file', '2018/02/vit-item2.jpg'),
(30, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:225;s:4:"file";s:21:"2018/02/vit-item2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"vit-item2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(31, 17, '_wp_attached_file', '2018/02/vit-item3.png'),
(32, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:225;s:4:"file";s:21:"2018/02/vit-item3.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"vit-item3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(33, 18, '_wp_attached_file', '2018/02/vit-item4.png'),
(34, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:226;s:4:"file";s:21:"2018/02/vit-item4.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"vit-item4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(35, 19, '_wp_attached_file', '2018/02/vit-item5.png'),
(36, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:246;s:6:"height";i:226;s:4:"file";s:21:"2018/02/vit-item5.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"vit-item5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(37, 20, '_wp_attached_file', '2018/02/vit-item6.png'),
(38, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:226;s:4:"file";s:21:"2018/02/vit-item6.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"vit-item6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(39, 14, '_edit_last', '1'),
(40, 14, '_thumbnail_id', '15'),
(43, 14, '_edit_lock', '1518690240:1'),
(44, 22, '_edit_last', '1'),
(45, 22, '_edit_lock', '1518691055:1'),
(46, 22, '_thumbnail_id', '16'),
(49, 22, '_wp_trash_meta_status', 'publish'),
(50, 22, '_wp_trash_meta_time', '1518691204'),
(51, 22, '_wp_desired_post_slug', 'vitrazhi-v-dveri'),
(52, 14, '_wp_trash_meta_status', 'publish'),
(53, 14, '_wp_trash_meta_time', '1518691204'),
(54, 14, '_wp_desired_post_slug', 'potolochnyj-vitrazh'),
(55, 24, '_edit_last', '1'),
(56, 24, '_edit_lock', '1518692901:1'),
(57, 2, '_wp_trash_meta_status', 'publish'),
(58, 2, '_wp_trash_meta_time', '1518691967'),
(59, 2, '_wp_desired_post_slug', 'sample-page'),
(60, 29, '_edit_last', '1'),
(61, 29, '_edit_lock', '1518759680:1'),
(62, 29, '_wp_page_template', 'home.php'),
(63, 29, 'preim_0_number', 'I'),
(64, 29, '_preim_0_number', 'field_5a85660fea697'),
(65, 29, 'preim_0_text', 'Индивидуальный дизайн'),
(66, 29, '_preim_0_text', 'field_5a856635ea698'),
(67, 29, 'preim', '5'),
(68, 29, '_preim', 'field_5a8565fdea696'),
(69, 30, 'preim_0_number', 'I'),
(70, 30, '_preim_0_number', 'field_5a85660fea697'),
(71, 30, 'preim_0_text', 'Индивидуальный дизайн'),
(72, 30, '_preim_0_text', 'field_5a856635ea698'),
(73, 30, 'preim', '1'),
(74, 30, '_preim', 'field_5a8565fdea696'),
(75, 31, '_wp_trash_meta_status', 'publish'),
(76, 31, '_wp_trash_meta_time', '1518692254'),
(77, 29, 'preim_1_number', 'II'),
(78, 29, '_preim_1_number', 'field_5a85660fea697'),
(79, 29, 'preim_1_text', 'Индивидуальный дизайн'),
(80, 29, '_preim_1_text', 'field_5a856635ea698'),
(81, 29, 'preim_2_number', 'III'),
(82, 29, '_preim_2_number', 'field_5a85660fea697'),
(83, 29, 'preim_2_text', 'Индивидуальный дизайн'),
(84, 29, '_preim_2_text', 'field_5a856635ea698'),
(85, 29, 'preim_3_number', 'IV'),
(86, 29, '_preim_3_number', 'field_5a85660fea697'),
(87, 29, 'preim_3_text', 'Индивидуальный дизайн'),
(88, 29, '_preim_3_text', 'field_5a856635ea698'),
(89, 29, 'preim_4_number', 'V'),
(90, 29, '_preim_4_number', 'field_5a85660fea697'),
(91, 29, 'preim_4_text', 'Индивидуальный дизайн'),
(92, 29, '_preim_4_text', 'field_5a856635ea698'),
(93, 32, 'preim_0_number', 'I'),
(94, 32, '_preim_0_number', 'field_5a85660fea697'),
(95, 32, 'preim_0_text', 'Индивидуальный дизайн'),
(96, 32, '_preim_0_text', 'field_5a856635ea698'),
(97, 32, 'preim', '5'),
(98, 32, '_preim', 'field_5a8565fdea696'),
(99, 32, 'preim_1_number', 'II'),
(100, 32, '_preim_1_number', 'field_5a85660fea697'),
(101, 32, 'preim_1_text', 'Индивидуальный дизайн'),
(102, 32, '_preim_1_text', 'field_5a856635ea698'),
(103, 32, 'preim_2_number', 'III'),
(104, 32, '_preim_2_number', 'field_5a85660fea697'),
(105, 32, 'preim_2_text', 'Индивидуальный дизайн'),
(106, 32, '_preim_2_text', 'field_5a856635ea698'),
(107, 32, 'preim_3_number', 'IV'),
(108, 32, '_preim_3_number', 'field_5a85660fea697'),
(109, 32, 'preim_3_text', 'Индивидуальный дизайн'),
(110, 32, '_preim_3_text', 'field_5a856635ea698'),
(111, 32, 'preim_4_number', 'V'),
(112, 32, '_preim_4_number', 'field_5a85660fea697'),
(113, 32, 'preim_4_text', 'Индивидуальный дизайн'),
(114, 32, '_preim_4_text', 'field_5a856635ea698'),
(115, 33, '_wp_attached_file', '2018/02/jiv-item1.jpg'),
(116, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:225;s:4:"file";s:21:"2018/02/jiv-item1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"jiv-item1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(117, 34, '_edit_last', '1'),
(118, 34, '_edit_lock', '1518692540:1'),
(119, 37, '_wp_attached_file', '2018/02/post-item1.jpg'),
(120, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:226;s:4:"file";s:22:"2018/02/post-item1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"post-item1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(121, 36, '_edit_last', '1'),
(122, 36, '_thumbnail_id', '37'),
(125, 36, '_edit_lock', '1518692855:1'),
(126, 34, '_wp_trash_meta_status', 'draft'),
(127, 34, '_wp_trash_meta_time', '1518693006'),
(128, 34, '_wp_desired_post_slug', ''),
(129, 36, '_wp_trash_meta_status', 'publish'),
(130, 36, '_wp_trash_meta_time', '1518693008'),
(131, 36, '_wp_desired_post_slug', 'anglijskaya-tehnologiya'),
(132, 40, '_wp_attached_file', '2018/02/extra-item1.jpg'),
(133, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:246;s:6:"height";i:162;s:4:"file";s:23:"2018/02/extra-item1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"extra-item1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(134, 41, '_edit_lock', '1518693341:1'),
(135, 41, '_wp_trash_meta_status', 'publish'),
(136, 41, '_wp_trash_meta_time', '1518693354'),
(137, 42, '_edit_last', '1'),
(138, 42, '_edit_lock', '1518698473:1'),
(145, 44, '_edit_last', '1'),
(146, 44, '_edit_lock', '1518772262:1'),
(149, 42, 'vitrina_price', '3400'),
(150, 42, '_vitrina_price', 'field_5a856d0876bbd'),
(151, 42, 'available', 'В наличии'),
(152, 42, '_available', 'field_5a856d2676bbe'),
(153, 43, 'vitrina_price', ''),
(154, 43, '_vitrina_price', 'field_5a856d0876bbd'),
(155, 43, 'available', 'yes'),
(156, 43, '_available', 'field_5a856d2676bbe'),
(159, 47, 'vitrina_price', '3400'),
(160, 47, '_vitrina_price', 'field_5a856d0876bbd'),
(161, 47, 'available', 'yes'),
(162, 47, '_available', 'field_5a856d2676bbe'),
(163, 42, '_thumbnail_id', '20'),
(168, 48, 'vitrina_price', '3400'),
(169, 48, '_vitrina_price', 'field_5a856d0876bbd'),
(170, 48, 'available', 'Нет в наличии'),
(171, 48, '_available', 'field_5a856d2676bbe'),
(174, 49, 'vitrina_price', '3400'),
(175, 49, '_vitrina_price', 'field_5a856d0876bbd'),
(176, 49, 'available', 'В наличии'),
(177, 49, '_available', 'field_5a856d2676bbe'),
(178, 50, '_edit_last', '1'),
(179, 50, '_edit_lock', '1518758397:1'),
(180, 56, '_wp_attached_file', '2018/02/slide1.jpg'),
(181, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:760;s:6:"height";i:423;s:4:"file";s:18:"2018/02/slide1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slide1-300x167.jpg";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(182, 29, 'act_slider', '56'),
(183, 29, '_act_slider', 'field_5a86600ae3970'),
(184, 29, 'act_descr', 'Изготовление художественных витражей для входных и межкомнатных дверей...'),
(185, 29, '_act_descr', 'field_5a86602ce3971'),
(186, 29, 'slide_0_слайд', '56'),
(187, 29, '_slide_0_слайд', 'field_5a86604ee3973'),
(188, 29, 'slide_0_descr', 'Изготовление художественных витражей для входных и межкомнатных дверей...'),
(189, 29, '_slide_0_descr', 'field_5a866070e3974'),
(190, 29, 'slide', '1'),
(191, 29, '_slide', 'field_5a866038e3972'),
(192, 57, 'preim_0_number', 'I'),
(193, 57, '_preim_0_number', 'field_5a85660fea697'),
(194, 57, 'preim_0_text', 'Индивидуальный дизайн'),
(195, 57, '_preim_0_text', 'field_5a856635ea698'),
(196, 57, 'preim', '5'),
(197, 57, '_preim', 'field_5a8565fdea696'),
(198, 57, 'preim_1_number', 'II'),
(199, 57, '_preim_1_number', 'field_5a85660fea697'),
(200, 57, 'preim_1_text', 'Индивидуальный дизайн'),
(201, 57, '_preim_1_text', 'field_5a856635ea698'),
(202, 57, 'preim_2_number', 'III'),
(203, 57, '_preim_2_number', 'field_5a85660fea697'),
(204, 57, 'preim_2_text', 'Индивидуальный дизайн'),
(205, 57, '_preim_2_text', 'field_5a856635ea698'),
(206, 57, 'preim_3_number', 'IV'),
(207, 57, '_preim_3_number', 'field_5a85660fea697'),
(208, 57, 'preim_3_text', 'Индивидуальный дизайн'),
(209, 57, '_preim_3_text', 'field_5a856635ea698'),
(210, 57, 'preim_4_number', 'V'),
(211, 57, '_preim_4_number', 'field_5a85660fea697'),
(212, 57, 'preim_4_text', 'Индивидуальный дизайн'),
(213, 57, '_preim_4_text', 'field_5a856635ea698'),
(214, 57, 'act_slider', '56'),
(215, 57, '_act_slider', 'field_5a86600ae3970'),
(216, 57, 'act_descr', 'Изготовление художественных витражей для входных и межкомнатных дверей...'),
(217, 57, '_act_descr', 'field_5a86602ce3971'),
(218, 57, 'slide_0_слайд', '56'),
(219, 57, '_slide_0_слайд', 'field_5a86604ee3973'),
(220, 57, 'slide_0_descr', 'Изготовление художественных витражей для входных и межкомнатных дверей...'),
(221, 57, '_slide_0_descr', 'field_5a866070e3974'),
(222, 57, 'slide', '1'),
(223, 57, '_slide', 'field_5a866038e3972'),
(224, 29, 'slide_0_image', '56'),
(225, 29, '_slide_0_image', 'field_5a86604ee3973'),
(226, 58, 'preim_0_number', 'I'),
(227, 58, '_preim_0_number', 'field_5a85660fea697'),
(228, 58, 'preim_0_text', 'Индивидуальный дизайн'),
(229, 58, '_preim_0_text', 'field_5a856635ea698'),
(230, 58, 'preim', '5'),
(231, 58, '_preim', 'field_5a8565fdea696'),
(232, 58, 'preim_1_number', 'II'),
(233, 58, '_preim_1_number', 'field_5a85660fea697'),
(234, 58, 'preim_1_text', 'Индивидуальный дизайн'),
(235, 58, '_preim_1_text', 'field_5a856635ea698'),
(236, 58, 'preim_2_number', 'III'),
(237, 58, '_preim_2_number', 'field_5a85660fea697'),
(238, 58, 'preim_2_text', 'Индивидуальный дизайн'),
(239, 58, '_preim_2_text', 'field_5a856635ea698'),
(240, 58, 'preim_3_number', 'IV'),
(241, 58, '_preim_3_number', 'field_5a85660fea697'),
(242, 58, 'preim_3_text', 'Индивидуальный дизайн'),
(243, 58, '_preim_3_text', 'field_5a856635ea698'),
(244, 58, 'preim_4_number', 'V'),
(245, 58, '_preim_4_number', 'field_5a85660fea697'),
(246, 58, 'preim_4_text', 'Индивидуальный дизайн'),
(247, 58, '_preim_4_text', 'field_5a856635ea698'),
(248, 58, 'act_slider', '56'),
(249, 58, '_act_slider', 'field_5a86600ae3970'),
(250, 58, 'act_descr', 'Изготовление художественных витражей для входных и межкомнатных дверей...'),
(251, 58, '_act_descr', 'field_5a86602ce3971'),
(252, 58, 'slide_0_слайд', '56'),
(253, 58, '_slide_0_слайд', 'field_5a86604ee3973'),
(254, 58, 'slide_0_descr', 'Изготовление художественных витражей для входных и межкомнатных дверей...'),
(255, 58, '_slide_0_descr', 'field_5a866070e3974'),
(256, 58, 'slide', '1'),
(257, 58, '_slide', 'field_5a866038e3972'),
(258, 58, 'slide_0_image', '56'),
(259, 58, '_slide_0_image', 'field_5a86604ee3973'),
(260, 59, '_menu_item_type', 'taxonomy'),
(261, 59, '_menu_item_menu_item_parent', '0'),
(262, 59, '_menu_item_object_id', '2'),
(263, 59, '_menu_item_object', 'category'),
(264, 59, '_menu_item_target', ''),
(265, 59, '_menu_item_classes', 'a:1:{i:0;s:3:"vit";}'),
(266, 59, '_menu_item_xfn', ''),
(267, 59, '_menu_item_url', ''),
(269, 60, '_menu_item_type', 'taxonomy'),
(270, 60, '_menu_item_menu_item_parent', '0'),
(271, 60, '_menu_item_object_id', '16'),
(272, 60, '_menu_item_object', 'category'),
(273, 60, '_menu_item_target', ''),
(274, 60, '_menu_item_classes', 'a:1:{i:0;s:3:"jiv";}'),
(275, 60, '_menu_item_xfn', ''),
(276, 60, '_menu_item_url', ''),
(278, 61, '_edit_last', '1'),
(279, 61, '_wp_page_template', 'default'),
(280, 61, '_edit_lock', '1518758483:1'),
(281, 63, '_edit_last', '1'),
(282, 63, '_edit_lock', '1518758497:1'),
(283, 63, '_wp_page_template', 'default'),
(284, 65, '_menu_item_type', 'taxonomy'),
(285, 65, '_menu_item_menu_item_parent', '0'),
(286, 65, '_menu_item_object_id', '27'),
(287, 65, '_menu_item_object', 'category'),
(288, 65, '_menu_item_target', ''),
(289, 65, '_menu_item_classes', 'a:1:{i:0;s:3:"teh";}'),
(290, 65, '_menu_item_xfn', ''),
(291, 65, '_menu_item_url', ''),
(293, 66, '_menu_item_type', 'post_type'),
(294, 66, '_menu_item_menu_item_parent', '0'),
(295, 66, '_menu_item_object_id', '63'),
(296, 66, '_menu_item_object', 'page'),
(297, 66, '_menu_item_target', ''),
(298, 66, '_menu_item_classes', 'a:1:{i:0;s:5:"deliv";}'),
(299, 66, '_menu_item_xfn', ''),
(300, 66, '_menu_item_url', ''),
(302, 67, '_menu_item_type', 'post_type'),
(303, 67, '_menu_item_menu_item_parent', '0'),
(304, 67, '_menu_item_object_id', '61'),
(305, 67, '_menu_item_object', 'page'),
(306, 67, '_menu_item_target', ''),
(307, 67, '_menu_item_classes', 'a:1:{i:0;s:4:"cont";}'),
(308, 67, '_menu_item_xfn', ''),
(309, 67, '_menu_item_url', ''),
(311, 68, '_menu_item_type', 'custom'),
(312, 68, '_menu_item_menu_item_parent', '59'),
(313, 68, '_menu_item_object_id', '68'),
(314, 68, '_menu_item_object', 'custom'),
(315, 68, '_menu_item_target', ''),
(316, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(317, 68, '_menu_item_xfn', ''),
(318, 68, '_menu_item_url', '#'),
(320, 69, '_menu_item_type', 'custom'),
(321, 69, '_menu_item_menu_item_parent', '59'),
(322, 69, '_menu_item_object_id', '69'),
(323, 69, '_menu_item_object', 'custom'),
(324, 69, '_menu_item_target', ''),
(325, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(326, 69, '_menu_item_xfn', ''),
(327, 69, '_menu_item_url', '#'),
(329, 70, '_menu_item_type', 'custom'),
(330, 70, '_menu_item_menu_item_parent', '60'),
(331, 70, '_menu_item_object_id', '70'),
(332, 70, '_menu_item_object', 'custom'),
(333, 70, '_menu_item_target', ''),
(334, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(335, 70, '_menu_item_xfn', ''),
(336, 70, '_menu_item_url', '#'),
(338, 71, '_menu_item_type', 'custom'),
(339, 71, '_menu_item_menu_item_parent', '65'),
(340, 71, '_menu_item_object_id', '71'),
(341, 71, '_menu_item_object', 'custom'),
(342, 71, '_menu_item_target', ''),
(343, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(344, 71, '_menu_item_xfn', ''),
(345, 71, '_menu_item_url', '#'),
(347, 72, '_menu_item_type', 'custom'),
(348, 72, '_menu_item_menu_item_parent', '67'),
(349, 72, '_menu_item_object_id', '72'),
(350, 72, '_menu_item_object', 'custom'),
(351, 72, '_menu_item_target', ''),
(352, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(353, 72, '_menu_item_xfn', ''),
(354, 72, '_menu_item_url', '#'),
(356, 73, '_menu_item_type', 'custom'),
(357, 73, '_menu_item_menu_item_parent', '66'),
(358, 73, '_menu_item_object_id', '73'),
(359, 73, '_menu_item_object', 'custom'),
(360, 73, '_menu_item_target', ''),
(361, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(362, 73, '_menu_item_xfn', ''),
(363, 73, '_menu_item_url', '#'),
(365, 74, '_edit_last', '1'),
(366, 74, '_edit_lock', '1518759960:1'),
(367, 75, '_edit_last', '1'),
(368, 75, '_wp_page_template', 'painting.php'),
(369, 75, '_edit_lock', '1518771690:1'),
(370, 77, '_edit_last', '1'),
(371, 77, '_edit_lock', '1518772229:1'),
(372, 75, 'paint_title', 'ПОДБОР КАРТИН ПОД ВАШ ИНТЕРЬЕР ДИЗАЙНЕРОМ'),
(373, 75, '_paint_title', 'field_5a8680015b64f'),
(374, 75, 'paint_0_image', '83'),
(375, 75, '_paint_0_image', 'field_5a86803c5b651'),
(376, 75, 'paint_1_image', '83'),
(377, 75, '_paint_1_image', 'field_5a86803c5b651'),
(380, 75, 'paint', '3'),
(381, 75, '_paint', 'field_5a86801b5b650'),
(382, 81, 'paint_title', 'ПОДБОР КАРТИН ПОД ВАШ ИНТЕРЬЕР ДИЗАЙНЕРОМ'),
(383, 81, '_paint_title', 'field_5a8680015b64f'),
(384, 81, 'paint_0_image', '18'),
(385, 81, '_paint_0_image', 'field_5a86803c5b651'),
(386, 81, 'paint_1_image', '18'),
(387, 81, '_paint_1_image', 'field_5a86803c5b651'),
(388, 81, 'paint_2_image', '18'),
(389, 81, '_paint_2_image', 'field_5a86803c5b651'),
(390, 81, 'paint', '3'),
(391, 81, '_paint', 'field_5a86801b5b650'),
(394, 83, '_wp_attached_file', '2018/02/order-img1.png'),
(395, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:156;s:6:"height";i:116;s:4:"file";s:22:"2018/02/order-img1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"order-img1-150x116.png";s:5:"width";i:150;s:6:"height";i:116;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(396, 84, 'paint_title', 'ПОДБОР КАРТИН ПОД ВАШ ИНТЕРЬЕР ДИЗАЙНЕРОМ'),
(397, 84, '_paint_title', 'field_5a8680015b64f'),
(398, 84, 'paint_0_image', '83'),
(399, 84, '_paint_0_image', 'field_5a86803c5b651'),
(400, 84, 'paint_1_image', '83'),
(401, 84, '_paint_1_image', 'field_5a86803c5b651'),
(402, 84, 'paint', '2'),
(403, 84, '_paint', 'field_5a86801b5b650'),
(404, 75, 'paint_2_image', '83'),
(405, 75, '_paint_2_image', 'field_5a86803c5b651'),
(406, 85, 'paint_title', 'ПОДБОР КАРТИН ПОД ВАШ ИНТЕРЬЕР ДИЗАЙНЕРОМ'),
(407, 85, '_paint_title', 'field_5a8680015b64f'),
(408, 85, 'paint_0_image', '83'),
(409, 85, '_paint_0_image', 'field_5a86803c5b651'),
(410, 85, 'paint_1_image', '83'),
(411, 85, '_paint_1_image', 'field_5a86803c5b651'),
(412, 85, 'paint', '3'),
(413, 85, '_paint', 'field_5a86801b5b650'),
(414, 85, 'paint_2_image', '83'),
(415, 85, '_paint_2_image', 'field_5a86803c5b651'),
(416, 86, '_edit_last', '1'),
(417, 86, '_edit_lock', '1518767595:1'),
(418, 87, '_wp_attached_file', '2018/02/portret-item1.png'),
(419, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:242;s:6:"height";i:196;s:4:"file";s:25:"2018/02/portret-item1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"portret-item1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(420, 86, '_thumbnail_id', '87'),
(423, 74, '_wp_trash_meta_status', 'draft'),
(424, 74, '_wp_trash_meta_time', '1518768361'),
(425, 74, '_wp_desired_post_slug', ''),
(426, 75, 'order_title', 'ПРИШЛИТЕ НАМ ФОТО И ХУДОЖНИКИ НАПИШУТ ПОРТРЕТ В ЛЮБОМ СТИЛЕ.'),
(427, 75, '_order_title', 'field_5a86907ebcf19'),
(428, 75, 'order-simple-image', '95'),
(429, 75, '_order-simple-image', 'field_5a8690a3bcf1a'),
(430, 75, 'order-price', '1500'),
(431, 75, '_order-price', 'field_5a8690d2bcf1b'),
(432, 94, 'paint_title', 'ПОДБОР КАРТИН ПОД ВАШ ИНТЕРЬЕР ДИЗАЙНЕРОМ'),
(433, 94, '_paint_title', 'field_5a8680015b64f'),
(434, 94, 'paint_0_image', '83'),
(435, 94, '_paint_0_image', 'field_5a86803c5b651'),
(436, 94, 'paint_1_image', '83'),
(437, 94, '_paint_1_image', 'field_5a86803c5b651'),
(438, 94, 'paint', '3'),
(439, 94, '_paint', 'field_5a86801b5b650'),
(440, 94, 'paint_2_image', '83'),
(441, 94, '_paint_2_image', 'field_5a86803c5b651'),
(442, 94, 'order_title', 'ПРИШЛИТЕ НАМ ФОТО И ХУДОЖНИКИ НАПИШУТ ПОРТРЕТ В ЛЮБОМ СТИЛЕ.'),
(443, 94, '_order_title', 'field_5a86907ebcf19'),
(444, 94, 'order-simple-image', ''),
(445, 94, '_order-simple-image', 'field_5a8690a3bcf1a'),
(446, 94, 'order-price', ''),
(447, 94, '_order-price', 'field_5a8690d2bcf1b'),
(448, 95, '_wp_attached_file', '2018/02/form-img1.png'),
(449, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:123;s:6:"height";i:171;s:4:"file";s:21:"2018/02/form-img1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"form-img1-123x150.png";s:5:"width";i:123;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(450, 96, '_wp_attached_file', '2018/02/form-img2.png'),
(451, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:163;s:6:"height";i:240;s:4:"file";s:21:"2018/02/form-img2.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"form-img2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(452, 75, 'order-draw-image', '96'),
(453, 75, '_order-draw-image', 'field_5a86912d29b38'),
(454, 97, 'paint_title', 'ПОДБОР КАРТИН ПОД ВАШ ИНТЕРЬЕР ДИЗАЙНЕРОМ'),
(455, 97, '_paint_title', 'field_5a8680015b64f'),
(456, 97, 'paint_0_image', '83'),
(457, 97, '_paint_0_image', 'field_5a86803c5b651'),
(458, 97, 'paint_1_image', '83'),
(459, 97, '_paint_1_image', 'field_5a86803c5b651'),
(460, 97, 'paint', '3'),
(461, 97, '_paint', 'field_5a86801b5b650'),
(462, 97, 'paint_2_image', '83'),
(463, 97, '_paint_2_image', 'field_5a86803c5b651'),
(464, 97, 'order_title', 'ПРИШЛИТЕ НАМ ФОТО И ХУДОЖНИКИ НАПИШУТ ПОРТРЕТ В ЛЮБОМ СТИЛЕ.'),
(465, 97, '_order_title', 'field_5a86907ebcf19'),
(466, 97, 'order-simple-image', '95'),
(467, 97, '_order-simple-image', 'field_5a8690a3bcf1a'),
(468, 97, 'order-price', '1500'),
(469, 97, '_order-price', 'field_5a8690d2bcf1b'),
(470, 97, 'order-draw-image', '96'),
(471, 97, '_order-draw-image', 'field_5a86912d29b38'),
(472, 98, '_edit_last', '1'),
(473, 98, '_edit_lock', '1518778294:1'),
(474, 99, '_edit_last', '1'),
(475, 99, '_edit_lock', '1518772578:1'),
(476, 102, '_wp_attached_file', '2018/02/item.png'),
(477, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:194;s:6:"height";i:162;s:4:"file";s:16:"2018/02/item.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"item-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(478, 98, '_thumbnail_id', '102'),
(483, 98, 'post-count-day', '10'),
(484, 98, '_post-count-day', 'field_5a86a11ec322c'),
(485, 98, 'post-price', '3600'),
(486, 98, '_post-price', 'field_5a86a138c322d'),
(487, 103, 'post-count-day', ''),
(488, 103, '_post-count-day', 'field_5a86a11ec322c'),
(489, 103, 'post-price', ''),
(490, 103, '_post-price', 'field_5a86a138c322d'),
(493, 104, 'post-count-day', '10'),
(494, 104, '_post-count-day', 'field_5a86a11ec322c'),
(495, 104, 'post-price', '3600'),
(496, 104, '_post-price', 'field_5a86a138c322d'),
(499, 105, 'post-count-day', '10'),
(500, 105, '_post-count-day', 'field_5a86a11ec322c'),
(501, 105, 'post-price', '3600'),
(502, 105, '_post-price', 'field_5a86a138c322d'),
(503, 106, '_edit_last', '1'),
(504, 106, '_edit_lock', '1518778450:1'),
(505, 106, '_wp_page_template', 'allcategories.php');

-- --------------------------------------------------------

--
-- Структура таблицы `nt_posts`
--

CREATE TABLE `nt_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `nt_posts`
--

INSERT INTO `nt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-15 12:03:28', '2018-02-15 09:03:28', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2018-02-15 12:34:48', '2018-02-15 09:34:48', '', 0, 'http://localhost/vit.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-15 12:03:28', '2018-02-15 09:03:28', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://localhost/vit.loc/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-02-15 13:52:47', '2018-02-15 10:52:47', '', 0, 'http://localhost/vit.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-02-15 12:03:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-15 12:03:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/vit.loc/?p=3', 0, 'post', '', 0),
(4, 1, '2018-02-15 12:34:48', '2018-02-15 09:34:48', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-02-15 12:34:48', '2018-02-15 09:34:48', '', 1, 'http://localhost/vit.loc/2018/02/15/1-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-02-15 12:42:49', '2018-02-15 09:42:49', '', 'icon-vitraj', '', 'inherit', 'open', 'closed', '', 'icon-vitraj', '', '', '2018-02-15 12:42:49', '2018-02-15 09:42:49', '', 0, 'http://localhost/vit.loc/wp-content/uploads/2018/02/icon-vitraj.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2018-02-15 12:53:01', '2018-02-15 09:53:01', '{\n    "vitrovi::lozung": {\n        "value": "123",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-15 09:53:01"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '66b84824-bfd8-4387-bd00-e12fec9584b9', '', '', '2018-02-15 12:53:01', '2018-02-15 09:53:01', '', 0, 'http://localhost/vit.loc/2018/02/15/66b84824-bfd8-4387-bd00-e12fec9584b9/', 0, 'customize_changeset', '', 0),
(8, 1, '2018-02-15 12:53:39', '2018-02-15 09:53:39', '{\n    "vitrovi::lozung": {\n        "value": "\\u041c\\u042b \\u0421\\u041e\\u0417\\u0414\\u0410\\u0415\\u041c \\u0410\\u0420\\u0422-\\u0412\\u0418\\u0422\\u0420\\u0410\\u0416\\u0418, \\u0410 \\u0422\\u0410\\u041a \\u0416\\u0415 \\u041a\\u0410\\u0420\\u0422\\u0418\\u041d\\u042b \\u0414\\u041b\\u042f \\u0412\\u0410\\u0428\\u0415\\u0413\\u041e \\u0418\\u041d\\u0422\\u0415\\u0420\\u042c\\u0415\\u0420\\u0410\\n",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-15 09:53:39"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f8d9f752-bb17-48ec-a0f0-bb47f7eb5665', '', '', '2018-02-15 12:53:39', '2018-02-15 09:53:39', '', 0, 'http://localhost/vit.loc/2018/02/15/f8d9f752-bb17-48ec-a0f0-bb47f7eb5665/', 0, 'customize_changeset', '', 0),
(9, 1, '2018-02-15 12:56:03', '2018-02-15 09:56:03', '', 'icon-mosaic', '', 'inherit', 'open', 'closed', '', 'icon-mosaic', '', '', '2018-02-15 12:56:03', '2018-02-15 09:56:03', '', 0, 'http://localhost/vit.loc/wp-content/uploads/2018/02/icon-mosaic.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2018-02-15 12:56:03', '2018-02-15 09:56:03', '', 'icon-picture', '', 'inherit', 'open', 'closed', '', 'icon-picture', '', '', '2018-02-15 12:56:03', '2018-02-15 09:56:03', '', 0, 'http://localhost/vit.loc/wp-content/uploads/2018/02/icon-picture.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2018-02-15 12:56:04', '2018-02-15 09:56:04', '', 'icon-post', '', 'inherit', 'open', 'closed', '', 'icon-post', '', '', '2018-02-15 12:56:04', '2018-02-15 09:56:04', '', 0, 'http://localhost/vit.loc/wp-content/uploads/2018/02/icon-post.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2018-02-15 13:03:03', '2018-02-15 10:03:03', 'cxc', 'dfdf', '', 'trash', 'open', 'open', '', 'dfdf__trashed', '', '', '2018-02-15 13:25:32', '2018-02-15 10:25:32', '', 0, 'http://localhost/vit.loc/?p=12', 0, 'post', '', 0),
(13, 1, '2018-02-15 13:03:03', '2018-02-15 10:03:03', 'cxc', 'dfdf', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-02-15 13:03:03', '2018-02-15 10:03:03', '', 12, 'http://localhost/vit.loc/2018/02/15/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-02-15 13:26:20', '2018-02-15 10:26:20', '', 'Потолочный витраж', '', 'trash', 'open', 'open', '', 'potolochnyj-vitrazh__trashed', '', '', '2018-02-15 13:40:04', '2018-02-15 10:40:04', '', 0, 'http://localhost/vit.loc/?p=14', 0, 'post', '', 0),
(15, 1, '2018-02-15 13:26:10', '2018-02-15 10:26:10', '', 'vit-item1', '', 'inherit', 'open', 'closed', '', 'vit-item1', '', '', '2018-02-15 13:26:10', '2018-02-15 10:26:10', '', 14, 'http://localhost/vit.loc/wp-content/uploads/2018/02/vit-item1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-02-15 13:26:11', '2018-02-15 10:26:11', '', 'vit-item2', '', 'inherit', 'open', 'closed', '', 'vit-item2', '', '', '2018-02-15 13:26:11', '2018-02-15 10:26:11', '', 14, 'http://localhost/vit.loc/wp-content/uploads/2018/02/vit-item2.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-02-15 13:26:12', '2018-02-15 10:26:12', '', 'vit-item3', '', 'inherit', 'open', 'closed', '', 'vit-item3', '', '', '2018-02-15 13:26:12', '2018-02-15 10:26:12', '', 14, 'http://localhost/vit.loc/wp-content/uploads/2018/02/vit-item3.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2018-02-15 13:26:12', '2018-02-15 10:26:12', '', 'vit-item4', '', 'inherit', 'open', 'closed', '', 'vit-item4', '', '', '2018-02-15 13:26:12', '2018-02-15 10:26:12', '', 14, 'http://localhost/vit.loc/wp-content/uploads/2018/02/vit-item4.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2018-02-15 13:26:13', '2018-02-15 10:26:13', '', 'vit-item5', '', 'inherit', 'open', 'closed', '', 'vit-item5', '', '', '2018-02-15 13:26:13', '2018-02-15 10:26:13', '', 14, 'http://localhost/vit.loc/wp-content/uploads/2018/02/vit-item5.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2018-02-15 13:26:15', '2018-02-15 10:26:15', '', 'vit-item6', '', 'inherit', 'open', 'closed', '', 'vit-item6', '', '', '2018-02-15 13:26:15', '2018-02-15 10:26:15', '', 14, 'http://localhost/vit.loc/wp-content/uploads/2018/02/vit-item6.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2018-02-15 13:26:20', '2018-02-15 10:26:20', '', 'Потолочный витраж', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-02-15 13:26:20', '2018-02-15 10:26:20', '', 14, 'http://localhost/vit.loc/2018/02/15/14-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-02-15 13:30:17', '2018-02-15 10:30:17', '', 'Витражи в двери', '', 'trash', 'open', 'open', '', 'vitrazhi-v-dveri__trashed', '', '', '2018-02-15 13:40:04', '2018-02-15 10:40:04', '', 0, 'http://localhost/vit.loc/?p=22', 0, 'post', '', 0),
(23, 1, '2018-02-15 13:30:17', '2018-02-15 10:30:17', '', 'Витражи в двери', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-15 13:30:17', '2018-02-15 10:30:17', '', 22, 'http://localhost/vit.loc/2018/02/15/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-02-15 13:52:38', '2018-02-15 10:52:38', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:8:"home.php";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";}', 'Наши преимущества', 'nashi-preimushhestva', 'publish', 'closed', 'closed', '', 'group_5a8565eac326f', '', '', '2018-02-15 13:53:37', '2018-02-15 10:53:37', '', 0, 'http://localhost/vit.loc/?post_type=acf-field-group&#038;p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2018-02-15 13:52:38', '2018-02-15 10:52:38', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";i:5;s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Преимущесва', 'preim', 'publish', 'closed', 'closed', '', 'field_5a8565fdea696', '', '', '2018-02-15 13:53:37', '2018-02-15 10:53:37', '', 24, 'http://localhost/vit.loc/?post_type=acf-field&#038;p=25', 0, 'acf-field', '', 0),
(26, 1, '2018-02-15 13:52:38', '2018-02-15 10:52:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Цифра на латинском', 'number', 'publish', 'closed', 'closed', '', 'field_5a85660fea697', '', '', '2018-02-15 13:52:38', '2018-02-15 10:52:38', '', 25, 'http://localhost/vit.loc/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2018-02-15 13:52:38', '2018-02-15 10:52:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Текст', 'text', 'publish', 'closed', 'closed', '', 'field_5a856635ea698', '', '', '2018-02-15 13:52:38', '2018-02-15 10:52:38', '', 25, 'http://localhost/vit.loc/?post_type=acf-field&p=27', 1, 'acf-field', '', 0),
(28, 1, '2018-02-15 13:52:47', '2018-02-15 10:52:47', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://localhost/vit.loc/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-02-15 13:52:47', '2018-02-15 10:52:47', '', 2, 'http://localhost/vit.loc/2018/02/15/2-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-02-15 13:53:21', '2018-02-15 10:53:21', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2018-02-16 07:55:58', '2018-02-16 04:55:58', '', 0, 'http://localhost/vit.loc/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-02-15 13:53:21', '2018-02-15 10:53:21', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-02-15 13:53:21', '2018-02-15 10:53:21', '', 29, 'http://localhost/vit.loc/2018/02/15/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-02-15 13:57:34', '2018-02-15 10:57:34', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-15 10:57:34"\n    },\n    "page_on_front": {\n        "value": "29",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-15 10:57:34"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '531a27c3-fb76-421b-be30-27f0d2e8592f', '', '', '2018-02-15 13:57:34', '2018-02-15 10:57:34', '', 0, 'http://localhost/vit.loc/2018/02/15/531a27c3-fb76-421b-be30-27f0d2e8592f/', 0, 'customize_changeset', '', 0),
(32, 1, '2018-02-15 13:58:30', '2018-02-15 10:58:30', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-02-15 13:58:30', '2018-02-15 10:58:30', '', 29, 'http://localhost/vit.loc/2018/02/15/29-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-02-15 14:00:20', '2018-02-15 11:00:20', '', 'jiv-item1', '', 'inherit', 'open', 'closed', '', 'jiv-item1', '', '', '2018-02-15 14:00:20', '2018-02-15 11:00:20', '', 0, 'http://localhost/vit.loc/wp-content/uploads/2018/02/jiv-item1.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-02-15 14:10:06', '2018-02-15 11:10:06', '', 'Статьи', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2018-02-15 14:10:06', '2018-02-15 11:10:06', '', 0, 'http://localhost/vit.loc/?p=34', 0, 'post', '', 0),
(35, 1, '2018-02-15 14:06:10', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-15 14:06:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/vit.loc/?p=35', 0, 'post', '', 0),
(36, 1, '2018-02-15 14:09:51', '2018-02-15 11:09:51', '', 'Английская технология', '', 'trash', 'open', 'open', '', 'anglijskaya-tehnologiya__trashed', '', '', '2018-02-15 14:10:08', '2018-02-15 11:10:08', '', 0, 'http://localhost/vit.loc/?p=36', 0, 'post', '', 0),
(37, 1, '2018-02-15 14:09:46', '2018-02-15 11:09:46', '', 'post-item1', '', 'inherit', 'open', 'closed', '', 'post-item1', '', '', '2018-02-15 14:09:46', '2018-02-15 11:09:46', '', 36, 'http://localhost/vit.loc/wp-content/uploads/2018/02/post-item1.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-02-15 14:09:51', '2018-02-15 11:09:51', '', 'Английская технология', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-02-15 14:09:51', '2018-02-15 11:09:51', '', 36, 'http://localhost/vit.loc/2018/02/15/36-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-02-15 14:10:06', '2018-02-15 11:10:06', '', 'Статьи', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-02-15 14:10:06', '2018-02-15 11:10:06', '', 34, 'http://localhost/vit.loc/2018/02/15/34-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-02-15 14:12:04', '2018-02-15 11:12:04', '', 'extra-item1', '', 'inherit', 'open', 'closed', '', 'extra-item1', '', '', '2018-02-15 14:12:04', '2018-02-15 11:12:04', '', 0, 'http://localhost/vit.loc/wp-content/uploads/2018/02/extra-item1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-02-15 14:15:54', '2018-02-15 11:15:54', '{\n    "vitrovi::insta": {\n        "value": "#",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-15 11:15:23"\n    },\n    "vitrovi::email": {\n        "value": "#",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-15 11:15:23"\n    },\n    "vitrovi::whatsapp": {\n        "value": "#",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-15 11:15:23"\n    },\n    "vitrovi::facebook": {\n        "value": "#",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-15 11:15:23"\n    },\n    "vitrovi::number1": {\n        "value": "+(996) 558 09 89 95",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-15 11:15:41"\n    },\n    "vitrovi::number2": {\n        "value": "+(996) 700 09 89 95 (WhatsApp)",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-15 11:15:54"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a5fae0d0-87c5-440c-9819-df6e73f85559', '', '', '2018-02-15 14:15:54', '2018-02-15 11:15:54', '', 0, 'http://localhost/vit.loc/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2018-02-15 14:19:05', '2018-02-15 11:19:05', 'Картина "Маки"', 'Картина "Маки"', '', 'publish', 'open', 'open', '', 'kartina-maki', '', '', '2018-02-15 15:32:27', '2018-02-15 12:32:27', '', 0, 'http://localhost/vit.loc/?p=42', 0, 'post', '', 0),
(43, 1, '2018-02-15 14:19:05', '2018-02-15 11:19:05', 'Картина "Маки"', 'Картина "Маки"', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-02-15 14:19:05', '2018-02-15 11:19:05', '', 42, 'http://localhost/vit.loc/2018/02/15/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-02-15 14:22:02', '2018-02-15 11:22:02', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:16:"category:vitrina";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Цена', 'tsena', 'publish', 'closed', 'closed', '', 'group_5a856cfcd7570', '', '', '2018-02-15 15:32:06', '2018-02-15 12:32:06', '', 0, 'http://localhost/vit.loc/?post_type=acf-field-group&#038;p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2018-02-15 14:22:02', '2018-02-15 11:22:02', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Цена', 'vitrina_price', 'publish', 'closed', 'closed', '', 'field_5a856d0876bbd', '', '', '2018-02-15 14:22:02', '2018-02-15 11:22:02', '', 44, 'http://localhost/vit.loc/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2018-02-15 14:22:02', '2018-02-15 11:22:02', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:2:{s:17:"В наличии";s:17:"В наличии";s:24:"Нет в наличии";s:24:"Нет в наличии";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'Доступность', 'available', 'publish', 'closed', 'closed', '', 'field_5a856d2676bbe', '', '', '2018-02-15 15:32:06', '2018-02-15 12:32:06', '', 44, 'http://localhost/vit.loc/?post_type=acf-field&#038;p=46', 1, 'acf-field', '', 0),
(47, 1, '2018-02-15 14:22:39', '2018-02-15 11:22:39', 'Картина "Маки"', 'Картина "Маки"', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-02-15 14:22:39', '2018-02-15 11:22:39', '', 42, 'http://localhost/vit.loc/2018/02/15/42-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-02-15 15:32:19', '2018-02-15 12:32:19', 'Картина "Маки"', 'Картина "Маки"', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-02-15 15:32:19', '2018-02-15 12:32:19', '', 42, 'http://localhost/vit.loc/2018/02/15/42-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-02-15 15:32:27', '2018-02-15 12:32:27', 'Картина "Маки"', 'Картина "Маки"', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-02-15 15:32:27', '2018-02-15 12:32:27', '', 42, 'http://localhost/vit.loc/2018/02/15/42-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-02-16 07:39:48', '2018-02-16 04:39:48', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:8:"home.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Слайдер', 'slajder', 'publish', 'closed', 'closed', '', 'group_5a866005816ab', '', '', '2018-02-16 07:55:32', '2018-02-16 04:55:32', '', 0, 'http://localhost/vit.loc/?post_type=acf-field-group&#038;p=50', 0, 'acf-field-group', '', 0),
(51, 1, '2018-02-16 07:39:48', '2018-02-16 04:39:48', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Активный слайд', 'act_slider', 'publish', 'closed', 'closed', '', 'field_5a86600ae3970', '', '', '2018-02-16 07:39:48', '2018-02-16 04:39:48', '', 50, 'http://localhost/vit.loc/?post_type=acf-field&p=51', 0, 'acf-field', '', 0),
(52, 1, '2018-02-16 07:39:48', '2018-02-16 04:39:48', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Описание', 'act_descr', 'publish', 'closed', 'closed', '', 'field_5a86602ce3971', '', '', '2018-02-16 07:39:48', '2018-02-16 04:39:48', '', 50, 'http://localhost/vit.loc/?post_type=acf-field&p=52', 1, 'acf-field', '', 0),
(53, 1, '2018-02-16 07:39:48', '2018-02-16 04:39:48', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Слайды', 'slide', 'publish', 'closed', 'closed', '', 'field_5a866038e3972', '', '', '2018-02-16 07:39:48', '2018-02-16 04:39:48', '', 50, 'http://localhost/vit.loc/?post_type=acf-field&p=53', 2, 'acf-field', '', 0),
(54, 1, '2018-02-16 07:39:48', '2018-02-16 04:39:48', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Изображение', 'image', 'publish', 'closed', 'closed', '', 'field_5a86604ee3973', '', '', '2018-02-16 07:55:32', '2018-02-16 04:55:32', '', 53, 'http://localhost/vit.loc/?post_type=acf-field&#038;p=54', 0, 'acf-field', '', 0),
(55, 1, '2018-02-16 07:39:48', '2018-02-16 04:39:48', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Описание', 'descr', 'publish', 'closed', 'closed', '', 'field_5a866070e3974', '', '', '2018-02-16 07:39:48', '2018-02-16 04:39:48', '', 53, 'http://localhost/vit.loc/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2018-02-16 07:53:04', '2018-02-16 04:53:04', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2018-02-16 07:53:04', '2018-02-16 04:53:04', '', 29, 'http://localhost/vit.loc/wp-content/uploads/2018/02/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-02-16 07:53:13', '2018-02-16 04:53:13', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-02-16 07:53:13', '2018-02-16 04:53:13', '', 29, 'http://localhost/vit.loc/2018/02/16/29-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-02-16 07:55:58', '2018-02-16 04:55:58', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-02-16 07:55:58', '2018-02-16 04:55:58', '', 29, 'http://localhost/vit.loc/2018/02/16/29-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-02-16 08:24:17', '2018-02-16 05:24:17', 'Мы создаем художественные витражи для дизайна интерьера в различных техниках: тиффани, английская техника, фацетный, заливной, пескоструй. Каждый витраж – уникальная авторская работа, выполненная художником', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2018-02-16 08:36:16', '2018-02-16 05:36:16', '', 0, 'http://localhost/vit.loc/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2018-02-16 08:24:17', '2018-02-16 05:24:17', 'Картина – украшение любого интерьера. Наши картины написаны вручную, профессиональными художникам на холсте масляными красками. Принимаем индивидуальные заказы на портреты: живописный портрет, портрет в стиле поп-арт, акварельный порт…', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2018-02-16 08:36:16', '2018-02-16 05:36:16', '', 0, 'http://localhost/vit.loc/?p=60', 4, 'nav_menu_item', '', 0),
(61, 1, '2018-02-16 08:23:39', '2018-02-16 05:23:39', '', 'Контаткы', '', 'publish', 'closed', 'closed', '', 'kontatky', '', '', '2018-02-16 08:23:39', '2018-02-16 05:23:39', '', 0, 'http://localhost/vit.loc/?page_id=61', 0, 'page', '', 0),
(62, 1, '2018-02-16 08:23:39', '2018-02-16 05:23:39', '', 'Контаткы', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-02-16 08:23:39', '2018-02-16 05:23:39', '', 61, 'http://localhost/vit.loc/2018/02/16/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-02-16 08:23:55', '2018-02-16 05:23:55', '', 'Доставка', '', 'publish', 'closed', 'closed', '', 'dostavka', '', '', '2018-02-16 08:23:55', '2018-02-16 05:23:55', '', 0, 'http://localhost/vit.loc/?page_id=63', 0, 'page', '', 0),
(64, 1, '2018-02-16 08:23:55', '2018-02-16 05:23:55', '', 'Доставка', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2018-02-16 08:23:55', '2018-02-16 05:23:55', '', 63, 'http://localhost/vit.loc/2018/02/16/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-02-16 08:30:32', '2018-02-16 05:30:32', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2018-02-16 08:36:16', '2018-02-16 05:36:16', '', 0, 'http://localhost/vit.loc/?p=65', 6, 'nav_menu_item', '', 0),
(66, 1, '2018-02-16 08:30:32', '2018-02-16 05:30:32', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2018-02-16 08:36:16', '2018-02-16 05:36:16', '', 0, 'http://localhost/vit.loc/?p=66', 10, 'nav_menu_item', '', 0),
(67, 1, '2018-02-16 08:30:32', '2018-02-16 05:30:32', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2018-02-16 08:36:16', '2018-02-16 05:36:16', '', 0, 'http://localhost/vit.loc/?p=67', 8, 'nav_menu_item', '', 0),
(68, 1, '2018-02-16 08:31:50', '2018-02-16 05:31:50', '', 'Элемент', '', 'publish', 'closed', 'closed', '', 'element', '', '', '2018-02-16 08:36:16', '2018-02-16 05:36:16', '', 0, 'http://localhost/vit.loc/?p=68', 2, 'nav_menu_item', '', 0),
(69, 1, '2018-02-16 08:31:50', '2018-02-16 05:31:50', '', 'Элемент', '', 'publish', 'closed', 'closed', '', 'element-2', '', '', '2018-02-16 08:36:16', '2018-02-16 05:36:16', '', 0, 'http://localhost/vit.loc/?p=69', 3, 'nav_menu_item', '', 0),
(70, 1, '2018-02-16 08:31:50', '2018-02-16 05:31:50', '', 'Элемент', '', 'publish', 'closed', 'closed', '', 'element-3', '', '', '2018-02-16 08:36:16', '2018-02-16 05:36:16', '', 0, 'http://localhost/vit.loc/?p=70', 5, 'nav_menu_item', '', 0),
(71, 1, '2018-02-16 08:31:50', '2018-02-16 05:31:50', '', 'Элемент', '', 'publish', 'closed', 'closed', '', 'element-4', '', '', '2018-02-16 08:36:16', '2018-02-16 05:36:16', '', 0, 'http://localhost/vit.loc/?p=71', 7, 'nav_menu_item', '', 0),
(72, 1, '2018-02-16 08:32:28', '2018-02-16 05:32:28', '', 'Элемент', '', 'publish', 'closed', 'closed', '', 'element-5', '', '', '2018-02-16 08:36:16', '2018-02-16 05:36:16', '', 0, 'http://localhost/vit.loc/?p=72', 9, 'nav_menu_item', '', 0),
(73, 1, '2018-02-16 08:32:28', '2018-02-16 05:32:28', '', 'Элемент', '', 'publish', 'closed', 'closed', '', 'element-6', '', '', '2018-02-16 08:36:16', '2018-02-16 05:36:16', '', 0, 'http://localhost/vit.loc/?p=73', 11, 'nav_menu_item', '', 0),
(74, 1, '2018-02-16 11:06:01', '2018-02-16 08:06:01', 'У нас можно оформить подарочный сертификат на покупки любой картины в подарок', 'Живопись в Бишкеке', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-02-16 11:06:01', '2018-02-16 08:06:01', '', 0, 'http://localhost/vit.loc/?page_id=74', 0, 'page', '', 0),
(75, 1, '2018-02-16 08:51:42', '2018-02-16 05:51:42', 'У нас можно оформить подарочный сертификат на покупки любой картины в подарок', 'Живопись в Бишкеке', '', 'publish', 'closed', 'closed', '', 'zhivopis-v-bishkeke', '', '', '2018-02-16 11:10:01', '2018-02-16 08:10:01', '', 0, 'http://localhost/vit.loc/?page_id=75', 0, 'page', '', 0),
(76, 1, '2018-02-16 08:51:42', '2018-02-16 05:51:42', 'У нас можно оформить подарочный сертификат на покупки любой картины в подарок', 'Живопись в Бишкеке', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-02-16 08:51:42', '2018-02-16 05:51:42', '', 75, 'http://localhost/vit.loc/2018/02/16/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-02-16 09:56:11', '2018-02-16 06:56:11', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:12:"painting.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Подбор картин', 'podbor-kartin', 'publish', 'closed', 'closed', '', 'group_5a867ff5a5b77', '', '', '2018-02-16 11:07:30', '2018-02-16 08:07:30', '', 0, 'http://localhost/vit.loc/?post_type=acf-field-group&#038;p=77', 0, 'acf-field-group', '', 0),
(78, 1, '2018-02-16 09:56:11', '2018-02-16 06:56:11', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Заголовок', 'paint_title', 'publish', 'closed', 'closed', '', 'field_5a8680015b64f', '', '', '2018-02-16 09:56:11', '2018-02-16 06:56:11', '', 77, 'http://localhost/vit.loc/?post_type=acf-field&p=78', 0, 'acf-field', '', 0),
(79, 1, '2018-02-16 09:56:11', '2018-02-16 06:56:11', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";i:3;s:6:"layout";s:5:"table";s:12:"button_label";s:0:"";}', 'Изображения', 'paint', 'publish', 'closed', 'closed', '', 'field_5a86801b5b650', '', '', '2018-02-16 10:52:00', '2018-02-16 07:52:00', '', 77, 'http://localhost/vit.loc/?post_type=acf-field&#038;p=79', 1, 'acf-field', '', 0),
(80, 1, '2018-02-16 09:56:11', '2018-02-16 06:56:11', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Изображение', 'image', 'publish', 'closed', 'closed', '', 'field_5a86803c5b651', '', '', '2018-02-16 09:56:11', '2018-02-16 06:56:11', '', 79, 'http://localhost/vit.loc/?post_type=acf-field&p=80', 0, 'acf-field', '', 0),
(81, 1, '2018-02-16 10:45:37', '2018-02-16 07:45:37', 'У нас можно оформить подарочный сертификат на покупки любой картины в подарок', 'Живопись в Бишкеке', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-02-16 10:45:37', '2018-02-16 07:45:37', '', 75, 'http://localhost/vit.loc/2018/02/16/75-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-02-16 10:50:04', '2018-02-16 07:50:04', '', 'order-img1', '', 'inherit', 'open', 'closed', '', 'order-img1', '', '', '2018-02-16 10:50:04', '2018-02-16 07:50:04', '', 75, 'http://localhost/vit.loc/wp-content/uploads/2018/02/order-img1.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2018-02-16 10:50:13', '2018-02-16 07:50:13', 'У нас можно оформить подарочный сертификат на покупки любой картины в подарок', 'Живопись в Бишкеке', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-02-16 10:50:13', '2018-02-16 07:50:13', '', 75, 'http://localhost/vit.loc/2018/02/16/75-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-02-16 10:52:18', '2018-02-16 07:52:18', 'У нас можно оформить подарочный сертификат на покупки любой картины в подарок', 'Живопись в Бишкеке', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-02-16 10:52:18', '2018-02-16 07:52:18', '', 75, 'http://localhost/vit.loc/2018/02/16/75-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-02-16 10:54:13', '2018-02-16 07:54:13', '', 'Арт портрет маслом', '', 'publish', 'open', 'open', '', 'art-portret-maslom', '', '', '2018-02-16 10:54:13', '2018-02-16 07:54:13', '', 0, 'http://localhost/vit.loc/?p=86', 0, 'post', '', 0),
(87, 1, '2018-02-16 10:54:07', '2018-02-16 07:54:07', '', 'portret-item1', '', 'inherit', 'open', 'closed', '', 'portret-item1', '', '', '2018-02-16 10:54:07', '2018-02-16 07:54:07', '', 86, 'http://localhost/vit.loc/wp-content/uploads/2018/02/portret-item1.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2018-02-16 10:54:13', '2018-02-16 07:54:13', '', 'Арт портрет маслом', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-02-16 10:54:13', '2018-02-16 07:54:13', '', 86, 'http://localhost/vit.loc/2018/02/16/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-02-16 11:05:54', '2018-02-16 08:05:54', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Заголовок для призыва', 'order_title', 'publish', 'closed', 'closed', '', 'field_5a86907ebcf19', '', '', '2018-02-16 11:05:54', '2018-02-16 08:05:54', '', 77, 'http://localhost/vit.loc/?post_type=acf-field&p=89', 2, 'acf-field', '', 0),
(90, 1, '2018-02-16 11:05:54', '2018-02-16 08:05:54', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Обычное изображение для призыва', 'order-simple-image', 'publish', 'closed', 'closed', '', 'field_5a8690a3bcf1a', '', '', '2018-02-16 11:07:30', '2018-02-16 08:07:30', '', 77, 'http://localhost/vit.loc/?post_type=acf-field&#038;p=90', 3, 'acf-field', '', 0),
(91, 1, '2018-02-16 11:05:54', '2018-02-16 08:05:54', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Цена', 'order-price', 'publish', 'closed', 'closed', '', 'field_5a8690d2bcf1b', '', '', '2018-02-16 11:07:30', '2018-02-16 08:07:30', '', 77, 'http://localhost/vit.loc/?post_type=acf-field&#038;p=91', 5, 'acf-field', '', 0),
(92, 1, '2018-02-16 11:06:01', '2018-02-16 08:06:01', 'У нас можно оформить подарочный сертификат на покупки любой картины в подарок', 'Живопись в Бишкеке', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-02-16 11:06:01', '2018-02-16 08:06:01', '', 74, 'http://localhost/vit.loc/2018/02/16/74-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-02-16 11:07:30', '2018-02-16 08:07:30', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Нарисованное изображение для призыва', 'order-draw-image', 'publish', 'closed', 'closed', '', 'field_5a86912d29b38', '', '', '2018-02-16 11:07:30', '2018-02-16 08:07:30', '', 77, 'http://localhost/vit.loc/?post_type=acf-field&p=93', 4, 'acf-field', '', 0),
(94, 1, '2018-02-16 11:09:16', '2018-02-16 08:09:16', 'У нас можно оформить подарочный сертификат на покупки любой картины в подарок', 'Живопись в Бишкеке', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-02-16 11:09:16', '2018-02-16 08:09:16', '', 75, 'http://localhost/vit.loc/2018/02/16/75-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-02-16 11:09:35', '2018-02-16 08:09:35', '', 'form-img1', '', 'inherit', 'open', 'closed', '', 'form-img1', '', '', '2018-02-16 11:09:35', '2018-02-16 08:09:35', '', 75, 'http://localhost/vit.loc/wp-content/uploads/2018/02/form-img1.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2018-02-16 11:09:45', '2018-02-16 08:09:45', '', 'form-img2', '', 'inherit', 'open', 'closed', '', 'form-img2', '', '', '2018-02-16 11:09:45', '2018-02-16 08:09:45', '', 75, 'http://localhost/vit.loc/wp-content/uploads/2018/02/form-img2.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2018-02-16 11:10:01', '2018-02-16 08:10:01', 'У нас можно оформить подарочный сертификат на покупки любой картины в подарок', 'Живопись в Бишкеке', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-02-16 11:10:01', '2018-02-16 08:10:01', '', 75, 'http://localhost/vit.loc/2018/02/16/75-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-02-16 12:16:47', '2018-02-16 09:16:47', 'Художественные витражи в интерьере - показатель утонченного вкуса и достатка. Игра света и цвета приеображает помещение. Пронеся сквозь столетия свою красоту, этот вид художественного искусства продолжает захватывать своим очарованием.\r\n\r\nМы предлагаем широкий выбор витражных техник - от элитной классической техники, где элемент вырезается их цветного стекла, а затем спаивается между собой с помощью металлических протяжек, до современных бюджетных техник - пленочного или заливнго витража.\r\n\r\nСрок исполнения витражей на заказ от 7 дней! Уровень цен на изготовление витражей определяется индивидуально при работе с каждым конкретным заказом. Учитываются такие факторы, как сложность эскиза, процент заполнения поверхности стекла и класс используемых материалов. Поэтому стоимость работ по производству витражей может, заметно варьироваться, от недорогих до эксклюзивных дизайнерских работ сложной конфигурации.', 'D-1', '', 'publish', 'open', 'open', '', 'd-1', '', '', '2018-02-16 13:45:14', '2018-02-16 10:45:14', '', 0, 'http://localhost/vit.loc/?p=98', 0, 'post', '', 0),
(99, 1, '2018-02-16 12:16:17', '2018-02-16 09:16:17', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:17:"category:vitrazhi";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Витражи', 'vitrazhi', 'publish', 'closed', 'closed', '', 'group_5a86a0b65ae1a', '', '', '2018-02-16 12:16:17', '2018-02-16 09:16:17', '', 0, 'http://localhost/vit.loc/?post_type=acf-field-group&#038;p=99', 0, 'acf-field-group', '', 0),
(100, 1, '2018-02-16 12:16:17', '2018-02-16 09:16:17', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Количество дней под заказ', 'post-count-day', 'publish', 'closed', 'closed', '', 'field_5a86a11ec322c', '', '', '2018-02-16 12:16:17', '2018-02-16 09:16:17', '', 99, 'http://localhost/vit.loc/?post_type=acf-field&p=100', 0, 'acf-field', '', 0),
(101, 1, '2018-02-16 12:16:17', '2018-02-16 09:16:17', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Цена', 'post-price', 'publish', 'closed', 'closed', '', 'field_5a86a138c322d', '', '', '2018-02-16 12:16:17', '2018-02-16 09:16:17', '', 99, 'http://localhost/vit.loc/?post_type=acf-field&p=101', 1, 'acf-field', '', 0),
(102, 1, '2018-02-16 12:16:41', '2018-02-16 09:16:41', '', 'item', '', 'inherit', 'open', 'closed', '', 'item', '', '', '2018-02-16 12:16:41', '2018-02-16 09:16:41', '', 98, 'http://localhost/vit.loc/wp-content/uploads/2018/02/item.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2018-02-16 12:16:47', '2018-02-16 09:16:47', '', 'D-1', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2018-02-16 12:16:47', '2018-02-16 09:16:47', '', 98, 'http://localhost/vit.loc/2018/02/16/98-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-02-16 12:17:22', '2018-02-16 09:17:22', '', 'D-1', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2018-02-16 12:17:22', '2018-02-16 09:17:22', '', 98, 'http://localhost/vit.loc/2018/02/16/98-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-02-16 13:45:14', '2018-02-16 10:45:14', 'Художественные витражи в интерьере - показатель утонченного вкуса и достатка. Игра света и цвета приеображает помещение. Пронеся сквозь столетия свою красоту, этот вид художественного искусства продолжает захватывать своим очарованием.\r\n\r\nМы предлагаем широкий выбор витражных техник - от элитной классической техники, где элемент вырезается их цветного стекла, а затем спаивается между собой с помощью металлических протяжек, до современных бюджетных техник - пленочного или заливнго витража.\r\n\r\nСрок исполнения витражей на заказ от 7 дней! Уровень цен на изготовление витражей определяется индивидуально при работе с каждым конкретным заказом. Учитываются такие факторы, как сложность эскиза, процент заполнения поверхности стекла и класс используемых материалов. Поэтому стоимость работ по производству витражей может, заметно варьироваться, от недорогих до эксклюзивных дизайнерских работ сложной конфигурации.', 'D-1', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2018-02-16 13:45:14', '2018-02-16 10:45:14', '', 98, 'http://localhost/vit.loc/2018/02/16/98-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-02-16 13:54:09', '2018-02-16 10:54:09', '', 'Все категории', '', 'publish', 'closed', 'closed', '', 'vse-kategorii', '', '', '2018-02-16 13:54:09', '2018-02-16 10:54:09', '', 0, 'http://localhost/vit.loc/?page_id=106', 0, 'page', '', 0),
(107, 1, '2018-02-16 13:54:09', '2018-02-16 10:54:09', '', 'Все категории', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-02-16 13:54:09', '2018-02-16 10:54:09', '', 106, 'http://localhost/vit.loc/2018/02/16/106-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `nt_termmeta`
--

CREATE TABLE `nt_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `nt_terms`
--

CREATE TABLE `nt_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `nt_terms`
--

INSERT INTO `nt_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0),
(2, 'Витражи', 'vitrazhi', 0),
(3, 'Картины', 'kartiny', 0),
(4, 'Витражи в двери, окна', 'vitrazhi-v-dveri-okna', 0),
(5, 'Витражи для мебели', 'vitrazhi-dlya-mebeli', 0),
(6, 'Лампы Тиффани, люстры...', 'lampy-tiffani-lyustry', 0),
(7, 'Модульные картины', 'modulnye-kartiny', 0),
(8, 'Картины для интерьера', 'kartiny-dlya-interera', 0),
(9, 'Портреты на заказ', 'portrety-na-zakaz', 0),
(10, 'Живопись маслом', 'zhivopis-maslom', 0),
(11, 'Ручная мозайка', 'mozajka', 0),
(12, 'Мозаичное панно', 'mozaichnoe-panno', 0),
(13, 'Мозайка в ванну', 'mozajka-v-vannu', 0),
(14, 'Мозайка для бассейна', 'mozajka-dlya-bassejna', 0),
(15, 'Отделка фасада', 'otdelka-fasada', 0),
(16, 'Живопись', 'zhivopis', 0),
(17, 'Модульные картины', 'modulnye-kartiny-zhivopis', 0),
(18, 'Статьи', 'stati', 0),
(19, 'Дополнительно', 'dopolnitelno', 0),
(20, 'Английская технология', 'anglijskaya-tehnologiya', 0),
(21, 'Новые работы', 'novye-raboty', 0),
(22, 'Витрина', 'vitrina', 0),
(23, 'Современная жизнь', 'sovremennaya-zhizn', 0),
(24, 'Витражные техники', 'vitrazhnye-tehniki', 0),
(25, 'Витражи Тиффани', 'vitrazhi-tiffani', 0),
(26, 'Главная', 'glavnaya', 0),
(27, 'Технология', 'tehnologiya', 0),
(28, 'Портрет по фотографии', 'portret-po-fotografii', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `nt_term_relationships`
--

CREATE TABLE `nt_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `nt_term_relationships`
--

INSERT INTO `nt_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 2, 0),
(12, 4, 0),
(14, 2, 0),
(22, 2, 0),
(34, 1, 0),
(36, 18, 0),
(42, 22, 0),
(42, 23, 0),
(59, 26, 0),
(60, 26, 0),
(65, 26, 0),
(66, 26, 0),
(67, 26, 0),
(68, 26, 0),
(69, 26, 0),
(70, 26, 0),
(71, 26, 0),
(72, 26, 0),
(73, 26, 0),
(86, 28, 0),
(98, 2, 0),
(98, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `nt_term_taxonomy`
--

CREATE TABLE `nt_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `nt_term_taxonomy`
--

INSERT INTO `nt_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', 'Мы создаем художественные витражи для дизайна интерьера в различных техниках: тиффани, английская техника, фацетный, заливной, пескоструй. Каждый витраж – уникальная авторская работа, выполненная художником', 0, 1),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 2, 1),
(5, 5, 'category', '', 2, 0),
(6, 6, 'category', '', 2, 0),
(7, 7, 'category', '', 3, 0),
(8, 8, 'category', '', 3, 0),
(9, 9, 'category', '', 3, 0),
(10, 10, 'category', '', 3, 0),
(11, 11, 'category', 'Мозайка – декоративный вид искусства, изображение составляется из кусочков цветного стекла, камня, керамики и т.д. Мы выполняем художественные мозаики для дома, сада и бассейна по своим эскизам и по эскиза', 0, 0),
(12, 12, 'category', '', 11, 0),
(13, 13, 'category', '', 11, 0),
(14, 14, 'category', '', 11, 0),
(15, 15, 'category', '', 11, 0),
(16, 16, 'category', 'Картина – украшение любого интерьера. Наши картины написаны вручную, профессиональными художникам на холсте масляными красками. Принимаем индивидуальные заказы на портреты: живописный портрет, портрет в стиле поп-арт, акварельный порт...', 0, 0),
(17, 17, 'category', '', 16, 0),
(18, 18, 'category', '', 0, 0),
(19, 19, 'category', '', 0, 0),
(20, 20, 'category', '', 18, 0),
(21, 21, 'category', '', 19, 0),
(22, 22, 'category', '', 0, 1),
(23, 23, 'category', '', 22, 1),
(24, 24, 'category', '', 0, 0),
(25, 25, 'category', '', 24, 0),
(26, 26, 'nav_menu', '', 0, 11),
(27, 27, 'category', '', 0, 0),
(28, 28, 'category', 'Пришлите нам фото и мы создадим арт портрет в любом стиле\r\n\r\n', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `nt_usermeta`
--

CREATE TABLE `nt_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `nt_usermeta`
--

INSERT INTO `nt_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'nt_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'nt_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"782dda86644210c2b661962035ed05c2fa783dbecbb759851305a44f904c86c8";a:4:{s:10:"expiration";i:1518858214;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1518685414;}}'),
(17, 1, 'nt_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(19, 1, 'nt_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'nt_user-settings-time', '1518760260'),
(21, 1, 'acf_user_settings', 'a:0:{}'),
(22, 1, 'closedpostboxes_page', 'a:1:{i:0;s:23:"acf-group_5a8565eac326f";}'),
(23, 1, 'metaboxhidden_page', 'a:6:{i:0;s:23:"acf-group_5a856cfcd7570";i:1;s:12:"revisionsdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(24, 1, 'meta-box-order_page', 'a:4:{s:15:"acf_after_title";s:47:"acf-group_5a866005816ab,acf-group_5a8565eac326f";s:4:"side";s:36:"submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:83:"acf-group_5a856cfcd7570,revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(25, 1, 'screen_layout_page', '2'),
(26, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(27, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}');

-- --------------------------------------------------------

--
-- Структура таблицы `nt_users`
--

CREATE TABLE `nt_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `nt_users`
--

INSERT INTO `nt_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BCBjO2XqXny5X8pU3lsFIfDm6lTdDU/', 'admin', 'test@mail.kg', '', '2018-02-15 09:03:28', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `nt_commentmeta`
--
ALTER TABLE `nt_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `nt_comments`
--
ALTER TABLE `nt_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `nt_links`
--
ALTER TABLE `nt_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `nt_options`
--
ALTER TABLE `nt_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `nt_postmeta`
--
ALTER TABLE `nt_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `nt_posts`
--
ALTER TABLE `nt_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `nt_termmeta`
--
ALTER TABLE `nt_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `nt_terms`
--
ALTER TABLE `nt_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `nt_term_relationships`
--
ALTER TABLE `nt_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `nt_term_taxonomy`
--
ALTER TABLE `nt_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `nt_usermeta`
--
ALTER TABLE `nt_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `nt_users`
--
ALTER TABLE `nt_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `nt_commentmeta`
--
ALTER TABLE `nt_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `nt_comments`
--
ALTER TABLE `nt_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `nt_links`
--
ALTER TABLE `nt_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `nt_options`
--
ALTER TABLE `nt_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT для таблицы `nt_postmeta`
--
ALTER TABLE `nt_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=506;
--
-- AUTO_INCREMENT для таблицы `nt_posts`
--
ALTER TABLE `nt_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT для таблицы `nt_termmeta`
--
ALTER TABLE `nt_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `nt_terms`
--
ALTER TABLE `nt_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `nt_term_taxonomy`
--
ALTER TABLE `nt_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `nt_usermeta`
--
ALTER TABLE `nt_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `nt_users`
--
ALTER TABLE `nt_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
