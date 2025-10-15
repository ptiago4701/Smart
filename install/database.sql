-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2024 at 07:41 PM
-- Server version: 10.6.18-MariaDB-cll-lve-log
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `envatone_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `admin_type` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `email`, `image`, `status`, `admin_type`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'info.nemosoftso@gmail.com', '', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement`
--

CREATE TABLE `tbl_advertisement` (
  `id` int(11) NOT NULL,
  `ad_status` varchar(10) NOT NULL DEFAULT 'false',
  `ad_network` varchar(30) NOT NULL DEFAULT 'admob',
  `admob_publisher_id` text NOT NULL,
  `admob_banner_unit_id` text NOT NULL,
  `admob_interstitial_unit_id` text NOT NULL,
  `admob_native_unit_id` text NOT NULL,
  `admob_app_open_ad_unit_id` text NOT NULL,
  `admob_reward_ad_unit_id` text NOT NULL,
  `banner_movie` varchar(10) NOT NULL DEFAULT 'false',
  `banner_series` varchar(10) NOT NULL DEFAULT 'false',
  `banner_epg` varchar(10) NOT NULL DEFAULT 'false',
  `interstitial_post_list` varchar(10) NOT NULL DEFAULT 'false',
  `reward_ad_on_movie` varchar(10) NOT NULL DEFAULT 'false',
  `reward_ad_on_episodes` varchar(10) NOT NULL DEFAULT 'false',
  `reward_ad_on_live` varchar(10) NOT NULL DEFAULT 'false',
  `reward_ad_on_single` varchar(10) NOT NULL DEFAULT 'false',
  `reward_ad_on_local` varchar(10) NOT NULL DEFAULT 'false',
  `interstital_ad_click` int(10) NOT NULL DEFAULT 5,
  `reward_minutes` int(10) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_advertisement`
--

INSERT INTO `tbl_advertisement` (`id`, `ad_status`, `ad_network`, `admob_publisher_id`, `admob_banner_unit_id`, `admob_interstitial_unit_id`, `admob_native_unit_id`, `admob_app_open_ad_unit_id`, `admob_reward_ad_unit_id`, `banner_movie`, `banner_series`, `banner_epg`, `interstitial_post_list`, `reward_ad_on_movie`, `reward_ad_on_episodes`, `reward_ad_on_live`, `reward_ad_on_single`, `reward_ad_on_local`, `interstital_ad_click`, `reward_minutes`) VALUES
(1, 'true', 'admob', 'ca-app-pub-3940256099942544', 'ca-app-pub-3940256099942544/6300978111', 'ca-app-pub-3940256099942544/1033173712', '', '', 'ca-app-pub-3940256099942544/5224354917', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_custom_ads`
--

CREATE TABLE `tbl_custom_ads` (
  `id` int(11) NOT NULL,
  `ads_type` varchar(255) NOT NULL,
  `ads_title` varchar(255) NOT NULL,
  `ads_image` varchar(255) NOT NULL,
  `ads_redirect_type` varchar(255) NOT NULL,
  `ads_redirect_url` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int(11) NOT NULL,
  `notification_title` varchar(255) NOT NULL,
  `notification_msg` text NOT NULL,
  `notification_description` text NOT NULL,
  `notification_on` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `notification_title`, `notification_msg`, `notification_description`, `notification_on`) VALUES
(2, 'Test Notification', 'Test Notification  Sub Message', '<p>Test Notification Description</p>', 1697137496);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_policy_deletion`
--

CREATE TABLE `tbl_policy_deletion` (
  `id` int(11) NOT NULL,
  `policy_type` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `report_msg` text NOT NULL,
  `deletion_on` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_policy_deletion`
--

INSERT INTO `tbl_policy_deletion` (`id`, `policy_type`, `user_email`, `report_msg`, `deletion_on`, `status`) VALUES
(7, 'Clear Data', 'aas', '', '1699188618', 1),
(9, 'Clear Data', 'admin', '', '1710850106', 1),
(10, 'Delete Account', 'admin', '', '1710850110', 1),
(11, 'Delete Account', 'admin', '', '1710850111', 1),
(13, 'Clear Data', 'admin', '', '1710850133', 1),
(14, 'Clear Data', 'admin', '', '1711005061', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_poster_gallery`
--

CREATE TABLE `tbl_poster_gallery` (
  `id` int(11) NOT NULL,
  `poster_type` varchar(255) NOT NULL,
  `poster_image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_poster_gallery`
--

INSERT INTO `tbl_poster_gallery` (`id`, `poster_type`, `poster_image`, `status`) VALUES
(1, 'movie_ui', '89005_poster.jpg', 1),
(2, 'movie_ui', '68145_poster.jpg', 1),
(3, 'movie_ui', '11996_poster.jpg', 1),
(5, 'movie_ui', '49502_poster.png', 1),
(6, 'movie_ui', '46317_poster.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reports`
--

CREATE TABLE `tbl_reports` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `report_title` varchar(255) NOT NULL,
  `report_msg` text NOT NULL,
  `report_on` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `app_name` varchar(100) NOT NULL,
  `app_logo` varchar(200) NOT NULL,
  `app_email` varchar(100) NOT NULL,
  `app_author` varchar(100) NOT NULL,
  `app_contact` varchar(100) NOT NULL,
  `app_website` varchar(150) NOT NULL,
  `app_description` text NOT NULL,
  `app_developed_by` varchar(150) NOT NULL,
  `app_privacy_policy` text NOT NULL,
  `app_terms` text NOT NULL,
  `account_delete_intruction` text NOT NULL,
  `envato_buyer_name` varchar(100) NOT NULL,
  `envato_purchase_code` text NOT NULL,
  `envato_package_name` varchar(150) NOT NULL,
  `envato_api_key` text NOT NULL,
  `onesignal_app_id` text NOT NULL,
  `onesignal_rest_key` text NOT NULL,
  `is_rtl` varchar(10) NOT NULL DEFAULT 'false',
  `is_maintenance` varchar(10) NOT NULL DEFAULT 'false',
  `is_screenshot` varchar(10) NOT NULL DEFAULT 'false',
  `is_apk` varchar(10) NOT NULL DEFAULT 'false',
  `is_vpn` varchar(10) NOT NULL DEFAULT 'false',
  `is_xui_dns` varchar(10) NOT NULL DEFAULT 'false',
  `app_update_status` varchar(10) NOT NULL DEFAULT 'false',
  `app_new_version` double NOT NULL DEFAULT 1,
  `app_update_desc` text NOT NULL,
  `app_redirect_url` text NOT NULL,
  `custom_ads` varchar(10) NOT NULL DEFAULT 'false',
  `custom_ads_clicks` int(10) NOT NULL DEFAULT 12,
  `is_theme` varchar(255) NOT NULL,
  `is_dowload` varchar(255) NOT NULL DEFAULT 'true',
  `is_xui_radio` varchar(255) NOT NULL,
  `ad_network` varchar(30) NOT NULL DEFAULT 'admob',
  `publisher_id` text NOT NULL,
  `banner_ad` varchar(10) NOT NULL DEFAULT 'true',
  `banner_ad_id` text NOT NULL,
  `interstital_ad` varchar(10) NOT NULL DEFAULT 'true',
  `interstital_ad_id` text NOT NULL,
  `interstital_ad_click` int(10) NOT NULL DEFAULT 5,
  `ads_limits` varchar(10) NOT NULL DEFAULT 'true',
  `ads_count_click` int(10) NOT NULL DEFAULT 20,
  `is_select_xui` varchar(255) NOT NULL DEFAULT 'true',
  `is_select_stream` varchar(255) NOT NULL DEFAULT 'true',
  `is_select_playlist` varchar(255) NOT NULL DEFAULT 'true',
  `is_select_device_id` varchar(255) NOT NULL DEFAULT 'true',
  `is_select_single` varchar(255) NOT NULL DEFAULT 'true',
  `is_stream_dns` varchar(255) NOT NULL DEFAULT 'false',
  `is_stream_radio` varchar(255) NOT NULL DEFAULT 'false',
  `is_epg` varchar(255) NOT NULL,
  `is_local_storage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `app_name`, `app_logo`, `app_email`, `app_author`, `app_contact`, `app_website`, `app_description`, `app_developed_by`, `app_privacy_policy`, `app_terms`, `account_delete_intruction`, `envato_buyer_name`, `envato_purchase_code`, `envato_package_name`, `envato_api_key`, `onesignal_app_id`, `onesignal_rest_key`, `is_rtl`, `is_maintenance`, `is_screenshot`, `is_apk`, `is_vpn`, `is_xui_dns`, `app_update_status`, `app_new_version`, `app_update_desc`, `app_redirect_url`, `custom_ads`, `custom_ads_clicks`, `is_theme`, `is_dowload`, `is_xui_radio`, `ad_network`, `publisher_id`, `banner_ad`, `banner_ad_id`, `interstital_ad`, `interstital_ad_id`, `interstital_ad_click`, `ads_limits`, `ads_count_click`, `is_select_xui`, `is_select_stream`, `is_select_playlist`, `is_select_device_id`, `is_select_single`, `is_stream_dns`, `is_stream_radio`, `is_epg`, `is_local_storage`) VALUES
(1, 'StreamBox - Mobile', '44195_logo.png', 'info.nemosofts@gmail.com', 'nemosofts', '0356525684', 'nemosofts.com', 'Love this app? Let us Know in the Google Play Store how we can make it even better', 'thivakaran', '', '', '', '', '', '', '', '', '', 'false', 'false', 'false', 'false', 'false', 'true', 'false', 1, '', 'https://play.google.com/store/apps/details', 'false', 15, '1', 'true', 'false', 'admob', 'ca-app-pub-3940256099942544~3347511713', 'false', 'ca-app-pub-3940256099942544/6300978111', 'false', 'ca-app-pub-3940256099942544/1033173712', 20, 'true', 20, 'true', 'true', 'true', 'true', 'true', 'true', 'false', '2', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sidebar`
--

CREATE TABLE `tbl_sidebar` (
  `id` int(11) NOT NULL,
  `sidebar_type` varchar(255) NOT NULL,
  `sidebar_title` varchar(255) NOT NULL,
  `sidebar_icon` varchar(255) NOT NULL,
  `sidebar_editor` text NOT NULL,
  `sidebar_html` text NOT NULL,
  `sidebar_image` text NOT NULL,
  `sidebar_image_link` text NOT NULL DEFAULT '#',
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_sidebar`
--

INSERT INTO `tbl_sidebar` (`id`, `sidebar_type`, `sidebar_title`, `sidebar_icon`, `sidebar_editor`, `sidebar_html`, `sidebar_image`, `sidebar_image_link`, `status`) VALUES
(2, 'visual_editor', 'Visual Editor', 'ri-question-answer-fill', '<p>This is developed using the popular PHP framework <strong>Codeigniter</strong>. StreamBox this is website application for IPTV Player.</p>', '', '', '', 1),
(4, 'html_code', 'HTML Editor', 'ri-question-answer-line', '', '<h3>My First Heading</h3>\r\n<p>This is another paragraph.</p>\r\n<p><b>This text is bold</b></p>\r\n<p><i>This text is italic</i></p>\r\n<p>This is<sub> subscript</sub> and <sup>superscript</sup></p>', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_smtp_settings`
--

CREATE TABLE `tbl_smtp_settings` (
  `id` int(5) NOT NULL,
  `smtp_type` varchar(20) NOT NULL DEFAULT 'server',
  `smtp_host` varchar(150) NOT NULL,
  `smtp_email` varchar(150) NOT NULL,
  `smtp_password` text NOT NULL,
  `smtp_secure` varchar(20) NOT NULL,
  `port_no` varchar(10) NOT NULL,
  `smtp_ghost` varchar(150) NOT NULL,
  `smtp_gemail` varchar(150) NOT NULL,
  `smtp_gpassword` text NOT NULL,
  `smtp_gsecure` varchar(20) NOT NULL,
  `gport_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_smtp_settings`
--

INSERT INTO `tbl_smtp_settings` (`id`, `smtp_type`, `smtp_host`, `smtp_email`, `smtp_password`, `smtp_secure`, `port_no`, `smtp_ghost`, `smtp_gemail`, `smtp_gpassword`, `smtp_gsecure`, `gport_no`) VALUES
(1, 'gmail', '', '', '', 'ssl', '465', '', '', '', 'tls', 587);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stream_dns`
--

CREATE TABLE `tbl_stream_dns` (
  `id` int(11) NOT NULL,
  `dns_title` varchar(255) NOT NULL,
  `dns_base` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_stream_dns`
--

INSERT INTO `tbl_stream_dns` (`id`, `dns_title`, `dns_base`, `status`) VALUES
(1, 'Server 1', 'https://s2e.fun/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'xui',
  `user_name` varchar(60) NOT NULL,
  `user_password` text NOT NULL,
  `dns_base` text NOT NULL,
  `device_id` text NOT NULL,
  `registered_on` varchar(200) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `user_type`, `user_name`, `user_password`, `dns_base`, `device_id`, `registered_on`, `status`) VALUES
(5, 'xui', 'admin', 'admin', 'https://s2e.fun', '7034bd6df78edc84', '1717754151', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web_settings`
--

CREATE TABLE `tbl_web_settings` (
  `id` int(2) NOT NULL,
  `admin_panel` text NOT NULL,
  `site_name` text NOT NULL,
  `site_description` text NOT NULL,
  `site_keywords` text NOT NULL,
  `copyright_text` text NOT NULL,
  `web_logo_1` text NOT NULL,
  `web_logo_2` text NOT NULL,
  `web_favicon` text NOT NULL,
  `header_code` longtext NOT NULL,
  `footer_code` longtext NOT NULL,
  `contact_page_title` varchar(150) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` varchar(60) NOT NULL,
  `contact_email` varchar(60) NOT NULL,
  `android_app_url` text NOT NULL,
  `ios_app_url` text NOT NULL,
  `facebook_url` text NOT NULL,
  `twitter_url` text NOT NULL,
  `youtube_url` text NOT NULL,
  `instagram_url` text NOT NULL,
  `about_page_title` varchar(150) NOT NULL,
  `about_content` longtext NOT NULL,
  `about_status` varchar(10) NOT NULL DEFAULT 'true',
  `privacy_page_title` varchar(150) NOT NULL,
  `privacy_content` longtext NOT NULL,
  `privacy_page_status` varchar(10) NOT NULL DEFAULT 'true',
  `terms_of_use_page_title` varchar(150) NOT NULL,
  `terms_of_use_content` longtext NOT NULL,
  `terms_of_use_page_status` varchar(10) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_web_settings`
--

INSERT INTO `tbl_web_settings` (`id`, `admin_panel`, `site_name`, `site_description`, `site_keywords`, `copyright_text`, `web_logo_1`, `web_logo_2`, `web_favicon`, `header_code`, `footer_code`, `contact_page_title`, `address`, `contact_number`, `contact_email`, `android_app_url`, `ios_app_url`, `facebook_url`, `twitter_url`, `youtube_url`, `instagram_url`, `about_page_title`, `about_content`, `about_status`, `privacy_page_title`, `privacy_content`, `privacy_page_status`, `terms_of_use_page_title`, `terms_of_use_content`, `terms_of_use_page_status`) VALUES
(1, '', 'StreamBox', 'IPTV StreamBox is a fabulous video streaming player that allows your IPTV customers or end-users to stream content like Live TV, VOD, Series, and TV Catchup.', 'streaming, platform, streambox , iptv', 'Copyright © 2024 StreamBox - Video Streaming Web Application, All rights reserved.', '14383_web_favicon.svg', 'logo.jpg', '7810_web_favicon.png', '', '', '', 'your Address', '+7463459646', 'info.nemosofts@gnail.com', 'https://play.google.com/store/apps/details?id=com.app.name', 'https://www.apple.com/app-store/', 'https://www.facebook.com/', 'https://twitter.com', 'https://www.youtube.com/', 'https://www.instagram.com/', 'About Us', '<div>nemosofts built the tamilaudiopro . This SERVICE is provided by abishanait&nbsp;at no cost and is intended for use as is.</div>\r\n\r\n<div>This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.</div>\r\n\r\n<div>If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</div>\r\n\r\n<div>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at nemosofts&nbsp;unless otherwise defined in this Privacy Policy.</div>\r\n', 'true', 'Privacy Policy', '<h3>What personal data we collect and why we collect it</h3>\r\n\r\n<div><strong>Comments</strong></div>\r\n\r\n<div>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</div>\r\n\r\n<div>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</div>\r\n\r\n<h3><strong>Media</strong></h3>\r\n\r\n<div>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</div>\r\n\r\n<h3><strong>Contact forms</strong></h3>\r\n\r\n<h3><strong>Cookies</strong></h3>\r\n\r\n<div>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</div>\r\n\r\n<div>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</div>\r\n\r\n<div>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select “Remember Me”, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</div>\r\n\r\n<div>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</div>\r\n\r\n<h3><strong>Embedded content from other websites</strong></h3>\r\n\r\n<div>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</div>\r\n\r\n<div>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</div>\r\n\r\n<h3><strong>Analytics</strong></h3>\r\n\r\n<h3><strong>Who we share your data with</strong></h3>\r\n\r\n<h3><strong>How long we retain your data</strong></h3>\r\n\r\n<div>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</div>\r\n\r\n<div>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</div>\r\n\r\n<h3><strong>What rights you have over your data</strong></h3>\r\n\r\n<div>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</div>\r\n\r\n<h3><strong>Where we send your data</strong></h3>\r\n\r\n<div>Visitor comments may be checked through an automated spam detection service.</div>\r\n', 'true', 'Terms & Services', '<h2><strong>Introduction</strong></h2><p>This document (the “Terms”) together with the U.S. Privacy Policy (collectively the “Agreement”) sets out the terms and conditions governing visits, access and use of the service by the end user (“you”). </p><p>The term “you” includes additional registered users whenever permitted under the applicable subscription, visitors, and others who access or use any of the Services.</p><p>The “Services” means the service branded our site, that are compatible for similarly situated digital music services. These may include, but are not limited to websites and applications for desktops, tablets and mobile handsets, set-top boxes and stereo equipment. The Services also include your ability to edit certain Service Content.</p><h2><br></h2><h2><strong>Content restrictions</strong></h2><p>The Services contains content, such as sound recordings, audiovisual works, other video or audio works, clips, images, graphics, text, software, works of authorship, files, documents, applications, artwork, trademarks, trade names, metadata, album titles, sound recording titles, artist names, intellectual property, or materials relating thereto or any other materials, and their selection, coordination and arrangement (collectively, the “Service Content”). The Service Content is the property of our site and/or third parties and is protected by copyright under both United States and foreign laws. </p><p>User content</p><p>To the extent allowed by the Service</p>', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_xui_dns`
--

CREATE TABLE `tbl_xui_dns` (
  `id` int(11) NOT NULL,
  `dns_title` varchar(255) NOT NULL,
  `dns_base` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_xui_dns`
--

INSERT INTO `tbl_xui_dns` (`id`, `dns_title`, `dns_base`, `status`) VALUES
(11, 'Server 2', 'https://s2e.fun', 1),
(12, 'Server 3', 'https://s2e.fun', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_xui_dns_block`
--

CREATE TABLE `tbl_xui_dns_block` (
  `id` int(11) NOT NULL,
  `dns_base` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_xui_dns_block`
--

INSERT INTO `tbl_xui_dns_block` (`id`, `dns_base`, `status`) VALUES
(1, 'example.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_custom_ads`
--
ALTER TABLE `tbl_custom_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_policy_deletion`
--
ALTER TABLE `tbl_policy_deletion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_poster_gallery`
--
ALTER TABLE `tbl_poster_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reports`
--
ALTER TABLE `tbl_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sidebar`
--
ALTER TABLE `tbl_sidebar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_smtp_settings`
--
ALTER TABLE `tbl_smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_stream_dns`
--
ALTER TABLE `tbl_stream_dns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_web_settings`
--
ALTER TABLE `tbl_web_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_xui_dns`
--
ALTER TABLE `tbl_xui_dns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_xui_dns_block`
--
ALTER TABLE `tbl_xui_dns_block`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_custom_ads`
--
ALTER TABLE `tbl_custom_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_policy_deletion`
--
ALTER TABLE `tbl_policy_deletion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_poster_gallery`
--
ALTER TABLE `tbl_poster_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_reports`
--
ALTER TABLE `tbl_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sidebar`
--
ALTER TABLE `tbl_sidebar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_smtp_settings`
--
ALTER TABLE `tbl_smtp_settings`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_stream_dns`
--
ALTER TABLE `tbl_stream_dns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_web_settings`
--
ALTER TABLE `tbl_web_settings`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_xui_dns`
--
ALTER TABLE `tbl_xui_dns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_xui_dns_block`
--
ALTER TABLE `tbl_xui_dns_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
