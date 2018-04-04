-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 04 2018 г., 11:10
-- Версия сервера: 5.7.21-log
-- Версия PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `magento`
--

-- --------------------------------------------------------

--
-- Структура таблицы `adminnotification_inbox`
--

CREATE TABLE `adminnotification_inbox` (
  `notification_id` int(10) UNSIGNED NOT NULL COMMENT 'Notification id',
  `severity` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox';

--
-- Дамп данных таблицы `adminnotification_inbox`
--

INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 1, '2017-09-15 14:50:16', 'Magento Open Source 1.9.3.6 and SUPEE-10266 Security Enhancements – 9/14/2017', 'Magento Open Source 1.9.3.6 and SUPEE-10266 include critical security enhancements. Please update your site as soon as possible. More information is available in the release notes: \nhttp://devdocs.magento.com/guides/m1x/ce19-ee114/ce1.9_release-notes.html.\n', 'http://devdocs.magento.com/guides/m1x/ce19-ee114/ce1.9_release-notes.html', 0, 0),
(2, 1, '2017-11-29 17:06:29', 'Magento Open Source 1.9.3.7 Enhances Security - 11/28/2017', 'Magento Open Source 1.9.3.7 includes critical security enhancements. We encourage you to upgrade or patch as soon as is reasonably possible. Review the release notes for more information: \nhttp://devdocs.magento.com/guides/m1x/ce19-ee114/ce1.9_release-notes.html\n\n', 'http://devdocs.magento.com/guides/m1x/ce19-ee114/ce1.9_release-notes.html', 0, 0),
(3, 4, '2017-12-12 18:00:13', 'Magento Open Source 2.2.2 Accelerates Growth with Instant Purchase Checkout, Integrated Email Marketing Automation, Advanced Reporting, and More – 12/12/2017', 'Our newest release of Magento Open Source equips merchants with powerful tools to accelerate growth and improve operational efficiency. It boosts conversion rates with a streamlined Instant Purchase checkout, jump-starts sales with integrated dotmailer email marketing automation, delivers actionable insights through Advanced Reporting, and provides integrated multi-carrier shipping and fulfillment capabilities with Magento Shipping. https://magento.com/blog/magento-news/new-instant-purchase-checkout-boosts-sales ', 'https://magento.com/blog/magento-news/new-instant-purchase-checkout-boosts-sales ', 0, 0),
(4, 4, '2018-02-07 11:57:07', 'New Magento Security Scan Tool is available!', 'Magento has rolled out a new security scan tool that enables you to regularly monitor your sites and receive updates regarding known security risks, malware, and unauthorized access. Our  goal is to assist in ensuring the on-going security of your Magento sites. \n\nSecurity Scan is a free service of Magento, and provides over 30 security tests to identify potential vulnerabilities, such as missing Magento patches, configuration issues, and failure to follow security best practices. In addition, you\'ll receive real-time security status of your Magento sites and how to fix potential vulnerabilities.\n\nYou and your team, including authorized developers, can access the new tool directly within your Magento Account. And it is very easy to set up. \n\nTo learn more about the Security Scan Tool, \nlog into your Magento Account at https://account.magento.com/customer/account/.\n\nMy Account > Security Scan', 'https://account.magento.com/customer/account/', 0, 0),
(5, 1, '2018-02-27 17:45:55', 'Magento Open Source 1.9.3.8 and SUPEE-10570 Enhance Security and Functionality – 2/27/2018', 'Magento Open Source 1.9.3.8 and the SUPEE-10570 patch include critical security enhancements and feature updates, including support for recent USPS API changes. Review the release notes for more information: http://devdocs.magento.com/guides/m1x/ce19-ee114/ce1.9_release-notes.html ', 'http://devdocs.magento.com/guides/m1x/ce19-ee114/ce1.9_release-notes.html', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_assert`
--

CREATE TABLE `admin_assert` (
  `assert_id` int(10) UNSIGNED NOT NULL COMMENT 'Assert ID',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert Type',
  `assert_data` text COMMENT 'Assert Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Assert Table';

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role`
--

CREATE TABLE `admin_role` (
  `role_id` int(10) UNSIGNED NOT NULL COMMENT 'Role ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';

--
-- Дамп данных таблицы `admin_role`
--

INSERT INTO `admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, 'Administrators'),
(2, 1, 2, 0, 'U', 1, 'Oleg');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_rule`
--

CREATE TABLE `admin_rule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule ID',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Assert ID',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role Type',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';

--
-- Дамп данных таблицы `admin_rule`
--

INSERT INTO `admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
(1, 1, 'all', NULL, 0, 'G', 'allow');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_user`
--

CREATE TABLE `admin_user` (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(100) DEFAULT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User Created Time',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin User Table';

--
-- Дамп данных таблицы `admin_user`
--

INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`) VALUES
(1, 'Oleg', 'Pristashkin', 'admin@email.com', 'root', 'cfa7e384e08e7ee6861838fa9d39363f:uUk9bq2Xd3DoRibMtKJxHJfPrHU0eWfl', '2018-03-29 22:01:07', '2018-03-29 22:01:07', '2018-04-04 07:43:45', 24, 0, 1, 'a:1:{s:11:\"configState\";a:42:{s:14:\"design_package\";s:1:\"0\";s:12:\"design_theme\";s:1:\"0\";s:11:\"design_head\";s:1:\"0\";s:13:\"design_header\";s:1:\"0\";s:13:\"design_footer\";s:1:\"0\";s:16:\"design_watermark\";s:1:\"0\";s:17:\"design_pagination\";s:1:\"1\";s:12:\"design_email\";s:1:\"0\";s:16:\"catalog_frontend\";s:1:\"1\";s:15:\"catalog_sitemap\";s:1:\"0\";s:14:\"catalog_review\";s:1:\"0\";s:21:\"catalog_product_image\";s:1:\"0\";s:20:\"catalog_productalert\";s:1:\"0\";s:25:\"catalog_productalert_cron\";s:1:\"0\";s:19:\"catalog_placeholder\";s:1:\"0\";s:25:\"catalog_recently_products\";s:1:\"0\";s:13:\"catalog_price\";s:1:\"0\";s:26:\"catalog_layered_navigation\";s:1:\"0\";s:18:\"catalog_navigation\";s:1:\"0\";s:11:\"catalog_seo\";s:1:\"0\";s:14:\"catalog_search\";s:1:\"0\";s:20:\"catalog_downloadable\";s:1:\"0\";s:22:\"catalog_custom_options\";s:1:\"0\";s:11:\"system_csrf\";s:1:\"1\";s:11:\"system_cron\";s:1:\"0\";s:11:\"system_smtp\";s:1:\"0\";s:15:\"system_currency\";s:1:\"0\";s:10:\"system_log\";s:1:\"0\";s:24:\"system_adminnotification\";s:1:\"0\";s:26:\"system_external_page_cache\";s:1:\"0\";s:17:\"system_import_csv\";s:1:\"0\";s:17:\"system_export_csv\";s:1:\"0\";s:13:\"system_backup\";s:1:\"0\";s:34:\"system_media_storage_configuration\";s:1:\"0\";s:12:\"dev_restrict\";s:1:\"1\";s:9:\"dev_debug\";s:1:\"1\";s:20:\"dev_translate_inline\";s:1:\"1\";s:7:\"dev_log\";s:1:\"1\";s:6:\"dev_js\";s:1:\"0\";s:7:\"dev_css\";s:1:\"0\";s:24:\"cataloginventory_options\";s:1:\"1\";s:29:\"cataloginventory_item_options\";s:1:\"0\";}}', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `api2_acl_attribute`
--

CREATE TABLE `api2_acl_attribute` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `user_type` varchar(20) NOT NULL COMMENT 'Type of user',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `operation` varchar(20) NOT NULL COMMENT 'Operation',
  `allowed_attributes` text COMMENT 'Allowed attributes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Filter ACL Attributes';

-- --------------------------------------------------------

--
-- Структура таблицы `api2_acl_role`
--

CREATE TABLE `api2_acl_role` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `role_name` varchar(255) NOT NULL COMMENT 'Name of role'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Roles';

--
-- Дамп данных таблицы `api2_acl_role`
--

INSERT INTO `api2_acl_role` (`entity_id`, `created_at`, `updated_at`, `role_name`) VALUES
(1, '2018-03-30 00:51:46', NULL, 'Guest'),
(2, '2018-03-30 00:51:46', NULL, 'Customer');

-- --------------------------------------------------------

--
-- Структура таблицы `api2_acl_rule`
--

CREATE TABLE `api2_acl_rule` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `role_id` int(10) UNSIGNED NOT NULL COMMENT 'Role ID',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `privilege` varchar(20) DEFAULT NULL COMMENT 'ACL Privilege'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Rules';

-- --------------------------------------------------------

--
-- Структура таблицы `api2_acl_user`
--

CREATE TABLE `api2_acl_user` (
  `admin_id` int(10) UNSIGNED NOT NULL COMMENT 'Admin ID',
  `role_id` int(10) UNSIGNED NOT NULL COMMENT 'Role ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Users';

-- --------------------------------------------------------

--
-- Структура таблицы `api_assert`
--

CREATE TABLE `api_assert` (
  `assert_id` int(10) UNSIGNED NOT NULL COMMENT 'Assert id',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert type',
  `assert_data` text COMMENT 'Assert additional data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Asserts';

-- --------------------------------------------------------

--
-- Структура таблицы `api_role`
--

CREATE TABLE `api_role` (
  `role_id` int(10) UNSIGNED NOT NULL COMMENT 'Role id',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent role id',
  `tree_level` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role level in tree',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort order to display on admin area',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role type',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User id',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Roles';

-- --------------------------------------------------------

--
-- Структура таблицы `api_rule`
--

CREATE TABLE `api_rule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Api rule Id',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Api role Id',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Module code',
  `api_privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Assert id',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role type',
  `api_permission` varchar(10) DEFAULT NULL COMMENT 'Permission'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Rules';

-- --------------------------------------------------------

--
-- Структура таблицы `api_session`
--

CREATE TABLE `api_session` (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'User id',
  `logdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login date',
  `sessid` varchar(40) DEFAULT NULL COMMENT 'Sessioin id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Sessions';

-- --------------------------------------------------------

--
-- Структура таблицы `api_user`
--

CREATE TABLE `api_user` (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'User id',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'First name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'Last name',
  `email` varchar(128) DEFAULT NULL COMMENT 'Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'Nickname',
  `api_key` varchar(100) DEFAULT NULL COMMENT 'Api key',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User record create date',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User record modify date',
  `lognum` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quantity of log ins',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Refresh ACL flag',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Account status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Users';

-- --------------------------------------------------------

--
-- Структура таблицы `captcha_log`
--

CREATE TABLE `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

-- --------------------------------------------------------

--
-- Структура таблицы `cataloginventory_stock`
--

CREATE TABLE `cataloginventory_stock` (
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';

--
-- Дамп данных таблицы `cataloginventory_stock`
--

INSERT INTO `cataloginventory_stock` (`stock_id`, `stock_name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- Структура таблицы `cataloginventory_stock_item`
--

CREATE TABLE `cataloginventory_stock_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';

--
-- Дамп данных таблицы `cataloginventory_stock_item`
--

INSERT INTO `cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_auto`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_inc`, `enable_qty_increments`, `is_decimal_divided`) VALUES
(1, 1, 1, '10.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(2, 2, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(3, 3, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(4, 4, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(5, 5, 1, '10.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(6, 6, 1, '10.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(7, 7, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 0, '10.0000', 0, 1, 0),
(8, 8, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 0, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(9, 9, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 0, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(10, 10, 1, '10.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(11, 11, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(12, 12, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 0, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(13, 13, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 0, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(14, 14, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(15, 15, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(16, 16, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(17, 17, 1, '200.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cataloginventory_stock_status`
--

CREATE TABLE `cataloginventory_stock_status` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Дамп данных таблицы `cataloginventory_stock_status`
--

INSERT INTO `cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 1, 1, '10.0000', 1),
(2, 1, 1, '1000.0000', 1),
(3, 1, 1, '100.0000', 1),
(4, 1, 1, '100.0000', 1),
(5, 1, 1, '10.0000', 1),
(6, 1, 1, '10.0000', 1),
(7, 1, 1, '0.0000', 0),
(8, 1, 1, '0.0000', 0),
(9, 1, 1, '0.0000', 0),
(10, 1, 1, '10.0000', 1),
(11, 1, 1, '100.0000', 1),
(15, 1, 1, '100.0000', 1),
(16, 1, 1, '100.0000', 1),
(17, 1, 1, '200.0000', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cataloginventory_stock_status_idx`
--

CREATE TABLE `cataloginventory_stock_status_idx` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

--
-- Дамп данных таблицы `cataloginventory_stock_status_idx`
--

INSERT INTO `cataloginventory_stock_status_idx` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 1, 1, '0.0000', 0),
(2, 1, 1, '0.0000', 0),
(3, 1, 1, '0.0000', 0),
(4, 1, 1, '0.0000', 0),
(5, 1, 1, '0.0000', 0),
(6, 1, 1, '0.0000', 0),
(7, 1, 1, '0.0000', 0),
(8, 1, 1, '0.0000', 0),
(9, 1, 1, '0.0000', 0),
(10, 1, 1, '0.0000', 0),
(11, 1, 1, '0.0000', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cataloginventory_stock_status_tmp`
--

CREATE TABLE `cataloginventory_stock_status_tmp` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

-- --------------------------------------------------------

--
-- Структура таблицы `catalogrule`
--

CREATE TABLE `catalogrule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From Date',
  `to_date` date DEFAULT NULL COMMENT 'To Date',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `sub_is_enable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Rule Enable For Subitems',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule';

-- --------------------------------------------------------

--
-- Структура таблицы `catalogrule_affected_product`
--

CREATE TABLE `catalogrule_affected_product` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Affected Product';

-- --------------------------------------------------------

--
-- Структура таблицы `catalogrule_customer_group`
--

CREATE TABLE `catalogrule_customer_group` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Структура таблицы `catalogrule_group_website`
--

CREATE TABLE `catalogrule_group_website` (
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- --------------------------------------------------------

--
-- Структура таблицы `catalogrule_product`
--

CREATE TABLE `catalogrule_product` (
  `rule_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product Id',
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

-- --------------------------------------------------------

--
-- Структура таблицы `catalogrule_product_price`
--

CREATE TABLE `catalogrule_product_price` (
  `rule_product_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

-- --------------------------------------------------------

--
-- Структура таблицы `catalogrule_website`
--

CREATE TABLE `catalogrule_website` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Структура таблицы `catalogsearch_fulltext`
--

CREATE TABLE `catalogsearch_fulltext` (
  `fulltext_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `data_index` longtext COMMENT 'Data index'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

--
-- Дамп данных таблицы `catalogsearch_fulltext`
--

INSERT INTO `catalogsearch_fulltext` (`fulltext_id`, `product_id`, `store_id`, `data_index`) VALUES
(33, 1, 1, '2|None|Йогуртница Elbee E-24801|Таким образом, новая модель организационной деятельности способствует подготовке и реализации форм воздействия. Разнообразный и богатый опыт выбранный нами инновационный путь требует от нас системного анализа существующих финансовых и административных условий! Практический опыт показывает, что консультация с профессионалами из IT напрямую зависит от экономической целесообразности принимаемых решений! Равным образом рамки и место обучения кадров напрямую зависит от соответствующих условий активизации.|Таким образом, новая модель организационной деятельности спос|20|1'),
(34, 2, 1, '3|None|Йогуртница Moulinex YG 2301|Дорогие друзья, реализация намеченного плана развития обеспечивает актуальность ключевых компонентов планируемого обновления? Дорогие друзья, сложившаяся структура организации требует от нас системного анализа модели развития?|Дорогие друзья, реализация намеченного плана развития обеспечивает актуальность ключевых компонентов планируемого обновления? Дорогие друзья, сложившаяся структура организации требует от нас системного анализа модели развития?|40|1'),
(36, 3, 1, '4|None|Йогуртница Hilton JM-3801 Beige|Не следует, однако, забывать о том, что сложившаяся структура организации позволяет выполнить важнейшие задания по разработке системы обучения кадров, соответствующей насущным потребностям. С другой стороны повышение уровня гражданского сознания способствует подготовке и реализации системы масштабного изменения ряда параметров.|Не следует, однако, забывать о том, что сложившаяся структура организации позволяет выполнить важнейшие задания по разработке системы обучения кадров, соответствующей насущным потребностям. С другой стороны повышение уровня гражданского сознания способствует подготовке и реализации системы масштабного изменения ряда параметров.|10|1'),
(37, 4, 1, '5|None|Йогуртница Mystery MYM-6001|Йогуртница Mystery MYM-6001|Йогуртница Mystery MYM-6001|35|1'),
(38, 5, 1, '6|None|Gorenje S450E|Gorenje S450E|Gorenje S450E|50|1'),
(39, 6, 1, '7|None|Moulinex DJ 9058 32|Moulinex DJ 9058 32|Moulinex DJ 9058 32|170|1'),
(50, 10, 1, '11|None|Вытяжка Eleyus Storm 380 60 IS|Вытяжка Eleyus Storm 380 60 IS|Вытяжка Eleyus Storm 380 60 IS|60|1'),
(49, 11, 1, '12|None|Вытяжка Pyramida TL 50 WH|Вытяжка Pyramida TL 50 WH|Вытяжка Pyramida TL 50 WH|80|1'),
(48, 15, 1, '17|None|ТВ-антенна Eurosky ES-005A Black|ТВ-антенна Eurosky ES-005A Black|ТВ-антенна Eurosky ES-005A Black|8|1'),
(47, 16, 1, '18|None|ТВ-антенна Мотылек M-1|ТВ-антенна Мотылек M-1|ТВ-антенна Мотылек M-1|11|1'),
(44, 17, 1, '19|None|ТВ-ресивер DVB-T2 Ergo 1217 (T2 1217)|ТВ-ресивер DVB-T2 Ergo 1217 (T2 1217)|ТВ-ресивер DVB-T2 Ergo 1217 (T2 1217)|15|1');

-- --------------------------------------------------------

--
-- Структура таблицы `catalogsearch_query`
--

CREATE TABLE `catalogsearch_query` (
  `query_id` int(10) UNSIGNED NOT NULL COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `synonym_for` varchar(255) DEFAULT NULL COMMENT 'Synonym for',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search query table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalogsearch_result`
--

CREATE TABLE `catalogsearch_result` (
  `query_id` int(10) UNSIGNED NOT NULL COMMENT 'Query ID',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product ID',
  `relevance` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Relevance'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_anc_categs_index_idx`
--

CREATE TABLE `catalog_category_anc_categs_index_idx` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_anc_categs_index_tmp`
--

CREATE TABLE `catalog_category_anc_categs_index_tmp` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Temp Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_anc_products_index_idx`
--

CREATE TABLE `catalog_category_anc_products_index_idx` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) UNSIGNED DEFAULT NULL COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_anc_products_index_tmp`
--

CREATE TABLE `catalog_category_anc_products_index_tmp` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) UNSIGNED DEFAULT NULL COMMENT 'Position'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_entity`
--

CREATE TABLE `catalog_category_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

--
-- Дамп данных таблицы `catalog_category_entity`
--

INSERT INTO `catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 3, 0, 0, '2018-03-29 21:54:25', '2018-03-29 21:54:27', '1', 0, 0, 3),
(2, 3, 3, 1, '2018-03-29 21:54:32', '2018-03-29 21:54:32', '1/2', 1, 1, 2),
(4, 3, 3, 2, '2018-03-30 00:32:13', '2018-04-01 23:35:21', '1/2/4', 1, 2, 0),
(5, 3, 3, 2, '2018-03-30 00:32:43', '2018-04-02 01:58:55', '1/2/5', 2, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_entity_datetime`
--

CREATE TABLE `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';

--
-- Дамп данных таблицы `catalog_category_entity_datetime`
--

INSERT INTO `catalog_category_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(5, 3, 59, 0, 4, NULL),
(6, 3, 60, 0, 4, NULL),
(7, 3, 59, 0, 5, NULL),
(8, 3, 60, 0, 5, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_entity_decimal`
--

CREATE TABLE `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table';

--
-- Дамп данных таблицы `catalog_category_entity_decimal`
--

INSERT INTO `catalog_category_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(2, 3, 70, 0, 4, NULL),
(3, 3, 70, 0, 5, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_entity_int`
--

CREATE TABLE `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table';

--
-- Дамп данных таблицы `catalog_category_entity_int`
--

INSERT INTO `catalog_category_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 67, 0, 1, 1),
(2, 3, 67, 1, 1, 1),
(3, 3, 42, 0, 2, 1),
(4, 3, 67, 0, 2, 1),
(5, 3, 42, 1, 2, 1),
(6, 3, 67, 1, 2, 1),
(14, 3, 42, 0, 4, 1),
(15, 3, 67, 0, 4, 1),
(16, 3, 50, 0, 4, 4),
(17, 3, 51, 0, 4, 0),
(18, 3, 68, 0, 4, 0),
(19, 3, 69, 0, 4, 0),
(20, 3, 42, 0, 5, 1),
(21, 3, 67, 0, 5, 1),
(22, 3, 50, 0, 5, 5),
(23, 3, 51, 0, 5, 0),
(24, 3, 68, 0, 5, 1),
(25, 3, 69, 0, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_entity_text`
--

CREATE TABLE `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';

--
-- Дамп данных таблицы `catalog_category_entity_text`
--

INSERT INTO `catalog_category_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 65, 0, 1, NULL),
(2, 3, 65, 1, 1, NULL),
(3, 3, 65, 0, 2, NULL),
(4, 3, 65, 1, 2, NULL),
(15, 3, 44, 0, 4, NULL),
(16, 3, 47, 0, 4, NULL),
(17, 3, 48, 0, 4, NULL),
(18, 3, 62, 0, 4, NULL),
(19, 3, 65, 0, 4, NULL),
(20, 3, 44, 0, 5, NULL),
(21, 3, 47, 0, 5, NULL),
(22, 3, 48, 0, 5, NULL),
(23, 3, 62, 0, 5, NULL),
(24, 3, 65, 0, 5, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_entity_varchar`
--

CREATE TABLE `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table';

--
-- Дамп данных таблицы `catalog_category_entity_varchar`
--

INSERT INTO `catalog_category_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 41, 0, 1, 'Root Catalog'),
(2, 3, 41, 1, 1, 'Root Catalog'),
(3, 3, 43, 1, 1, 'root-catalog'),
(4, 3, 41, 0, 2, 'Default Category'),
(5, 3, 41, 1, 2, 'Default Category'),
(6, 3, 49, 1, 2, 'PRODUCTS'),
(7, 3, 43, 1, 2, 'default-category'),
(18, 3, 41, 0, 4, 'Appliances'),
(19, 3, 46, 0, 4, NULL),
(20, 3, 49, 0, 4, 'PRODUCTS_AND_PAGE'),
(21, 3, 58, 0, 4, NULL),
(22, 3, 61, 0, 4, NULL),
(23, 3, 43, 0, 4, 'appliances'),
(24, 3, 41, 0, 5, 'Test2'),
(25, 3, 46, 0, 5, NULL),
(26, 3, 49, 0, 5, 'PRODUCTS_AND_PAGE'),
(27, 3, 58, 0, 5, NULL),
(28, 3, 61, 0, 5, NULL),
(29, 3, 43, 0, 5, 'test2'),
(39, 3, 57, 1, 4, 'appliances.html'),
(40, 3, 57, 0, 4, 'appliances.html'),
(41, 3, 57, 1, 5, 'test2.html'),
(42, 3, 57, 0, 5, 'test2.html');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_flat_store_1`
--

CREATE TABLE `catalog_category_flat_store_1` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'entity_id',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'parent_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'path',
  `position` int(11) NOT NULL COMMENT 'position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'level',
  `children_count` int(11) NOT NULL COMMENT 'children_count',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `all_children` text COMMENT 'All Children',
  `available_sort_by` text COMMENT 'Available Product Listing Sort By',
  `children` text COMMENT 'Children',
  `custom_apply_to_products` int(11) DEFAULT NULL COMMENT 'Apply To Products',
  `custom_design` varchar(255) DEFAULT NULL COMMENT 'Custom Design',
  `custom_design_from` datetime DEFAULT NULL COMMENT 'Active From',
  `custom_design_to` datetime DEFAULT NULL COMMENT 'Active To',
  `custom_layout_update` text COMMENT 'Custom Layout Update',
  `custom_use_parent_settings` int(11) DEFAULT NULL COMMENT 'Use Parent Category Settings',
  `default_sort_by` varchar(255) DEFAULT NULL COMMENT 'Default Product Listing Sort By',
  `description` text COMMENT 'Description',
  `display_mode` varchar(255) DEFAULT NULL COMMENT 'Display Mode',
  `filter_price_range` decimal(12,4) DEFAULT NULL COMMENT 'Layered Navigation Price Step',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `include_in_menu` int(11) DEFAULT NULL COMMENT 'Include in Navigation Menu',
  `is_active` int(11) DEFAULT NULL COMMENT 'Is Active',
  `is_anchor` int(11) DEFAULT NULL COMMENT 'Is Anchor',
  `landing_page` int(11) DEFAULT NULL COMMENT 'CMS Block',
  `meta_description` text COMMENT 'Meta Description',
  `meta_keywords` text COMMENT 'Meta Keywords',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `path_in_store` text COMMENT 'Path In Store',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'URL Key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'Url Path'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Flat (Store 1)';

--
-- Дамп данных таблицы `catalog_category_flat_store_1`
--

INSERT INTO `catalog_category_flat_store_1` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `all_children`, `available_sort_by`, `children`, `custom_apply_to_products`, `custom_design`, `custom_design_from`, `custom_design_to`, `custom_layout_update`, `custom_use_parent_settings`, `default_sort_by`, `description`, `display_mode`, `filter_price_range`, `image`, `include_in_menu`, `is_active`, `is_anchor`, `landing_page`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `page_layout`, `path_in_store`, `url_key`, `url_path`) VALUES
(1, 0, '2018-03-29 21:54:25', '2018-03-29 21:54:27', '1', 0, 0, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Root Catalog', NULL, NULL, 'root-catalog', NULL),
(2, 1, '2018-03-29 21:54:32', '2018-03-29 21:54:32', '1/2', 1, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'Default Category', NULL, NULL, 'default-category', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_product`
--

CREATE TABLE `catalog_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Дамп данных таблицы `catalog_category_product`
--

INSERT INTO `catalog_category_product` (`category_id`, `product_id`, `position`) VALUES
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(2, 4, 1),
(2, 5, 1),
(2, 6, 1),
(2, 7, 1),
(2, 8, 1),
(2, 9, 1),
(2, 10, 1),
(2, 11, 1),
(2, 12, 1),
(2, 13, 1),
(2, 14, 1),
(2, 15, 1),
(2, 16, 1),
(2, 17, 1),
(4, 7, 1),
(4, 8, 1),
(4, 9, 1),
(4, 10, 1),
(4, 11, 1),
(4, 12, 1),
(4, 13, 1),
(4, 14, 1),
(4, 15, 1),
(4, 16, 1),
(4, 17, 1),
(5, 1, 1),
(5, 2, 1),
(5, 3, 1),
(5, 4, 1),
(5, 5, 1),
(5, 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_product_index`
--

CREATE TABLE `catalog_category_product_index` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Дамп данных таблицы `catalog_category_product_index`
--

INSERT INTO `catalog_category_product_index` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(2, 1, 1, 1, 1, 4),
(2, 2, 1, 1, 1, 4),
(2, 3, 1, 1, 1, 4),
(2, 4, 1, 1, 1, 4),
(2, 5, 1, 1, 1, 4),
(2, 6, 1, 1, 1, 4),
(2, 7, 1, 1, 1, 4),
(2, 8, 1, 1, 1, 4),
(2, 9, 1, 1, 1, 4),
(2, 10, 1, 1, 1, 4),
(2, 11, 1, 1, 1, 4),
(2, 12, 1, 1, 1, 4),
(2, 13, 1, 1, 1, 4),
(2, 14, 1, 1, 1, 4),
(2, 15, 1, 1, 1, 4),
(2, 16, 1, 1, 1, 4),
(2, 17, 1, 1, 1, 4),
(4, 7, 1, 1, 1, 4),
(4, 8, 1, 1, 1, 4),
(4, 9, 1, 1, 1, 4),
(4, 10, 1, 1, 1, 4),
(4, 11, 1, 1, 1, 4),
(4, 12, 1, 1, 1, 4),
(4, 13, 1, 1, 1, 4),
(4, 14, 1, 1, 1, 4),
(4, 15, 1, 1, 1, 4),
(4, 16, 1, 1, 1, 4),
(4, 17, 1, 1, 1, 4),
(5, 1, 1, 1, 1, 4),
(5, 2, 1, 1, 1, 4),
(5, 3, 1, 1, 1, 4),
(5, 4, 1, 1, 1, 4),
(5, 5, 1, 1, 1, 4),
(5, 6, 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_product_index_enbl_idx`
--

CREATE TABLE `catalog_category_product_index_enbl_idx` (
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_product_index_enbl_tmp`
--

CREATE TABLE `catalog_category_product_index_enbl_tmp` (
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visibility'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Temp Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_product_index_idx`
--

CREATE TABLE `catalog_category_product_index_idx` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category_product_index_tmp`
--

CREATE TABLE `catalog_category_product_index_tmp` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_compare_item`
--

CREATE TABLE `catalog_compare_item` (
  `catalog_compare_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Compare Item ID',
  `visitor_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_eav_attribute`
--

CREATE TABLE `catalog_eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `is_configurable` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Configurable',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Дамп данных таблицы `catalog_eav_attribute`
--

INSERT INTO `catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `is_configurable`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`) VALUES
(41, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(42, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(43, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(44, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 0, 0, 1, 0),
(45, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(46, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(47, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(48, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(49, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(50, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(51, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(52, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(53, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(54, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(55, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(56, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(57, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(58, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(59, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(60, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(62, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(63, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(64, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(65, 'adminhtml/catalog_category_helper_sortby_available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(66, 'adminhtml/catalog_category_helper_sortby_default', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(67, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(68, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(69, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(70, 'adminhtml/catalog_category_helper_pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(71, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 0, 0, 0),
(72, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, NULL, 1, 0, 1, 0),
(73, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, NULL, 1, 0, 1, 0),
(74, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 0, 0, 0),
(75, NULL, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 'simple,configurable,virtual,bundle,downloadable', 1, 0, 0, 0),
(76, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(77, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(78, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(79, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'virtual,downloadable', 0, 0, 0, 0),
(80, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,bundle', 0, 0, 0, 0),
(81, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(82, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(83, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(84, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(85, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(86, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(87, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(88, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(89, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(90, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'configurable', 0, 0, 0, 0),
(91, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(92, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(93, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(94, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(95, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(96, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(97, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(98, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(99, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(100, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(101, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(102, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(103, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(104, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(105, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(106, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(107, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(108, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(109, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(110, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(111, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(112, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(113, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(114, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(115, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(116, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(117, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,configurable,bundle,grouped', 0, 0, 0, 0),
(118, 'adminhtml/catalog_product_helper_form_msrp_enabled', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(119, 'adminhtml/catalog_product_helper_form_msrp_price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(120, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(121, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,downloadable,bundle', 1, 0, 0, 0),
(122, 'giftmessage/adminhtml_product_helper_form_config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(123, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(124, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0),
(125, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(126, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(127, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(128, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(129, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(130, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(131, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(132, NULL, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(133, NULL, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(134, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(135, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_bundle_option`
--

CREATE TABLE `catalog_product_bundle_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_bundle_option_value`
--

CREATE TABLE `catalog_product_bundle_option_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value Id',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_bundle_price_index`
--

CREATE TABLE `catalog_product_bundle_price_index` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_bundle_selection`
--

CREATE TABLE `catalog_product_bundle_selection` (
  `selection_id` int(10) UNSIGNED NOT NULL COMMENT 'Selection Id',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_bundle_selection_price`
--

CREATE TABLE `catalog_product_bundle_selection_price` (
  `selection_id` int(10) UNSIGNED NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_bundle_stock_index`
--

CREATE TABLE `catalog_product_bundle_stock_index` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_enabled_index`
--

CREATE TABLE `catalog_product_enabled_index` (
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Visibility Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_entity`
--

CREATE TABLE `catalog_product_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table';

--
-- Дамп данных таблицы `catalog_product_entity`
--

INSERT INTO `catalog_product_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'simple', '2', 0, 0, '2018-03-30 02:07:33', '2018-04-01 23:17:08'),
(2, 4, 4, 'simple', '3', 0, 0, '2018-03-30 02:10:23', '2018-04-01 23:17:30'),
(3, 4, 4, 'simple', '4', 0, 0, '2018-03-30 02:16:23', '2018-04-01 23:18:03'),
(4, 4, 4, 'simple', '5', 0, 0, '2018-03-30 03:19:03', '2018-04-01 23:18:25'),
(5, 4, 4, 'simple', '6', 0, 0, '2018-03-30 03:23:12', '2018-04-01 23:19:10'),
(6, 4, 4, 'simple', '7', 0, 0, '2018-03-30 03:30:25', '2018-04-01 23:19:32'),
(7, 4, 4, 'grouped', '8', 0, 0, '2018-03-30 03:49:46', '2018-04-01 23:20:09'),
(8, 4, 4, 'grouped', '9', 0, 0, '2018-03-30 04:25:00', '2018-04-01 23:20:48'),
(9, 4, 4, 'grouped', '10', 0, 0, '2018-03-30 04:26:43', '2018-04-01 23:21:27'),
(10, 4, 4, 'simple', '11', 0, 0, '2018-03-30 04:39:08', '2018-04-03 01:50:42'),
(11, 4, 4, 'simple', '12', 0, 0, '2018-03-30 04:44:08', '2018-04-03 01:50:08'),
(12, 4, 4, 'configurable', '14', 0, 0, '2018-03-30 08:44:53', '2018-04-01 23:22:47'),
(13, 4, 4, 'configurable', '15', 0, 0, '2018-03-30 08:47:21', '2018-04-01 23:23:10'),
(14, 4, 4, 'configurable', '16', 0, 0, '2018-03-30 08:48:55', '2018-04-01 23:23:31'),
(15, 4, 4, 'simple', '17', 0, 0, '2018-03-30 21:51:32', '2018-04-03 01:49:46'),
(16, 4, 4, 'simple', '18', 0, 0, '2018-03-30 21:55:26', '2018-04-03 01:49:25'),
(17, 4, 4, 'simple', '19', 0, 0, '2018-03-30 21:58:41', '2018-04-03 01:47:57');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_entity_datetime`
--

CREATE TABLE `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table';

--
-- Дамп данных таблицы `catalog_product_entity_datetime`
--

INSERT INTO `catalog_product_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 93, 0, 1, NULL),
(2, 4, 94, 0, 1, NULL),
(3, 4, 77, 0, 1, NULL),
(4, 4, 78, 0, 1, NULL),
(5, 4, 104, 0, 1, NULL),
(6, 4, 105, 0, 1, NULL),
(7, 4, 93, 0, 2, NULL),
(8, 4, 94, 0, 2, NULL),
(9, 4, 77, 0, 2, NULL),
(10, 4, 78, 0, 2, NULL),
(11, 4, 104, 0, 2, NULL),
(12, 4, 105, 0, 2, NULL),
(13, 4, 93, 0, 3, NULL),
(14, 4, 94, 0, 3, NULL),
(15, 4, 77, 0, 3, NULL),
(16, 4, 78, 0, 3, NULL),
(17, 4, 104, 0, 3, NULL),
(18, 4, 105, 0, 3, NULL),
(19, 4, 93, 0, 4, NULL),
(20, 4, 94, 0, 4, NULL),
(21, 4, 77, 0, 4, NULL),
(22, 4, 78, 0, 4, NULL),
(23, 4, 104, 0, 4, NULL),
(24, 4, 105, 0, 4, NULL),
(25, 4, 93, 0, 5, NULL),
(26, 4, 94, 0, 5, NULL),
(27, 4, 77, 0, 5, NULL),
(28, 4, 78, 0, 5, NULL),
(29, 4, 104, 0, 5, NULL),
(30, 4, 105, 0, 5, NULL),
(31, 4, 93, 0, 6, NULL),
(32, 4, 94, 0, 6, NULL),
(33, 4, 77, 0, 6, NULL),
(34, 4, 78, 0, 6, NULL),
(35, 4, 104, 0, 6, NULL),
(36, 4, 105, 0, 6, NULL),
(37, 4, 93, 0, 7, NULL),
(38, 4, 94, 0, 7, NULL),
(39, 4, 104, 0, 7, NULL),
(40, 4, 105, 0, 7, NULL),
(41, 4, 93, 0, 8, NULL),
(42, 4, 94, 0, 8, NULL),
(43, 4, 104, 0, 8, NULL),
(44, 4, 105, 0, 8, NULL),
(45, 4, 93, 0, 9, NULL),
(46, 4, 94, 0, 9, NULL),
(47, 4, 104, 0, 9, NULL),
(48, 4, 105, 0, 9, NULL),
(49, 4, 93, 0, 10, NULL),
(50, 4, 94, 0, 10, NULL),
(51, 4, 77, 0, 10, NULL),
(52, 4, 78, 0, 10, NULL),
(53, 4, 104, 0, 10, NULL),
(54, 4, 105, 0, 10, NULL),
(55, 4, 93, 0, 11, NULL),
(56, 4, 94, 0, 11, NULL),
(57, 4, 77, 0, 11, NULL),
(58, 4, 78, 0, 11, NULL),
(59, 4, 104, 0, 11, NULL),
(60, 4, 105, 0, 11, NULL),
(61, 4, 93, 0, 12, NULL),
(62, 4, 94, 0, 12, NULL),
(63, 4, 77, 0, 12, NULL),
(64, 4, 78, 0, 12, NULL),
(65, 4, 104, 0, 12, NULL),
(66, 4, 105, 0, 12, NULL),
(67, 4, 93, 0, 13, '2018-03-05 00:00:00'),
(68, 4, 94, 0, 13, NULL),
(69, 4, 77, 0, 13, NULL),
(70, 4, 78, 0, 13, NULL),
(71, 4, 104, 0, 13, NULL),
(72, 4, 105, 0, 13, NULL),
(73, 4, 93, 0, 14, NULL),
(74, 4, 94, 0, 14, NULL),
(75, 4, 77, 0, 14, NULL),
(76, 4, 78, 0, 14, NULL),
(77, 4, 104, 0, 14, NULL),
(78, 4, 105, 0, 14, NULL),
(267, 4, 93, 0, 15, NULL),
(268, 4, 94, 0, 15, NULL),
(269, 4, 77, 0, 15, NULL),
(270, 4, 78, 0, 15, NULL),
(271, 4, 104, 0, 15, NULL),
(272, 4, 105, 0, 15, NULL),
(279, 4, 93, 0, 16, NULL),
(280, 4, 94, 0, 16, NULL),
(281, 4, 77, 0, 16, NULL),
(282, 4, 78, 0, 16, NULL),
(283, 4, 104, 0, 16, NULL),
(284, 4, 105, 0, 16, NULL),
(291, 4, 93, 0, 17, NULL),
(292, 4, 94, 0, 17, NULL),
(293, 4, 77, 0, 17, NULL),
(294, 4, 78, 0, 17, NULL),
(295, 4, 104, 0, 17, NULL),
(296, 4, 105, 0, 17, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_entity_decimal`
--

CREATE TABLE `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table';

--
-- Дамп данных таблицы `catalog_product_entity_decimal`
--

INSERT INTO `catalog_product_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 80, 0, 1, '2.0000'),
(2, 4, 75, 0, 1, '20.0000'),
(3, 4, 76, 0, 1, NULL),
(4, 4, 120, 0, 1, NULL),
(5, 4, 80, 0, 2, '3.0000'),
(6, 4, 75, 0, 2, '40.0000'),
(7, 4, 76, 0, 2, NULL),
(8, 4, 120, 0, 2, NULL),
(9, 4, 80, 0, 3, '1.0000'),
(10, 4, 75, 0, 3, '10.0000'),
(11, 4, 76, 0, 3, NULL),
(12, 4, 120, 0, 3, NULL),
(13, 4, 80, 0, 4, '1.0000'),
(14, 4, 75, 0, 4, '35.0000'),
(15, 4, 76, 0, 4, NULL),
(16, 4, 120, 0, 4, NULL),
(17, 4, 80, 0, 5, '1.0000'),
(18, 4, 75, 0, 5, '50.0000'),
(19, 4, 76, 0, 5, NULL),
(20, 4, 120, 0, 5, NULL),
(21, 4, 80, 0, 6, '1.0000'),
(22, 4, 75, 0, 6, '170.0000'),
(23, 4, 76, 0, 6, NULL),
(24, 4, 120, 0, 6, NULL),
(25, 4, 80, 0, 10, '1.0000'),
(26, 4, 75, 0, 10, '60.0000'),
(27, 4, 76, 0, 10, NULL),
(28, 4, 120, 0, 10, NULL),
(29, 4, 80, 0, 11, '5.0000'),
(30, 4, 75, 0, 11, '80.0000'),
(31, 4, 76, 0, 11, NULL),
(32, 4, 120, 0, 11, NULL),
(33, 4, 75, 0, 12, '12.0000'),
(34, 4, 76, 0, 12, NULL),
(35, 4, 120, 0, 12, NULL),
(36, 4, 75, 0, 13, '8.0000'),
(37, 4, 76, 0, 13, NULL),
(38, 4, 120, 0, 13, NULL),
(39, 4, 75, 0, 14, '9.0000'),
(40, 4, 76, 0, 14, NULL),
(41, 4, 120, 0, 14, NULL),
(126, 4, 80, 0, 15, '0.3000'),
(127, 4, 75, 0, 15, '8.0000'),
(128, 4, 76, 0, 15, NULL),
(129, 4, 120, 0, 15, NULL),
(133, 4, 80, 0, 16, '0.2000'),
(134, 4, 75, 0, 16, '11.0000'),
(135, 4, 76, 0, 16, NULL),
(136, 4, 120, 0, 16, NULL),
(140, 4, 80, 0, 17, '0.3000'),
(141, 4, 75, 0, 17, '15.0000'),
(142, 4, 76, 0, 17, NULL),
(143, 4, 120, 0, 17, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_entity_gallery`
--

CREATE TABLE `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_entity_group_price`
--

CREATE TABLE `catalog_product_entity_group_price` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `is_percent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Percent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Attribute Backend Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_entity_int`
--

CREATE TABLE `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table';

--
-- Дамп данных таблицы `catalog_product_entity_int`
--

INSERT INTO `catalog_product_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 96, 0, 1, 1),
(2, 4, 102, 0, 1, 4),
(3, 4, 121, 0, 1, 0),
(4, 4, 100, 0, 1, 0),
(5, 4, 96, 0, 2, 1),
(6, 4, 102, 0, 2, 4),
(7, 4, 121, 0, 2, 0),
(8, 4, 100, 0, 2, 0),
(9, 4, 96, 0, 3, 1),
(10, 4, 102, 0, 3, 4),
(11, 4, 121, 0, 3, 0),
(12, 4, 100, 0, 3, 0),
(13, 4, 96, 0, 4, 1),
(14, 4, 102, 0, 4, 4),
(15, 4, 121, 0, 4, 0),
(16, 4, 100, 0, 4, 0),
(17, 4, 96, 0, 5, 1),
(18, 4, 102, 0, 5, 4),
(19, 4, 121, 0, 5, 0),
(20, 4, 100, 0, 5, 0),
(21, 4, 96, 0, 6, 1),
(22, 4, 102, 0, 6, 4),
(23, 4, 121, 0, 6, 0),
(24, 4, 100, 0, 6, 0),
(25, 4, 96, 0, 7, 1),
(26, 4, 102, 0, 7, 4),
(27, 4, 96, 0, 8, 1),
(28, 4, 102, 0, 8, 4),
(29, 4, 96, 0, 9, 1),
(30, 4, 102, 0, 9, 4),
(31, 4, 96, 0, 10, 1),
(32, 4, 102, 0, 10, 4),
(33, 4, 121, 0, 10, 0),
(34, 4, 100, 0, 10, 0),
(35, 4, 96, 0, 11, 1),
(36, 4, 102, 0, 11, 4),
(37, 4, 121, 0, 11, 0),
(38, 4, 100, 0, 11, 0),
(39, 4, 96, 0, 12, 1),
(40, 4, 102, 0, 12, 4),
(41, 4, 121, 0, 12, 0),
(42, 4, 133, 0, 12, NULL),
(43, 4, 96, 0, 13, 1),
(44, 4, 102, 0, 13, 4),
(45, 4, 121, 0, 13, 0),
(46, 4, 133, 0, 13, NULL),
(47, 4, 96, 0, 14, 1),
(48, 4, 102, 0, 14, 4),
(49, 4, 121, 0, 14, 0),
(50, 4, 133, 0, 14, NULL),
(51, 4, 133, 0, 1, NULL),
(52, 4, 133, 0, 2, NULL),
(53, 4, 133, 0, 3, NULL),
(54, 4, 133, 0, 4, NULL),
(55, 4, 133, 0, 5, NULL),
(56, 4, 133, 0, 6, NULL),
(57, 4, 133, 0, 7, NULL),
(58, 4, 133, 0, 8, NULL),
(59, 4, 133, 0, 9, NULL),
(60, 4, 133, 0, 10, NULL),
(61, 4, 133, 0, 11, NULL),
(77, 4, 96, 0, 15, 1),
(78, 4, 102, 0, 15, 4),
(79, 4, 121, 0, 15, 0),
(80, 4, 100, 0, 15, 0),
(81, 4, 133, 0, 15, NULL),
(83, 4, 96, 0, 16, 1),
(84, 4, 102, 0, 16, 4),
(85, 4, 121, 0, 16, 0),
(86, 4, 100, 0, 16, 0),
(87, 4, 133, 0, 16, NULL),
(89, 4, 96, 0, 17, 1),
(90, 4, 102, 0, 17, 4),
(91, 4, 121, 0, 17, 0),
(92, 4, 100, 0, 17, 0),
(93, 4, 133, 0, 17, NULL),
(96, 4, 134, 0, 1, 1),
(98, 4, 134, 0, 2, 1),
(100, 4, 134, 0, 3, 1),
(103, 4, 134, 0, 4, 1),
(106, 4, 134, 0, 5, 1),
(108, 4, 134, 0, 6, 1),
(110, 4, 134, 0, 10, 1),
(112, 4, 134, 0, 11, 1),
(114, 4, 134, 0, 17, 0),
(124, 4, 134, 0, 7, 0),
(126, 4, 134, 0, 8, 0),
(128, 4, 134, 0, 9, 0),
(132, 4, 134, 0, 12, 0),
(133, 4, 134, 0, 13, 0),
(134, 4, 134, 0, 14, 0),
(135, 4, 134, 0, 15, 0),
(137, 4, 134, 0, 16, 0),
(139, 4, 135, 0, 17, 1),
(141, 4, 135, 0, 16, 1),
(146, 4, 135, 0, 15, 1),
(148, 4, 135, 0, 11, 1),
(150, 4, 135, 0, 10, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_entity_media_gallery`
--

CREATE TABLE `catalog_product_entity_media_gallery` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table';

--
-- Дамп данных таблицы `catalog_product_entity_media_gallery`
--

INSERT INTO `catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 88, 3, '/y/o/yogurtnitsa_hilton_jm-3801_beige.jpg'),
(2, 88, 4, '/y/o/yogurtnitsa_mystery_mym-6001.jpg'),
(3, 88, 5, '/i/z/izmelchitel_gorenje_s450e.jpg'),
(4, 88, 6, '/i/z/izmelchitel_moulinex_dj_9058_32.jpg'),
(5, 88, 7, '/m/e/meshok_dlya_pylesosa_fis_fst_1702.jpg'),
(6, 88, 8, '/k/o/komplekt_meshkov_fis_fs_0502.jpg'),
(7, 88, 9, '/m/e/meshok_dlya_pylesosa_fis_fst_1702_1.jpg'),
(8, 88, 10, '/v/y/vytyazhka_eleyus_storm_380_60_is.jpg'),
(9, 88, 11, '/v/y/vytyazhka_pyramida_tl_50_wh.jpg'),
(10, 88, 14, '/v/e/vesy_napolnye_aurora_au_4310.jpg'),
(11, 88, 2, '/y/o/yogurtnitsa_elbee_e-24801_1.jpg'),
(12, 88, 1, '/y/o/yogurtnitsa_moulinex_yg_2301.jpg'),
(13, 88, 15, '/3/2/32768967_images_3026843847.jpg'),
(14, 88, 16, '/b/u/butterfly_n1_images_846560700.jpg'),
(15, 88, 17, '/e/r/ergo_t2_1217_images_1789161600.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_entity_media_gallery_value`
--

CREATE TABLE `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) UNSIGNED DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Disabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- Дамп данных таблицы `catalog_product_entity_media_gallery_value`
--

INSERT INTO `catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `label`, `position`, `disabled`) VALUES
(1, 0, NULL, 1, 0),
(2, 0, NULL, 1, 0),
(3, 0, NULL, 1, 0),
(4, 0, NULL, 1, 0),
(5, 0, NULL, 1, 0),
(6, 0, NULL, 1, 0),
(7, 0, NULL, 1, 0),
(8, 0, NULL, 1, 0),
(9, 0, NULL, 1, 0),
(10, 0, NULL, 1, 0),
(11, 0, NULL, 1, 0),
(12, 0, NULL, 1, 0),
(13, 0, NULL, 1, 0),
(14, 0, NULL, 1, 0),
(15, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_entity_text`
--

CREATE TABLE `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table';

--
-- Дамп данных таблицы `catalog_product_entity_text`
--

INSERT INTO `catalog_product_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 72, 0, 1, 'Таким образом, новая модель организационной деятельности способствует подготовке и реализации форм воздействия. Разнообразный и богатый опыт выбранный нами инновационный путь требует от нас системного анализа существующих финансовых и административных условий! Практический опыт показывает, что консультация с профессионалами из IT напрямую зависит от экономической целесообразности принимаемых решений! Равным образом рамки и место обучения кадров напрямую зависит от соответствующих условий активизации.'),
(2, 4, 73, 0, 1, 'Таким образом, новая модель организационной деятельности спос'),
(3, 4, 83, 0, 1, NULL),
(4, 4, 106, 0, 1, NULL),
(5, 4, 72, 0, 2, 'Дорогие друзья, реализация намеченного плана развития обеспечивает актуальность ключевых компонентов планируемого обновления? Дорогие друзья, сложившаяся структура организации требует от нас системного анализа модели развития?'),
(6, 4, 73, 0, 2, 'Дорогие друзья, реализация намеченного плана развития обеспечивает актуальность ключевых компонентов планируемого обновления? Дорогие друзья, сложившаяся структура организации требует от нас системного анализа модели развития?'),
(7, 4, 83, 0, 2, NULL),
(8, 4, 106, 0, 2, NULL),
(9, 4, 72, 0, 3, 'Не следует, однако, забывать о том, что сложившаяся структура организации позволяет выполнить важнейшие задания по разработке системы обучения кадров, соответствующей насущным потребностям. С другой стороны повышение уровня гражданского сознания способствует подготовке и реализации системы масштабного изменения ряда параметров. '),
(10, 4, 73, 0, 3, 'Не следует, однако, забывать о том, что сложившаяся структура организации позволяет выполнить важнейшие задания по разработке системы обучения кадров, соответствующей насущным потребностям. С другой стороны повышение уровня гражданского сознания способствует подготовке и реализации системы масштабного изменения ряда параметров. '),
(11, 4, 83, 0, 3, NULL),
(12, 4, 106, 0, 3, NULL),
(13, 4, 72, 0, 4, 'Йогуртница Mystery MYM-6001'),
(14, 4, 73, 0, 4, 'Йогуртница Mystery MYM-6001'),
(15, 4, 83, 0, 4, NULL),
(16, 4, 106, 0, 4, NULL),
(17, 4, 72, 0, 5, 'Gorenje S450E'),
(18, 4, 73, 0, 5, 'Gorenje S450E'),
(19, 4, 83, 0, 5, NULL),
(20, 4, 106, 0, 5, NULL),
(21, 4, 72, 0, 6, 'Moulinex DJ 9058 32'),
(22, 4, 73, 0, 6, 'Moulinex DJ 9058 32'),
(23, 4, 83, 0, 6, NULL),
(24, 4, 106, 0, 6, NULL),
(25, 4, 72, 0, 7, 'Мешок для пылесоса FIS FST 1702'),
(26, 4, 73, 0, 7, 'Мешок для пылесоса FIS FST 1702'),
(27, 4, 83, 0, 7, NULL),
(28, 4, 106, 0, 7, NULL),
(29, 4, 72, 0, 8, 'Комплект мешков FIS FS 0502'),
(30, 4, 73, 0, 8, 'Комплект мешков FIS FS 0502'),
(31, 4, 83, 0, 8, NULL),
(32, 4, 106, 0, 8, NULL),
(33, 4, 72, 0, 9, 'Мешок для пылесоса FIS FST 0602'),
(34, 4, 73, 0, 9, 'Мешок для пылесоса FIS FST 0602'),
(35, 4, 83, 0, 9, NULL),
(36, 4, 106, 0, 9, NULL),
(37, 4, 72, 0, 10, 'Вытяжка Eleyus Storm 380 60 IS'),
(38, 4, 73, 0, 10, 'Вытяжка Eleyus Storm 380 60 IS'),
(39, 4, 83, 0, 10, NULL),
(40, 4, 106, 0, 10, NULL),
(41, 4, 72, 0, 11, 'Вытяжка Pyramida TL 50 WH'),
(42, 4, 73, 0, 11, 'Вытяжка Pyramida TL 50 WH'),
(43, 4, 83, 0, 11, NULL),
(44, 4, 106, 0, 11, NULL),
(45, 4, 72, 0, 12, 'Весы напольные Aurora AU 4310'),
(46, 4, 73, 0, 12, 'Весы напольные Aurora AU 4310'),
(47, 4, 83, 0, 12, NULL),
(48, 4, 106, 0, 12, NULL),
(49, 4, 72, 0, 13, 'Весы напольные Grunhelm BES-1S'),
(50, 4, 73, 0, 13, 'Весы напольные Grunhelm BES-1S'),
(51, 4, 83, 0, 13, NULL),
(52, 4, 106, 0, 13, NULL),
(53, 4, 72, 0, 14, 'Весы напольные Grunhelm BES-1Lxd'),
(54, 4, 73, 0, 14, 'Весы напольные Grunhelm BES-1Lxd'),
(55, 4, 83, 0, 14, NULL),
(56, 4, 106, 0, 14, NULL),
(123, 4, 72, 0, 15, 'ТВ-антенна Eurosky ES-005A Black\r\n'),
(124, 4, 73, 0, 15, 'ТВ-антенна Eurosky ES-005A Black\r\n'),
(125, 4, 83, 0, 15, NULL),
(126, 4, 106, 0, 15, NULL),
(131, 4, 72, 0, 16, 'ТВ-антенна Мотылек M-1'),
(132, 4, 73, 0, 16, 'ТВ-антенна Мотылек M-1'),
(133, 4, 83, 0, 16, NULL),
(134, 4, 106, 0, 16, NULL),
(137, 4, 72, 0, 17, 'ТВ-ресивер DVB-T2 Ergo 1217 (T2 1217)'),
(138, 4, 73, 0, 17, 'ТВ-ресивер DVB-T2 Ergo 1217 (T2 1217)'),
(139, 4, 83, 0, 17, NULL),
(140, 4, 106, 0, 17, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_entity_tier_price`
--

CREATE TABLE `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_entity_varchar`
--

CREATE TABLE `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table';

--
-- Дамп данных таблицы `catalog_product_entity_varchar`
--

INSERT INTO `catalog_product_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 71, 0, 1, 'Йогуртница Elbee E-24801'),
(2, 4, 97, 0, 1, 'jogurtnica-elbee-e-24801'),
(3, 4, 117, 0, 1, NULL),
(4, 4, 118, 0, 1, '2'),
(5, 4, 119, 0, 1, '4'),
(6, 4, 82, 0, 1, NULL),
(7, 4, 84, 0, 1, NULL),
(8, 4, 85, 0, 1, '/y/o/yogurtnitsa_moulinex_yg_2301.jpg'),
(9, 4, 86, 0, 1, '/y/o/yogurtnitsa_moulinex_yg_2301.jpg'),
(10, 4, 87, 0, 1, '/y/o/yogurtnitsa_moulinex_yg_2301.jpg'),
(11, 4, 103, 0, 1, NULL),
(12, 4, 107, 0, 1, NULL),
(13, 4, 109, 0, 1, 'container1'),
(14, 4, 122, 0, 1, NULL),
(15, 4, 98, 1, 1, 'jogurtnica-elbee-e-24801.html'),
(16, 4, 98, 0, 1, 'jogurtnica-elbee-e-24801.html'),
(17, 4, 71, 0, 2, 'Йогуртница Moulinex YG 2301'),
(18, 4, 97, 0, 2, 'jogurtnica-moulinex-yg-2301'),
(19, 4, 117, 0, 2, NULL),
(20, 4, 118, 0, 2, '2'),
(21, 4, 119, 0, 2, '4'),
(22, 4, 82, 0, 2, NULL),
(23, 4, 84, 0, 2, NULL),
(24, 4, 85, 0, 2, '/y/o/yogurtnitsa_elbee_e-24801_1.jpg'),
(25, 4, 86, 0, 2, '/y/o/yogurtnitsa_elbee_e-24801_1.jpg'),
(26, 4, 87, 0, 2, '/y/o/yogurtnitsa_elbee_e-24801_1.jpg'),
(27, 4, 103, 0, 2, NULL),
(28, 4, 107, 0, 2, NULL),
(29, 4, 109, 0, 2, 'container1'),
(30, 4, 122, 0, 2, NULL),
(31, 4, 98, 1, 2, 'jogurtnica-moulinex-yg-2301.html'),
(32, 4, 98, 0, 2, 'jogurtnica-moulinex-yg-2301.html'),
(33, 4, 71, 0, 3, 'Йогуртница Hilton JM-3801 Beige'),
(34, 4, 97, 0, 3, 'jogurtnica-hilton-jm-3801-beige'),
(35, 4, 117, 0, 3, NULL),
(36, 4, 118, 0, 3, '2'),
(37, 4, 119, 0, 3, '4'),
(38, 4, 82, 0, 3, NULL),
(39, 4, 84, 0, 3, NULL),
(40, 4, 85, 0, 3, '/y/o/yogurtnitsa_hilton_jm-3801_beige.jpg'),
(41, 4, 86, 0, 3, '/y/o/yogurtnitsa_hilton_jm-3801_beige.jpg'),
(42, 4, 87, 0, 3, '/y/o/yogurtnitsa_hilton_jm-3801_beige.jpg'),
(43, 4, 103, 0, 3, NULL),
(44, 4, 107, 0, 3, NULL),
(45, 4, 109, 0, 3, 'container1'),
(46, 4, 122, 0, 3, NULL),
(47, 4, 98, 1, 3, 'jogurtnica-hilton-jm-3801-beige.html'),
(48, 4, 98, 0, 3, 'jogurtnica-hilton-jm-3801-beige.html'),
(49, 4, 71, 0, 4, 'Йогуртница Mystery MYM-6001'),
(50, 4, 97, 0, 4, 'jogurtnica-mystery-mym-6001'),
(51, 4, 117, 0, 4, NULL),
(52, 4, 118, 0, 4, '2'),
(53, 4, 119, 0, 4, '4'),
(54, 4, 82, 0, 4, NULL),
(55, 4, 84, 0, 4, NULL),
(56, 4, 85, 0, 4, '/y/o/yogurtnitsa_mystery_mym-6001.jpg'),
(57, 4, 86, 0, 4, '/y/o/yogurtnitsa_mystery_mym-6001.jpg'),
(58, 4, 87, 0, 4, '/y/o/yogurtnitsa_mystery_mym-6001.jpg'),
(59, 4, 103, 0, 4, NULL),
(60, 4, 107, 0, 4, NULL),
(61, 4, 109, 0, 4, 'container1'),
(62, 4, 122, 0, 4, NULL),
(63, 4, 98, 1, 4, 'jogurtnica-mystery-mym-6001.html'),
(64, 4, 98, 0, 4, 'jogurtnica-mystery-mym-6001.html'),
(65, 4, 71, 0, 5, 'Gorenje S450E'),
(66, 4, 97, 0, 5, 'gorenje-s450e'),
(67, 4, 117, 0, 5, NULL),
(68, 4, 118, 0, 5, '2'),
(69, 4, 119, 0, 5, '4'),
(70, 4, 82, 0, 5, NULL),
(71, 4, 84, 0, 5, NULL),
(72, 4, 85, 0, 5, '/i/z/izmelchitel_gorenje_s450e.jpg'),
(73, 4, 86, 0, 5, '/i/z/izmelchitel_gorenje_s450e.jpg'),
(74, 4, 87, 0, 5, '/i/z/izmelchitel_gorenje_s450e.jpg'),
(75, 4, 103, 0, 5, NULL),
(76, 4, 107, 0, 5, NULL),
(77, 4, 109, 0, 5, 'container1'),
(78, 4, 122, 0, 5, NULL),
(79, 4, 98, 1, 5, 'gorenje-s450e.html'),
(80, 4, 98, 0, 5, 'gorenje-s450e.html'),
(81, 4, 71, 0, 6, 'Moulinex DJ 9058 32'),
(82, 4, 97, 0, 6, 'moulinex-dj-9058-32'),
(83, 4, 117, 0, 6, NULL),
(84, 4, 118, 0, 6, '2'),
(85, 4, 119, 0, 6, '4'),
(86, 4, 82, 0, 6, NULL),
(87, 4, 84, 0, 6, NULL),
(88, 4, 85, 0, 6, '/i/z/izmelchitel_moulinex_dj_9058_32.jpg'),
(89, 4, 86, 0, 6, '/i/z/izmelchitel_moulinex_dj_9058_32.jpg'),
(90, 4, 87, 0, 6, '/i/z/izmelchitel_moulinex_dj_9058_32.jpg'),
(91, 4, 103, 0, 6, NULL),
(92, 4, 107, 0, 6, NULL),
(93, 4, 109, 0, 6, 'container1'),
(94, 4, 122, 0, 6, NULL),
(95, 4, 98, 1, 6, 'moulinex-dj-9058-32.html'),
(96, 4, 98, 0, 6, 'moulinex-dj-9058-32.html'),
(97, 4, 71, 0, 7, 'Мешок для пылесоса FIS FST 1702'),
(98, 4, 97, 0, 7, 'meshok-dlja-pylesosa-fis-fst-1702'),
(99, 4, 117, 0, 7, NULL),
(100, 4, 82, 0, 7, NULL),
(101, 4, 84, 0, 7, NULL),
(102, 4, 85, 0, 7, '/m/e/meshok_dlya_pylesosa_fis_fst_1702.jpg'),
(103, 4, 86, 0, 7, '/m/e/meshok_dlya_pylesosa_fis_fst_1702.jpg'),
(104, 4, 87, 0, 7, '/m/e/meshok_dlya_pylesosa_fis_fst_1702.jpg'),
(105, 4, 103, 0, 7, NULL),
(106, 4, 107, 0, 7, NULL),
(107, 4, 109, 0, 7, 'container1'),
(108, 4, 122, 0, 7, NULL),
(109, 4, 98, 1, 7, 'meshok-dlja-pylesosa-fis-fst-1702.html'),
(110, 4, 98, 0, 7, 'meshok-dlja-pylesosa-fis-fst-1702.html'),
(111, 4, 71, 0, 8, 'Комплект мешков FIS FS 0502'),
(112, 4, 97, 0, 8, 'komplekt-meshkov-fis-fs-0502'),
(113, 4, 117, 0, 8, NULL),
(114, 4, 82, 0, 8, NULL),
(115, 4, 84, 0, 8, NULL),
(116, 4, 85, 0, 8, 'no_selection'),
(117, 4, 86, 0, 8, 'no_selection'),
(118, 4, 87, 0, 8, 'no_selection'),
(119, 4, 103, 0, 8, NULL),
(120, 4, 107, 0, 8, NULL),
(121, 4, 109, 0, 8, 'container1'),
(122, 4, 122, 0, 8, NULL),
(123, 4, 98, 1, 8, 'komplekt-meshkov-fis-fs-0502.html'),
(124, 4, 98, 0, 8, 'komplekt-meshkov-fis-fs-0502.html'),
(125, 4, 71, 0, 9, 'Мешок для пылесоса FIS FST 0602'),
(126, 4, 97, 0, 9, 'meshok-dlja-pylesosa-fis-fst-0602'),
(127, 4, 117, 0, 9, NULL),
(128, 4, 82, 0, 9, NULL),
(129, 4, 84, 0, 9, NULL),
(130, 4, 85, 0, 9, 'no_selection'),
(131, 4, 86, 0, 9, 'no_selection'),
(132, 4, 87, 0, 9, 'no_selection'),
(133, 4, 103, 0, 9, NULL),
(134, 4, 107, 0, 9, NULL),
(135, 4, 109, 0, 9, 'container1'),
(136, 4, 122, 0, 9, NULL),
(137, 4, 98, 1, 9, 'meshok-dlja-pylesosa-fis-fst-0602.html'),
(138, 4, 98, 0, 9, 'meshok-dlja-pylesosa-fis-fst-0602.html'),
(139, 4, 71, 0, 10, 'Вытяжка Eleyus Storm 380 60 IS'),
(140, 4, 97, 0, 10, 'vytjazhka-eleyus-storm-380-60-is'),
(141, 4, 117, 0, 10, NULL),
(142, 4, 118, 0, 10, '2'),
(143, 4, 119, 0, 10, '4'),
(144, 4, 82, 0, 10, NULL),
(145, 4, 84, 0, 10, NULL),
(146, 4, 85, 0, 10, '/v/y/vytyazhka_eleyus_storm_380_60_is.jpg'),
(147, 4, 86, 0, 10, '/v/y/vytyazhka_eleyus_storm_380_60_is.jpg'),
(148, 4, 87, 0, 10, '/v/y/vytyazhka_eleyus_storm_380_60_is.jpg'),
(149, 4, 103, 0, 10, NULL),
(150, 4, 107, 0, 10, NULL),
(151, 4, 109, 0, 10, 'container1'),
(152, 4, 122, 0, 10, NULL),
(153, 4, 98, 1, 10, 'vytjazhka-eleyus-storm-380-60-is.html'),
(154, 4, 98, 0, 10, 'vytjazhka-eleyus-storm-380-60-is.html'),
(155, 4, 71, 0, 11, 'Вытяжка Pyramida TL 50 WH'),
(156, 4, 97, 0, 11, 'vytjazhka-pyramida-tl-50-wh'),
(157, 4, 117, 0, 11, NULL),
(158, 4, 118, 0, 11, '2'),
(159, 4, 119, 0, 11, '4'),
(160, 4, 82, 0, 11, NULL),
(161, 4, 84, 0, 11, NULL),
(162, 4, 85, 0, 11, '/v/y/vytyazhka_pyramida_tl_50_wh.jpg'),
(163, 4, 86, 0, 11, '/v/y/vytyazhka_pyramida_tl_50_wh.jpg'),
(164, 4, 87, 0, 11, '/v/y/vytyazhka_pyramida_tl_50_wh.jpg'),
(165, 4, 103, 0, 11, NULL),
(166, 4, 107, 0, 11, NULL),
(167, 4, 109, 0, 11, 'container1'),
(168, 4, 122, 0, 11, NULL),
(169, 4, 98, 1, 11, 'vytjazhka-pyramida-tl-50-wh.html'),
(170, 4, 98, 0, 11, 'vytjazhka-pyramida-tl-50-wh.html'),
(171, 4, 71, 0, 12, 'Весы напольные Aurora AU 4310'),
(172, 4, 97, 0, 12, 'vesy-napol-nye-aurora-au-4310'),
(173, 4, 117, 0, 12, NULL),
(174, 4, 118, 0, 12, '2'),
(175, 4, 119, 0, 12, '4'),
(176, 4, 82, 0, 12, NULL),
(177, 4, 84, 0, 12, NULL),
(178, 4, 85, 0, 12, 'no_selection'),
(179, 4, 86, 0, 12, 'no_selection'),
(180, 4, 87, 0, 12, 'no_selection'),
(181, 4, 103, 0, 12, NULL),
(182, 4, 107, 0, 12, NULL),
(183, 4, 109, 0, 12, 'container1'),
(184, 4, 122, 0, 12, NULL),
(185, 4, 98, 1, 12, 'vesy-napol-nye-aurora-au-4310.html'),
(186, 4, 98, 0, 12, 'vesy-napol-nye-aurora-au-4310.html'),
(187, 4, 71, 0, 13, 'Весы напольные Grunhelm BES-1S'),
(188, 4, 97, 0, 13, 'vesy-napol-nye-grunhelm-bes-1s'),
(189, 4, 117, 0, 13, NULL),
(190, 4, 118, 0, 13, '2'),
(191, 4, 119, 0, 13, '4'),
(192, 4, 82, 0, 13, NULL),
(193, 4, 84, 0, 13, NULL),
(194, 4, 85, 0, 13, 'no_selection'),
(195, 4, 86, 0, 13, 'no_selection'),
(196, 4, 87, 0, 13, 'no_selection'),
(197, 4, 103, 0, 13, NULL),
(198, 4, 107, 0, 13, NULL),
(199, 4, 109, 0, 13, 'container1'),
(200, 4, 122, 0, 13, NULL),
(201, 4, 98, 1, 13, 'vesy-napol-nye-grunhelm-bes-1s.html'),
(202, 4, 98, 0, 13, 'vesy-napol-nye-grunhelm-bes-1s.html'),
(203, 4, 71, 0, 14, 'Весы напольные Grunhelm BES-1Lxd'),
(204, 4, 97, 0, 14, 'vesy-napol-nye-grunhelm-bes-1lxd'),
(205, 4, 117, 0, 14, NULL),
(206, 4, 118, 0, 14, '2'),
(207, 4, 119, 0, 14, '4'),
(208, 4, 82, 0, 14, NULL),
(209, 4, 84, 0, 14, NULL),
(210, 4, 85, 0, 14, '/v/e/vesy_napolnye_aurora_au_4310.jpg'),
(211, 4, 86, 0, 14, '/v/e/vesy_napolnye_aurora_au_4310.jpg'),
(212, 4, 87, 0, 14, '/v/e/vesy_napolnye_aurora_au_4310.jpg'),
(213, 4, 103, 0, 14, NULL),
(214, 4, 107, 0, 14, NULL),
(215, 4, 109, 0, 14, 'container1'),
(216, 4, 122, 0, 14, NULL),
(217, 4, 98, 1, 14, 'vesy-napol-nye-grunhelm-bes-1lxd.html'),
(218, 4, 98, 0, 14, 'vesy-napol-nye-grunhelm-bes-1lxd.html'),
(333, 4, 112, 0, 2, NULL),
(341, 4, 113, 0, 2, NULL),
(342, 4, 114, 0, 2, NULL),
(352, 4, 112, 0, 14, NULL),
(353, 4, 113, 0, 14, NULL),
(354, 4, 114, 0, 14, NULL),
(373, 4, 112, 0, 1, NULL),
(374, 4, 113, 0, 1, NULL),
(375, 4, 114, 0, 1, NULL),
(385, 4, 112, 0, 3, NULL),
(386, 4, 113, 0, 3, NULL),
(387, 4, 114, 0, 3, NULL),
(397, 4, 112, 0, 4, NULL),
(398, 4, 113, 0, 4, NULL),
(399, 4, 114, 0, 4, NULL),
(415, 4, 112, 0, 5, NULL),
(416, 4, 113, 0, 5, NULL),
(417, 4, 114, 0, 5, NULL),
(427, 4, 112, 0, 6, NULL),
(428, 4, 113, 0, 6, NULL),
(429, 4, 114, 0, 6, NULL),
(439, 4, 112, 0, 7, NULL),
(440, 4, 113, 0, 7, NULL),
(441, 4, 114, 0, 7, NULL),
(460, 4, 112, 0, 10, NULL),
(461, 4, 113, 0, 10, NULL),
(462, 4, 114, 0, 10, NULL),
(472, 4, 112, 0, 11, NULL),
(473, 4, 113, 0, 11, NULL),
(474, 4, 114, 0, 11, NULL),
(484, 4, 71, 0, 15, 'ТВ-антенна Eurosky ES-005A Black '),
(485, 4, 97, 0, 15, 'tv-antenna-eurosky-es-005a-black-podrobnee-https-rozetka-com-ua-32768967-p32768967'),
(486, 4, 117, 0, 15, NULL),
(487, 4, 118, 0, 15, '2'),
(488, 4, 119, 0, 15, '4'),
(489, 4, 82, 0, 15, NULL),
(490, 4, 84, 0, 15, NULL),
(491, 4, 85, 0, 15, '/3/2/32768967_images_3026843847.jpg'),
(492, 4, 86, 0, 15, '/3/2/32768967_images_3026843847.jpg'),
(493, 4, 87, 0, 15, '/3/2/32768967_images_3026843847.jpg'),
(494, 4, 103, 0, 15, NULL),
(495, 4, 107, 0, 15, NULL),
(496, 4, 109, 0, 15, 'container1'),
(497, 4, 122, 0, 15, NULL),
(498, 4, 112, 0, 15, NULL),
(499, 4, 113, 0, 15, NULL),
(500, 4, 114, 0, 15, NULL),
(501, 4, 98, 1, 15, 'tv-antenna-eurosky-es-005a-black-podrobnee-https-rozetka-com-ua-32768967-p32768967.html'),
(502, 4, 98, 0, 15, 'tv-antenna-eurosky-es-005a-black-podrobnee-https-rozetka-com-ua-32768967-p32768967.html'),
(513, 4, 71, 0, 16, 'ТВ-антенна Мотылек M-1'),
(514, 4, 97, 0, 16, 'tv-antenna-motylek-m-1'),
(515, 4, 117, 0, 16, NULL),
(516, 4, 118, 0, 16, '2'),
(517, 4, 119, 0, 16, '4'),
(518, 4, 82, 0, 16, NULL),
(519, 4, 84, 0, 16, NULL),
(520, 4, 85, 0, 16, '/b/u/butterfly_n1_images_846560700.jpg'),
(521, 4, 86, 0, 16, '/b/u/butterfly_n1_images_846560700.jpg'),
(522, 4, 87, 0, 16, '/b/u/butterfly_n1_images_846560700.jpg'),
(523, 4, 103, 0, 16, NULL),
(524, 4, 107, 0, 16, NULL),
(525, 4, 109, 0, 16, 'container1'),
(526, 4, 122, 0, 16, NULL),
(527, 4, 112, 0, 16, NULL),
(528, 4, 113, 0, 16, NULL),
(529, 4, 114, 0, 16, NULL),
(530, 4, 98, 1, 16, 'tv-antenna-motylek-m-1.html'),
(531, 4, 98, 0, 16, 'tv-antenna-motylek-m-1.html'),
(541, 4, 71, 0, 17, 'ТВ-ресивер DVB-T2 Ergo 1217 (T2 1217)'),
(542, 4, 97, 0, 17, 'tv-resiver-dvb-t2-ergo-1217-t2-1217'),
(543, 4, 117, 0, 17, NULL),
(544, 4, 118, 0, 17, '2'),
(545, 4, 119, 0, 17, '4'),
(546, 4, 82, 0, 17, NULL),
(547, 4, 84, 0, 17, NULL),
(548, 4, 85, 0, 17, '/e/r/ergo_t2_1217_images_1789161600.jpg'),
(549, 4, 86, 0, 17, '/e/r/ergo_t2_1217_images_1789161600.jpg'),
(550, 4, 87, 0, 17, '/e/r/ergo_t2_1217_images_1789161600.jpg'),
(551, 4, 103, 0, 17, NULL),
(552, 4, 107, 0, 17, NULL),
(553, 4, 109, 0, 17, 'container1'),
(554, 4, 122, 0, 17, NULL),
(555, 4, 112, 0, 17, NULL),
(556, 4, 113, 0, 17, NULL),
(557, 4, 114, 0, 17, NULL),
(558, 4, 98, 1, 17, 'tv-resiver-dvb-t2-ergo-1217-t2-1217.html'),
(559, 4, 98, 0, 17, 'tv-resiver-dvb-t2-ergo-1217-t2-1217.html');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_flat_1`
--

CREATE TABLE `catalog_product_flat_1` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'entity_id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'attribute_set_id',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'type_id',
  `cost` decimal(12,4) DEFAULT NULL COMMENT 'cost',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `gift_message_available` smallint(6) DEFAULT NULL COMMENT 'gift_message_available',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'has_options',
  `image_label` varchar(255) DEFAULT NULL COMMENT 'image_label',
  `is_recurring` smallint(6) DEFAULT NULL COMMENT 'is_recurring',
  `links_exist` int(11) DEFAULT NULL COMMENT 'links_exist',
  `links_purchased_separately` int(11) DEFAULT NULL COMMENT 'links_purchased_separately',
  `links_title` varchar(255) DEFAULT NULL COMMENT 'links_title',
  `msrp` decimal(12,4) DEFAULT NULL COMMENT 'msrp',
  `msrp_display_actual_price_type` varchar(255) DEFAULT NULL COMMENT 'msrp_display_actual_price_type',
  `msrp_enabled` smallint(6) DEFAULT NULL COMMENT 'msrp_enabled',
  `name` varchar(255) DEFAULT NULL COMMENT 'name',
  `news_from_date` datetime DEFAULT NULL COMMENT 'news_from_date',
  `news_to_date` datetime DEFAULT NULL COMMENT 'news_to_date',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'price',
  `price_type` int(11) DEFAULT NULL COMMENT 'price_type',
  `price_view` int(11) DEFAULT NULL COMMENT 'price_view',
  `recurring_profile` text COMMENT 'recurring_profile',
  `required_options` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'required_options',
  `shipment_type` int(11) DEFAULT NULL COMMENT 'shipment_type',
  `short_description` text COMMENT 'short_description',
  `sku` varchar(64) DEFAULT NULL COMMENT 'sku',
  `sku_type` int(11) DEFAULT NULL COMMENT 'sku_type',
  `small_image` varchar(255) DEFAULT NULL COMMENT 'small_image',
  `small_image_label` varchar(255) DEFAULT NULL COMMENT 'small_image_label',
  `special_from_date` datetime DEFAULT NULL COMMENT 'special_from_date',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'special_price',
  `special_to_date` datetime DEFAULT NULL COMMENT 'special_to_date',
  `status` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'status',
  `tax_class_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'tax_class_id',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'thumbnail',
  `thumbnail_label` varchar(255) DEFAULT NULL COMMENT 'thumbnail_label',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'url_key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'url_path',
  `visibility` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'visibility',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'weight',
  `weight_type` int(11) DEFAULT NULL COMMENT 'weight_type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Flat (Store 1)';

--
-- Дамп данных таблицы `catalog_product_flat_1`
--

INSERT INTO `catalog_product_flat_1` (`entity_id`, `attribute_set_id`, `type_id`, `cost`, `created_at`, `gift_message_available`, `has_options`, `image_label`, `is_recurring`, `links_exist`, `links_purchased_separately`, `links_title`, `msrp`, `msrp_display_actual_price_type`, `msrp_enabled`, `name`, `news_from_date`, `news_to_date`, `price`, `price_type`, `price_view`, `recurring_profile`, `required_options`, `shipment_type`, `short_description`, `sku`, `sku_type`, `small_image`, `small_image_label`, `special_from_date`, `special_price`, `special_to_date`, `status`, `tax_class_id`, `thumbnail`, `thumbnail_label`, `updated_at`, `url_key`, `url_path`, `visibility`, `weight`, `weight_type`) VALUES
(1, 4, 'simple', NULL, '2018-03-30 02:07:33', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Йогуртница Elbee E-24801', NULL, NULL, '20.0000', NULL, NULL, NULL, 0, NULL, 'Таким образом, новая модель организационной деятельности спос', '2', NULL, 'no_selection', NULL, NULL, NULL, NULL, 1, 0, 'no_selection', NULL, '2018-03-30 02:07:33', 'jogurtnica-elbee-e-24801', 'jogurtnica-elbee-e-24801.html', 4, '2.0000', NULL),
(2, 4, 'simple', NULL, '2018-03-30 02:10:23', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Йогуртница Moulinex YG 2301', NULL, NULL, '40.0000', NULL, NULL, NULL, 0, NULL, 'Дорогие друзья, реализация намеченного плана развития обеспечивает актуальность ключевых компонентов планируемого обновления? Дорогие друзья, сложившаяся структура организации требует от нас системного анализа модели развития?', '3', NULL, 'no_selection', NULL, NULL, NULL, NULL, 1, 0, 'no_selection', NULL, '2018-03-30 02:10:23', 'jogurtnica-moulinex-yg-2301', 'jogurtnica-moulinex-yg-2301.html', 4, '3.0000', NULL),
(3, 4, 'simple', NULL, '2018-03-30 02:16:23', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Йогуртница Hilton JM-3801 Beige', NULL, NULL, '10.0000', NULL, NULL, NULL, 0, NULL, 'Не следует, однако, забывать о том, что сложившаяся структура организации позволяет выполнить важнейшие задания по разработке системы обучения кадров, соответствующей насущным потребностям. С другой стороны повышение уровня гражданского сознания способствует подготовке и реализации системы масштабного изменения ряда параметров. ', '4', NULL, 'no_selection', NULL, NULL, NULL, NULL, 1, 0, 'no_selection', NULL, '2018-03-30 02:16:23', 'jogurtnica-hilton-jm-3801-beige', 'jogurtnica-hilton-jm-3801-beige.html', 4, '1.0000', NULL),
(4, 4, 'simple', NULL, '2018-03-30 03:19:03', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Йогуртница Mystery MYM-6001', NULL, NULL, '35.0000', NULL, NULL, NULL, 0, NULL, 'Йогуртница Mystery MYM-6001', '5', NULL, 'no_selection', NULL, NULL, NULL, NULL, 1, 0, 'no_selection', NULL, '2018-03-30 03:19:03', 'jogurtnica-mystery-mym-6001', 'jogurtnica-mystery-mym-6001.html', 4, '1.0000', NULL),
(5, 4, 'simple', NULL, '2018-03-30 03:23:12', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Gorenje S450E', NULL, NULL, '50.0000', NULL, NULL, NULL, 0, NULL, 'Gorenje S450E', '6', NULL, 'no_selection', NULL, NULL, NULL, NULL, 1, 0, 'no_selection', NULL, '2018-03-30 03:23:12', 'gorenje-s450e', 'gorenje-s450e.html', 4, '1.0000', NULL),
(6, 4, 'simple', NULL, '2018-03-30 03:30:25', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Moulinex DJ 9058 32', NULL, NULL, '170.0000', NULL, NULL, NULL, 0, NULL, 'Moulinex DJ 9058 32', '7', NULL, 'no_selection', NULL, NULL, NULL, NULL, 1, 0, 'no_selection', NULL, '2018-03-30 03:30:25', 'moulinex-dj-9058-32', 'moulinex-dj-9058-32.html', 4, '1.0000', NULL),
(7, 4, 'grouped', NULL, '2018-03-30 03:49:46', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Мешок для пылесоса FIS FST 1702', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Мешок для пылесоса FIS FST 1702', '8', NULL, 'no_selection', NULL, NULL, NULL, NULL, 1, NULL, 'no_selection', NULL, '2018-03-30 03:49:46', 'meshok-dlja-pylesosa-fis-fst-1702', 'meshok-dlja-pylesosa-fis-fst-1702.html', 4, NULL, NULL),
(8, 4, 'grouped', NULL, '2018-03-30 04:25:00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Комплект мешков FIS FS 0502', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Комплект мешков FIS FS 0502', '9', NULL, 'no_selection', NULL, NULL, NULL, NULL, 1, NULL, 'no_selection', NULL, '2018-03-30 04:25:00', 'komplekt-meshkov-fis-fs-0502', 'komplekt-meshkov-fis-fs-0502.html', 4, NULL, NULL),
(9, 4, 'grouped', NULL, '2018-03-30 04:26:43', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Мешок для пылесоса FIS FST 0602', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Мешок для пылесоса FIS FST 0602', '10', NULL, 'no_selection', NULL, NULL, NULL, NULL, 1, NULL, 'no_selection', NULL, '2018-03-30 04:26:43', 'meshok-dlja-pylesosa-fis-fst-0602', 'meshok-dlja-pylesosa-fis-fst-0602.html', 4, NULL, NULL),
(10, 4, 'simple', NULL, '2018-03-30 04:39:08', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Вытяжка Eleyus Storm 380 60 IS', NULL, NULL, '60.0000', NULL, NULL, NULL, 0, NULL, 'Вытяжка Eleyus Storm 380 60 IS', '11', NULL, 'no_selection', NULL, NULL, NULL, NULL, 1, 0, 'no_selection', NULL, '2018-03-30 04:39:08', 'vytjazhka-eleyus-storm-380-60-is', 'vytjazhka-eleyus-storm-380-60-is.html', 4, '1.0000', NULL),
(11, 4, 'simple', NULL, '2018-03-30 04:44:08', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Вытяжка Pyramida TL 50 WH', NULL, NULL, '80.0000', NULL, NULL, NULL, 0, NULL, 'Вытяжка Pyramida TL 50 WH', '12', NULL, 'no_selection', NULL, NULL, NULL, NULL, 1, 0, 'no_selection', NULL, '2018-03-30 04:47:43', 'vytjazhka-pyramida-tl-50-wh', 'vytjazhka-pyramida-tl-50-wh.html', 4, '5.0000', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_eav`
--

CREATE TABLE `catalog_product_index_eav` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Дамп данных таблицы `catalog_product_index_eav`
--

INSERT INTO `catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(1, 121, 1, 0),
(2, 121, 1, 0),
(3, 121, 1, 0),
(4, 121, 1, 0),
(5, 121, 1, 0),
(6, 121, 1, 0),
(10, 121, 1, 0),
(11, 121, 1, 0),
(15, 121, 1, 0),
(16, 121, 1, 0),
(17, 121, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_eav_decimal`
--

CREATE TABLE `catalog_product_index_eav_decimal` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_eav_decimal_idx`
--

CREATE TABLE `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_eav_decimal_tmp`
--

CREATE TABLE `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_eav_idx`
--

CREATE TABLE `catalog_product_index_eav_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_eav_tmp`
--

CREATE TABLE `catalog_product_index_eav_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_group_price`
--

CREATE TABLE `catalog_product_index_group_price` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price`
--

CREATE TABLE `catalog_product_index_price` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Дамп данных таблицы `catalog_product_index_price`
--

INSERT INTO `catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
(1, 0, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(1, 1, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(1, 2, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(1, 3, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(2, 0, 1, 0, '40.0000', '40.0000', '40.0000', '40.0000', NULL, NULL),
(2, 1, 1, 0, '40.0000', '40.0000', '40.0000', '40.0000', NULL, NULL),
(2, 2, 1, 0, '40.0000', '40.0000', '40.0000', '40.0000', NULL, NULL),
(2, 3, 1, 0, '40.0000', '40.0000', '40.0000', '40.0000', NULL, NULL),
(3, 0, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(3, 1, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(3, 2, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(3, 3, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(4, 0, 1, 0, '35.0000', '35.0000', '35.0000', '35.0000', NULL, NULL),
(4, 1, 1, 0, '35.0000', '35.0000', '35.0000', '35.0000', NULL, NULL),
(4, 2, 1, 0, '35.0000', '35.0000', '35.0000', '35.0000', NULL, NULL),
(4, 3, 1, 0, '35.0000', '35.0000', '35.0000', '35.0000', NULL, NULL),
(5, 0, 1, 0, '50.0000', '50.0000', '50.0000', '50.0000', NULL, NULL),
(5, 1, 1, 0, '50.0000', '50.0000', '50.0000', '50.0000', NULL, NULL),
(5, 2, 1, 0, '50.0000', '50.0000', '50.0000', '50.0000', NULL, NULL),
(5, 3, 1, 0, '50.0000', '50.0000', '50.0000', '50.0000', NULL, NULL),
(6, 0, 1, 0, '170.0000', '170.0000', '170.0000', '170.0000', NULL, NULL),
(6, 1, 1, 0, '170.0000', '170.0000', '170.0000', '170.0000', NULL, NULL),
(6, 2, 1, 0, '170.0000', '170.0000', '170.0000', '170.0000', NULL, NULL),
(6, 3, 1, 0, '170.0000', '170.0000', '170.0000', '170.0000', NULL, NULL),
(10, 0, 1, 0, '60.0000', '60.0000', '60.0000', '60.0000', NULL, NULL),
(10, 1, 1, 0, '60.0000', '60.0000', '60.0000', '60.0000', NULL, NULL),
(10, 2, 1, 0, '60.0000', '60.0000', '60.0000', '60.0000', NULL, NULL),
(10, 3, 1, 0, '60.0000', '60.0000', '60.0000', '60.0000', NULL, NULL),
(11, 0, 1, 0, '80.0000', '80.0000', '80.0000', '80.0000', NULL, NULL),
(11, 1, 1, 0, '80.0000', '80.0000', '80.0000', '80.0000', NULL, NULL),
(11, 2, 1, 0, '80.0000', '80.0000', '80.0000', '80.0000', NULL, NULL),
(11, 3, 1, 0, '80.0000', '80.0000', '80.0000', '80.0000', NULL, NULL),
(15, 0, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(15, 1, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(15, 2, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(15, 3, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(16, 0, 1, 0, '11.0000', '11.0000', '11.0000', '11.0000', NULL, NULL),
(16, 1, 1, 0, '11.0000', '11.0000', '11.0000', '11.0000', NULL, NULL),
(16, 2, 1, 0, '11.0000', '11.0000', '11.0000', '11.0000', NULL, NULL),
(16, 3, 1, 0, '11.0000', '11.0000', '11.0000', '11.0000', NULL, NULL),
(17, 0, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(17, 1, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(17, 2, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(17, 3, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_bundle_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) UNSIGNED NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_bundle_opt_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_bundle_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_bundle_sel_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_bundle_sel_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_bundle_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) UNSIGNED NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_cfg_opt_agr_idx`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_cfg_opt_agr_tmp`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_cfg_opt_idx`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_cfg_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_downlod_idx`
--

CREATE TABLE `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_downlod_tmp`
--

CREATE TABLE `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_final_idx`
--

CREATE TABLE `catalog_product_index_price_final_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_final_tmp`
--

CREATE TABLE `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_idx`
--

CREATE TABLE `catalog_product_index_price_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_opt_agr_idx`
--

CREATE TABLE `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_opt_agr_tmp`
--

CREATE TABLE `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_opt_idx`
--

CREATE TABLE `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_price_tmp`
--

CREATE TABLE `catalog_product_index_price_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_tier_price`
--

CREATE TABLE `catalog_product_index_tier_price` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_index_website`
--

CREATE TABLE `catalog_product_index_website` (
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Дамп данных таблицы `catalog_product_index_website`
--

INSERT INTO `catalog_product_index_website` (`website_id`, `website_date`, `rate`) VALUES
(1, '2018-04-02', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_link`
--

CREATE TABLE `catalog_product_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link Type ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_link_attribute`
--

CREATE TABLE `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table';

--
-- Дамп данных таблицы `catalog_product_link_attribute`
--

INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 1, 'position', 'int'),
(2, 3, 'position', 'int'),
(3, 3, 'qty', 'decimal'),
(4, 4, 'position', 'int'),
(5, 5, 'position', 'int');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_link_attribute_decimal`
--

CREATE TABLE `catalog_product_link_attribute_decimal` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_link_attribute_int`
--

CREATE TABLE `catalog_product_link_attribute_int` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_link_attribute_varchar`
--

CREATE TABLE `catalog_product_link_attribute_varchar` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_link_type`
--

CREATE TABLE `catalog_product_link_type` (
  `link_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table';

--
-- Дамп данных таблицы `catalog_product_link_type`
--

INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_option`
--

CREATE TABLE `catalog_product_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) UNSIGNED DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_option_price`
--

CREATE TABLE `catalog_product_option_price` (
  `option_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Price ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_option_title`
--

CREATE TABLE `catalog_product_option_title` (
  `option_title_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Title ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_option_type_price`
--

CREATE TABLE `catalog_product_option_type_price` (
  `option_type_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type Price ID',
  `option_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_option_type_title`
--

CREATE TABLE `catalog_product_option_type_title` (
  `option_type_title_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type Title ID',
  `option_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_option_type_value`
--

CREATE TABLE `catalog_product_option_type_value` (
  `option_type_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_relation`
--

CREATE TABLE `catalog_product_relation` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_super_attribute`
--

CREATE TABLE `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Super Attribute ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table';

--
-- Дамп данных таблицы `catalog_product_super_attribute`
--

INSERT INTO `catalog_product_super_attribute` (`product_super_attribute_id`, `product_id`, `attribute_id`, `position`) VALUES
(1, 12, 133, 0),
(2, 13, 133, 0),
(3, 14, 133, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_super_attribute_label`
--

CREATE TABLE `catalog_product_super_attribute_label` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_super_attribute_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table';

--
-- Дамп данных таблицы `catalog_product_super_attribute_label`
--

INSERT INTO `catalog_product_super_attribute_label` (`value_id`, `product_super_attribute_id`, `store_id`, `use_default`, `value`) VALUES
(1, 1, 0, 0, 'stream'),
(2, 2, 0, 0, 'stream'),
(3, 3, 0, 0, 'stream');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_super_attribute_pricing`
--

CREATE TABLE `catalog_product_super_attribute_pricing` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_super_attribute_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `value_index` varchar(255) DEFAULT NULL COMMENT 'Value Index',
  `is_percent` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Percent',
  `pricing_value` decimal(12,4) DEFAULT NULL COMMENT 'Pricing Value',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Pricing Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_super_link`
--

CREATE TABLE `catalog_product_super_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table';

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_product_website`
--

CREATE TABLE `catalog_product_website` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Дамп данных таблицы `catalog_product_website`
--

INSERT INTO `catalog_product_website` (`product_id`, `website_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `checkout_agreement`
--

CREATE TABLE `checkout_agreement` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement';

-- --------------------------------------------------------

--
-- Структура таблицы `checkout_agreement_store`
--

CREATE TABLE `checkout_agreement_store` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_block`
--

CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Block Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

--
-- Дамп данных таблицы `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(1, 'Footer Links', 'footer_links', '\n<ul>\n    <li><a href=\"{{store direct_url=\"about-magento-demo-store\"}}\">About Us</a></li>\n    <li><a href=\"{{store direct_url=\"customer-service\"}}\">Customer Service</a></li>\n<li class=\"last privacy\"><a href=\"{{store direct_url=\"privacy-policy-cookie-restriction-mode\"}}\">Privacy Policy</a></li>\r\n</ul>', '2018-03-29 21:54:19', '2018-03-29 21:54:23', 1),
(2, 'Footer Links Company', 'footer_links_company', '\n<div class=\"links\">\n    <div class=\"block-title\">\n        <strong><span>Company</span></strong>\n    </div>\n    <ul>\n        <li><a href=\"{{store url=\"\"}}about-magento-demo-store/\">About Us</a></li>\n        <li><a href=\"{{store url=\"\"}}contacts/\">Contact Us</a></li>\n        <li><a href=\"{{store url=\"\"}}customer-service/\">Customer Service</a></li>\n        <li><a href=\"{{store url=\"\"}}privacy-policy-cookie-restriction-mode/\">Privacy Policy</a></li>\n    </ul>\n</div>', '2018-03-29 21:54:22', '2018-03-29 21:54:22', 1),
(3, 'Cookie restriction notice', 'cookie_restriction_notice_block', '<p>This website requires cookies to provide all of its features. For more information on what data is contained in the cookies, please see our <a href=\"{{store direct_url=\"privacy-policy-cookie-restriction-mode\"}}\">Privacy Policy page</a>. To accept cookies from this site, please click the Allow button below.</p>', '2018-03-29 21:54:24', '2018-03-29 21:54:24', 1),
(4, 'new_product', 'new_product', '<p>&nbsp; &nbsp; &nbsp;</p>', '2018-03-30 19:22:37', '2018-04-02 03:04:29', 1),
(5, 'new_product_2', 'new_product_2', '<p>&nbsp;&nbsp;</p>', '2018-04-02 01:58:13', '2018-04-02 03:03:41', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_block_store`
--

CREATE TABLE `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Дамп данных таблицы `cms_block_store`
--

INSERT INTO `cms_block_store` (`block_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_page`
--

CREATE TABLE `cms_page` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `root_template` varchar(255) DEFAULT NULL COMMENT 'Page Template',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Page Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

--
-- Дамп данных таблицы `cms_page`
--

INSERT INTO `cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(1, '404 Not Found 1', 'two_columns_right', 'Page keywords', 'Page description', 'no-route', NULL, '\n<div class=\"page-title\"><h1>Whoops, our bad...</h1></div>\n<dl>\n    <dt>The page you requested was not found, and we have a fine guess why.</dt>\n    <dd>\n        <ul class=\"disc\">\n            <li>If you typed the URL directly, please make sure the spelling is correct.</li>\n            <li>If you clicked on a link to get here, the link is outdated.</li>\n        </ul>\n    </dd>\n</dl>\n<dl>\n    <dt>What can you do?</dt>\n    <dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\n    <dd>\n        <ul class=\"disc\">\n            <li><a href=\"#\" onclick=\"history.go(-1); return false;\">Go back</a> to the previous page.</li>\n            <li>Use the search bar at the top of the page to search for your products.</li>\n            <li>Follow these links to get you back on track!<br /><a href=\"{{store url=\"\"}}\">Store Home</a>\n            <span class=\"separator\">|</span> <a href=\"{{store url=\"customer/account\"}}\">My Account</a></li>\n        </ul>\n    </dd>\n</dl>\n', '2018-03-29 21:54:20', '2018-03-29 21:54:20', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Home page', 'two_columns_left', NULL, NULL, 'home', NULL, '<div class=\"page-title\">\r\n<h2>Home Page</h2>\r\n\r\n<p>{{block type=\"catalog/product_slider\" products_per_page=\"10\" category_id=\"5\" products_count=\"10\" mode=\"list\" template=\"catalog/product/list2.phtml\"}}</p>\r\n<p>{{widget type=\"catalog/category_widget_link\" anchor_text=\"Go to Test2\" template=\"catalog/category/widget/link/link_block.phtml\" id_path=\"category/5\"}}</p>\r\n<br /> <br />\r\n<h2>New Arrival Products</h2>\r\n<p>{{block type=\"catalog/product_slider\" products_per_page=\"10\" products_count=\"10\" mode=\"list\" template=\"catalog/product/new_arrival.phtml\"}}</p>\r\n<p>{{widget type=\"cms/widget_page_link\" anchor_text=\"View all\" template=\"cms/widget/link/link_block.phtml\" page_id=\"7\"}}</p>\r\n<br /> <br />\r\n<p></p>\r\n<h2>Refurbished Products</h2>\r\n<p>{{block type=\"catalog/product_slider\" products_per_page=\"10\" products_count=\"10\" mode=\"list\" template=\"catalog/product/refurbished.phtml\"}}</p>\r\n<p>{{widget type=\"cms/widget_page_link\" anchor_text=\"View all\" template=\"cms/widget/link/link_block.phtml\" page_id=\"8\"}}</p>\r\n</div>', '2018-03-29 21:54:20', '2018-04-04 07:59:10', 1, 0, '<!--<reference name=\"content\">        \r\n        <block type=\"catalog/product_new\" name=\"home.catalog.product.new\" alias=\"product_new\" template=\"catalog/product/new.phtml\" after=\"cms_page\">\r\n            <action method=\"addPriceBlockType\">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>        \r\n        <block type=\"reports/product_viewed\" name=\"home.reports.product.viewed\" alias=\"product_viewed\" template=\"reports/home_product_viewed.phtml\" after=\"product_new\">\r\n            <action method=\"addPriceBlockType\">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type=\"reports/product_compared\" name=\"home.reports.product.compared\" template=\"reports/home_product_compared.phtml\" after=\"product_viewed\">\r\n            <action method=\"addPriceBlockType\">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n    </reference>\r\n    <reference name=\"right\">\r\n        <action method=\"unsetChild\"><alias>right.reports.product.viewed</alias></action>\r\n        <action method=\"unsetChild\"><alias>right.reports.product.compared</alias></action>\r\n    </reference>-->', NULL, NULL, NULL, NULL, NULL),
(3, 'About Us', 'two_columns_right', NULL, NULL, 'about-magento-demo-store', NULL, '<div class=\"page-title\">\r\n<h1>About Magento Store</h1>\r\n<p>{{block type=\"catalog/product_list\" template=\"catalog/product/list.phtml\"}}</p>\r\n</div>\r\n<div class=\"col3-set\">\r\n<div class=\"col-1\">\r\n<p style=\"line-height: 1.2em;\"><small>{{widget type=\"catalog/product_widget_new\" display_type=\"all_products\" products_count=\"10\" template=\"catalog/product/widget/new/content/new_grid.phtml\"}}Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.</small></p>\r\n<p style=\"color: #888; font: 1.2em/1.4em georgia, serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta.</p>\r\n</div>\r\n<div class=\"col-2\">\r\n<p><strong style=\"color: #de036f;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.</strong></p>\r\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</p>\r\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi. Vestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est. Nulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat. Pellentesque eget velit. Nunc tincidunt.</p>\r\n</div>\r\n<div class=\"col-3\">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper</p>\r\n<p><strong style=\"color: #de036f;\">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\r\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\r\n<div class=\"divider\"></div>\r\n<p>To all of you, from all of us at Magento Store - Thank you and Happy eCommerce!</p>\r\n<p style=\"line-height: 1.2em;\"><strong style=\"font: italic 2em Georgia, serif;\">John Doe</strong><br /> <small>Some important guy</small></p>\r\n</div>\r\n</div>', '2018-03-29 21:54:21', '2018-04-02 10:08:41', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Customer Service', 'three_columns', NULL, NULL, 'customer-service', NULL, '<div class=\"page-title\">\n<h1>Customer Service</h1>\n</div>\n<ul class=\"disc\">\n<li><a href=\"#answer1\">Shipping &amp; Delivery</a></li>\n<li><a href=\"#answer2\">Privacy &amp; Security</a></li>\n<li><a href=\"#answer3\">Returns &amp; Replacements</a></li>\n<li><a href=\"#answer4\">Ordering</a></li>\n<li><a href=\"#answer5\">Payment, Pricing &amp; Promotions</a></li>\n<li><a href=\"#answer6\">Viewing Orders</a></li>\n<li><a href=\"#answer7\">Updating Account Information</a></li>\n</ul>\n<dl>\n<dt id=\"answer1\">Shipping &amp; Delivery</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id=\"answer2\">Privacy &amp; Security</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id=\"answer3\">Returns &amp; Replacements</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id=\"answer4\">Ordering</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id=\"answer5\">Payment, Pricing &amp; Promotions</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id=\"answer6\">Viewing Orders</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\n Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\n justo.</dd>\n<dt id=\"answer7\">Updating Account Information</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\n Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\n Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\n faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\n Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\n justo.</dd>\n</dl>', '2018-03-29 21:54:21', '2018-03-29 21:54:21', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Enable Cookies', 'one_column', NULL, NULL, 'enable-cookies', NULL, '<div class=\"std\">\n    <ul class=\"messages\">\n        <li class=\"notice-msg\">\n            <ul>\n                <li>Please enable cookies in your web browser to continue.</li>\n            </ul>\n        </li>\n    </ul>\n    <div class=\"page-title\">\n        <h1><a name=\"top\"></a>What are Cookies?</h1>\n    </div>\n    <p>Cookies are short pieces of data that are sent to your computer when you visit a website.\n    On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically\n    whenever you visit our site so that we can personalize your experience and provide you with better service.\n    We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes.\n     If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase\n     or take advantage of certain features of our website, such as storing items in your Shopping Cart or\n     receiving personalized recommendations. As a result, we strongly encourage you to configure your web\n     browser to accept cookies from our website.</p>\n    <h2 class=\"subtitle\">Enabling Cookies</h2>\n    <ul class=\"disc\">\n        <li><a href=\"#ie7\">Internet Explorer 7.x</a></li>\n        <li><a href=\"#ie6\">Internet Explorer 6.x</a></li>\n        <li><a href=\"#firefox\">Mozilla/Firefox</a></li>\n        <li><a href=\"#opera\">Opera 7.x</a></li>\n    </ul>\n    <h3><a name=\"ie7\"></a>Internet Explorer 7.x</h3>\n    <ol>\n        <li>\n            <p>Start Internet Explorer</p>\n        </li>\n        <li>\n            <p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\n            <p><img src=\"{{skin url=\"images/cookies/ie7-1.gif\"}}\" alt=\"\" /></p>\n        </li>\n        <li>\n            <p>Click the <strong>Privacy</strong> tab</p>\n            <p><img src=\"{{skin url=\"images/cookies/ie7-2.gif\"}}\" alt=\"\" /></p>\n        </li>\n        <li>\n            <p>Click the <strong>Advanced</strong> button</p>\n            <p><img src=\"{{skin url=\"images/cookies/ie7-3.gif\"}}\" alt=\"\" /></p>\n        </li>\n        <li>\n            <p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>,\n            put another check mark in the <strong>Always accept session cookies </strong>box</p>\n            <p><img src=\"{{skin url=\"images/cookies/ie7-4.gif\"}}\" alt=\"\" /></p>\n        </li>\n        <li>\n            <p>Click <strong>OK</strong></p>\n            <p><img src=\"{{skin url=\"images/cookies/ie7-5.gif\"}}\" alt=\"\" /></p>\n        </li>\n        <li>\n            <p>Click <strong>OK</strong></p>\n            <p><img src=\"{{skin url=\"images/cookies/ie7-6.gif\"}}\" alt=\"\" /></p>\n        </li>\n        <li>\n            <p>Restart Internet Explore</p>\n        </li>\n    </ol>\n    <p class=\"a-top\"><a href=\"#top\">Back to Top</a></p>\n    <h3><a name=\"ie6\"></a>Internet Explorer 6.x</h3>\n    <ol>\n        <li>\n            <p>Select <strong>Internet Options</strong> from the Tools menu</p>\n            <p><img src=\"{{skin url=\"images/cookies/ie6-1.gif\"}}\" alt=\"\" /></p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> tab</p>\n        </li>\n        <li>\n            <p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>)\n            under <strong>Settings</strong>. Click <strong>OK</strong></p>\n            <p><img src=\"{{skin url=\"images/cookies/ie6-2.gif\"}}\" alt=\"\" /></p>\n        </li>\n    </ol>\n    <p class=\"a-top\"><a href=\"#top\">Back to Top</a></p>\n    <h3><a name=\"firefox\"></a>Mozilla/Firefox</h3>\n    <ol>\n        <li>\n            <p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\n            <p><img src=\"{{skin url=\"images/cookies/firefox.png\"}}\" alt=\"\" /></p>\n        </li>\n        <li>\n            <p>Expand the <strong>Cookies</strong> section</p>\n        </li>\n        <li>\n            <p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\n        </li>\n        <li>\n            <p>Save changes by clicking <strong>Ok</strong>.</p>\n        </li>\n    </ol>\n    <p class=\"a-top\"><a href=\"#top\">Back to Top</a></p>\n    <h3><a name=\"opera\"></a>Opera 7.x</h3>\n    <ol>\n        <li>\n            <p>Click on the <strong>Tools</strong> menu in Opera</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\n            <p><img src=\"{{skin url=\"images/cookies/opera.png\"}}\" alt=\"\" /></p>\n        </li>\n        <li>\n            <p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong>\n            should be selected in the &quot;<strong>Normal cookies</strong>&quot; drop-down</p>\n        </li>\n        <li>\n            <p>Save changes by clicking <strong>Ok</strong></p>\n        </li>\n    </ol>\n    <p class=\"a-top\"><a href=\"#top\">Back to Top</a></p>\n</div>\n', '2018-03-29 21:54:22', '2018-03-29 21:54:22', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Privacy Policy', 'one_column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy Policy', '<p style=\"color: #ff0000; font-weight: bold; font-size: 13px\">\n    Please replace this text with you Privacy Policy.\n    Please add any additional cookies your website uses below (e.g., Google Analytics)\n</p>\n<p>\n    This privacy policy sets out how {{config path=\"general/store_information/name\"}} uses and protects any information\n    that you give {{config path=\"general/store_information/name\"}} when you use this website.\n    {{config path=\"general/store_information/name\"}} is committed to ensuring that your privacy is protected.\n    Should we ask you to provide certain information by which you can be identified when using this website,\n    then you can be assured that it will only be used in accordance with this privacy statement.\n    {{config path=\"general/store_information/name\"}} may change this policy from time to time by updating this page.\n    You should check this page from time to time to ensure that you are happy with any changes.\n</p>\n<h2>What we collect</h2>\n<p>We may collect the following information:</p>\n<ul>\n    <li>name</li>\n    <li>contact information including email address</li>\n    <li>demographic information such as postcode, preferences and interests</li>\n    <li>other information relevant to customer surveys and/or offers</li>\n</ul>\n<p>\n    For the exhaustive list of cookies we collect see the <a href=\"#list\">List of cookies we collect</a> section.\n</p>\n<h2>What we do with the information we gather</h2>\n<p>\n    We require this information to understand your needs and provide you with a better service,\n    and in particular for the following reasons:\n</p>\n<ul>\n    <li>Internal record keeping.</li>\n    <li>We may use the information to improve our products and services.</li>\n    <li>\n        We may periodically send promotional emails about new products, special offers or other information which we\n        think you may find interesting using the email address which you have provided.\n    </li>\n    <li>\n        From time to time, we may also use your information to contact you for market research purposes.\n        We may contact you by email, phone, fax or mail. We may use the information to customise the website\n        according to your interests.\n    </li>\n</ul>\n<h2>Security</h2>\n<p>\n    We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure,\n    we have put in place suitable physical, electronic and managerial procedures to safeguard and secure\n    the information we collect online.\n</p>\n<h2>How we use cookies</h2>\n<p>\n    A cookie is a small file which asks permission to be placed on your computer\'s hard drive.\n    Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n    a particular site. Cookies allow web applications to respond to you as an individual. The web application\n    can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n    your preferences.\n</p>\n<p>\n    We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page traffic\n    and improve our website in order to tailor it to customer needs. We only use this information for statistical\n    analysis purposes and then the data is removed from the system.\n</p>\n<p>\n    Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful\n    and which you do not. A cookie in no way gives us access to your computer or any information about you,\n    other than the data you choose to share with us. You can choose to accept or decline cookies.\n    Most web browsers automatically accept cookies, but you can usually modify your browser setting\n    to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n</p>\n<h2>Links to other websites</h2>\n<p>\n    Our website may contain links to other websites of interest. However, once you have used these links\n    to leave our site, you should note that we do not have any control over that other website.\n    Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n    visiting such sites and such sites are not governed by this privacy statement.\n    You should exercise caution and look at the privacy statement applicable to the website in question.\n</p>\n<h2>Controlling your personal information</h2>\n<p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n<ul>\n    <li>\n        whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n        that you do not want the information to be used by anybody for direct marketing purposes\n    </li>\n    <li>\n        if you have previously agreed to us using your personal information for direct marketing purposes,\n        you may change your mind at any time by writing to or emailing us at\n        {{config path=\"trans_email/ident_general/email\"}}\n    </li>\n</ul>\n<p>\n    We will not sell, distribute or lease your personal information to third parties unless we have your permission\n    or are required by law to do so. We may use your personal information to send you promotional information\n    about third parties which we think you may find interesting if you tell us that you wish this to happen.\n</p>\n<p>\n    You may request details of personal information which we hold about you under the Data Protection Act 1998.\n    A small fee will be payable. If you would like a copy of the information held on you please write to\n    {{config path=\"general/store_information/address\"}}.\n</p>\n<p>\n    If you believe that any information we are holding on you is incorrect or incomplete,\n    please write to or email us as soon as possible, at the above address.\n    We will promptly correct any information found to be incorrect.\n</p>\n<h2><a name=\"list\"></a>List of cookies we collect</h2>\n<p>The table below lists the cookies we collect and what information they store.</p>\n<table class=\"data-table\">\n    <thead>\n        <tr>\n            <th>COOKIE name</th>\n            <th>COOKIE Description</th>\n        </tr>\n    </thead>\n    <tbody>\n        <tr>\n            <th>CART</th>\n            <td>The association with your shopping cart.</td>\n        </tr>\n        <tr>\n            <th>CATEGORY_INFO</th>\n            <td>Stores the category info on the page, that allows to display pages more quickly.</td>\n        </tr>\n        <tr>\n            <th>COMPARE</th>\n            <td>The items that you have in the Compare Products list.</td>\n        </tr>\n        <tr>\n            <th>CURRENCY</th>\n            <td>Your preferred currency</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER</th>\n            <td>An encrypted version of your customer id with the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_AUTH</th>\n            <td>An indicator if you are currently logged into the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_INFO</th>\n            <td>An encrypted version of the customer group you belong to.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_SEGMENT_IDS</th>\n            <td>Stores the Customer Segment ID</td>\n        </tr>\n        <tr>\n            <th>EXTERNAL_NO_CACHE</th>\n            <td>A flag, which indicates whether caching is disabled or not.</td>\n        </tr>\n        <tr>\n            <th>FRONTEND</th>\n            <td>You sesssion ID on the server.</td>\n        </tr>\n        <tr>\n            <th>GUEST-VIEW</th>\n            <td>Allows guests to edit their orders.</td>\n        </tr>\n        <tr>\n            <th>LAST_CATEGORY</th>\n            <td>The last category you visited.</td>\n        </tr>\n        <tr>\n            <th>LAST_PRODUCT</th>\n            <td>The most recent product you have viewed.</td>\n        </tr>\n        <tr>\n            <th>NEWMESSAGE</th>\n            <td>Indicates whether a new message has been received.</td>\n        </tr>\n        <tr>\n            <th>NO_CACHE</th>\n            <td>Indicates whether it is allowed to use cache.</td>\n        </tr>\n        <tr>\n            <th>PERSISTENT_SHOPPING_CART</th>\n            <td>A link to information about your cart and viewing history if you have asked the site.</td>\n        </tr>\n        <tr>\n            <th>POLL</th>\n            <td>The ID of any polls you have recently voted in.</td>\n        </tr>\n        <tr>\n            <th>POLLN</th>\n            <td>Information on what polls you have voted on.</td>\n        </tr>\n        <tr>\n            <th>RECENTLYCOMPARED</th>\n            <td>The items that you have recently compared.            </td>\n        </tr>\n        <tr>\n            <th>STF</th>\n            <td>Information on products you have emailed to friends.</td>\n        </tr>\n        <tr>\n            <th>STORE</th>\n            <td>The store view or language you have selected.</td>\n        </tr>\n        <tr>\n            <th>USER_ALLOWED_SAVE_COOKIE</th>\n            <td>Indicates whether a customer allowed to use cookies.</td>\n        </tr>\n        <tr>\n            <th>VIEWED_PRODUCT_IDS</th>\n            <td>The products that you have recently viewed.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST</th>\n            <td>An encrypted list of products added to your Wishlist.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST_CNT</th>\n            <td>The number of items in your Wishlist.</td>\n        </tr>\n    </tbody>\n</table>', '2018-03-29 21:54:23', '2018-03-29 21:54:23', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'New Arrival', 'one_column', NULL, NULL, 'new_arrival', NULL, '<h2>New Arrival Products</h2>\r\n<p>{{block type=\"catalog/product_slider\" products_per_page=\"10\" products_count=\"10\" mode=\"list\" template=\"catalog/product/all_arrival.phtml\"}}</p>', '2018-04-03 04:05:23', '2018-04-04 08:01:21', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Refurbished', 'one_column', NULL, NULL, 'refurbished', NULL, '<h2>Refurbished Products</h2>\r\n<p>{{block type=\"catalog/product_slider\" products_per_page=\"10\" products_count=\"10\" mode=\"list\" template=\"catalog/product/all_refurbished.phtml\"}}</p>', '2018-04-03 04:08:25', '2018-04-04 08:02:56', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_page_store`
--

CREATE TABLE `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Дамп данных таблицы `cms_page_store`
--

INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
(1, 0),
(4, 0),
(5, 0),
(6, 0),
(2, 1),
(3, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `core_cache`
--

CREATE TABLE `core_cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

-- --------------------------------------------------------

--
-- Структура таблицы `core_cache_option`
--

CREATE TABLE `core_cache_option` (
  `code` varchar(32) NOT NULL COMMENT 'Code',
  `value` smallint(6) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cache Options';

--
-- Дамп данных таблицы `core_cache_option`
--

INSERT INTO `core_cache_option` (`code`, `value`) VALUES
('block_html', 1),
('collections', 1),
('config', 1),
('config_api', 1),
('config_api2', 1),
('eav', 1),
('layout', 1),
('translate', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `core_cache_tag`
--

CREATE TABLE `core_cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

-- --------------------------------------------------------

--
-- Структура таблицы `core_config_data`
--

CREATE TABLE `core_config_data` (
  `config_id` int(10) UNSIGNED NOT NULL COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Config Data';

--
-- Дамп данных таблицы `core_config_data`
--

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'general/region/display_all', '1'),
(2, 'default', 0, 'general/region/state_required', 'AT,CA,CH,DE,EE,ES,FI,FR,LT,LV,RO,US'),
(3, 'default', 0, 'catalog/category/root_id', '2'),
(4, 'default', 0, 'payment/paypal_express/skip_order_review_step', '1'),
(5, 'default', 0, 'payment/payflow_link/mobile_optimized', '1'),
(6, 'default', 0, 'payment/payflow_advanced/mobile_optimized', '1'),
(7, 'default', 0, 'payment/hosted_pro/mobile_optimized', '1'),
(8, 'default', 0, 'admin/dashboard/enable_charts', '1'),
(9, 'default', 0, 'web/unsecure/base_url', 'http://dummy-host.example.com/'),
(10, 'default', 0, 'web/secure/base_url', 'http://dummy-host.example.com/'),
(11, 'default', 0, 'general/locale/code', 'ru_RU'),
(12, 'default', 0, 'general/locale/timezone', 'America/Los_Angeles'),
(13, 'default', 0, 'currency/options/base', 'USD'),
(14, 'default', 0, 'currency/options/default', 'USD'),
(15, 'default', 0, 'currency/options/allow', 'USD'),
(16, 'default', 0, 'design/package/name', 'rwd'),
(17, 'default', 0, 'design/package/ua_regexp', 'a:0:{}'),
(18, 'default', 0, 'design/theme/locale', NULL),
(19, 'default', 0, 'design/theme/template', NULL),
(20, 'default', 0, 'design/theme/template_ua_regexp', 'a:0:{}'),
(21, 'default', 0, 'design/theme/skin', NULL),
(22, 'default', 0, 'design/theme/skin_ua_regexp', 'a:0:{}'),
(23, 'default', 0, 'design/theme/layout', NULL),
(24, 'default', 0, 'design/theme/layout_ua_regexp', 'a:0:{}'),
(25, 'default', 0, 'design/theme/default', NULL),
(26, 'default', 0, 'design/theme/default_ua_regexp', 'a:0:{}'),
(27, 'default', 0, 'design/head/default_title', 'Magento Commerce'),
(28, 'default', 0, 'design/head/title_prefix', NULL),
(29, 'default', 0, 'design/head/title_suffix', NULL),
(30, 'default', 0, 'design/head/default_description', 'Default Description'),
(31, 'default', 0, 'design/head/default_keywords', 'Magento, Varien, E-commerce'),
(32, 'default', 0, 'design/head/default_robots', 'INDEX,FOLLOW'),
(33, 'default', 0, 'design/head/includes', NULL),
(34, 'default', 0, 'design/head/demonotice', '0'),
(35, 'default', 0, 'design/header/logo_src', 'images/logo.gif'),
(36, 'default', 0, 'design/header/logo_alt', 'Magento Commerce'),
(37, 'default', 0, 'design/header/logo_src_small', 'images/logo.gif'),
(38, 'default', 0, 'design/header/welcome', 'Default welcome msg!'),
(39, 'default', 0, 'design/footer/copyright', '&copy; 2017 Magento Demo Store. All Rights Reserved.'),
(40, 'default', 0, 'design/footer/absolute_footer', NULL),
(41, 'default', 0, 'design/watermark/image_size', NULL),
(42, 'default', 0, 'design/watermark/image_imageOpacity', NULL),
(43, 'default', 0, 'design/watermark/image_position', 'stretch'),
(44, 'default', 0, 'design/watermark/small_image_size', NULL),
(45, 'default', 0, 'design/watermark/small_image_imageOpacity', NULL),
(46, 'default', 0, 'design/watermark/small_image_position', 'stretch'),
(47, 'default', 0, 'design/watermark/thumbnail_size', NULL),
(48, 'default', 0, 'design/watermark/thumbnail_imageOpacity', NULL),
(49, 'default', 0, 'design/watermark/thumbnail_position', 'stretch'),
(50, 'default', 0, 'design/pagination/pagination_frame', '10'),
(51, 'default', 0, 'design/pagination/pagination_frame_skip', NULL),
(52, 'default', 0, 'design/pagination/anchor_text_for_previous', NULL),
(53, 'default', 0, 'design/pagination/anchor_text_for_next', NULL),
(54, 'default', 0, 'design/email/logo_alt', NULL),
(55, 'default', 0, 'design/email/logo_width', NULL),
(56, 'default', 0, 'design/email/logo_height', NULL),
(57, 'default', 0, 'design/email/header', 'design_email_header'),
(58, 'default', 0, 'design/email/footer', 'design_email_footer'),
(59, 'default', 0, 'design/email/css_non_inline', 'email-non-inline.css'),
(60, 'default', 0, 'catalog/frontend/list_mode', 'list-grid'),
(61, 'default', 0, 'catalog/frontend/grid_per_page_values', '12,24,36'),
(62, 'default', 0, 'catalog/frontend/grid_per_page', '12'),
(63, 'default', 0, 'catalog/frontend/list_per_page_values', '5,10,15,20,25'),
(64, 'default', 0, 'catalog/frontend/list_per_page', '10'),
(65, 'default', 0, 'catalog/frontend/list_allow_all', '0'),
(66, 'default', 0, 'catalog/frontend/default_sort_by', 'position'),
(67, 'default', 0, 'catalog/frontend/flat_catalog_category', '0'),
(68, 'default', 0, 'catalog/frontend/flat_catalog_product', '0'),
(69, 'default', 0, 'catalog/frontend/parse_url_directives', '1'),
(70, 'default', 0, 'catalog/sitemap/tree_mode', '0'),
(71, 'default', 0, 'catalog/sitemap/lines_perpage', '30'),
(72, 'default', 0, 'catalog/review/allow_guest', '1'),
(73, 'default', 0, 'catalog/product_image/base_width', '1800'),
(74, 'default', 0, 'catalog/product_image/small_width', '210'),
(75, 'default', 0, 'catalog/product_image/max_dimension', '5000'),
(76, 'default', 0, 'catalog/productalert/allow_price', '0'),
(77, 'default', 0, 'catalog/productalert/email_price_template', 'catalog_productalert_email_price_template'),
(78, 'default', 0, 'catalog/productalert/allow_stock', '0'),
(79, 'default', 0, 'catalog/productalert/email_stock_template', 'catalog_productalert_email_stock_template'),
(80, 'default', 0, 'catalog/productalert/email_identity', 'general'),
(81, 'default', 0, 'catalog/productalert_cron/frequency', 'D'),
(82, 'default', 0, 'crontab/jobs/catalog_product_alert/schedule/cron_expr', '0 0 * * *'),
(83, 'default', 0, 'crontab/jobs/catalog_product_alert/run/model', 'productalert/observer::process'),
(84, 'default', 0, 'catalog/productalert_cron/time', '00,00,00'),
(85, 'default', 0, 'catalog/productalert_cron/error_email', NULL),
(86, 'default', 0, 'catalog/productalert_cron/error_email_identity', 'general'),
(87, 'default', 0, 'catalog/productalert_cron/error_email_template', 'catalog_productalert_cron_error_email_template'),
(88, 'default', 0, 'catalog/recently_products/scope', 'website'),
(89, 'default', 0, 'catalog/recently_products/viewed_count', '5'),
(90, 'default', 0, 'catalog/recently_products/compared_count', '5'),
(91, 'default', 0, 'catalog/price/scope', '0'),
(92, 'default', 0, 'catalog/layered_navigation/display_product_count', '1'),
(93, 'default', 0, 'catalog/layered_navigation/price_range_calculation', 'auto'),
(94, 'default', 0, 'catalog/navigation/max_depth', '0'),
(95, 'default', 0, 'catalog/seo/site_map', '1'),
(96, 'default', 0, 'catalog/seo/search_terms', '1'),
(97, 'default', 0, 'catalog/seo/product_url_suffix', '.html'),
(98, 'default', 0, 'catalog/seo/category_url_suffix', '.html'),
(99, 'default', 0, 'catalog/seo/product_use_categories', '1'),
(100, 'default', 0, 'catalog/seo/save_rewrites_history', '1'),
(101, 'default', 0, 'catalog/seo/title_separator', '-'),
(102, 'default', 0, 'catalog/seo/category_canonical_tag', '0'),
(103, 'default', 0, 'catalog/seo/product_canonical_tag', '0'),
(104, 'default', 0, 'catalog/search/min_query_length', '1'),
(105, 'default', 0, 'catalog/search/max_query_length', '128'),
(106, 'default', 0, 'catalog/search/max_query_words', '10'),
(107, 'default', 0, 'catalog/search/search_type', '1'),
(108, 'default', 0, 'catalog/search/use_layered_navigation_count', '2000'),
(109, 'default', 0, 'catalog/search/show_autocomplete_results_count', '1'),
(110, 'default', 0, 'catalog/downloadable/order_item_status', '9'),
(111, 'default', 0, 'catalog/downloadable/downloads_number', '0'),
(112, 'default', 0, 'catalog/downloadable/shareable', '0'),
(113, 'default', 0, 'catalog/downloadable/samples_title', 'Samples'),
(114, 'default', 0, 'catalog/downloadable/links_title', 'Links'),
(115, 'default', 0, 'catalog/downloadable/links_target_new_window', '1'),
(116, 'default', 0, 'catalog/downloadable/content_disposition', 'inline'),
(117, 'default', 0, 'catalog/downloadable/disable_guest_checkout', '1'),
(118, 'default', 0, 'catalog/custom_options/use_calendar', '0'),
(119, 'default', 0, 'catalog/custom_options/date_fields_order', 'm,d,y'),
(120, 'default', 0, 'catalog/custom_options/time_format', '12h'),
(121, 'default', 0, 'catalog/custom_options/year_range', ','),
(122, 'default', 0, 'system/csrf/use_form_key', '0'),
(123, 'default', 0, 'system/cron/schedule_generate_every', '15'),
(124, 'default', 0, 'system/cron/schedule_ahead_for', '20'),
(125, 'default', 0, 'system/cron/schedule_lifetime', '15'),
(126, 'default', 0, 'system/cron/history_cleanup_every', '10'),
(127, 'default', 0, 'system/cron/history_success_lifetime', '60'),
(128, 'default', 0, 'system/cron/history_failure_lifetime', '600'),
(129, 'default', 0, 'system/smtp/disable', '0'),
(130, 'default', 0, 'system/smtp/host', 'localhost'),
(131, 'default', 0, 'system/smtp/port', '25'),
(132, 'default', 0, 'system/smtp/set_return_path', '0'),
(133, 'default', 0, 'system/currency/installed', 'CHE,CHW,AUD,AZN,ALL,DZD,GBP,AOA,ARS,AMD,AWG,AFN,BSD,BDT,BBD,BHD,BZD,BYR,BMD,BGN,BOB,BWP,BRL,BND,BIF,BTN,VUV,HUF,VEF,VEB,KRW,XCD,VND,HTG,GYD,GMD,GHS,GTQ,GNF,GIP,HNL,HKD,GEK,GEL,DKK,BUK,AED,STD,ZWD,KYD,NAD,USD,SBD,TTD,FJD,DOP,EUR,EGP,INR,IDR,JOD,IQD,IRR,ISK,YER,KZT,KHR,CAD,QAR,ZMK,KES,PGK,LAK,KGS,COP,BAM,CDF,CRC,CUP,KWD,MMK,LVL,SLL,LRD,LBP,LYD,LTL,LSL,MUR,MRO,MKD,MWK,MGA,MYR,MVR,MAD,MXN,MZN,MDL,MNT,ERN,NPR,NGN,ANG,NIC,NZD,ILS,TWD,NOK,OMR,TOP,PKR,PAB,PYG,MOP,PEN,PLN,RHD,RUB,RON,SVC,SAR,SZL,KPW,SCR,RSD,SGD,SYP,SKK,SOS,ROL,AZM,SDG,SRD,TJS,THB,WST,TZS,TND,TRY,TRL,TMM,UGX,UZS,UAH,UYU,PHP,DJF,XOF,XPF,KMF,RWF,FKP,SHP,HRK,CZK,CLP,SEK,CHF,LKR,GQE,CVE,EEK,ETB,CNY,ZAR,JMD,JPY'),
(134, 'default', 0, 'system/log/enable_log', '2'),
(135, 'default', 0, 'system/log/clean_after_day', '180'),
(136, 'default', 0, 'system/log/enabled', '1'),
(137, 'default', 0, 'system/log/time', '00,00,00'),
(138, 'default', 0, 'system/log/frequency', 'D'),
(139, 'default', 0, 'crontab/jobs/log_clean/schedule/cron_expr', '0 0 * * *'),
(140, 'default', 0, 'crontab/jobs/log_clean/run/model', 'log/cron::logClean'),
(141, 'default', 0, 'system/log/error_email', NULL),
(142, 'default', 0, 'system/log/error_email_identity', 'general'),
(143, 'default', 0, 'system/log/error_email_template', 'system_log_error_email_template'),
(144, 'default', 0, 'system/adminnotification/use_https', '0'),
(145, 'default', 0, 'system/adminnotification/frequency', '1'),
(146, 'default', 0, 'system/external_page_cache/enabled', '0'),
(147, 'default', 0, 'system/import_csv/configurable_page_size', '1000'),
(148, 'default', 0, 'system/export_csv/escaping', '1'),
(149, 'default', 0, 'system/backup/enabled', '0'),
(150, 'default', 0, 'system/media_storage_configuration/media_storage', '0'),
(151, 'default', 0, 'system/media_storage_configuration/media_database', 'default_setup'),
(152, 'default', 0, 'system/media_storage_configuration/configuration_update_time', '3600'),
(153, 'default', 0, 'dev/restrict/allow_ips', NULL),
(154, 'default', 0, 'dev/debug/profiler', '1'),
(155, 'default', 0, 'dev/translate_inline/active', '0'),
(156, 'default', 0, 'dev/translate_inline/active_admin', '0'),
(157, 'default', 0, 'dev/log/active', '1'),
(158, 'default', 0, 'dev/log/file', 'system.log'),
(159, 'default', 0, 'dev/log/exception_file', 'exception.log'),
(160, 'default', 0, 'dev/js/merge_files', '0'),
(161, 'default', 0, 'dev/css/merge_css_files', '0'),
(162, 'default', 0, 'cataloginventory/options/can_back_in_stock', '1'),
(163, 'default', 0, 'cataloginventory/options/can_subtract', '1'),
(164, 'default', 0, 'cataloginventory/options/show_out_of_stock', '1'),
(165, 'default', 0, 'cataloginventory/options/stock_threshold_qty', '0'),
(166, 'default', 0, 'cataloginventory/options/display_product_stock_status', '1'),
(167, 'default', 0, 'cataloginventory/item_options/manage_stock', '1'),
(168, 'default', 0, 'cataloginventory/item_options/backorders', '0'),
(169, 'default', 0, 'cataloginventory/item_options/max_sale_qty', '10000'),
(170, 'default', 0, 'cataloginventory/item_options/min_qty', '0'),
(171, 'default', 0, 'cataloginventory/item_options/min_sale_qty', 'a:0:{}'),
(172, 'default', 0, 'cataloginventory/item_options/notify_stock_qty', '1'),
(173, 'default', 0, 'cataloginventory/item_options/enable_qty_increments', '0'),
(174, 'default', 0, 'cataloginventory/item_options/auto_return', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `core_email_queue`
--

CREATE TABLE `core_email_queue` (
  `message_id` int(10) UNSIGNED NOT NULL COMMENT 'Message Id',
  `entity_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Entity ID',
  `entity_type` varchar(128) DEFAULT NULL COMMENT 'Entity Type',
  `event_type` varchar(128) DEFAULT NULL COMMENT 'Event Type',
  `message_body_hash` varchar(64) NOT NULL COMMENT 'Message Body Hash',
  `message_body` mediumtext NOT NULL COMMENT 'Message Body',
  `message_parameters` text NOT NULL COMMENT 'Message Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `processed_at` timestamp NULL DEFAULT NULL COMMENT 'Finish Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Queue';

-- --------------------------------------------------------

--
-- Структура таблицы `core_email_queue_recipients`
--

CREATE TABLE `core_email_queue_recipients` (
  `recipient_id` int(10) UNSIGNED NOT NULL COMMENT 'Recipient Id',
  `message_id` int(10) UNSIGNED NOT NULL COMMENT 'Message ID',
  `recipient_email` varchar(128) NOT NULL COMMENT 'Recipient Email',
  `recipient_name` varchar(255) NOT NULL COMMENT 'Recipient Name',
  `email_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Email Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Queue';

-- --------------------------------------------------------

--
-- Структура таблицы `core_email_template`
--

CREATE TABLE `core_email_template` (
  `template_id` int(10) UNSIGNED NOT NULL COMMENT 'Template Id',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) UNSIGNED DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Creation',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';

-- --------------------------------------------------------

--
-- Структура таблицы `core_flag`
--

CREATE TABLE `core_flag` (
  `flag_id` int(10) UNSIGNED NOT NULL COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Flag';

--
-- Дамп данных таблицы `core_flag`
--

INSERT INTO `core_flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(1, 'admin_notification_survey', 0, 'a:1:{s:13:\"survey_viewed\";b:1;}', '2018-03-29 22:01:09'),
(2, 'catalog_product_flat', 0, 'a:2:{s:8:\"is_built\";b:1;s:16:\"is_store_built_1\";b:1;}', '2018-03-30 08:24:05');

-- --------------------------------------------------------

--
-- Структура таблицы `core_layout_link`
--

CREATE TABLE `core_layout_link` (
  `layout_link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `area` varchar(64) DEFAULT NULL COMMENT 'Area',
  `package` varchar(64) DEFAULT NULL COMMENT 'Package',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `layout_update_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Layout Update Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link';

-- --------------------------------------------------------

--
-- Структура таблицы `core_layout_update`
--

CREATE TABLE `core_layout_update` (
  `layout_update_id` int(10) UNSIGNED NOT NULL COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates';

-- --------------------------------------------------------

--
-- Структура таблицы `core_resource`
--

CREATE TABLE `core_resource` (
  `code` varchar(50) NOT NULL COMMENT 'Resource Code',
  `version` varchar(50) DEFAULT NULL COMMENT 'Resource Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resources';

--
-- Дамп данных таблицы `core_resource`
--

INSERT INTO `core_resource` (`code`, `version`, `data_version`) VALUES
('adminnotification_setup', '1.6.0.0', '1.6.0.0'),
('admin_setup', '1.6.1.2', '1.6.1.2'),
('api2_setup', '1.0.0.0', '1.0.0.0'),
('api_setup', '1.6.0.1', '1.6.0.1'),
('backup_setup', '1.6.0.0', '1.6.0.0'),
('bundle_setup', '1.6.0.0.1', '1.6.0.0.1'),
('captcha_setup', '1.7.0.0.0', '1.7.0.0.0'),
('catalogindex_setup', '1.6.0.0', '1.6.0.0'),
('cataloginventory_setup', '1.6.0.0.2', '1.6.0.0.2'),
('catalogrule_setup', '1.6.0.3', '1.6.0.3'),
('catalogsearch_setup', '1.8.2.0', '1.8.2.0'),
('catalog_setup', '1.6.0.0.19.1.5', '1.6.0.0.19.1.5'),
('checkout_setup', '1.6.0.0', '1.6.0.0'),
('cms_setup', '1.6.0.0.2', '1.6.0.0.2'),
('compiler_setup', '1.6.0.0', '1.6.0.0'),
('contacts_setup', '1.6.0.0', '1.6.0.0'),
('core_setup', '1.6.0.7', '1.6.0.7'),
('cron_setup', '1.6.0.0', '1.6.0.0'),
('customer_setup', '1.6.2.0.5', '1.6.2.0.5'),
('dataflow_setup', '1.6.0.0', '1.6.0.0'),
('directory_setup', '1.6.0.3', '1.6.0.3'),
('downloadable_setup', '1.6.0.0.2', '1.6.0.0.2'),
('eav_setup', '1.6.0.1', '1.6.0.1'),
('giftmessage_setup', '1.6.0.0', '1.6.0.0'),
('googleanalytics_setup', '1.6.0.0', '1.6.0.0'),
('importexport_setup', '1.6.0.2', '1.6.0.2'),
('index_setup', '1.6.0.0', '1.6.0.0'),
('log_setup', '1.6.1.1', '1.6.1.1'),
('moneybookers_setup', '1.6.0.0', '1.6.0.0'),
('newsletter_setup', '1.6.0.2', '1.6.0.2'),
('oauth_setup', '1.0.0.0', '1.0.0.0'),
('paygate_setup', '1.6.0.0', '1.6.0.0'),
('payment_setup', '1.6.0.0', '1.6.0.0'),
('paypaluk_setup', '1.6.0.0', '1.6.0.0'),
('paypal_setup', '1.6.0.6', '1.6.0.6'),
('persistent_setup', '1.0.0.0', '1.0.0.0'),
('poll_setup', '1.6.0.1', '1.6.0.1'),
('productalert_setup', '1.6.0.0', '1.6.0.0'),
('rating_setup', '1.6.0.1', '1.6.0.1'),
('reports_setup', '1.6.0.0.1', '1.6.0.0.1'),
('review_setup', '1.6.0.0', '1.6.0.0'),
('rss_setup', '1.6.0.0', '1.6.0.0'),
('salesrule_setup', '1.6.0.3', '1.6.0.3'),
('sales_setup', '1.6.0.10', '1.6.0.10'),
('sendfriend_setup', '1.6.0.1', '1.6.0.1'),
('shipping_setup', '1.6.0.0', '1.6.0.0'),
('sitemap_setup', '1.6.0.0', '1.6.0.0'),
('tag_setup', '1.6.0.0', '1.6.0.0'),
('tax_setup', '1.6.0.4', '1.6.0.4'),
('usa_setup', '1.6.0.3', '1.6.0.3'),
('weee_setup', '1.6.0.0', '1.6.0.0'),
('widget_setup', '1.6.0.0', '1.6.0.0'),
('wishlist_setup', '1.6.0.0', '1.6.0.0');

-- --------------------------------------------------------

--
-- Структура таблицы `core_session`
--

CREATE TABLE `core_session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

-- --------------------------------------------------------

--
-- Структура таблицы `core_store`
--

CREATE TABLE `core_store` (
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Activity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores';

--
-- Дамп данных таблицы `core_store`
--

INSERT INTO `core_store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'default', 1, 1, 'Default Store View', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `core_store_group`
--

CREATE TABLE `core_store_group` (
  `group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Store Groups';

--
-- Дамп данных таблицы `core_store_group`
--

INSERT INTO `core_store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`) VALUES
(0, 0, 'Default', 0, 0),
(1, 1, 'Main Website Store', 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `core_translate`
--

CREATE TABLE `core_translate` (
  `key_id` int(10) UNSIGNED NOT NULL COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations';

-- --------------------------------------------------------

--
-- Структура таблицы `core_url_rewrite`
--

CREATE TABLE `core_url_rewrite` (
  `url_rewrite_id` int(10) UNSIGNED NOT NULL COMMENT 'Rewrite Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `id_path` varchar(255) DEFAULT NULL COMMENT 'Id Path',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `is_system` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Defines is Rewrite System',
  `options` varchar(255) DEFAULT NULL COMMENT 'Options',
  `description` varchar(255) DEFAULT NULL COMMENT 'Deascription',
  `category_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Category Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Url Rewrites';

--
-- Дамп данных таблицы `core_url_rewrite`
--

INSERT INTO `core_url_rewrite` (`url_rewrite_id`, `store_id`, `id_path`, `request_path`, `target_path`, `is_system`, `options`, `description`, `category_id`, `product_id`) VALUES
(1, 1, 'product/1', 'jogurtnica-elbee-e-24801.html', 'catalog/product/view/id/1', 1, NULL, NULL, NULL, 1),
(2, 1, 'product/2', 'jogurtnica-moulinex-yg-2301.html', 'catalog/product/view/id/2', 1, NULL, NULL, NULL, 2),
(3, 1, 'product/3', 'jogurtnica-hilton-jm-3801-beige.html', 'catalog/product/view/id/3', 1, NULL, NULL, NULL, 3),
(4, 1, 'product/4', 'jogurtnica-mystery-mym-6001.html', 'catalog/product/view/id/4', 1, NULL, NULL, NULL, 4),
(5, 1, 'product/5', 'gorenje-s450e.html', 'catalog/product/view/id/5', 1, NULL, NULL, NULL, 5),
(6, 1, 'product/6', 'moulinex-dj-9058-32.html', 'catalog/product/view/id/6', 1, NULL, NULL, NULL, 6),
(7, 1, 'product/7', 'meshok-dlja-pylesosa-fis-fst-1702.html', 'catalog/product/view/id/7', 1, NULL, NULL, NULL, 7),
(8, 1, 'product/8', 'komplekt-meshkov-fis-fs-0502.html', 'catalog/product/view/id/8', 1, NULL, NULL, NULL, 8),
(9, 1, 'product/9', 'meshok-dlja-pylesosa-fis-fst-0602.html', 'catalog/product/view/id/9', 1, NULL, NULL, NULL, 9),
(10, 1, 'product/10', 'vytjazhka-eleyus-storm-380-60-is.html', 'catalog/product/view/id/10', 1, NULL, NULL, NULL, 10),
(11, 1, 'product/11', 'vytjazhka-pyramida-tl-50-wh.html', 'catalog/product/view/id/11', 1, NULL, NULL, NULL, 11),
(23, 1, 'product/12', 'vesy-napol-nye-aurora-au-4310.html', 'catalog/product/view/id/12', 1, NULL, NULL, NULL, 12),
(24, 1, 'product/13', 'vesy-napol-nye-grunhelm-bes-1s.html', 'catalog/product/view/id/13', 1, NULL, NULL, NULL, 13),
(25, 1, 'product/14', 'vesy-napol-nye-grunhelm-bes-1lxd.html', 'catalog/product/view/id/14', 1, NULL, NULL, NULL, 14),
(41, 1, 'category/4', 'appliances.html', 'catalog/category/view/id/4', 1, NULL, NULL, 4, NULL),
(55, 1, 'product/7/4', 'appliances/meshok-dlja-pylesosa-fis-fst-1702.html', 'catalog/product/view/id/7/category/4', 1, NULL, NULL, 4, 7),
(57, 1, 'product/8/4', 'appliances/komplekt-meshkov-fis-fs-0502.html', 'catalog/product/view/id/8/category/4', 1, NULL, NULL, 4, 8),
(59, 1, 'product/9/4', 'appliances/meshok-dlja-pylesosa-fis-fst-0602.html', 'catalog/product/view/id/9/category/4', 1, NULL, NULL, 4, 9),
(61, 1, 'product/10/4', 'appliances/vytjazhka-eleyus-storm-380-60-is.html', 'catalog/product/view/id/10/category/4', 1, NULL, NULL, 4, 10),
(63, 1, 'product/11/4', 'appliances/vytjazhka-pyramida-tl-50-wh.html', 'catalog/product/view/id/11/category/4', 1, NULL, NULL, 4, 11),
(65, 1, 'product/12/4', 'appliances/vesy-napol-nye-aurora-au-4310.html', 'catalog/product/view/id/12/category/4', 1, NULL, NULL, 4, 12),
(67, 1, 'product/13/4', 'appliances/vesy-napol-nye-grunhelm-bes-1s.html', 'catalog/product/view/id/13/category/4', 1, NULL, NULL, 4, 13),
(69, 1, 'product/14/4', 'appliances/vesy-napol-nye-grunhelm-bes-1lxd.html', 'catalog/product/view/id/14/category/4', 1, NULL, NULL, 4, 14),
(103, 1, 'category/5', 'test2.html', 'catalog/category/view/id/5', 1, NULL, NULL, 5, NULL),
(105, 1, 'product/1/5', 'test2/jogurtnica-elbee-e-24801.html', 'catalog/product/view/id/1/category/5', 1, NULL, NULL, 5, 1),
(144, 1, 'product/15/4', 'appliances/tv-antenna-eurosky-es-005a-black-podrobnee-https-rozetka-com-ua-32768967-p32768967.html', 'catalog/product/view/id/15/category/4', 1, NULL, NULL, 4, 15),
(145, 1, 'product/15', 'tv-antenna-eurosky-es-005a-black-podrobnee-https-rozetka-com-ua-32768967-p32768967.html', 'catalog/product/view/id/15', 1, NULL, NULL, NULL, 15),
(146, 1, 'product/16', 'tv-antenna-motylek-m-1.html', 'catalog/product/view/id/16', 1, NULL, NULL, NULL, 16),
(147, 1, 'product/16/4', 'appliances/tv-antenna-motylek-m-1.html', 'catalog/product/view/id/16/category/4', 1, NULL, NULL, 4, 16),
(149, 1, 'product/17/4', 'appliances/tv-resiver-dvb-t2-ergo-1217-t2-1217.html', 'catalog/product/view/id/17/category/4', 1, NULL, NULL, 4, 17),
(150, 1, 'product/17', 'tv-resiver-dvb-t2-ergo-1217-t2-1217.html', 'catalog/product/view/id/17', 1, NULL, NULL, NULL, 17),
(153, 1, 'product/2/5', 'test2/jogurtnica-moulinex-yg-2301.html', 'catalog/product/view/id/2/category/5', 1, NULL, NULL, 5, 2),
(156, 1, 'product/3/5', 'test2/jogurtnica-hilton-jm-3801-beige.html', 'catalog/product/view/id/3/category/5', 1, NULL, NULL, 5, 3),
(159, 1, 'product/4/5', 'test2/jogurtnica-mystery-mym-6001.html', 'catalog/product/view/id/4/category/5', 1, NULL, NULL, 5, 4),
(162, 1, 'product/5/5', 'test2/gorenje-s450e.html', 'catalog/product/view/id/5/category/5', 1, NULL, NULL, 5, 5),
(165, 1, 'product/6/5', 'test2/moulinex-dj-9058-32.html', 'catalog/product/view/id/6/category/5', 1, NULL, NULL, 5, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `core_variable`
--

CREATE TABLE `core_variable` (
  `variable_id` int(10) UNSIGNED NOT NULL COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables';

-- --------------------------------------------------------

--
-- Структура таблицы `core_variable_value`
--

CREATE TABLE `core_variable_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Variable Value Id',
  `variable_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value';

-- --------------------------------------------------------

--
-- Структура таблицы `core_website`
--

CREATE TABLE `core_website` (
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Defines Is Website Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Websites';

--
-- Дамп данных таблицы `core_website`
--

INSERT INTO `core_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `coupon_aggregated`
--

CREATE TABLE `coupon_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';

-- --------------------------------------------------------

--
-- Структура таблицы `coupon_aggregated_order`
--

CREATE TABLE `coupon_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';

-- --------------------------------------------------------

--
-- Структура таблицы `coupon_aggregated_updated`
--

CREATE TABLE `coupon_aggregated_updated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Updated';

-- --------------------------------------------------------

--
-- Структура таблицы `cron_schedule`
--

CREATE TABLE `cron_schedule` (
  `schedule_id` int(10) UNSIGNED NOT NULL COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule';

-- --------------------------------------------------------

--
-- Структура таблицы `customer_address_entity`
--

CREATE TABLE `customer_address_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity';

-- --------------------------------------------------------

--
-- Структура таблицы `customer_address_entity_datetime`
--

CREATE TABLE `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime';

-- --------------------------------------------------------

--
-- Структура таблицы `customer_address_entity_decimal`
--

CREATE TABLE `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal';

-- --------------------------------------------------------

--
-- Структура таблицы `customer_address_entity_int`
--

CREATE TABLE `customer_address_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int';

-- --------------------------------------------------------

--
-- Структура таблицы `customer_address_entity_text`
--

CREATE TABLE `customer_address_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text';

-- --------------------------------------------------------

--
-- Структура таблицы `customer_address_entity_varchar`
--

CREATE TABLE `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar';

-- --------------------------------------------------------

--
-- Структура таблицы `customer_eav_attribute`
--

CREATE TABLE `customer_eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Дамп данных таблицы `customer_eav_attribute`
--

INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`) VALUES
(1, 1, NULL, 0, NULL, 1, 10, NULL),
(2, 0, NULL, 0, NULL, 1, 0, NULL),
(3, 1, NULL, 0, NULL, 1, 20, NULL),
(4, 0, NULL, 0, NULL, 0, 30, NULL),
(5, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 40, NULL),
(6, 1, NULL, 0, NULL, 0, 50, NULL),
(7, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 60, NULL),
(8, 0, NULL, 0, NULL, 0, 70, NULL),
(9, 1, NULL, 0, 'a:1:{s:16:\"input_validation\";s:5:\"email\";}', 1, 80, NULL),
(10, 1, NULL, 0, NULL, 1, 25, NULL),
(11, 0, 'date', 0, 'a:1:{s:16:\"input_validation\";s:4:\"date\";}', 0, 90, NULL),
(12, 0, NULL, 0, NULL, 1, 0, NULL),
(13, 0, NULL, 0, NULL, 1, 0, NULL),
(14, 0, NULL, 0, NULL, 1, 0, NULL),
(15, 0, NULL, 0, 'a:1:{s:15:\"max_text_length\";i:255;}', 0, 100, NULL),
(16, 0, NULL, 0, NULL, 1, 0, NULL),
(17, 0, 'datetime', 0, NULL, 0, 0, NULL),
(18, 0, NULL, 0, 'a:0:{}', 0, 110, NULL),
(19, 0, NULL, 0, NULL, 0, 10, NULL),
(20, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 20, NULL),
(21, 1, NULL, 0, NULL, 0, 30, NULL),
(22, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 40, NULL),
(23, 0, NULL, 0, NULL, 0, 50, NULL),
(24, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 60, NULL),
(25, 1, NULL, 2, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 70, NULL),
(26, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 80, NULL),
(27, 1, NULL, 0, NULL, 1, 90, NULL),
(28, 1, NULL, 0, NULL, 1, 100, NULL),
(29, 1, NULL, 0, NULL, 1, 100, NULL),
(30, 1, NULL, 0, 'a:0:{}', 1, 110, 'customer/attribute_data_postcode'),
(31, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 120, NULL),
(32, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 130, NULL),
(33, 0, NULL, 0, NULL, 1, 0, NULL),
(34, 0, NULL, 0, 'a:1:{s:16:\"input_validation\";s:4:\"date\";}', 1, 0, NULL),
(35, 1, NULL, 0, NULL, 1, 28, NULL),
(36, 1, NULL, 0, NULL, 1, 140, NULL),
(37, 0, NULL, 0, NULL, 1, 0, NULL),
(38, 0, NULL, 0, NULL, 1, 0, NULL),
(39, 0, NULL, 0, NULL, 1, 0, NULL),
(40, 0, NULL, 0, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `customer_eav_attribute_website`
--

CREATE TABLE `customer_eav_attribute_website` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Multiline Count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

-- --------------------------------------------------------

--
-- Структура таблицы `customer_entity`
--

CREATE TABLE `customer_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `website_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity';

--
-- Дамп данных таблицы `customer_entity`
--

INSERT INTO `customer_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `website_id`, `email`, `group_id`, `increment_id`, `store_id`, `created_at`, `updated_at`, `is_active`, `disable_auto_group_change`) VALUES
(1, 1, 0, 1, 'ivan@mailr.ru', 1, NULL, 1, '2018-03-30 05:17:24', '2018-03-30 05:17:24', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `customer_entity_datetime`
--

CREATE TABLE `customer_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime';

-- --------------------------------------------------------

--
-- Структура таблицы `customer_entity_decimal`
--

CREATE TABLE `customer_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal';

-- --------------------------------------------------------

--
-- Структура таблицы `customer_entity_int`
--

CREATE TABLE `customer_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int';

-- --------------------------------------------------------

--
-- Структура таблицы `customer_entity_text`
--

CREATE TABLE `customer_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text';

-- --------------------------------------------------------

--
-- Структура таблицы `customer_entity_varchar`
--

CREATE TABLE `customer_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar';

--
-- Дамп данных таблицы `customer_entity_varchar`
--

INSERT INTO `customer_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 1, 5, 1, 'Ivan'),
(2, 1, 6, 1, NULL),
(3, 1, 7, 1, 'Ivanov'),
(4, 1, 12, 1, '94736ea99af928ced20628c17c99b5f7:aD7U9ukC9EKB91HUPWZA2kOFNtBvnmB7'),
(5, 1, 3, 1, 'Default Store View');

-- --------------------------------------------------------

--
-- Структура таблицы `customer_flowpassword`
--

CREATE TABLE `customer_flowpassword` (
  `flowpassword_id` int(10) UNSIGNED NOT NULL COMMENT 'Flow password Id',
  `ip` varchar(50) NOT NULL COMMENT 'User IP',
  `email` varchar(255) NOT NULL COMMENT 'Requested email for change',
  `requested_date` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Requested date for change'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer flow password';

-- --------------------------------------------------------

--
-- Структура таблицы `customer_form_attribute`
--

CREATE TABLE `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Дамп данных таблицы `customer_form_attribute`
--

INSERT INTO `customer_form_attribute` (`form_code`, `attribute_id`) VALUES
('adminhtml_customer', 1),
('adminhtml_customer', 3),
('adminhtml_customer', 4),
('checkout_register', 4),
('customer_account_create', 4),
('customer_account_edit', 4),
('adminhtml_customer', 5),
('checkout_register', 5),
('customer_account_create', 5),
('customer_account_edit', 5),
('adminhtml_customer', 6),
('checkout_register', 6),
('customer_account_create', 6),
('customer_account_edit', 6),
('adminhtml_customer', 7),
('checkout_register', 7),
('customer_account_create', 7),
('customer_account_edit', 7),
('adminhtml_customer', 8),
('checkout_register', 8),
('customer_account_create', 8),
('customer_account_edit', 8),
('adminhtml_checkout', 9),
('adminhtml_customer', 9),
('checkout_register', 9),
('customer_account_create', 9),
('customer_account_edit', 9),
('adminhtml_checkout', 10),
('adminhtml_customer', 10),
('adminhtml_checkout', 11),
('adminhtml_customer', 11),
('checkout_register', 11),
('customer_account_create', 11),
('customer_account_edit', 11),
('adminhtml_checkout', 15),
('adminhtml_customer', 15),
('checkout_register', 15),
('customer_account_create', 15),
('customer_account_edit', 15),
('adminhtml_customer', 17),
('checkout_register', 17),
('customer_account_create', 17),
('customer_account_edit', 17),
('adminhtml_checkout', 18),
('adminhtml_customer', 18),
('checkout_register', 18),
('customer_account_create', 18),
('customer_account_edit', 18),
('adminhtml_customer_address', 19),
('customer_address_edit', 19),
('customer_register_address', 19),
('adminhtml_customer_address', 20),
('customer_address_edit', 20),
('customer_register_address', 20),
('adminhtml_customer_address', 21),
('customer_address_edit', 21),
('customer_register_address', 21),
('adminhtml_customer_address', 22),
('customer_address_edit', 22),
('customer_register_address', 22),
('adminhtml_customer_address', 23),
('customer_address_edit', 23),
('customer_register_address', 23),
('adminhtml_customer_address', 24),
('customer_address_edit', 24),
('customer_register_address', 24),
('adminhtml_customer_address', 25),
('customer_address_edit', 25),
('customer_register_address', 25),
('adminhtml_customer_address', 26),
('customer_address_edit', 26),
('customer_register_address', 26),
('adminhtml_customer_address', 27),
('customer_address_edit', 27),
('customer_register_address', 27),
('adminhtml_customer_address', 28),
('customer_address_edit', 28),
('customer_register_address', 28),
('adminhtml_customer_address', 29),
('customer_address_edit', 29),
('customer_register_address', 29),
('adminhtml_customer_address', 30),
('customer_address_edit', 30),
('customer_register_address', 30),
('adminhtml_customer_address', 31),
('customer_address_edit', 31),
('customer_register_address', 31),
('adminhtml_customer_address', 32),
('customer_address_edit', 32),
('customer_register_address', 32),
('adminhtml_customer', 35),
('adminhtml_customer_address', 36),
('customer_address_edit', 36),
('customer_register_address', 36);

-- --------------------------------------------------------

--
-- Структура таблицы `customer_group`
--

CREATE TABLE `customer_group` (
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Tax Class Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Group';

--
-- Дамп данных таблицы `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `dataflow_batch`
--

CREATE TABLE `dataflow_batch` (
  `batch_id` int(10) UNSIGNED NOT NULL COMMENT 'Batch Id',
  `profile_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Profile ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `adapter` varchar(128) DEFAULT NULL COMMENT 'Adapter',
  `params` text COMMENT 'Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch';

-- --------------------------------------------------------

--
-- Структура таблицы `dataflow_batch_export`
--

CREATE TABLE `dataflow_batch_export` (
  `batch_export_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Batch Export Id',
  `batch_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Export';

-- --------------------------------------------------------

--
-- Структура таблицы `dataflow_batch_import`
--

CREATE TABLE `dataflow_batch_import` (
  `batch_import_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Batch Import Id',
  `batch_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Import';

-- --------------------------------------------------------

--
-- Структура таблицы `dataflow_import_data`
--

CREATE TABLE `dataflow_import_data` (
  `import_id` int(11) NOT NULL COMMENT 'Import Id',
  `session_id` int(11) DEFAULT NULL COMMENT 'Session Id',
  `serial_number` int(11) NOT NULL DEFAULT '0' COMMENT 'Serial Number',
  `value` text COMMENT 'Value',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Import Data';

-- --------------------------------------------------------

--
-- Структура таблицы `dataflow_profile`
--

CREATE TABLE `dataflow_profile` (
  `profile_id` int(10) UNSIGNED NOT NULL COMMENT 'Profile Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `actions_xml` text COMMENT 'Actions Xml',
  `gui_data` text COMMENT 'Gui Data',
  `direction` varchar(6) DEFAULT NULL COMMENT 'Direction',
  `entity_type` varchar(64) DEFAULT NULL COMMENT 'Entity Type',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `data_transfer` varchar(11) DEFAULT NULL COMMENT 'Data Transfer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile';

--
-- Дамп данных таблицы `dataflow_profile`
--

INSERT INTO `dataflow_profile` (`profile_id`, `name`, `created_at`, `updated_at`, `actions_xml`, `gui_data`, `direction`, `entity_type`, `store_id`, `data_transfer`) VALUES
(1, 'Export All Products', '2018-03-29 21:53:46', '2018-03-29 21:53:46', '<action type=\"catalog/convert_adapter_product\" method=\"load\">\\r\\n    <var name=\"store\"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type=\"catalog/convert_parser_product\" method=\"unparse\">\\r\\n    <var name=\"store\"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type=\"dataflow/convert_mapper_column\" method=\"map\">\\r\\n</action>\\r\\n\\r\\n<action type=\"dataflow/convert_parser_csv\" method=\"unparse\">\\r\\n    <var name=\"delimiter\"><![CDATA[,]]></var>\\r\\n    <var name=\"enclose\"><![CDATA[\"]]></var>\\r\\n    <var name=\"fieldnames\">true</var>\\r\\n</action>\\r\\n\\r\\n<action type=\"dataflow/convert_adapter_io\" method=\"save\">\\r\\n    <var name=\"type\">file</var>\\r\\n    <var name=\"path\">var/export</var>\\r\\n    <var name=\"filename\"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:\"file\";a:7:{s:4:\"type\";s:4:\"file\";s:8:\"filename\";s:23:\"export_all_products.csv\";s:4:\"path\";s:10:\"var/export\";s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:8:\"password\";s:0:\"\";s:7:\"passive\";s:0:\"\";}s:5:\"parse\";a:5:{s:4:\"type\";s:3:\"csv\";s:12:\"single_sheet\";s:0:\"\";s:9:\"delimiter\";s:1:\",\";s:7:\"enclose\";s:1:\"\"\";s:10:\"fieldnames\";s:4:\"true\";}s:3:\"map\";a:3:{s:14:\"only_specified\";s:0:\"\";s:7:\"product\";a:2:{s:2:\"db\";a:0:{}s:4:\"file\";a:0:{}}s:8:\"customer\";a:2:{s:2:\"db\";a:0:{}s:4:\"file\";a:0:{}}}s:7:\"product\";a:1:{s:6:\"filter\";a:8:{s:4:\"name\";s:0:\"\";s:3:\"sku\";s:0:\"\";s:4:\"type\";s:1:\"0\";s:13:\"attribute_set\";s:0:\"\";s:5:\"price\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}s:3:\"qty\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}s:10:\"visibility\";s:1:\"0\";s:6:\"status\";s:1:\"0\";}}s:8:\"customer\";a:1:{s:6:\"filter\";a:10:{s:9:\"firstname\";s:0:\"\";s:8:\"lastname\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"group\";s:1:\"0\";s:10:\"adressType\";s:15:\"default_billing\";s:9:\"telephone\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:0:\"\";s:6:\"region\";s:0:\"\";s:10:\"created_at\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}}}}', 'export', 'product', 0, 'file'),
(2, 'Export Product Stocks', '2018-03-29 21:53:47', '2018-03-29 21:53:47', '<action type=\"catalog/convert_adapter_product\" method=\"load\">\\r\\n    <var name=\"store\"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type=\"catalog/convert_parser_product\" method=\"unparse\">\\r\\n    <var name=\"store\"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type=\"dataflow/convert_mapper_column\" method=\"map\">\\r\\n</action>\\r\\n\\r\\n<action type=\"dataflow/convert_parser_csv\" method=\"unparse\">\\r\\n    <var name=\"delimiter\"><![CDATA[,]]></var>\\r\\n    <var name=\"enclose\"><![CDATA[\"]]></var>\\r\\n    <var name=\"fieldnames\">true</var>\\r\\n</action>\\r\\n\\r\\n<action type=\"dataflow/convert_adapter_io\" method=\"save\">\\r\\n    <var name=\"type\">file</var>\\r\\n    <var name=\"path\">var/export</var>\\r\\n    <var name=\"filename\"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:\"file\";a:7:{s:4:\"type\";s:4:\"file\";s:8:\"filename\";s:25:\"export_product_stocks.csv\";s:4:\"path\";s:10:\"var/export\";s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:8:\"password\";s:0:\"\";s:7:\"passive\";s:0:\"\";}s:5:\"parse\";a:5:{s:4:\"type\";s:3:\"csv\";s:12:\"single_sheet\";s:0:\"\";s:9:\"delimiter\";s:1:\",\";s:7:\"enclose\";s:1:\"\"\";s:10:\"fieldnames\";s:4:\"true\";}s:3:\"map\";a:3:{s:14:\"only_specified\";s:4:\"true\";s:7:\"product\";a:2:{s:2:\"db\";a:4:{i:1;s:5:\"store\";i:2;s:3:\"sku\";i:3;s:3:\"qty\";i:4;s:11:\"is_in_stock\";}s:4:\"file\";a:4:{i:1;s:5:\"store\";i:2;s:3:\"sku\";i:3;s:3:\"qty\";i:4;s:11:\"is_in_stock\";}}s:8:\"customer\";a:2:{s:2:\"db\";a:0:{}s:4:\"file\";a:0:{}}}s:7:\"product\";a:1:{s:6:\"filter\";a:8:{s:4:\"name\";s:0:\"\";s:3:\"sku\";s:0:\"\";s:4:\"type\";s:1:\"0\";s:13:\"attribute_set\";s:0:\"\";s:5:\"price\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}s:3:\"qty\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}s:10:\"visibility\";s:1:\"0\";s:6:\"status\";s:1:\"0\";}}s:8:\"customer\";a:1:{s:6:\"filter\";a:10:{s:9:\"firstname\";s:0:\"\";s:8:\"lastname\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"group\";s:1:\"0\";s:10:\"adressType\";s:15:\"default_billing\";s:9:\"telephone\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:0:\"\";s:6:\"region\";s:0:\"\";s:10:\"created_at\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}}}}', 'export', 'product', 0, 'file'),
(3, 'Import All Products', '2018-03-29 21:53:47', '2018-03-29 21:53:47', '<action type=\"dataflow/convert_parser_csv\" method=\"parse\">\\r\\n    <var name=\"delimiter\"><![CDATA[,]]></var>\\r\\n    <var name=\"enclose\"><![CDATA[\"]]></var>\\r\\n    <var name=\"fieldnames\">true</var>\\r\\n    <var name=\"store\"><![CDATA[0]]></var>\\r\\n    <var name=\"adapter\">catalog/convert_adapter_product</var>\\r\\n    <var name=\"method\">parse</var>\\r\\n</action>', 'a:5:{s:4:\"file\";a:7:{s:4:\"type\";s:4:\"file\";s:8:\"filename\";s:23:\"export_all_products.csv\";s:4:\"path\";s:10:\"var/export\";s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:8:\"password\";s:0:\"\";s:7:\"passive\";s:0:\"\";}s:5:\"parse\";a:5:{s:4:\"type\";s:3:\"csv\";s:12:\"single_sheet\";s:0:\"\";s:9:\"delimiter\";s:1:\",\";s:7:\"enclose\";s:1:\"\"\";s:10:\"fieldnames\";s:4:\"true\";}s:3:\"map\";a:3:{s:14:\"only_specified\";s:0:\"\";s:7:\"product\";a:2:{s:2:\"db\";a:0:{}s:4:\"file\";a:0:{}}s:8:\"customer\";a:2:{s:2:\"db\";a:0:{}s:4:\"file\";a:0:{}}}s:7:\"product\";a:1:{s:6:\"filter\";a:8:{s:4:\"name\";s:0:\"\";s:3:\"sku\";s:0:\"\";s:4:\"type\";s:1:\"0\";s:13:\"attribute_set\";s:0:\"\";s:5:\"price\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}s:3:\"qty\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}s:10:\"visibility\";s:1:\"0\";s:6:\"status\";s:1:\"0\";}}s:8:\"customer\";a:1:{s:6:\"filter\";a:10:{s:9:\"firstname\";s:0:\"\";s:8:\"lastname\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"group\";s:1:\"0\";s:10:\"adressType\";s:15:\"default_billing\";s:9:\"telephone\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:0:\"\";s:6:\"region\";s:0:\"\";s:10:\"created_at\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}}}}', 'import', 'product', 0, 'interactive'),
(4, 'Import Product Stocks', '2018-03-29 21:53:47', '2018-03-29 21:53:47', '<action type=\"dataflow/convert_parser_csv\" method=\"parse\">\\r\\n    <var name=\"delimiter\"><![CDATA[,]]></var>\\r\\n    <var name=\"enclose\"><![CDATA[\"]]></var>\\r\\n    <var name=\"fieldnames\">true</var>\\r\\n    <var name=\"store\"><![CDATA[0]]></var>\\r\\n    <var name=\"adapter\">catalog/convert_adapter_product</var>\\r\\n    <var name=\"method\">parse</var>\\r\\n</action>', 'a:5:{s:4:\"file\";a:7:{s:4:\"type\";s:4:\"file\";s:8:\"filename\";s:18:\"export_product.csv\";s:4:\"path\";s:10:\"var/export\";s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:8:\"password\";s:0:\"\";s:7:\"passive\";s:0:\"\";}s:5:\"parse\";a:5:{s:4:\"type\";s:3:\"csv\";s:12:\"single_sheet\";s:0:\"\";s:9:\"delimiter\";s:1:\",\";s:7:\"enclose\";s:1:\"\"\";s:10:\"fieldnames\";s:4:\"true\";}s:3:\"map\";a:3:{s:14:\"only_specified\";s:0:\"\";s:7:\"product\";a:2:{s:2:\"db\";a:0:{}s:4:\"file\";a:0:{}}s:8:\"customer\";a:2:{s:2:\"db\";a:0:{}s:4:\"file\";a:0:{}}}s:7:\"product\";a:1:{s:6:\"filter\";a:8:{s:4:\"name\";s:0:\"\";s:3:\"sku\";s:0:\"\";s:4:\"type\";s:1:\"0\";s:13:\"attribute_set\";s:0:\"\";s:5:\"price\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}s:3:\"qty\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}s:10:\"visibility\";s:1:\"0\";s:6:\"status\";s:1:\"0\";}}s:8:\"customer\";a:1:{s:6:\"filter\";a:10:{s:9:\"firstname\";s:0:\"\";s:8:\"lastname\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"group\";s:1:\"0\";s:10:\"adressType\";s:15:\"default_billing\";s:9:\"telephone\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:0:\"\";s:6:\"region\";s:0:\"\";s:10:\"created_at\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}}}}', 'import', 'product', 0, 'interactive'),
(5, 'Export Customers', '2018-03-29 21:53:47', '2018-03-29 21:53:47', '<action type=\"customer/convert_adapter_customer\" method=\"load\">\\r\\n    <var name=\"store\"><![CDATA[0]]></var>\\r\\n    <var name=\"filter/adressType\"><![CDATA[default_billing]]></var>\\r\\n</action>\\r\\n\\r\\n<action type=\"customer/convert_parser_customer\" method=\"unparse\">\\r\\n    <var name=\"store\"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type=\"dataflow/convert_mapper_column\" method=\"map\">\\r\\n</action>\\r\\n\\r\\n<action type=\"dataflow/convert_parser_csv\" method=\"unparse\">\\r\\n    <var name=\"delimiter\"><![CDATA[,]]></var>\\r\\n    <var name=\"enclose\"><![CDATA[\"]]></var>\\r\\n    <var name=\"fieldnames\">true</var>\\r\\n</action>\\r\\n\\r\\n<action type=\"dataflow/convert_adapter_io\" method=\"save\">\\r\\n    <var name=\"type\">file</var>\\r\\n    <var name=\"path\">var/export</var>\\r\\n    <var name=\"filename\"><![CDATA[export_customers.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:\"file\";a:7:{s:4:\"type\";s:4:\"file\";s:8:\"filename\";s:20:\"export_customers.csv\";s:4:\"path\";s:10:\"var/export\";s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:8:\"password\";s:0:\"\";s:7:\"passive\";s:0:\"\";}s:5:\"parse\";a:5:{s:4:\"type\";s:3:\"csv\";s:12:\"single_sheet\";s:0:\"\";s:9:\"delimiter\";s:1:\",\";s:7:\"enclose\";s:1:\"\"\";s:10:\"fieldnames\";s:4:\"true\";}s:3:\"map\";a:3:{s:14:\"only_specified\";s:0:\"\";s:7:\"product\";a:2:{s:2:\"db\";a:0:{}s:4:\"file\";a:0:{}}s:8:\"customer\";a:2:{s:2:\"db\";a:0:{}s:4:\"file\";a:0:{}}}s:7:\"product\";a:1:{s:6:\"filter\";a:8:{s:4:\"name\";s:0:\"\";s:3:\"sku\";s:0:\"\";s:4:\"type\";s:1:\"0\";s:13:\"attribute_set\";s:0:\"\";s:5:\"price\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}s:3:\"qty\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}s:10:\"visibility\";s:1:\"0\";s:6:\"status\";s:1:\"0\";}}s:8:\"customer\";a:1:{s:6:\"filter\";a:10:{s:9:\"firstname\";s:0:\"\";s:8:\"lastname\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"group\";s:1:\"0\";s:10:\"adressType\";s:15:\"default_billing\";s:9:\"telephone\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:0:\"\";s:6:\"region\";s:0:\"\";s:10:\"created_at\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}}}}', 'export', 'customer', 0, 'file'),
(6, 'Import Customers', '2018-03-29 21:53:48', '2018-03-29 21:53:48', '<action type=\"dataflow/convert_parser_csv\" method=\"parse\">\\r\\n    <var name=\"delimiter\"><![CDATA[,]]></var>\\r\\n    <var name=\"enclose\"><![CDATA[\"]]></var>\\r\\n    <var name=\"fieldnames\">true</var>\\r\\n    <var name=\"store\"><![CDATA[0]]></var>\\r\\n    <var name=\"adapter\">customer/convert_adapter_customer</var>\\r\\n    <var name=\"method\">parse</var>\\r\\n</action>', 'a:5:{s:4:\"file\";a:7:{s:4:\"type\";s:4:\"file\";s:8:\"filename\";s:19:\"export_customer.csv\";s:4:\"path\";s:10:\"var/export\";s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:8:\"password\";s:0:\"\";s:7:\"passive\";s:0:\"\";}s:5:\"parse\";a:5:{s:4:\"type\";s:3:\"csv\";s:12:\"single_sheet\";s:0:\"\";s:9:\"delimiter\";s:1:\",\";s:7:\"enclose\";s:1:\"\"\";s:10:\"fieldnames\";s:4:\"true\";}s:3:\"map\";a:3:{s:14:\"only_specified\";s:0:\"\";s:7:\"product\";a:2:{s:2:\"db\";a:0:{}s:4:\"file\";a:0:{}}s:8:\"customer\";a:2:{s:2:\"db\";a:0:{}s:4:\"file\";a:0:{}}}s:7:\"product\";a:1:{s:6:\"filter\";a:8:{s:4:\"name\";s:0:\"\";s:3:\"sku\";s:0:\"\";s:4:\"type\";s:1:\"0\";s:13:\"attribute_set\";s:0:\"\";s:5:\"price\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}s:3:\"qty\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}s:10:\"visibility\";s:1:\"0\";s:6:\"status\";s:1:\"0\";}}s:8:\"customer\";a:1:{s:6:\"filter\";a:10:{s:9:\"firstname\";s:0:\"\";s:8:\"lastname\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"group\";s:1:\"0\";s:10:\"adressType\";s:15:\"default_billing\";s:9:\"telephone\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:0:\"\";s:6:\"region\";s:0:\"\";s:10:\"created_at\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:0:\"\";}}}}', 'import', 'customer', 0, 'interactive');

-- --------------------------------------------------------

--
-- Структура таблицы `dataflow_profile_history`
--

CREATE TABLE `dataflow_profile_history` (
  `history_id` int(10) UNSIGNED NOT NULL COMMENT 'History Id',
  `profile_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `action_code` varchar(64) DEFAULT NULL COMMENT 'Action Code',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User Id',
  `performed_at` timestamp NULL DEFAULT NULL COMMENT 'Performed At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile History';

--
-- Дамп данных таблицы `dataflow_profile_history`
--

INSERT INTO `dataflow_profile_history` (`history_id`, `profile_id`, `action_code`, `user_id`, `performed_at`) VALUES
(1, 1, 'create', 0, '2018-03-29 21:53:47'),
(2, 2, 'create', 0, '2018-03-29 21:53:47'),
(3, 3, 'create', 0, '2018-03-29 21:53:47'),
(4, 4, 'create', 0, '2018-03-29 21:53:47'),
(5, 5, 'create', 0, '2018-03-29 21:53:47'),
(6, 6, 'create', 0, '2018-03-29 21:53:48');

-- --------------------------------------------------------

--
-- Структура таблицы `dataflow_session`
--

CREATE TABLE `dataflow_session` (
  `session_id` int(11) NOT NULL COMMENT 'Session Id',
  `user_id` int(11) NOT NULL COMMENT 'User Id',
  `created_date` timestamp NULL DEFAULT NULL COMMENT 'Created Date',
  `file` varchar(255) DEFAULT NULL COMMENT 'File',
  `type` varchar(32) DEFAULT NULL COMMENT 'Type',
  `direction` varchar(32) DEFAULT NULL COMMENT 'Direction',
  `comment` varchar(255) DEFAULT NULL COMMENT 'Comment'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Session';

-- --------------------------------------------------------

--
-- Структура таблицы `design_change`
--

CREATE TABLE `design_change` (
  `design_change_id` int(11) NOT NULL COMMENT 'Design Change Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes';

-- --------------------------------------------------------

--
-- Структура таблицы `directory_country`
--

CREATE TABLE `directory_country` (
  `country_id` varchar(2) NOT NULL DEFAULT '' COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Дамп данных таблицы `directory_country`
--

INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PR', 'PR', 'PRI'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Структура таблицы `directory_country_format`
--

CREATE TABLE `directory_country_format` (
  `country_format_id` int(10) UNSIGNED NOT NULL COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format';

-- --------------------------------------------------------

--
-- Структура таблицы `directory_country_region`
--

CREATE TABLE `directory_country_region` (
  `region_id` int(10) UNSIGNED NOT NULL COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region';

--
-- Дамп данных таблицы `directory_country_region`
--

INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AF', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AC', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AM', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Vorarlberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '1', 'Ain'),
(183, 'FR', '2', 'Aisne'),
(184, 'FR', '3', 'Allier'),
(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 'FR', '5', 'Hautes-Alpes'),
(187, 'FR', '6', 'Alpes-Maritimes'),
(188, 'FR', '7', 'Ardèche'),
(189, 'FR', '8', 'Ardennes'),
(190, 'FR', '9', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d\'Or'),
(204, 'FR', '22', 'Côtes-d\'Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d\'Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea'),
(320, 'FI', 'Lappi', 'Lappi'),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 'FI', 'Kainuu', 'Kainuu'),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 'FI', 'Satakunta', 'Satakunta'),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 'EE', 'EE-37', 'Harjumaa'),
(341, 'EE', 'EE-39', 'Hiiumaa'),
(342, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 'EE', 'EE-51', 'Järvamaa'),
(345, 'EE', 'EE-57', 'Läänemaa'),
(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 'EE', 'EE-65', 'Põlvamaa'),
(348, 'EE', 'EE-67', 'Pärnumaa'),
(349, 'EE', 'EE-70', 'Raplamaa'),
(350, 'EE', 'EE-74', 'Saaremaa'),
(351, 'EE', 'EE-78', 'Tartumaa'),
(352, 'EE', 'EE-82', 'Valgamaa'),
(353, 'EE', 'EE-84', 'Viljandimaa'),
(354, 'EE', 'EE-86', 'Võrumaa'),
(355, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 'LV', 'LV-JEL', 'Jelgava'),
(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 'LV', 'LV-LPX', 'Liepāja'),
(360, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 'LV', 'LV-RIX', 'Rīga'),
(363, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 'LV', 'Valmiera', 'Valmiera'),
(365, 'LV', 'LV-VEN', 'Ventspils'),
(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 'LV', 'Apes novads', 'Apes novads'),
(375, 'LV', 'Auces novads', 'Auces novads'),
(376, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 'LV', 'LV-BL', 'Balvu novads'),
(380, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 'LV', 'Engures novads', 'Engures novads'),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 'LV', 'LV-MA', 'Madonas novads'),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 'LV', 'LV-OG', 'Ogres novads'),
(427, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 'LV', 'Salas novads', 'Salas novads'),
(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 'LV', 'LV-SA', 'Saldus novads'),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 'LV', 'LV-TA', 'Talsu novads'),
(457, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 'LV', 'LV-VK', 'Valkas novads'),
(461, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Структура таблицы `directory_country_region_name`
--

CREATE TABLE `directory_country_region_name` (
  `locale` varchar(8) NOT NULL DEFAULT '' COMMENT 'Locale',
  `region_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Дамп данных таблицы `directory_country_region_name`
--

INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Vorarlberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d\'Or'),
('en_US', 204, 'Côtes-d\'Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d\'Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea'),
('en_US', 320, 'Lappi'),
('en_US', 321, 'Pohjois-Pohjanmaa'),
('en_US', 322, 'Kainuu'),
('en_US', 323, 'Pohjois-Karjala'),
('en_US', 324, 'Pohjois-Savo'),
('en_US', 325, 'Etelä-Savo'),
('en_US', 326, 'Etelä-Pohjanmaa'),
('en_US', 327, 'Pohjanmaa'),
('en_US', 328, 'Pirkanmaa'),
('en_US', 329, 'Satakunta'),
('en_US', 330, 'Keski-Pohjanmaa'),
('en_US', 331, 'Keski-Suomi'),
('en_US', 332, 'Varsinais-Suomi'),
('en_US', 333, 'Etelä-Karjala'),
('en_US', 334, 'Päijät-Häme'),
('en_US', 335, 'Kanta-Häme'),
('en_US', 336, 'Uusimaa'),
('en_US', 337, 'Itä-Uusimaa'),
('en_US', 338, 'Kymenlaakso'),
('en_US', 339, 'Ahvenanmaa'),
('en_US', 340, 'Harjumaa'),
('en_US', 341, 'Hiiumaa'),
('en_US', 342, 'Ida-Virumaa'),
('en_US', 343, 'Jõgevamaa'),
('en_US', 344, 'Järvamaa'),
('en_US', 345, 'Läänemaa'),
('en_US', 346, 'Lääne-Virumaa'),
('en_US', 347, 'Põlvamaa'),
('en_US', 348, 'Pärnumaa'),
('en_US', 349, 'Raplamaa'),
('en_US', 350, 'Saaremaa'),
('en_US', 351, 'Tartumaa'),
('en_US', 352, 'Valgamaa'),
('en_US', 353, 'Viljandimaa'),
('en_US', 354, 'Võrumaa'),
('en_US', 355, 'Daugavpils'),
('en_US', 356, 'Jelgava'),
('en_US', 357, 'Jēkabpils'),
('en_US', 358, 'Jūrmala'),
('en_US', 359, 'Liepāja'),
('en_US', 360, 'Liepājas novads'),
('en_US', 361, 'Rēzekne'),
('en_US', 362, 'Rīga'),
('en_US', 363, 'Rīgas novads'),
('en_US', 364, 'Valmiera'),
('en_US', 365, 'Ventspils'),
('en_US', 366, 'Aglonas novads'),
('en_US', 367, 'Aizkraukles novads'),
('en_US', 368, 'Aizputes novads'),
('en_US', 369, 'Aknīstes novads'),
('en_US', 370, 'Alojas novads'),
('en_US', 371, 'Alsungas novads'),
('en_US', 372, 'Alūksnes novads'),
('en_US', 373, 'Amatas novads'),
('en_US', 374, 'Apes novads'),
('en_US', 375, 'Auces novads'),
('en_US', 376, 'Babītes novads'),
('en_US', 377, 'Baldones novads'),
('en_US', 378, 'Baltinavas novads'),
('en_US', 379, 'Balvu novads'),
('en_US', 380, 'Bauskas novads'),
('en_US', 381, 'Beverīnas novads'),
('en_US', 382, 'Brocēnu novads'),
('en_US', 383, 'Burtnieku novads'),
('en_US', 384, 'Carnikavas novads'),
('en_US', 385, 'Cesvaines novads'),
('en_US', 386, 'Ciblas novads'),
('en_US', 387, 'Cēsu novads'),
('en_US', 388, 'Dagdas novads'),
('en_US', 389, 'Daugavpils novads'),
('en_US', 390, 'Dobeles novads'),
('en_US', 391, 'Dundagas novads'),
('en_US', 392, 'Durbes novads'),
('en_US', 393, 'Engures novads'),
('en_US', 394, 'Garkalnes novads'),
('en_US', 395, 'Grobiņas novads'),
('en_US', 396, 'Gulbenes novads'),
('en_US', 397, 'Iecavas novads'),
('en_US', 398, 'Ikšķiles novads'),
('en_US', 399, 'Ilūkstes novads'),
('en_US', 400, 'Inčukalna novads'),
('en_US', 401, 'Jaunjelgavas novads'),
('en_US', 402, 'Jaunpiebalgas novads'),
('en_US', 403, 'Jaunpils novads'),
('en_US', 404, 'Jelgavas novads'),
('en_US', 405, 'Jēkabpils novads'),
('en_US', 406, 'Kandavas novads'),
('en_US', 407, 'Kokneses novads'),
('en_US', 408, 'Krimuldas novads'),
('en_US', 409, 'Krustpils novads'),
('en_US', 410, 'Krāslavas novads'),
('en_US', 411, 'Kuldīgas novads'),
('en_US', 412, 'Kārsavas novads'),
('en_US', 413, 'Lielvārdes novads'),
('en_US', 414, 'Limbažu novads'),
('en_US', 415, 'Lubānas novads'),
('en_US', 416, 'Ludzas novads'),
('en_US', 417, 'Līgatnes novads'),
('en_US', 418, 'Līvānu novads'),
('en_US', 419, 'Madonas novads'),
('en_US', 420, 'Mazsalacas novads'),
('en_US', 421, 'Mālpils novads'),
('en_US', 422, 'Mārupes novads'),
('en_US', 423, 'Naukšēnu novads'),
('en_US', 424, 'Neretas novads'),
('en_US', 425, 'Nīcas novads'),
('en_US', 426, 'Ogres novads'),
('en_US', 427, 'Olaines novads'),
('en_US', 428, 'Ozolnieku novads'),
('en_US', 429, 'Preiļu novads'),
('en_US', 430, 'Priekules novads'),
('en_US', 431, 'Priekuļu novads'),
('en_US', 432, 'Pārgaujas novads'),
('en_US', 433, 'Pāvilostas novads'),
('en_US', 434, 'Pļaviņu novads'),
('en_US', 435, 'Raunas novads'),
('en_US', 436, 'Riebiņu novads'),
('en_US', 437, 'Rojas novads'),
('en_US', 438, 'Ropažu novads'),
('en_US', 439, 'Rucavas novads'),
('en_US', 440, 'Rugāju novads'),
('en_US', 441, 'Rundāles novads'),
('en_US', 442, 'Rēzeknes novads'),
('en_US', 443, 'Rūjienas novads'),
('en_US', 444, 'Salacgrīvas novads'),
('en_US', 445, 'Salas novads'),
('en_US', 446, 'Salaspils novads'),
('en_US', 447, 'Saldus novads'),
('en_US', 448, 'Saulkrastu novads'),
('en_US', 449, 'Siguldas novads'),
('en_US', 450, 'Skrundas novads'),
('en_US', 451, 'Skrīveru novads'),
('en_US', 452, 'Smiltenes novads'),
('en_US', 453, 'Stopiņu novads'),
('en_US', 454, 'Strenču novads'),
('en_US', 455, 'Sējas novads'),
('en_US', 456, 'Talsu novads'),
('en_US', 457, 'Tukuma novads'),
('en_US', 458, 'Tērvetes novads'),
('en_US', 459, 'Vaiņodes novads'),
('en_US', 460, 'Valkas novads'),
('en_US', 461, 'Valmieras novads'),
('en_US', 462, 'Varakļānu novads'),
('en_US', 463, 'Vecpiebalgas novads'),
('en_US', 464, 'Vecumnieku novads'),
('en_US', 465, 'Ventspils novads'),
('en_US', 466, 'Viesītes novads'),
('en_US', 467, 'Viļakas novads'),
('en_US', 468, 'Viļānu novads'),
('en_US', 469, 'Vārkavas novads'),
('en_US', 470, 'Zilupes novads'),
('en_US', 471, 'Ādažu novads'),
('en_US', 472, 'Ērgļu novads'),
('en_US', 473, 'Ķeguma novads'),
('en_US', 474, 'Ķekavas novads'),
('en_US', 475, 'Alytaus Apskritis'),
('en_US', 476, 'Kauno Apskritis'),
('en_US', 477, 'Klaipėdos Apskritis'),
('en_US', 478, 'Marijampolės Apskritis'),
('en_US', 479, 'Panevėžio Apskritis'),
('en_US', 480, 'Šiaulių Apskritis'),
('en_US', 481, 'Tauragės Apskritis'),
('en_US', 482, 'Telšių Apskritis'),
('en_US', 483, 'Utenos Apskritis'),
('en_US', 484, 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Структура таблицы `directory_currency_rate`
--

CREATE TABLE `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Дамп данных таблицы `directory_currency_rate`
--

INSERT INTO `directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
('EUR', 'EUR', '1.000000000000'),
('EUR', 'USD', '1.415000000000'),
('USD', 'EUR', '0.706700000000'),
('USD', 'USD', '1.000000000000');

-- --------------------------------------------------------

--
-- Структура таблицы `downloadable_link`
--

CREATE TABLE `downloadable_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table';

-- --------------------------------------------------------

--
-- Структура таблицы `downloadable_link_price`
--

CREATE TABLE `downloadable_link_price` (
  `price_id` int(10) UNSIGNED NOT NULL COMMENT 'Price ID',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table';

-- --------------------------------------------------------

--
-- Структура таблицы `downloadable_link_purchased`
--

CREATE TABLE `downloadable_link_purchased` (
  `purchased_id` int(10) UNSIGNED NOT NULL COMMENT 'Purchased ID',
  `order_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of modification',
  `customer_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table';

-- --------------------------------------------------------

--
-- Структура таблицы `downloadable_link_purchased_item`
--

CREATE TABLE `downloadable_link_purchased_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item ID',
  `purchased_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table';

-- --------------------------------------------------------

--
-- Структура таблицы `downloadable_link_title`
--

CREATE TABLE `downloadable_link_title` (
  `title_id` int(10) UNSIGNED NOT NULL COMMENT 'Title ID',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table';

-- --------------------------------------------------------

--
-- Структура таблицы `downloadable_sample`
--

CREATE TABLE `downloadable_sample` (
  `sample_id` int(10) UNSIGNED NOT NULL COMMENT 'Sample ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table';

-- --------------------------------------------------------

--
-- Структура таблицы `downloadable_sample_title`
--

CREATE TABLE `downloadable_sample_title` (
  `title_id` int(10) UNSIGNED NOT NULL COMMENT 'Title ID',
  `sample_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table';

-- --------------------------------------------------------

--
-- Структура таблицы `eav_attribute`
--

CREATE TABLE `eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute';

--
-- Дамп данных таблицы `eav_attribute`
--

INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'website_id', NULL, 'customer/customer_attribute_backend_website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'customer/customer_attribute_source_website', 1, 0, NULL, 0, NULL),
(2, 1, 'store_id', NULL, 'customer/customer_attribute_backend_store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'customer/customer_attribute_source_store', 1, 0, NULL, 0, NULL),
(3, 1, 'created_in', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
(4, 1, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(5, 1, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(6, 1, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(7, 1, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(8, 1, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'customer/customer_attribute_source_group', 1, 0, NULL, 0, NULL),
(11, 1, 'dob', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, 'eav/entity_attribute_frontend_datetime', 'date', 'Date Of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
(12, 1, 'password_hash', NULL, 'customer/customer_attribute_backend_password', 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(13, 1, 'default_billing', NULL, 'customer/customer_attribute_backend_billing', 'int', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(14, 1, 'default_shipping', NULL, 'customer/customer_attribute_backend_shipping', 'int', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(15, 1, 'taxvat', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(16, 1, 'confirmation', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
(17, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'datetime', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
(18, 1, 'gender', NULL, NULL, 'int', NULL, NULL, 'select', 'Gender', NULL, 'eav/entity_attribute_source_table', 0, 0, NULL, 0, NULL),
(19, 2, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(20, 2, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(21, 2, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(22, 2, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(23, 2, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(24, 2, 'company', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
(25, 2, 'street', NULL, 'customer/entity_address_attribute_backend_street', 'text', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
(26, 2, 'city', NULL, NULL, 'varchar', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
(27, 2, 'country_id', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country', NULL, 'customer/entity_address_attribute_source_country', 1, 0, NULL, 0, NULL),
(28, 2, 'region', NULL, 'customer/entity_address_attribute_backend_region', 'varchar', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
(29, 2, 'region_id', NULL, NULL, 'int', NULL, NULL, 'hidden', 'State/Province', NULL, 'customer/entity_address_attribute_source_region', 0, 0, NULL, 0, NULL),
(30, 2, 'postcode', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 1, 0, NULL, 0, NULL),
(31, 2, 'telephone', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Telephone', NULL, NULL, 1, 0, NULL, 0, NULL),
(32, 2, 'fax', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
(33, 1, 'rp_token', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(34, 1, 'rp_token_created_at', NULL, NULL, 'datetime', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(35, 1, 'disable_auto_group_change', NULL, 'customer/attribute_backend_data_boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(36, 2, 'vat_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number', NULL, NULL, 0, 0, NULL, 0, NULL),
(37, 2, 'vat_is_valid', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
(38, 2, 'vat_request_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(39, 2, 'vat_request_date', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
(40, 2, 'vat_request_success', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
(41, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(42, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'eav/entity_attribute_source_boolean', 1, 0, NULL, 0, NULL),
(43, 3, 'url_key', NULL, 'catalog/category_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(44, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(45, 3, 'image', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(46, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(47, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(48, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(49, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'catalog/category_attribute_source_mode', 0, 0, NULL, 0, NULL),
(50, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'catalog/category_attribute_source_page', 0, 0, NULL, 0, NULL),
(51, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(52, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
(53, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
(54, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(55, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(56, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(57, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(58, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(59, 3, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(60, 3, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(61, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/category_attribute_source_layout', 0, 0, NULL, 0, NULL),
(62, 3, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(63, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
(64, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
(65, 3, 'available_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(66, 3, 'default_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(67, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'eav/entity_attribute_source_boolean', 1, 0, '1', 0, NULL),
(68, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(69, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(70, 3, 'filter_price_range', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
(71, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(72, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(73, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(74, 4, 'sku', NULL, 'catalog/product_attribute_backend_sku', 'static', NULL, NULL, 'text', 'SKU', NULL, NULL, 1, 0, NULL, 1, NULL),
(75, 4, 'price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
(76, 4, 'special_price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Special Price', 'validate-special-price', NULL, 0, 0, NULL, 0, NULL),
(77, 4, 'special_from_date', NULL, 'catalog/product_attribute_backend_startdate_specialprice', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(78, 4, 'special_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(79, 4, 'cost', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
(80, 4, 'weight', NULL, NULL, 'decimal', NULL, NULL, 'weight', 'Weight', NULL, NULL, 1, 0, NULL, 0, NULL),
(81, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
(82, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(83, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(84, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars'),
(85, 4, 'image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Base Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(86, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Small Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(87, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
(88, 4, 'media_gallery', NULL, 'catalog/product_attribute_backend_media', 'varchar', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(89, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(90, 4, 'group_price', NULL, 'catalog/product_attribute_backend_groupprice', 'decimal', NULL, NULL, 'text', 'Group Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(91, 4, 'tier_price', NULL, 'catalog/product_attribute_backend_tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(92, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, NULL, 0, NULL),
(93, 4, 'news_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(94, 4, 'news_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(95, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(96, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Status', NULL, 'catalog/product_status', 1, 0, NULL, 0, NULL),
(97, 4, 'url_key', NULL, 'catalog/product_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(98, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(99, 4, 'minimal_price', NULL, NULL, 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(100, 4, 'is_recurring', NULL, NULL, 'int', NULL, NULL, 'select', 'Enable Recurring Profile', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, 'Products with recurring profile participate in catalog as nominal items.'),
(101, 4, 'recurring_profile', NULL, 'catalog/product_attribute_backend_recurring', 'text', NULL, NULL, 'text', 'Recurring Payment Profile', NULL, NULL, 0, 0, NULL, 0, NULL),
(102, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'catalog/product_visibility', 1, 0, '4', 0, NULL),
(103, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(104, 4, 'custom_design_from', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(105, 4, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(106, 4, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(107, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/product_attribute_source_layout', 0, 0, NULL, 0, NULL),
(108, 4, 'category_ids', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(109, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'catalog/entity_product_attribute_design_options_container', 0, 0, 'container1', 0, NULL),
(110, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(111, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(112, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(113, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(114, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(115, 4, 'created_at', NULL, 'eav/entity_attribute_backend_time_created', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(116, 4, 'updated_at', NULL, 'eav/entity_attribute_backend_time_updated', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(117, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'catalog/product_attribute_source_countryofmanufacture', 0, 0, NULL, 0, NULL),
(118, 4, 'msrp_enabled', NULL, 'catalog/product_attribute_backend_msrp', 'varchar', NULL, NULL, 'select', 'Apply MAP', NULL, 'catalog/product_attribute_source_msrp_type_enabled', 0, 0, '2', 0, NULL),
(119, 4, 'msrp_display_actual_price_type', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'catalog/product_attribute_source_msrp_type_price', 0, 0, '4', 0, NULL),
(120, 4, 'msrp', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Manufacturer\'s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(121, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'tax/class_source_product', 1, 0, NULL, 0, NULL),
(122, 4, 'gift_message_available', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(123, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(124, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(125, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(126, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'bundle/product_attribute_source_price_view', 1, 0, NULL, 0, NULL),
(127, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, NULL, 'Shipment', NULL, NULL, 1, 0, NULL, 0, NULL),
(128, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
(129, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
(130, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
(131, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 0, NULL),
(132, 4, 'shape', NULL, NULL, 'int', NULL, NULL, 'select', 'vcz', NULL, 'eav/entity_attribute_source_table', 0, 1, NULL, 0, NULL),
(133, 4, 'checksum', NULL, NULL, 'int', NULL, NULL, 'select', 'stream', NULL, 'eav/entity_attribute_source_table', 0, 1, NULL, 0, NULL),
(134, 4, 'new_arrival', NULL, NULL, 'int', NULL, NULL, 'boolean', 'New arrival', NULL, 'eav/entity_attribute_source_boolean', 0, 1, '0', 0, NULL),
(135, 4, 'refurbished', NULL, NULL, 'int', NULL, NULL, 'boolean', 'Refurbished', NULL, 'eav/entity_attribute_source_boolean', 0, 1, '0', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `eav_attribute_group`
--

CREATE TABLE `eav_attribute_group` (
  `attribute_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Default Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

--
-- Дамп данных таблицы `eav_attribute_group`
--

INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
(1, 1, 'General', 1, 1),
(2, 2, 'General', 1, 1),
(3, 3, 'General', 10, 1),
(4, 3, 'General Information', 2, 0),
(5, 3, 'Display Settings', 20, 0),
(6, 3, 'Custom Design', 30, 0),
(7, 4, 'General', 1, 1),
(8, 4, 'Prices', 2, 0),
(9, 4, 'Meta Information', 3, 0),
(10, 4, 'Images', 4, 0),
(11, 4, 'Recurring Profile', 5, 0),
(12, 4, 'Design', 6, 0),
(13, 5, 'General', 1, 1),
(14, 6, 'General', 1, 1),
(15, 7, 'General', 1, 1),
(16, 8, 'General', 1, 1),
(17, 4, 'Gift Options', 7, 0),
(18, 9, 'Gift Options', 7, 0),
(19, 9, 'Design', 6, 0),
(20, 9, 'Recurring Profile', 5, 0),
(21, 9, 'Images', 4, 0),
(22, 9, 'Meta Information', 3, 0),
(23, 9, 'Prices', 2, 0),
(24, 9, 'General', 1, 1),
(25, 4, 'additional', 8, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `eav_attribute_label`
--

CREATE TABLE `eav_attribute_label` (
  `attribute_label_id` int(10) UNSIGNED NOT NULL COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';

--
-- Дамп данных таблицы `eav_attribute_label`
--

INSERT INTO `eav_attribute_label` (`attribute_label_id`, `attribute_id`, `store_id`, `value`) VALUES
(4, 134, 1, 'New arrival'),
(5, 135, 1, 'Refurbished');

-- --------------------------------------------------------

--
-- Структура таблицы `eav_attribute_option`
--

CREATE TABLE `eav_attribute_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option';

--
-- Дамп данных таблицы `eav_attribute_option`
--

INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 18, 0),
(2, 18, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `eav_attribute_option_value`
--

CREATE TABLE `eav_attribute_option_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value';

--
-- Дамп данных таблицы `eav_attribute_option_value`
--

INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female');

-- --------------------------------------------------------

--
-- Структура таблицы `eav_attribute_set`
--

CREATE TABLE `eav_attribute_set` (
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set';

--
-- Дамп данных таблицы `eav_attribute_set`
--

INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 1),
(2, 2, 'Default', 1),
(3, 3, 'Default', 1),
(4, 4, 'Default', 1),
(5, 5, 'Default', 1),
(6, 6, 'Default', 1),
(7, 7, 'Default', 1),
(8, 8, 'Default', 1),
(9, 4, 'Advanced', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `eav_entity`
--

CREATE TABLE `eav_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity';

-- --------------------------------------------------------

--
-- Структура таблицы `eav_entity_attribute`
--

CREATE TABLE `eav_entity_attribute` (
  `entity_attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes';

--
-- Дамп данных таблицы `eav_entity_attribute`
--

INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 0),
(3, 1, 1, 1, 3, 20),
(4, 1, 1, 1, 4, 30),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 50),
(7, 1, 1, 1, 7, 60),
(8, 1, 1, 1, 8, 70),
(9, 1, 1, 1, 9, 80),
(10, 1, 1, 1, 10, 25),
(11, 1, 1, 1, 11, 90),
(12, 1, 1, 1, 12, 0),
(13, 1, 1, 1, 13, 0),
(14, 1, 1, 1, 14, 0),
(15, 1, 1, 1, 15, 100),
(16, 1, 1, 1, 16, 0),
(17, 1, 1, 1, 17, 86),
(18, 1, 1, 1, 18, 110),
(19, 2, 2, 2, 19, 10),
(20, 2, 2, 2, 20, 20),
(21, 2, 2, 2, 21, 30),
(22, 2, 2, 2, 22, 40),
(23, 2, 2, 2, 23, 50),
(24, 2, 2, 2, 24, 60),
(25, 2, 2, 2, 25, 70),
(26, 2, 2, 2, 26, 80),
(27, 2, 2, 2, 27, 90),
(28, 2, 2, 2, 28, 100),
(29, 2, 2, 2, 29, 100),
(30, 2, 2, 2, 30, 110),
(31, 2, 2, 2, 31, 120),
(32, 2, 2, 2, 32, 130),
(33, 1, 1, 1, 33, 111),
(34, 1, 1, 1, 34, 112),
(35, 1, 1, 1, 35, 28),
(36, 2, 2, 2, 36, 140),
(37, 2, 2, 2, 37, 132),
(38, 2, 2, 2, 38, 133),
(39, 2, 2, 2, 39, 134),
(40, 2, 2, 2, 40, 135),
(41, 3, 3, 4, 41, 1),
(42, 3, 3, 4, 42, 2),
(43, 3, 3, 4, 43, 3),
(44, 3, 3, 4, 44, 4),
(45, 3, 3, 4, 45, 5),
(46, 3, 3, 4, 46, 6),
(47, 3, 3, 4, 47, 7),
(48, 3, 3, 4, 48, 8),
(49, 3, 3, 5, 49, 10),
(50, 3, 3, 5, 50, 20),
(51, 3, 3, 5, 51, 30),
(52, 3, 3, 4, 52, 12),
(53, 3, 3, 4, 53, 13),
(54, 3, 3, 4, 54, 14),
(55, 3, 3, 4, 55, 15),
(56, 3, 3, 4, 56, 16),
(57, 3, 3, 4, 57, 17),
(58, 3, 3, 6, 58, 10),
(59, 3, 3, 6, 59, 30),
(60, 3, 3, 6, 60, 40),
(61, 3, 3, 6, 61, 50),
(62, 3, 3, 6, 62, 60),
(63, 3, 3, 4, 63, 24),
(64, 3, 3, 4, 64, 25),
(65, 3, 3, 5, 65, 40),
(66, 3, 3, 5, 66, 50),
(67, 3, 3, 4, 67, 10),
(68, 3, 3, 6, 68, 5),
(69, 3, 3, 6, 69, 6),
(70, 3, 3, 5, 70, 51),
(88, 4, 4, 7, 89, 6),
(96, 4, 4, 7, 98, 11),
(97, 4, 4, 8, 99, 8),
(106, 4, 4, 7, 108, 13),
(108, 4, 4, 7, 110, 14),
(109, 4, 4, 7, 111, 15),
(110, 4, 4, 7, 112, 16),
(111, 4, 4, 7, 113, 17),
(112, 4, 4, 7, 114, 18),
(113, 4, 4, 7, 115, 19),
(114, 4, 4, 7, 116, 20),
(121, 4, 4, 7, 123, 22),
(122, 4, 4, 7, 124, 23),
(123, 4, 4, 7, 125, 24),
(125, 4, 4, 7, 127, 25),
(126, 4, 4, 7, 128, 26),
(127, 4, 4, 7, 129, 27),
(128, 4, 4, 7, 130, 28),
(129, 4, 4, 7, 131, 29),
(179, 4, 9, 23, 99, 8),
(201, 4, 9, 24, 89, 6),
(211, 4, 9, 24, 98, 11),
(215, 4, 9, 24, 108, 13),
(217, 4, 9, 24, 110, 14),
(219, 4, 9, 24, 111, 15),
(221, 4, 9, 24, 112, 16),
(223, 4, 9, 24, 113, 17),
(225, 4, 9, 24, 114, 18),
(227, 4, 9, 24, 115, 19),
(229, 4, 9, 24, 116, 20),
(233, 4, 9, 24, 123, 22),
(235, 4, 9, 24, 124, 23),
(237, 4, 9, 24, 125, 24),
(239, 4, 9, 24, 127, 25),
(241, 4, 9, 24, 128, 26),
(243, 4, 9, 24, 129, 27),
(245, 4, 9, 24, 130, 28),
(247, 4, 9, 24, 131, 29),
(249, 4, 9, 24, 71, 1),
(251, 4, 9, 24, 72, 2),
(253, 4, 9, 24, 73, 3),
(255, 4, 9, 24, 74, 4),
(257, 4, 9, 24, 80, 5),
(259, 4, 9, 24, 93, 6),
(261, 4, 9, 24, 94, 7),
(263, 4, 9, 24, 96, 8),
(265, 4, 9, 24, 97, 9),
(267, 4, 9, 24, 102, 10),
(269, 4, 9, 24, 117, 11),
(271, 4, 9, 23, 75, 1),
(273, 4, 9, 23, 76, 3),
(275, 4, 9, 23, 77, 4),
(277, 4, 9, 23, 78, 5),
(279, 4, 9, 23, 79, 6),
(281, 4, 9, 23, 90, 2),
(283, 4, 9, 23, 91, 7),
(285, 4, 9, 23, 118, 8),
(287, 4, 9, 23, 119, 9),
(289, 4, 9, 23, 120, 10),
(291, 4, 9, 23, 121, 11),
(293, 4, 9, 23, 126, 12),
(295, 4, 9, 22, 82, 1),
(297, 4, 9, 22, 83, 2),
(299, 4, 9, 22, 84, 3),
(301, 4, 9, 21, 85, 1),
(303, 4, 9, 21, 86, 2),
(305, 4, 9, 21, 87, 3),
(307, 4, 9, 21, 88, 4),
(309, 4, 9, 21, 95, 5),
(311, 4, 9, 20, 100, 1),
(313, 4, 9, 20, 101, 2),
(315, 4, 9, 19, 103, 1),
(317, 4, 9, 19, 104, 2),
(319, 4, 9, 19, 105, 3),
(321, 4, 9, 19, 106, 4),
(323, 4, 9, 19, 107, 5),
(325, 4, 9, 19, 109, 6),
(327, 4, 9, 18, 122, 1),
(495, 4, 4, 7, 71, 1),
(497, 4, 4, 7, 72, 2),
(499, 4, 4, 7, 73, 3),
(501, 4, 4, 7, 74, 4),
(503, 4, 4, 7, 80, 5),
(505, 4, 4, 7, 93, 6),
(507, 4, 4, 7, 94, 7),
(509, 4, 4, 7, 96, 8),
(511, 4, 4, 7, 97, 9),
(513, 4, 4, 7, 102, 10),
(515, 4, 4, 7, 117, 11),
(517, 4, 4, 8, 75, 1),
(519, 4, 4, 8, 76, 3),
(521, 4, 4, 8, 77, 4),
(523, 4, 4, 8, 78, 5),
(525, 4, 4, 8, 79, 6),
(527, 4, 4, 8, 90, 2),
(529, 4, 4, 8, 91, 7),
(531, 4, 4, 8, 118, 8),
(533, 4, 4, 8, 119, 9),
(535, 4, 4, 8, 120, 10),
(537, 4, 4, 8, 121, 11),
(539, 4, 4, 8, 126, 12),
(541, 4, 4, 9, 82, 1),
(543, 4, 4, 9, 83, 2),
(545, 4, 4, 9, 84, 3),
(547, 4, 4, 10, 85, 1),
(549, 4, 4, 10, 86, 2),
(551, 4, 4, 10, 87, 3),
(553, 4, 4, 10, 88, 4),
(555, 4, 4, 10, 95, 5),
(557, 4, 4, 11, 100, 1),
(559, 4, 4, 11, 101, 2),
(561, 4, 4, 12, 103, 1),
(563, 4, 4, 12, 104, 2),
(565, 4, 4, 12, 105, 3),
(567, 4, 4, 12, 106, 4),
(569, 4, 4, 12, 107, 5),
(571, 4, 4, 12, 109, 6),
(573, 4, 4, 17, 122, 1),
(575, 4, 4, 17, 133, 2),
(577, 4, 4, 25, 134, 1),
(579, 4, 4, 25, 135, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `eav_entity_datetime`
--

CREATE TABLE `eav_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Структура таблицы `eav_entity_decimal`
--

CREATE TABLE `eav_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Структура таблицы `eav_entity_int`
--

CREATE TABLE `eav_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Структура таблицы `eav_entity_store`
--

CREATE TABLE `eav_entity_store` (
  `entity_store_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store';

-- --------------------------------------------------------

--
-- Структура таблицы `eav_entity_text`
--

CREATE TABLE `eav_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Структура таблицы `eav_entity_type`
--

CREATE TABLE `eav_entity_type` (
  `entity_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT '' COMMENT 'Increment Model',
  `increment_per_store` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) UNSIGNED NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT '' COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';

--
-- Дамп данных таблицы `eav_entity_type`
--

INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'customer/customer', 'customer/attribute', 'customer/entity', NULL, NULL, 1, 'default', 1, 'eav/entity_increment_numeric', 0, 8, '0', 'customer/eav_attribute', 'customer/attribute_collection'),
(2, 'customer_address', 'customer/address', 'customer/attribute', 'customer/address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer/eav_attribute', 'customer/address_attribute_collection'),
(3, 'catalog_category', 'catalog/category', 'catalog/resource_eav_attribute', 'catalog/category', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/category_attribute_collection'),
(4, 'catalog_product', 'catalog/product', 'catalog/resource_eav_attribute', 'catalog/product', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/product_attribute_collection'),
(5, 'order', 'sales/order', NULL, 'sales/order', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(6, 'invoice', 'sales/order_invoice', NULL, 'sales/invoice', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(7, 'creditmemo', 'sales/order_creditmemo', NULL, 'sales/creditmemo', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(8, 'shipment', 'sales/order_shipment', NULL, 'sales/shipment', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `eav_entity_varchar`
--

CREATE TABLE `eav_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Структура таблицы `eav_form_element`
--

CREATE TABLE `eav_form_element` (
  `element_id` int(10) UNSIGNED NOT NULL COMMENT 'Element Id',
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Element';

--
-- Дамп данных таблицы `eav_form_element`
--

INSERT INTO `eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, NULL, 20, 0),
(2, 1, NULL, 21, 1),
(3, 1, NULL, 22, 2),
(4, 1, NULL, 24, 3),
(5, 1, NULL, 9, 4),
(6, 1, NULL, 25, 5),
(7, 1, NULL, 26, 6),
(8, 1, NULL, 28, 7),
(9, 1, NULL, 30, 8),
(10, 1, NULL, 27, 9),
(11, 1, NULL, 31, 10),
(12, 1, NULL, 32, 11),
(13, 2, NULL, 20, 0),
(14, 2, NULL, 21, 1),
(15, 2, NULL, 22, 2),
(16, 2, NULL, 24, 3),
(17, 2, NULL, 9, 4),
(18, 2, NULL, 25, 5),
(19, 2, NULL, 26, 6),
(20, 2, NULL, 28, 7),
(21, 2, NULL, 30, 8),
(22, 2, NULL, 27, 9),
(23, 2, NULL, 31, 10),
(24, 2, NULL, 32, 11),
(25, 3, NULL, 20, 0),
(26, 3, NULL, 21, 1),
(27, 3, NULL, 22, 2),
(28, 3, NULL, 24, 3),
(29, 3, NULL, 25, 4),
(30, 3, NULL, 26, 5),
(31, 3, NULL, 28, 6),
(32, 3, NULL, 30, 7),
(33, 3, NULL, 27, 8),
(34, 3, NULL, 31, 9),
(35, 3, NULL, 32, 10),
(36, 4, NULL, 20, 0),
(37, 4, NULL, 21, 1),
(38, 4, NULL, 22, 2),
(39, 4, NULL, 24, 3),
(40, 4, NULL, 25, 4),
(41, 4, NULL, 26, 5),
(42, 4, NULL, 28, 6),
(43, 4, NULL, 30, 7),
(44, 4, NULL, 27, 8),
(45, 4, NULL, 31, 9),
(46, 4, NULL, 32, 10),
(47, 5, 1, 5, 0),
(48, 5, 1, 6, 1),
(49, 5, 1, 7, 2),
(50, 5, 1, 9, 3),
(51, 5, 2, 24, 0),
(52, 5, 2, 31, 1),
(53, 5, 2, 25, 2),
(54, 5, 2, 26, 3),
(55, 5, 2, 28, 4),
(56, 5, 2, 30, 5),
(57, 5, 2, 27, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `eav_form_fieldset`
--

CREATE TABLE `eav_form_fieldset` (
  `fieldset_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Fieldset Id',
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset';

--
-- Дамп данных таблицы `eav_form_fieldset`
--

INSERT INTO `eav_form_fieldset` (`fieldset_id`, `type_id`, `code`, `sort_order`) VALUES
(1, 5, 'general', 1),
(2, 5, 'address', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `eav_form_fieldset_label`
--

CREATE TABLE `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- Дамп данных таблицы `eav_form_fieldset_label`
--

INSERT INTO `eav_form_fieldset_label` (`fieldset_id`, `store_id`, `label`) VALUES
(1, 0, 'Personal Information'),
(2, 0, 'Address Information');

-- --------------------------------------------------------

--
-- Структура таблицы `eav_form_type`
--

CREATE TABLE `eav_form_type` (
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type';

--
-- Дамп данных таблицы `eav_form_type`
--

INSERT INTO `eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0),
(5, 'checkout_multishipping_register', 'checkout_multishipping_register', 1, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `eav_form_type_entity`
--

CREATE TABLE `eav_form_type_entity` (
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Type Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Дамп данных таблицы `eav_form_type_entity`
--

INSERT INTO `eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
(1, 1),
(2, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `gift_message`
--

CREATE TABLE `gift_message` (
  `gift_message_id` int(10) UNSIGNED NOT NULL COMMENT 'GiftMessage Id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Recipient',
  `message` text COMMENT 'Message'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message';

-- --------------------------------------------------------

--
-- Структура таблицы `importexport_importdata`
--

CREATE TABLE `importexport_importdata` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table';

-- --------------------------------------------------------

--
-- Структура таблицы `index_event`
--

CREATE TABLE `index_event` (
  `event_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Event Id',
  `type` varchar(64) NOT NULL COMMENT 'Type',
  `entity` varchar(64) NOT NULL COMMENT 'Entity',
  `entity_pk` bigint(20) DEFAULT NULL COMMENT 'Entity Primary Key',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `old_data` mediumtext COMMENT 'Old Data',
  `new_data` mediumtext COMMENT 'New Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Event';

--
-- Дамп данных таблицы `index_event`
--

INSERT INTO `index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
(1, 'save', 'catalog_category', 1, '2018-03-29 21:54:32', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(2, 'save', 'catalog_category', 2, '2018-03-29 21:54:32', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(3, 'save', 'catalog_category', 3, '2018-03-30 00:31:19', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(4, 'save', 'catalog_category', 4, '2018-03-30 00:32:15', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(5, 'save', 'catalog_category', 5, '2018-03-30 00:32:44', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(6, 'save', 'cataloginventory_stock_item', 1, '2018-03-30 02:07:37', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(7, 'catalog_reindex_price', 'catalog_product', 1, '2018-03-30 02:07:41', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(8, 'save', 'catalog_product', 1, '2018-03-30 02:07:42', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(9, 'save', 'cataloginventory_stock_item', 2, '2018-03-30 02:10:25', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(10, 'catalog_reindex_price', 'catalog_product', 2, '2018-03-30 02:10:26', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(11, 'save', 'catalog_product', 2, '2018-03-30 02:10:27', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(12, 'save', 'cataloginventory_stock_item', 3, '2018-03-30 02:16:25', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(13, 'catalog_reindex_price', 'catalog_product', 3, '2018-03-30 02:16:26', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(14, 'save', 'catalog_product', 3, '2018-03-30 02:16:26', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(15, 'save', 'cataloginventory_stock_item', 4, '2018-03-30 03:19:05', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(16, 'catalog_reindex_price', 'catalog_product', 4, '2018-03-30 03:19:05', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(17, 'save', 'catalog_product', 4, '2018-03-30 03:19:06', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(18, 'save', 'cataloginventory_stock_item', 5, '2018-03-30 03:23:14', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(19, 'catalog_reindex_price', 'catalog_product', 5, '2018-03-30 03:23:14', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(20, 'save', 'catalog_product', 5, '2018-03-30 03:23:15', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(21, 'save', 'cataloginventory_stock_item', 6, '2018-03-30 03:30:27', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(22, 'catalog_reindex_price', 'catalog_product', 6, '2018-03-30 03:30:28', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(23, 'save', 'catalog_product', 6, '2018-03-30 03:30:28', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(24, 'save', 'cataloginventory_stock_item', 7, '2018-03-30 03:49:49', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(25, 'catalog_reindex_price', 'catalog_product', 7, '2018-03-30 03:49:51', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(26, 'save', 'catalog_product', 7, '2018-03-30 03:49:52', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(27, 'save', 'cataloginventory_stock_item', 8, '2018-03-30 04:25:02', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(28, 'catalog_reindex_price', 'catalog_product', 8, '2018-03-30 04:25:02', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(29, 'save', 'catalog_product', 8, '2018-03-30 04:25:03', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(30, 'save', 'cataloginventory_stock_item', 9, '2018-03-30 04:26:45', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(31, 'catalog_reindex_price', 'catalog_product', 9, '2018-03-30 04:26:46', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(32, 'save', 'catalog_product', 9, '2018-03-30 04:26:46', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(33, 'save', 'cataloginventory_stock_item', 10, '2018-03-30 04:39:10', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(34, 'catalog_reindex_price', 'catalog_product', 10, '2018-03-30 04:39:11', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(35, 'save', 'catalog_product', 10, '2018-03-30 04:39:11', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(36, 'save', 'cataloginventory_stock_item', 11, '2018-03-30 04:44:10', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(37, 'catalog_reindex_price', 'catalog_product', 11, '2018-03-30 04:44:11', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(38, 'save', 'catalog_product', 11, '2018-03-30 04:44:11', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(39, 'save', 'catalog_eav_attribute', 90, '2018-03-30 05:00:45', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(40, 'save', 'catalog_eav_attribute', 132, '2018-03-30 05:15:13', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(41, 'save', 'catalog_eav_attribute', 133, '2018-03-30 08:38:23', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(42, 'save', 'cataloginventory_stock_item', 12, '2018-03-30 08:45:00', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(43, 'catalog_reindex_price', 'catalog_product', 12, '2018-03-30 08:45:05', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(44, 'save', 'catalog_product', 12, '2018-03-30 08:45:06', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(45, 'save', 'cataloginventory_stock_item', 13, '2018-03-30 08:47:27', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(46, 'catalog_reindex_price', 'catalog_product', 13, '2018-03-30 08:47:29', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(47, 'save', 'catalog_product', 13, '2018-03-30 08:47:30', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(48, 'save', 'cataloginventory_stock_item', 14, '2018-03-30 08:48:57', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(49, 'catalog_reindex_price', 'catalog_product', 14, '2018-03-30 08:48:58', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(50, 'save', 'catalog_product', 14, '2018-03-30 08:48:58', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(51, 'save', 'cataloginventory_stock_item', 15, '2018-03-30 21:51:36', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(52, 'catalog_reindex_price', 'catalog_product', 15, '2018-03-30 21:51:37', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(53, 'save', 'catalog_product', 15, '2018-03-30 21:51:38', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(54, 'save', 'cataloginventory_stock_item', 16, '2018-03-30 21:55:28', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(55, 'catalog_reindex_price', 'catalog_product', 16, '2018-03-30 21:55:29', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(56, 'save', 'catalog_product', 16, '2018-03-30 21:55:30', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(57, 'save', 'cataloginventory_stock_item', 17, '2018-03-30 21:58:44', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(58, 'catalog_reindex_price', 'catalog_product', 17, '2018-03-30 21:58:44', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(59, 'save', 'catalog_product', 17, '2018-03-30 21:58:45', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:1;s:37:\"catalog_category_product_match_result\";b:1;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(60, 'save', 'core_config_data', 91, '2018-03-30 22:01:19', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:1;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}'),
(61, 'save', 'catalog_eav_attribute', 134, '2018-04-01 22:04:11', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(62, 'save', 'catalog_eav_attribute', 135, '2018-04-02 02:02:41', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:0;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:1;}'),
(63, 'save', 'core_config_data', 164, '2018-04-03 05:00:59', NULL, 'a:5:{s:35:\"cataloginventory_stock_match_result\";b:1;s:34:\"catalog_product_price_match_result\";b:0;s:24:\"catalog_url_match_result\";b:0;s:37:\"catalog_category_product_match_result\";b:0;s:35:\"catalogsearch_fulltext_match_result\";b:0;}');

-- --------------------------------------------------------

--
-- Структура таблицы `index_process`
--

CREATE TABLE `index_process` (
  `process_id` int(10) UNSIGNED NOT NULL COMMENT 'Process Id',
  `indexer_code` varchar(32) NOT NULL COMMENT 'Indexer Code',
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Started At',
  `ended_at` timestamp NULL DEFAULT NULL COMMENT 'Ended At',
  `mode` varchar(9) NOT NULL DEFAULT 'real_time' COMMENT 'Mode'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Process';

--
-- Дамп данных таблицы `index_process`
--

INSERT INTO `index_process` (`process_id`, `indexer_code`, `status`, `started_at`, `ended_at`, `mode`) VALUES
(1, 'catalog_product_attribute', 'require_reindex', '2018-04-03 01:50:44', '2018-04-03 01:50:44', 'real_time'),
(2, 'catalog_product_price', 'require_reindex', '2018-04-03 01:50:44', '2018-04-03 01:50:44', 'real_time'),
(3, 'catalog_url', 'pending', '2018-04-03 01:50:44', '2018-04-03 01:50:44', 'real_time'),
(4, 'catalog_product_flat', 'pending', '2018-03-30 08:24:02', '2018-03-30 08:24:05', 'real_time'),
(5, 'catalog_category_flat', 'pending', '2018-03-30 08:24:09', '2018-03-30 08:24:10', 'real_time'),
(6, 'catalog_category_product', 'pending', '2018-04-03 01:50:44', '2018-04-03 01:50:44', 'real_time'),
(7, 'catalogsearch_fulltext', 'require_reindex', '2018-04-03 01:50:44', '2018-04-03 01:50:45', 'real_time'),
(8, 'cataloginventory_stock', 'require_reindex', '2018-04-03 05:00:59', '2018-04-03 05:00:59', 'real_time'),
(9, 'tag_summary', 'pending', '2018-04-03 01:50:45', '2018-04-03 01:50:45', 'real_time');

-- --------------------------------------------------------

--
-- Структура таблицы `index_process_event`
--

CREATE TABLE `index_process_event` (
  `process_id` int(10) UNSIGNED NOT NULL COMMENT 'Process Id',
  `event_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Event Id',
  `status` varchar(7) NOT NULL DEFAULT 'new' COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Process Event';

-- --------------------------------------------------------

--
-- Структура таблицы `log_customer`
--

CREATE TABLE `log_customer` (
  `log_id` int(10) UNSIGNED NOT NULL COMMENT 'Log ID',
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `login_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login Time',
  `logout_at` timestamp NULL DEFAULT NULL COMMENT 'Logout Time',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Customers Table';

-- --------------------------------------------------------

--
-- Структура таблицы `log_quote`
--

CREATE TABLE `log_quote` (
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Visitor ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Deletion Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Quotes Table';

--
-- Дамп данных таблицы `log_quote`
--

INSERT INTO `log_quote` (`quote_id`, `visitor_id`, `created_at`, `deleted_at`) VALUES
(1, 2, '2018-03-30 05:17:35', NULL),
(2, 19, '2018-04-03 01:13:52', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `log_summary`
--

CREATE TABLE `log_summary` (
  `summary_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Summary ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `type_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Type ID',
  `visitor_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Visitor Count',
  `customer_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer Count',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Summary Table';

-- --------------------------------------------------------

--
-- Структура таблицы `log_summary_type`
--

CREATE TABLE `log_summary_type` (
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type ID',
  `type_code` varchar(64) DEFAULT NULL COMMENT 'Type Code',
  `period` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Period',
  `period_type` varchar(6) NOT NULL DEFAULT 'MINUTE' COMMENT 'Period Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Summary Types Table';

--
-- Дамп данных таблицы `log_summary_type`
--

INSERT INTO `log_summary_type` (`type_id`, `type_code`, `period`, `period_type`) VALUES
(1, 'hour', 1, 'HOUR'),
(2, 'day', 1, 'DAY');

-- --------------------------------------------------------

--
-- Структура таблицы `log_url`
--

CREATE TABLE `log_url` (
  `url_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'URL ID',
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Visitor ID',
  `visit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Visit Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Table';

-- --------------------------------------------------------

--
-- Структура таблицы `log_url_info`
--

CREATE TABLE `log_url_info` (
  `url_id` bigint(20) UNSIGNED NOT NULL COMMENT 'URL ID',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `referer` varchar(255) DEFAULT NULL COMMENT 'Referrer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Info Table';

-- --------------------------------------------------------

--
-- Структура таблицы `log_visitor`
--

CREATE TABLE `log_visitor` (
  `visitor_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Visitor ID',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Visit Time',
  `last_url_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Last URL ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitors Table';

--
-- Дамп данных таблицы `log_visitor`
--

INSERT INTO `log_visitor` (`visitor_id`, `session_id`, `first_visit_at`, `last_visit_at`, `last_url_id`, `store_id`) VALUES
(1, 'nn89d3r32lghg8qjt6uv6u1377', '2018-03-29 22:15:06', '2018-03-29 22:15:16', 0, 1),
(2, 's1kuo036kfd9uq0aqv8gouirl6', '2018-03-30 03:16:20', '2018-03-30 05:17:38', 0, 1),
(3, '2aujh1jibe8pi79oplnmd8i3c0', '2018-03-30 08:15:49', '2018-03-30 08:15:49', 0, 1),
(4, '2aujh1jibe8pi79oplnmd8i3c0', '2018-03-30 08:15:51', '2018-03-30 08:24:29', 0, 1),
(5, 'de18np5e93ogn5eob56l6qt202', '2018-03-30 09:43:12', '2018-03-30 10:37:03', 0, 1),
(6, 'hp8qrn0f4r2un90tiib1ge52c5', '2018-03-30 18:35:17', '2018-03-31 01:02:36', 0, 1),
(7, '45d78c3k1ajsbrs1go77skig04', '2018-03-31 01:16:01', '2018-03-31 01:20:29', 0, 1),
(8, '5ok9lslo0cohqmuql2m33b1oa2', '2018-03-31 06:51:35', '2018-03-31 06:52:00', 0, 1),
(9, '8pn4q34l05bb3boiqbe24k0fa5', '2018-03-31 09:03:31', '2018-03-31 09:38:34', 0, 1),
(10, 'g96hvjbct4r4ajk0qnu24c32q5', '2018-03-31 20:16:44', '2018-03-31 20:57:48', 0, 1),
(11, 'cieeb4t9ts3fmbbfjd8jjq4v07', '2018-03-31 22:13:55', '2018-04-01 00:41:09', 0, 1),
(12, 'jh9ntv3cqk9higus1tqdrhvra7', '2018-04-01 01:55:20', '2018-04-01 01:59:00', 0, 1),
(13, 'vstjn9tcpmvqeb0uvt371m3l22', '2018-04-01 03:24:16', '2018-04-01 03:25:44', 0, 1),
(14, 'dg9l5j9qflb8touf4tgs4jhr07', '2018-04-01 08:37:45', '2018-04-01 08:38:49', 0, 1),
(15, 'gc85c4t754e9osjm56tsckuak6', '2018-04-01 21:57:19', '2018-04-02 05:12:49', 0, 1),
(16, 'h9g5cinqa7feacq1c48kid8i77', '2018-04-02 05:16:25', '2018-04-02 06:04:51', 0, 1),
(17, 't4n8jaret1aooqg8bu815obbl7', '2018-04-02 08:44:25', '2018-04-02 10:09:11', 0, 1),
(18, 'q3dd9bjr8m1aoj4pg4pfgs1rg1', '2018-04-02 10:11:24', '2018-04-02 12:32:00', 0, 1),
(19, '99hvadb0mg7290h6fe87j2hli2', '2018-04-02 23:23:00', '2018-04-03 02:08:45', 0, 1),
(20, 'bds7aooai7cjsj6ir43dippkc2', '2018-04-03 02:08:55', '2018-04-03 04:10:56', 0, 1),
(21, 'o88frg0tstl5ag4t1kcalg54u1', '2018-04-03 04:57:55', '2018-04-03 07:02:20', 0, 1),
(22, '7ttpu9grb9n7uclleomnd6phc4', '2018-04-03 10:20:38', '2018-04-03 10:53:57', 0, 1),
(23, 'fms58mifot1kja9dhbi2uvfrd1', '2018-04-03 12:16:24', '2018-04-03 12:16:49', 0, 1),
(24, 'gdj05mvfqjgabsad2kapbeia33', '2018-04-03 23:09:11', '2018-04-03 23:10:25', 0, 1),
(25, '48d5mkcu1g8bkeaeeg64l8n3n6', '2018-04-04 00:30:05', '2018-04-04 00:30:25', 0, 1),
(26, '18498k7coijoen9u6h2oqas4e7', '2018-04-04 00:30:23', '2018-04-04 01:00:23', 0, 1),
(27, 'omnmou03jsgcg0uvhnj6u1psm6', '2018-04-04 02:14:43', '2018-04-04 02:15:53', 0, 1),
(28, '8dtqqm8ratdct321idolhmj7v1', '2018-04-04 03:19:32', '2018-04-04 03:27:30', 0, 1),
(29, 'oaelss6blml86sidto1f32nsj4', '2018-04-04 04:57:02', '2018-04-04 07:40:44', 0, 1),
(30, 'uhhidg03b34c4nre6qj2gm9ir3', '2018-04-04 07:42:24', '2018-04-04 08:03:02', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `log_visitor_info`
--

CREATE TABLE `log_visitor_info` (
  `visitor_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `http_referer` varchar(255) DEFAULT NULL COMMENT 'HTTP Referrer',
  `http_user_agent` varchar(255) DEFAULT NULL COMMENT 'HTTP User-Agent',
  `http_accept_charset` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Charset',
  `http_accept_language` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Language',
  `server_addr` varbinary(16) DEFAULT NULL,
  `remote_addr` varbinary(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Info Table';

--
-- Дамп данных таблицы `log_visitor_info`
--

INSERT INTO `log_visitor_info` (`visitor_id`, `http_referer`, `http_user_agent`, `http_accept_charset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
(1, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(2, 'http://dummy-host.example.com/index.php/admin/catalog_product/index/key/4076256f38a135f74425ce068d4a4710/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(3, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(4, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(5, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(6, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(7, 'http://dummy-host.example.com/index.php/?limit=10&np=2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(8, 'http://dummy-host.example.com/index.php/appliances.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(9, 'http://dummy-host.example.com/index.php/appliances.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(10, 'http://dummy-host.example.com/index.php/appliances.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(11, 'http://dummy-host.example.com/index.php/appliances.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(12, 'http://dummy-host.example.com/index.php/appliances.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(13, 'http://dummy-host.example.com/index.php/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(14, 'http://dummy-host.example.com/index.php/appliances.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(15, 'http://dummy-host.example.com/index.php/appliances.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(16, 'http://dummy-host.example.com/index.php/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(17, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(18, 'http://dummy-host.example.com/index.php/phoenix/moneybookers/activateemail', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(19, 'http://dummy-host.example.com/index.php/about-magento-demo-store/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(20, 'http://dummy-host.example.com/index.php/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(21, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(22, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(23, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(24, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(25, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(26, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(27, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(28, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(29, 'http://dummy-host.example.com/index.php/refurbished', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001),
(30, 'http://dummy-host.example.com/index.php/appliances.html?dir=asc&order=name', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', NULL, 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', 0x7f000001, 0x7f000001);

-- --------------------------------------------------------

--
-- Структура таблицы `log_visitor_online`
--

CREATE TABLE `log_visitor_online` (
  `visitor_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Visitor ID',
  `visitor_type` varchar(1) NOT NULL COMMENT 'Visitor Type',
  `remote_addr` varbinary(16) DEFAULT NULL,
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NULL DEFAULT NULL COMMENT 'Last Visit Time',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer ID',
  `last_url` varchar(255) DEFAULT NULL COMMENT 'Last URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Online Table';

-- --------------------------------------------------------

--
-- Структура таблицы `newsletter_problem`
--

CREATE TABLE `newsletter_problem` (
  `problem_id` int(10) UNSIGNED NOT NULL COMMENT 'Problem Id',
  `subscriber_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) UNSIGNED DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems';

-- --------------------------------------------------------

--
-- Структура таблицы `newsletter_queue`
--

CREATE TABLE `newsletter_queue` (
  `queue_id` int(10) UNSIGNED NOT NULL COMMENT 'Queue Id',
  `template_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Template Id',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue';

-- --------------------------------------------------------

--
-- Структура таблицы `newsletter_queue_link`
--

CREATE TABLE `newsletter_queue_link` (
  `queue_link_id` int(10) UNSIGNED NOT NULL COMMENT 'Queue Link Id',
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link';

-- --------------------------------------------------------

--
-- Структура таблицы `newsletter_queue_store_link`
--

CREATE TABLE `newsletter_queue_store_link` (
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

-- --------------------------------------------------------

--
-- Структура таблицы `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber` (
  `subscriber_id` int(10) UNSIGNED NOT NULL COMMENT 'Subscriber Id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber';

-- --------------------------------------------------------

--
-- Структура таблицы `newsletter_template`
--

CREATE TABLE `newsletter_template` (
  `template_id` int(10) UNSIGNED NOT NULL COMMENT 'Template Id',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_text_preprocessed` text COMMENT 'Template Text Preprocessed',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) UNSIGNED DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template';

--
-- Дамп данных таблицы `newsletter_template`
--

INSERT INTO `newsletter_template` (`template_id`, `template_code`, `template_text`, `template_text_preprocessed`, `template_styles`, `template_type`, `template_subject`, `template_sender_name`, `template_sender_email`, `template_actual`, `added_at`, `modified_at`) VALUES
(1, 'Example Newsletter Template', '{{template config_path=\"design/email/header\"}}\n{{inlinecss file=\"email-inline.css\"}}\n\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n    <td class=\"full\">\n        <table class=\"columns\">\n            <tr>\n                <td class=\"email-heading\">\n                    <h1>Welcome</h1>\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n                    sed do eiusmod tempor incididunt ut labore et.</p>\n                </td>\n                <td class=\"store-info\">\n                    <h4>Contact Us</h4>\n                    <p>\n                        {{depend store_phone}}\n                        <b>Call Us:</b>\n                        <a href=\"tel:{{var phone}}\">{{var store_phone}}</a><br>\n                        {{/depend}}\n                        {{depend store_hours}}\n                        <span class=\"no-link\">{{var store_hours}}</span><br>\n                        {{/depend}}\n                        {{depend store_email}}\n                        <b>Email:</b> <a href=\"mailto:{{var store_email}}\">{{var store_email}}</a>\n                        {{/depend}}\n                    </p>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td class=\"full\">\n        <table class=\"columns\">\n            <tr>\n                <td>\n                    <img width=\"600\" src=\"http://placehold.it/600x200\" class=\"main-image\">\n                </td>\n                <td class=\"expander\"></td>\n            </tr>\n        </table>\n        <table class=\"columns\">\n            <tr>\n                <td class=\"panel\">\n                    <p>Phasellus dictum sapien a neque luctus cursus. Pellentesque sem dolor, fringilla et pharetra\n                    vitae. <a href=\"#\">Click it! &raquo;</a></p>\n                </td>\n                <td class=\"expander\"></td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class=\"row\">\n            <tr>\n                <td class=\"half left wrapper\">\n                    <table class=\"columns\">\n                        <tr>\n                            <td>\n                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\n                                incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n                                sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet.</p>\n                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\n                                incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed\n                                do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet.</p>\n                                <table class=\"button\">\n                                    <tr>\n                                        <td>\n                                            <a href=\"#\">Click Me!</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                            </td>\n                            <td class=\"expander\"></td>\n                        </tr>\n                    </table>\n                </td>\n                <td class=\"half right wrapper last\">\n                    <table class=\"columns\">\n                        <tr>\n                            <td class=\"panel sidebar-links\">\n                                <h6>Header Thing</h6>\n                                <p>Sub-head or something</p>\n                                <table>\n                                    <tr>\n                                        <td>\n                                            <p><a href=\"#\">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href=\"#\">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href=\"#\">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href=\"#\">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href=\"#\">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href=\"#\">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href=\"#\">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr><td>&nbsp;</td></tr>\n                                </table>\n                            </td>\n                            <td class=\"expander\"></td>\n                        </tr>\n                    </table>\n                    <br>\n                    <table class=\"columns\">\n                        <tr>\n                            <td class=\"panel\">\n                                <h6>Connect With Us:</h6>\n                                <table class=\"social-button facebook\">\n                                    <tr>\n                                        <td>\n                                            <a href=\"#\">Facebook</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                                <hr>\n                                <table class=\"social-button twitter\">\n                                    <tr>\n                                        <td>\n                                            <a href=\"#\">Twitter</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                                <hr>\n                                <table class=\"social-button google-plus\">\n                                    <tr>\n                                        <td>\n                                            <a href=\"#\">Google +</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                                <br>\n                                <h6>Contact Info:</h6>\n                                {{depend store_phone}}\n                                <p>\n                                    <b>Call Us:</b>\n                                    <a href=\"tel:{{var phone}}\">{{var store_phone}}</a>\n                                </p>\n                                {{/depend}}\n                                {{depend store_hours}}\n                                <p><span class=\"no-link\">{{var store_hours}}</span><br></p>\n                                {{/depend}}\n                                {{depend store_email}}\n                                <p><b>Email:</b> <a href=\"mailto:{{var store_email}}\">{{var store_email}}</a></p>\n                                {{/depend}}\n                            </td>\n                            <td class=\"expander\"></td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n        </table>\n        <table class=\"row\">\n            <tr>\n                <td class=\"full wrapper\">\n                    {{block type=\"catalog/product_new\" template=\"email/catalog/product/new.phtml\" products_count=\"4\"\n                    column_count=\"4\" }}\n                </td>\n            </tr>\n        </table>\n        <table class=\"row\">\n            <tr>\n                <td class=\"full wrapper last\">\n                    <table class=\"columns\">\n                        <tr>\n                            <td align=\"center\">\n                                <center>\n                                    <p><a href=\"#\">Terms</a> | <a href=\"#\">Privacy</a> | <a href=\"#\">Unsubscribe</a></p>\n                                </center>\n                            </td>\n                            <td class=\"expander\"></td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n</table>\n\n{{template config_path=\"design/email/footer\"}}', NULL, NULL, 2, 'Example Subject', 'Owner', 'owner@example.com', 1, '2018-03-29 21:54:42', '2018-03-29 21:54:43');

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` varchar(255) DEFAULT NULL COMMENT 'Callback URL',
  `rejected_callback_url` varchar(255) NOT NULL COMMENT 'Rejected callback URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers';

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) UNSIGNED NOT NULL COMMENT 'Nonce Timestamp'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='oauth_nonce';

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_token`
--

CREATE TABLE `oauth_token` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `consumer_id` int(10) UNSIGNED NOT NULL COMMENT 'Consumer ID',
  `admin_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` varchar(255) NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';

-- --------------------------------------------------------

--
-- Структура таблицы `paypal_cert`
--

CREATE TABLE `paypal_cert` (
  `cert_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Cert Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table';

-- --------------------------------------------------------

--
-- Структура таблицы `paypal_payment_transaction`
--

CREATE TABLE `paypal_payment_transaction` (
  `transaction_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction';

-- --------------------------------------------------------

--
-- Структура таблицы `paypal_settlement_report`
--

CREATE TABLE `paypal_settlement_report` (
  `report_id` int(10) UNSIGNED NOT NULL COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table';

-- --------------------------------------------------------

--
-- Структура таблицы `paypal_settlement_report_row`
--

CREATE TABLE `paypal_settlement_report_row` (
  `row_id` int(10) UNSIGNED NOT NULL COMMENT 'Row Id',
  `report_id` int(10) UNSIGNED NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT '' COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table';

-- --------------------------------------------------------

--
-- Структура таблицы `permission_block`
--

CREATE TABLE `permission_block` (
  `block_id` int(10) UNSIGNED NOT NULL COMMENT 'Block ID',
  `block_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Block Name',
  `is_allowed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Mark that block can be processed by filters'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='System blocks that can be processed via content filter';

--
-- Дамп данных таблицы `permission_block`
--

INSERT INTO `permission_block` (`block_id`, `block_name`, `is_allowed`) VALUES
(1, 'core/template', 1),
(2, 'catalog/product_new', 1),
(3, 'catalog/product_list', 1),
(4, 'catalog/product_widget_new', 1),
(5, 'catalog/product_slider', 1),
(6, '/mybanner/display/hello', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `permission_variable`
--

CREATE TABLE `permission_variable` (
  `variable_id` int(10) UNSIGNED NOT NULL COMMENT 'Variable ID',
  `variable_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Config Path',
  `is_allowed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Mark that config can be processed by filters'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='System variables that can be processed via content filter';

--
-- Дамп данных таблицы `permission_variable`
--

INSERT INTO `permission_variable` (`variable_id`, `variable_name`, `is_allowed`) VALUES
(1, 'trans_email/ident_support/name', 1),
(2, 'trans_email/ident_support/email', 1),
(3, 'web/unsecure/base_url', 1),
(4, 'web/secure/base_url', 1),
(5, 'trans_email/ident_general/name', 1),
(6, 'trans_email/ident_general/email', 1),
(7, 'trans_email/ident_sales/name', 1),
(8, 'trans_email/ident_sales/email', 1),
(9, 'trans_email/ident_custom1/name', 1),
(10, 'trans_email/ident_custom1/email', 1),
(11, 'trans_email/ident_custom2/name', 1),
(12, 'trans_email/ident_custom2/email', 1),
(13, 'general/store_information/name', 1),
(14, 'general/store_information/phone', 1),
(15, 'general/store_information/address', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `persistent_session`
--

CREATE TABLE `persistent_session` (
  `persistent_id` int(10) UNSIGNED NOT NULL COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session';

-- --------------------------------------------------------

--
-- Структура таблицы `poll`
--

CREATE TABLE `poll` (
  `poll_id` int(10) UNSIGNED NOT NULL COMMENT 'Poll Id',
  `poll_title` varchar(255) DEFAULT NULL COMMENT 'Poll title',
  `votes_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id',
  `date_posted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date posted',
  `date_closed` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  `active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is active',
  `closed` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is closed',
  `answers_display` smallint(6) DEFAULT NULL COMMENT 'Answers display'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll';

--
-- Дамп данных таблицы `poll`
--

INSERT INTO `poll` (`poll_id`, `poll_title`, `votes_count`, `store_id`, `date_posted`, `date_closed`, `active`, `closed`, `answers_display`) VALUES
(1, 'What is your favorite color', 7, 0, '2018-03-29 21:54:37', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `poll_answer`
--

CREATE TABLE `poll_answer` (
  `answer_id` int(10) UNSIGNED NOT NULL COMMENT 'Answer Id',
  `poll_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `answer_title` varchar(255) DEFAULT NULL COMMENT 'Answer title',
  `votes_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `answer_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Answers display'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Answers';

--
-- Дамп данных таблицы `poll_answer`
--

INSERT INTO `poll_answer` (`answer_id`, `poll_id`, `answer_title`, `votes_count`, `answer_order`) VALUES
(1, 1, 'Green', 4, 0),
(2, 1, 'Red', 1, 0),
(3, 1, 'Black', 0, 0),
(4, 1, 'Magenta', 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `poll_store`
--

CREATE TABLE `poll_store` (
  `poll_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Store';

--
-- Дамп данных таблицы `poll_store`
--

INSERT INTO `poll_store` (`poll_id`, `store_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `poll_vote`
--

CREATE TABLE `poll_vote` (
  `vote_id` int(10) UNSIGNED NOT NULL COMMENT 'Vote Id',
  `poll_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `poll_answer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Poll answer id',
  `ip_address` varbinary(16) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer id',
  `vote_time` timestamp NULL DEFAULT NULL COMMENT 'Date closed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Vote';

-- --------------------------------------------------------

--
-- Структура таблицы `product_alert_price`
--

CREATE TABLE `product_alert_price` (
  `alert_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Product alert price id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price';

-- --------------------------------------------------------

--
-- Структура таблицы `product_alert_stock`
--

CREATE TABLE `product_alert_stock` (
  `alert_stock_id` int(10) UNSIGNED NOT NULL COMMENT 'Product alert stock id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock';

-- --------------------------------------------------------

--
-- Структура таблицы `rating`
--

CREATE TABLE `rating` (
  `rating_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Rating Id',
  `entity_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Position On Frontend'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ratings';

--
-- Дамп данных таблицы `rating`
--

INSERT INTO `rating` (`rating_id`, `entity_id`, `rating_code`, `position`) VALUES
(1, 1, 'Quality', 0),
(2, 1, 'Value', 0),
(3, 1, 'Price', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `rating_entity`
--

CREATE TABLE `rating_entity` (
  `entity_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating entities';

--
-- Дамп данных таблицы `rating_entity`
--

INSERT INTO `rating_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- Структура таблицы `rating_option`
--

CREATE TABLE `rating_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Rating Option Id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Ration option position on frontend'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating options';

--
-- Дамп данных таблицы `rating_option`
--

INSERT INTO `rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `rating_option_vote`
--

CREATE TABLE `rating_option_vote` (
  `vote_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Vote id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(50) DEFAULT NULL,
  `remote_ip_long` varbinary(16) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values';

-- --------------------------------------------------------

--
-- Структура таблицы `rating_option_vote_aggregated`
--

CREATE TABLE `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated';

-- --------------------------------------------------------

--
-- Структура таблицы `rating_store`
--

CREATE TABLE `rating_store` (
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

-- --------------------------------------------------------

--
-- Структура таблицы `rating_title`
--

CREATE TABLE `rating_title` (
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

-- --------------------------------------------------------

--
-- Структура таблицы `report_compared_product_index`
--

CREATE TABLE `report_compared_product_index` (
  `index_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Index Id',
  `visitor_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table';

-- --------------------------------------------------------

--
-- Структура таблицы `report_event`
--

CREATE TABLE `report_event` (
  `event_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Logged At',
  `event_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Table';

--
-- Дамп данных таблицы `report_event`
--

INSERT INTO `report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
(1, '2018-03-30 20:25:44', 1, 2, 6, 1, 1),
(2, '2018-03-30 20:26:29', 1, 2, 6, 1, 1),
(3, '2018-03-30 20:27:48', 1, 2, 6, 1, 1),
(4, '2018-03-30 20:28:52', 1, 2, 6, 1, 1),
(5, '2018-04-03 00:32:49', 1, 10, 19, 1, 1),
(6, '2018-04-03 00:49:55', 1, 1, 19, 1, 1),
(7, '2018-04-03 01:05:11', 1, 1, 19, 1, 1),
(8, '2018-04-03 01:13:51', 4, 1, 19, 1, 1),
(9, '2018-04-04 03:27:19', 1, 16, 28, 1, 1),
(10, '2018-04-04 04:57:08', 1, 16, 29, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `report_event_types`
--

CREATE TABLE `report_event_types` (
  `event_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table';

--
-- Дамп данных таблицы `report_event_types`
--

INSERT INTO `report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
(1, 'catalog_product_view', 0),
(2, 'sendfriend_product', 0),
(3, 'catalog_product_compare_add_product', 0),
(4, 'checkout_cart_add_product', 0),
(5, 'wishlist_add_product', 0),
(6, 'wishlist_share', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `report_viewed_product_aggregated_daily`
--

CREATE TABLE `report_viewed_product_aggregated_daily` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';

-- --------------------------------------------------------

--
-- Структура таблицы `report_viewed_product_aggregated_monthly`
--

CREATE TABLE `report_viewed_product_aggregated_monthly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly';

-- --------------------------------------------------------

--
-- Структура таблицы `report_viewed_product_aggregated_yearly`
--

CREATE TABLE `report_viewed_product_aggregated_yearly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly';

-- --------------------------------------------------------

--
-- Структура таблицы `report_viewed_product_index`
--

CREATE TABLE `report_viewed_product_index` (
  `index_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Index Id',
  `visitor_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table';

--
-- Дамп данных таблицы `report_viewed_product_index`
--

INSERT INTO `report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, 6, NULL, 2, 1, '2018-03-30 20:28:51'),
(5, 19, NULL, 10, 1, '2018-04-03 00:32:48'),
(6, 19, NULL, 1, 1, '2018-04-03 01:05:11'),
(8, 19, NULL, 17, 1, '2018-04-03 02:08:44'),
(9, 28, NULL, 16, 1, '2018-04-04 03:27:19'),
(10, 29, NULL, 16, 1, '2018-04-04 04:57:07');

-- --------------------------------------------------------

--
-- Структура таблицы `review`
--

CREATE TABLE `review` (
  `review_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Review create date',
  `entity_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Status code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information';

-- --------------------------------------------------------

--
-- Структура таблицы `review_detail`
--

CREATE TABLE `review_detail` (
  `detail_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review detail id',
  `review_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information';

-- --------------------------------------------------------

--
-- Структура таблицы `review_entity`
--

CREATE TABLE `review_entity` (
  `entity_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review entities';

--
-- Дамп данных таблицы `review_entity`
--

INSERT INTO `review_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- Структура таблицы `review_entity_summary`
--

CREATE TABLE `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates';

-- --------------------------------------------------------

--
-- Структура таблицы `review_status`
--

CREATE TABLE `review_status` (
  `status_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review statuses';

--
-- Дамп данных таблицы `review_status`
--

INSERT INTO `review_status` (`status_id`, `status_code`) VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- Структура таблицы `review_store`
--

CREATE TABLE `review_store` (
  `review_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

-- --------------------------------------------------------

--
-- Структура таблицы `salesrule`
--

CREATE TABLE `salesrule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) UNSIGNED NOT NULL COMMENT 'Discount Step',
  `simple_free_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping',
  `apply_to_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Coupon'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule';

-- --------------------------------------------------------

--
-- Структура таблицы `salesrule_coupon`
--

CREATE TABLE `salesrule_coupon` (
  `coupon_id` int(10) UNSIGNED NOT NULL COMMENT 'Coupon Id',
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) UNSIGNED DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) UNSIGNED DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';

-- --------------------------------------------------------

--
-- Структура таблицы `salesrule_coupon_usage`
--

CREATE TABLE `salesrule_coupon_usage` (
  `coupon_id` int(10) UNSIGNED NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

-- --------------------------------------------------------

--
-- Структура таблицы `salesrule_customer`
--

CREATE TABLE `salesrule_customer` (
  `rule_customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Customer Id',
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';

-- --------------------------------------------------------

--
-- Структура таблицы `salesrule_customer_group`
--

CREATE TABLE `salesrule_customer_group` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Структура таблицы `salesrule_label`
--

CREATE TABLE `salesrule_label` (
  `label_id` int(10) UNSIGNED NOT NULL COMMENT 'Label Id',
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label';

-- --------------------------------------------------------

--
-- Структура таблицы `salesrule_product_attribute`
--

CREATE TABLE `salesrule_product_attribute` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

-- --------------------------------------------------------

--
-- Структура таблицы `salesrule_website`
--

CREATE TABLE `salesrule_website` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_bestsellers_aggregated_daily`
--

CREATE TABLE `sales_bestsellers_aggregated_daily` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Product Type Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_bestsellers_aggregated_monthly`
--

CREATE TABLE `sales_bestsellers_aggregated_monthly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Product Type Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_bestsellers_aggregated_yearly`
--

CREATE TABLE `sales_bestsellers_aggregated_yearly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Product Type Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_billing_agreement`
--

CREATE TABLE `sales_billing_agreement` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_billing_agreement_order`
--

CREATE TABLE `sales_billing_agreement_order` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_creditmemo`
--

CREATE TABLE `sales_flat_creditmemo` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_creditmemo_comment`
--

CREATE TABLE `sales_flat_creditmemo_comment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_creditmemo_grid`
--

CREATE TABLE `sales_flat_creditmemo_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_creditmemo_item`
--

CREATE TABLE `sales_flat_creditmemo_item` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_invoice`
--

CREATE TABLE `sales_flat_invoice` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `can_void_flag` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_invoice_comment`
--

CREATE TABLE `sales_flat_invoice_comment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_invoice_grid`
--

CREATE TABLE `sales_flat_invoice_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_invoice_item`
--

CREATE TABLE `sales_flat_invoice_item` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_order`
--

CREATE TABLE `sales_flat_order` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `forced_shipment_with_invoice` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(255) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(255) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(255) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(255) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(255) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(255) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(50) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(255) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(255) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `total_item_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_order_address`
--

CREATE TABLE `sales_flat_order_address` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_order_grid`
--

CREATE TABLE `sales_flat_order_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_order_item`
--

CREATE TABLE `sales_flat_order_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `is_nominal` int(11) NOT NULL DEFAULT '0' COMMENT 'Is Nominal',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `hidden_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_order_payment`
--

CREATE TABLE `sales_flat_order_payment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(255) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(255) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(255) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_status_description` varchar(255) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(255) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(255) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(255) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(255) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(255) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(255) DEFAULT NULL COMMENT 'Cc Trans Id',
  `paybox_request_number` varchar(255) DEFAULT NULL COMMENT 'Paybox Request Number',
  `address_status` varchar(255) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_order_status_history`
--

CREATE TABLE `sales_flat_order_status_history` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_quote`
--

CREATE TABLE `sales_flat_quote` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) UNSIGNED DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(255) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) UNSIGNED DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `is_persistent` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Quote Persistent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';

--
-- Дамп данных таблицы `sales_flat_quote`
--

INSERT INTO `sales_flat_quote` (`entity_id`, `store_id`, `created_at`, `updated_at`, `converted_at`, `is_active`, `is_virtual`, `is_multi_shipping`, `items_count`, `items_qty`, `orig_order_id`, `store_to_base_rate`, `store_to_quote_rate`, `base_currency_code`, `store_currency_code`, `quote_currency_code`, `grand_total`, `base_grand_total`, `checkout_method`, `customer_id`, `customer_tax_class_id`, `customer_group_id`, `customer_email`, `customer_prefix`, `customer_firstname`, `customer_middlename`, `customer_lastname`, `customer_suffix`, `customer_dob`, `customer_note`, `customer_note_notify`, `customer_is_guest`, `remote_ip`, `applied_rule_ids`, `reserved_order_id`, `password_hash`, `coupon_code`, `global_currency_code`, `base_to_global_rate`, `base_to_quote_rate`, `customer_taxvat`, `customer_gender`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `is_changed`, `trigger_recollect`, `ext_shipping_info`, `gift_message_id`, `is_persistent`) VALUES
(1, 1, '2018-03-30 05:17:30', '2018-03-30 05:17:30', NULL, 1, 0, 0, 0, '0.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '0.0000', '0.0000', NULL, 1, 3, 1, 'ivan@mailr.ru', NULL, 'Ivan', NULL, 'Ivanov', NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, NULL, 0),
(2, 1, '2018-04-03 01:13:50', '2018-04-03 01:13:56', NULL, 1, 0, 0, 1, '1.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '20.0000', '20.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '20.0000', '20.0000', '20.0000', '20.0000', 1, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_quote_address`
--

CREATE TABLE `sales_flat_quote_address` (
  `address_id` int(10) UNSIGNED NOT NULL COMMENT 'Address Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(40) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(255) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `free_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `collect_shipping_rates` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address';

--
-- Дамп данных таблицы `sales_flat_quote_address`
--

INSERT INTO `sales_flat_quote_address` (`address_id`, `quote_id`, `created_at`, `updated_at`, `customer_id`, `save_in_address_book`, `customer_address_id`, `address_type`, `email`, `prefix`, `firstname`, `middlename`, `lastname`, `suffix`, `company`, `street`, `city`, `region`, `region_id`, `postcode`, `country_id`, `telephone`, `fax`, `same_as_billing`, `free_shipping`, `collect_shipping_rates`, `shipping_method`, `shipping_description`, `weight`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `tax_amount`, `base_tax_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `discount_amount`, `base_discount_amount`, `grand_total`, `base_grand_total`, `customer_notes`, `applied_taxes`, `discount_description`, `shipping_discount_amount`, `base_shipping_discount_amount`, `subtotal_incl_tax`, `base_subtotal_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `shipping_hidden_tax_amount`, `base_shipping_hidden_tax_amnt`, `shipping_incl_tax`, `base_shipping_incl_tax`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`, `gift_message_id`) VALUES
(1, 1, '2018-03-30 05:17:31', '2018-03-30 05:17:31', 1, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, '2018-03-30 05:17:31', '2018-03-30 05:17:31', 1, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, '2018-04-03 01:13:51', '2018-04-03 01:13:57', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, '2018-04-03 01:13:51', '2018-04-03 01:13:57', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '2.0000', '20.0000', '20.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '20.0000', '20.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '20.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_quote_address_item`
--

CREATE TABLE `sales_flat_quote_address_item` (
  `address_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Address Item Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `free_shipping` int(10) UNSIGNED DEFAULT NULL COMMENT 'Free Shipping',
  `is_qty_decimal` int(10) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) UNSIGNED DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_quote_item`
--

CREATE TABLE `sales_flat_quote_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item';

--
-- Дамп данных таблицы `sales_flat_quote_item`
--

INSERT INTO `sales_flat_quote_item` (`item_id`, `quote_id`, `created_at`, `updated_at`, `product_id`, `store_id`, `parent_item_id`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `free_shipping`, `is_qty_decimal`, `no_discount`, `weight`, `qty`, `price`, `base_price`, `custom_price`, `discount_percent`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `row_total`, `base_row_total`, `row_total_with_discount`, `row_weight`, `product_type`, `base_tax_before_discount`, `tax_before_discount`, `original_custom_price`, `redirect_url`, `base_cost`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `gift_message_id`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`, `weee_tax_applied`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`) VALUES
(1, 2, '2018-04-03 01:13:51', '2018-04-03 01:13:51', 1, 1, NULL, 0, '2', 'Йогуртница Elbee E-24801', NULL, NULL, NULL, 0, 0, 0, '2.0000', '1.0000', '20.0000', '20.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '20.0000', '20.0000', '0.0000', '2.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '20.0000', '20.0000', '20.0000', '20.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_quote_item_option`
--

CREATE TABLE `sales_flat_quote_item_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';

--
-- Дамп данных таблицы `sales_flat_quote_item_option`
--

INSERT INTO `sales_flat_quote_item_option` (`option_id`, `item_id`, `product_id`, `code`, `value`) VALUES
(1, 1, 1, 'info_buyRequest', 'a:4:{s:4:\"uenc\";s:56:\"aHR0cDovL2R1bW15LWhvc3QuZXhhbXBsZS5jb20vaW5kZXgucGhwLw,,\";s:7:\"product\";s:1:\"1\";s:8:\"form_key\";s:16:\"X61R96A30sch9eQe\";s:3:\"qty\";d:1;}');

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_quote_payment`
--

CREATE TABLE `sales_flat_quote_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL COMMENT 'Payment Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_quote_shipping_rate`
--

CREATE TABLE `sales_flat_quote_shipping_rate` (
  `rate_id` int(10) UNSIGNED NOT NULL COMMENT 'Rate Id',
  `address_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_shipment`
--

CREATE TABLE `sales_flat_shipment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_shipment_comment`
--

CREATE TABLE `sales_flat_shipment_comment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_shipment_grid`
--

CREATE TABLE `sales_flat_shipment_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_shipment_item`
--

CREATE TABLE `sales_flat_shipment_item` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_flat_shipment_track`
--

CREATE TABLE `sales_flat_shipment_track` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_invoiced_aggregated`
--

CREATE TABLE `sales_invoiced_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_invoiced_aggregated_order`
--

CREATE TABLE `sales_invoiced_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_order_aggregated_created`
--

CREATE TABLE `sales_order_aggregated_created` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_order_aggregated_updated`
--

CREATE TABLE `sales_order_aggregated_updated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_order_status`
--

CREATE TABLE `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Дамп данных таблицы `sales_order_status`
--

INSERT INTO `sales_order_status` (`status`, `label`) VALUES
('canceled', 'Canceled'),
('closed', 'Closed'),
('complete', 'Complete'),
('fraud', 'Suspected Fraud'),
('holded', 'On Hold'),
('payment_review', 'Payment Review'),
('paypal_canceled_reversal', 'PayPal Canceled Reversal'),
('paypal_reversed', 'PayPal Reversed'),
('pending', 'Pending'),
('pending_payment', 'Pending Payment'),
('pending_paypal', 'Pending PayPal'),
('processing', 'Processing');

-- --------------------------------------------------------

--
-- Структура таблицы `sales_order_status_label`
--

CREATE TABLE `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_order_status_state`
--

CREATE TABLE `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Дамп данных таблицы `sales_order_status_state`
--

INSERT INTO `sales_order_status_state` (`status`, `state`, `is_default`) VALUES
('canceled', 'canceled', 1),
('closed', 'closed', 1),
('complete', 'complete', 1),
('fraud', 'payment_review', 0),
('holded', 'holded', 1),
('payment_review', 'payment_review', 1),
('pending', 'new', 1),
('pending_payment', 'pending_payment', 1),
('processing', 'processing', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sales_order_tax`
--

CREATE TABLE `sales_order_tax` (
  `tax_id` int(10) UNSIGNED NOT NULL COMMENT 'Tax Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount',
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Hidden'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_order_tax_item`
--

CREATE TABLE `sales_order_tax_item` (
  `tax_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Tax Item Id',
  `tax_id` int(10) UNSIGNED NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_payment_transaction`
--

CREATE TABLE `sales_payment_transaction` (
  `transaction_id` int(10) UNSIGNED NOT NULL COMMENT 'Transaction Id',
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_recurring_profile`
--

CREATE TABLE `sales_recurring_profile` (
  `profile_id` int(10) UNSIGNED NOT NULL COMMENT 'Profile Id',
  `state` varchar(20) NOT NULL COMMENT 'State',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `reference_id` varchar(32) DEFAULT NULL COMMENT 'Reference Id',
  `subscriber_name` varchar(150) DEFAULT NULL COMMENT 'Subscriber Name',
  `start_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Start Datetime',
  `internal_reference_id` varchar(42) NOT NULL COMMENT 'Internal Reference Id',
  `schedule_description` varchar(255) NOT NULL COMMENT 'Schedule Description',
  `suspension_threshold` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Suspension Threshold',
  `bill_failed_later` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Bill Failed Later',
  `period_unit` varchar(20) NOT NULL COMMENT 'Period Unit',
  `period_frequency` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Period Frequency',
  `period_max_cycles` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Period Max Cycles',
  `billing_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Billing Amount',
  `trial_period_unit` varchar(20) DEFAULT NULL COMMENT 'Trial Period Unit',
  `trial_period_frequency` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Trial Period Frequency',
  `trial_period_max_cycles` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Trial Period Max Cycles',
  `trial_billing_amount` text COMMENT 'Trial Billing Amount',
  `currency_code` varchar(3) NOT NULL COMMENT 'Currency Code',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `init_amount` decimal(12,4) DEFAULT NULL COMMENT 'Init Amount',
  `init_may_fail` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Init May Fail',
  `order_info` text NOT NULL COMMENT 'Order Info',
  `order_item_info` text NOT NULL COMMENT 'Order Item Info',
  `billing_address_info` text NOT NULL COMMENT 'Billing Address Info',
  `shipping_address_info` text COMMENT 'Shipping Address Info',
  `profile_vendor_info` text COMMENT 'Profile Vendor Info',
  `additional_info` text COMMENT 'Additional Info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_recurring_profile_order`
--

CREATE TABLE `sales_recurring_profile_order` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link Id',
  `profile_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile Order';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_refunded_aggregated`
--

CREATE TABLE `sales_refunded_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_refunded_aggregated_order`
--

CREATE TABLE `sales_refunded_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_shipping_aggregated`
--

CREATE TABLE `sales_shipping_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated';

-- --------------------------------------------------------

--
-- Структура таблицы `sales_shipping_aggregated_order`
--

CREATE TABLE `sales_shipping_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order';

-- --------------------------------------------------------

--
-- Структура таблицы `sendfriend_log`
--

CREATE TABLE `sendfriend_log` (
  `log_id` int(10) UNSIGNED NOT NULL COMMENT 'Log ID',
  `ip` varbinary(16) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `shipping_tablerate`
--

CREATE TABLE `shipping_tablerate` (
  `pk` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate';

-- --------------------------------------------------------

--
-- Структура таблицы `sitemap`
--

CREATE TABLE `sitemap` (
  `sitemap_id` int(10) UNSIGNED NOT NULL COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Sitemap';

-- --------------------------------------------------------

--
-- Структура таблицы `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'Tag Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status',
  `first_customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'First Customer Id',
  `first_store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'First Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag';

-- --------------------------------------------------------

--
-- Структура таблицы `tag_properties`
--

CREATE TABLE `tag_properties` (
  `tag_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `base_popularity` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Base Popularity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Properties';

-- --------------------------------------------------------

--
-- Структура таблицы `tag_relation`
--

CREATE TABLE `tag_relation` (
  `tag_relation_id` int(10) UNSIGNED NOT NULL COMMENT 'Tag Relation Id',
  `tag_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Store Id',
  `active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Active',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Relation';

-- --------------------------------------------------------

--
-- Структура таблицы `tag_summary`
--

CREATE TABLE `tag_summary` (
  `tag_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `customers` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customers',
  `products` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Products',
  `uses` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Uses',
  `historical_uses` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Historical Uses',
  `popularity` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `base_popularity` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Base Popularity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Summary';

-- --------------------------------------------------------

--
-- Структура таблицы `tax_calculation`
--

CREATE TABLE `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';

--
-- Дамп данных таблицы `tax_calculation`
--

INSERT INTO `tax_calculation` (`tax_calculation_id`, `tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
(1, 1, 1, 3, 2),
(2, 2, 1, 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `tax_calculation_rate`
--

CREATE TABLE `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) UNSIGNED DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) UNSIGNED DEFAULT NULL COMMENT 'Zip To'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';

--
-- Дамп данных таблицы `tax_calculation_rate`
--

INSERT INTO `tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
(1, 'US', 12, '*', 'US-CA-*-Rate 1', '8.2500', NULL, NULL, NULL),
(2, 'US', 43, '*', 'US-NY-*-Rate 1', '8.3750', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tax_calculation_rate_title`
--

CREATE TABLE `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title';

-- --------------------------------------------------------

--
-- Структура таблицы `tax_calculation_rule`
--

CREATE TABLE `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';

--
-- Дамп данных таблицы `tax_calculation_rule`
--

INSERT INTO `tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`, `calculate_subtotal`) VALUES
(1, 'Retail Customer-Taxable Goods-Rate 1', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `tax_class`
--

CREATE TABLE `tax_class` (
  `class_id` smallint(6) NOT NULL COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Class';

--
-- Дамп данных таблицы `tax_class`
--

INSERT INTO `tax_class` (`class_id`, `class_name`, `class_type`) VALUES
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER'),
(4, 'Shipping', 'PRODUCT');

-- --------------------------------------------------------

--
-- Структура таблицы `tax_order_aggregated_created`
--

CREATE TABLE `tax_order_aggregated_created` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation';

-- --------------------------------------------------------

--
-- Структура таблицы `tax_order_aggregated_updated`
--

CREATE TABLE `tax_order_aggregated_updated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated';

-- --------------------------------------------------------

--
-- Структура таблицы `weee_discount`
--

CREATE TABLE `weee_discount` (
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Discount';

-- --------------------------------------------------------

--
-- Структура таблицы `weee_tax`
--

CREATE TABLE `weee_tax` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` varchar(255) NOT NULL DEFAULT '*' COMMENT 'State',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Type Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax';

-- --------------------------------------------------------

--
-- Структура таблицы `widget`
--

CREATE TABLE `widget` (
  `widget_id` int(10) UNSIGNED NOT NULL COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets';

-- --------------------------------------------------------

--
-- Структура таблицы `widget_instance`
--

CREATE TABLE `widget_instance` (
  `instance_id` int(10) UNSIGNED NOT NULL COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `package_theme` varchar(255) DEFAULT NULL COMMENT 'Package Theme',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme';

--
-- Дамп данных таблицы `widget_instance`
--

INSERT INTO `widget_instance` (`instance_id`, `instance_type`, `package_theme`, `title`, `store_ids`, `widget_parameters`, `sort_order`) VALUES
(1, 'cms/widget_block', 'base/default', 'ttitle', '0', 'a:1:{s:8:\"block_id\";s:1:\"2\";}', 0),
(2, 'catalog/product_widget_new', 'base/default', 'net_product', '0', 'a:4:{s:12:\"display_type\";s:12:\"all_products\";s:10:\"show_pager\";s:1:\"0\";s:14:\"products_count\";s:2:\"10\";s:14:\"cache_lifetime\";s:0:\"\";}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `widget_instance_page`
--

CREATE TABLE `widget_instance_page` (
  `page_id` int(10) UNSIGNED NOT NULL COMMENT 'Page Id',
  `instance_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Block Reference',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page';

-- --------------------------------------------------------

--
-- Структура таблицы `widget_instance_page_layout`
--

CREATE TABLE `widget_instance_page_layout` (
  `page_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Layout Update Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

-- --------------------------------------------------------

--
-- Структура таблицы `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist ID',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table';

-- --------------------------------------------------------

--
-- Структура таблицы `wishlist_item`
--

CREATE TABLE `wishlist_item` (
  `wishlist_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items';

-- --------------------------------------------------------

--
-- Структура таблицы `wishlist_item_option`
--

CREATE TABLE `wishlist_item_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `wishlist_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `adminnotification_inbox`
--
ALTER TABLE `adminnotification_inbox`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `IDX_ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  ADD KEY `IDX_ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  ADD KEY `IDX_ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`);

--
-- Индексы таблицы `admin_assert`
--
ALTER TABLE `admin_assert`
  ADD PRIMARY KEY (`assert_id`);

--
-- Индексы таблицы `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `IDX_ADMIN_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  ADD KEY `IDX_ADMIN_ROLE_TREE_LEVEL` (`tree_level`);

--
-- Индексы таблицы `admin_rule`
--
ALTER TABLE `admin_rule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `IDX_ADMIN_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  ADD KEY `IDX_ADMIN_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`);

--
-- Индексы таблицы `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UNQ_ADMIN_USER_USERNAME` (`username`);

--
-- Индексы таблицы `api2_acl_attribute`
--
ALTER TABLE `api2_acl_attribute`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_API2_ACL_ATTRIBUTE_USER_TYPE_RESOURCE_ID_OPERATION` (`user_type`,`resource_id`,`operation`),
  ADD KEY `IDX_API2_ACL_ATTRIBUTE_USER_TYPE` (`user_type`);

--
-- Индексы таблицы `api2_acl_role`
--
ALTER TABLE `api2_acl_role`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_API2_ACL_ROLE_CREATED_AT` (`created_at`),
  ADD KEY `IDX_API2_ACL_ROLE_UPDATED_AT` (`updated_at`);

--
-- Индексы таблицы `api2_acl_rule`
--
ALTER TABLE `api2_acl_rule`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_API2_ACL_RULE_ROLE_ID_RESOURCE_ID_PRIVILEGE` (`role_id`,`resource_id`,`privilege`);

--
-- Индексы таблицы `api2_acl_user`
--
ALTER TABLE `api2_acl_user`
  ADD UNIQUE KEY `UNQ_API2_ACL_USER_ADMIN_ID` (`admin_id`),
  ADD KEY `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` (`role_id`);

--
-- Индексы таблицы `api_assert`
--
ALTER TABLE `api_assert`
  ADD PRIMARY KEY (`assert_id`);

--
-- Индексы таблицы `api_role`
--
ALTER TABLE `api_role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `IDX_API_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  ADD KEY `IDX_API_ROLE_TREE_LEVEL` (`tree_level`);

--
-- Индексы таблицы `api_rule`
--
ALTER TABLE `api_rule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `IDX_API_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  ADD KEY `IDX_API_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`);

--
-- Индексы таблицы `api_session`
--
ALTER TABLE `api_session`
  ADD KEY `IDX_API_SESSION_USER_ID` (`user_id`),
  ADD KEY `IDX_API_SESSION_SESSID` (`sessid`);

--
-- Индексы таблицы `api_user`
--
ALTER TABLE `api_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `captcha_log`
--
ALTER TABLE `captcha_log`
  ADD PRIMARY KEY (`type`,`value`);

--
-- Индексы таблицы `cataloginventory_stock`
--
ALTER TABLE `cataloginventory_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Индексы таблицы `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `UNQ_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  ADD KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`);

--
-- Индексы таблицы `cataloginventory_stock_status`
--
ALTER TABLE `cataloginventory_stock_status`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  ADD KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `cataloginventory_stock_status_idx`
--
ALTER TABLE `cataloginventory_stock_status_idx`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  ADD KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `cataloginventory_stock_status_tmp`
--
ALTER TABLE `cataloginventory_stock_status_tmp`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  ADD KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `catalogrule`
--
ALTER TABLE `catalogrule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `IDX_CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`);

--
-- Индексы таблицы `catalogrule_affected_product`
--
ALTER TABLE `catalogrule_affected_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`),
  ADD KEY `IDX_CATALOGRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  ADD KEY `IDX_CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Индексы таблицы `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  ADD KEY `IDX_CATALOGRULE_GROUP_WEBSITE_RULE_ID` (`rule_id`),
  ADD KEY `IDX_CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `IDX_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  ADD PRIMARY KEY (`rule_product_id`),
  ADD UNIQUE KEY `EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  ADD KEY `IDX_CATALOGRULE_PRODUCT_RULE_ID` (`rule_id`),
  ADD KEY `IDX_CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `IDX_CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  ADD KEY `IDX_CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  ADD KEY `IDX_CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  ADD KEY `IDX_CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  ADD PRIMARY KEY (`rule_product_price_id`),
  ADD UNIQUE KEY `UNQ_CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  ADD KEY `IDX_CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `IDX_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  ADD KEY `IDX_CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
  ADD PRIMARY KEY (`rule_id`,`website_id`),
  ADD KEY `IDX_CATALOGRULE_WEBSITE_RULE_ID` (`rule_id`),
  ADD KEY `IDX_CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `catalogsearch_fulltext`
--
ALTER TABLE `catalogsearch_fulltext`
  ADD PRIMARY KEY (`fulltext_id`),
  ADD UNIQUE KEY `UNQ_CATALOGSEARCH_FULLTEXT_PRODUCT_ID_STORE_ID` (`product_id`,`store_id`);
ALTER TABLE `catalogsearch_fulltext` ADD FULLTEXT KEY `FTI_CATALOGSEARCH_FULLTEXT_DATA_INDEX` (`data_index`);

--
-- Индексы таблицы `catalogsearch_query`
--
ALTER TABLE `catalogsearch_query`
  ADD PRIMARY KEY (`query_id`),
  ADD KEY `IDX_CATALOGSEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  ADD KEY `IDX_CATALOGSEARCH_QUERY_STORE_ID` (`store_id`),
  ADD KEY `IDX_CATALOGSEARCH_QUERY_SYNONYM_FOR` (`synonym_for`);

--
-- Индексы таблицы `catalogsearch_result`
--
ALTER TABLE `catalogsearch_result`
  ADD PRIMARY KEY (`query_id`,`product_id`),
  ADD KEY `IDX_CATALOGSEARCH_RESULT_QUERY_ID` (`query_id`),
  ADD KEY `IDX_CATALOGSEARCH_RESULT_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `catalog_category_anc_categs_index_idx`
--
ALTER TABLE `catalog_category_anc_categs_index_idx`
  ADD KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_CATEGORY_ID` (`category_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_PATH_CATEGORY_ID` (`path`,`category_id`);

--
-- Индексы таблицы `catalog_category_anc_categs_index_tmp`
--
ALTER TABLE `catalog_category_anc_categs_index_tmp`
  ADD KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_CATEGORY_ID` (`category_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_PATH_CATEGORY_ID` (`path`,`category_id`);

--
-- Индексы таблицы `catalog_category_anc_products_index_idx`
--
ALTER TABLE `catalog_category_anc_products_index_idx`
  ADD KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_IDX_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`);

--
-- Индексы таблицы `catalog_category_anc_products_index_tmp`
--
ALTER TABLE `catalog_category_anc_products_index_tmp`
  ADD KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_TMP_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`);

--
-- Индексы таблицы `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_PATH_ENTITY_ID` (`path`,`entity_id`);

--
-- Индексы таблицы `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DTIME_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DEC_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_CTGR_ENTT_INT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_CTGR_ENTT_TEXT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_CTGR_ENTT_VCHR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_category_flat_store_1`
--
ALTER TABLE `catalog_category_flat_store_1`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID` (`store_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_PATH` (`path`),
  ADD KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_LEVEL` (`level`);

--
-- Индексы таблицы `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD PRIMARY KEY (`category_id`,`product_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `catalog_category_product_index`
--
ALTER TABLE `catalog_category_product_index`
  ADD PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  ADD KEY `IDX_CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  ADD KEY `15D3C269665C74C2219037D534F4B0DC` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`);

--
-- Индексы таблицы `catalog_category_product_index_enbl_idx`
--
ALTER TABLE `catalog_category_product_index_enbl_idx`
  ADD KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_IDX_PRD_ID_VISIBILITY` (`product_id`,`visibility`);

--
-- Индексы таблицы `catalog_category_product_index_enbl_tmp`
--
ALTER TABLE `catalog_category_product_index_enbl_tmp`
  ADD KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_TMP_PRD_ID_VISIBILITY` (`product_id`,`visibility`);

--
-- Индексы таблицы `catalog_category_product_index_idx`
--
ALTER TABLE `catalog_category_product_index_idx`
  ADD KEY `IDX_CAT_CTGR_PRD_IDX_IDX_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`);

--
-- Индексы таблицы `catalog_category_product_index_tmp`
--
ALTER TABLE `catalog_category_product_index_tmp`
  ADD KEY `IDX_CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`);

--
-- Индексы таблицы `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD PRIMARY KEY (`catalog_compare_item_id`),
  ADD KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID` (`customer_id`),
  ADD KEY `IDX_CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `IDX_CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `IDX_CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  ADD KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`);

--
-- Индексы таблицы `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`);

--
-- Индексы таблицы `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Индексы таблицы `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD PRIMARY KEY (`selection_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD PRIMARY KEY (`selection_id`,`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `catalog_product_bundle_stock_index`
--
ALTER TABLE `catalog_product_bundle_stock_index`
  ADD PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`);

--
-- Индексы таблицы `catalog_product_enabled_index`
--
ALTER TABLE `catalog_product_enabled_index`
  ADD PRIMARY KEY (`product_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_SKU` (`sku`);

--
-- Индексы таблицы `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_PRD_ENTT_DTIME_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID` (`entity_id`);

--
-- Индексы таблицы `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_PRD_ENTT_DEC_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`);

--
-- Индексы таблицы `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_PRD_ENTT_GLR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_product_entity_group_price`
--
ALTER TABLE `catalog_product_entity_group_price`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CC12C83765B562314470A24F2BDD0F36` (`entity_id`,`all_groups`,`customer_group_id`,`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID` (`entity_id`);

--
-- Индексы таблицы `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ENTITY_ID` (`entity_id`);

--
-- Индексы таблицы `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD PRIMARY KEY (`value_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID` (`entity_id`);

--
-- Индексы таблицы `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_PRD_ENTT_VCHR_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`);

--
-- Индексы таблицы `catalog_product_flat_1`
--
ALTER TABLE `catalog_product_flat_1`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_FLAT_1_TYPE_ID` (`type_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_FLAT_1_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_FLAT_1_NAME` (`name`),
  ADD KEY `IDX_CATALOG_PRODUCT_FLAT_1_PRICE` (`price`),
  ADD KEY `IDX_CATALOG_PRODUCT_FLAT_1_STATUS` (`status`);

--
-- Индексы таблицы `catalog_product_index_eav`
--
ALTER TABLE `catalog_product_index_eav`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`);

--
-- Индексы таблицы `catalog_product_index_eav_decimal`
--
ALTER TABLE `catalog_product_index_eav_decimal`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`);

--
-- Индексы таблицы `catalog_product_index_eav_decimal_idx`
--
ALTER TABLE `catalog_product_index_eav_decimal_idx`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`);

--
-- Индексы таблицы `catalog_product_index_eav_decimal_tmp`
--
ALTER TABLE `catalog_product_index_eav_decimal_tmp`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`);

--
-- Индексы таблицы `catalog_product_index_eav_idx`
--
ALTER TABLE `catalog_product_index_eav_idx`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`);

--
-- Индексы таблицы `catalog_product_index_eav_tmp`
--
ALTER TABLE `catalog_product_index_eav_tmp`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`);

--
-- Индексы таблицы `catalog_product_index_group_price`
--
ALTER TABLE `catalog_product_index_group_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_GROUP_PRICE_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID` (`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  ADD KEY `IDX_CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`);

--
-- Индексы таблицы `catalog_product_index_price_bundle_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Индексы таблицы `catalog_product_index_price_bundle_opt_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Индексы таблицы `catalog_product_index_price_bundle_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Индексы таблицы `catalog_product_index_price_bundle_sel_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_sel_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`);

--
-- Индексы таблицы `catalog_product_index_price_bundle_sel_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_sel_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`);

--
-- Индексы таблицы `catalog_product_index_price_bundle_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Индексы таблицы `catalog_product_index_price_cfg_opt_agr_idx`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_agr_idx`
  ADD PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`);

--
-- Индексы таблицы `catalog_product_index_price_cfg_opt_agr_tmp`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_agr_tmp`
  ADD PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`);

--
-- Индексы таблицы `catalog_product_index_price_cfg_opt_idx`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Индексы таблицы `catalog_product_index_price_cfg_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Индексы таблицы `catalog_product_index_price_downlod_idx`
--
ALTER TABLE `catalog_product_index_price_downlod_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Индексы таблицы `catalog_product_index_price_downlod_tmp`
--
ALTER TABLE `catalog_product_index_price_downlod_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Индексы таблицы `catalog_product_index_price_final_idx`
--
ALTER TABLE `catalog_product_index_price_final_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Индексы таблицы `catalog_product_index_price_final_tmp`
--
ALTER TABLE `catalog_product_index_price_final_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Индексы таблицы `catalog_product_index_price_idx`
--
ALTER TABLE `catalog_product_index_price_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`);

--
-- Индексы таблицы `catalog_product_index_price_opt_agr_idx`
--
ALTER TABLE `catalog_product_index_price_opt_agr_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Индексы таблицы `catalog_product_index_price_opt_agr_tmp`
--
ALTER TABLE `catalog_product_index_price_opt_agr_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Индексы таблицы `catalog_product_index_price_opt_idx`
--
ALTER TABLE `catalog_product_index_price_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Индексы таблицы `catalog_product_index_price_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Индексы таблицы `catalog_product_index_price_tmp`
--
ALTER TABLE `catalog_product_index_price_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`);

--
-- Индексы таблицы `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD PRIMARY KEY (`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`);

--
-- Индексы таблицы `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD PRIMARY KEY (`link_id`),
  ADD UNIQUE KEY `UNQ_CAT_PRD_LNK_LNK_TYPE_ID_PRD_ID_LNKED_PRD_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_LINK_LINK_TYPE_ID` (`link_type_id`);

--
-- Индексы таблицы `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD PRIMARY KEY (`product_link_attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`);

--
-- Индексы таблицы `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `IDX_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`);

--
-- Индексы таблицы `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_PRODUCT_LINK_ATTRIBUTE_ID` (`product_link_attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`);

--
-- Индексы таблицы `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `IDX_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`);

--
-- Индексы таблицы `catalog_product_link_type`
--
ALTER TABLE `catalog_product_link_type`
  ADD PRIMARY KEY (`link_type_id`);

--
-- Индексы таблицы `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD PRIMARY KEY (`option_price_id`),
  ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID` (`option_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD PRIMARY KEY (`option_title_id`),
  ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID` (`option_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD PRIMARY KEY (`option_type_price_id`),
  ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID` (`option_type_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD PRIMARY KEY (`option_type_title_id`),
  ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID` (`option_type_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD PRIMARY KEY (`option_type_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`);

--
-- Индексы таблицы `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD PRIMARY KEY (`parent_id`,`child_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`);

--
-- Индексы таблицы `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD PRIMARY KEY (`product_super_attribute_id`),
  ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  ADD KEY `IDX_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`);

--
-- Индексы таблицы `catalog_product_super_attribute_pricing`
--
ALTER TABLE `catalog_product_super_attribute_pricing`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID_VAL_IDX_WS_ID` (`product_super_attribute_id`,`value_index`,`website_id`),
  ADD KEY `IDX_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRICING_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD PRIMARY KEY (`link_id`),
  ADD UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD PRIMARY KEY (`product_id`,`website_id`),
  ADD KEY `IDX_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `checkout_agreement`
--
ALTER TABLE `checkout_agreement`
  ADD PRIMARY KEY (`agreement_id`);

--
-- Индексы таблицы `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD PRIMARY KEY (`agreement_id`,`store_id`),
  ADD KEY `FK_CHECKOUT_AGREEMENT_STORE_STORE_ID_CORE_STORE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `cms_block`
--
ALTER TABLE `cms_block`
  ADD PRIMARY KEY (`block_id`);

--
-- Индексы таблицы `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD PRIMARY KEY (`block_id`,`store_id`),
  ADD KEY `IDX_CMS_BLOCK_STORE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `cms_page`
--
ALTER TABLE `cms_page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `IDX_CMS_PAGE_IDENTIFIER` (`identifier`);

--
-- Индексы таблицы `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD PRIMARY KEY (`page_id`,`store_id`),
  ADD KEY `IDX_CMS_PAGE_STORE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `core_cache`
--
ALTER TABLE `core_cache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CORE_CACHE_EXPIRE_TIME` (`expire_time`);

--
-- Индексы таблицы `core_cache_option`
--
ALTER TABLE `core_cache_option`
  ADD PRIMARY KEY (`code`);

--
-- Индексы таблицы `core_cache_tag`
--
ALTER TABLE `core_cache_tag`
  ADD PRIMARY KEY (`tag`,`cache_id`),
  ADD KEY `IDX_CORE_CACHE_TAG_CACHE_ID` (`cache_id`);

--
-- Индексы таблицы `core_config_data`
--
ALTER TABLE `core_config_data`
  ADD PRIMARY KEY (`config_id`),
  ADD UNIQUE KEY `UNQ_CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`);

--
-- Индексы таблицы `core_email_queue`
--
ALTER TABLE `core_email_queue`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `0ADECE62FD629241C147389ADF20706E` (`entity_id`,`entity_type`,`event_type`,`message_body_hash`);

--
-- Индексы таблицы `core_email_queue_recipients`
--
ALTER TABLE `core_email_queue_recipients`
  ADD PRIMARY KEY (`recipient_id`),
  ADD UNIQUE KEY `19BDB9C5FE4BD685FCF992A71E976CD0` (`message_id`,`recipient_email`,`email_type`),
  ADD KEY `IDX_CORE_EMAIL_QUEUE_RECIPIENTS_RECIPIENT_EMAIL` (`recipient_email`),
  ADD KEY `IDX_CORE_EMAIL_QUEUE_RECIPIENTS_EMAIL_TYPE` (`email_type`);

--
-- Индексы таблицы `core_email_template`
--
ALTER TABLE `core_email_template`
  ADD PRIMARY KEY (`template_id`),
  ADD UNIQUE KEY `UNQ_CORE_EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  ADD KEY `IDX_CORE_EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  ADD KEY `IDX_CORE_EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`);

--
-- Индексы таблицы `core_flag`
--
ALTER TABLE `core_flag`
  ADD PRIMARY KEY (`flag_id`),
  ADD KEY `IDX_CORE_FLAG_LAST_UPDATE` (`last_update`);

--
-- Индексы таблицы `core_layout_link`
--
ALTER TABLE `core_layout_link`
  ADD PRIMARY KEY (`layout_link_id`),
  ADD UNIQUE KEY `UNQ_CORE_LAYOUT_LINK_STORE_ID_PACKAGE_THEME_LAYOUT_UPDATE_ID` (`store_id`,`package`,`theme`,`layout_update_id`),
  ADD KEY `IDX_CORE_LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`);

--
-- Индексы таблицы `core_layout_update`
--
ALTER TABLE `core_layout_update`
  ADD PRIMARY KEY (`layout_update_id`),
  ADD KEY `IDX_CORE_LAYOUT_UPDATE_HANDLE` (`handle`);

--
-- Индексы таблицы `core_resource`
--
ALTER TABLE `core_resource`
  ADD PRIMARY KEY (`code`);

--
-- Индексы таблицы `core_session`
--
ALTER TABLE `core_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Индексы таблицы `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`store_id`),
  ADD UNIQUE KEY `UNQ_CORE_STORE_CODE` (`code`),
  ADD KEY `IDX_CORE_STORE_WEBSITE_ID` (`website_id`),
  ADD KEY `IDX_CORE_STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  ADD KEY `IDX_CORE_STORE_GROUP_ID` (`group_id`);

--
-- Индексы таблицы `core_store_group`
--
ALTER TABLE `core_store_group`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `IDX_CORE_STORE_GROUP_WEBSITE_ID` (`website_id`),
  ADD KEY `IDX_CORE_STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`);

--
-- Индексы таблицы `core_translate`
--
ALTER TABLE `core_translate`
  ADD PRIMARY KEY (`key_id`),
  ADD UNIQUE KEY `UNQ_CORE_TRANSLATE_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`),
  ADD KEY `IDX_CORE_TRANSLATE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
  ADD PRIMARY KEY (`url_rewrite_id`),
  ADD UNIQUE KEY `UNQ_CORE_URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  ADD UNIQUE KEY `UNQ_CORE_URL_REWRITE_ID_PATH_IS_SYSTEM_STORE_ID` (`id_path`,`is_system`,`store_id`),
  ADD KEY `IDX_CORE_URL_REWRITE_TARGET_PATH_STORE_ID` (`target_path`,`store_id`),
  ADD KEY `IDX_CORE_URL_REWRITE_ID_PATH` (`id_path`),
  ADD KEY `IDX_CORE_URL_REWRITE_STORE_ID` (`store_id`),
  ADD KEY `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` (`category_id`),
  ADD KEY `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` (`product_id`);

--
-- Индексы таблицы `core_variable`
--
ALTER TABLE `core_variable`
  ADD PRIMARY KEY (`variable_id`),
  ADD UNIQUE KEY `UNQ_CORE_VARIABLE_CODE` (`code`);

--
-- Индексы таблицы `core_variable_value`
--
ALTER TABLE `core_variable_value`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CORE_VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  ADD KEY `IDX_CORE_VARIABLE_VALUE_VARIABLE_ID` (`variable_id`),
  ADD KEY `IDX_CORE_VARIABLE_VALUE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `core_website`
--
ALTER TABLE `core_website`
  ADD PRIMARY KEY (`website_id`),
  ADD UNIQUE KEY `UNQ_CORE_WEBSITE_CODE` (`code`),
  ADD KEY `IDX_CORE_WEBSITE_SORT_ORDER` (`sort_order`),
  ADD KEY `IDX_CORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`);

--
-- Индексы таблицы `coupon_aggregated`
--
ALTER TABLE `coupon_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_COUPON_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `IDX_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  ADD KEY `IDX_COUPON_AGGREGATED_RULE_NAME` (`rule_name`);

--
-- Индексы таблицы `coupon_aggregated_order`
--
ALTER TABLE `coupon_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_COUPON_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `IDX_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  ADD KEY `IDX_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`);

--
-- Индексы таблицы `coupon_aggregated_updated`
--
ALTER TABLE `coupon_aggregated_updated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_COUPON_AGGRED_UPDATED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `IDX_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  ADD KEY `IDX_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`);

--
-- Индексы таблицы `cron_schedule`
--
ALTER TABLE `cron_schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `IDX_CRON_SCHEDULE_JOB_CODE` (`job_code`),
  ADD KEY `IDX_CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`);

--
-- Индексы таблицы `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CSTR_ADDR_ENTT_DTIME_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`);

--
-- Индексы таблицы `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Индексы таблицы `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Индексы таблицы `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID` (`entity_id`);

--
-- Индексы таблицы `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Индексы таблицы `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD PRIMARY KEY (`attribute_id`,`website_id`),
  ADD KEY `IDX_CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Индексы таблицы `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Индексы таблицы `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Индексы таблицы `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_ID` (`entity_id`);

--
-- Индексы таблицы `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Индексы таблицы `customer_flowpassword`
--
ALTER TABLE `customer_flowpassword`
  ADD PRIMARY KEY (`flowpassword_id`),
  ADD KEY `IDX_CUSTOMER_FLOWPASSWORD_EMAIL` (`email`),
  ADD KEY `IDX_CUSTOMER_FLOWPASSWORD_IP` (`ip`),
  ADD KEY `IDX_CUSTOMER_FLOWPASSWORD_REQUESTED_DATE` (`requested_date`);

--
-- Индексы таблицы `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD PRIMARY KEY (`form_code`,`attribute_id`),
  ADD KEY `IDX_CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Индексы таблицы `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `dataflow_batch`
--
ALTER TABLE `dataflow_batch`
  ADD PRIMARY KEY (`batch_id`),
  ADD KEY `IDX_DATAFLOW_BATCH_PROFILE_ID` (`profile_id`),
  ADD KEY `IDX_DATAFLOW_BATCH_STORE_ID` (`store_id`),
  ADD KEY `IDX_DATAFLOW_BATCH_CREATED_AT` (`created_at`);

--
-- Индексы таблицы `dataflow_batch_export`
--
ALTER TABLE `dataflow_batch_export`
  ADD PRIMARY KEY (`batch_export_id`),
  ADD KEY `IDX_DATAFLOW_BATCH_EXPORT_BATCH_ID` (`batch_id`);

--
-- Индексы таблицы `dataflow_batch_import`
--
ALTER TABLE `dataflow_batch_import`
  ADD PRIMARY KEY (`batch_import_id`),
  ADD KEY `IDX_DATAFLOW_BATCH_IMPORT_BATCH_ID` (`batch_id`);

--
-- Индексы таблицы `dataflow_import_data`
--
ALTER TABLE `dataflow_import_data`
  ADD PRIMARY KEY (`import_id`),
  ADD KEY `IDX_DATAFLOW_IMPORT_DATA_SESSION_ID` (`session_id`);

--
-- Индексы таблицы `dataflow_profile`
--
ALTER TABLE `dataflow_profile`
  ADD PRIMARY KEY (`profile_id`);

--
-- Индексы таблицы `dataflow_profile_history`
--
ALTER TABLE `dataflow_profile_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `IDX_DATAFLOW_PROFILE_HISTORY_PROFILE_ID` (`profile_id`);

--
-- Индексы таблицы `dataflow_session`
--
ALTER TABLE `dataflow_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Индексы таблицы `design_change`
--
ALTER TABLE `design_change`
  ADD PRIMARY KEY (`design_change_id`),
  ADD KEY `IDX_DESIGN_CHANGE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `directory_country`
--
ALTER TABLE `directory_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `directory_country_format`
--
ALTER TABLE `directory_country_format`
  ADD PRIMARY KEY (`country_format_id`),
  ADD UNIQUE KEY `UNQ_DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`);

--
-- Индексы таблицы `directory_country_region`
--
ALTER TABLE `directory_country_region`
  ADD PRIMARY KEY (`region_id`),
  ADD KEY `IDX_DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`);

--
-- Индексы таблицы `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD PRIMARY KEY (`locale`,`region_id`),
  ADD KEY `IDX_DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`);

--
-- Индексы таблицы `directory_currency_rate`
--
ALTER TABLE `directory_currency_rate`
  ADD PRIMARY KEY (`currency_from`,`currency_to`),
  ADD KEY `IDX_DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`);

--
-- Индексы таблицы `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID` (`product_id`),
  ADD KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`);

--
-- Индексы таблицы `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `IDX_DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  ADD KEY `IDX_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD PRIMARY KEY (`purchased_id`),
  ADD KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  ADD KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  ADD KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`);

--
-- Индексы таблицы `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  ADD KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  ADD KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`);

--
-- Индексы таблицы `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD PRIMARY KEY (`title_id`),
  ADD UNIQUE KEY `UNQ_DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  ADD KEY `IDX_DOWNLOADABLE_LINK_TITLE_LINK_ID` (`link_id`),
  ADD KEY `IDX_DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD PRIMARY KEY (`sample_id`),
  ADD KEY `IDX_DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD PRIMARY KEY (`title_id`),
  ADD UNIQUE KEY `UNQ_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  ADD KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID` (`sample_id`),
  ADD KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD PRIMARY KEY (`attribute_id`),
  ADD UNIQUE KEY `UNQ_EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`),
  ADD KEY `IDX_EAV_ATTRIBUTE_ENTITY_TYPE_ID` (`entity_type_id`);

--
-- Индексы таблицы `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`),
  ADD UNIQUE KEY `UNQ_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  ADD KEY `IDX_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`);

--
-- Индексы таблицы `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD PRIMARY KEY (`attribute_label_id`),
  ADD KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  ADD KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`);

--
-- Индексы таблицы `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `IDX_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`);

--
-- Индексы таблицы `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  ADD KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD PRIMARY KEY (`attribute_set_id`),
  ADD UNIQUE KEY `UNQ_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  ADD KEY `IDX_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`);

--
-- Индексы таблицы `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_EAV_ENTITY_STORE_ID` (`store_id`);

--
-- Индексы таблицы `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD PRIMARY KEY (`entity_attribute_id`),
  ADD UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  ADD UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  ADD KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  ADD KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Индексы таблицы `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  ADD KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Индексы таблицы `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Индексы таблицы `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_EAV_ENTITY_INT_STORE_ID` (`store_id`),
  ADD KEY `IDX_EAV_ENTITY_INT_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Индексы таблицы `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD PRIMARY KEY (`entity_store_id`),
  ADD KEY `IDX_EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_EAV_ENTITY_STORE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_EAV_ENTITY_TEXT_STORE_ID` (`store_id`),
  ADD KEY `IDX_EAV_ENTITY_TEXT_ENTITY_ID` (`entity_id`);

--
-- Индексы таблицы `eav_entity_type`
--
ALTER TABLE `eav_entity_type`
  ADD PRIMARY KEY (`entity_type_id`),
  ADD KEY `IDX_EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`);

--
-- Индексы таблицы `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `IDX_EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  ADD KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Индексы таблицы `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD PRIMARY KEY (`element_id`),
  ADD UNIQUE KEY `UNQ_EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  ADD KEY `IDX_EAV_FORM_ELEMENT_TYPE_ID` (`type_id`),
  ADD KEY `IDX_EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  ADD KEY `IDX_EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Индексы таблицы `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD PRIMARY KEY (`fieldset_id`),
  ADD UNIQUE KEY `UNQ_EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`),
  ADD KEY `IDX_EAV_FORM_FIELDSET_TYPE_ID` (`type_id`);

--
-- Индексы таблицы `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD PRIMARY KEY (`fieldset_id`,`store_id`),
  ADD KEY `IDX_EAV_FORM_FIELDSET_LABEL_FIELDSET_ID` (`fieldset_id`),
  ADD KEY `IDX_EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`);

--
-- Индексы таблицы `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `UNQ_EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  ADD KEY `IDX_EAV_FORM_TYPE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD PRIMARY KEY (`type_id`,`entity_type_id`),
  ADD KEY `IDX_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`);

--
-- Индексы таблицы `gift_message`
--
ALTER TABLE `gift_message`
  ADD PRIMARY KEY (`gift_message_id`);

--
-- Индексы таблицы `importexport_importdata`
--
ALTER TABLE `importexport_importdata`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `index_event`
--
ALTER TABLE `index_event`
  ADD PRIMARY KEY (`event_id`),
  ADD UNIQUE KEY `UNQ_INDEX_EVENT_TYPE_ENTITY_ENTITY_PK` (`type`,`entity`,`entity_pk`);

--
-- Индексы таблицы `index_process`
--
ALTER TABLE `index_process`
  ADD PRIMARY KEY (`process_id`),
  ADD UNIQUE KEY `UNQ_INDEX_PROCESS_INDEXER_CODE` (`indexer_code`);

--
-- Индексы таблицы `index_process_event`
--
ALTER TABLE `index_process_event`
  ADD PRIMARY KEY (`process_id`,`event_id`),
  ADD KEY `IDX_INDEX_PROCESS_EVENT_EVENT_ID` (`event_id`);

--
-- Индексы таблицы `log_customer`
--
ALTER TABLE `log_customer`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `IDX_LOG_CUSTOMER_VISITOR_ID` (`visitor_id`);

--
-- Индексы таблицы `log_quote`
--
ALTER TABLE `log_quote`
  ADD PRIMARY KEY (`quote_id`);

--
-- Индексы таблицы `log_summary`
--
ALTER TABLE `log_summary`
  ADD PRIMARY KEY (`summary_id`);

--
-- Индексы таблицы `log_summary_type`
--
ALTER TABLE `log_summary_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Индексы таблицы `log_url`
--
ALTER TABLE `log_url`
  ADD KEY `IDX_LOG_URL_VISITOR_ID` (`visitor_id`),
  ADD KEY `url_id` (`url_id`);

--
-- Индексы таблицы `log_url_info`
--
ALTER TABLE `log_url_info`
  ADD PRIMARY KEY (`url_id`);

--
-- Индексы таблицы `log_visitor`
--
ALTER TABLE `log_visitor`
  ADD PRIMARY KEY (`visitor_id`);

--
-- Индексы таблицы `log_visitor_info`
--
ALTER TABLE `log_visitor_info`
  ADD PRIMARY KEY (`visitor_id`);

--
-- Индексы таблицы `log_visitor_online`
--
ALTER TABLE `log_visitor_online`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `IDX_LOG_VISITOR_ONLINE_VISITOR_TYPE` (`visitor_type`),
  ADD KEY `IDX_LOG_VISITOR_ONLINE_FIRST_VISIT_AT_LAST_VISIT_AT` (`first_visit_at`,`last_visit_at`),
  ADD KEY `IDX_LOG_VISITOR_ONLINE_CUSTOMER_ID` (`customer_id`);

--
-- Индексы таблицы `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD PRIMARY KEY (`problem_id`),
  ADD KEY `IDX_NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  ADD KEY `IDX_NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`);

--
-- Индексы таблицы `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `IDX_NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`);

--
-- Индексы таблицы `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD PRIMARY KEY (`queue_link_id`),
  ADD KEY `IDX_NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  ADD KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID` (`queue_id`),
  ADD KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`);

--
-- Индексы таблицы `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD PRIMARY KEY (`queue_id`,`store_id`),
  ADD KEY `IDX_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`);

--
-- Индексы таблицы `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD KEY `IDX_NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  ADD KEY `IDX_NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`);

--
-- Индексы таблицы `newsletter_template`
--
ALTER TABLE `newsletter_template`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `IDX_NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  ADD KEY `IDX_NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  ADD KEY `IDX_NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`);

--
-- Индексы таблицы `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_OAUTH_CONSUMER_KEY` (`key`),
  ADD UNIQUE KEY `UNQ_OAUTH_CONSUMER_SECRET` (`secret`),
  ADD KEY `IDX_OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  ADD KEY `IDX_OAUTH_CONSUMER_UPDATED_AT` (`updated_at`);

--
-- Индексы таблицы `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD UNIQUE KEY `UNQ_OAUTH_NONCE_NONCE` (`nonce`);

--
-- Индексы таблицы `oauth_token`
--
ALTER TABLE `oauth_token`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_OAUTH_TOKEN_TOKEN` (`token`),
  ADD KEY `IDX_OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  ADD KEY `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  ADD KEY `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`);

--
-- Индексы таблицы `paypal_cert`
--
ALTER TABLE `paypal_cert`
  ADD PRIMARY KEY (`cert_id`),
  ADD KEY `IDX_PAYPAL_CERT_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `paypal_payment_transaction`
--
ALTER TABLE `paypal_payment_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD UNIQUE KEY `UNQ_PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`);

--
-- Индексы таблицы `paypal_settlement_report`
--
ALTER TABLE `paypal_settlement_report`
  ADD PRIMARY KEY (`report_id`),
  ADD UNIQUE KEY `UNQ_PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`);

--
-- Индексы таблицы `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD PRIMARY KEY (`row_id`),
  ADD KEY `IDX_PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`);

--
-- Индексы таблицы `permission_block`
--
ALTER TABLE `permission_block`
  ADD PRIMARY KEY (`block_id`),
  ADD UNIQUE KEY `UNQ_PERMISSION_BLOCK_BLOCK_NAME` (`block_name`);

--
-- Индексы таблицы `permission_variable`
--
ALTER TABLE `permission_variable`
  ADD PRIMARY KEY (`variable_id`,`variable_name`),
  ADD UNIQUE KEY `UNQ_PERMISSION_VARIABLE_VARIABLE_NAME` (`variable_name`);

--
-- Индексы таблицы `persistent_session`
--
ALTER TABLE `persistent_session`
  ADD PRIMARY KEY (`persistent_id`),
  ADD UNIQUE KEY `IDX_PERSISTENT_SESSION_KEY` (`key`),
  ADD UNIQUE KEY `IDX_PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  ADD KEY `IDX_PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  ADD KEY `FK_PERSISTENT_SESSION_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`poll_id`),
  ADD KEY `IDX_POLL_STORE_ID` (`store_id`);

--
-- Индексы таблицы `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `IDX_POLL_ANSWER_POLL_ID` (`poll_id`);

--
-- Индексы таблицы `poll_store`
--
ALTER TABLE `poll_store`
  ADD PRIMARY KEY (`poll_id`,`store_id`),
  ADD KEY `IDX_POLL_STORE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `poll_vote`
--
ALTER TABLE `poll_vote`
  ADD PRIMARY KEY (`vote_id`),
  ADD KEY `IDX_POLL_VOTE_POLL_ANSWER_ID` (`poll_answer_id`);

--
-- Индексы таблицы `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD PRIMARY KEY (`alert_price_id`),
  ADD KEY `IDX_PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  ADD KEY `IDX_PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  ADD KEY `IDX_PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD PRIMARY KEY (`alert_stock_id`),
  ADD KEY `IDX_PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  ADD KEY `IDX_PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  ADD KEY `IDX_PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD UNIQUE KEY `UNQ_RATING_RATING_CODE` (`rating_code`),
  ADD KEY `IDX_RATING_ENTITY_ID` (`entity_id`);

--
-- Индексы таблицы `rating_entity`
--
ALTER TABLE `rating_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_RATING_ENTITY_ENTITY_CODE` (`entity_code`);

--
-- Индексы таблицы `rating_option`
--
ALTER TABLE `rating_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `IDX_RATING_OPTION_RATING_ID` (`rating_id`);

--
-- Индексы таблицы `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD PRIMARY KEY (`vote_id`),
  ADD KEY `IDX_RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  ADD KEY `FK_RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`);

--
-- Индексы таблицы `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD PRIMARY KEY (`primary_id`),
  ADD KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  ADD KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`);

--
-- Индексы таблицы `rating_store`
--
ALTER TABLE `rating_store`
  ADD PRIMARY KEY (`rating_id`,`store_id`),
  ADD KEY `IDX_RATING_STORE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `rating_title`
--
ALTER TABLE `rating_title`
  ADD PRIMARY KEY (`rating_id`,`store_id`),
  ADD KEY `IDX_RATING_TITLE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD PRIMARY KEY (`index_id`),
  ADD UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  ADD KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  ADD KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `report_event`
--
ALTER TABLE `report_event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `IDX_REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  ADD KEY `IDX_REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  ADD KEY `IDX_REPORT_EVENT_OBJECT_ID` (`object_id`),
  ADD KEY `IDX_REPORT_EVENT_SUBTYPE` (`subtype`),
  ADD KEY `IDX_REPORT_EVENT_STORE_ID` (`store_id`);

--
-- Индексы таблицы `report_event_types`
--
ALTER TABLE `report_event_types`
  ADD PRIMARY KEY (`event_type_id`);

--
-- Индексы таблицы `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  ADD KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  ADD KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  ADD KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD PRIMARY KEY (`index_id`),
  ADD UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  ADD KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  ADD KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `IDX_REVIEW_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_REVIEW_STATUS_ID` (`status_id`),
  ADD KEY `IDX_REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`);

--
-- Индексы таблицы `review_detail`
--
ALTER TABLE `review_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `IDX_REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  ADD KEY `IDX_REVIEW_DETAIL_STORE_ID` (`store_id`),
  ADD KEY `IDX_REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`);

--
-- Индексы таблицы `review_entity`
--
ALTER TABLE `review_entity`
  ADD PRIMARY KEY (`entity_id`);

--
-- Индексы таблицы `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD PRIMARY KEY (`primary_id`),
  ADD KEY `IDX_REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`);

--
-- Индексы таблицы `review_status`
--
ALTER TABLE `review_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Индексы таблицы `review_store`
--
ALTER TABLE `review_store`
  ADD PRIMARY KEY (`review_id`,`store_id`),
  ADD KEY `IDX_REVIEW_STORE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `salesrule`
--
ALTER TABLE `salesrule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `IDX_SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`);

--
-- Индексы таблицы `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `UNQ_SALESRULE_COUPON_CODE` (`code`),
  ADD UNIQUE KEY `UNQ_SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  ADD KEY `IDX_SALESRULE_COUPON_RULE_ID` (`rule_id`);

--
-- Индексы таблицы `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD PRIMARY KEY (`coupon_id`,`customer_id`),
  ADD KEY `IDX_SALESRULE_COUPON_USAGE_COUPON_ID` (`coupon_id`),
  ADD KEY `IDX_SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`);

--
-- Индексы таблицы `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD PRIMARY KEY (`rule_customer_id`),
  ADD KEY `IDX_SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  ADD KEY `IDX_SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`);

--
-- Индексы таблицы `salesrule_customer_group`
--
ALTER TABLE `salesrule_customer_group`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`),
  ADD KEY `IDX_SALESRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  ADD KEY `IDX_SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Индексы таблицы `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `UNQ_SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  ADD KEY `IDX_SALESRULE_LABEL_STORE_ID` (`store_id`),
  ADD KEY `IDX_SALESRULE_LABEL_RULE_ID` (`rule_id`);

--
-- Индексы таблицы `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
  ADD PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  ADD KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  ADD KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Индексы таблицы `salesrule_website`
--
ALTER TABLE `salesrule_website`
  ADD PRIMARY KEY (`rule_id`,`website_id`),
  ADD KEY `IDX_SALESRULE_WEBSITE_RULE_ID` (`rule_id`),
  ADD KEY `IDX_SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Индексы таблицы `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  ADD KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  ADD KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  ADD KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`);

--
-- Индексы таблицы `sales_billing_agreement`
--
ALTER TABLE `sales_billing_agreement`
  ADD PRIMARY KEY (`agreement_id`),
  ADD KEY `IDX_SALES_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  ADD KEY `IDX_SALES_BILLING_AGREEMENT_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sales_billing_agreement_order`
--
ALTER TABLE `sales_billing_agreement_order`
  ADD PRIMARY KEY (`agreement_id`,`order_id`),
  ADD KEY `IDX_SALES_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`);

--
-- Индексы таблицы `sales_flat_creditmemo`
--
ALTER TABLE `sales_flat_creditmemo`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_INCREMENT_ID` (`increment_id`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_STORE_ID` (`store_id`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_ORDER_ID` (`order_id`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_STATE` (`state`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_CREATED_AT` (`created_at`);

--
-- Индексы таблицы `sales_flat_creditmemo_comment`
--
ALTER TABLE `sales_flat_creditmemo_comment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `sales_flat_creditmemo_grid`
--
ALTER TABLE `sales_flat_creditmemo_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_GRID_INCREMENT_ID` (`increment_id`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_GRAND_TOTAL` (`grand_total`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREDITMEMO_STATUS` (`creditmemo_status`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STATE` (`state`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`);

--
-- Индексы таблицы `sales_flat_creditmemo_item`
--
ALTER TABLE `sales_flat_creditmemo_item`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_SALES_FLAT_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `sales_flat_invoice`
--
ALTER TABLE `sales_flat_invoice`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_INCREMENT_ID` (`increment_id`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_STORE_ID` (`store_id`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_GRAND_TOTAL` (`grand_total`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_ORDER_ID` (`order_id`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_STATE` (`state`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_CREATED_AT` (`created_at`);

--
-- Индексы таблицы `sales_flat_invoice_comment`
--
ALTER TABLE `sales_flat_invoice_comment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_COMMENT_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `sales_flat_invoice_grid`
--
ALTER TABLE `sales_flat_invoice_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_GRID_INCREMENT_ID` (`increment_id`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_STORE_ID` (`store_id`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_ID` (`order_id`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_STATE` (`state`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_CREATED_AT` (`created_at`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_GRID_BILLING_NAME` (`billing_name`);

--
-- Индексы таблицы `sales_flat_invoice_item`
--
ALTER TABLE `sales_flat_invoice_item`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_SALES_FLAT_INVOICE_ITEM_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `sales_flat_order`
--
ALTER TABLE `sales_flat_order`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_SALES_FLAT_ORDER_INCREMENT_ID` (`increment_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_STATUS` (`status`),
  ADD KEY `IDX_SALES_FLAT_ORDER_STATE` (`state`),
  ADD KEY `IDX_SALES_FLAT_ORDER_STORE_ID` (`store_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_CREATED_AT` (`created_at`),
  ADD KEY `IDX_SALES_FLAT_ORDER_CUSTOMER_ID` (`customer_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_QUOTE_ID` (`quote_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_UPDATED_AT` (`updated_at`);

--
-- Индексы таблицы `sales_flat_order_address`
--
ALTER TABLE `sales_flat_order_address`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_ADDRESS_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `sales_flat_order_grid`
--
ALTER TABLE `sales_flat_order_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_SALES_FLAT_ORDER_GRID_INCREMENT_ID` (`increment_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_GRID_STATUS` (`status`),
  ADD KEY `IDX_SALES_FLAT_ORDER_GRID_STORE_ID` (`store_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  ADD KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  ADD KEY `IDX_SALES_FLAT_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  ADD KEY `IDX_SALES_FLAT_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  ADD KEY `IDX_SALES_FLAT_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  ADD KEY `IDX_SALES_FLAT_ORDER_GRID_BILLING_NAME` (`billing_name`),
  ADD KEY `IDX_SALES_FLAT_ORDER_GRID_CREATED_AT` (`created_at`),
  ADD KEY `IDX_SALES_FLAT_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_GRID_UPDATED_AT` (`updated_at`);

--
-- Индексы таблицы `sales_flat_order_item`
--
ALTER TABLE `sales_flat_order_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_ITEM_ORDER_ID` (`order_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_ITEM_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sales_flat_order_payment`
--
ALTER TABLE `sales_flat_order_payment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_PAYMENT_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `sales_flat_order_status_history`
--
ALTER TABLE `sales_flat_order_status_history`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  ADD KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`);

--
-- Индексы таблицы `sales_flat_quote`
--
ALTER TABLE `sales_flat_quote`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_SALES_FLAT_QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  ADD KEY `IDX_SALES_FLAT_QUOTE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sales_flat_quote_address`
--
ALTER TABLE `sales_flat_quote_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID` (`quote_id`);

--
-- Индексы таблицы `sales_flat_quote_address_item`
--
ALTER TABLE `sales_flat_quote_address_item`
  ADD PRIMARY KEY (`address_item_id`),
  ADD KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  ADD KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  ADD KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`);

--
-- Индексы таблицы `sales_flat_quote_item`
--
ALTER TABLE `sales_flat_quote_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `IDX_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  ADD KEY `IDX_SALES_FLAT_QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `IDX_SALES_FLAT_QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  ADD KEY `IDX_SALES_FLAT_QUOTE_ITEM_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sales_flat_quote_item_option`
--
ALTER TABLE `sales_flat_quote_item_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `IDX_SALES_FLAT_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`);

--
-- Индексы таблицы `sales_flat_quote_payment`
--
ALTER TABLE `sales_flat_quote_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `IDX_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID` (`quote_id`);

--
-- Индексы таблицы `sales_flat_quote_shipping_rate`
--
ALTER TABLE `sales_flat_quote_shipping_rate`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `IDX_SALES_FLAT_QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`);

--
-- Индексы таблицы `sales_flat_shipment`
--
ALTER TABLE `sales_flat_shipment`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_INCREMENT_ID` (`increment_id`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_STORE_ID` (`store_id`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_TOTAL_QTY` (`total_qty`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_ORDER_ID` (`order_id`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_CREATED_AT` (`created_at`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_UPDATED_AT` (`updated_at`);

--
-- Индексы таблицы `sales_flat_shipment_comment`
--
ALTER TABLE `sales_flat_shipment_comment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `sales_flat_shipment_grid`
--
ALTER TABLE `sales_flat_shipment_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_GRID_INCREMENT_ID` (`increment_id`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_STORE_ID` (`store_id`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_ID` (`order_id`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`);

--
-- Индексы таблицы `sales_flat_shipment_item`
--
ALTER TABLE `sales_flat_shipment_item`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_ITEM_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `sales_flat_shipment_track`
--
ALTER TABLE `sales_flat_shipment_track`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  ADD KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_CREATED_AT` (`created_at`);

--
-- Индексы таблицы `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `IDX_SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `IDX_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `IDX_SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `IDX_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sales_order_status`
--
ALTER TABLE `sales_order_status`
  ADD PRIMARY KEY (`status`);

--
-- Индексы таблицы `sales_order_status_label`
--
ALTER TABLE `sales_order_status_label`
  ADD PRIMARY KEY (`status`,`store_id`),
  ADD KEY `IDX_SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sales_order_status_state`
--
ALTER TABLE `sales_order_status_state`
  ADD PRIMARY KEY (`status`,`state`);

--
-- Индексы таблицы `sales_order_tax`
--
ALTER TABLE `sales_order_tax`
  ADD PRIMARY KEY (`tax_id`),
  ADD KEY `IDX_SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`);

--
-- Индексы таблицы `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  ADD PRIMARY KEY (`tax_item_id`),
  ADD UNIQUE KEY `UNQ_SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  ADD KEY `IDX_SALES_ORDER_TAX_ITEM_TAX_ID` (`tax_id`),
  ADD KEY `IDX_SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`);

--
-- Индексы таблицы `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD UNIQUE KEY `UNQ_SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  ADD KEY `IDX_SALES_PAYMENT_TRANSACTION_ORDER_ID` (`order_id`),
  ADD KEY `IDX_SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  ADD KEY `IDX_SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`);

--
-- Индексы таблицы `sales_recurring_profile`
--
ALTER TABLE `sales_recurring_profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_INTERNAL_REFERENCE_ID` (`internal_reference_id`),
  ADD KEY `IDX_SALES_RECURRING_PROFILE_CUSTOMER_ID` (`customer_id`),
  ADD KEY `IDX_SALES_RECURRING_PROFILE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sales_recurring_profile_order`
--
ALTER TABLE `sales_recurring_profile_order`
  ADD PRIMARY KEY (`link_id`),
  ADD UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_ORDER_PROFILE_ID_ORDER_ID` (`profile_id`,`order_id`),
  ADD KEY `IDX_SALES_RECURRING_PROFILE_ORDER_ORDER_ID` (`order_id`);

--
-- Индексы таблицы `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `IDX_SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `IDX_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  ADD KEY `IDX_SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  ADD KEY `IDX_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Индексы таблицы `sendfriend_log`
--
ALTER TABLE `sendfriend_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `IDX_SENDFRIEND_LOG_IP` (`ip`),
  ADD KEY `IDX_SENDFRIEND_LOG_TIME` (`time`);

--
-- Индексы таблицы `shipping_tablerate`
--
ALTER TABLE `shipping_tablerate`
  ADD PRIMARY KEY (`pk`),
  ADD UNIQUE KEY `D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`);

--
-- Индексы таблицы `sitemap`
--
ALTER TABLE `sitemap`
  ADD PRIMARY KEY (`sitemap_id`),
  ADD KEY `IDX_SITEMAP_STORE_ID` (`store_id`);

--
-- Индексы таблицы `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`),
  ADD KEY `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`first_customer_id`),
  ADD KEY `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` (`first_store_id`);

--
-- Индексы таблицы `tag_properties`
--
ALTER TABLE `tag_properties`
  ADD PRIMARY KEY (`tag_id`,`store_id`),
  ADD KEY `IDX_TAG_PROPERTIES_STORE_ID` (`store_id`);

--
-- Индексы таблицы `tag_relation`
--
ALTER TABLE `tag_relation`
  ADD PRIMARY KEY (`tag_relation_id`),
  ADD UNIQUE KEY `UNQ_TAG_RELATION_TAG_ID_CUSTOMER_ID_PRODUCT_ID_STORE_ID` (`tag_id`,`customer_id`,`product_id`,`store_id`),
  ADD KEY `IDX_TAG_RELATION_PRODUCT_ID` (`product_id`),
  ADD KEY `IDX_TAG_RELATION_TAG_ID` (`tag_id`),
  ADD KEY `IDX_TAG_RELATION_CUSTOMER_ID` (`customer_id`),
  ADD KEY `IDX_TAG_RELATION_STORE_ID` (`store_id`);

--
-- Индексы таблицы `tag_summary`
--
ALTER TABLE `tag_summary`
  ADD PRIMARY KEY (`tag_id`,`store_id`),
  ADD KEY `IDX_TAG_SUMMARY_STORE_ID` (`store_id`),
  ADD KEY `IDX_TAG_SUMMARY_TAG_ID` (`tag_id`);

--
-- Индексы таблицы `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD PRIMARY KEY (`tax_calculation_id`),
  ADD KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  ADD KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  ADD KEY `IDX_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  ADD KEY `IDX_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  ADD KEY `IDX_TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`);

--
-- Индексы таблицы `tax_calculation_rate`
--
ALTER TABLE `tax_calculation_rate`
  ADD PRIMARY KEY (`tax_calculation_rate_id`),
  ADD KEY `IDX_TAX_CALC_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  ADD KEY `IDX_TAX_CALCULATION_RATE_CODE` (`code`),
  ADD KEY `CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`);

--
-- Индексы таблицы `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD PRIMARY KEY (`tax_calculation_rate_title_id`),
  ADD KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  ADD KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  ADD KEY `IDX_TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`);

--
-- Индексы таблицы `tax_calculation_rule`
--
ALTER TABLE `tax_calculation_rule`
  ADD PRIMARY KEY (`tax_calculation_rule_id`),
  ADD KEY `IDX_TAX_CALC_RULE_PRIORITY_POSITION_TAX_CALC_RULE_ID` (`priority`,`position`,`tax_calculation_rule_id`),
  ADD KEY `IDX_TAX_CALCULATION_RULE_CODE` (`code`);

--
-- Индексы таблицы `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Индексы таблицы `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FCA5E2C02689EB2641B30580D7AACF12` (`period`,`store_id`,`code`,`percent`,`order_status`),
  ADD KEY `IDX_TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`);

--
-- Индексы таблицы `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `DB0AF14011199AA6CD31D5078B90AA8D` (`period`,`store_id`,`code`,`percent`,`order_status`),
  ADD KEY `IDX_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`);

--
-- Индексы таблицы `weee_discount`
--
ALTER TABLE `weee_discount`
  ADD KEY `IDX_WEEE_DISCOUNT_WEBSITE_ID` (`website_id`),
  ADD KEY `IDX_WEEE_DISCOUNT_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_WEEE_DISCOUNT_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Индексы таблицы `weee_tax`
--
ALTER TABLE `weee_tax`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `IDX_WEEE_TAX_WEBSITE_ID` (`website_id`),
  ADD KEY `IDX_WEEE_TAX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_WEEE_TAX_COUNTRY` (`country`),
  ADD KEY `IDX_WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`);

--
-- Индексы таблицы `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`widget_id`),
  ADD KEY `IDX_WIDGET_WIDGET_CODE` (`widget_code`);

--
-- Индексы таблицы `widget_instance`
--
ALTER TABLE `widget_instance`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `IDX_WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`);

--
-- Индексы таблицы `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD UNIQUE KEY `UNQ_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  ADD KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`),
  ADD KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID` (`layout_update_id`);

--
-- Индексы таблицы `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD UNIQUE KEY `UNQ_WISHLIST_CUSTOMER_ID` (`customer_id`),
  ADD KEY `IDX_WISHLIST_SHARED` (`shared`);

--
-- Индексы таблицы `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD PRIMARY KEY (`wishlist_item_id`),
  ADD KEY `IDX_WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  ADD KEY `IDX_WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `IDX_WISHLIST_ITEM_STORE_ID` (`store_id`);

--
-- Индексы таблицы `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `adminnotification_inbox`
--
ALTER TABLE `adminnotification_inbox`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Notification id', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `admin_assert`
--
ALTER TABLE `admin_assert`
  MODIFY `assert_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Assert ID';

--
-- AUTO_INCREMENT для таблицы `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Role ID', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `admin_rule`
--
ALTER TABLE `admin_rule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'User ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `api2_acl_attribute`
--
ALTER TABLE `api2_acl_attribute`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID';

--
-- AUTO_INCREMENT для таблицы `api2_acl_role`
--
ALTER TABLE `api2_acl_role`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `api2_acl_rule`
--
ALTER TABLE `api2_acl_rule`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID';

--
-- AUTO_INCREMENT для таблицы `api_assert`
--
ALTER TABLE `api_assert`
  MODIFY `assert_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Assert id';

--
-- AUTO_INCREMENT для таблицы `api_role`
--
ALTER TABLE `api_role`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Role id';

--
-- AUTO_INCREMENT для таблицы `api_rule`
--
ALTER TABLE `api_rule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Api rule Id';

--
-- AUTO_INCREMENT для таблицы `api_user`
--
ALTER TABLE `api_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'User id';

--
-- AUTO_INCREMENT для таблицы `cataloginventory_stock`
--
ALTER TABLE `cataloginventory_stock`
  MODIFY `stock_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Stock Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `catalogrule`
--
ALTER TABLE `catalogrule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Id';

--
-- AUTO_INCREMENT для таблицы `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  MODIFY `rule_product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id';

--
-- AUTO_INCREMENT для таблицы `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  MODIFY `rule_product_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId';

--
-- AUTO_INCREMENT для таблицы `catalogsearch_fulltext`
--
ALTER TABLE `catalogsearch_fulltext`
  MODIFY `fulltext_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `catalogsearch_query`
--
ALTER TABLE `catalogsearch_query`
  MODIFY `query_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Query ID';

--
-- AUTO_INCREMENT для таблицы `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  MODIFY `catalog_compare_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id';

--
-- AUTO_INCREMENT для таблицы `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  MODIFY `selection_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Selection Id';

--
-- AUTO_INCREMENT для таблицы `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT для таблицы `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT для таблицы `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_entity_group_price`
--
ALTER TABLE `catalog_product_entity_group_price`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT для таблицы `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT для таблицы `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=560;

--
-- AUTO_INCREMENT для таблицы `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  MODIFY `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_link_type`
--
ALTER TABLE `catalog_product_link_type`
  MODIFY `link_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  MODIFY `option_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  MODIFY `option_title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  MODIFY `option_type_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  MODIFY `option_type_title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  MODIFY `option_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  MODIFY `product_super_attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `catalog_product_super_attribute_pricing`
--
ALTER TABLE `catalog_product_super_attribute_pricing`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';

--
-- AUTO_INCREMENT для таблицы `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID';

--
-- AUTO_INCREMENT для таблицы `checkout_agreement`
--
ALTER TABLE `checkout_agreement`
  MODIFY `agreement_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id';

--
-- AUTO_INCREMENT для таблицы `cms_block`
--
ALTER TABLE `cms_block`
  MODIFY `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `cms_page`
--
ALTER TABLE `cms_page`
  MODIFY `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `core_config_data`
--
ALTER TABLE `core_config_data`
  MODIFY `config_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Config Id', AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT для таблицы `core_email_queue`
--
ALTER TABLE `core_email_queue`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Message Id';

--
-- AUTO_INCREMENT для таблицы `core_email_queue_recipients`
--
ALTER TABLE `core_email_queue_recipients`
  MODIFY `recipient_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Recipient Id';

--
-- AUTO_INCREMENT для таблицы `core_email_template`
--
ALTER TABLE `core_email_template`
  MODIFY `template_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Template Id';

--
-- AUTO_INCREMENT для таблицы `core_flag`
--
ALTER TABLE `core_flag`
  MODIFY `flag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Flag Id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `core_layout_link`
--
ALTER TABLE `core_layout_link`
  MODIFY `layout_link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link Id';

--
-- AUTO_INCREMENT для таблицы `core_layout_update`
--
ALTER TABLE `core_layout_update`
  MODIFY `layout_update_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id';

--
-- AUTO_INCREMENT для таблицы `core_store`
--
ALTER TABLE `core_store`
  MODIFY `store_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Store Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `core_store_group`
--
ALTER TABLE `core_store_group`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Group Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `core_translate`
--
ALTER TABLE `core_translate`
  MODIFY `key_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation';

--
-- AUTO_INCREMENT для таблицы `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
  MODIFY `url_rewrite_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id', AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT для таблицы `core_variable`
--
ALTER TABLE `core_variable`
  MODIFY `variable_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Variable Id';

--
-- AUTO_INCREMENT для таблицы `core_variable_value`
--
ALTER TABLE `core_variable_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id';

--
-- AUTO_INCREMENT для таблицы `core_website`
--
ALTER TABLE `core_website`
  MODIFY `website_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Website Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `coupon_aggregated`
--
ALTER TABLE `coupon_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `coupon_aggregated_order`
--
ALTER TABLE `coupon_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `coupon_aggregated_updated`
--
ALTER TABLE `coupon_aggregated_updated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `cron_schedule`
--
ALTER TABLE `cron_schedule`
  MODIFY `schedule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id';

--
-- AUTO_INCREMENT для таблицы `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `customer_entity`
--
ALTER TABLE `customer_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `customer_flowpassword`
--
ALTER TABLE `customer_flowpassword`
  MODIFY `flowpassword_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Flow password Id';

--
-- AUTO_INCREMENT для таблицы `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `customer_group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `dataflow_batch`
--
ALTER TABLE `dataflow_batch`
  MODIFY `batch_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Batch Id';

--
-- AUTO_INCREMENT для таблицы `dataflow_batch_export`
--
ALTER TABLE `dataflow_batch_export`
  MODIFY `batch_export_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Batch Export Id';

--
-- AUTO_INCREMENT для таблицы `dataflow_batch_import`
--
ALTER TABLE `dataflow_batch_import`
  MODIFY `batch_import_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Batch Import Id';

--
-- AUTO_INCREMENT для таблицы `dataflow_import_data`
--
ALTER TABLE `dataflow_import_data`
  MODIFY `import_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Import Id';

--
-- AUTO_INCREMENT для таблицы `dataflow_profile`
--
ALTER TABLE `dataflow_profile`
  MODIFY `profile_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Profile Id', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `dataflow_profile_history`
--
ALTER TABLE `dataflow_profile_history`
  MODIFY `history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'History Id', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `dataflow_session`
--
ALTER TABLE `dataflow_session`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Session Id';

--
-- AUTO_INCREMENT для таблицы `design_change`
--
ALTER TABLE `design_change`
  MODIFY `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id';

--
-- AUTO_INCREMENT для таблицы `directory_country_format`
--
ALTER TABLE `directory_country_format`
  MODIFY `country_format_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id';

--
-- AUTO_INCREMENT для таблицы `directory_country_region`
--
ALTER TABLE `directory_country_region`
  MODIFY `region_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Region Id', AUTO_INCREMENT=485;

--
-- AUTO_INCREMENT для таблицы `downloadable_link`
--
ALTER TABLE `downloadable_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID';

--
-- AUTO_INCREMENT для таблицы `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  MODIFY `price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Price ID';

--
-- AUTO_INCREMENT для таблицы `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  MODIFY `purchased_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID';

--
-- AUTO_INCREMENT для таблицы `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item ID';

--
-- AUTO_INCREMENT для таблицы `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  MODIFY `title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Title ID';

--
-- AUTO_INCREMENT для таблицы `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  MODIFY `sample_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Sample ID';

--
-- AUTO_INCREMENT для таблицы `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  MODIFY `title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Title ID';

--
-- AUTO_INCREMENT для таблицы `eav_attribute`
--
ALTER TABLE `eav_attribute`
  MODIFY `attribute_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id', AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT для таблицы `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  MODIFY `attribute_group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id', AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  MODIFY `attribute_label_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value Id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  MODIFY `attribute_set_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `eav_entity`
--
ALTER TABLE `eav_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  MODIFY `entity_attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id', AUTO_INCREMENT=580;

--
-- AUTO_INCREMENT для таблицы `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  MODIFY `entity_store_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id';

--
-- AUTO_INCREMENT для таблицы `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `eav_entity_type`
--
ALTER TABLE `eav_entity_type`
  MODIFY `entity_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `eav_form_element`
--
ALTER TABLE `eav_form_element`
  MODIFY `element_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Element Id', AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  MODIFY `fieldset_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `eav_form_type`
--
ALTER TABLE `eav_form_type`
  MODIFY `type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Type Id', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `gift_message`
--
ALTER TABLE `gift_message`
  MODIFY `gift_message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id';

--
-- AUTO_INCREMENT для таблицы `importexport_importdata`
--
ALTER TABLE `importexport_importdata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `index_event`
--
ALTER TABLE `index_event`
  MODIFY `event_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Event Id', AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблицы `index_process`
--
ALTER TABLE `index_process`
  MODIFY `process_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Process Id', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `log_customer`
--
ALTER TABLE `log_customer`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Log ID';

--
-- AUTO_INCREMENT для таблицы `log_summary`
--
ALTER TABLE `log_summary`
  MODIFY `summary_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Summary ID';

--
-- AUTO_INCREMENT для таблицы `log_summary_type`
--
ALTER TABLE `log_summary_type`
  MODIFY `type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Type ID', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `log_url_info`
--
ALTER TABLE `log_url_info`
  MODIFY `url_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'URL ID';

--
-- AUTO_INCREMENT для таблицы `log_visitor`
--
ALTER TABLE `log_visitor`
  MODIFY `visitor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `log_visitor_online`
--
ALTER TABLE `log_visitor_online`
  MODIFY `visitor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID';

--
-- AUTO_INCREMENT для таблицы `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  MODIFY `problem_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Problem Id';

--
-- AUTO_INCREMENT для таблицы `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  MODIFY `queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Queue Id';

--
-- AUTO_INCREMENT для таблицы `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  MODIFY `queue_link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id';

--
-- AUTO_INCREMENT для таблицы `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `subscriber_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id';

--
-- AUTO_INCREMENT для таблицы `newsletter_template`
--
ALTER TABLE `newsletter_template`
  MODIFY `template_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Template Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `oauth_token`
--
ALTER TABLE `oauth_token`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID';

--
-- AUTO_INCREMENT для таблицы `paypal_cert`
--
ALTER TABLE `paypal_cert`
  MODIFY `cert_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Cert Id';

--
-- AUTO_INCREMENT для таблицы `paypal_payment_transaction`
--
ALTER TABLE `paypal_payment_transaction`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `paypal_settlement_report`
--
ALTER TABLE `paypal_settlement_report`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Report Id';

--
-- AUTO_INCREMENT для таблицы `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  MODIFY `row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Row Id';

--
-- AUTO_INCREMENT для таблицы `permission_block`
--
ALTER TABLE `permission_block`
  MODIFY `block_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Block ID', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `permission_variable`
--
ALTER TABLE `permission_variable`
  MODIFY `variable_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Variable ID', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `persistent_session`
--
ALTER TABLE `persistent_session`
  MODIFY `persistent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Session id';

--
-- AUTO_INCREMENT для таблицы `poll`
--
ALTER TABLE `poll`
  MODIFY `poll_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Poll Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `poll_answer`
--
ALTER TABLE `poll_answer`
  MODIFY `answer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Answer Id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `poll_vote`
--
ALTER TABLE `poll_vote`
  MODIFY `vote_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Vote Id';

--
-- AUTO_INCREMENT для таблицы `product_alert_price`
--
ALTER TABLE `product_alert_price`
  MODIFY `alert_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id';

--
-- AUTO_INCREMENT для таблицы `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  MODIFY `alert_stock_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id';

--
-- AUTO_INCREMENT для таблицы `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rating Id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `rating_entity`
--
ALTER TABLE `rating_entity`
  MODIFY `entity_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `rating_option`
--
ALTER TABLE `rating_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  MODIFY `vote_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Vote id';

--
-- AUTO_INCREMENT для таблицы `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  MODIFY `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id';

--
-- AUTO_INCREMENT для таблицы `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  MODIFY `index_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Index Id';

--
-- AUTO_INCREMENT для таблицы `report_event`
--
ALTER TABLE `report_event`
  MODIFY `event_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Event Id', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `report_event_types`
--
ALTER TABLE `report_event_types`
  MODIFY `event_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  MODIFY `index_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Index Id', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `review`
--
ALTER TABLE `review`
  MODIFY `review_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review id';

--
-- AUTO_INCREMENT для таблицы `review_detail`
--
ALTER TABLE `review_detail`
  MODIFY `detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review detail id';

--
-- AUTO_INCREMENT для таблицы `review_entity`
--
ALTER TABLE `review_entity`
  MODIFY `entity_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review entity id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  MODIFY `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id';

--
-- AUTO_INCREMENT для таблицы `review_status`
--
ALTER TABLE `review_status`
  MODIFY `status_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Status id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `salesrule`
--
ALTER TABLE `salesrule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Id';

--
-- AUTO_INCREMENT для таблицы `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  MODIFY `coupon_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id';

--
-- AUTO_INCREMENT для таблицы `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  MODIFY `rule_customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id';

--
-- AUTO_INCREMENT для таблицы `salesrule_label`
--
ALTER TABLE `salesrule_label`
  MODIFY `label_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Label Id';

--
-- AUTO_INCREMENT для таблицы `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `sales_billing_agreement`
--
ALTER TABLE `sales_billing_agreement`
  MODIFY `agreement_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_creditmemo`
--
ALTER TABLE `sales_flat_creditmemo`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_creditmemo_comment`
--
ALTER TABLE `sales_flat_creditmemo_comment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_creditmemo_item`
--
ALTER TABLE `sales_flat_creditmemo_item`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_invoice`
--
ALTER TABLE `sales_flat_invoice`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_invoice_comment`
--
ALTER TABLE `sales_flat_invoice_comment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_invoice_item`
--
ALTER TABLE `sales_flat_invoice_item`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_order`
--
ALTER TABLE `sales_flat_order`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_order_address`
--
ALTER TABLE `sales_flat_order_address`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_order_item`
--
ALTER TABLE `sales_flat_order_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_order_payment`
--
ALTER TABLE `sales_flat_order_payment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_order_status_history`
--
ALTER TABLE `sales_flat_order_status_history`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_quote`
--
ALTER TABLE `sales_flat_quote`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `sales_flat_quote_address`
--
ALTER TABLE `sales_flat_quote_address`
  MODIFY `address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Address Id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sales_flat_quote_address_item`
--
ALTER TABLE `sales_flat_quote_address_item`
  MODIFY `address_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_quote_item`
--
ALTER TABLE `sales_flat_quote_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `sales_flat_quote_item_option`
--
ALTER TABLE `sales_flat_quote_item_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `sales_flat_quote_payment`
--
ALTER TABLE `sales_flat_quote_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Payment Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_quote_shipping_rate`
--
ALTER TABLE `sales_flat_quote_shipping_rate`
  MODIFY `rate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rate Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_shipment`
--
ALTER TABLE `sales_flat_shipment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_shipment_comment`
--
ALTER TABLE `sales_flat_shipment_comment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_shipment_item`
--
ALTER TABLE `sales_flat_shipment_item`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_flat_shipment_track`
--
ALTER TABLE `sales_flat_shipment_track`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT для таблицы `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `sales_order_tax`
--
ALTER TABLE `sales_order_tax`
  MODIFY `tax_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Tax Id';

--
-- AUTO_INCREMENT для таблицы `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  MODIFY `tax_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id';

--
-- AUTO_INCREMENT для таблицы `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id';

--
-- AUTO_INCREMENT для таблицы `sales_recurring_profile`
--
ALTER TABLE `sales_recurring_profile`
  MODIFY `profile_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Profile Id';

--
-- AUTO_INCREMENT для таблицы `sales_recurring_profile_order`
--
ALTER TABLE `sales_recurring_profile_order`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link Id';

--
-- AUTO_INCREMENT для таблицы `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `sendfriend_log`
--
ALTER TABLE `sendfriend_log`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Log ID';

--
-- AUTO_INCREMENT для таблицы `shipping_tablerate`
--
ALTER TABLE `shipping_tablerate`
  MODIFY `pk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT для таблицы `sitemap`
--
ALTER TABLE `sitemap`
  MODIFY `sitemap_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id';

--
-- AUTO_INCREMENT для таблицы `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Tag Id';

--
-- AUTO_INCREMENT для таблицы `tag_relation`
--
ALTER TABLE `tag_relation`
  MODIFY `tag_relation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Tag Relation Id';

--
-- AUTO_INCREMENT для таблицы `tax_calculation`
--
ALTER TABLE `tax_calculation`
  MODIFY `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tax_calculation_rate`
--
ALTER TABLE `tax_calculation_rate`
  MODIFY `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  MODIFY `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id';

--
-- AUTO_INCREMENT для таблицы `tax_calculation_rule`
--
ALTER TABLE `tax_calculation_rule`
  MODIFY `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT для таблицы `weee_tax`
--
ALTER TABLE `weee_tax`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT для таблицы `widget`
--
ALTER TABLE `widget`
  MODIFY `widget_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Widget Id';

--
-- AUTO_INCREMENT для таблицы `widget_instance`
--
ALTER TABLE `widget_instance`
  MODIFY `instance_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Instance Id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Page Id';

--
-- AUTO_INCREMENT для таблицы `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID';

--
-- AUTO_INCREMENT для таблицы `wishlist_item`
--
ALTER TABLE `wishlist_item`
  MODIFY `wishlist_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID';

--
-- AUTO_INCREMENT для таблицы `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id';

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `admin_rule`
--
ALTER TABLE `admin_rule`
  ADD CONSTRAINT `FK_ADMIN_RULE_ROLE_ID_ADMIN_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `api2_acl_rule`
--
ALTER TABLE `api2_acl_rule`
  ADD CONSTRAINT `FK_API2_ACL_RULE_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `api2_acl_user`
--
ALTER TABLE `api2_acl_user`
  ADD CONSTRAINT `FK_API2_ACL_USER_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `api_rule`
--
ALTER TABLE `api_rule`
  ADD CONSTRAINT `FK_API_RULE_ROLE_ID_API_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `api_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `api_session`
--
ALTER TABLE `api_session`
  ADD CONSTRAINT `FK_API_SESSION_USER_ID_API_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `FK_CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cataloginventory_stock_status`
--
ALTER TABLE `cataloginventory_stock_status`
  ADD CONSTRAINT `FK_CATINV_STOCK_STS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATINV_STOCK_STS_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATINV_STOCK_STS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
  ADD CONSTRAINT `FK_CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_GROUP_WS_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_PRICE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
  ADD CONSTRAINT `FK_CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalogsearch_query`
--
ALTER TABLE `catalogsearch_query`
  ADD CONSTRAINT `FK_CATALOGSEARCH_QUERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalogsearch_result`
--
ALTER TABLE `catalogsearch_result`
  ADD CONSTRAINT `FK_CATALOGSEARCH_RESULT_QUERY_ID_CATALOGSEARCH_QUERY_QUERY_ID` FOREIGN KEY (`query_id`) REFERENCES `catalogsearch_query` (`query_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATSRCH_RESULT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_category_flat_store_1`
--
ALTER TABLE `catalog_category_flat_store_1`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_FLAT_STORE_1_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_category_product_index`
--
ALTER TABLE `catalog_category_product_index`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_IDX_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CMP_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `FK_CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_enabled_index`
--
ALTER TABLE `catalog_product_enabled_index`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENABLED_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_entity_group_price`
--
ALTER TABLE `catalog_product_entity_group_price`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GROUP_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GROUP_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DF909D22C11B60B1E5E3EE64AB220ECE` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD CONSTRAINT `FK_6E08D719F0501DD1D8E6D4EFF2511C85` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_TIER_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_flat_1`
--
ALTER TABLE `catalog_product_flat_1`
  ADD CONSTRAINT `FK_CAT_PRD_FLAT_1_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_index_eav`
--
ALTER TABLE `catalog_product_index_eav`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_index_eav_decimal`
--
ALTER TABLE `catalog_product_index_eav_decimal`
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_index_group_price`
--
ALTER TABLE `catalog_product_index_group_price`
  ADD CONSTRAINT `FK_195DF97C81B0BDD6A2EEC50F870E16D1` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_GROUP_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_GROUP_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
  ADD CONSTRAINT `FK_CAT_PRD_IDX_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD CONSTRAINT `FK_CAT_PRD_IDX_WS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD CONSTRAINT `FK_CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD CONSTRAINT `FK_CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_OPT_TYPE_PRICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_OPT_TYPE_TTL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD CONSTRAINT `FK_CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD CONSTRAINT `FK_CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD CONSTRAINT `FK_CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_SPR_ATTR_LBL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_super_attribute_pricing`
--
ALTER TABLE `catalog_product_super_attribute_pricing`
  ADD CONSTRAINT `FK_CAT_PRD_SPR_ATTR_PRICING_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CDE8813117106CFAA3AD209358F66332` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD CONSTRAINT `FK_CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD CONSTRAINT `FK_CHECKOUT_AGREEMENT_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `FK_CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CMS_BLOCK_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `FK_CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CMS_PAGE_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `core_email_queue_recipients`
--
ALTER TABLE `core_email_queue_recipients`
  ADD CONSTRAINT `FK_6F4948F3ABF97DE12127EF14B140802A` FOREIGN KEY (`message_id`) REFERENCES `core_email_queue` (`message_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `core_layout_link`
--
ALTER TABLE `core_layout_link`
  ADD CONSTRAINT `FK_CORE_LAYOUT_LINK_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_LYT_LNK_LYT_UPDATE_ID_CORE_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `core_store`
--
ALTER TABLE `core_store`
  ADD CONSTRAINT `FK_CORE_STORE_GROUP_ID_CORE_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `core_store_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_STORE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `core_store_group`
--
ALTER TABLE `core_store_group`
  ADD CONSTRAINT `FK_CORE_STORE_GROUP_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `core_translate`
--
ALTER TABLE `core_translate`
  ADD CONSTRAINT `FK_CORE_TRANSLATE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `core_variable_value`
--
ALTER TABLE `core_variable_value`
  ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_VARIABLE_ID_CORE_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `core_variable` (`variable_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `coupon_aggregated`
--
ALTER TABLE `coupon_aggregated`
  ADD CONSTRAINT `FK_COUPON_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `coupon_aggregated_order`
--
ALTER TABLE `coupon_aggregated_order`
  ADD CONSTRAINT `FK_COUPON_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `coupon_aggregated_updated`
--
ALTER TABLE `coupon_aggregated_updated`
  ADD CONSTRAINT `FK_COUPON_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `FK_CSTR_EAV_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD CONSTRAINT `FK_CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_EAV_ATTR_WS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `FK_CSTR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `FK_CSTR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `FK_CSTR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `FK_CSTR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `FK_CSTR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD CONSTRAINT `FK_CSTR_FORM_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `dataflow_batch`
--
ALTER TABLE `dataflow_batch`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_PROFILE_ID_DATAFLOW_PROFILE_PROFILE_ID` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `dataflow_batch_export`
--
ALTER TABLE `dataflow_batch_export`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_EXPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `dataflow_batch_import`
--
ALTER TABLE `dataflow_batch_import`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_IMPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `dataflow_import_data`
--
ALTER TABLE `dataflow_import_data`
  ADD CONSTRAINT `FK_DATAFLOW_IMPORT_DATA_SESSION_ID_DATAFLOW_SESSION_SESSION_ID` FOREIGN KEY (`session_id`) REFERENCES `dataflow_session` (`session_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `dataflow_profile_history`
--
ALTER TABLE `dataflow_profile_history`
  ADD CONSTRAINT `FK_AEA06B0C500063D3CE6EA671AE776645` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `design_change`
--
ALTER TABLE `design_change`
  ADD CONSTRAINT `FK_DESIGN_CHANGE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `FK_D7CFDEB379F775328EB6F62695E2B3E1` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `FK_DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DL_LNK_PURCHASED_ORDER_ID_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD CONSTRAINT `FK_46CC8E252307CE62F00A8F1887512A39` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B219BF25756700DEE44550B21220ECCE` FOREIGN KEY (`order_item_id`) REFERENCES `sales_flat_order_item` (`item_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD CONSTRAINT `FK_DL_SAMPLE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD CONSTRAINT `FK_DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `FK_EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `FK_EAV_ATTR_SET_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD CONSTRAINT `FK_EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `FK_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `FK_EAV_ENTITY_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_STORE_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `index_process_event`
--
ALTER TABLE `index_process_event`
  ADD CONSTRAINT `FK_INDEX_PROCESS_EVENT_EVENT_ID_INDEX_EVENT_EVENT_ID` FOREIGN KEY (`event_id`) REFERENCES `index_event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_INDEX_PROCESS_EVENT_PROCESS_ID_INDEX_PROCESS_PROCESS_ID` FOREIGN KEY (`process_id`) REFERENCES `index_process` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD CONSTRAINT `FK_NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NLTTR_QUEUE_STORE_LNK_QUEUE_ID_NLTTR_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD CONSTRAINT `FK_NEWSLETTER_SUBSCRIBER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `oauth_token`
--
ALTER TABLE `oauth_token`
  ADD CONSTRAINT `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `paypal_cert`
--
ALTER TABLE `paypal_cert`
  ADD CONSTRAINT `FK_PAYPAL_CERT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `persistent_session`
--
ALTER TABLE `persistent_session`
  ADD CONSTRAINT `FK_PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_PERSISTENT_SESSION_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `poll`
--
ALTER TABLE `poll`
  ADD CONSTRAINT `FK_POLL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD CONSTRAINT `FK_POLL_ANSWER_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `poll_store`
--
ALTER TABLE `poll_store`
  ADD CONSTRAINT `FK_POLL_STORE_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_POLL_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `poll_vote`
--
ALTER TABLE `poll_vote`
  ADD CONSTRAINT `FK_POLL_VOTE_POLL_ANSWER_ID_POLL_ANSWER_ANSWER_ID` FOREIGN KEY (`poll_answer_id`) REFERENCES `poll_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD CONSTRAINT `FK_PRD_ALERT_PRICE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD CONSTRAINT `FK_PRD_ALERT_STOCK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rating_option`
--
ALTER TABLE `rating_option`
  ADD CONSTRAINT `FK_RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rating_store`
--
ALTER TABLE `rating_store`
  ADD CONSTRAINT `FK_RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_RATING_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rating_title`
--
ALTER TABLE `rating_title`
  ADD CONSTRAINT `FK_RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD CONSTRAINT `FK_REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `report_event`
--
ALTER TABLE `report_event`
  ADD CONSTRAINT `FK_REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_EVENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_DAILY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_MONTHLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_YEARLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `review_detail`
--
ALTER TABLE `review_detail`
  ADD CONSTRAINT `FK_REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_DETAIL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD CONSTRAINT `FK_REVIEW_ENTITY_SUMMARY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `review_store`
--
ALTER TABLE `review_store`
  ADD CONSTRAINT `FK_REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD CONSTRAINT `FK_SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD CONSTRAINT `FK_SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD CONSTRAINT `FK_SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `salesrule_customer_group`
--
ALTER TABLE `salesrule_customer_group`
  ADD CONSTRAINT `FK_SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD CONSTRAINT `FK_SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
  ADD CONSTRAINT `FK_SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_SALESRULE_PRD_ATTR_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `salesrule_website`
--
ALTER TABLE `salesrule_website`
  ADD CONSTRAINT `FK_SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_billing_agreement`
--
ALTER TABLE `sales_billing_agreement`
  ADD CONSTRAINT `FK_SALES_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BILLING_AGREEMENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_billing_agreement_order`
--
ALTER TABLE `sales_billing_agreement_order`
  ADD CONSTRAINT `FK_SALES_BILLING_AGRT_ORDER_AGRT_ID_SALES_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `sales_billing_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BILLING_AGRT_ORDER_ORDER_ID_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_creditmemo`
--
ALTER TABLE `sales_flat_creditmemo`
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_creditmemo_comment`
--
ALTER TABLE `sales_flat_creditmemo_comment`
  ADD CONSTRAINT `FK_B0FCB0B5467075BE63D474F2CD5F7804` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_creditmemo_grid`
--
ALTER TABLE `sales_flat_creditmemo_grid`
  ADD CONSTRAINT `FK_78C711B225167A11CC077B03D1C8E1CC` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_creditmemo_item`
--
ALTER TABLE `sales_flat_creditmemo_item`
  ADD CONSTRAINT `FK_306DAC836C699F0B5E13BE486557AC8A` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_invoice`
--
ALTER TABLE `sales_flat_invoice`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_invoice_comment`
--
ALTER TABLE `sales_flat_invoice_comment`
  ADD CONSTRAINT `FK_5C4B36BBE5231A76AB8018B281ED50BC` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_invoice_grid`
--
ALTER TABLE `sales_flat_invoice_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_ENTT_ID_SALES_FLAT_INVOICE_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_invoice_item`
--
ALTER TABLE `sales_flat_invoice_item`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_ITEM_PARENT_ID_SALES_FLAT_INVOICE_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_order`
--
ALTER TABLE `sales_flat_order`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_order_address`
--
ALTER TABLE `sales_flat_order_address`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ADDRESS_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_order_grid`
--
ALTER TABLE `sales_flat_order_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_ENTITY_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_order_item`
--
ALTER TABLE `sales_flat_order_item`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_order_payment`
--
ALTER TABLE `sales_flat_order_payment`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_PAYMENT_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_order_status_history`
--
ALTER TABLE `sales_flat_order_status_history`
  ADD CONSTRAINT `FK_CE7C71E74CB74DDACED337CEE6753D5E` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_quote`
--
ALTER TABLE `sales_flat_quote`
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_quote_address`
--
ALTER TABLE `sales_flat_quote_address`
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_quote_address_item`
--
ALTER TABLE `sales_flat_quote_address_item`
  ADD CONSTRAINT `FK_2EF8E28181D666D94D4E30DC2B0F80BF` FOREIGN KEY (`quote_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_A345FC758F20C314169CE27DCE53477F` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_address_item` (`address_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B521389746C00700D1B2B76EBBE53854` FOREIGN KEY (`quote_address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_quote_item`
--
ALTER TABLE `sales_flat_quote_item`
  ADD CONSTRAINT `FK_B201DEB5DE51B791AF5C5BF87053C5A7` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_quote_item_option`
--
ALTER TABLE `sales_flat_quote_item_option`
  ADD CONSTRAINT `FK_5F20E478CA64B6891EA8A9D6C2735739` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_quote_payment`
--
ALTER TABLE `sales_flat_quote_payment`
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_quote_shipping_rate`
--
ALTER TABLE `sales_flat_quote_shipping_rate`
  ADD CONSTRAINT `FK_B1F177EFB73D3EDF5322BA64AC48D150` FOREIGN KEY (`address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_shipment`
--
ALTER TABLE `sales_flat_shipment`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_shipment_comment`
--
ALTER TABLE `sales_flat_shipment_comment`
  ADD CONSTRAINT `FK_C2D69CC1FB03D2B2B794B0439F6650CF` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_shipment_grid`
--
ALTER TABLE `sales_flat_shipment_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_ENTT_ID_SALES_FLAT_SHIPMENT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_shipment_item`
--
ALTER TABLE `sales_flat_shipment_item`
  ADD CONSTRAINT `FK_3AECE5007D18F159231B87E8306FC02A` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_flat_shipment_track`
--
ALTER TABLE `sales_flat_shipment_track`
  ADD CONSTRAINT `FK_BCD2FA28717D29F37E10A153E6F2F841` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  ADD CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  ADD CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  ADD CONSTRAINT `FK_SALES_ORDER_AGGREGATED_CREATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  ADD CONSTRAINT `FK_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_order_status_label`
--
ALTER TABLE `sales_order_status_label`
  ADD CONSTRAINT `FK_SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_ORDER_STATUS_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_order_status_state`
--
ALTER TABLE `sales_order_status_state`
  ADD CONSTRAINT `FK_SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  ADD CONSTRAINT `FK_SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_FLAT_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_order_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  ADD CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DA51A10B2405B64A4DAEF77A64F0DAAD` FOREIGN KEY (`payment_id`) REFERENCES `sales_flat_order_payment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_recurring_profile`
--
ALTER TABLE `sales_recurring_profile`
  ADD CONSTRAINT `FK_SALES_RECURRING_PROFILE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_RECURRING_PROFILE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_recurring_profile_order`
--
ALTER TABLE `sales_recurring_profile_order`
  ADD CONSTRAINT `FK_7FF85741C66DCD37A4FBE3E3255A5A01` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B8A7A5397B67455786E55461748C59F4` FOREIGN KEY (`profile_id`) REFERENCES `sales_recurring_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  ADD CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  ADD CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  ADD CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  ADD CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sitemap`
--
ALTER TABLE `sitemap`
  ADD CONSTRAINT `FK_SITEMAP_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`first_customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`first_store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `tag_properties`
--
ALTER TABLE `tag_properties`
  ADD CONSTRAINT `FK_TAG_PROPERTIES_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_PROPERTIES_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tag_relation`
--
ALTER TABLE `tag_relation`
  ADD CONSTRAINT `FK_TAG_RELATION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tag_summary`
--
ALTER TABLE `tag_summary`
  ADD CONSTRAINT `FK_TAG_SUMMARY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_SUMMARY_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD CONSTRAINT `FK_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALCULATION_RATE_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  ADD CONSTRAINT `FK_TAX_ORDER_AGGREGATED_CREATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  ADD CONSTRAINT `FK_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `weee_discount`
--
ALTER TABLE `weee_discount`
  ADD CONSTRAINT `FK_WEEE_DISCOUNT_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_DISCOUNT_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_DISCOUNT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `weee_tax`
--
ALTER TABLE `weee_tax`
  ADD CONSTRAINT `FK_WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_TAX_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD CONSTRAINT `FK_0A5D06DCEC6A6845F50E5FAAC5A1C96D` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_LYT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `FK_WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD CONSTRAINT `FK_WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WISHLIST_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  ADD CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
