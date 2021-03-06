-- Adminer 4.2.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `p20ne_assets`;
CREATE TABLE `p20ne_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1,	0,	0,	153,	0,	'root.1',	'Root Asset',	'{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2,	1,	1,	2,	1,	'com_admin',	'com_admin',	'{}'),
(3,	1,	3,	6,	1,	'com_banners',	'com_banners',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(4,	1,	7,	8,	1,	'com_cache',	'com_cache',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5,	1,	9,	10,	1,	'com_checkin',	'com_checkin',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6,	1,	11,	12,	1,	'com_config',	'com_config',	'{}'),
(7,	1,	13,	16,	1,	'com_contact',	'com_contact',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(8,	1,	17,	34,	1,	'com_content',	'com_content',	'{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
(9,	1,	35,	36,	1,	'com_cpanel',	'com_cpanel',	'{}'),
(10,	1,	37,	38,	1,	'com_installer',	'com_installer',	'{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11,	1,	39,	40,	1,	'com_languages',	'com_languages',	'{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(12,	1,	41,	42,	1,	'com_login',	'com_login',	'{}'),
(13,	1,	43,	44,	1,	'com_mailto',	'com_mailto',	'{}'),
(14,	1,	45,	46,	1,	'com_massmail',	'com_massmail',	'{}'),
(15,	1,	47,	48,	1,	'com_media',	'com_media',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16,	1,	49,	50,	1,	'com_menus',	'com_menus',	'{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(17,	1,	51,	52,	1,	'com_messages',	'com_messages',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18,	1,	53,	116,	1,	'com_modules',	'com_modules',	'{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(19,	1,	117,	120,	1,	'com_newsfeeds',	'com_newsfeeds',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(20,	1,	121,	122,	1,	'com_plugins',	'com_plugins',	'{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(21,	1,	123,	124,	1,	'com_redirect',	'com_redirect',	'{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),
(22,	1,	125,	126,	1,	'com_search',	'com_search',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23,	1,	127,	128,	1,	'com_templates',	'com_templates',	'{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(24,	1,	129,	132,	1,	'com_users',	'com_users',	'{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":{\"6\":1}}'),
(26,	1,	133,	134,	1,	'com_wrapper',	'com_wrapper',	'{}'),
(27,	8,	18,	25,	2,	'com_content.category.2',	'Uncategorised',	'{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(28,	3,	4,	5,	2,	'com_banners.category.3',	'Uncategorised',	'{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(29,	7,	14,	15,	2,	'com_contact.category.4',	'Uncategorised',	'{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(30,	19,	118,	119,	2,	'com_newsfeeds.category.5',	'Uncategorised',	'{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(32,	24,	130,	131,	1,	'com_users.category.7',	'Uncategorised',	'{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(33,	1,	135,	136,	1,	'com_finder',	'com_finder',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(35,	27,	19,	20,	3,	'com_content.article.2',	'About Us',	'{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(36,	8,	26,	33,	2,	'com_content.category.8',	'News',	'{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(37,	36,	27,	28,	3,	'com_content.article.3',	'Article 1 Title',	'{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(40,	27,	21,	22,	3,	'com_content.article.6',	'Who we are',	'{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(41,	1,	137,	138,	1,	'com_joomlaupdate',	'com_joomlaupdate',	'{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),
(42,	1,	139,	140,	1,	'com_tags',	'com_tags',	'{\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(43,	1,	141,	142,	1,	'com_contenthistory',	'com_contenthistory',	'{}'),
(44,	1,	143,	144,	1,	'com_ajax',	'com_ajax',	'{}'),
(47,	1,	145,	146,	1,	'com_postinstall',	'com_postinstall',	'{}'),
(48,	18,	54,	55,	2,	'com_modules.module.10',	'Logged-in Users',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(49,	18,	56,	57,	2,	'com_modules.module.3',	'Popular Articles',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(50,	18,	58,	59,	2,	'com_modules.module.4',	'Recently Added Articles',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(51,	18,	60,	61,	2,	'com_modules.module.89',	'Site Information',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(52,	18,	62,	63,	2,	'com_modules.module.88',	'Image',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(53,	18,	64,	65,	2,	'com_modules.module.90',	'Release News',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(54,	27,	23,	24,	3,	'com_content.article.7',	'test',	'{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
(55,	18,	66,	67,	2,	'com_modules.module.91',	'Social GK5',	'{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(56,	18,	68,	69,	2,	'com_modules.module.92',	'Grid GK5',	'{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(57,	18,	70,	71,	2,	'com_modules.module.93',	'Topleft',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(58,	18,	72,	73,	2,	'com_modules.module.94',	'topleft',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(59,	18,	74,	75,	2,	'com_modules.module.95',	'topright',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(60,	18,	76,	77,	2,	'com_modules.module.96',	'Middleft',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(61,	18,	78,	79,	2,	'com_modules.module.97',	'middright',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(62,	18,	80,	81,	2,	'com_modules.module.98',	'Bottleft',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(63,	18,	82,	83,	2,	'com_modules.module.99',	'bott1',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(64,	18,	84,	85,	2,	'com_modules.module.100',	'bott2',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(65,	18,	86,	87,	2,	'com_modules.module.101',	'bott3',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(66,	18,	88,	89,	2,	'com_modules.module.102',	'Code7 Accord Offcanvas',	'{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(67,	18,	90,	91,	2,	'com_modules.module.103',	'Offcanvas menu',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(68,	18,	92,	93,	2,	'com_modules.module.104',	'Footer1',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(69,	18,	94,	95,	2,	'com_modules.module.105',	'Footer2',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(70,	18,	96,	97,	2,	'com_modules.module.106',	'Footer3',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(71,	18,	98,	99,	2,	'com_modules.module.107',	'Footer4',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(72,	18,	100,	101,	2,	'com_modules.module.108',	'Code 7 Responsive Slider',	''),
(73,	18,	102,	103,	2,	'com_modules.module.109',	'topleft (copy)',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(74,	18,	104,	105,	2,	'com_modules.module.110',	'News',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(75,	36,	29,	30,	3,	'com_content.article.8',	'UBK na veletrhu CeBIT 2015',	'{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(76,	36,	31,	32,	3,	'com_content.article.9',	'UBK Sharepoint jako Taskmanager',	'{\"core.admin\":{\"7\":1},\"core.options\":[],\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
(77,	1,	147,	148,	1,	'com_pagebuilder',	'COM_PAGEBUILDER',	'{}'),
(78,	18,	106,	107,	2,	'com_modules.module.111',	'More About Us',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(79,	1,	149,	150,	1,	'com_sppagebuilder',	'SP Page Builder',	'{}'),
(80,	18,	108,	109,	2,	'com_modules.module.112',	'SP Page Builder',	''),
(81,	18,	110,	111,	2,	'com_modules.module.113',	'SP Page Builder Admin Menu',	''),
(82,	18,	112,	113,	2,	'com_modules.module.114',	'News Slider',	'{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),
(83,	1,	151,	152,	1,	'com_spsimpleportfolio',	'SP Simple Portfolio',	'{}'),
(84,	18,	114,	115,	2,	'com_modules.module.115',	'Portfolio Services',	'{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}');

DROP TABLE IF EXISTS `p20ne_associations`;
CREATE TABLE `p20ne_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_banners`;
CREATE TABLE `p20ne_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_banner_clients`;
CREATE TABLE `p20ne_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_banner_tracks`;
CREATE TABLE `p20ne_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_categories`;
CREATE TABLE `p20ne_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1,	0,	0,	0,	13,	0,	'',	'system',	'ROOT',	'root',	'',	'',	1,	0,	'0000-00-00 00:00:00',	1,	'{}',	'',	'',	'',	276,	'2011-01-01 00:00:01',	0,	'0000-00-00 00:00:00',	0,	'*',	1),
(2,	27,	1,	1,	2,	1,	'uncategorised',	'com_content',	'Uncategorised',	'uncategorised',	'',	'',	1,	0,	'0000-00-00 00:00:00',	1,	'{\"target\":\"\",\"image\":\"\"}',	'',	'',	'{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',	276,	'2011-01-01 00:00:01',	0,	'0000-00-00 00:00:00',	0,	'*',	1),
(3,	28,	1,	3,	4,	1,	'uncategorised',	'com_banners',	'Uncategorised',	'uncategorised',	'',	'',	1,	0,	'0000-00-00 00:00:00',	1,	'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}',	'',	'',	'{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',	276,	'2011-01-01 00:00:01',	0,	'0000-00-00 00:00:00',	0,	'*',	1),
(4,	29,	1,	5,	6,	1,	'uncategorised',	'com_contact',	'Uncategorised',	'uncategorised',	'',	'',	1,	0,	'0000-00-00 00:00:00',	1,	'{\"target\":\"\",\"image\":\"\"}',	'',	'',	'{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',	276,	'2011-01-01 00:00:01',	0,	'0000-00-00 00:00:00',	0,	'*',	1),
(5,	30,	1,	7,	8,	1,	'uncategorised',	'com_newsfeeds',	'Uncategorised',	'uncategorised',	'',	'',	1,	0,	'0000-00-00 00:00:00',	1,	'{\"target\":\"\",\"image\":\"\"}',	'',	'',	'{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',	276,	'2011-01-01 00:00:01',	0,	'0000-00-00 00:00:00',	0,	'*',	1),
(7,	32,	1,	9,	10,	1,	'uncategorised',	'com_users',	'Uncategorised',	'uncategorised',	'',	'',	1,	0,	'0000-00-00 00:00:00',	1,	'{\"target\":\"\",\"image\":\"\"}',	'',	'',	'{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',	276,	'2011-01-01 00:00:01',	0,	'0000-00-00 00:00:00',	0,	'*',	1),
(8,	36,	1,	11,	12,	1,	'news',	'com_content',	'News',	'news',	'',	'<h2>Latest News in UBK s.r.o.</h2>',	1,	0,	'0000-00-00 00:00:00',	1,	'{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}',	'',	'',	'{\"author\":\"\",\"robots\":\"\"}',	276,	'2011-01-01 00:00:01',	276,	'2015-05-11 11:27:12',	0,	'*',	1);

DROP TABLE IF EXISTS `p20ne_contact_details`;
CREATE TABLE `p20ne_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1,	'Your Name',	'your-name',	'',	'This is a contact form which you can edit in the contact manager. Put your address or other information here. This can be a good place to put things like business hours too.Don\'t forget to put a real email address.You also may want to enable Captcha in the global configurationto prevent spam submissions of contact forms. ',	'',	'',	'',	'',	'',	'',	'',	'',	'email@example.com',	0,	1,	0,	'0000-00-00 00:00:00',	1,	'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',	0,	4,	1,	'',	'',	'',	'',	'',	'*',	'2011-01-01 00:00:01',	276,	'Joomla',	'0000-00-00 00:00:00',	0,	'',	'',	'{\"robots\":\"\",\"rights\":\"\"}',	0,	'',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	1);

DROP TABLE IF EXISTS `p20ne_content`;
CREATE TABLE `p20ne_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(2,	35,	'About Us',	'about-us',	'<p style=\"text-align: justify;\">Die UBK s.r.o. was founded in 2004 as a subsidiary of the consulting company UBK GmbH. We are specialized in services related to software development. Our key issues are: development of web-enabled custom-made Solutions, programmers and consultants to hire, establishment of development teams in the Czech Republic.</p>\r\n<p style=\"text-align: justify;\">UBK Czech Republic draws upon an experienced, flexible and multilingual team. The skilled team realises for our customers and partner lower-cost nearshore development of web and desktop applications. Due to the lack of the development resources are many of our customers IT and consultants companies. We´ve benefit from our location in Pilsen. The university city of Pilsen provides enough highly qualified developers.</p>\r\n<p style=\"text-align: justify;\">No matter which industry the customers are in, our aim is to satisfy their demands and expectations and implement optimal custom-made solution for each of them. We often develop web-enabled workflow solutions to enhance and simplify the IT structure of our customers.</p>\r\n<p style=\"text-align: justify;\"><em>„In the last few years, many German and Swiss companies have had some bad and expensive experience with offshoring projects. Our company offers an alternative as German-Czech subsidiary – nearshoring in the Czech Republic. We have focused strategically on the establishment of development teams for our Partner, outsourcing of capacities und custom-made software development. Our geographical and cultural proximity to Germany, good language skills in connection with the low-cost and high-quality programming sum up to significant added value for our customers and partners.” Mgr. Lukáš Tomášek Managing Director</em></p>',	'',	-2,	2,	'2011-01-01 00:00:01',	276,	'Joomla',	'2015-05-11 11:18:42',	276,	0,	'0000-00-00 00:00:00',	'2012-01-04 03:06:07',	'0000-00-00 00:00:00',	'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}',	'{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',	'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',	2,	2,	'',	'',	1,	33,	'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',	0,	'*',	''),
(3,	37,	'Article 1 Title',	'article-1-title',	'<p>Here is a news article.</p>',	'',	-2,	8,	'2011-01-01 00:00:01',	276,	'Joomla',	'0000-00-00 00:00:00',	0,	0,	'0000-00-00 00:00:00',	'2012-01-04 03:10:06',	'0000-00-00 00:00:00',	'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}',	'{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}',	'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',	1,	2,	'',	'',	1,	0,	'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',	0,	'*',	''),
(6,	40,	'Who we are',	'creating-your-site',	'<p style=\"text-align: justify;\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>',	'',	1,	2,	'2011-01-01 00:00:01',	276,	'Joomla',	'2015-05-07 12:28:41',	276,	0,	'0000-00-00 00:00:00',	'2012-01-04 04:27:11',	'0000-00-00 00:00:00',	'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}',	'{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',	'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',	11,	1,	'',	'',	1,	373,	'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',	0,	'*',	''),
(7,	54,	'test',	'test',	'<p>test</p>',	'',	-2,	2,	'2015-05-06 13:29:14',	276,	'',	'2015-05-06 13:29:14',	0,	0,	'0000-00-00 00:00:00',	'2015-05-06 13:29:14',	'0000-00-00 00:00:00',	'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}',	'{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',	'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',	1,	0,	'',	'',	1,	0,	'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',	0,	'*',	''),
(8,	75,	'UBK na veletrhu CeBIT 2015',	'ubk-na-veletrhu-cebit-2015',	'<p style=\"text-align: justify;\">Naše společnost se i letos zúčastnila veletrhu CeBIT v německém Hannoveru. Pro návštěvníky našeho stánku jsme letos měli malý dárek v podobě plechovky piva Pilsner Urquell. Rádi bychom poděkovali všem, kteří navštívili náš stánek a zajímali se o naše služby. Zároveň doufáme, že na základě našich rozhovorů na tomto veletrhu bude naše spolupráce přínosem. Již teď se těšíme na příští ročník veletrhu CeBIT 2016 a tímto vás zveme k návštěvě našeho veletržního stánku v příštím roce.</p>\r\n<div>\r\n<p>25.3.2015</p>\r\n</div>',	'',	-2,	8,	'2015-05-11 11:10:13',	276,	'',	'2015-05-11 11:10:54',	276,	0,	'0000-00-00 00:00:00',	'2015-05-11 11:10:13',	'0000-00-00 00:00:00',	'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}',	'{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',	'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',	2,	1,	'',	'',	1,	1,	'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',	0,	'*',	''),
(9,	76,	'UBK Sharepoint jako Taskmanager',	'ubk-sharepoint-jako-taskmanager',	'<p>Naše společnost má nyní své vlastní řešení pro správu projektů a zadávání úkolů a to v rámci aplikace SharePoint. Náš vlastní specialista SharePoint zavedl a provedl nezbytné úpravy a rozšíření přizpůsobené potřebám fungování naší společnosti.</p>\r\n<p>24.2.2015</p>',	'',	-2,	8,	'2015-05-11 11:11:21',	276,	'',	'2015-05-11 11:11:21',	0,	0,	'0000-00-00 00:00:00',	'2015-05-11 11:11:21',	'0000-00-00 00:00:00',	'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}',	'{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',	'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',	1,	0,	'',	'',	1,	3,	'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',	0,	'*',	'');

DROP TABLE IF EXISTS `p20ne_contentitem_tag_map`;
CREATE TABLE `p20ne_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';


DROP TABLE IF EXISTS `p20ne_content_frontpage`;
CREATE TABLE `p20ne_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_content_rating`;
CREATE TABLE `p20ne_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_content_types`;
CREATE TABLE `p20ne_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1,	'Article',	'com_content.article',	'{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}',	'ContentHelperRoute::getArticleRoute',	'{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2,	'Contact',	'com_contact.contact',	'{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}',	'ContactHelperRoute::getContactRoute',	'{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3,	'Newsfeed',	'com_newsfeeds.newsfeed',	'{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}',	'NewsfeedsHelperRoute::getNewsfeedRoute',	'{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4,	'User',	'com_users.user',	'{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}',	'UsersHelperRoute::getUserRoute',	''),
(5,	'Article Category',	'com_content.category',	'{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}',	'ContentHelperRoute::getCategoryRoute',	'{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6,	'Contact Category',	'com_contact.category',	'{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}',	'ContactHelperRoute::getCategoryRoute',	'{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7,	'Newsfeeds Category',	'com_newsfeeds.category',	'{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}',	'NewsfeedsHelperRoute::getCategoryRoute',	'{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8,	'Tag',	'com_tags.tag',	'{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}',	'TagsHelperRoute::getTagRoute',	'{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9,	'Banner',	'com_banners.banner',	'{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}',	'',	'{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10,	'Banners Category',	'com_banners.category',	'{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}',	'',	'{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11,	'Banner Client',	'com_banners.client',	'{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}',	'',	'',	'',	'{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12,	'User Notes',	'com_users.note',	'{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}',	'',	'',	'',	'{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13,	'User Notes Category',	'com_users.category',	'{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}',	'',	'{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}',	'',	'{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

DROP TABLE IF EXISTS `p20ne_core_log_searches`;
CREATE TABLE `p20ne_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_extensions`;
CREATE TABLE `p20ne_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1,	'com_mailto',	'component',	'com_mailto',	'',	0,	1,	1,	1,	'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(2,	'com_wrapper',	'component',	'com_wrapper',	'',	0,	1,	1,	1,	'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(3,	'com_admin',	'component',	'com_admin',	'',	1,	1,	1,	1,	'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(4,	'com_banners',	'component',	'com_banners',	'',	1,	1,	1,	0,	'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}',	'{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(5,	'com_cache',	'component',	'com_cache',	'',	1,	1,	1,	1,	'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(6,	'com_categories',	'component',	'com_categories',	'',	1,	1,	1,	1,	'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(7,	'com_checkin',	'component',	'com_checkin',	'',	1,	1,	1,	1,	'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(8,	'com_contact',	'component',	'com_contact',	'',	1,	1,	1,	0,	'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}',	'{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(9,	'com_cpanel',	'component',	'com_cpanel',	'',	1,	1,	1,	1,	'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10,	'com_installer',	'component',	'com_installer',	'',	1,	1,	1,	1,	'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(11,	'com_languages',	'component',	'com_languages',	'',	1,	1,	1,	1,	'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}',	'{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(12,	'com_login',	'component',	'com_login',	'',	1,	1,	1,	1,	'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(13,	'com_media',	'component',	'com_media',	'',	1,	1,	0,	1,	'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}',	'{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(14,	'com_menus',	'component',	'com_menus',	'',	1,	1,	1,	1,	'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(15,	'com_messages',	'component',	'com_messages',	'',	1,	1,	1,	1,	'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(16,	'com_modules',	'component',	'com_modules',	'',	1,	1,	1,	1,	'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(17,	'com_newsfeeds',	'component',	'com_newsfeeds',	'',	1,	1,	1,	0,	'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}',	'{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(18,	'com_plugins',	'component',	'com_plugins',	'',	1,	1,	1,	1,	'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(19,	'com_search',	'component',	'com_search',	'',	1,	1,	1,	0,	'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}',	'{\"enabled\":\"0\",\"show_date\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(20,	'com_templates',	'component',	'com_templates',	'',	1,	1,	1,	1,	'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}',	'{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(22,	'com_content',	'component',	'com_content',	'',	1,	1,	0,	1,	'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}',	'{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"0\",\"readmore_limit\":\"100\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(23,	'com_config',	'component',	'com_config',	'',	1,	1,	0,	1,	'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}',	'{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(24,	'com_redirect',	'component',	'com_redirect',	'',	1,	1,	0,	1,	'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(25,	'com_users',	'component',	'com_users',	'',	1,	1,	0,	1,	'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}',	'{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(27,	'com_finder',	'component',	'com_finder',	'',	1,	1,	0,	0,	'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}',	'{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(28,	'com_joomlaupdate',	'component',	'com_joomlaupdate',	'',	1,	1,	0,	1,	'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(29,	'com_tags',	'component',	'com_tags',	'',	1,	1,	1,	1,	'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}',	'{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(30,	'com_contenthistory',	'component',	'com_contenthistory',	'',	1,	1,	1,	0,	'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(31,	'com_ajax',	'component',	'com_ajax',	'',	1,	1,	1,	0,	'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(32,	'com_postinstall',	'component',	'com_postinstall',	'',	1,	1,	1,	1,	'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(101,	'SimplePie',	'library',	'simplepie',	'',	0,	1,	1,	1,	'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"simplepie\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(102,	'phputf8',	'library',	'phputf8',	'',	0,	1,	1,	1,	'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(103,	'Joomla! Platform',	'library',	'joomla',	'',	0,	1,	1,	1,	'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}',	'{\"mediaversion\":\"15b0e9f31952ea14583414db43b8a51a\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(104,	'IDNA Convert',	'library',	'idna_convert',	'',	0,	1,	1,	1,	'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(105,	'FOF',	'library',	'fof',	'',	0,	1,	1,	1,	'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-03-11 11:59:00\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.2\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(106,	'PHPass',	'library',	'phpass',	'',	0,	1,	1,	1,	'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(200,	'mod_articles_archive',	'module',	'mod_articles_archive',	'',	0,	1,	1,	0,	'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(201,	'mod_articles_latest',	'module',	'mod_articles_latest',	'',	0,	1,	1,	0,	'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(202,	'mod_articles_popular',	'module',	'mod_articles_popular',	'',	0,	1,	1,	0,	'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(203,	'mod_banners',	'module',	'mod_banners',	'',	0,	1,	1,	0,	'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(204,	'mod_breadcrumbs',	'module',	'mod_breadcrumbs',	'',	0,	1,	1,	1,	'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(205,	'mod_custom',	'module',	'mod_custom',	'',	0,	1,	1,	1,	'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(206,	'mod_feed',	'module',	'mod_feed',	'',	0,	1,	1,	0,	'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(207,	'mod_footer',	'module',	'mod_footer',	'',	0,	1,	1,	0,	'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(208,	'mod_login',	'module',	'mod_login',	'',	0,	1,	1,	1,	'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(209,	'mod_menu',	'module',	'mod_menu',	'',	0,	1,	1,	1,	'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(210,	'mod_articles_news',	'module',	'mod_articles_news',	'',	0,	1,	1,	0,	'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(211,	'mod_random_image',	'module',	'mod_random_image',	'',	0,	1,	1,	0,	'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(212,	'mod_related_items',	'module',	'mod_related_items',	'',	0,	1,	1,	0,	'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(213,	'mod_search',	'module',	'mod_search',	'',	0,	1,	1,	0,	'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(214,	'mod_stats',	'module',	'mod_stats',	'',	0,	1,	1,	0,	'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(215,	'mod_syndicate',	'module',	'mod_syndicate',	'',	0,	1,	1,	1,	'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(216,	'mod_users_latest',	'module',	'mod_users_latest',	'',	0,	1,	1,	0,	'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(218,	'mod_whosonline',	'module',	'mod_whosonline',	'',	0,	1,	1,	0,	'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(219,	'mod_wrapper',	'module',	'mod_wrapper',	'',	0,	1,	1,	0,	'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(220,	'mod_articles_category',	'module',	'mod_articles_category',	'',	0,	1,	1,	0,	'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(221,	'mod_articles_categories',	'module',	'mod_articles_categories',	'',	0,	1,	1,	0,	'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(222,	'mod_languages',	'module',	'mod_languages',	'',	0,	1,	1,	1,	'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(223,	'mod_finder',	'module',	'mod_finder',	'',	0,	1,	0,	0,	'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(300,	'mod_custom',	'module',	'mod_custom',	'',	1,	1,	1,	1,	'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(301,	'mod_feed',	'module',	'mod_feed',	'',	1,	1,	1,	0,	'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(302,	'mod_latest',	'module',	'mod_latest',	'',	1,	1,	1,	0,	'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(303,	'mod_logged',	'module',	'mod_logged',	'',	1,	1,	1,	0,	'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(304,	'mod_login',	'module',	'mod_login',	'',	1,	1,	1,	1,	'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(305,	'mod_menu',	'module',	'mod_menu',	'',	1,	1,	1,	0,	'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(307,	'mod_popular',	'module',	'mod_popular',	'',	1,	1,	1,	0,	'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(308,	'mod_quickicon',	'module',	'mod_quickicon',	'',	1,	1,	1,	1,	'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(309,	'mod_status',	'module',	'mod_status',	'',	1,	1,	1,	0,	'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(310,	'mod_submenu',	'module',	'mod_submenu',	'',	1,	1,	1,	0,	'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(311,	'mod_title',	'module',	'mod_title',	'',	1,	1,	1,	0,	'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(312,	'mod_toolbar',	'module',	'mod_toolbar',	'',	1,	1,	1,	1,	'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(313,	'mod_multilangstatus',	'module',	'mod_multilangstatus',	'',	1,	1,	1,	0,	'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}',	'{\"cache\":\"0\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(314,	'mod_version',	'module',	'mod_version',	'',	1,	1,	1,	0,	'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}',	'{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(315,	'mod_stats_admin',	'module',	'mod_stats_admin',	'',	1,	1,	1,	0,	'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}',	'{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(316,	'mod_tags_popular',	'module',	'mod_tags_popular',	'',	0,	1,	1,	0,	'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}',	'{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(317,	'mod_tags_similar',	'module',	'mod_tags_similar',	'',	0,	1,	1,	0,	'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}',	'{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(400,	'plg_authentication_gmail',	'plugin',	'gmail',	'authentication',	0,	0,	1,	0,	'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}',	'{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}',	'',	'',	0,	'0000-00-00 00:00:00',	1,	0),
(401,	'plg_authentication_joomla',	'plugin',	'joomla',	'authentication',	0,	1,	1,	1,	'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(402,	'plg_authentication_ldap',	'plugin',	'ldap',	'authentication',	0,	0,	1,	0,	'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}',	'{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}',	'',	'',	0,	'0000-00-00 00:00:00',	3,	0),
(403,	'plg_content_contact',	'plugin',	'contact',	'content',	0,	1,	1,	0,	'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	1,	0),
(404,	'plg_content_emailcloak',	'plugin',	'emailcloak',	'content',	0,	1,	1,	0,	'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}',	'{\"mode\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	1,	0),
(406,	'plg_content_loadmodule',	'plugin',	'loadmodule',	'content',	0,	1,	1,	0,	'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}',	'{\"style\":\"xhtml\"}',	'',	'',	0,	'2011-09-18 15:22:50',	0,	0),
(407,	'plg_content_pagebreak',	'plugin',	'pagebreak',	'content',	0,	1,	1,	0,	'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}',	'{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	4,	0),
(408,	'plg_content_pagenavigation',	'plugin',	'pagenavigation',	'content',	0,	1,	1,	0,	'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}',	'{\"position\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	5,	0),
(409,	'plg_content_vote',	'plugin',	'vote',	'content',	0,	1,	1,	0,	'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	6,	0),
(410,	'plg_editors_codemirror',	'plugin',	'codemirror',	'editors',	0,	1,	1,	1,	'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}',	'{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}',	'',	'',	0,	'0000-00-00 00:00:00',	1,	0),
(411,	'plg_editors_none',	'plugin',	'none',	'editors',	0,	1,	1,	1,	'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	2,	0),
(412,	'plg_editors_tinymce',	'plugin',	'tinymce',	'editors',	0,	1,	1,	0,	'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2014\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.1.7\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}',	'{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}',	'',	'',	0,	'0000-00-00 00:00:00',	3,	0),
(413,	'plg_editors-xtd_article',	'plugin',	'article',	'editors-xtd',	0,	1,	1,	0,	'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	1,	0),
(414,	'plg_editors-xtd_image',	'plugin',	'image',	'editors-xtd',	0,	1,	1,	0,	'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	2,	0),
(415,	'plg_editors-xtd_pagebreak',	'plugin',	'pagebreak',	'editors-xtd',	0,	1,	1,	0,	'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	3,	0),
(416,	'plg_editors-xtd_readmore',	'plugin',	'readmore',	'editors-xtd',	0,	1,	1,	0,	'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	4,	0),
(417,	'plg_search_categories',	'plugin',	'categories',	'search',	0,	1,	1,	0,	'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}',	'{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(418,	'plg_search_contacts',	'plugin',	'contacts',	'search',	0,	1,	1,	0,	'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}',	'{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(419,	'plg_search_content',	'plugin',	'content',	'search',	0,	1,	1,	0,	'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}',	'{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(420,	'plg_search_newsfeeds',	'plugin',	'newsfeeds',	'search',	0,	1,	1,	0,	'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}',	'{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(422,	'plg_system_languagefilter',	'plugin',	'languagefilter',	'system',	0,	0,	1,	1,	'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	1,	0),
(423,	'plg_system_p3p',	'plugin',	'p3p',	'system',	0,	0,	1,	0,	'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}',	'{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}',	'',	'',	0,	'0000-00-00 00:00:00',	2,	0),
(424,	'plg_system_cache',	'plugin',	'cache',	'system',	0,	0,	1,	1,	'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}',	'{\"browsercache\":\"0\",\"cachetime\":\"15\"}',	'',	'',	0,	'0000-00-00 00:00:00',	9,	0),
(425,	'plg_system_debug',	'plugin',	'debug',	'system',	0,	1,	1,	0,	'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}',	'{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}',	'',	'',	0,	'0000-00-00 00:00:00',	4,	0),
(426,	'plg_system_log',	'plugin',	'log',	'system',	0,	1,	1,	1,	'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	5,	0),
(427,	'plg_system_redirect',	'plugin',	'redirect',	'system',	0,	0,	1,	1,	'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	6,	0),
(428,	'plg_system_remember',	'plugin',	'remember',	'system',	0,	1,	1,	1,	'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	7,	0),
(429,	'plg_system_sef',	'plugin',	'sef',	'system',	0,	1,	1,	0,	'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	8,	0),
(430,	'plg_system_logout',	'plugin',	'logout',	'system',	0,	1,	1,	1,	'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	3,	0),
(431,	'plg_user_contactcreator',	'plugin',	'contactcreator',	'user',	0,	0,	1,	0,	'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}',	'{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}',	'',	'',	0,	'0000-00-00 00:00:00',	1,	0),
(432,	'plg_user_joomla',	'plugin',	'joomla',	'user',	0,	1,	1,	0,	'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}',	'{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	2,	0),
(433,	'plg_user_profile',	'plugin',	'profile',	'user',	0,	0,	1,	0,	'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}',	'{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(434,	'plg_extension_joomla',	'plugin',	'joomla',	'extension',	0,	1,	1,	1,	'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	1,	0),
(435,	'plg_content_joomla',	'plugin',	'joomla',	'content',	0,	1,	1,	0,	'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(436,	'plg_system_languagecode',	'plugin',	'languagecode',	'system',	0,	0,	1,	0,	'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	10,	0),
(437,	'plg_quickicon_joomlaupdate',	'plugin',	'joomlaupdate',	'quickicon',	0,	1,	1,	1,	'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(438,	'plg_quickicon_extensionupdate',	'plugin',	'extensionupdate',	'quickicon',	0,	1,	1,	1,	'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(439,	'plg_captcha_recaptcha',	'plugin',	'recaptcha',	'captcha',	0,	0,	1,	0,	'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}',	'{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(440,	'plg_system_highlight',	'plugin',	'highlight',	'system',	0,	1,	1,	0,	'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	7,	0),
(441,	'plg_content_finder',	'plugin',	'finder',	'content',	0,	0,	1,	0,	'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(442,	'plg_finder_categories',	'plugin',	'categories',	'finder',	0,	1,	1,	0,	'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	1,	0),
(443,	'plg_finder_contacts',	'plugin',	'contacts',	'finder',	0,	1,	1,	0,	'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	2,	0),
(444,	'plg_finder_content',	'plugin',	'content',	'finder',	0,	1,	1,	0,	'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	3,	0),
(445,	'plg_finder_newsfeeds',	'plugin',	'newsfeeds',	'finder',	0,	1,	1,	0,	'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	4,	0),
(447,	'plg_finder_tags',	'plugin',	'tags',	'finder',	0,	1,	1,	0,	'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(448,	'plg_twofactorauth_totp',	'plugin',	'totp',	'twofactorauth',	0,	0,	1,	0,	'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(449,	'plg_authentication_cookie',	'plugin',	'cookie',	'authentication',	0,	1,	1,	0,	'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(450,	'plg_twofactorauth_yubikey',	'plugin',	'yubikey',	'twofactorauth',	0,	0,	1,	0,	'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(451,	'plg_search_tags',	'plugin',	'tags',	'search',	0,	1,	1,	0,	'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}',	'{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(503,	'beez3',	'template',	'beez3',	'',	0,	1,	1,	0,	'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}',	'{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(504,	'hathor',	'template',	'hathor',	'',	1,	1,	1,	0,	'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}',	'{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(506,	'protostar',	'template',	'protostar',	'',	0,	1,	1,	0,	'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}',	'{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(507,	'isis',	'template',	'isis',	'',	1,	1,	1,	0,	'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}',	'{\"templateColor\":\"\",\"logoFile\":\"\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(600,	'English (en-GB)',	'language',	'en-GB',	'',	0,	1,	1,	1,	'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.1\",\"description\":\"en-GB site language\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(601,	'English (en-GB)',	'language',	'en-GB',	'',	1,	1,	1,	1,	'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.1\",\"description\":\"en-GB administrator language\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(700,	'files_joomla',	'file',	'joomla',	'',	0,	1,	1,	1,	'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"March 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.1\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}',	'',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10000,	'template',	'template',	'template',	'',	0,	1,	1,	0,	'{\"name\":\"shaper_helix3\",\"type\":\"template\",\"creationDate\":\"Jan 2015\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2015 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"1.0\",\"description\":\"Shaper Helix3 - Starter Template of Helix3 framework\",\"group\":\"\",\"filename\":\"templateDetails\"}',	'{}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	-1),
(10002,	'Helix3 - Ajax',	'plugin',	'helix3',	'ajax',	0,	1,	1,	0,	'{\"name\":\"Helix3 - Ajax\",\"type\":\"plugin\",\"creationDate\":\"Jan 2015\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.0\",\"description\":\"Helix3 Framework - Joomla Template Framework by JoomShaper\",\"group\":\"\",\"filename\":\"helix3\"}',	'{}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10003,	'System - Helix3 Framework',	'plugin',	'helix3',	'system',	0,	1,	1,	0,	'{\"name\":\"System - Helix3 Framework\",\"type\":\"plugin\",\"creationDate\":\"Jan 2015\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.0\",\"description\":\"Helix3 Framework - Joomla Template Framework by JoomShaper\",\"group\":\"\",\"filename\":\"helix3\"}',	'{}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10004,	'shaper_helix3',	'template',	'shaper_helix3',	'',	0,	1,	1,	0,	'{\"name\":\"shaper_helix3\",\"type\":\"template\",\"creationDate\":\"Jan 2015\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2015 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"1.0\",\"description\":\"Shaper Helix3 - Starter Template of Helix3 framework\",\"group\":\"\",\"filename\":\"templateDetails\"}',	'{\"sticky_header\":\"1\",\"boxed_layout\":\"0\",\"logo_type\":\"image\",\"logo_position\":\"logo\",\"body_bg_repeat\":\"inherit\",\"body_bg_size\":\"inherit\",\"body_bg_attachment\":\"inherit\",\"body_bg_position\":\"0 0\",\"enabled_copyright\":\"1\",\"copyright_position\":\"footer1\",\"copyright\":\"\\u00a9 2015 Your Company. All Rights Reserved. Designed By JoomShaper\",\"show_social_icons\":\"1\",\"social_position\":\"top1\",\"facebook\":\"https:\\/\\/www.facebook.com\\/joomshaper\",\"twitter\":\"https:\\/\\/twitter.com\\/joomshaper\",\"enable_contactinfo\":\"1\",\"contact_position\":\"top2\",\"contact_phone\":\"+228 872 4444\",\"contact_email\":\"contact@email.com\",\"comingsoon_mode\":\"0\",\"comingsoon_title\":\"Coming Soon Title\",\"comingsoon_date\":\"5-10-2018\",\"comingsoon_content\":\"Coming soon content\",\"preset\":\"preset1\",\"preset1_bg\":\"#ffffff\",\"preset1_text\":\"#000000\",\"preset1_major\":\"#26aae1\",\"preset2_bg\":\"#ffffff\",\"preset2_text\":\"#000000\",\"preset2_major\":\"#3d449a\",\"preset3_bg\":\"#ffffff\",\"preset3_text\":\"#000000\",\"preset3_major\":\"#2bb673\",\"preset4_bg\":\"#ffffff\",\"preset4_text\":\"#000000\",\"preset4_major\":\"#eb4947\",\"menu\":\"mainmenu\",\"menu_type\":\"mega_offcanvas\",\"menu_animation\":\"menu-fade\",\"enable_body_font\":\"1\",\"body_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"300\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h1_font\":\"1\",\"h1_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"800\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h2_font\":\"1\",\"h2_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h3_font\":\"1\",\"h3_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h4_font\":\"1\",\"h4_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h5_font\":\"1\",\"h5_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h6_font\":\"1\",\"h6_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_navigation_font\":\"0\",\"enable_custom_font\":\"0\",\"compress_css\":\"0\",\"compress_js\":\"0\",\"lessoption\":\"0\",\"show_post_format\":\"1\",\"commenting_engine\":\"disabled\",\"disqus_devmode\":\"0\",\"intensedebate_acc\":\"\",\"fb_width\":\"500\",\"fb_cpp\":\"10\",\"comments_count\":\"0\",\"social_share\":\"1\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10005,	'Social GK5',	'module',	'mod_social_gk5',	'',	0,	1,	0,	0,	'{\"name\":\"Social GK5\",\"type\":\"module\",\"creationDate\":\"08\\/03\\/2015\",\"author\":\"GavickPro\",\"copyright\":\"Copyright (C) 2011-2015 GavickPro. All rights reserved.\",\"authorEmail\":\"info@gavick.com\",\"authorUrl\":\"www.gavickpro.com\",\"version\":\"1.2.5\",\"description\":\"\\n\\t\\t<style type=\\\"text\\/css\\\">\\n\\t\\t\\tspan.readonly { padding: 10px; font-family: Arial; font-size:13px !important; font-weight: normal !important; text-align: justify; color: #4d4d4d; line-height: 24px; }\\n\\t\\t\\tspan.readonly h1 { clear:both; font-family: Georgia, sans-serif; font-size:38px; margin:30px 20px 23px; padding:0px 0px 24px 10px; color:#333; border-bottom: 1px solid #eee; font-weight: normal; }\\n\\t\\t\\tspan.readonly p { margin: 0 26px 10px }\\n\\t\\t\\tspan.readonly p a { color: #2F4C6D }\\n\\t\\t\\tspan.readonly p.homepage { margin-top: 30px }\\n\\t\\t\\tspan.readonly p.license { border-top: 1px solid #eee; font-size: 11px; margin: 30px 26px 0; padding: 6px 0; }\\n\\t\\t<\\/style>\\n\\t\\t\\n\\t\\t<span class=\\\"readonly\\\"><h1>Social GK5<small>ver. 1.2.5<\\/small><\\/h1><p>GK5 is one product of the next generation of GavickPro extensions designed exclusively for Joomla 3+.<\\/p><p>Social GK5 combines functionalities from FB GK4, Gplus GK4 and completely new support for data source from a Twitter portal. Social GK5 supports the most popular services like: Facebook, Google+ and Twitter. This module allows visitors to connect directly and to promote your brand on the most popular social portals.<\\/p> <p class=\\\"homepage\\\"><a target=\\\"_blank\\\" href=\\\"https:\\/\\/www.gavick.com\\/social-gk5.html\\\">Learn more at the Social GK5 project website.<\\/a><\\/p><p class=\\\"license\\\">Social GK5 is released under the <a href=\\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\\" target=\\\"_blank\\\">GNU\\/GPL v2 license.<\\/a><\\/p><\\/span><\\/span>\\n\\t\",\"group\":\"\",\"filename\":\"mod_social_gk5\"}',	'{\"automatic_module_id\":\"1\",\"module_id\":\"gk-social-1\",\"moduleclass_sfx\":\"\",\"cookie_conset\":\"0\",\"module_data_source\":\"fb\",\"twitter_consumer_key\":\"Please visit twitter.com to generate keys\",\"twitter_consumer_secret\":\"Please visit twitter.com to generate keys\",\"twitter_user_token\":\"Please visit twitter.com to generate keys\",\"twitter_user_secret\":\"Please visit twitter.com to generate keys\",\"twitter_search_query\":\"gavickpro\",\"twitter_tweet_amount\":\"10\",\"twitter_tweet_style\":\"search\",\"twitter_rows\":\"5\",\"twitter_columns\":\"1\",\"twitter_use_css\":\"1\",\"twitter_show_uname\":\"1\",\"twitter_show_fname\":\"1\",\"twitter_show_actions\":\"1\",\"twitter_show_avatar\":\"1\",\"twitter_time_mode\":\"cdate\",\"twitter_cache\":\"1\",\"twitter_cache_time\":\"10\",\"gplus_user\":\"https:\\/\\/plus.google.com\\/+gavickpro\",\"gplus_badge_style\":\"standard_badge\",\"gplus_badge_layout\":\"portrait\",\"gplus_cover_photo\":\"true\",\"gplus_tagline\":\"true\",\"gplus_badge_width\":\"300\",\"gplus_badge_color\":\"light\",\"gplus_lang_code\":\"en\",\"gplus_custom_name\":\"\",\"gplus_icon_size\":\"32\",\"fb_auto_url\":\"false\",\"fb_site\":\"www.yourdomain.com\",\"fb_data_source\":\"activity_feed\",\"fb_code_type\":\"HTML5\",\"fb_language\":\"en_US\",\"fb_width\":\"300\",\"fb_height\":\"300\",\"fb_header\":\"true\",\"fb_colorscheme\":\"light\",\"fb_recommendations\":\"false\",\"fb_link_target\":\"_blank\",\"fb_max_age\":\"0\",\"fb_number_comments\":\"10\",\"fb_width_comments\":\"500\",\"fb_only_number\":\"false\",\"fb_comments_colorscheme\":\"light\",\"fb_only_number_add\":\"awesome comments\",\"fb_only_number_url\":\"false\",\"fb_facepile_width\":\"200\",\"fb_facepile_num_rows\":\"2\",\"fb_facepile_colorscheme\":\"light\",\"fb_facepile_size\":\"medium\",\"fb_likebox_width\":\"300\",\"fb_likebox_height\":\"600\",\"fb_likebox_colorscheme\":\"light\",\"fb_likebox_header\":\"true\",\"fb_likebox_show_border\":\"true\",\"fb_likebox_faces\":\"true\",\"fb_likebox_stream\":\"true\",\"fb_rec_width\":\"300\",\"fb_rec_height\":\"500\",\"fb_rec_header\":\"true\",\"fb_rec_colorscheme\":\"light\",\"fb_rec_max_age\":\"0\",\"fb_rec_link_target\":\"_blank\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10006,	'Grid GK5',	'module',	'mod_grid_gk5',	'',	0,	1,	0,	0,	'{\"name\":\"Grid GK5\",\"type\":\"module\",\"creationDate\":\"07\\/05\\/2014\",\"author\":\"GavickPro\",\"copyright\":\"Copyright (C) 2014 GavickPro. All rights reserved.\",\"authorEmail\":\"info@gavick.com\",\"authorUrl\":\"www.gavickpro.com\",\"version\":\"1.2.1\",\"description\":\"\\n\\t\\t<style type=\\\"text\\/css\\\">\\n\\t\\t\\tspan.readonly { padding: 10px; font-family: Arial; font-size:13px !important; font-weight: normal !important; text-align: justify; color: #4d4d4d; line-height: 24px; }\\n\\t\\t\\tspan.readonly h1 { clear:both; font-family: Georgia, sans-serif; font-size:38px; margin:30px 20px 23px; padding:0px 0px 24px 10px; color:#333; border-bottom: 1px solid #eee; font-weight: normal; }\\n\\t\\t\\tspan.tooltip-content { display: none; }\\n\\t\\t\\t.tip-text span.readonly { display: none; }\\n\\t\\t\\t.tip-text span.tooltip-content { display: block; }\\n\\t\\t\\tspan.readonly p { margin: 0 26px 10px }\\n\\t\\t\\tspan.readonly p a { color: #2F4C6D }\\n\\t\\t\\tspan.readonly p.homepage { margin-top: 30px }\\n\\t\\t\\tspan.readonly p.license { border-top: 1px solid #eee; font-size: 11px; margin: 30px 26px 0; padding: 6px 0; }\\n\\t\\t<\\/style>\\n\\t\\t\\n\\t\\t<span class=\\\"readonly\\\"><h1>Grid GK5<small>ver. 1.2.1<\\/small><\\/h1><p>GK5 is one product of the next generation of GavickPro extensions designed exclusively for Joomla 2.5+.<\\/p><p>With the Grid GK5 module, you can implement space-saving grid area on websites and incorporate a variety of content types via modules. Thanks to the amazing grid management system we\'ve integrated into the module, Grid GK5 remains easy, intuitive and quick to configure.  With built-in support for module embedding, the possibilities for implementing this new release are unlimited!<\\/p> <p class=\'homepage\'><a href=\'http:\\/\\/www.gavick.com\\/documentation\\/joomla-extensions\\/extensions-for-joomla-1-6\\/grid-gk5-module\\/\' target=\'_blank\'>Learn more at the Grid GK5 project website.<\\/a><\\/p><p class=\'license\'>Grid GK5 is released under the <a target=\\\"_blank\\\" href=\\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\\">GNU\\/GPL v2 license.<\\/a><\\/p><\\/span>\\n\\t\\t<span class=\'tooltip-content\'>Advanced grid module for Joomla! 3.x<\\/span>\\n\\t\",\"group\":\"\",\"filename\":\"mod_grid_gk5\"}',	'{\"module_id\":\"\",\"moduleclass_sfx\":\"\",\"grid_margin\":\"0\",\"grid_border\":\"none\",\"grid_proportions_desktop\":\"1\",\"grid_proportions_tablet\":\"1\",\"grid_proportions_mobile\":\"1\",\"animation\":\"1\",\"animation_speed\":\"normal\",\"animation_random\":\"0\",\"animation_type\":\"opacity\",\"tablet_width\":\"840\",\"mobile_width\":\"600\",\"useCSS\":\"1\",\"useScript\":\"1\",\"engine_mode\":\"mootools\",\"include_jquery\":\"0\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10007,	'System - NS Font Awesome',	'plugin',	'ns_fontawesome',	'system',	0,	0,	1,	0,	'{\"name\":\"System - NS Font Awesome\",\"type\":\"plugin\",\"creationDate\":\"27 Dec 2013\",\"author\":\"Natural Selection Web Design LLC\",\"copyright\":\"\",\"authorEmail\":\"info@nswd.co\",\"authorUrl\":\"http:\\/\\/nswd.co\",\"version\":\"1.6\",\"description\":\" NS Font Awesome automatically inserts glyph icons into standard html elements using CSS. No icons to load or manually insert!  If you use NS FontAwesome please post a review on the  <a href=\'http:\\/\\/extensions.joomla.org\\/write-review\\/review\\/add?extension_id=8063\' target=\'_blank\'>Joomla! Extensions Directory<\\/a>.\",\"group\":\"\",\"filename\":\"ns_fontawesome\"}',	'[]',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10008,	'MOD_FANCYPANTSACCORDION',	'module',	'mod_fancypantsaccordion',	'',	0,	1,	0,	0,	'{\"name\":\"MOD_FANCYPANTSACCORDION\",\"type\":\"module\",\"creationDate\":\"June 2013\",\"author\":\"Code 7\",\"copyright\":\"Copyright (C) 2013 onwards - Code 7\",\"authorEmail\":\"tristan@code7.co.uk\",\"authorUrl\":\"\",\"version\":\"3.0\",\"description\":\"MOD_FANCYPANTSACCORDION_DESC\",\"group\":\"\",\"filename\":\"mod_fancypantsaccordion\"}',	'{\"load_jquery\":\"1\",\"count\":\"5\",\"ordering\":\"descending\",\"poptotop\":\"0\",\"firstopen\":\"0\",\"whichopen\":\"0\",\"readmores\":\"0\",\"render\":\"0\",\"close_buttons\":\"0\",\"showCat\":\"0\",\"feat\":\"0\",\"headingSize\":\"\",\"headingHeight\":\"\",\"catSize\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10009,	'MOD_RESLIDER',	'module',	'mod_reslider',	'',	0,	1,	0,	0,	'{\"name\":\"MOD_RESLIDER\",\"type\":\"module\",\"creationDate\":\"April 2012\",\"author\":\"Code 7\",\"copyright\":\"Copyright (C) 2012 onwards - Code 7\",\"authorEmail\":\"tristan@code7.co.uk\",\"authorUrl\":\"\",\"version\":\"2.0.8\",\"description\":\"MOD_RESLIDER_DESC\",\"group\":\"\",\"filename\":\"mod_reslider\"}',	'{\"load_jquery\":\"1\",\"fadeorslide\":\"0\",\"uselinks\":\"1\",\"directionNav\":\"0\",\"controlNav\":\"0\",\"keyboardNav\":\"0\",\"direction\":\"0\",\"slidespeed\":\"7000\",\"animatespeed\":\"600\",\"randomorder\":\"0\",\"image1alt\":\"\",\"image1cap\":\"\",\"image1link\":\"\",\"image1customlink\":\"\",\"image2alt\":\"\",\"image2cap\":\"\",\"image2link\":\"\",\"image2customlink\":\"\",\"image3alt\":\"\",\"image3cap\":\"\",\"image3link\":\"\",\"image3customlink\":\"\",\"image4alt\":\"\",\"image4cap\":\"\",\"image4link\":\"\",\"image4customlink\":\"\",\"image5alt\":\"\",\"image5cap\":\"\",\"image5link\":\"\",\"image5customlink\":\"\",\"image6alt\":\"\",\"image6cap\":\"\",\"image6link\":\"\",\"image6customlink\":\"\",\"image7alt\":\"\",\"image7cap\":\"\",\"image7link\":\"\",\"image7customlink\":\"\",\"image8alt\":\"\",\"image8cap\":\"\",\"image8link\":\"\",\"image8customlink\":\"\",\"image9alt\":\"\",\"image9cap\":\"\",\"image9link\":\"\",\"image9customlink\":\"\",\"image10alt\":\"\",\"image10cap\":\"\",\"image10link\":\"\",\"image10customlink\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10010,	'COM_PAGEBUILDER',	'component',	'com_pagebuilder',	'',	1,	1,	0,	0,	'{\"name\":\"COM_PAGEBUILDER\",\"type\":\"component\",\"creationDate\":\"04\\/06\\/2015\",\"author\":\"JoomlaShine.com\",\"copyright\":\"Copyright (c) 2013 - JoomlaShine.com\",\"authorEmail\":\"support@joomlashine.com\",\"authorUrl\":\"http:\\/\\/www.joomlashine.com\",\"version\":\"1.0.7\",\"description\":\"COM_PAGEBUILDER_DESC\",\"group\":\"\"}',	'{}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10011,	'System - JSN PageBuilder',	'plugin',	'pagebuilder',	'system',	0,	1,	1,	0,	'{\"name\":\"System - JSN PageBuilder\",\"type\":\"plugin\",\"creationDate\":\"04/06/2015\",\"author\":\"JoomlaShine.com\",\"copyright\":\"Copyright (c) 2012 - JoomlaShine.com\",\"authorEmail\":\"support@joomlashine.com\",\"authorUrl\":\"http://www.joomlashine.com\",\"version\":\"1.0.7\",\"description\":\"System - JSN PageBuilder\",\"group\":\"\",\"filename\":\"pagebuilder\",\"dependency\":[\"pagebuilder\"]}',	'{\"pagebuilder\":\"pagebuilder\",\"shortcodes\":\"pb_accordion:accordion|pb_accordion_item:element|pb_alert:alert|pb_audio:audio|pb_button:button|pb_buttonbar:buttonbar|pb_buttonbar_item:element|pb_carousel:carousel|pb_carousel_item:element|pb_divider:divider|pb_googlemap:googlemap|pb_googlemap_item:element|pb_heading:heading|pb_image:image|pb_list_item:element|pb_list:list|pb_module:module|pb_pricingtable_item:element|pb_pricingtable:pricingtable|pb_progressbar_item:element|pb_progressbar:progressbar|pb_progresscircle:progresscircle|pb_promobox:promobox|pb_qrcode:qrcode|pb_tab_item:element|pb_tab:tab|pb_table_item:element|pb_table:table|pb_testimonial_item:element|pb_testimonial:testimonial|pb_text:text|pb_tooltip:tooltip|pb_video:video|pb_validate_file_item:helpers|pb_pricingtable_item_item:element|pb_pricingtableattr_item:pricingtableattr|pb_helper_item:helpers|pb_column:column|pb_row:row\",\"articles\":[]}',	'[\"pagebuilder\"]',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10012,	'Button - JSN PageBuilder',	'plugin',	'pagebuilder',	'editors-xtd',	0,	1,	1,	0,	'{\"name\":\"Button - JSN PageBuilder\",\"type\":\"plugin\",\"creationDate\":\"04/06/2015\",\"author\":\"JoomlaShine.com\",\"copyright\":\"Copyright (c) 2008 - 2013 - JoomlaShine.com\",\"authorEmail\":\"admin@joomlashine.com\",\"authorUrl\":\"http://www.joomlashine.com\",\"version\":\"1.0.7\",\"description\":\"Editor button plugin to ativate JSN PageBuilder\",\"group\":\"\",\"filename\":\"pagebuilder\",\"dependency\":[\"pagebuilder\"]}',	'{\"pagebuilder\":\"pagebuilder\"}',	'[\"pagebuilder\"]',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10013,	'JSN PageBuilder extended - Default Elements',	'plugin',	'defaultelements',	'jsnpagebuilder',	0,	1,	1,	1,	'{\"name\":\"JSN PageBuilder extended - Default Elements\",\"type\":\"plugin\",\"creationDate\":\"04/06/2015\",\"author\":\"JoomlaShine.com\",\"copyright\":\"Copyright (c) 2012 - JoomlaShine.com\",\"authorEmail\":\"support@joomlashine.com\",\"authorUrl\":\"http://www.joomlashine.com\",\"version\":\"1.0.7\",\"description\":\"All Default JSN PageBuilder Elements\",\"group\":\"\",\"filename\":\"defaultelements\",\"dependency\":[\"pagebuilder\"]}',	'{\"pagebuilder\":\"pagebuilder\"}',	'[\"pagebuilder\"]',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10014,	'plg_system_jsnframework',	'plugin',	'jsnframework',	'system',	1,	1,	1,	1,	'{\"name\":\"plg_system_jsnframework\",\"type\":\"plugin\",\"creationDate\":\"03/20/2015\",\"author\":\"JoomlaShine.com\",\"copyright\":\"Copyright (C) 2013 JoomlaShine.com. All Rights Reserved.\",\"authorEmail\":\"admin@joomlashine.com\",\"authorUrl\":\"www.joomlashine.com\",\"version\":\"1.5.2\",\"description\":\"PLG_SYSTEM_JSNFRAMEWORK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jsnframework\",\"dependency\":[\"pagebuilder\"]}',	'{\"pagebuilder\":\"pagebuilder\"}',	'[\"pagebuilder\"]',	'',	0,	'0000-00-00 00:00:00',	-9999,	0),
(10015,	'SP Page Builder',	'component',	'com_sppagebuilder',	'',	1,	1,	0,	0,	'{\"name\":\"SP Page Builder\",\"type\":\"component\",\"creationDate\":\"Sep 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright @ 2010 - 2015 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"1.0.3\",\"description\":\"Most powerful drag and drop page builder for Joomla 3.3 or later.\",\"group\":\"\",\"filename\":\"sppagebuilder\"}',	'{}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10016,	'mod_sppagebuilder_icons',	'module',	'mod_sppagebuilder_icons',	'',	1,	1,	2,	0,	'{\"name\":\"mod_sppagebuilder_icons\",\"type\":\"module\",\"creationDate\":\"August 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.0.2\",\"description\":\"MOD_SPPAGEBUILDER_ICONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sppagebuilder_icons\"}',	'[]',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10017,	'mod_sppagebuilder_admin_menu',	'module',	'mod_sppagebuilder_admin_menu',	'',	1,	1,	2,	0,	'{\"name\":\"mod_sppagebuilder_admin_menu\",\"type\":\"module\",\"creationDate\":\"August 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.0.2\",\"description\":\"MOD_SPPAGEBUILDER_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sppagebuilder_admin_menu\"}',	'[]',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10018,	'SP Simple Portfolio',	'component',	'com_spsimpleportfolio',	'',	1,	1,	0,	0,	'{\"name\":\"SP Simple Portfolio\",\"type\":\"component\",\"creationDate\":\"December 2015\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (c) 2010- 2015 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"1.1\",\"description\":\"Simple Portfolio Component for Joomla 3.3+\",\"group\":\"\",\"filename\":\"spsimpleportfolio\"}',	'{}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0),
(10019,	'SP Simple Portfolio',	'module',	'mod_spsimpleportfolio',	'',	0,	1,	0,	0,	'{\"name\":\"SP Simple Portfolio\",\"type\":\"module\",\"creationDate\":\"December 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.1\",\"description\":\"Module to display latest item from SP Simple Portfolio\",\"group\":\"\",\"filename\":\"mod_spsimpleportfolio\"}',	'{\"show_filter\":\"1\",\"layout_type\":\"default\",\"columns\":\"3\",\"thumbnail_type\":\"masonry\",\"limit\":\"12\",\"cache\":\"1\",\"cache_time\":\"900\"}',	'',	'',	0,	'0000-00-00 00:00:00',	0,	0);

DROP TABLE IF EXISTS `p20ne_finder_filters`;
CREATE TABLE `p20ne_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links`;
CREATE TABLE `p20ne_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_terms0`;
CREATE TABLE `p20ne_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_terms1`;
CREATE TABLE `p20ne_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_terms2`;
CREATE TABLE `p20ne_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_terms3`;
CREATE TABLE `p20ne_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_terms4`;
CREATE TABLE `p20ne_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_terms5`;
CREATE TABLE `p20ne_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_terms6`;
CREATE TABLE `p20ne_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_terms7`;
CREATE TABLE `p20ne_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_terms8`;
CREATE TABLE `p20ne_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_terms9`;
CREATE TABLE `p20ne_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_termsa`;
CREATE TABLE `p20ne_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_termsb`;
CREATE TABLE `p20ne_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_termsc`;
CREATE TABLE `p20ne_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_termsd`;
CREATE TABLE `p20ne_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_termse`;
CREATE TABLE `p20ne_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_links_termsf`;
CREATE TABLE `p20ne_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_taxonomy`;
CREATE TABLE `p20ne_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1,	0,	'ROOT',	0,	0,	0);

DROP TABLE IF EXISTS `p20ne_finder_taxonomy_map`;
CREATE TABLE `p20ne_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_terms`;
CREATE TABLE `p20ne_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_terms_common`;
CREATE TABLE `p20ne_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_finder_terms_common` (`term`, `language`) VALUES
('a',	'en'),
('about',	'en'),
('after',	'en'),
('ago',	'en'),
('all',	'en'),
('am',	'en'),
('an',	'en'),
('and',	'en'),
('ani',	'en'),
('any',	'en'),
('are',	'en'),
('aren\'t',	'en'),
('as',	'en'),
('at',	'en'),
('be',	'en'),
('but',	'en'),
('by',	'en'),
('for',	'en'),
('from',	'en'),
('get',	'en'),
('go',	'en'),
('how',	'en'),
('if',	'en'),
('in',	'en'),
('into',	'en'),
('is',	'en'),
('isn\'t',	'en'),
('it',	'en'),
('its',	'en'),
('me',	'en'),
('more',	'en'),
('most',	'en'),
('must',	'en'),
('my',	'en'),
('new',	'en'),
('no',	'en'),
('none',	'en'),
('not',	'en'),
('noth',	'en'),
('nothing',	'en'),
('of',	'en'),
('off',	'en'),
('often',	'en'),
('old',	'en'),
('on',	'en'),
('onc',	'en'),
('once',	'en'),
('onli',	'en'),
('only',	'en'),
('or',	'en'),
('other',	'en'),
('our',	'en'),
('ours',	'en'),
('out',	'en'),
('over',	'en'),
('page',	'en'),
('she',	'en'),
('should',	'en'),
('small',	'en'),
('so',	'en'),
('some',	'en'),
('than',	'en'),
('thank',	'en'),
('that',	'en'),
('the',	'en'),
('their',	'en'),
('theirs',	'en'),
('them',	'en'),
('then',	'en'),
('there',	'en'),
('these',	'en'),
('they',	'en'),
('this',	'en'),
('those',	'en'),
('thus',	'en'),
('time',	'en'),
('times',	'en'),
('to',	'en'),
('too',	'en'),
('true',	'en'),
('under',	'en'),
('until',	'en'),
('up',	'en'),
('upon',	'en'),
('use',	'en'),
('user',	'en'),
('users',	'en'),
('veri',	'en'),
('version',	'en'),
('very',	'en'),
('via',	'en'),
('want',	'en'),
('was',	'en'),
('way',	'en'),
('were',	'en'),
('what',	'en'),
('when',	'en'),
('where',	'en'),
('whi',	'en'),
('which',	'en'),
('who',	'en'),
('whom',	'en'),
('whose',	'en'),
('why',	'en'),
('wide',	'en'),
('will',	'en'),
('with',	'en'),
('within',	'en'),
('without',	'en'),
('would',	'en'),
('yes',	'en'),
('yet',	'en'),
('you',	'en'),
('your',	'en'),
('yours',	'en');

DROP TABLE IF EXISTS `p20ne_finder_tokens`;
CREATE TABLE `p20ne_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_tokens_aggregate`;
CREATE TABLE `p20ne_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_finder_types`;
CREATE TABLE `p20ne_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_jsn_pagebuilder_config`;
CREATE TABLE `p20ne_jsn_pagebuilder_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_jsn_pagebuilder_config` (`name`, `value`) VALUES
('live_update_notification',	'0');

DROP TABLE IF EXISTS `p20ne_jsn_pagebuilder_content_custom_css`;
CREATE TABLE `p20ne_jsn_pagebuilder_content_custom_css` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content` bigint(20) unsigned NOT NULL DEFAULT '0',
  `css_key` varchar(255) DEFAULT NULL,
  `css_value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_jsn_pagebuilder_messages`;
CREATE TABLE `p20ne_jsn_pagebuilder_messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  UNIQUE KEY `message` (`msg_screen`,`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_languages`;
CREATE TABLE `p20ne_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1,	'en-GB',	'English (UK)',	'English (UK)',	'en',	'en',	'',	'',	'',	'',	1,	1,	1);

DROP TABLE IF EXISTS `p20ne_menu`;
CREATE TABLE `p20ne_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1,	'',	'Menu_Item_Root',	'root',	'',	'',	'',	'',	1,	0,	0,	0,	0,	'0000-00-00 00:00:00',	0,	0,	'',	0,	'',	0,	85,	0,	'*',	0),
(2,	'menu',	'com_banners',	'Banners',	'',	'Banners',	'index.php?option=com_banners',	'component',	0,	1,	1,	4,	0,	'0000-00-00 00:00:00',	0,	0,	'class:banners',	0,	'',	21,	30,	0,	'*',	1),
(3,	'menu',	'com_banners',	'Banners',	'',	'Banners/Banners',	'index.php?option=com_banners',	'component',	0,	2,	2,	4,	0,	'0000-00-00 00:00:00',	0,	0,	'class:banners',	0,	'',	22,	23,	0,	'*',	1),
(4,	'menu',	'com_banners_categories',	'Categories',	'',	'Banners/Categories',	'index.php?option=com_categories&extension=com_banners',	'component',	0,	2,	2,	6,	0,	'0000-00-00 00:00:00',	0,	0,	'class:banners-cat',	0,	'',	24,	25,	0,	'*',	1),
(5,	'menu',	'com_banners_clients',	'Clients',	'',	'Banners/Clients',	'index.php?option=com_banners&view=clients',	'component',	0,	2,	2,	4,	0,	'0000-00-00 00:00:00',	0,	0,	'class:banners-clients',	0,	'',	26,	27,	0,	'*',	1),
(6,	'menu',	'com_banners_tracks',	'Tracks',	'',	'Banners/Tracks',	'index.php?option=com_banners&view=tracks',	'component',	0,	2,	2,	4,	0,	'0000-00-00 00:00:00',	0,	0,	'class:banners-tracks',	0,	'',	28,	29,	0,	'*',	1),
(7,	'menu',	'com_contact',	'Contacts',	'',	'Contacts',	'index.php?option=com_contact',	'component',	0,	1,	1,	8,	0,	'0000-00-00 00:00:00',	0,	0,	'class:contact',	0,	'',	31,	36,	0,	'*',	1),
(8,	'menu',	'com_contact',	'Contacts',	'',	'Contacts/Contacts',	'index.php?option=com_contact',	'component',	0,	7,	2,	8,	0,	'0000-00-00 00:00:00',	0,	0,	'class:contact',	0,	'',	32,	33,	0,	'*',	1),
(9,	'menu',	'com_contact_categories',	'Categories',	'',	'Contacts/Categories',	'index.php?option=com_categories&extension=com_contact',	'component',	0,	7,	2,	6,	0,	'0000-00-00 00:00:00',	0,	0,	'class:contact-cat',	0,	'',	34,	35,	0,	'*',	1),
(10,	'menu',	'com_messages',	'Messaging',	'',	'Messaging',	'index.php?option=com_messages',	'component',	0,	1,	1,	15,	0,	'0000-00-00 00:00:00',	0,	0,	'class:messages',	0,	'',	37,	42,	0,	'*',	1),
(11,	'menu',	'com_messages_add',	'New Private Message',	'',	'Messaging/New Private Message',	'index.php?option=com_messages&task=message.add',	'component',	0,	10,	2,	15,	0,	'0000-00-00 00:00:00',	0,	0,	'class:messages-add',	0,	'',	38,	39,	0,	'*',	1),
(12,	'menu',	'com_messages_read',	'Read Private Message',	'',	'Messaging/Read Private Message',	'index.php?option=com_messages',	'component',	0,	10,	2,	15,	0,	'0000-00-00 00:00:00',	0,	0,	'class:messages-read',	0,	'',	40,	41,	0,	'*',	1),
(13,	'menu',	'com_newsfeeds',	'News Feeds',	'',	'News Feeds',	'index.php?option=com_newsfeeds',	'component',	0,	1,	1,	17,	0,	'0000-00-00 00:00:00',	0,	0,	'class:newsfeeds',	0,	'',	43,	48,	0,	'*',	1),
(14,	'menu',	'com_newsfeeds_feeds',	'Feeds',	'',	'News Feeds/Feeds',	'index.php?option=com_newsfeeds',	'component',	0,	13,	2,	17,	0,	'0000-00-00 00:00:00',	0,	0,	'class:newsfeeds',	0,	'',	44,	45,	0,	'*',	1),
(15,	'menu',	'com_newsfeeds_categories',	'Categories',	'',	'News Feeds/Categories',	'index.php?option=com_categories&extension=com_newsfeeds',	'component',	0,	13,	2,	6,	0,	'0000-00-00 00:00:00',	0,	0,	'class:newsfeeds-cat',	0,	'',	46,	47,	0,	'*',	1),
(16,	'menu',	'com_redirect',	'Redirect',	'',	'Redirect',	'index.php?option=com_redirect',	'component',	0,	1,	1,	24,	0,	'0000-00-00 00:00:00',	0,	0,	'class:redirect',	0,	'',	55,	56,	0,	'*',	1),
(17,	'menu',	'com_search',	'Basic Search',	'',	'Basic Search',	'index.php?option=com_search',	'component',	0,	1,	1,	19,	0,	'0000-00-00 00:00:00',	0,	0,	'class:search',	0,	'',	53,	54,	0,	'*',	1),
(21,	'menu',	'com_finder',	'Smart Search',	'',	'Smart Search',	'index.php?option=com_finder',	'component',	0,	1,	1,	27,	0,	'0000-00-00 00:00:00',	0,	0,	'class:finder',	0,	'',	51,	52,	0,	'*',	1),
(22,	'menu',	'com_joomlaupdate',	'Joomla! Update',	'',	'Joomla! Update',	'index.php?option=com_joomlaupdate',	'component',	0,	1,	1,	28,	0,	'0000-00-00 00:00:00',	0,	0,	'class:joomlaupdate',	0,	'',	49,	50,	0,	'*',	1),
(101,	'mainmenu',	'Home',	'home',	'',	'home',	'index.php?option=com_content&view=article&id=6',	'component',	1,	1,	1,	22,	0,	'0000-00-00 00:00:00',	0,	1,	'',	0,	'{\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"101\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',	1,	6,	1,	'*',	0),
(102,	'mainmenu',	'About Us',	'about-us',	'',	'about-us',	'index.php?option=com_content&view=article&id=2',	'component',	-2,	1,	1,	22,	0,	'0000-00-00 00:00:00',	0,	1,	'',	0,	'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',	7,	8,	0,	'*',	0),
(103,	'mainmenu',	'News',	'news',	'',	'news',	'index.php?option=com_content&view=category&layout=blog&id=8',	'component',	-2,	1,	1,	22,	0,	'0000-00-00 00:00:00',	0,	1,	'',	0,	'{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"0\",\"num_columns\":\"1\",\"num_links\":\"3\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"published\",\"show_pagination\":\"0\",\"show_pagination_results\":\"0\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"info_bloc_position\":\"0\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',	11,	12,	0,	'*',	0),
(104,	'mainmenu',	'Login',	'login',	'',	'login',	'index.php?option=com_users&view=login',	'component',	-2,	1,	1,	25,	0,	'0000-00-00 00:00:00',	0,	4,	'',	0,	'{\"login_redirect_url\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',	15,	16,	0,	'*',	0),
(105,	'mainmenu',	'Edit Profile',	'edit-profile',	'',	'edit-profile',	'index.php?option=com_users&view=profile&layout=edit',	'component',	-2,	1,	1,	25,	0,	'0000-00-00 00:00:00',	0,	2,	'',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',	17,	18,	0,	'*',	0),
(106,	'mainmenu',	'Contact Us',	'contact-us',	'',	'contact-us',	'index.php?option=com_contact&view=contact&id=1',	'component',	-2,	1,	1,	8,	0,	'0000-00-00 00:00:00',	0,	1,	'',	0,	'{\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',	13,	14,	0,	'*',	0),
(107,	'mainmenu',	'Administrator',	'2012-01-04-04-05-24',	'',	'2012-01-04-04-05-24',	'administrator',	'url',	-2,	1,	1,	0,	0,	'0000-00-00 00:00:00',	1,	3,	'',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',	57,	58,	0,	'*',	0),
(109,	'mainmenu',	'Create an Article',	'create-an-article',	'',	'create-an-article',	'index.php?option=com_content&view=form&layout=edit',	'component',	-2,	1,	1,	22,	0,	'0000-00-00 00:00:00',	0,	3,	'',	0,	'{\"enable_category\":\"0\",\"catid\":\"2\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',	19,	20,	0,	'*',	0),
(110,	'menu',	'com_tags',	'com-tags',	'',	'com-tags',	'index.php?option=com_tags',	'component',	0,	1,	1,	29,	0,	'0000-00-00 00:00:00',	0,	1,	'class:tags',	0,	'',	59,	60,	0,	'',	1),
(111,	'main',	'com_postinstall',	'Post-installation messages',	'',	'Post-installation messages',	'index.php?option=com_postinstall',	'component',	0,	1,	1,	32,	0,	'0000-00-00 00:00:00',	0,	1,	'class:postinstall',	0,	'',	61,	62,	0,	'*',	1),
(112,	'mainmenu',	'Site Settings',	'site-settings',	'',	'home/site-settings',	'index.php?option=com_config&view=config&controller=config.display.config',	'component',	-2,	101,	2,	23,	0,	'0000-00-00 00:00:00',	0,	6,	'',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',	2,	3,	0,	'*',	0),
(113,	'mainmenu',	'Template Settings',	'template-settings',	'',	'home/template-settings',	'index.php?option=com_config&view=templates&controller=config.display.templates',	'component',	-2,	101,	2,	23,	0,	'0000-00-00 00:00:00',	0,	6,	'',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',	4,	5,	0,	'*',	0),
(114,	'sidemenu',	'Homepage',	'homepage',	'',	'homepage',	'index.php?option=com_content&view=article&id=6',	'component',	1,	1,	1,	22,	0,	'0000-00-00 00:00:00',	0,	1,	'',	0,	'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"114\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',	63,	64,	0,	'*',	0),
(115,	'sidemenu',	'About',	'about',	'',	'about',	'index.php?option=com_content&view=article&id=2',	'component',	1,	1,	1,	22,	0,	'0000-00-00 00:00:00',	0,	1,	'',	0,	'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',	65,	66,	0,	'*',	0),
(116,	'main',	'COM_PAGEBUILDER',	'com-pagebuilder',	'',	'com-pagebuilder',	'index.php?option=com_pagebuilder',	'component',	0,	1,	1,	10010,	0,	'0000-00-00 00:00:00',	0,	1,	'class:component',	0,	'',	67,	74,	0,	'',	1),
(117,	'main',	'COM_PAGEBUILDER_PAGE_MANAGER',	'com-pagebuilder-page-manager',	'',	'com-pagebuilder/com-pagebuilder-page-manager',	'index.php?option=com_pagebuilder&view=manager',	'component',	0,	116,	2,	10010,	0,	'0000-00-00 00:00:00',	0,	1,	'components/com_pagebuilder/assets/images/icons-16/icon-monitor.png',	0,	'',	68,	69,	0,	'',	1),
(118,	'main',	'COM_PAGEBUILDER_CONFIGURATION',	'com-pagebuilder-configuration',	'',	'com-pagebuilder/com-pagebuilder-configuration',	'index.php?option=com_pagebuilder&view=configuration',	'component',	0,	116,	2,	10010,	0,	'0000-00-00 00:00:00',	0,	1,	'components/com_pagebuilder/assets/images/icons-16/icon-cog.png',	0,	'',	70,	71,	0,	'',	1),
(119,	'main',	'COM_PAGEBUILDER_ABOUT',	'com-pagebuilder-about',	'',	'com-pagebuilder/com-pagebuilder-about',	'index.php?option=com_pagebuilder&view=about',	'component',	0,	116,	2,	10010,	0,	'0000-00-00 00:00:00',	0,	1,	'components/com_poweradmin/assets/images/icons-16/icon-star.png',	0,	'',	72,	73,	0,	'',	1),
(120,	'side2',	'About',	'ab',	'',	'ab',	'index.php?option=com_content&view=article&id=2',	'component',	1,	1,	1,	22,	0,	'0000-00-00 00:00:00',	0,	1,	'',	0,	'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',	75,	76,	0,	'*',	0),
(121,	'side2',	'Who we are',	'who-we-are',	'',	'who-we-are',	'index.php?option=com_content&view=article&id=6',	'component',	1,	1,	1,	22,	0,	'0000-00-00 00:00:00',	0,	1,	'',	0,	'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',	77,	78,	0,	'*',	0),
(122,	'main',	'COM_SPPAGEBUILDER',	'com-sppagebuilder',	'',	'com-sppagebuilder',	'index.php?option=com_sppagebuilder',	'component',	0,	1,	1,	10015,	0,	'0000-00-00 00:00:00',	0,	1,	'class:component',	0,	'',	79,	80,	0,	'',	1),
(123,	'mainmenu',	'UBK News',	'ubk-news',	'',	'ubk-news',	'index.php?option=com_sppagebuilder&view=page&id=1',	'component',	-2,	1,	1,	10015,	0,	'0000-00-00 00:00:00',	0,	1,	'',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',	9,	10,	0,	'*',	0),
(124,	'main',	'COM_SPSIMPLEPORTFOLIO',	'com-spsimpleportfolio',	'',	'com-spsimpleportfolio',	'index.php?option=com_spsimpleportfolio',	'component',	0,	1,	1,	10018,	0,	'0000-00-00 00:00:00',	0,	1,	'class:component',	0,	'',	81,	82,	0,	'',	1),
(125,	'mainmenu',	'Services',	'services',	'',	'services',	'index.php?option=com_sppagebuilder&view=page&id=2',	'component',	-2,	1,	1,	10015,	0,	'0000-00-00 00:00:00',	0,	1,	'',	0,	'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',	83,	84,	0,	'*',	0);

DROP TABLE IF EXISTS `p20ne_menu_types`;
CREATE TABLE `p20ne_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1,	'mainmenu',	'Main Menu',	'The main menu for the site'),
(2,	'sidemenu',	'Side Menu',	'in offcanvas'),
(3,	'side2',	'MenuAbout',	'About Us');

DROP TABLE IF EXISTS `p20ne_messages`;
CREATE TABLE `p20ne_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_messages_cfg`;
CREATE TABLE `p20ne_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_modules`;
CREATE TABLE `p20ne_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1,	0,	'Main Menu',	'',	'',	1,	'position-1',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_menu',	1,	1,	'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(2,	0,	'Login',	'',	'',	1,	'login',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_login',	1,	1,	'',	1,	'*'),
(3,	49,	'Popular Articles',	'',	'',	2,	'cpanel',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_popular',	3,	1,	'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"6\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	1,	'*'),
(4,	50,	'Recently Added Articles',	'',	'',	1,	'cpanel',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_latest',	3,	1,	'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"6\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	1,	'*'),
(8,	0,	'Toolbar',	'',	'',	1,	'toolbar',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_toolbar',	3,	1,	'',	1,	'*'),
(9,	0,	'Quick Icons',	'',	'',	1,	'icon',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_quickicon',	3,	1,	'',	1,	'*'),
(10,	48,	'Logged-in Users',	'',	'',	3,	'cpanel',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_logged',	3,	1,	'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"6\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	1,	'*'),
(12,	0,	'Admin Menu',	'',	'',	1,	'menu',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_menu',	3,	1,	'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',	1,	'*'),
(13,	0,	'Admin Submenu',	'',	'',	1,	'submenu',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_submenu',	3,	1,	'',	1,	'*'),
(14,	0,	'User Status',	'',	'',	2,	'status',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_status',	3,	1,	'',	1,	'*'),
(15,	0,	'Title',	'',	'',	1,	'title',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_title',	3,	1,	'',	1,	'*'),
(16,	0,	'Login Form',	'',	'',	2,	'position-7',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_login',	1,	1,	'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(17,	0,	'Breadcrumbs',	'',	'',	1,	'position-2',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_breadcrumbs',	1,	1,	'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',	0,	'*'),
(79,	0,	'Multilanguage status',	'',	'',	1,	'status',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	0,	'mod_multilangstatus',	3,	1,	'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',	1,	'*'),
(80,	0,	'Search',	'',	'',	-2,	'position-0',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_search',	1,	0,	'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',	0,	'*'),
(82,	0,	'News Flash',	'',	'',	1,	'',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_articles_news',	1,	1,	'{\"catid\":[\"8\"],\"image\":\"0\",\"item_title\":\"1\",\"link_titles\":\"1\",\"item_heading\":\"h4\",\"showLastSeparator\":\"0\",\"readmore\":\"0\",\"count\":\"5\",\"ordering\":\"a.publish_up\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(83,	0,	'Side Module',	'',	'<p>This is a module where you might want to add some more information or an image,  a link to your social media presence, or whatever makes sense for your site.  </p><p>You can edit this module in the module manager. Look for the Side Module.</p>',	1,	'position-7',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	1,	'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',	0,	'*'),
(86,	0,	'Joomla Version',	'',	'',	1,	'footer',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_version',	3,	1,	'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',	1,	'*'),
(87,	0,	'Footer',	'',	'',	1,	'footer',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_footer',	1,	1,	'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(88,	52,	'Image',	'',	'<p><img src=\"images/headers/windows.jpg\" alt=\"\" /></p>',	1,	'position-3',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	0,	'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(89,	51,	'Site Information',	'',	'',	4,	'cpanel',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_stats_admin',	6,	1,	'{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"1\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"6\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	1,	'*'),
(90,	53,	'Release News',	'',	'',	0,	'postinstall',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_feed',	1,	1,	'{\"rssurl\":\"http:\\/\\/www.joomla.org\\/announcements\\/release-news.feed\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	1,	'*'),
(91,	55,	'Social GK5',	'',	'',	1,	'',	276,	'2015-05-07 06:56:57',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	-2,	'mod_social_gk5',	1,	0,	'{\"automatic_module_id\":\"1\",\"module_id\":\"gk-social-1\",\"moduleclass_sfx\":\"\",\"cookie_conset\":\"0\",\"module_data_source\":\"fb\",\"twitter_consumer_key\":\"Please visit twitter.com to generate keys\",\"twitter_consumer_secret\":\"Please visit twitter.com to generate keys\",\"twitter_user_token\":\"Please visit twitter.com to generate keys\",\"twitter_user_secret\":\"Please visit twitter.com to generate keys\",\"twitter_search_query\":\"gavickpro\",\"twitter_tweet_amount\":\"10\",\"twitter_tweet_style\":\"style1\",\"twitter_rows\":\"5\",\"twitter_columns\":\"1\",\"twitter_use_css\":\"1\",\"twitter_show_uname\":\"1\",\"twitter_show_fname\":\"1\",\"twitter_show_actions\":\"1\",\"twitter_show_avatar\":\"1\",\"twitter_time_mode\":\"cdate\",\"twitter_cache\":\"1\",\"twitter_cache_time\":\"10\",\"gplus_user\":\"https:\\/\\/plus.google.com\\/+gavickpro\",\"gplus_badge_style\":\"standard_badge\",\"gplus_badge_layout\":\"portrait\",\"gplus_cover_photo\":\"true\",\"gplus_tagline\":\"true\",\"gplus_badge_width\":\"300\",\"gplus_badge_color\":\"light\",\"gplus_lang_code\":\"en\",\"gplus_custom_name\":\"\",\"gplus_icon_size\":\"32\",\"fb_auto_url\":\"false\",\"fb_site\":\"www.yourdomain.com\",\"fb_app_id\":\"\",\"fb_data_source\":\"activity_feed\",\"fb_code_type\":\"HTML5\",\"fb_language\":\"en_US\",\"fb_width\":\"300\",\"fb_height\":\"300\",\"fb_header\":\"true\",\"fb_colorscheme\":\"light\",\"fb_recommendations\":\"false\",\"fb_link_target\":\"_blank\",\"fb_max_age\":\"0\",\"fb_number_comments\":\"10\",\"fb_width_comments\":\"500\",\"fb_only_number\":\"false\",\"fb_comments_colorscheme\":\"light\",\"fb_only_number_add\":\"awesome comments\",\"fb_only_number_url\":\"false\",\"fb_comments_admin_id\":\"\",\"fb_facepile_width\":\"200\",\"fb_facepile_num_rows\":\"2\",\"fb_facepile_colorscheme\":\"light\",\"fb_facepile_size\":\"medium\",\"fb_likebox_width\":\"300\",\"fb_likebox_height\":\"600\",\"fb_likebox_colorscheme\":\"light\",\"fb_likebox_header\":\"true\",\"fb_likebox_show_border\":\"true\",\"fb_likebox_faces\":\"true\",\"fb_likebox_stream\":\"true\",\"fb_rec_width\":\"300\",\"fb_rec_height\":\"500\",\"fb_rec_header\":\"true\",\"fb_rec_colorscheme\":\"light\",\"fb_rec_max_age\":\"0\",\"fb_rec_link_target\":\"_blank\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(92,	56,	'Grid GK5',	'',	'',	1,	'slider',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_grid_gk5',	1,	0,	'{\"module_id\":\"\",\"moduleclass_sfx\":\"\",\"grid_margin\":\"0\",\"grid_border\":\"none\",\"grid_proportions_desktop\":\"1\",\"grid_proportions_tablet\":\"1\",\"grid_proportions_mobile\":\"1\",\"grid_data\":\"{\\\"blocks\\\":[{\\\"ID\\\":\\\"topleft-1\\\",\\\"COLOR_ID\\\":1,\\\"POSITION\\\":\\\"topleft\\\",\\\"SIZE_D_W\\\":\\\"2\\\",\\\"SIZE_D_H\\\":\\\"1\\\",\\\"SIZE_T_W\\\":\\\"1\\\",\\\"SIZE_T_H\\\":\\\"1\\\",\\\"SIZE_M_W\\\":\\\"1\\\",\\\"SIZE_M_H\\\":\\\"1\\\",\\\"SIZE_DATA\\\":\\\"2,1,1,1,1,1\\\",\\\"POS_D_X\\\":0,\\\"POS_D_Y\\\":0,\\\"POS_T_X\\\":0,\\\"POS_T_Y\\\":0,\\\"POS_M_X\\\":0,\\\"POS_M_Y\\\":0},{\\\"ID\\\":\\\"topright-1\\\",\\\"COLOR_ID\\\":2,\\\"POSITION\\\":\\\"topright\\\",\\\"SIZE_D_W\\\":\\\"4\\\",\\\"SIZE_D_H\\\":\\\"2\\\",\\\"SIZE_T_W\\\":\\\"1\\\",\\\"SIZE_T_H\\\":\\\"1\\\",\\\"SIZE_M_W\\\":\\\"1\\\",\\\"SIZE_M_H\\\":\\\"1\\\",\\\"SIZE_DATA\\\":\\\"4,2,1,1,1,1\\\",\\\"POS_D_X\\\":2,\\\"POS_D_Y\\\":0,\\\"POS_T_X\\\":1,\\\"POS_T_Y\\\":0,\\\"POS_M_X\\\":1,\\\"POS_M_Y\\\":0},{\\\"ID\\\":\\\"middleft-1\\\",\\\"COLOR_ID\\\":3,\\\"POSITION\\\":\\\"middleft\\\",\\\"SIZE_D_W\\\":\\\"2\\\",\\\"SIZE_D_H\\\":\\\"1\\\",\\\"SIZE_T_W\\\":\\\"2\\\",\\\"SIZE_T_H\\\":\\\"1\\\",\\\"SIZE_M_W\\\":\\\"2\\\",\\\"SIZE_M_H\\\":\\\"1\\\",\\\"SIZE_DATA\\\":\\\"2,1,2,1,2,1\\\",\\\"POS_D_X\\\":0,\\\"POS_D_Y\\\":1,\\\"POS_T_X\\\":2,\\\"POS_T_Y\\\":0,\\\"POS_M_X\\\":0,\\\"POS_M_Y\\\":1},{\\\"ID\\\":\\\"middright-1\\\",\\\"COLOR_ID\\\":4,\\\"POSITION\\\":\\\"middright\\\",\\\"SIZE_D_W\\\":\\\"3\\\",\\\"SIZE_D_H\\\":\\\"2\\\",\\\"SIZE_T_W\\\":\\\"1\\\",\\\"SIZE_T_H\\\":\\\"1\\\",\\\"SIZE_M_W\\\":\\\"1\\\",\\\"SIZE_M_H\\\":\\\"1\\\",\\\"SIZE_DATA\\\":\\\"3,2,1,1,1,1\\\",\\\"POS_D_X\\\":0,\\\"POS_D_Y\\\":2,\\\"POS_T_X\\\":0,\\\"POS_T_Y\\\":1,\\\"POS_M_X\\\":0,\\\"POS_M_Y\\\":2},{\\\"ID\\\":\\\"bottleft-1\\\",\\\"COLOR_ID\\\":5,\\\"POSITION\\\":\\\"bottleft\\\",\\\"SIZE_D_W\\\":\\\"2\\\",\\\"SIZE_D_H\\\":\\\"1\\\",\\\"SIZE_T_W\\\":\\\"3\\\",\\\"SIZE_T_H\\\":\\\"1\\\",\\\"SIZE_M_W\\\":\\\"1\\\",\\\"SIZE_M_H\\\":\\\"1\\\",\\\"SIZE_DATA\\\":\\\"2,1,3,1,1,1\\\",\\\"POS_D_X\\\":3,\\\"POS_D_Y\\\":2,\\\"POS_T_X\\\":1,\\\"POS_T_Y\\\":1,\\\"POS_M_X\\\":1,\\\"POS_M_Y\\\":2},{\\\"ID\\\":\\\"bott1-1\\\",\\\"COLOR_ID\\\":6,\\\"POSITION\\\":\\\"bott1\\\",\\\"SIZE_D_W\\\":\\\"1\\\",\\\"SIZE_D_H\\\":\\\"1\\\",\\\"SIZE_T_W\\\":\\\"1\\\",\\\"SIZE_T_H\\\":\\\"1\\\",\\\"SIZE_M_W\\\":\\\"1\\\",\\\"SIZE_M_H\\\":\\\"1\\\",\\\"SIZE_DATA\\\":\\\"1,1,1,1,1,1\\\",\\\"POS_D_X\\\":5,\\\"POS_D_Y\\\":2,\\\"POS_T_X\\\":0,\\\"POS_T_Y\\\":2,\\\"POS_M_X\\\":0,\\\"POS_M_Y\\\":3},{\\\"ID\\\":\\\"bott2-1\\\",\\\"COLOR_ID\\\":7,\\\"POSITION\\\":\\\"bott2\\\",\\\"SIZE_D_W\\\":\\\"1\\\",\\\"SIZE_D_H\\\":\\\"1\\\",\\\"SIZE_T_W\\\":\\\"1\\\",\\\"SIZE_T_H\\\":\\\"1\\\",\\\"SIZE_M_W\\\":\\\"1\\\",\\\"SIZE_M_H\\\":\\\"1\\\",\\\"SIZE_DATA\\\":\\\"1,1,1,1,1,1\\\",\\\"POS_D_X\\\":3,\\\"POS_D_Y\\\":3,\\\"POS_T_X\\\":1,\\\"POS_T_Y\\\":2,\\\"POS_M_X\\\":1,\\\"POS_M_Y\\\":3},{\\\"ID\\\":\\\"bott3-1\\\",\\\"COLOR_ID\\\":8,\\\"POSITION\\\":\\\"bott3\\\",\\\"SIZE_D_W\\\":\\\"2\\\",\\\"SIZE_D_H\\\":\\\"1\\\",\\\"SIZE_T_W\\\":\\\"2\\\",\\\"SIZE_T_H\\\":\\\"1\\\",\\\"SIZE_M_W\\\":\\\"2\\\",\\\"SIZE_M_H\\\":\\\"1\\\",\\\"SIZE_DATA\\\":\\\"2,1,2,1,2,1\\\",\\\"POS_D_X\\\":4,\\\"POS_D_Y\\\":3,\\\"POS_T_X\\\":2,\\\"POS_T_Y\\\":2,\\\"POS_M_X\\\":0,\\\"POS_M_Y\\\":4}],\\\"heights\\\":{\\\"desktop\\\":\\\"4\\\",\\\"tablet\\\":\\\"3\\\",\\\"mobile\\\":\\\"5\\\"}}\",\"animation\":\"1\",\"animation_speed\":\"normal\",\"animation_random\":\"0\",\"animation_type\":\"opacity\",\"tablet_width\":\"840\",\"mobile_width\":\"600\",\"useCSS\":\"1\",\"useScript\":\"1\",\"engine_mode\":\"mootools\",\"include_jquery\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(93,	57,	'Topleft',	'',	'<p><img src=\"images/Aussen_245x300.png\" alt=\"\" /></p>',	1,	'topleft',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	-2,	'mod_custom',	1,	0,	'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(94,	58,	'topleft',	'',	'<div id=\"topleft\"> </div>',	1,	'topleft',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	1,	'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(95,	59,	'topright',	'',	'<div id=\"topright\"> </div>',	1,	'topright',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	0,	'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(96,	60,	'Middleft',	'',	'<p><img src=\"images/MomPreneurs_Jetzt_bin_ich_dran.jpg\" alt=\"\" /></p>',	1,	'middleft',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	1,	'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(97,	61,	'middright',	'',	'<p><a href=\"#\"><img src=\"images/picjumbo_workspace.jpg\" alt=\"\" /></a></p>',	1,	'middright',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	1,	'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(98,	62,	'Bottleft',	'',	'<div id=\"bottleft\"> </div>',	1,	'bottleft',	276,	'2015-05-07 11:47:36',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	1,	'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(99,	63,	'bott1',	'',	'<p><img src=\"images/map-de.jpg\" alt=\"\" /></p>',	1,	'bott1',	276,	'2015-05-07 12:45:15',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	1,	'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(100,	64,	'bott2',	'',	'<p><img src=\"images/Aussen_245x300.png\" alt=\"\" /></p>',	1,	'bott2',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	1,	'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(101,	65,	'bott3',	'',	'<div id=\"bott3\"><img src=\"images/home-office-595476_1920.jpg\" alt=\"\" /></div>',	1,	'bott3',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	1,	'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(102,	66,	'Code7 Accord Offcanvas',	'',	'',	1,	'offcanvas',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	-2,	'mod_fancypantsaccordion',	1,	0,	'{\"load_jquery\":\"0\",\"count\":\"5\",\"ordering\":\"dsc\",\"poptotop\":\"0\",\"firstopen\":\"0\",\"whichopen\":\"0\",\"readmores\":\"0\",\"render\":\"0\",\"close_buttons\":\"0\",\"showCat\":\"0\",\"feat\":\"0\",\"headingSize\":\"\",\"headingHeight\":\"\",\"catSize\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(103,	67,	'Offcanvas menu',	'',	'',	1,	'offcanvas',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_menu',	1,	0,	'{\"menutype\":\"sidemenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(104,	68,	'Footer1',	'',	'<p><strong>ABOUT</strong></p>',	1,	'bottom1',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	0,	'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(105,	69,	'Footer2',	'',	'<p><strong>FEED</strong></p>',	1,	'bottom2',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	0,	'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(106,	70,	'Footer3',	'',	'<p><strong>KONTAKT</strong></p>',	1,	'bottom3',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	0,	'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(107,	71,	'Footer4',	'',	'<p>Facebook</p>',	1,	'bottom4',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_custom',	1,	0,	'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(108,	72,	'Code 7 Responsive Slider',	'',	'',	0,	'',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	-2,	'mod_reslider',	1,	1,	'',	0,	'*'),
(109,	73,	'topleft (copy)',	'',	'<div id=\"topleft\">\r\n<h4>Individuelle Software-Entwicklung</h4>\r\n</div>',	1,	'topleft',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	-2,	'mod_custom',	1,	1,	'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(110,	74,	'News',	'',	'',	1,	'user1',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_articles_latest',	1,	1,	'{\"catid\":[\"\"],\"count\":\"5\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"Shaper_helix3-sp_xhtml\"}',	0,	'*'),
(111,	78,	'More About Us',	'',	'',	1,	'user1',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_menu',	1,	1,	'{\"menutype\":\"side2\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(112,	80,	'SP Page Builder',	'',	'',	0,	'cpanel',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_sppagebuilder_icons',	1,	1,	'',	1,	'*'),
(113,	81,	'SP Page Builder Admin Menu',	'',	'',	1,	'menu',	0,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_sppagebuilder_admin_menu',	1,	1,	'',	1,	'*'),
(114,	82,	'News Slider',	'',	'',	1,	'slider',	276,	'2015-05-11 11:52:53',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_reslider',	1,	0,	'{\"load_jquery\":\"0\",\"fadeorslide\":\"0\",\"uselinks\":\"1\",\"directionNav\":\"0\",\"controlNav\":\"0\",\"keyboardNav\":\"0\",\"direction\":\"0\",\"slidespeed\":\"7000\",\"animatespeed\":\"600\",\"randomorder\":\"0\",\"image1\":\"images\\/home-office-595476_1920.jpg\",\"image1alt\":\"\",\"image1cap\":\"\",\"image1link\":\"101\",\"image1customlink\":\"\",\"image2\":\"images\\/computer-564136_1920.jpg\",\"image2alt\":\"\",\"image2cap\":\"\",\"image2link\":\"101\",\"image2customlink\":\"\",\"image3\":\"images\\/home-office-595476_1920.jpg\",\"image3alt\":\"\",\"image3cap\":\"\",\"image3link\":\"101\",\"image3customlink\":\"\",\"image4\":\"images\\/macbook-336704_1920.jpg\",\"image4alt\":\"\",\"image4cap\":\"\",\"image4link\":\"101\",\"image4customlink\":\"\",\"image5\":\"\",\"image5alt\":\"\",\"image5cap\":\"\",\"image5link\":\"101\",\"image5customlink\":\"\",\"image6\":\"\",\"image6alt\":\"\",\"image6cap\":\"\",\"image6link\":\"101\",\"image6customlink\":\"\",\"image7\":\"\",\"image7alt\":\"\",\"image7cap\":\"\",\"image7link\":\"101\",\"image7customlink\":\"\",\"image8\":\"\",\"image8alt\":\"\",\"image8cap\":\"\",\"image8link\":\"101\",\"image8customlink\":\"\",\"image9\":\"\",\"image9alt\":\"\",\"image9cap\":\"\",\"image9link\":\"101\",\"image9customlink\":\"\",\"image10\":\"\",\"image10alt\":\"\",\"image10cap\":\"\",\"image10link\":\"101\",\"image10customlink\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',	0,	'*'),
(115,	84,	'Portfolio Services',	'',	'',	1,	'slider',	276,	'2015-05-11 12:34:07',	'0000-00-00 00:00:00',	'0000-00-00 00:00:00',	1,	'mod_spsimpleportfolio',	1,	0,	'{\"show_filter\":\"0\",\"layout_type\":\"default\",\"columns\":\"3\",\"thumbnail_type\":\"square\",\"limit\":\"12\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"Shaper_helix3-sp_xhtml\"}',	0,	'*');

DROP TABLE IF EXISTS `p20ne_modules_menu`;
CREATE TABLE `p20ne_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_modules_menu` (`moduleid`, `menuid`) VALUES
(1,	0),
(2,	0),
(3,	0),
(4,	0),
(6,	0),
(7,	0),
(8,	0),
(9,	0),
(10,	0),
(12,	0),
(13,	0),
(14,	0),
(15,	0),
(16,	0),
(17,	0),
(79,	0),
(80,	0),
(83,	0),
(85,	0),
(86,	0),
(88,	0),
(91,	101),
(92,	101),
(92,	102),
(93,	0),
(94,	0),
(95,	0),
(96,	0),
(97,	0),
(98,	0),
(99,	0),
(100,	0),
(101,	0),
(102,	0),
(103,	0),
(104,	0),
(105,	0),
(106,	0),
(107,	0),
(109,	0),
(110,	101),
(110,	106),
(111,	102),
(112,	0),
(113,	0),
(114,	103),
(114,	123),
(115,	125);

DROP TABLE IF EXISTS `p20ne_newsfeeds`;
CREATE TABLE `p20ne_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_overrider`;
CREATE TABLE `p20ne_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_postinstall_messages`;
CREATE TABLE `p20ne_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1,	700,	'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE',	'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY',	'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION',	'plg_twofactorauth_totp',	1,	'action',	'site://plugins/twofactorauth/totp/postinstall/actions.php',	'twofactorauth_postinstall_action',	'site://plugins/twofactorauth/totp/postinstall/actions.php',	'twofactorauth_postinstall_condition',	'3.2.0',	1),
(2,	700,	'COM_CPANEL_WELCOME_BEGINNERS_TITLE',	'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE',	'',	'com_cpanel',	1,	'message',	'',	'',	'',	'',	'3.2.0',	1);

DROP TABLE IF EXISTS `p20ne_redirect_links`;
CREATE TABLE `p20ne_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_schemas`;
CREATE TABLE `p20ne_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_schemas` (`extension_id`, `version_id`) VALUES
(700,	'3.4.0-2015-02-26'),
(10018,	'1.1-2015-23-04');

DROP TABLE IF EXISTS `p20ne_session`;
CREATE TABLE `p20ne_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('93991daua80g31r1voudg6e4a4',	0,	1,	'1432493435',	'__default|a:7:{s:15:\"session.counter\";i:15;s:19:\"session.timer.start\";i:1432492543;s:18:\"session.timer.last\";i:1432492785;s:17:\"session.timer.now\";i:1432493434;s:22:\"session.client.browser\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:38.0) Gecko/20100101 Firefox/38.0\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}s:9:\"separator\";s:1:\".\";}s:4:\"user\";O:5:\"JUser\":26:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}s:9:\"separator\";s:1:\".\";}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:13:\"\\0\\0\\0userHelper\";O:18:\"JUserWrapperHelper\":0:{}s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',	0,	''),
('9v4v9ceijm8jc2s1f0hu6fq7l0',	1,	0,	'1432496138',	'__default|a:9:{s:15:\"session.counter\";i:28;s:19:\"session.timer.start\";i:1432492537;s:18:\"session.timer.last\";i:1432495298;s:17:\"session.timer.now\";i:1432496138;s:22:\"session.client.browser\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:38.0) Gecko/20100101 Firefox/38.0\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":2:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:5:\"en-GB\";}s:13:\"com_templates\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:5:\"style\";O:8:\"stdClass\":2:{s:2:\"id\";a:1:{i:0;i:9;}s:4:\"data\";N;}}}}s:9:\"separator\";s:1:\".\";}s:4:\"user\";O:5:\"JUser\":28:{s:9:\"\\0\\0\\0isRoot\";b:1;s:2:\"id\";s:3:\"276\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:24:\"jana.mathauserova@ubk.cz\";s:8:\"password\";s:60:\"$2y$10$HtmUp8jrme3IWBeXY6WBsuL.VKZzlxGiCzJdbwTFbqc2agx0HR0Xm\";s:14:\"password_clear\";s:0:\"\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2015-05-06 13:13:13\";s:13:\"lastvisitDate\";s:19:\"2015-05-24 17:26:18\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:92:\"{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:12:\"requireReset\";s:1:\"0\";s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":6:{s:11:\"admin_style\";s:0:\"\";s:14:\"admin_language\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"editor\";s:0:\"\";s:8:\"helpsite\";s:0:\"\";s:8:\"timezone\";s:0:\"\";}s:9:\"separator\";s:1:\".\";}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\\0\\0\\0_authLevels\";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:13:\"\\0\\0\\0userHelper\";O:18:\"JUserWrapperHelper\":0:{}s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;s:6:\"otpKey\";s:0:\"\";s:4:\"otep\";s:0:\"\";}s:13:\"session.token\";s:32:\"631830633de57a10e2a2d16d77bafd3c\";s:20:\"com_media.return_url\";s:121:\"index.php?option=com_media&view=images&tmpl=component&fieldid=jform_params_logo_image&e_name=&asset=com_templates&author=\";}',	276,	'admin');

DROP TABLE IF EXISTS `p20ne_sppagebuilder`;
CREATE TABLE `p20ne_sppagebuilder` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` bigint(20) NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` bigint(20) NOT NULL DEFAULT '0',
  `og_title` varchar(255) NOT NULL,
  `og_image` varchar(255) NOT NULL,
  `og_description` varchar(255) NOT NULL,
  `page_layout` varchar(55) DEFAULT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_sppagebuilder` (`id`, `title`, `alias`, `text`, `published`, `access`, `created_time`, `created_user_id`, `modified_time`, `modified_user_id`, `og_title`, `og_image`, `og_description`, `page_layout`, `language`) VALUES
(1,	'UBK News',	'ubk-news',	'[{\"type\":\"sp_row\",\"layout\":\"48\",\"settings\":{\"fullscreen\":\"\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\",\"background_video_ogv\":\"\",\"background_video_mp4\":\"\",\"background_video\":0,\"background_position\":\"0 0\",\"background_attachment\":\"fixed\",\"background_size\":\"cover\",\"background_repeat\":\"no-repeat\",\"background_image\":\"\",\"color\":\"\",\"background_color\":\"\",\"title_position\":\"sppb-text-center\",\"subtitle_fontsize\":\"\",\"subtitle\":\"\",\"title_margin_bottom\":\"\",\"title_margin_top\":\"\",\"title_text_color\":\"\",\"title_fontweight\":\"\",\"title_fontsize\":\"\",\"heading_selector\":\"h3\",\"title\":\"\"},\"attr\":[{\"type\":\"sp_col\",\"class_name\":\"column-parent col-sm-4\",\"settings\":{\"background\":\"\",\"color\":\"\",\"padding\":\"\",\"animation\":\"\",\"animationduration\":300,\"animationdelay\":0,\"class\":\"\",\"sortableitem\":\"[object Object]\"},\"attr\":[{\"name\":\"module\",\"title\":\"Joomla Module\",\"atts\":{\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"id\":\"110\",\"class\":\"\"},\"scontent\":[]}]},{\"type\":\"sp_col\",\"class_name\":\"column-parent col-sm-8\",\"settings\":{},\"attr\":[{\"name\":\"image\",\"title\":\"Image\",\"atts\":{\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"image\":\"images/computer-564136_1920.jpg\",\"position\":\"sppb-text-center\",\"link\":\"#\",\"target\":\"\",\"class\":\"\"},\"scontent\":[]}]}]}]',	1,	1,	'2015-05-11 11:38:57',	276,	'2015-05-11 11:49:21',	276,	'',	'',	'',	'1',	'*'),
(2,	'Services',	'services',	'[{\"type\":\"sp_row\",\"layout\":12,\"settings\":{\"fullscreen\":0,\"margin\":\"\",\"padding\":\"15px 15px 15px 15px\",\"class\":\"\",\"id\":\"\",\"background_video_ogv\":\"\",\"background_video_mp4\":\"\",\"background_video\":0,\"background_position\":\"0 0\",\"background_attachment\":\"fixed\",\"background_size\":\"cover\",\"background_repeat\":\"no-repeat\",\"background_image\":\"\",\"color\":\"\",\"background_color\":\"\",\"title_position\":\"sppb-text-center\",\"subtitle_fontsize\":\"\",\"subtitle\":\"\",\"title_margin_bottom\":\"\",\"title_margin_top\":\"\",\"title_text_color\":\"\",\"title_fontweight\":\"\",\"title_fontsize\":\"\",\"heading_selector\":\"h3\",\"title\":\"\"},\"attr\":[{\"type\":\"sp_col\",\"class_name\":\"column-parent col-sm-12\",\"settings\":{\"class\":\"\",\"animationdelay\":0,\"animationduration\":300,\"animation\":\"\",\"padding\":\"\",\"color\":\"\",\"background\":\"\"},\"attr\":[]}]}]',	1,	1,	'2015-05-11 12:11:50',	276,	'2015-05-11 12:27:45',	276,	'',	'',	'',	'1',	'*');

DROP TABLE IF EXISTS `p20ne_spsimpleportfolio_items`;
CREATE TABLE `p20ne_spsimpleportfolio_items` (
  `spsimpleportfolio_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(55) NOT NULL,
  `image` text NOT NULL,
  `video` text NOT NULL,
  `description` mediumtext,
  `spsimpleportfolio_tag_id` text NOT NULL,
  `url` text NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `language` varchar(255) NOT NULL DEFAULT '*',
  `access` int(5) NOT NULL DEFAULT '1',
  `ordering` int(10) NOT NULL DEFAULT '0',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` bigint(20) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`spsimpleportfolio_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_spsimpleportfolio_items` (`spsimpleportfolio_item_id`, `title`, `alias`, `image`, `video`, `description`, `spsimpleportfolio_tag_id`, `url`, `enabled`, `language`, `access`, `ordering`, `created_by`, `created_on`, `modified_by`, `modified_on`, `locked_by`, `locked_on`) VALUES
(1,	'Custom-made software development',	'custom-made-software-development',	'images/home-office-595476_1920.jpg',	'',	'<p>Every idea you want to realize or every problem you or your customer need to solve – we will plan it with you and create the custom-made solution (as individually as possible, as standardised as necessary). Our demand on ourselves is: no matter how complex and challenging the task might be, we will implement the best possible solution on time, professional and perfectly in its detail.</p>',	'[\"1\"]',	'',	1,	'*',	1,	0,	276,	'2015-05-11 12:03:57',	276,	'2015-05-11 12:04:14',	0,	'0000-00-00 00:00:00'),
(2,	'Establishment of development team',	'establishment-of-development-team',	'images/picjumbo_workspace.jpg',	'',	'<p>Being an experienced near shoring-partner, we bring together whole development teams for our partners. All the team members participate exclusively in projects of our partners. The structure and size of the team can be various – from a couple of programmers up to a group of 12 man.</p>',	'[\"2\"]',	'',	1,	'*',	1,	0,	276,	'2015-05-11 12:06:32',	276,	'2015-05-11 12:06:44',	0,	'0000-00-00 00:00:00'),
(3,	'Programmers to hire',	'programmers-to-hire',	'images/MomPreneurs_Jetzt_bin_ich_dran.jpg',	'',	'<p>The German labour market suffers from lack of stuff in IT environment. It is therefore more and more difficult for German IT companies to assemble a development team. The fitting solution for German software houses is to use the development capacity from nearby countries = Nearshoring.</p>',	'[\"3\"]',	'',	1,	'*',	1,	0,	276,	'2015-05-11 12:07:17',	0,	'0000-00-00 00:00:00',	0,	'0000-00-00 00:00:00'),
(4,	'Workflow Management',	'workflow-management',	'images/picjumbo_mac.jpg',	'',	'<p>The term Workflow Management has many definitions. The most common explanation is, that a workflow management system is a computer system that manages and defines a series of tasks within an organization to produce a final outcome or outcomes. However, this declaration is narrow.</p>',	'[\"4\"]',	'',	1,	'*',	1,	0,	276,	'2015-05-11 12:08:01',	276,	'2015-05-11 12:08:39',	0,	'0000-00-00 00:00:00'),
(5,	'SAP consultants',	'sap-consultants',	'images/macbook-336704_1920.jpg',	'',	'<p>We work together with experienced German and English speaking Czech SAP consultants, who are working in projects for our customers and partners. The aim is to keep the costs on the lowest level and at the same time to ensure the success of the project.</p>',	'[\"5\"]',	'',	1,	'*',	1,	0,	276,	'2015-05-11 12:09:56',	276,	'2015-05-11 12:09:59',	0,	'0000-00-00 00:00:00'),
(6,	'Mobile software development',	'mobile-software-development',	'images/picjumbo_sunglases.jpg',	'',	'<p>...</p>',	'[\"6\"]',	'',	1,	'*',	1,	0,	276,	'2015-05-11 12:10:32',	0,	'0000-00-00 00:00:00',	0,	'0000-00-00 00:00:00');

DROP TABLE IF EXISTS `p20ne_spsimpleportfolio_tags`;
CREATE TABLE `p20ne_spsimpleportfolio_tags` (
  `spsimpleportfolio_tag_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(55) NOT NULL,
  `language` varchar(255) NOT NULL DEFAULT '*',
  PRIMARY KEY (`spsimpleportfolio_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_spsimpleportfolio_tags` (`spsimpleportfolio_tag_id`, `title`, `alias`, `language`) VALUES
(1,	'Software Development',	'software-development',	'*'),
(2,	'Establishment of development team',	'establishment-of-development-team',	'*'),
(3,	'Programmers to hire',	'programmers-to-hire',	'*'),
(4,	'Workflow Management',	'workflow-management',	'*'),
(5,	'SAP consultants',	'sap-consultants',	'*'),
(6,	'Mobile software development',	'mobile-software-development',	'*');

DROP TABLE IF EXISTS `p20ne_tags`;
CREATE TABLE `p20ne_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1,	0,	0,	1,	0,	'',	'ROOT',	'root',	'',	'',	1,	0,	'0000-00-00 00:00:00',	1,	'',	'',	'',	'',	276,	'2011-01-01 00:00:01',	'',	0,	'0000-00-00 00:00:00',	'',	'',	0,	'*',	1,	'0000-00-00 00:00:00',	'0000-00-00 00:00:00');

DROP TABLE IF EXISTS `p20ne_template_styles`;
CREATE TABLE `p20ne_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4,	'beez3',	0,	'0',	'Beez3 - Default',	'{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5,	'hathor',	1,	'0',	'Hathor - Default',	'{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7,	'protostar',	0,	'0',	'My Default Style (Protostar)',	'{\"templateColor\":\"#696969\",\"templateBackgroundColor\":\"#E3E3E3\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8,	'isis',	1,	'1',	'isis - Default',	'{\"templateColor\":\"#000000\",\"logoFile\":\"\",\"admin_menus\":1,\"displayHeader\":1,\"statusFixed\":1,\"stickyToolbar\":1}'),
(9,	'shaper_helix3',	0,	'1',	'shaper_helix3 - Default',	'{\"sticky_header\":\"1\",\"favicon\":\"\",\"boxed_layout\":\"0\",\"logo_type\":\"image\",\"logo_position\":\"logo\",\"logo_image\":\"images\\/SampleLogo2.png\",\"logo_image_2x\":\"\",\"mobile_logo\":\"\",\"logo_text\":\"\",\"logo_slogan\":\"\",\"body_bg_image\":\"\",\"body_bg_repeat\":\"inherit\",\"body_bg_size\":\"inherit\",\"body_bg_attachment\":\"inherit\",\"body_bg_position\":\"0 0\",\"enabled_copyright\":\"1\",\"copyright_position\":\"footer1\",\"copyright\":\"© 2015 Created by FV\",\"show_social_icons\":\"0\",\"social_position\":\"top1\",\"facebook\":\"https:\\/\\/www.facebook.com\\/joomshaper\",\"twitter\":\"https:\\/\\/twitter.com\\/joomshaper\",\"googleplus\":\"\",\"pinterest\":\"\",\"linkedin\":\"\",\"dribbble\":\"\",\"behance\":\"\",\"youtube\":\"\",\"flickr\":\"\",\"skype\":\"\",\"vk\":\"\",\"enable_contactinfo\":\"0\",\"contact_position\":\"top2\",\"contact_phone\":\"+228 872 4444\",\"contact_email\":\"office@ubk.cz\",\"comingsoon_mode\":\"0\",\"comingsoon_title\":\"Coming Soon Title\",\"comingsoon_date\":\"05-10-2018\",\"comingsoon_content\":\"Coming soon content\",\"preset\":\"preset3\",\"preset1_bg\":\"#ffffff\",\"preset1_text\":\"#000000\",\"preset1_major\":\"#26aae1\",\"preset2_bg\":\"#ffffff\",\"preset2_text\":\"#000000\",\"preset2_major\":\"#3d449a\",\"preset3_bg\":\"#ffffff\",\"preset3_text\":\"#000000\",\"preset3_major\":\"#2bb673\",\"preset4_bg\":\"#ffffff\",\"preset4_text\":\"#222222\",\"preset4_major\":\"#ff0000\",\"layoutlist\":\"default.json\",\"layout\":\"[{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"39\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"name\\\":\\\"Header\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"col-xs-8\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"logo\\\",\\\"column_type\\\":0}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-9\\\",\\\"settings\\\":{\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"name\\\":\\\"menu\\\",\\\"column_type\\\":0,\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"col-xs-4\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"margin\\\":\\\"20px 0 20px 0\\\",\\\"padding\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"name\\\":\\\"Grid structure\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-12\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"slider\\\",\\\"column_type\\\":0}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"name\\\":\\\"Page Title\\\",\\\"background_color\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"fluidrow\\\":1,\\\"custom_class\\\":\\\"\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-12\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"title\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"57\\\",\\\"settings\\\":{\\\"name\\\":\\\"Main Body\\\",\\\"background_color\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"padding\\\":0,\\\"margin\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"custom_class\\\":\\\"\\\",\\\"bg_color\\\":\\\"\\\",\\\"bg_image\\\":\\\"\\\",\\\"text_color\\\":\\\"\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-7\\\",\\\"settings\\\":{\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"column_type\\\":1,\\\"name\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-5 column-active\\\",\\\"settings\\\":{\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"column_type\\\":0,\\\"name\\\":\\\"user1\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"custom_class\\\":\\\"custom-class\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"3333\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"20px 0px 10px 0px\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"#cccccc\\\",\\\"name\\\":\\\"Bottom\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"bottom1\\\",\\\"column_type\\\":0}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"bottom2\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"bottom3\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"bottom4\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"name\\\":\\\"Footer\\\",\\\"bg_color\\\":\\\"\\\",\\\"bg_image\\\":\\\"\\\",\\\"text_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"custom_class\\\":\\\"\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-12\\\",\\\"settings\\\":{\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"name\\\":\\\"footer1\\\",\\\"column_type\\\":0,\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\"}}]}]\",\"menu\":\"mainmenu\",\"menu_type\":\"mega_offcanvas\",\"dropdown_width\":\"\",\"menu_animation\":\"menu-fade\",\"enable_body_font\":\"1\",\"body_font\":\"{\\\"fontFamily\\\":\\\"Roboto\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin-ext\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h1_font\":\"1\",\"h1_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"800\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h2_font\":\"1\",\"h2_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h3_font\":\"1\",\"h3_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h4_font\":\"1\",\"h4_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h5_font\":\"1\",\"h5_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h6_font\":\"1\",\"h6_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_navigation_font\":\"0\",\"navigation_font\":\"{\\\"fontFamily\\\":\\\"ABeeZee\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_custom_font\":\"0\",\"custom_font\":\"{\\\"fontFamily\\\":\\\"ABeeZee\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"custom_font_selectors\":\"\",\"before_head\":\"<style type=\\\"text\\/css\\\">\\r\\n.gkGrid-bottleft-1 img{position: relative;left: 1px!important}\\r\\n#topleft{background: url(http:\\/\\/testsitejm.com\\/images\\/keyboard-498396_1280.jpg) no-repeat;background-size: cover;height: 200px;}#bott3{background: url(http:\\/\\/testsitejm.com\\/images\\/home-office-595476_1920.jpg) no-repeat;background-size: cover;height: 200px;}\\r\\n#topleft h3{padding:10px;color:white;background:rgba(0,0,0,0.3)}\\r\\n#sp-grid-structure > a,{color: white;font-weight: 800;background: rgba(0,0,0,0.6);padding: 10px;text-transform:uppercase;}\\r\\n#topright{background:url(http:\\/\\/testsitejm.com\\/images\\/picjumbo_mac.jpg)no-repeat;background-size: cover;height: 400px;}\\r\\n#bottleft{background:url(http:\\/\\/testsitejm.com\\/images\\/laptop-731904_1920.jpg)no-repeat;background-size: cover;height: 200px;}<\\/style>\\r\\n\",\"before_body\":\"\",\"custom_css\":\"#sp-header {background: rgba(255,255,255,0.6);box-shadow: none;}\\r\\n\\/*#sp-header .logo h1 {background: #9c0c0b;}*\\/\\r\\n#sp-footer {background: #666;}\\r\\n#sp-main-body {padding: 10px 0 30px;}\\r\\n#sp-grid-structure {margin:0!important;}\\r\\n.entry-header {margin-bottom: 10px;margin-bottom: 30px;\\r\\nmargin-top: 20px;}\\r\\n.sp-module .sp-module-title {margin: 20px 0 25px;font-size: 28px;text-transform: uppercase;line-height: 1;}\\r\\n#sp-header .logo{max-height: 90px;}\\r\\n#sp-grid-structure {padding-top: 30px;}\\r\\n\",\"custom_js\":\"\",\"compress_css\":\"0\",\"compress_js\":\"0\",\"exclude_js\":\"\",\"lessoption\":\"0\",\"show_post_format\":\"0\",\"commenting_engine\":\"disabled\",\"disqus_subdomain\":\"\",\"disqus_devmode\":\"0\",\"intensedebate_acc\":\"\",\"fb_appID\":\"\",\"fb_width\":\"500\",\"fb_cpp\":\"10\",\"comments_count\":\"0\",\"social_share\":\"0\"}');

DROP TABLE IF EXISTS `p20ne_ucm_base`;
CREATE TABLE `p20ne_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_ucm_content`;
CREATE TABLE `p20ne_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';


DROP TABLE IF EXISTS `p20ne_ucm_history`;
CREATE TABLE `p20ne_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1,	7,	1,	'',	'2015-05-06 13:29:14',	276,	1660,	'deabc86c5c38557505b5fd6cbcafb2e4073b9397',	'{\"id\":7,\"asset_id\":54,\"title\":\"test\",\"alias\":\"test\",\"introtext\":\"<p>test<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-05-06 13:29:14\",\"created_by\":\"276\",\"created_by_alias\":\"\",\"modified\":\"2015-05-06 13:29:14\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-05-06 13:29:14\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',	0),
(2,	6,	1,	'',	'2015-05-07 08:57:21',	276,	3667,	'9131360f8c7ded55ed5dd3a9499e47529d138191',	'{\"id\":6,\"asset_id\":\"40\",\"title\":\"Creating Your Site\",\"alias\":\"creating-your-site\",\"introtext\":\"<p>Joomla! is all about allowing you to create a site that matches your vision. The possibilities are limitless; this sample site will get you started.<\\/p>\\r\\n<p>There are a few things you should know to get you started.<\\/p>\\r\\n<p>Every Joomla! Web site has two parts: the Site (which is what your site visitors see) and the Administrator (which is where you will do a lot of the site management). You need to log in to the Administrator separately with the same username and password. There is a link to the administrator on the top menu that you will see when you log in.<\\/p>\\r\\n<p>You can edit articles in the Site by clicking on the edit icon. You can create a new article by clicking on the Create Article link in the top menu.<\\/p>\\r\\n<p>To do basic changes to the appearance your site click Home, Site Settings and Home, Template Settings.<\\/p>\\r\\n<p>To do more advanced things, like edit the contact form, manage users, or install a new template or extension, login to the Administrator.<\\/p>\\r\\n<p>Some quick tips for working in the Administrator<\\/p>\\r\\n<ul>\\r\\n<li>To change the image on all the pages: Go to the Module Manager and click on Image Module.<\\/li>\\r\\n<li>To edit the Side Module: Go to Extensions, Module Manager and click on Side Module.<\\/li>\\r\\n<li>To edit the Contact Form: Go to Components, Contacts. Click on Your Name.<\\/li>\\r\\n<\\/ul>\\r\\n<p>Once you have your basic site you may want to install your own template (that controls the overall design of your site) and then, perhaps additional extensions.<\\/p>\\r\\n<p>There is a lot of help available for Joomla!. You can visit the <a href=\\\"http:\\/\\/forum.joomla.org\\\">Joomla! forums<\\/a> and the<a href=\\\"https:\\/\\/docs.joomla.org\\\" target=\\\"_blank\\\"> Joomla! documentation site<\\/a> to get started.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2011-01-01 00:00:01\",\"created_by\":\"276\",\"created_by_alias\":\"Joomla\",\"modified\":\"2015-05-07 08:57:21\",\"modified_by\":\"276\",\"checked_out\":\"276\",\"checked_out_time\":\"2015-05-07 08:57:01\",\"publish_up\":\"2012-01-04 04:27:11\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"0\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"216\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',	0),
(3,	6,	1,	'',	'2015-05-07 12:28:35',	276,	2505,	'70acff910f31c63543bd11cc0f7a238ede468ffa',	'{\"id\":6,\"asset_id\":\"40\",\"title\":\"Who we are\",\"alias\":\"creating-your-site\",\"introtext\":\"<p style=\\\"text-align: justify;\\\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2011-01-01 00:00:01\",\"created_by\":\"276\",\"created_by_alias\":\"Joomla\",\"modified\":\"2015-05-07 12:28:35\",\"modified_by\":\"276\",\"checked_out\":\"276\",\"checked_out_time\":\"2015-05-07 12:27:54\",\"publish_up\":\"2012-01-04 04:27:11\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"0\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"279\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',	0),
(4,	8,	1,	'',	'2015-05-11 11:10:13',	276,	2760,	'ce4629f81ee846fc57ab6483cc0d880305268b82',	'{\"id\":8,\"asset_id\":75,\"title\":\"UBK na veletrhu CeBIT 2015\",\"alias\":\"ubk-na-veletrhu-cebit-2015\",\"introtext\":\"<p style=\\\"text-align: justify;\\\">Na\\u0161e spole\\u010dnost se i letos z\\u00fa\\u010dastnila veletrhu CeBIT v n\\u011bmeck\\u00e9m Hannoveru. Pro n\\u00e1v\\u0161t\\u011bvn\\u00edky na\\u0161eho st\\u00e1nku jsme letos m\\u011bli mal\\u00fd d\\u00e1rek v podob\\u011b plechovky piva Pilsner Urquell. R\\u00e1di bychom pod\\u011bkovali v\\u0161em, kte\\u0159\\u00ed nav\\u0161t\\u00edvili n\\u00e1\\u0161 st\\u00e1nek a zaj\\u00edmali se o na\\u0161e slu\\u017eby. Z\\u00e1rove\\u0148 douf\\u00e1me, \\u017ee na z\\u00e1klad\\u011b na\\u0161ich rozhovor\\u016f na tomto veletrhu bude na\\u0161e spolupr\\u00e1ce p\\u0159\\u00ednosem. Ji\\u017e te\\u010f se t\\u011b\\u0161\\u00edme na p\\u0159\\u00ed\\u0161t\\u00ed ro\\u010dn\\u00edk veletrhu CeBIT 2016 a t\\u00edmto v\\u00e1s zveme k n\\u00e1v\\u0161t\\u011bv\\u011b na\\u0161eho veletr\\u017en\\u00edho st\\u00e1nku v p\\u0159\\u00ed\\u0161t\\u00edm roce.<\\/p>\\r\\n<div>\\r\\n<p>25.3.2015<\\/p>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2015-05-11 11:10:13\",\"created_by\":\"276\",\"created_by_alias\":\"\",\"modified\":\"2015-05-11 11:10:13\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-05-11 11:10:13\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',	0),
(5,	9,	1,	'',	'2015-05-11 11:11:21',	276,	2331,	'26c8218e3e2f4207cff53f74437ab8f0dede9b04',	'{\"id\":9,\"asset_id\":76,\"title\":\"UBK Sharepoint jako Taskmanager\",\"alias\":\"ubk-sharepoint-jako-taskmanager\",\"introtext\":\"<p>Na\\u0161e spole\\u010dnost m\\u00e1 nyn\\u00ed sv\\u00e9 vlastn\\u00ed \\u0159e\\u0161en\\u00ed pro spr\\u00e1vu projekt\\u016f a zad\\u00e1v\\u00e1n\\u00ed \\u00fakol\\u016f a to v r\\u00e1mci aplikace SharePoint. N\\u00e1\\u0161 vlastn\\u00ed specialista SharePoint zavedl a provedl nezbytn\\u00e9 \\u00fapravy a roz\\u0161\\u00ed\\u0159en\\u00ed p\\u0159izp\\u016fsoben\\u00e9 pot\\u0159eb\\u00e1m fungov\\u00e1n\\u00ed na\\u0161\\u00ed spole\\u010dnosti.<\\/p>\\r\\n<p>24.2.2015<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2015-05-11 11:11:21\",\"created_by\":\"276\",\"created_by_alias\":\"\",\"modified\":\"2015-05-11 11:11:21\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-05-11 11:11:21\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',	0),
(6,	2,	1,	'',	'2015-05-11 11:18:42',	276,	3690,	'16ecb9545228ec1ec5e3f29152488806fcf97ebe',	'{\"id\":2,\"asset_id\":\"35\",\"title\":\"About Us\",\"alias\":\"about-us\",\"introtext\":\"<p style=\\\"text-align: justify;\\\">Die UBK s.r.o. was founded in 2004 as a subsidiary of the consulting company UBK GmbH. We are specialized in services related to software development. Our key issues are: development of web-enabled custom-made Solutions, programmers and consultants to hire, establishment of development teams in the Czech Republic.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">UBK Czech Republic draws upon an experienced, flexible and multilingual team. The skilled team realises for our customers and partner lower-cost nearshore development of web and desktop applications. Due to the lack of the development resources are many of our customers IT and consultants companies. We\\u00b4ve benefit from our location in Pilsen. The university city of Pilsen provides enough highly qualified developers.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">No matter which industry the customers are in, our aim is to satisfy their demands and expectations and implement optimal custom-made solution for each of them. We often develop web-enabled workflow solutions to enhance and simplify the IT structure of our customers.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\"><em>\\u201eIn the last few years, many German and Swiss companies have had some bad and expensive experience with offshoring projects. Our company offers an alternative as German-Czech subsidiary \\u2013 nearshoring in the Czech Republic. We have focused strategically on the establishment of development teams for our Partner, outsourcing of capacities und custom-made software development. Our geographical and cultural proximity to Germany, good language skills in connection with the low-cost and high-quality programming sum up to significant added value for our customers and partners.\\u201d Mgr. Luk\\u00e1\\u0161 Tom\\u00e1\\u0161ek Managing Director<\\/em><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2011-01-01 00:00:01\",\"created_by\":\"276\",\"created_by_alias\":\"Joomla\",\"modified\":\"2015-05-11 11:18:42\",\"modified_by\":\"276\",\"checked_out\":\"276\",\"checked_out_time\":\"2015-05-11 11:16:32\",\"publish_up\":\"2012-01-04 03:06:07\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"27\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',	0),
(7,	8,	5,	'',	'2015-05-11 11:25:57',	276,	604,	'9b08e4b4ed291ad541ccfa07c6447f6a0a014140',	'{\"id\":8,\"asset_id\":\"36\",\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":\"12\",\"level\":\"1\",\"path\":\"news\",\"extension\":\"com_content\",\"title\":\"News\",\"alias\":\"news\",\"note\":\"\",\"description\":\"<p>Latest News in UBK s.r.o.<\\/p>\",\"published\":\"1\",\"checked_out\":\"276\",\"checked_out_time\":\"2015-05-11 11:25:13\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"276\",\"created_time\":\"2011-01-01 00:00:01\",\"modified_user_id\":\"276\",\"modified_time\":\"2015-05-11 11:25:57\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',	0),
(8,	8,	5,	'',	'2015-05-11 11:26:13',	276,	610,	'adb98bfac634b5a1d879f7db3fb3ad6f3097e69f',	'{\"id\":8,\"asset_id\":\"36\",\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":\"12\",\"level\":\"1\",\"path\":\"news\",\"extension\":\"com_content\",\"title\":\"News\",\"alias\":\"news\",\"note\":\"\",\"description\":\"<p>Latest News in UBK s.r.o.<\\/p>\",\"published\":\"1\",\"checked_out\":\"276\",\"checked_out_time\":\"2015-05-11 11:25:57\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"276\",\"created_time\":\"2011-01-01 00:00:01\",\"modified_user_id\":\"276\",\"modified_time\":\"2015-05-11 11:26:13\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',	0),
(9,	8,	5,	'',	'2015-05-11 11:26:28',	276,	647,	'5140c539dc328437e69ae3e767a54f0d936228bb',	'{\"id\":8,\"asset_id\":\"36\",\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":\"12\",\"level\":\"1\",\"path\":\"news\",\"extension\":\"com_content\",\"title\":\"News\",\"alias\":\"news\",\"note\":\"\",\"description\":\"<p>Latest News in UBK s.r.o.<\\/p>\",\"published\":\"1\",\"checked_out\":\"276\",\"checked_out_time\":\"2015-05-11 11:26:13\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"images\\\\\\/home-office-595476_1920.jpg\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"276\",\"created_time\":\"2011-01-01 00:00:01\",\"modified_user_id\":\"276\",\"modified_time\":\"2015-05-11 11:26:28\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',	0),
(10,	8,	5,	'',	'2015-05-11 11:26:59',	276,	612,	'e6da5fbf9b42a6bd9eb96a8cd4fa68e2e4f2455d',	'{\"id\":8,\"asset_id\":\"36\",\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":\"12\",\"level\":\"1\",\"path\":\"news\",\"extension\":\"com_content\",\"title\":\"News\",\"alias\":\"news\",\"note\":\"\",\"description\":\"<h3>Latest News in UBK s.r.o.<\\/h3>\",\"published\":\"1\",\"checked_out\":\"276\",\"checked_out_time\":\"2015-05-11 11:26:48\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"276\",\"created_time\":\"2011-01-01 00:00:01\",\"modified_user_id\":\"276\",\"modified_time\":\"2015-05-11 11:26:59\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',	0),
(11,	8,	5,	'',	'2015-05-11 11:27:12',	276,	612,	'af749d13f1f0541d7251e2bfaf6e4bfba246c60e',	'{\"id\":8,\"asset_id\":\"36\",\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":\"12\",\"level\":\"1\",\"path\":\"news\",\"extension\":\"com_content\",\"title\":\"News\",\"alias\":\"news\",\"note\":\"\",\"description\":\"<h2>Latest News in UBK s.r.o.<\\/h2>\",\"published\":\"1\",\"checked_out\":\"276\",\"checked_out_time\":\"2015-05-11 11:26:59\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"276\",\"created_time\":\"2011-01-01 00:00:01\",\"modified_user_id\":\"276\",\"modified_time\":\"2015-05-11 11:27:12\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',	0);

DROP TABLE IF EXISTS `p20ne_updates`;
CREATE TABLE `p20ne_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';

INSERT INTO `p20ne_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1,	3,	0,	'Flemish',	'',	'pkg_nl-BE',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/nl-BE_details.xml',	'',	''),
(2,	3,	0,	'Chinese Traditional',	'',	'pkg_zh-TW',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/zh-TW_details.xml',	'',	''),
(3,	3,	0,	'French',	'',	'pkg_fr-FR',	'package',	'',	0,	'3.4.1.2',	'',	'http://update.joomla.org/language/details3/fr-FR_details.xml',	'',	''),
(4,	3,	0,	'Galician',	'',	'pkg_gl-ES',	'package',	'',	0,	'3.3.1.2',	'',	'http://update.joomla.org/language/details3/gl-ES_details.xml',	'',	''),
(5,	3,	0,	'German',	'',	'pkg_de-DE',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/de-DE_details.xml',	'',	''),
(6,	3,	0,	'Greek',	'',	'pkg_el-GR',	'package',	'',	0,	'3.3.3.1',	'',	'http://update.joomla.org/language/details3/el-GR_details.xml',	'',	''),
(7,	3,	0,	'Japanese',	'',	'pkg_ja-JP',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/ja-JP_details.xml',	'',	''),
(8,	3,	0,	'Hebrew',	'',	'pkg_he-IL',	'package',	'',	0,	'3.1.1.1',	'',	'http://update.joomla.org/language/details3/he-IL_details.xml',	'',	''),
(9,	3,	0,	'EnglishAU',	'',	'pkg_en-AU',	'package',	'',	0,	'3.3.1.1',	'',	'http://update.joomla.org/language/details3/en-AU_details.xml',	'',	''),
(10,	3,	0,	'EnglishUS',	'',	'pkg_en-US',	'package',	'',	0,	'3.3.1.1',	'',	'http://update.joomla.org/language/details3/en-US_details.xml',	'',	''),
(11,	3,	0,	'Hungarian',	'',	'pkg_hu-HU',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/hu-HU_details.xml',	'',	''),
(12,	3,	0,	'Afrikaans',	'',	'pkg_af-ZA',	'package',	'',	0,	'3.2.0.2',	'',	'http://update.joomla.org/language/details3/af-ZA_details.xml',	'',	''),
(13,	3,	0,	'Arabic Unitag',	'',	'pkg_ar-AA',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/ar-AA_details.xml',	'',	''),
(14,	3,	0,	'Belarusian',	'',	'pkg_be-BY',	'package',	'',	0,	'3.2.1.1',	'',	'http://update.joomla.org/language/details3/be-BY_details.xml',	'',	''),
(15,	3,	0,	'Bulgarian',	'',	'pkg_bg-BG',	'package',	'',	0,	'3.3.0.1',	'',	'http://update.joomla.org/language/details3/bg-BG_details.xml',	'',	''),
(16,	3,	0,	'Catalan',	'',	'pkg_ca-ES',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/ca-ES_details.xml',	'',	''),
(17,	3,	0,	'Chinese Simplified',	'',	'pkg_zh-CN',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/zh-CN_details.xml',	'',	''),
(18,	3,	0,	'Croatian',	'',	'pkg_hr-HR',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/hr-HR_details.xml',	'',	''),
(19,	3,	0,	'Czech',	'',	'pkg_cs-CZ',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/cs-CZ_details.xml',	'',	''),
(20,	3,	0,	'Danish',	'',	'pkg_da-DK',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/da-DK_details.xml',	'',	''),
(21,	3,	0,	'Dutch',	'',	'pkg_nl-NL',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/nl-NL_details.xml',	'',	''),
(22,	3,	0,	'Estonian',	'',	'pkg_et-EE',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/et-EE_details.xml',	'',	''),
(23,	3,	0,	'Italian',	'',	'pkg_it-IT',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/it-IT_details.xml',	'',	''),
(24,	3,	0,	'Korean',	'',	'pkg_ko-KR',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/ko-KR_details.xml',	'',	''),
(25,	3,	0,	'Latvian',	'',	'pkg_lv-LV',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/lv-LV_details.xml',	'',	''),
(26,	3,	0,	'Macedonian',	'',	'pkg_mk-MK',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/mk-MK_details.xml',	'',	''),
(27,	3,	0,	'Norwegian Bokmal',	'',	'pkg_nb-NO',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/nb-NO_details.xml',	'',	''),
(28,	3,	0,	'Norwegian Nynorsk',	'',	'pkg_nn-NO',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/nn-NO_details.xml',	'',	''),
(29,	3,	0,	'Persian',	'',	'pkg_fa-IR',	'package',	'',	0,	'3.4.1.2',	'',	'http://update.joomla.org/language/details3/fa-IR_details.xml',	'',	''),
(30,	3,	0,	'Polish',	'',	'pkg_pl-PL',	'package',	'',	0,	'3.4.1.3',	'',	'http://update.joomla.org/language/details3/pl-PL_details.xml',	'',	''),
(31,	3,	0,	'Portuguese',	'',	'pkg_pt-PT',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/pt-PT_details.xml',	'',	''),
(32,	3,	0,	'Russian',	'',	'pkg_ru-RU',	'package',	'',	0,	'3.4.1.2',	'',	'http://update.joomla.org/language/details3/ru-RU_details.xml',	'',	''),
(33,	3,	0,	'Slovak',	'',	'pkg_sk-SK',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/sk-SK_details.xml',	'',	''),
(34,	3,	0,	'Swedish',	'',	'pkg_sv-SE',	'package',	'',	0,	'3.4.1.3',	'',	'http://update.joomla.org/language/details3/sv-SE_details.xml',	'',	''),
(35,	3,	0,	'Syriac',	'',	'pkg_sy-IQ',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/sy-IQ_details.xml',	'',	''),
(36,	3,	0,	'Tamil',	'',	'pkg_ta-IN',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/ta-IN_details.xml',	'',	''),
(37,	3,	0,	'Thai',	'',	'pkg_th-TH',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/th-TH_details.xml',	'',	''),
(38,	3,	0,	'Turkish',	'',	'pkg_tr-TR',	'package',	'',	0,	'3.4.1.3',	'',	'http://update.joomla.org/language/details3/tr-TR_details.xml',	'',	''),
(39,	3,	0,	'Ukrainian',	'',	'pkg_uk-UA',	'package',	'',	0,	'3.3.3.15',	'',	'http://update.joomla.org/language/details3/uk-UA_details.xml',	'',	''),
(40,	3,	0,	'Uyghur',	'',	'pkg_ug-CN',	'package',	'',	0,	'3.3.0.1',	'',	'http://update.joomla.org/language/details3/ug-CN_details.xml',	'',	''),
(41,	3,	0,	'Albanian',	'',	'pkg_sq-AL',	'package',	'',	0,	'3.1.1.1',	'',	'http://update.joomla.org/language/details3/sq-AL_details.xml',	'',	''),
(42,	3,	0,	'Hindi',	'',	'pkg_hi-IN',	'package',	'',	0,	'3.3.6.1',	'',	'http://update.joomla.org/language/details3/hi-IN_details.xml',	'',	''),
(43,	3,	0,	'Portuguese Brazil',	'',	'pkg_pt-BR',	'package',	'',	0,	'3.4.1.3',	'',	'http://update.joomla.org/language/details3/pt-BR_details.xml',	'',	''),
(44,	3,	0,	'Serbian Latin',	'',	'pkg_sr-YU',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/sr-YU_details.xml',	'',	''),
(45,	3,	0,	'Spanish',	'',	'pkg_es-ES',	'package',	'',	0,	'3.4.1.2',	'',	'http://update.joomla.org/language/details3/es-ES_details.xml',	'',	''),
(46,	3,	0,	'Bosnian',	'',	'pkg_bs-BA',	'package',	'',	0,	'3.4.0.1',	'',	'http://update.joomla.org/language/details3/bs-BA_details.xml',	'',	''),
(47,	3,	0,	'Serbian Cyrillic',	'',	'pkg_sr-RS',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/sr-RS_details.xml',	'',	''),
(48,	3,	0,	'Vietnamese',	'',	'pkg_vi-VN',	'package',	'',	0,	'3.2.1.1',	'',	'http://update.joomla.org/language/details3/vi-VN_details.xml',	'',	''),
(49,	3,	0,	'Bahasa Indonesia',	'',	'pkg_id-ID',	'package',	'',	0,	'3.3.0.2',	'',	'http://update.joomla.org/language/details3/id-ID_details.xml',	'',	''),
(50,	3,	0,	'Finnish',	'',	'pkg_fi-FI',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/fi-FI_details.xml',	'',	''),
(51,	3,	0,	'Swahili',	'',	'pkg_sw-KE',	'package',	'',	0,	'3.4.1.1',	'',	'http://update.joomla.org/language/details3/sw-KE_details.xml',	'',	''),
(52,	3,	0,	'Montenegrin',	'',	'pkg_srp-ME',	'package',	'',	0,	'3.3.1.1',	'',	'http://update.joomla.org/language/details3/srp-ME_details.xml',	'',	''),
(53,	3,	0,	'EnglishCA',	'',	'pkg_en-CA',	'package',	'',	0,	'3.3.6.1',	'',	'http://update.joomla.org/language/details3/en-CA_details.xml',	'',	''),
(54,	3,	0,	'FrenchCA',	'',	'pkg_fr-CA',	'package',	'',	0,	'3.3.6.1',	'',	'http://update.joomla.org/language/details3/fr-CA_details.xml',	'',	''),
(55,	3,	0,	'Welsh',	'',	'pkg_cy-GB',	'package',	'',	0,	'3.3.0.1',	'',	'http://update.joomla.org/language/details3/cy-GB_details.xml',	'',	''),
(56,	3,	0,	'Sinhala',	'',	'pkg_si-LK',	'package',	'',	0,	'3.3.1.1',	'',	'http://update.joomla.org/language/details3/si-LK_details.xml',	'',	'');

DROP TABLE IF EXISTS `p20ne_update_sites`;
CREATE TABLE `p20ne_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Sites';

INSERT INTO `p20ne_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1,	'Joomla! Core',	'collection',	'http://update.joomla.org/core/list.xml',	1,	1432488833,	''),
(2,	'Joomla! Extension Directory',	'collection',	'http://update.joomla.org/jed/list.xml',	1,	1432488833,	''),
(3,	'Accredited Joomla! Translations',	'collection',	'http://update.joomla.org/language/translationlist_3.xml',	1,	1432488831,	''),
(4,	'Joomla! Update Component Update Site',	'extension',	'http://update.joomla.org/core/extensions/com_joomlaupdate.xml',	1,	1432488831,	''),
(5,	'System - Helix3 Framework',	'extension',	'http://www.joomshaper.com/updates/plg_ajax_helix3.xml',	1,	1432488831,	''),
(6,	'System - Helix3 Framework',	'extension',	'http://www.joomshaper.com/updates/plg_system_helix3.xml',	0,	0,	''),
(7,	'shaper_helix3',	'template',	'http://www.joomshaper.com/updates/tpl_helix3.xml',	1,	0,	''),
(8,	'Social GK5 Updates',	'extension',	'https://www.gavick.com/update_server/joomla30/social_gk5.xml',	1,	1432488831,	''),
(9,	'Grid GK5 Updates',	'extension',	'https://www.gavick.com/update_server/joomla25/grid_gk5.xml',	1,	1432488831,	''),
(10,	'plg_nsfontawesome',	'extension',	'https://nswd.co/updater/nsfontawesome-update.xml',	1,	1432488831,	''),
(11,	'SP Page Builder',	'extension',	'http://www.joomshaper.com/updates/com_sppagebuilder.xml',	1,	1432488831,	'');

DROP TABLE IF EXISTS `p20ne_update_sites_extensions`;
CREATE TABLE `p20ne_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

INSERT INTO `p20ne_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1,	700),
(2,	700),
(3,	600),
(4,	28),
(5,	10002),
(6,	10003),
(7,	10004),
(8,	10005),
(9,	10006),
(10,	10007),
(11,	10015);

DROP TABLE IF EXISTS `p20ne_usergroups`;
CREATE TABLE `p20ne_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1,	0,	1,	18,	'Public'),
(2,	1,	8,	15,	'Registered'),
(3,	2,	9,	14,	'Author'),
(4,	3,	10,	13,	'Editor'),
(5,	4,	11,	12,	'Publisher'),
(6,	1,	4,	7,	'Manager'),
(7,	6,	5,	6,	'Administrator'),
(8,	1,	16,	17,	'Super Users'),
(9,	1,	2,	3,	'Guest');

DROP TABLE IF EXISTS `p20ne_users`;
CREATE TABLE `p20ne_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(276,	'Super User',	'admin',	'jana.mathauserova@ubk.cz',	'$2y$10$HtmUp8jrme3IWBeXY6WBsuL.VKZzlxGiCzJdbwTFbqc2agx0HR0Xm',	0,	1,	'2015-05-06 13:13:13',	'2015-05-24 18:35:42',	'0',	'{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}',	'0000-00-00 00:00:00',	0,	'',	'',	0);

DROP TABLE IF EXISTS `p20ne_user_keys`;
CREATE TABLE `p20ne_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_user_notes`;
CREATE TABLE `p20ne_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `p20ne_user_profiles`;
CREATE TABLE `p20ne_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';


DROP TABLE IF EXISTS `p20ne_user_usergroup_map`;
CREATE TABLE `p20ne_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_user_usergroup_map` (`user_id`, `group_id`) VALUES
(276,	8);

DROP TABLE IF EXISTS `p20ne_viewlevels`;
CREATE TABLE `p20ne_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `p20ne_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1,	'Public',	0,	'[1]'),
(2,	'Registered',	2,	'[6,2,8]'),
(3,	'Special',	3,	'[6,3,8]'),
(5,	'Guest',	1,	'[9]'),
(6,	'Super Users',	4,	'[8]');

-- 2015-05-24 19:46:23
